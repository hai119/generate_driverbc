import os
import argparse

def process_bc_files(input_folder):
    for root, dirs, files in os.walk(input_folder):
        for file in files:
            if file.endswith(".bc"):
                file_path = os.path.join(root, file)
                llvm_dis_cmd = f"llvm-dis {file_path}"
                os.system(llvm_dis_cmd)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Process .bc files using llvm-dis")
    parser.add_argument("-i", "--input", required=True, help="Input folder")
    args = parser.parse_args()

    input_folder = args.input
    process_bc_files(input_folder)