; ModuleID = '../bcout/drivers/acpi/acpica/uterror.llvm.bc'
source_filename = "drivers/acpi/acpica/uterror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*)* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"\014ACPI Warning: %s: \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" (%8.8X/%s-%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\016ACPI: %s: \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\013ACPI BIOS Error (bug): %s: \00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"\013ACPI BIOS Error (bug): \00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failure creating named object\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Could not resolve symbol\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"\013ACPI Error: \00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Failure resolving symbol\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%s [%s], %s\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Could not get pathname\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"[Could not get node by pathname]\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c" due to previous error (%s)\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_predefined_warning(i8* %module_name, i32 %line_number, i8* %pathname, i16 zeroext %node_flags, i8* %format, ...) #0 !dbg !8 {
entry:
  %module_name.addr = alloca i8*, align 8
  %line_number.addr = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %node_flags.addr = alloca i16, align 2
  %format.addr = alloca i8*, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %module_name, i8** %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %module_name.addr, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 %line_number, i32* %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line_number.addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !27, metadata !DIExpression()), !dbg !28
  store i16 %node_flags, i16* %node_flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %node_flags.addr, metadata !29, metadata !DIExpression()), !dbg !30
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %arg_list, metadata !33, metadata !DIExpression()), !dbg !48
  %0 = load i16, i16* %node_flags.addr, align 2, !dbg !49
  %conv = zext i16 %0 to i32, !dbg !49
  %and = and i32 %conv, 32, !dbg !51
  %tobool = icmp ne i32 %and, 0, !dbg !51
  br i1 %tobool, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  br label %return, !dbg !53

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %pathname.addr, align 8, !dbg !55
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %1) #4, !dbg !56
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !57
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !57
  call void @llvm.va_start(i8* %arraydecay1), !dbg !57
  %2 = load i8*, i8** %format.addr, align 8, !dbg !58
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !59
  call void @acpi_os_vprintf(i8* %2, %struct.__va_list_tag* %arraydecay2) #4, !dbg !60
  %3 = load i8*, i8** %module_name.addr, align 8, !dbg !61
  %4 = load i32, i32* %line_number.addr, align 4, !dbg !61
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 538970405, i8* %3, i32 %4) #4, !dbg !61
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !62
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !62
  call void @llvm.va_end(i8* %arraydecay34), !dbg !62
  br label %return, !dbg !63

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !63
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_os_printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noredzone
declare dso_local void @acpi_os_vprintf(i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_predefined_info(i8* %module_name, i32 %line_number, i8* %pathname, i16 zeroext %node_flags, i8* %format, ...) #0 !dbg !64 {
entry:
  %module_name.addr = alloca i8*, align 8
  %line_number.addr = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %node_flags.addr = alloca i16, align 2
  %format.addr = alloca i8*, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %module_name, i8** %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %module_name.addr, metadata !65, metadata !DIExpression()), !dbg !66
  store i32 %line_number, i32* %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line_number.addr, metadata !67, metadata !DIExpression()), !dbg !68
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !69, metadata !DIExpression()), !dbg !70
  store i16 %node_flags, i16* %node_flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %node_flags.addr, metadata !71, metadata !DIExpression()), !dbg !72
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %arg_list, metadata !75, metadata !DIExpression()), !dbg !76
  %0 = load i16, i16* %node_flags.addr, align 2, !dbg !77
  %conv = zext i16 %0 to i32, !dbg !77
  %and = and i32 %conv, 32, !dbg !79
  %tobool = icmp ne i32 %and, 0, !dbg !79
  br i1 %tobool, label %if.then, label %if.end, !dbg !80

if.then:                                          ; preds = %entry
  br label %return, !dbg !81

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %pathname.addr, align 8, !dbg !83
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %1) #4, !dbg !84
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !85
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !85
  call void @llvm.va_start(i8* %arraydecay1), !dbg !85
  %2 = load i8*, i8** %format.addr, align 8, !dbg !86
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !87
  call void @acpi_os_vprintf(i8* %2, %struct.__va_list_tag* %arraydecay2) #4, !dbg !88
  %3 = load i8*, i8** %module_name.addr, align 8, !dbg !89
  %4 = load i32, i32* %line_number.addr, align 4, !dbg !89
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 538970405, i8* %3, i32 %4) #4, !dbg !89
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !90
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !90
  call void @llvm.va_end(i8* %arraydecay34), !dbg !90
  br label %return, !dbg !91

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !91
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_predefined_bios_error(i8* %module_name, i32 %line_number, i8* %pathname, i16 zeroext %node_flags, i8* %format, ...) #0 !dbg !92 {
entry:
  %module_name.addr = alloca i8*, align 8
  %line_number.addr = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %node_flags.addr = alloca i16, align 2
  %format.addr = alloca i8*, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %module_name, i8** %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %module_name.addr, metadata !93, metadata !DIExpression()), !dbg !94
  store i32 %line_number, i32* %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line_number.addr, metadata !95, metadata !DIExpression()), !dbg !96
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !97, metadata !DIExpression()), !dbg !98
  store i16 %node_flags, i16* %node_flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %node_flags.addr, metadata !99, metadata !DIExpression()), !dbg !100
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %arg_list, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = load i16, i16* %node_flags.addr, align 2, !dbg !105
  %conv = zext i16 %0 to i32, !dbg !105
  %and = and i32 %conv, 32, !dbg !107
  %tobool = icmp ne i32 %and, 0, !dbg !107
  br i1 %tobool, label %if.then, label %if.end, !dbg !108

if.then:                                          ; preds = %entry
  br label %return, !dbg !109

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %pathname.addr, align 8, !dbg !111
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %1) #4, !dbg !112
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !113
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !113
  call void @llvm.va_start(i8* %arraydecay1), !dbg !113
  %2 = load i8*, i8** %format.addr, align 8, !dbg !114
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !115
  call void @acpi_os_vprintf(i8* %2, %struct.__va_list_tag* %arraydecay2) #4, !dbg !116
  %3 = load i8*, i8** %module_name.addr, align 8, !dbg !117
  %4 = load i32, i32* %line_number.addr, align 4, !dbg !117
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 538970405, i8* %3, i32 %4) #4, !dbg !117
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !118
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !118
  call void @llvm.va_end(i8* %arraydecay34), !dbg !118
  br label %return, !dbg !119

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !119
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_prefixed_namespace_error(i8* %module_name, i32 %line_number, %union.acpi_generic_state* %prefix_scope, i8* %internal_path, i32 %lookup_status) #0 !dbg !120 {
entry:
  %module_name.addr = alloca i8*, align 8
  %line_number.addr = alloca i32, align 4
  %prefix_scope.addr = alloca %union.acpi_generic_state*, align 8
  %internal_path.addr = alloca i8*, align 8
  %lookup_status.addr = alloca i32, align 4
  %full_path = alloca i8*, align 8
  %message = alloca i8*, align 8
  store i8* %module_name, i8** %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %module_name.addr, metadata !887, metadata !DIExpression()), !dbg !888
  store i32 %line_number, i32* %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line_number.addr, metadata !889, metadata !DIExpression()), !dbg !890
  store %union.acpi_generic_state* %prefix_scope, %union.acpi_generic_state** %prefix_scope.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %prefix_scope.addr, metadata !891, metadata !DIExpression()), !dbg !892
  store i8* %internal_path, i8** %internal_path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %internal_path.addr, metadata !893, metadata !DIExpression()), !dbg !894
  store i32 %lookup_status, i32* %lookup_status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lookup_status.addr, metadata !895, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.declare(metadata i8** %full_path, metadata !897, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata i8** %message, metadata !899, metadata !DIExpression()), !dbg !900
  %0 = load i32, i32* %lookup_status.addr, align 4, !dbg !901
  switch i32 %0, label %sw.default [
    i32 7, label %sw.bb
    i32 5, label %sw.bb1
  ], !dbg !902

sw.bb:                                            ; preds = %entry
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !903
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8** %message, align 8, !dbg !905
  br label %sw.epilog, !dbg !906

sw.bb1:                                           ; preds = %entry
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !907
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %message, align 8, !dbg !908
  br label %sw.epilog, !dbg !909

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !910
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8** %message, align 8, !dbg !911
  br label %sw.epilog, !dbg !912

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load %union.acpi_generic_state*, %union.acpi_generic_state** %prefix_scope.addr, align 8, !dbg !913
  %2 = load i8*, i8** %internal_path.addr, align 8, !dbg !914
  %call = call i8* @acpi_ns_build_prefixed_pathname(%union.acpi_generic_state* %1, i8* %2) #4, !dbg !915
  store i8* %call, i8** %full_path, align 8, !dbg !916
  %3 = load i8*, i8** %message, align 8, !dbg !917
  %4 = load i8*, i8** %full_path, align 8, !dbg !918
  %tobool = icmp ne i8* %4, null, !dbg !918
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !918

cond.true:                                        ; preds = %sw.epilog
  %5 = load i8*, i8** %full_path, align 8, !dbg !919
  br label %cond.end, !dbg !918

cond.false:                                       ; preds = %sw.epilog
  br label %cond.end, !dbg !918

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), %cond.false ], !dbg !918
  %6 = load i32, i32* %lookup_status.addr, align 4, !dbg !920
  %call2 = call i8* @acpi_format_exception(i32 %6) #4, !dbg !921
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %3, i8* %cond, i8* %call2) #4, !dbg !922
  %7 = load i8*, i8** %full_path, align 8, !dbg !923
  %tobool3 = icmp ne i8* %7, null, !dbg !923
  br i1 %tobool3, label %if.then, label %if.end, !dbg !925

if.then:                                          ; preds = %cond.end
  %8 = load i8*, i8** %full_path, align 8, !dbg !926
  call void @acpi_os_free(i8* %8) #4, !dbg !926
  br label %if.end, !dbg !928

if.end:                                           ; preds = %if.then, %cond.end
  %9 = load i8*, i8** %module_name.addr, align 8, !dbg !929
  %10 = load i32, i32* %line_number.addr, align 4, !dbg !929
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 538970405, i8* %9, i32 %10) #4, !dbg !929
  ret void, !dbg !930
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_ns_build_prefixed_pathname(%union.acpi_generic_state*, i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_format_exception(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !931 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !935, metadata !DIExpression()), !dbg !936
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !937
  call void @kfree(i8* %0) #4, !dbg !938
  ret void, !dbg !939
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_method_error(i8* %module_name, i32 %line_number, i8* %message, %struct.acpi_namespace_node* %prefix_node, i8* %path, i32 %method_status) #0 !dbg !940 {
entry:
  %module_name.addr = alloca i8*, align 8
  %line_number.addr = alloca i32, align 4
  %message.addr = alloca i8*, align 8
  %prefix_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %path.addr = alloca i8*, align 8
  %method_status.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  store i8* %module_name, i8** %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %module_name.addr, metadata !943, metadata !DIExpression()), !dbg !944
  store i32 %line_number, i32* %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line_number.addr, metadata !945, metadata !DIExpression()), !dbg !946
  store i8* %message, i8** %message.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %message.addr, metadata !947, metadata !DIExpression()), !dbg !948
  store %struct.acpi_namespace_node* %prefix_node, %struct.acpi_namespace_node** %prefix_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %prefix_node.addr, metadata !949, metadata !DIExpression()), !dbg !950
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !951, metadata !DIExpression()), !dbg !952
  store i32 %method_status, i32* %method_status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %method_status.addr, metadata !953, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.declare(metadata i32* %status, metadata !955, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !957, metadata !DIExpression()), !dbg !958
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node.addr, align 8, !dbg !959
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %node, align 8, !dbg !958
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !960
  %1 = load i8*, i8** %path.addr, align 8, !dbg !961
  %tobool = icmp ne i8* %1, null, !dbg !961
  br i1 %tobool, label %if.then, label %if.end3, !dbg !963

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node.addr, align 8, !dbg !964
  %3 = load i8*, i8** %path.addr, align 8, !dbg !966
  %call = call i32 @acpi_ns_get_node(%struct.acpi_namespace_node* %2, i8* %3, i32 0, %struct.acpi_namespace_node** %node) #4, !dbg !967
  store i32 %call, i32* %status, align 4, !dbg !968
  %4 = load i32, i32* %status, align 4, !dbg !969
  %tobool1 = icmp ne i32 %4, 0, !dbg !969
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !971

if.then2:                                         ; preds = %if.then
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0)) #4, !dbg !972
  br label %if.end, !dbg !974

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3, !dbg !975

if.end3:                                          ; preds = %if.end, %entry
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !976
  %6 = load i8*, i8** %message.addr, align 8, !dbg !977
  call void @acpi_ns_print_node_pathname(%struct.acpi_namespace_node* %5, i8* %6) #4, !dbg !978
  %7 = load i32, i32* %method_status.addr, align 4, !dbg !979
  %call4 = call i8* @acpi_format_exception(i32 %7) #4, !dbg !980
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* %call4) #4, !dbg !981
  %8 = load i8*, i8** %module_name.addr, align 8, !dbg !982
  %9 = load i32, i32* %line_number.addr, align 4, !dbg !982
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 538970405, i8* %8, i32 %9) #4, !dbg !982
  ret void, !dbg !983
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_node(%struct.acpi_namespace_node*, i8*, i32, %struct.acpi_namespace_node**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ns_print_node_pathname(%struct.acpi_namespace_node*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/uterror.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!8 = distinct !DISubprogram(name: "acpi_ut_predefined_warning", scope: !1, file: !1, line: 39, type: !9, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !14, !19, !20, !11, null}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !18)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !15, line: 19, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !17, line: 24, baseType: !22)
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "module_name", arg: 1, scope: !8, file: !1, line: 39, type: !11)
!24 = !DILocation(line: 39, column: 40, scope: !8)
!25 = !DILocalVariable(name: "line_number", arg: 2, scope: !8, file: !1, line: 40, type: !14)
!26 = !DILocation(line: 40, column: 11, scope: !8)
!27 = !DILocalVariable(name: "pathname", arg: 3, scope: !8, file: !1, line: 41, type: !19)
!28 = !DILocation(line: 41, column: 13, scope: !8)
!29 = !DILocalVariable(name: "node_flags", arg: 4, scope: !8, file: !1, line: 42, type: !20)
!30 = !DILocation(line: 42, column: 11, scope: !8)
!31 = !DILocalVariable(name: "format", arg: 5, scope: !8, file: !1, line: 42, type: !11)
!32 = !DILocation(line: 42, column: 35, scope: !8)
!33 = !DILocalVariable(name: "arg_list", scope: !8, file: !1, line: 44, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !35, line: 99, baseType: !36)
!35 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !35, line: 40, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 44, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 192, elements: !46)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 44, size: 192, elements: !40)
!40 = !{!41, !42, !43, !45}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !39, file: !1, line: 44, baseType: !18, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !39, file: !1, line: 44, baseType: !18, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !39, file: !1, line: 44, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !39, file: !1, line: 44, baseType: !44, size: 64, offset: 128)
!46 = !{!47}
!47 = !DISubrange(count: 1)
!48 = !DILocation(line: 44, column: 10, scope: !8)
!49 = !DILocation(line: 50, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !8, file: !1, line: 50, column: 6)
!51 = !DILocation(line: 50, column: 17, scope: !50)
!52 = !DILocation(line: 50, column: 6, scope: !8)
!53 = !DILocation(line: 51, column: 3, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 50, column: 36)
!55 = !DILocation(line: 54, column: 42, scope: !8)
!56 = !DILocation(line: 54, column: 2, scope: !8)
!57 = !DILocation(line: 56, column: 2, scope: !8)
!58 = !DILocation(line: 57, column: 18, scope: !8)
!59 = !DILocation(line: 57, column: 26, scope: !8)
!60 = !DILocation(line: 57, column: 2, scope: !8)
!61 = !DILocation(line: 58, column: 2, scope: !8)
!62 = !DILocation(line: 59, column: 2, scope: !8)
!63 = !DILocation(line: 60, column: 1, scope: !8)
!64 = distinct !DISubprogram(name: "acpi_ut_predefined_info", scope: !1, file: !1, line: 82, type: !9, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!65 = !DILocalVariable(name: "module_name", arg: 1, scope: !64, file: !1, line: 82, type: !11)
!66 = !DILocation(line: 82, column: 37, scope: !64)
!67 = !DILocalVariable(name: "line_number", arg: 2, scope: !64, file: !1, line: 83, type: !14)
!68 = !DILocation(line: 83, column: 8, scope: !64)
!69 = !DILocalVariable(name: "pathname", arg: 3, scope: !64, file: !1, line: 84, type: !19)
!70 = !DILocation(line: 84, column: 10, scope: !64)
!71 = !DILocalVariable(name: "node_flags", arg: 4, scope: !64, file: !1, line: 84, type: !20)
!72 = !DILocation(line: 84, column: 24, scope: !64)
!73 = !DILocalVariable(name: "format", arg: 5, scope: !64, file: !1, line: 84, type: !11)
!74 = !DILocation(line: 84, column: 48, scope: !64)
!75 = !DILocalVariable(name: "arg_list", scope: !64, file: !1, line: 86, type: !34)
!76 = !DILocation(line: 86, column: 10, scope: !64)
!77 = !DILocation(line: 92, column: 6, scope: !78)
!78 = distinct !DILexicalBlock(scope: !64, file: !1, line: 92, column: 6)
!79 = !DILocation(line: 92, column: 17, scope: !78)
!80 = !DILocation(line: 92, column: 6, scope: !64)
!81 = !DILocation(line: 93, column: 3, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !1, line: 92, column: 36)
!83 = !DILocation(line: 96, column: 39, scope: !64)
!84 = !DILocation(line: 96, column: 2, scope: !64)
!85 = !DILocation(line: 98, column: 2, scope: !64)
!86 = !DILocation(line: 99, column: 18, scope: !64)
!87 = !DILocation(line: 99, column: 26, scope: !64)
!88 = !DILocation(line: 99, column: 2, scope: !64)
!89 = !DILocation(line: 100, column: 2, scope: !64)
!90 = !DILocation(line: 101, column: 2, scope: !64)
!91 = !DILocation(line: 102, column: 1, scope: !64)
!92 = distinct !DISubprogram(name: "acpi_ut_predefined_bios_error", scope: !1, file: !1, line: 124, type: !9, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!93 = !DILocalVariable(name: "module_name", arg: 1, scope: !92, file: !1, line: 124, type: !11)
!94 = !DILocation(line: 124, column: 43, scope: !92)
!95 = !DILocalVariable(name: "line_number", arg: 2, scope: !92, file: !1, line: 125, type: !14)
!96 = !DILocation(line: 125, column: 14, scope: !92)
!97 = !DILocalVariable(name: "pathname", arg: 3, scope: !92, file: !1, line: 126, type: !19)
!98 = !DILocation(line: 126, column: 16, scope: !92)
!99 = !DILocalVariable(name: "node_flags", arg: 4, scope: !92, file: !1, line: 127, type: !20)
!100 = !DILocation(line: 127, column: 14, scope: !92)
!101 = !DILocalVariable(name: "format", arg: 5, scope: !92, file: !1, line: 127, type: !11)
!102 = !DILocation(line: 127, column: 38, scope: !92)
!103 = !DILocalVariable(name: "arg_list", scope: !92, file: !1, line: 129, type: !34)
!104 = !DILocation(line: 129, column: 10, scope: !92)
!105 = !DILocation(line: 135, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !92, file: !1, line: 135, column: 6)
!107 = !DILocation(line: 135, column: 17, scope: !106)
!108 = !DILocation(line: 135, column: 6, scope: !92)
!109 = !DILocation(line: 136, column: 3, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 135, column: 36)
!111 = !DILocation(line: 139, column: 45, scope: !92)
!112 = !DILocation(line: 139, column: 2, scope: !92)
!113 = !DILocation(line: 141, column: 2, scope: !92)
!114 = !DILocation(line: 142, column: 18, scope: !92)
!115 = !DILocation(line: 142, column: 26, scope: !92)
!116 = !DILocation(line: 142, column: 2, scope: !92)
!117 = !DILocation(line: 143, column: 2, scope: !92)
!118 = !DILocation(line: 144, column: 2, scope: !92)
!119 = !DILocation(line: 145, column: 1, scope: !92)
!120 = distinct !DISubprogram(name: "acpi_ut_prefixed_namespace_error", scope: !1, file: !1, line: 168, type: !121, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !11, !14, !123, !11, !262}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !125, line: 663, size: 640, elements: !126)
!125 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!126 = !{!127, !138, !814, !823, !832, !845, !859, !860, !870}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !124, file: !125, line: 664, baseType: !128, size: 128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !125, line: 567, size: 128, elements: !129)
!129 = !{!130, !131, !135, !136, !137}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !125, line: 568, baseType: !44, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !128, file: !125, line: 568, baseType: !132, size: 8, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !15, line: 17, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !17, line: 21, baseType: !134)
!134 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !125, line: 568, baseType: !132, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !128, file: !125, line: 568, baseType: !20, size: 16, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !128, file: !125, line: 568, baseType: !20, size: 16, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !124, file: !125, line: 665, baseType: !139, size: 384)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !125, line: 593, size: 384, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !811, !812, !813}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !125, line: 594, baseType: !44, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !125, line: 594, baseType: !132, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !125, line: 594, baseType: !132, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !139, file: !125, line: 594, baseType: !20, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !139, file: !125, line: 594, baseType: !20, size: 16, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !139, file: !125, line: 594, baseType: !20, size: 16, offset: 112)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !139, file: !125, line: 595, baseType: !148, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !125, line: 875, size: 1600, elements: !150)
!150 = !{!151, !754, !770}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !149, file: !125, line: 876, baseType: !152, size: 448)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !125, line: 828, size: 448, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !160, !161, !744, !753}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !152, file: !125, line: 829, baseType: !148, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !152, file: !125, line: 829, baseType: !132, size: 8, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !125, line: 829, baseType: !132, size: 8, offset: 72)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !152, file: !125, line: 829, baseType: !20, size: 16, offset: 80)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !152, file: !125, line: 829, baseType: !159, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !125, line: 829, baseType: !148, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !152, file: !125, line: 829, baseType: !162, size: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !125, line: 133, size: 384, elements: !164)
!164 = !{!165, !728, !729, !730, !731, !740, !741, !742, !743}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !163, file: !125, line: 134, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !168, line: 367, size: 576, elements: !169)
!168 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!169 = !{!170, !178, !194, !204, !217, !231, !240, !374, !391, !406, !419, !498, !510, !524, !534, !552, !574, !593, !612, !631, !648, !674, !691, !704, !718, !727}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !167, file: !168, line: 368, baseType: !171, size: 128)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !168, line: 73, size: 128, elements: !172)
!172 = !{!173, !174, !175, !176, !177}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !171, file: !168, line: 74, baseType: !166, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !171, file: !168, line: 74, baseType: !132, size: 8, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !171, file: !168, line: 74, baseType: !132, size: 8, offset: 72)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !171, file: !168, line: 74, baseType: !20, size: 16, offset: 80)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !171, file: !168, line: 74, baseType: !132, size: 8, offset: 96)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !167, file: !168, line: 369, baseType: !179, size: 192)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !168, line: 76, size: 192, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186, !190}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !179, file: !168, line: 77, baseType: !166, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !179, file: !168, line: 77, baseType: !132, size: 8, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !179, file: !168, line: 77, baseType: !132, size: 8, offset: 72)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !179, file: !168, line: 77, baseType: !20, size: 16, offset: 80)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !168, line: 77, baseType: !132, size: 8, offset: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !179, file: !168, line: 77, baseType: !187, size: 24, offset: 104)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 24, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 3)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !179, file: !168, line: 78, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !15, line: 23, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !17, line: 31, baseType: !193)
!193 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !167, file: !168, line: 370, baseType: !195, size: 256)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !168, line: 93, size: 256, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202, !203}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !195, file: !168, line: 94, baseType: !166, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !195, file: !168, line: 94, baseType: !132, size: 8, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !195, file: !168, line: 94, baseType: !132, size: 8, offset: 72)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !195, file: !168, line: 94, baseType: !20, size: 16, offset: 80)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !195, file: !168, line: 94, baseType: !132, size: 8, offset: 96)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !195, file: !168, line: 94, baseType: !19, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !195, file: !168, line: 94, baseType: !14, size: 32, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !167, file: !168, line: 371, baseType: !205, size: 384)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !168, line: 97, size: 384, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !205, file: !168, line: 98, baseType: !166, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !205, file: !168, line: 98, baseType: !132, size: 8, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !205, file: !168, line: 98, baseType: !132, size: 8, offset: 72)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !205, file: !168, line: 98, baseType: !20, size: 16, offset: 80)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !205, file: !168, line: 98, baseType: !132, size: 8, offset: 96)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !205, file: !168, line: 98, baseType: !159, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !205, file: !168, line: 98, baseType: !14, size: 32, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !205, file: !168, line: 99, baseType: !14, size: 32, offset: 224)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !205, file: !168, line: 100, baseType: !159, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !205, file: !168, line: 101, baseType: !162, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !167, file: !168, line: 372, baseType: !218, size: 384)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !168, line: 104, size: 384, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !228, !229, !230}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !218, file: !168, line: 105, baseType: !166, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !218, file: !168, line: 105, baseType: !132, size: 8, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !218, file: !168, line: 105, baseType: !132, size: 8, offset: 72)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !218, file: !168, line: 105, baseType: !20, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !168, line: 105, baseType: !132, size: 8, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !218, file: !168, line: 105, baseType: !162, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !218, file: !168, line: 106, baseType: !227, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !218, file: !168, line: 107, baseType: !159, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !218, file: !168, line: 108, baseType: !14, size: 32, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !218, file: !168, line: 109, baseType: !14, size: 32, offset: 352)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !167, file: !168, line: 373, baseType: !232, size: 192)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !168, line: 118, size: 192, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !232, file: !168, line: 119, baseType: !166, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !232, file: !168, line: 119, baseType: !132, size: 8, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !232, file: !168, line: 119, baseType: !132, size: 8, offset: 72)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !232, file: !168, line: 119, baseType: !20, size: 16, offset: 80)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !168, line: 119, baseType: !132, size: 8, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !232, file: !168, line: 119, baseType: !44, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !167, file: !168, line: 374, baseType: !241, size: 448)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !168, line: 143, size: 448, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !371, !372, !373}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !241, file: !168, line: 144, baseType: !166, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !241, file: !168, line: 144, baseType: !132, size: 8, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !241, file: !168, line: 144, baseType: !132, size: 8, offset: 72)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !241, file: !168, line: 144, baseType: !20, size: 16, offset: 80)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !168, line: 144, baseType: !132, size: 8, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !241, file: !168, line: 144, baseType: !132, size: 8, offset: 104)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !241, file: !168, line: 145, baseType: !132, size: 8, offset: 112)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !241, file: !168, line: 146, baseType: !132, size: 8, offset: 120)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !241, file: !168, line: 147, baseType: !166, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !241, file: !168, line: 148, baseType: !166, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !241, file: !168, line: 149, baseType: !159, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !241, file: !168, line: 153, baseType: !255, size: 64, offset: 320)
!255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !168, line: 150, size: 64, elements: !256)
!256 = !{!257, !370}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !255, file: !168, line: 151, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !125, line: 248, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !264}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !263, line: 421, baseType: !14)
!263 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !266, line: 37, size: 9024, elements: !267)
!266 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !303, !304, !305, !306, !307, !311, !315, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !342, !343, !344, !345, !346, !347, !348, !349, !362, !368}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !266, line: 38, baseType: !264, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !265, file: !266, line: 39, baseType: !132, size: 8, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !265, file: !266, line: 40, baseType: !132, size: 8, offset: 72)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !265, file: !266, line: 41, baseType: !20, size: 16, offset: 80)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !265, file: !266, line: 42, baseType: !132, size: 8, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !265, file: !266, line: 43, baseType: !132, size: 8, offset: 104)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !265, file: !266, line: 44, baseType: !132, size: 8, offset: 112)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !265, file: !266, line: 45, baseType: !276, size: 16, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !263, line: 445, baseType: !20)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !265, file: !266, line: 46, baseType: !132, size: 8, offset: 144)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !265, file: !266, line: 47, baseType: !132, size: 8, offset: 152)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !265, file: !266, line: 48, baseType: !132, size: 8, offset: 160)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !265, file: !266, line: 49, baseType: !132, size: 8, offset: 168)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !265, file: !266, line: 50, baseType: !132, size: 8, offset: 176)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !265, file: !266, line: 51, baseType: !132, size: 8, offset: 184)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !265, file: !266, line: 52, baseType: !132, size: 8, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !265, file: !266, line: 53, baseType: !132, size: 8, offset: 200)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !265, file: !266, line: 54, baseType: !159, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !265, file: !266, line: 55, baseType: !14, size: 32, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !265, file: !266, line: 56, baseType: !14, size: 32, offset: 352)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !265, file: !266, line: 57, baseType: !14, size: 32, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !265, file: !266, line: 58, baseType: !14, size: 32, offset: 416)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !265, file: !266, line: 60, baseType: !291, size: 640, offset: 448)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !125, line: 893, size: 640, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !291, file: !125, line: 894, baseType: !159, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !291, file: !125, line: 895, baseType: !159, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !291, file: !125, line: 896, baseType: !159, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !291, file: !125, line: 897, baseType: !159, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !291, file: !125, line: 898, baseType: !159, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !291, file: !125, line: 899, baseType: !148, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !291, file: !125, line: 900, baseType: !162, size: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !291, file: !125, line: 901, baseType: !123, size: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !291, file: !125, line: 902, baseType: !148, size: 64, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !291, file: !125, line: 903, baseType: !14, size: 32, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !265, file: !266, line: 61, baseType: !14, size: 32, offset: 1088)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !265, file: !266, line: 62, baseType: !14, size: 32, offset: 1120)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !265, file: !266, line: 63, baseType: !20, size: 16, offset: 1152)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !265, file: !266, line: 64, baseType: !132, size: 8, offset: 1168)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !265, file: !266, line: 66, baseType: !308, size: 2688, offset: 1216)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 2688, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 7)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !265, file: !266, line: 67, baseType: !312, size: 3072, offset: 3904)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 3072, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 8)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !265, file: !266, line: 68, baseType: !316, size: 576, offset: 6976)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 576, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 9)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !265, file: !266, line: 69, baseType: !227, size: 64, offset: 7552)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !265, file: !266, line: 71, baseType: !159, size: 64, offset: 7616)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !265, file: !266, line: 72, baseType: !227, size: 64, offset: 7680)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !265, file: !266, line: 73, baseType: !123, size: 64, offset: 7744)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !265, file: !266, line: 74, baseType: !162, size: 64, offset: 7808)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !265, file: !266, line: 75, baseType: !166, size: 64, offset: 7872)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !265, file: !266, line: 76, baseType: !162, size: 64, offset: 7936)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !265, file: !266, line: 77, baseType: !148, size: 64, offset: 8000)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !265, file: !266, line: 78, baseType: !166, size: 64, offset: 8064)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !265, file: !266, line: 79, baseType: !162, size: 64, offset: 8128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !265, file: !266, line: 80, baseType: !19, size: 64, offset: 8192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !265, file: !266, line: 81, baseType: !148, size: 64, offset: 8256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !265, file: !266, line: 82, baseType: !332, size: 64, offset: 8320)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !125, line: 702, size: 128, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !334, file: !125, line: 706, baseType: !14, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !334, file: !125, line: 707, baseType: !14, size: 32, offset: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !125, line: 708, baseType: !20, size: 16, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !334, file: !125, line: 709, baseType: !132, size: 8, offset: 80)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !334, file: !125, line: 710, baseType: !132, size: 8, offset: 88)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !334, file: !125, line: 711, baseType: !132, size: 8, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !265, file: !266, line: 83, baseType: !148, size: 64, offset: 8384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !265, file: !266, line: 84, baseType: !166, size: 64, offset: 8448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !265, file: !266, line: 85, baseType: !123, size: 64, offset: 8512)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !265, file: !266, line: 86, baseType: !166, size: 64, offset: 8576)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !265, file: !266, line: 87, baseType: !123, size: 64, offset: 8640)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !265, file: !266, line: 88, baseType: !148, size: 64, offset: 8704)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !265, file: !266, line: 89, baseType: !148, size: 64, offset: 8768)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !265, file: !266, line: 90, baseType: !350, size: 64, offset: 8832)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !125, line: 620, size: 320, elements: !352)
!352 = !{!353, !354, !355, !356, !357, !358, !359, !360, !361}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !125, line: 621, baseType: !44, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !351, file: !125, line: 621, baseType: !132, size: 8, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !351, file: !125, line: 621, baseType: !132, size: 8, offset: 72)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !351, file: !125, line: 621, baseType: !20, size: 16, offset: 80)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !351, file: !125, line: 621, baseType: !20, size: 16, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !351, file: !125, line: 621, baseType: !132, size: 8, offset: 112)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !351, file: !125, line: 622, baseType: !264, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !351, file: !125, line: 623, baseType: !166, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !351, file: !125, line: 624, baseType: !191, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !265, file: !266, line: 91, baseType: !363, size: 64, offset: 8896)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !125, line: 637, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!262, !264, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !265, file: !266, line: 92, baseType: !369, size: 64, offset: 8960)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !125, line: 641, baseType: !259)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !255, file: !168, line: 152, baseType: !166, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !241, file: !168, line: 155, baseType: !14, size: 32, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !241, file: !168, line: 156, baseType: !276, size: 16, offset: 416)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !241, file: !168, line: 157, baseType: !132, size: 8, offset: 432)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !167, file: !168, line: 375, baseType: !375, size: 576)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !168, line: 122, size: 576, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !375, file: !168, line: 123, baseType: !166, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !375, file: !168, line: 123, baseType: !132, size: 8, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !375, file: !168, line: 123, baseType: !132, size: 8, offset: 72)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !375, file: !168, line: 123, baseType: !20, size: 16, offset: 80)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !375, file: !168, line: 123, baseType: !132, size: 8, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !375, file: !168, line: 123, baseType: !132, size: 8, offset: 104)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !375, file: !168, line: 124, baseType: !20, size: 16, offset: 112)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !375, file: !168, line: 125, baseType: !44, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !375, file: !168, line: 126, baseType: !191, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !375, file: !168, line: 127, baseType: !350, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !375, file: !168, line: 128, baseType: !166, size: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !168, line: 129, baseType: !166, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !375, file: !168, line: 130, baseType: !162, size: 64, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !375, file: !168, line: 131, baseType: !132, size: 8, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !167, file: !168, line: 376, baseType: !392, size: 448)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !168, line: 134, size: 448, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !405}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !392, file: !168, line: 135, baseType: !166, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !392, file: !168, line: 135, baseType: !132, size: 8, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !392, file: !168, line: 135, baseType: !132, size: 8, offset: 72)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !392, file: !168, line: 135, baseType: !20, size: 16, offset: 80)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !168, line: 135, baseType: !132, size: 8, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !392, file: !168, line: 135, baseType: !132, size: 8, offset: 104)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !392, file: !168, line: 136, baseType: !162, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !392, file: !168, line: 137, baseType: !166, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !168, line: 138, baseType: !166, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !392, file: !168, line: 139, baseType: !404, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !263, line: 129, baseType: !191)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !392, file: !168, line: 140, baseType: !14, size: 32, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !167, file: !168, line: 377, baseType: !407, size: 320)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !168, line: 184, size: 320, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414, !418}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !407, file: !168, line: 185, baseType: !166, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !407, file: !168, line: 185, baseType: !132, size: 8, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !407, file: !168, line: 185, baseType: !132, size: 8, offset: 72)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !407, file: !168, line: 185, baseType: !20, size: 16, offset: 80)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !168, line: 185, baseType: !132, size: 8, offset: 96)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !407, file: !168, line: 185, baseType: !415, size: 128, offset: 128)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 128, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 2)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !407, file: !168, line: 185, baseType: !166, size: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !167, file: !168, line: 378, baseType: !420, size: 384)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !168, line: 187, size: 384, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !420, file: !168, line: 188, baseType: !166, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !420, file: !168, line: 188, baseType: !132, size: 8, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !420, file: !168, line: 188, baseType: !132, size: 8, offset: 72)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !420, file: !168, line: 188, baseType: !20, size: 16, offset: 80)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !168, line: 188, baseType: !132, size: 8, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !420, file: !168, line: 189, baseType: !415, size: 128, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !420, file: !168, line: 189, baseType: !166, size: 64, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !420, file: !168, line: 189, baseType: !430, size: 64, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !125, line: 480, size: 576, elements: !432)
!432 = !{!433, !434, !435, !436, !444, !459, !492, !493, !494, !495, !496, !497}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !431, file: !125, line: 481, baseType: !162, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !431, file: !125, line: 482, baseType: !430, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !431, file: !125, line: 483, baseType: !430, size: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !431, file: !125, line: 484, baseType: !437, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !125, line: 497, size: 256, elements: !439)
!439 = !{!440, !441, !442, !443}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !438, file: !125, line: 498, baseType: !437, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !438, file: !125, line: 499, baseType: !437, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !438, file: !125, line: 500, baseType: !430, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !438, file: !125, line: 501, baseType: !14, size: 32, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !431, file: !125, line: 485, baseType: !445, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !125, line: 466, size: 320, elements: !447)
!447 = !{!448, !453, !454, !455, !456, !457, !458}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !446, file: !125, line: 467, baseType: !449, size: 128)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !125, line: 459, size: 128, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !449, file: !125, line: 460, baseType: !132, size: 8)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !449, file: !125, line: 461, baseType: !191, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !446, file: !125, line: 468, baseType: !449, size: 128, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !446, file: !125, line: 469, baseType: !20, size: 16, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !446, file: !125, line: 470, baseType: !132, size: 8, offset: 272)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !446, file: !125, line: 471, baseType: !132, size: 8, offset: 280)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !446, file: !125, line: 472, baseType: !132, size: 8, offset: 288)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !446, file: !125, line: 473, baseType: !132, size: 8, offset: 296)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !431, file: !125, line: 486, baseType: !460, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !125, line: 448, size: 192, elements: !462)
!462 = !{!463, !487, !488, !489, !490, !491}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !461, file: !125, line: 449, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !125, line: 438, size: 64, elements: !465)
!465 = !{!466, !467, !481}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !464, file: !125, line: 439, baseType: !162, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !464, file: !125, line: 440, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !125, line: 419, size: 256, elements: !470)
!470 = !{!471, !477, !478, !479, !480}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !469, file: !125, line: 420, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !263, line: 1049, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!14, !476, !14, !44}
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !263, line: 424, baseType: !44)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !469, file: !125, line: 421, baseType: !44, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !469, file: !125, line: 422, baseType: !162, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !469, file: !125, line: 423, baseType: !132, size: 8, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !469, file: !125, line: 424, baseType: !132, size: 8, offset: 200)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !464, file: !125, line: 441, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !125, line: 429, size: 128, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !483, file: !125, line: 430, baseType: !162, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !483, file: !125, line: 431, baseType: !482, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !461, file: !125, line: 450, baseType: !445, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !461, file: !125, line: 451, baseType: !132, size: 8, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !461, file: !125, line: 452, baseType: !132, size: 8, offset: 136)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !461, file: !125, line: 453, baseType: !132, size: 8, offset: 144)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !461, file: !125, line: 454, baseType: !132, size: 8, offset: 152)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !431, file: !125, line: 487, baseType: !191, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !431, file: !125, line: 488, baseType: !14, size: 32, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !431, file: !125, line: 489, baseType: !20, size: 16, offset: 480)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !431, file: !125, line: 490, baseType: !20, size: 16, offset: 496)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !431, file: !125, line: 491, baseType: !132, size: 8, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !431, file: !125, line: 492, baseType: !132, size: 8, offset: 520)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !167, file: !168, line: 379, baseType: !499, size: 384)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !168, line: 192, size: 384, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508, !509}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !499, file: !168, line: 193, baseType: !166, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !499, file: !168, line: 193, baseType: !132, size: 8, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !499, file: !168, line: 193, baseType: !132, size: 8, offset: 72)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !499, file: !168, line: 193, baseType: !20, size: 16, offset: 80)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !168, line: 193, baseType: !132, size: 8, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !499, file: !168, line: 193, baseType: !415, size: 128, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !499, file: !168, line: 193, baseType: !166, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !499, file: !168, line: 193, baseType: !14, size: 32, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !499, file: !168, line: 194, baseType: !14, size: 32, offset: 352)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !167, file: !168, line: 380, baseType: !511, size: 384)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !168, line: 197, size: 384, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !511, file: !168, line: 198, baseType: !166, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !511, file: !168, line: 198, baseType: !132, size: 8, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !511, file: !168, line: 198, baseType: !132, size: 8, offset: 72)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !511, file: !168, line: 198, baseType: !20, size: 16, offset: 80)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !168, line: 198, baseType: !132, size: 8, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !511, file: !168, line: 200, baseType: !132, size: 8, offset: 104)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !511, file: !168, line: 201, baseType: !132, size: 8, offset: 112)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !511, file: !168, line: 202, baseType: !415, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !511, file: !168, line: 202, baseType: !166, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !511, file: !168, line: 202, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !263, line: 128, baseType: !191)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !167, file: !168, line: 381, baseType: !525, size: 320)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !168, line: 205, size: 320, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !525, file: !168, line: 206, baseType: !166, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !525, file: !168, line: 206, baseType: !132, size: 8, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !525, file: !168, line: 206, baseType: !132, size: 8, offset: 72)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !525, file: !168, line: 206, baseType: !20, size: 16, offset: 80)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !525, file: !168, line: 206, baseType: !132, size: 8, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !525, file: !168, line: 206, baseType: !415, size: 128, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !525, file: !168, line: 206, baseType: !166, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !167, file: !168, line: 382, baseType: !535, size: 384)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !168, line: 233, size: 384, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !535, file: !168, line: 234, baseType: !166, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !535, file: !168, line: 234, baseType: !132, size: 8, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !535, file: !168, line: 234, baseType: !132, size: 8, offset: 72)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !535, file: !168, line: 234, baseType: !20, size: 16, offset: 80)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !168, line: 234, baseType: !132, size: 8, offset: 96)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !535, file: !168, line: 234, baseType: !132, size: 8, offset: 104)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !535, file: !168, line: 234, baseType: !132, size: 8, offset: 112)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !535, file: !168, line: 234, baseType: !132, size: 8, offset: 120)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !535, file: !168, line: 234, baseType: !162, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !535, file: !168, line: 234, baseType: !14, size: 32, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !535, file: !168, line: 234, baseType: !14, size: 32, offset: 224)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !535, file: !168, line: 234, baseType: !14, size: 32, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !535, file: !168, line: 234, baseType: !132, size: 8, offset: 288)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !535, file: !168, line: 234, baseType: !132, size: 8, offset: 296)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !535, file: !168, line: 234, baseType: !166, size: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !167, file: !168, line: 383, baseType: !553, size: 576)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !168, line: 237, size: 576, elements: !554)
!554 = !{!555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !553, file: !168, line: 238, baseType: !166, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !553, file: !168, line: 238, baseType: !132, size: 8, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !553, file: !168, line: 238, baseType: !132, size: 8, offset: 72)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !553, file: !168, line: 238, baseType: !20, size: 16, offset: 80)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !553, file: !168, line: 238, baseType: !132, size: 8, offset: 96)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !553, file: !168, line: 238, baseType: !132, size: 8, offset: 104)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !553, file: !168, line: 238, baseType: !132, size: 8, offset: 112)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !553, file: !168, line: 238, baseType: !132, size: 8, offset: 120)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !553, file: !168, line: 238, baseType: !162, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !553, file: !168, line: 238, baseType: !14, size: 32, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !553, file: !168, line: 238, baseType: !14, size: 32, offset: 224)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !553, file: !168, line: 238, baseType: !14, size: 32, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !553, file: !168, line: 238, baseType: !132, size: 8, offset: 288)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !553, file: !168, line: 238, baseType: !132, size: 8, offset: 296)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !553, file: !168, line: 238, baseType: !20, size: 16, offset: 304)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !553, file: !168, line: 239, baseType: !166, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !553, file: !168, line: 240, baseType: !159, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !553, file: !168, line: 241, baseType: !20, size: 16, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !553, file: !168, line: 242, baseType: !159, size: 64, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !167, file: !168, line: 384, baseType: !575, size: 384)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !168, line: 262, size: 384, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !575, file: !168, line: 263, baseType: !166, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !575, file: !168, line: 263, baseType: !132, size: 8, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !168, line: 263, baseType: !132, size: 8, offset: 72)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !575, file: !168, line: 263, baseType: !20, size: 16, offset: 80)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !168, line: 263, baseType: !132, size: 8, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !575, file: !168, line: 263, baseType: !132, size: 8, offset: 104)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !575, file: !168, line: 263, baseType: !132, size: 8, offset: 112)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !575, file: !168, line: 263, baseType: !132, size: 8, offset: 120)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !575, file: !168, line: 263, baseType: !162, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !575, file: !168, line: 263, baseType: !14, size: 32, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !575, file: !168, line: 263, baseType: !14, size: 32, offset: 224)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !575, file: !168, line: 263, baseType: !14, size: 32, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !575, file: !168, line: 263, baseType: !132, size: 8, offset: 288)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !575, file: !168, line: 263, baseType: !132, size: 8, offset: 296)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !575, file: !168, line: 263, baseType: !132, size: 8, offset: 304)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !575, file: !168, line: 264, baseType: !166, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !167, file: !168, line: 385, baseType: !594, size: 448)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !168, line: 245, size: 448, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !594, file: !168, line: 246, baseType: !166, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !594, file: !168, line: 246, baseType: !132, size: 8, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !594, file: !168, line: 246, baseType: !132, size: 8, offset: 72)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !594, file: !168, line: 246, baseType: !20, size: 16, offset: 80)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !594, file: !168, line: 246, baseType: !132, size: 8, offset: 96)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !594, file: !168, line: 246, baseType: !132, size: 8, offset: 104)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !594, file: !168, line: 246, baseType: !132, size: 8, offset: 112)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !594, file: !168, line: 246, baseType: !132, size: 8, offset: 120)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !594, file: !168, line: 246, baseType: !162, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !594, file: !168, line: 246, baseType: !14, size: 32, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !594, file: !168, line: 246, baseType: !14, size: 32, offset: 224)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !594, file: !168, line: 246, baseType: !14, size: 32, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !594, file: !168, line: 246, baseType: !132, size: 8, offset: 288)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !594, file: !168, line: 246, baseType: !132, size: 8, offset: 296)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !594, file: !168, line: 246, baseType: !166, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !594, file: !168, line: 247, baseType: !166, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !167, file: !168, line: 386, baseType: !613, size: 448)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !168, line: 250, size: 448, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !613, file: !168, line: 251, baseType: !166, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !168, line: 251, baseType: !132, size: 8, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !168, line: 251, baseType: !132, size: 8, offset: 72)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !613, file: !168, line: 251, baseType: !20, size: 16, offset: 80)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !168, line: 251, baseType: !132, size: 8, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !613, file: !168, line: 251, baseType: !132, size: 8, offset: 104)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !613, file: !168, line: 251, baseType: !132, size: 8, offset: 112)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !613, file: !168, line: 251, baseType: !132, size: 8, offset: 120)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !613, file: !168, line: 251, baseType: !162, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !613, file: !168, line: 251, baseType: !14, size: 32, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !613, file: !168, line: 251, baseType: !14, size: 32, offset: 224)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !613, file: !168, line: 251, baseType: !14, size: 32, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !613, file: !168, line: 251, baseType: !132, size: 8, offset: 288)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !613, file: !168, line: 251, baseType: !132, size: 8, offset: 296)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !613, file: !168, line: 256, baseType: !166, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !613, file: !168, line: 257, baseType: !166, size: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !167, file: !168, line: 387, baseType: !632, size: 512)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !168, line: 273, size: 512, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !639, !640, !641, !646, !647}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !632, file: !168, line: 274, baseType: !166, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !632, file: !168, line: 274, baseType: !132, size: 8, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !632, file: !168, line: 274, baseType: !132, size: 8, offset: 72)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !632, file: !168, line: 274, baseType: !20, size: 16, offset: 80)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !168, line: 274, baseType: !132, size: 8, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !632, file: !168, line: 274, baseType: !162, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !632, file: !168, line: 275, baseType: !14, size: 32, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !632, file: !168, line: 276, baseType: !642, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !263, line: 1052, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !476, !14, !44}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !632, file: !168, line: 277, baseType: !44, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !632, file: !168, line: 278, baseType: !415, size: 128, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !167, file: !168, line: 388, baseType: !649, size: 512)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !168, line: 281, size: 512, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !664, !665, !666, !672, !673}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !649, file: !168, line: 282, baseType: !166, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !649, file: !168, line: 282, baseType: !132, size: 8, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !649, file: !168, line: 282, baseType: !132, size: 8, offset: 72)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !649, file: !168, line: 282, baseType: !20, size: 16, offset: 80)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !168, line: 282, baseType: !132, size: 8, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !649, file: !168, line: 282, baseType: !132, size: 8, offset: 104)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !649, file: !168, line: 283, baseType: !132, size: 8, offset: 112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !649, file: !168, line: 284, baseType: !659, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !263, line: 1084, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!262, !14, !404, !14, !663, !44, !44}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !649, file: !168, line: 285, baseType: !162, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !649, file: !168, line: 286, baseType: !44, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !649, file: !168, line: 287, baseType: !667, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !263, line: 1102, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!262, !476, !14, !44, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !649, file: !168, line: 288, baseType: !166, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !649, file: !168, line: 289, baseType: !166, size: 64, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !167, file: !168, line: 389, baseType: !675, size: 512)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !168, line: 307, size: 512, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !675, file: !168, line: 308, baseType: !166, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !675, file: !168, line: 308, baseType: !132, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !168, line: 308, baseType: !132, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !675, file: !168, line: 308, baseType: !20, size: 16, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !168, line: 308, baseType: !132, size: 8, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !675, file: !168, line: 308, baseType: !132, size: 8, offset: 104)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !675, file: !168, line: 309, baseType: !132, size: 8, offset: 112)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !675, file: !168, line: 310, baseType: !132, size: 8, offset: 120)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !675, file: !168, line: 311, baseType: !44, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !675, file: !168, line: 312, baseType: !162, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !675, file: !168, line: 313, baseType: !227, size: 64, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !675, file: !168, line: 314, baseType: !159, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !675, file: !168, line: 315, baseType: !159, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !675, file: !168, line: 316, baseType: !14, size: 32, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !167, file: !168, line: 390, baseType: !692, size: 448)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !168, line: 340, size: 448, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !692, file: !168, line: 341, baseType: !166, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !692, file: !168, line: 341, baseType: !132, size: 8, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !692, file: !168, line: 341, baseType: !132, size: 8, offset: 72)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !692, file: !168, line: 341, baseType: !20, size: 16, offset: 80)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !168, line: 341, baseType: !132, size: 8, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !692, file: !168, line: 341, baseType: !162, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !692, file: !168, line: 342, baseType: !162, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !692, file: !168, line: 343, baseType: !44, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !692, file: !168, line: 344, baseType: !159, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !692, file: !168, line: 345, baseType: !14, size: 32, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !167, file: !168, line: 391, baseType: !705, size: 256)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !168, line: 350, size: 256, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !717}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !705, file: !168, line: 351, baseType: !166, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !705, file: !168, line: 351, baseType: !132, size: 8, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !705, file: !168, line: 351, baseType: !132, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !705, file: !168, line: 351, baseType: !20, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !168, line: 351, baseType: !132, size: 8, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !705, file: !168, line: 351, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !263, line: 1055, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !476, !44}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !705, file: !168, line: 352, baseType: !44, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !167, file: !168, line: 392, baseType: !719, size: 192)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !168, line: 357, size: 192, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !719, file: !168, line: 358, baseType: !166, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !719, file: !168, line: 358, baseType: !132, size: 8, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !719, file: !168, line: 358, baseType: !132, size: 8, offset: 72)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !719, file: !168, line: 358, baseType: !20, size: 16, offset: 80)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !168, line: 358, baseType: !132, size: 8, offset: 96)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !719, file: !168, line: 358, baseType: !166, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !167, file: !168, line: 399, baseType: !163, size: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !163, file: !125, line: 135, baseType: !132, size: 8, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !125, line: 136, baseType: !132, size: 8, offset: 72)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !125, line: 137, baseType: !20, size: 16, offset: 80)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !125, line: 138, baseType: !732, size: 32, offset: 96)
!732 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !733, line: 327, size: 32, elements: !734)
!733 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !732, file: !733, line: 328, baseType: !14, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !732, file: !733, line: 329, baseType: !737, size: 32)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 4)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !163, file: !125, line: 139, baseType: !162, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !163, file: !125, line: 140, baseType: !162, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !163, file: !125, line: 141, baseType: !162, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !163, file: !125, line: 142, baseType: !276, size: 16, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !152, file: !125, line: 829, baseType: !745, size: 64, offset: 320)
!745 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !125, line: 716, size: 64, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !745, file: !125, line: 717, baseType: !191, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !745, file: !125, line: 718, baseType: !14, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !745, file: !125, line: 719, baseType: !19, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !745, file: !125, line: 720, baseType: !159, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !745, file: !125, line: 721, baseType: !19, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !745, file: !125, line: 722, baseType: !148, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !152, file: !125, line: 829, baseType: !132, size: 8, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !149, file: !125, line: 877, baseType: !755, size: 640)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !125, line: 835, size: 640, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !755, file: !125, line: 836, baseType: !148, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !755, file: !125, line: 836, baseType: !132, size: 8, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !125, line: 836, baseType: !132, size: 8, offset: 72)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !755, file: !125, line: 836, baseType: !20, size: 16, offset: 80)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !755, file: !125, line: 836, baseType: !159, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !755, file: !125, line: 836, baseType: !148, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !755, file: !125, line: 836, baseType: !162, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !755, file: !125, line: 836, baseType: !745, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !755, file: !125, line: 836, baseType: !132, size: 8, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !755, file: !125, line: 836, baseType: !19, size: 64, offset: 448)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !755, file: !125, line: 837, baseType: !159, size: 64, offset: 512)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !755, file: !125, line: 838, baseType: !14, size: 32, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !755, file: !125, line: 839, baseType: !14, size: 32, offset: 608)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !149, file: !125, line: 878, baseType: !771, size: 1600)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !125, line: 846, size: 1600, elements: !772)
!772 = !{!773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !771, file: !125, line: 847, baseType: !148, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !771, file: !125, line: 847, baseType: !132, size: 8, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !125, line: 847, baseType: !132, size: 8, offset: 72)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !771, file: !125, line: 847, baseType: !20, size: 16, offset: 80)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !771, file: !125, line: 847, baseType: !159, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !771, file: !125, line: 847, baseType: !148, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !771, file: !125, line: 847, baseType: !162, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !771, file: !125, line: 847, baseType: !745, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !771, file: !125, line: 847, baseType: !132, size: 8, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !771, file: !125, line: 847, baseType: !148, size: 64, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !771, file: !125, line: 848, baseType: !148, size: 64, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !771, file: !125, line: 849, baseType: !19, size: 64, offset: 576)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !771, file: !125, line: 850, baseType: !132, size: 8, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !771, file: !125, line: 851, baseType: !19, size: 64, offset: 704)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !771, file: !125, line: 852, baseType: !19, size: 64, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !771, file: !125, line: 853, baseType: !19, size: 64, offset: 832)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !771, file: !125, line: 854, baseType: !737, size: 32, offset: 896)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !771, file: !125, line: 855, baseType: !14, size: 32, offset: 928)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !771, file: !125, line: 856, baseType: !14, size: 32, offset: 960)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !771, file: !125, line: 857, baseType: !14, size: 32, offset: 992)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !771, file: !125, line: 858, baseType: !14, size: 32, offset: 1024)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !771, file: !125, line: 859, baseType: !14, size: 32, offset: 1056)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !771, file: !125, line: 860, baseType: !14, size: 32, offset: 1088)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !771, file: !125, line: 861, baseType: !14, size: 32, offset: 1120)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !771, file: !125, line: 862, baseType: !14, size: 32, offset: 1152)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !771, file: !125, line: 863, baseType: !14, size: 32, offset: 1184)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !771, file: !125, line: 864, baseType: !14, size: 32, offset: 1216)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !771, file: !125, line: 865, baseType: !14, size: 32, offset: 1248)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !771, file: !125, line: 866, baseType: !14, size: 32, offset: 1280)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !771, file: !125, line: 867, baseType: !14, size: 32, offset: 1312)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !771, file: !125, line: 868, baseType: !20, size: 16, offset: 1344)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !771, file: !125, line: 869, baseType: !132, size: 8, offset: 1360)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !771, file: !125, line: 870, baseType: !132, size: 8, offset: 1368)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !771, file: !125, line: 871, baseType: !132, size: 8, offset: 1376)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !771, file: !125, line: 872, baseType: !808, size: 160, offset: 1384)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 20)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !139, file: !125, line: 596, baseType: !159, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !139, file: !125, line: 597, baseType: !159, size: 64, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !139, file: !125, line: 598, baseType: !191, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !124, file: !125, line: 666, baseType: !815, size: 192)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !125, line: 573, size: 192, elements: !816)
!816 = !{!817, !818, !819, !820, !821, !822}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !815, file: !125, line: 574, baseType: !44, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !815, file: !125, line: 574, baseType: !132, size: 8, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !815, file: !125, line: 574, baseType: !132, size: 8, offset: 72)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !815, file: !125, line: 574, baseType: !20, size: 16, offset: 80)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !815, file: !125, line: 574, baseType: !20, size: 16, offset: 96)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !815, file: !125, line: 574, baseType: !166, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !124, file: !125, line: 667, baseType: !824, size: 192)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !125, line: 604, size: 192, elements: !825)
!825 = !{!826, !827, !828, !829, !830, !831}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !824, file: !125, line: 605, baseType: !44, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !824, file: !125, line: 605, baseType: !132, size: 8, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !824, file: !125, line: 605, baseType: !132, size: 8, offset: 72)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !824, file: !125, line: 605, baseType: !20, size: 16, offset: 80)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !824, file: !125, line: 605, baseType: !20, size: 16, offset: 96)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !824, file: !125, line: 605, baseType: !162, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !124, file: !125, line: 668, baseType: !833, size: 448)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !125, line: 608, size: 448, elements: !834)
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843, !844}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !833, file: !125, line: 609, baseType: !44, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !833, file: !125, line: 609, baseType: !132, size: 8, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !833, file: !125, line: 609, baseType: !132, size: 8, offset: 72)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !833, file: !125, line: 609, baseType: !20, size: 16, offset: 80)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !833, file: !125, line: 609, baseType: !20, size: 16, offset: 96)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !833, file: !125, line: 609, baseType: !14, size: 32, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !833, file: !125, line: 610, baseType: !148, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !833, file: !125, line: 611, baseType: !159, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !833, file: !125, line: 612, baseType: !159, size: 64, offset: 320)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !833, file: !125, line: 613, baseType: !14, size: 32, offset: 384)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !124, file: !125, line: 669, baseType: !846, size: 512)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !125, line: 580, size: 512, elements: !847)
!847 = !{!848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !846, file: !125, line: 581, baseType: !44, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !846, file: !125, line: 581, baseType: !132, size: 8, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !846, file: !125, line: 581, baseType: !132, size: 8, offset: 72)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !846, file: !125, line: 581, baseType: !20, size: 16, offset: 80)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !846, file: !125, line: 581, baseType: !20, size: 16, offset: 96)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !846, file: !125, line: 581, baseType: !14, size: 32, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !846, file: !125, line: 582, baseType: !166, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !846, file: !125, line: 583, baseType: !166, size: 64, offset: 256)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !846, file: !125, line: 584, baseType: !264, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !846, file: !125, line: 585, baseType: !44, size: 64, offset: 384)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !846, file: !125, line: 586, baseType: !14, size: 32, offset: 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !124, file: !125, line: 670, baseType: !351, size: 320)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !124, file: !125, line: 671, baseType: !861, size: 640)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !125, line: 631, size: 640, elements: !862)
!862 = !{!863, !864, !865, !866, !867, !868}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !861, file: !125, line: 632, baseType: !44, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !861, file: !125, line: 632, baseType: !132, size: 8, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !861, file: !125, line: 632, baseType: !132, size: 8, offset: 72)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !861, file: !125, line: 632, baseType: !20, size: 16, offset: 80)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !861, file: !125, line: 632, baseType: !20, size: 16, offset: 96)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !861, file: !125, line: 633, baseType: !869, size: 512, offset: 128)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 512, elements: !313)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !124, file: !125, line: 672, baseType: !871, size: 320)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !125, line: 654, size: 320, elements: !872)
!872 = !{!873, !874, !875, !876, !877, !878, !879, !880, !881}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !871, file: !125, line: 655, baseType: !44, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !871, file: !125, line: 655, baseType: !132, size: 8, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !871, file: !125, line: 655, baseType: !132, size: 8, offset: 72)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !871, file: !125, line: 655, baseType: !20, size: 16, offset: 80)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !871, file: !125, line: 655, baseType: !20, size: 16, offset: 96)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !871, file: !125, line: 655, baseType: !132, size: 8, offset: 112)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !871, file: !125, line: 656, baseType: !162, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !871, file: !125, line: 657, baseType: !166, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !871, file: !125, line: 658, baseType: !882, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !125, line: 645, size: 128, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !883, file: !125, line: 646, baseType: !642, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !883, file: !125, line: 647, baseType: !44, size: 64, offset: 64)
!887 = !DILocalVariable(name: "module_name", arg: 1, scope: !120, file: !1, line: 168, type: !11)
!888 = !DILocation(line: 168, column: 46, scope: !120)
!889 = !DILocalVariable(name: "line_number", arg: 2, scope: !120, file: !1, line: 169, type: !14)
!890 = !DILocation(line: 169, column: 10, scope: !120)
!891 = !DILocalVariable(name: "prefix_scope", arg: 3, scope: !120, file: !1, line: 170, type: !123)
!892 = !DILocation(line: 170, column: 32, scope: !120)
!893 = !DILocalVariable(name: "internal_path", arg: 4, scope: !120, file: !1, line: 171, type: !11)
!894 = !DILocation(line: 171, column: 18, scope: !120)
!895 = !DILocalVariable(name: "lookup_status", arg: 5, scope: !120, file: !1, line: 172, type: !262)
!896 = !DILocation(line: 172, column: 18, scope: !120)
!897 = !DILocalVariable(name: "full_path", scope: !120, file: !1, line: 174, type: !19)
!898 = !DILocation(line: 174, column: 8, scope: !120)
!899 = !DILocalVariable(name: "message", scope: !120, file: !1, line: 175, type: !11)
!900 = !DILocation(line: 175, column: 14, scope: !120)
!901 = !DILocation(line: 182, column: 10, scope: !120)
!902 = !DILocation(line: 182, column: 2, scope: !120)
!903 = !DILocation(line: 185, column: 3, scope: !904)
!904 = distinct !DILexicalBlock(scope: !120, file: !1, line: 182, column: 25)
!905 = !DILocation(line: 186, column: 11, scope: !904)
!906 = !DILocation(line: 187, column: 3, scope: !904)
!907 = !DILocation(line: 191, column: 3, scope: !904)
!908 = !DILocation(line: 192, column: 11, scope: !904)
!909 = !DILocation(line: 193, column: 3, scope: !904)
!910 = !DILocation(line: 197, column: 3, scope: !904)
!911 = !DILocation(line: 198, column: 11, scope: !904)
!912 = !DILocation(line: 199, column: 3, scope: !904)
!913 = !DILocation(line: 205, column: 38, scope: !120)
!914 = !DILocation(line: 205, column: 52, scope: !120)
!915 = !DILocation(line: 205, column: 6, scope: !120)
!916 = !DILocation(line: 204, column: 12, scope: !120)
!917 = !DILocation(line: 207, column: 32, scope: !120)
!918 = !DILocation(line: 208, column: 10, scope: !120)
!919 = !DILocation(line: 208, column: 22, scope: !120)
!920 = !DILocation(line: 209, column: 32, scope: !120)
!921 = !DILocation(line: 209, column: 10, scope: !120)
!922 = !DILocation(line: 207, column: 2, scope: !120)
!923 = !DILocation(line: 211, column: 6, scope: !924)
!924 = distinct !DILexicalBlock(scope: !120, file: !1, line: 211, column: 6)
!925 = !DILocation(line: 211, column: 6, scope: !120)
!926 = !DILocation(line: 212, column: 3, scope: !927)
!927 = distinct !DILexicalBlock(scope: !924, file: !1, line: 211, column: 17)
!928 = !DILocation(line: 213, column: 2, scope: !927)
!929 = !DILocation(line: 215, column: 2, scope: !120)
!930 = !DILocation(line: 216, column: 1, scope: !120)
!931 = distinct !DISubprogram(name: "acpi_os_free", scope: !932, file: !932, line: 60, type: !933, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!932 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!933 = !DISubroutineType(types: !934)
!934 = !{null, !44}
!935 = !DILocalVariable(name: "memory", arg: 1, scope: !931, file: !932, line: 60, type: !44)
!936 = !DILocation(line: 60, column: 39, scope: !931)
!937 = !DILocation(line: 62, column: 8, scope: !931)
!938 = !DILocation(line: 62, column: 2, scope: !931)
!939 = !DILocation(line: 63, column: 1, scope: !931)
!940 = distinct !DISubprogram(name: "acpi_ut_method_error", scope: !1, file: !1, line: 299, type: !941, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !11, !14, !11, !162, !11, !262}
!943 = !DILocalVariable(name: "module_name", arg: 1, scope: !940, file: !1, line: 299, type: !11)
!944 = !DILocation(line: 299, column: 34, scope: !940)
!945 = !DILocalVariable(name: "line_number", arg: 2, scope: !940, file: !1, line: 300, type: !14)
!946 = !DILocation(line: 300, column: 12, scope: !940)
!947 = !DILocalVariable(name: "message", arg: 3, scope: !940, file: !1, line: 301, type: !11)
!948 = !DILocation(line: 301, column: 20, scope: !940)
!949 = !DILocalVariable(name: "prefix_node", arg: 4, scope: !940, file: !1, line: 302, type: !162)
!950 = !DILocation(line: 302, column: 36, scope: !940)
!951 = !DILocalVariable(name: "path", arg: 5, scope: !940, file: !1, line: 303, type: !11)
!952 = !DILocation(line: 303, column: 20, scope: !940)
!953 = !DILocalVariable(name: "method_status", arg: 6, scope: !940, file: !1, line: 303, type: !262)
!954 = !DILocation(line: 303, column: 38, scope: !940)
!955 = !DILocalVariable(name: "status", scope: !940, file: !1, line: 305, type: !262)
!956 = !DILocation(line: 305, column: 14, scope: !940)
!957 = !DILocalVariable(name: "node", scope: !940, file: !1, line: 306, type: !162)
!958 = !DILocation(line: 306, column: 30, scope: !940)
!959 = !DILocation(line: 306, column: 37, scope: !940)
!960 = !DILocation(line: 309, column: 2, scope: !940)
!961 = !DILocation(line: 311, column: 6, scope: !962)
!962 = distinct !DILexicalBlock(scope: !940, file: !1, line: 311, column: 6)
!963 = !DILocation(line: 311, column: 6, scope: !940)
!964 = !DILocation(line: 312, column: 29, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !1, line: 311, column: 12)
!966 = !DILocation(line: 312, column: 42, scope: !965)
!967 = !DILocation(line: 312, column: 12, scope: !965)
!968 = !DILocation(line: 312, column: 10, scope: !965)
!969 = !DILocation(line: 314, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !965, file: !1, line: 314, column: 7)
!971 = !DILocation(line: 314, column: 7, scope: !965)
!972 = !DILocation(line: 315, column: 4, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !1, line: 314, column: 29)
!974 = !DILocation(line: 316, column: 3, scope: !973)
!975 = !DILocation(line: 317, column: 2, scope: !965)
!976 = !DILocation(line: 319, column: 30, scope: !940)
!977 = !DILocation(line: 319, column: 36, scope: !940)
!978 = !DILocation(line: 319, column: 2, scope: !940)
!979 = !DILocation(line: 321, column: 32, scope: !940)
!980 = !DILocation(line: 321, column: 10, scope: !940)
!981 = !DILocation(line: 320, column: 2, scope: !940)
!982 = !DILocation(line: 323, column: 2, scope: !940)
!983 = !DILocation(line: 325, column: 1, scope: !940)
