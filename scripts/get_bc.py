import os
from multiprocessing import Pool, cpu_count
import argparse
import collections
import json

INVALID_GCC_FLAGS = ["-mno-fp-ret-in-387",
               "-mpreferred-stack-boundary=3",
               "-mskip-rax-setup",
               "-mindirect-branch=thunk-extern",
               "-mindirect-branch-register",
               "-fno-var-tracking-assignments",
               "-fconserve-stack",
               "-mpreferred-stack-boundary=2",
               "-Wstrict-aliasing=3",
               "-mindirect-branch=thunk-inline",
               "-mfunction-return=thunk-extern",
               "-fno-stack-clash-protection"
               ]
# target optimization to be used for llvm
TARGET_OPTIMIZATION_FLAGS = ['-O0']
# debug flags to be used by llvm
DEBUG_INFO_FLAGS = ['-g']
ARCH_TARGET = '-target'
# ARM 32 architecture flag for LLVM
ARM_32_LLVM_ARCH = 'i386'
# ARM 64 architecture flag for LLVM
ARM_64_LLVM_ARCH = 'x86_64'
# flags to disable some llvm warnings
DISABLE_WARNINGS = ['-Wno-return-type', '-w']
# flags for architecture
ARM_32 = 1
ARM_64 = 2
EMIT_LLVM_FLAG = '-emit-llvm'

CompilationCommand = collections.namedtuple("CompilationCommand", ["curr_args", "work_dir", "src_file", "output_file"])
LinkerCommand = collections.namedtuple("LinkerCommand", ["curr_args", "work_dir", "input_files", "output_file"])

def log_info(*args):
    log_str = "[*] "
    for curr_a in args:
        log_str = log_str + " " + str(curr_a)
    print log_str


def log_error(*args):
    log_str = "[!] "
    for curr_a in args:
        log_str = log_str + " " + str(curr_a)
    print log_str


def log_warning(*args):
    log_str = "[?] "
    for curr_a in args:
        log_str = log_str + " " + str(curr_a)
    print log_str


def log_success(*args):
    log_str = "[+] "
    for curr_a in args:
        log_str = log_str + " " + str(curr_a)
    print log_str

def _get_llvm_build_str(clang_path, build_args, src_root_dir, target_arch, work_dir,
                        src_file_path, output_file_path, llvm_bit_code_out):
    """
        Given a compilation command from the json, this function returns the clang based build string.
        assuming that the original was built with gcc
    :param clang_path: Path to clang.
    :param build_args: original arguments to the compiler.
    :param src_root_dir: Path to the kernel source directory.
    :param target_arch: Number representing target architecture/
    :param work_dir: Directory where the original command was run.
    :param src_file_path: Path to the source file being compiled.
    :param output_file_path: Path to the original object file.
    :param llvm_bit_code_out: Folder where all the linked bitcode files should be stored.
    :return:
    """

    curr_src_file = src_file_path
    modified_build_args = list()

    modified_build_args.append(clang_path)
    modified_build_args.append(EMIT_LLVM_FLAG)
    # Handle Target flags
    modified_build_args.append(ARCH_TARGET)
    if target_arch == ARM_32:
        modified_build_args.append(ARM_32_LLVM_ARCH)
    if target_arch == ARM_64:
        modified_build_args.append(ARM_64_LLVM_ARCH)
    # handle debug flags
    for curr_d_flg in DEBUG_INFO_FLAGS:
        modified_build_args.append(curr_d_flg)
    # handle optimization flags
    for curr_op in TARGET_OPTIMIZATION_FLAGS:
        modified_build_args.append(curr_op)

    for curr_war_op in DISABLE_WARNINGS:
        modified_build_args.append(curr_war_op)

    rel_src_file_name = curr_src_file
    if str(curr_src_file).startswith("../"):
        rel_src_file_name = curr_src_file[3:]
    if str(curr_src_file).startswith('/'):
        rel_src_file_name = os.path.abspath(curr_src_file)
        if src_root_dir[-1] == '/':
            rel_src_file_name = rel_src_file_name[len(src_root_dir):]
        else:
            rel_src_file_name = rel_src_file_name[len(src_root_dir) + 1:]
    # replace output file with llvm bc file
    src_dir_name = os.path.dirname(rel_src_file_name)
    src_file_name = os.path.basename(curr_src_file)

    curr_output_dir = os.path.join(llvm_bit_code_out, src_dir_name)
    os.system('mkdir -p ' + curr_output_dir)

    curr_output_file = os.path.abspath(os.path.join(curr_output_dir, src_file_name[:-2] + '.llvm.bc'))

    for curr_op in build_args:
        if is_gcc_flag_allowed(curr_op):
            modified_build_args.append(curr_op)

    # tell clang to compile.
    modified_build_args.append("-c")
    modified_build_args.append(curr_src_file)
    modified_build_args.append("-o")
    modified_build_args.append(curr_output_file)

    return work_dir, output_file_path, curr_output_file, ' '.join(modified_build_args)


def _get_llvm_build_str_from_llvm(clang_path, build_args,
                                  src_root_dir, target_arch, work_dir,
                                  src_file_path, output_file_path,
                                  llvm_bit_code_out):
    """
        Given a compilation command from the json, this function returns the clang based build string.
        assuming that the original build was done with clang.
    :param clang_path: Path to clang.
    :param build_args: original arguments to the compiler.
    :param src_root_dir: Path to the kernel source directory.
    :param target_arch: Number representing target architecture.
    :param work_dir: Directory where the original command was run.
    :param src_file_path: Path to the source file being compiled.
    :param output_file_path: Path to the original object file.
    :param llvm_bit_code_out: Folder where all the linked bitcode files should be stored.
    :return:
    """

    curr_src_file = src_file_path
    modified_build_args = list()

    modified_build_args.append(clang_path)
    modified_build_args.append(EMIT_LLVM_FLAG)
    # handle debug flags
    for curr_d_flg in DEBUG_INFO_FLAGS:
        modified_build_args.append(curr_d_flg)
    # handle optimization flags
    for curr_op in TARGET_OPTIMIZATION_FLAGS:
        modified_build_args.append(curr_op)

    rel_src_file_name = curr_src_file
    if str(curr_src_file).startswith("../"):
        rel_src_file_name = curr_src_file[3:]
    if str(curr_src_file).startswith('/'):
        rel_src_file_name = os.path.abspath(curr_src_file)
        if src_root_dir[-1] == '/':
            rel_src_file_name = rel_src_file_name[len(src_root_dir):]
        else:
            rel_src_file_name = rel_src_file_name[len(src_root_dir) + 1:]
    # replace output file with llvm bc file
    src_dir_name = os.path.dirname(rel_src_file_name)
    src_file_name = os.path.basename(curr_src_file)

    curr_output_dir = os.path.join(llvm_bit_code_out, src_dir_name)
    os.system('mkdir -p ' + curr_output_dir)

    curr_output_file = os.path.abspath(os.path.join(curr_output_dir, src_file_name[:-2] + '.llvm.bc'))

    for curr_op in build_args:
        # ignore only optimization flags.
        if str(curr_op)[:2] != "-O":
            modified_build_args.append(curr_op)

    # tell clang to compile.
    modified_build_args.append("-c")
    modified_build_args.append(curr_src_file)
    modified_build_args.append("-o")
    modified_build_args.append(curr_output_file)

    return work_dir, output_file_path, curr_output_file, ' '.join(modified_build_args)


def _get_llvm_link_str(llvm_link_path, src_root_dir, input_files, input_bc_map,
                       output_file, work_dir, llvm_bit_code_out):
    """
        Given a linker command from the json, this function converts it into corresponding
        llvm-link command with all the correct parameters.
    :param llvm_link_path: Path to llvm-link
    :param src_root_dir: Path to the kernel source directory.
    :param input_files: input files for the linker.
    :param input_bc_map: Map containing object files to corresponding bitcode file.
    :param output_file: Original output object file path.
    :param work_dir: Directory where the original command was run.
    :param llvm_bit_code_out: Folder where all the linked bitcode files should be stored.
    :return:
    """
    modified_build_args = list()
    modified_build_args.append(llvm_link_path)
    for curr_input_file in input_files:
        if curr_input_file not in input_bc_map:
            return None
        target_bc_file = input_bc_map[curr_input_file]
        if not os.path.exists(target_bc_file):
            return None
        else:
            modified_build_args.append(input_bc_map[curr_input_file])

    rel_output_file = output_file
    if str(output_file).startswith("../"):
        rel_output_file = output_file[3:]
    if str(output_file).startswith('/'):
        rel_output_file = os.path.abspath(output_file)
        if src_root_dir[-1] == '/':
            rel_output_file = rel_output_file[len(src_root_dir):]
        else:
            rel_output_file = rel_output_file[len(src_root_dir) + 1:]
    # replace output file with llvm bc file
    out_dir_name = os.path.dirname(rel_output_file)
    output_file_name = os.path.basename(output_file)

    curr_output_dir = os.path.join(llvm_bit_code_out, out_dir_name)
    os.system('mkdir -p ' + curr_output_dir)

    curr_output_file = os.path.abspath(os.path.join(curr_output_dir, output_file_name[:-2] + '.final.linked.bc'))
    # append output file path
    modified_build_args.append("-o")
    modified_build_args.append(curr_output_file)
    return work_dir, output_file, curr_output_file, ' '.join(modified_build_args)


def _process_recursive_linker_commands(linker_commands, kernel_src_dir, llvm_link_path, llvm_bit_code_out,
                                       obj_bc_map, output_fp):
    """
        Function that handles recursive linker commands.
    :param linker_commands: Linker commands that needs to be recursively resolved.
    :param kernel_src_dir: Path to the kernel source directory.
    :param llvm_link_path: Path to llvm-link
    :param llvm_bit_code_out: Folder where all the linked bitcode files should be stored.
    :param obj_bc_map: Map containing object files to corresponding bitcode file.
    :param output_fp: Path where the linker commands should be stored.
    :return: None
    """
    recursive_linker_commands = []
    all_linker_commands = []
    for curr_linked_command in linker_commands:
        curr_ret_val = _get_llvm_link_str(llvm_link_path, kernel_src_dir,
                                          curr_linked_command.input_files, obj_bc_map,
                                          curr_linked_command.output_file,
                                          curr_linked_command.work_dir, llvm_bit_code_out)
        if curr_ret_val is not None:
            wd, obj_file, bc_file, build_str = curr_ret_val
            all_linker_commands.append((wd, build_str))
            obj_bc_map[obj_file] = bc_file
            output_fp.write("cd " + wd + ";" + build_str + "\n")
        else:
            recursive_linker_commands.append(curr_linked_command)

    if len(all_linker_commands) > 0:
        log_info("Got", len(all_linker_commands), "recursively resolved linker commands.")
        log_info("Running linker commands in multiprocessing mode.")
        p = Pool(cpu_count())
        return_vals = p.map(run_program_with_wd, all_linker_commands)
        log_success("Finished running linker commands.")

        if len(recursive_linker_commands) > 0:
            _process_recursive_linker_commands(recursive_linker_commands, kernel_src_dir, llvm_link_path,
                                               llvm_bit_code_out, obj_bc_map, output_fp)
    else:
        # we didn't resolve any new objects..but there are still some recursive commands.
        # we cannot resolve them.
        # bail out.
        if len(recursive_linker_commands) > 0:
            log_error("Failed to link following driver objects.")
            for curr_com in recursive_linker_commands:
                log_error(curr_com.output_file)


def build_drivers(compilation_commands, linker_commands, kernel_src_dir,
                  target_arch, clang_path, llvm_link_path, llvm_bit_code_out, is_clang_build):
    """
        The main method that performs the building and linking of the driver files.
    :param compilation_commands: Parsed compilation commands from the json.
    :param linker_commands: Parsed linker commands from the json.
    :param kernel_src_dir: Path to the kernel source directory.
    :param target_arch: Number representing target architecture.
    :param clang_path: Path to clang.
    :param llvm_link_path: Path to llvm-link
    :param llvm_bit_code_out: Folder where all the linked bitcode files should be stored.
    :param is_clang_build: Flag to indicate that this is a clang build.
    :return: True
    """
    output_llvm_sh_file = os.path.join(llvm_bit_code_out, 'llvm_build.sh')
    fp_out = open(output_llvm_sh_file, 'w')
    fp_out.write("#!/bin/bash\n")
    log_info("Writing all compilation commands to", output_llvm_sh_file)
    all_compilation_commands = []
    obj_bc_map = {}
    for curr_compilation_command in compilation_commands:
        if is_clang_build:
            wd, obj_file, bc_file, build_str = _get_llvm_build_str_from_llvm(clang_path, curr_compilation_command.curr_args,
                                                                             kernel_src_dir, target_arch,
                                                                             curr_compilation_command.work_dir,
                                                                             curr_compilation_command.src_file,
                                                                             curr_compilation_command.output_file,
                                                                             llvm_bit_code_out)
        else:
            wd, obj_file, bc_file, build_str = _get_llvm_build_str(clang_path, curr_compilation_command.curr_args,
                                                                   kernel_src_dir, target_arch,
                                                                   curr_compilation_command.work_dir,
                                                                   curr_compilation_command.src_file,
                                                                   curr_compilation_command.output_file, llvm_bit_code_out)
        build_str = build_str.replace("(","\\(")
        build_str = build_str.replace(")","\\)")
        all_compilation_commands.append((wd, build_str))
        obj_bc_map[obj_file] = bc_file
        fp_out.write("cd " + wd + ";" + build_str + "\n")
    fp_out.close()

    log_info("Got", len(all_compilation_commands), "compilation commands.")
    log_info("Running compilation commands in multiprocessing mode.")
    p = Pool(cpu_count())
    return_vals = p.map(run_program_with_wd, all_compilation_commands)
    log_success("Finished running compilation commands.")

    output_llvm_sh_file = os.path.join(llvm_bit_code_out, 'llvm_link_cmds.sh')
    fp_out = open(output_llvm_sh_file, 'w')
    fp_out.write("#!/bin/bash\n")
    log_info("Writing all linker commands to", output_llvm_sh_file)
    all_linker_commands = []
    recursive_linker_commands = []
    for curr_linked_command in linker_commands:
        curr_ret_val = _get_llvm_link_str(llvm_link_path, kernel_src_dir,
                                          curr_linked_command.input_files, obj_bc_map,
                                          curr_linked_command.output_file,
                                          curr_linked_command.work_dir, llvm_bit_code_out)
        if curr_ret_val is not None:
            wd, obj_file, bc_file, build_str = curr_ret_val
            all_linker_commands.append((wd, build_str))
            obj_bc_map[obj_file] = bc_file
            fp_out.write("cd " + wd + ";" + build_str + "\n")
        else:
            # these are recursive linker commands.
            recursive_linker_commands.append(curr_linked_command)

    log_info("Got", len(all_linker_commands), "regular linker commands.")
    log_info("Running linker commands in multiprocessing mode.")
    p = Pool(cpu_count())
    return_vals = p.map(run_program_with_wd, all_linker_commands)
    log_success("Finished running linker commands.")

    if len(recursive_linker_commands) > 0:
        log_info("Got", len(recursive_linker_commands), " recursive linker commands.")
        _process_recursive_linker_commands(recursive_linker_commands, kernel_src_dir, llvm_link_path,
                                           llvm_bit_code_out, obj_bc_map, fp_out)
    fp_out.close()

    return True

def run_program_with_wd((workdir, cmd_to_run)):
    """
        Run the given program with in the provided directory.
    :return: None
    """
    curr_dir = os.getcwd()
    os.chdir(workdir)
    os.system(cmd_to_run)
    os.chdir(curr_dir)


def is_gcc_flag_allowed(curr_flag):
    """
        Function which checks, if a gcc flag is allowed in llvm command line.
    :param curr_flag: flag to include in llvm
    :return: True/False
    """
    # if this is a optimization flag, remove it.
    if str(curr_flag)[:2] == "-O":
        return False

    # if the flag is invalid
    for curr_in_flag in INVALID_GCC_FLAGS:
        if curr_flag.startswith(curr_in_flag):
            return False

    return True

def parse_compile_json(json_file_path):
    """
        Parse the json file output of Bear
    :param json_file_path: Path to the output json file of Bear
    :return: pair of compilation and linker commands.
    """
    compile_commands = []
    linker_commands = []
    if os.path.exists(json_file_path):
        try:
            fp = open(json_file_path, "r")
            all_cont = fp.read()
            fp.close()
            json_obj = json.loads(all_cont)
            # it contains array of commands
            for curr_command in json_obj:
                curr_args = curr_command["arguments"]
                i = 0
                # convert each string in the argument
                # into a python friendly escaped string.
                while i < len(curr_args):
                    cura = curr_args[i]
                    if '="' in cura:
                        cn = cura.index('="')
                        curr_args[i] = cura[0:cn+1] + "'" + cura[cn+1:]
                        curr_args[i] = curr_args[i] + "'"
                    i += 1

                work_dir = curr_command["directory"]
                output_file = curr_command["output"][-1]
                if "loader" not in curr_command:
                    src_file = curr_command["file"]
                    if "drivers/" in src_file:
                        compile_commands.append(CompilationCommand(curr_args, work_dir, src_file, output_file))
                else:
                    input_files = curr_command["files"]
                    if "drivers/" in output_file:
                        linker_commands.append(LinkerCommand(curr_args, work_dir, input_files, output_file))
        except Exception as e:
            log_error("Error occurred while trying to parse provided json file", json_file_path, "error", e.message)
    else:
        log_error("Provided json file doesn't exist", json_file_path)
    return compile_commands, linker_commands

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-c", '--compile_command', type=str, required=True)
    parser.add_argument("-p", '--compiler_path', type=str, default="llvm-project-10.0.1/build/bin")
    parser.add_argument('-o', '--output', type=str, required=True)
    args = parser.parse_args()
    clang_bin = "clang-10"
    llvm_bc_out = args.output
    arch_num = 2
    kernel_src_dir = "../linux"
    compile_json = args.compile_command
    llvm_link_bin = 'llvm-link'
    is_clang_build = False

    if llvm_bc_out is not None:
        if not os.path.exists(llvm_bc_out):
            os.makedirs(llvm_bc_out)
        if os.path.isfile(llvm_bc_out):
            print("Provided LLVM Bitcode out:" + llvm_bc_out + " is a file, but should be a directory path.")
            exit()
    else:
        print("LLVM Bitcode out should be provided.")
        exit()
    if arch_num is None:
        print("No architecture number provided.")
        exit()
    if compile_json is None or not os.path.exists(compile_json):
        print("No compile json or the provided file:" + str(compile_json) + " doesn't exist.")
        exit()
    comp_cmds, link_cmds = parse_compile_json(compile_json)
    build_drivers(comp_cmds, link_cmds, kernel_src_dir, arch_num, clang_bin,
                             llvm_link_bin, llvm_bc_out, is_clang_build)