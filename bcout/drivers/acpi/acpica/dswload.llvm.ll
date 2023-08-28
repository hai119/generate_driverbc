; ModuleID = '../bcout/drivers/acpi/acpica/dswload.llvm.bc'
source_filename = "drivers/acpi/acpica/dswload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*)* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%union.acpi_name_union = type { i32 }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }
%struct.acpi_common_state = type { i8*, i8, i8, i16, i16 }
%struct.acpi_parse_obj_named = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, i8*, i8*, i32, i32 }

@_acpi_module_name = internal constant [8 x i8] c"dswload\00", align 1, !dbg !0
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@.str = private unnamed_addr constant [73 x i8] c"Invalid type (%s) for target of Scope operator [%4.4s] (Cannot override)\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_init_callbacks(%struct.acpi_walk_state* %walk_state, i32 %pass_number) #0 !dbg !38 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %pass_number.addr = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !799, metadata !DIExpression()), !dbg !800
  store i32 %pass_number, i32* %pass_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pass_number.addr, metadata !801, metadata !DIExpression()), !dbg !802
  %0 = load i32, i32* %pass_number.addr, align 4, !dbg !803
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
  ], !dbg !804

sw.bb:                                            ; preds = %entry
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !805
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 20, !dbg !807
  store i32 529, i32* %parse_flags, align 4, !dbg !808
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !809
  %descending_callback = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 50, !dbg !810
  store i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)* null, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)** %descending_callback, align 8, !dbg !811
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !812
  %ascending_callback = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 51, !dbg !813
  store i32 (%struct.acpi_walk_state*)* null, i32 (%struct.acpi_walk_state*)** %ascending_callback, align 8, !dbg !814
  br label %sw.epilog, !dbg !815

sw.bb1:                                           ; preds = %entry
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !816
  %parse_flags2 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 20, !dbg !817
  store i32 17, i32* %parse_flags2, align 4, !dbg !818
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !819
  %descending_callback3 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 50, !dbg !820
  store i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)* @acpi_ds_load1_begin_op, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)** %descending_callback3, align 8, !dbg !821
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !822
  %ascending_callback4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 51, !dbg !823
  store i32 (%struct.acpi_walk_state*)* @acpi_ds_load1_end_op, i32 (%struct.acpi_walk_state*)** %ascending_callback4, align 8, !dbg !824
  br label %sw.epilog, !dbg !825

sw.bb5:                                           ; preds = %entry
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !826
  %parse_flags6 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 20, !dbg !827
  store i32 17, i32* %parse_flags6, align 4, !dbg !828
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !829
  %descending_callback7 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 50, !dbg !830
  store i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)* @acpi_ds_load2_begin_op, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)** %descending_callback7, align 8, !dbg !831
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !832
  %ascending_callback8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 51, !dbg !833
  store i32 (%struct.acpi_walk_state*)* @acpi_ds_load2_end_op, i32 (%struct.acpi_walk_state*)** %ascending_callback8, align 8, !dbg !834
  br label %sw.epilog, !dbg !835

sw.bb9:                                           ; preds = %entry
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !836
  %parse_flags10 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 20, !dbg !837
  %11 = load i32, i32* %parse_flags10, align 4, !dbg !838
  %or = or i32 %11, 49, !dbg !838
  store i32 %or, i32* %parse_flags10, align 4, !dbg !838
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !839
  %descending_callback11 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 50, !dbg !840
  store i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)* @acpi_ds_exec_begin_op, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)** %descending_callback11, align 8, !dbg !841
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !842
  %ascending_callback12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 51, !dbg !843
  store i32 (%struct.acpi_walk_state*)* @acpi_ds_exec_end_op, i32 (%struct.acpi_walk_state*)** %ascending_callback12, align 8, !dbg !844
  br label %sw.epilog, !dbg !845

sw.default:                                       ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !846
  br label %return, !dbg !846

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !847
  br label %return, !dbg !847

return:                                           ; preds = %sw.epilog, %sw.default
  %14 = load i32, i32* %retval, align 4, !dbg !848
  ret i32 %14, !dbg !848
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_load1_begin_op(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object** %out_op) #0 !dbg !849 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %out_op.addr = alloca %union.acpi_parse_object**, align 8
  %op = alloca %union.acpi_parse_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  %object_type = alloca i32, align 4
  %path = alloca i8*, align 8
  %flags = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !850, metadata !DIExpression()), !dbg !851
  store %union.acpi_parse_object** %out_op, %union.acpi_parse_object*** %out_op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object*** %out_op.addr, metadata !852, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op, metadata !854, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !856, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.declare(metadata i32* %status, metadata !858, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.declare(metadata i32* %object_type, metadata !860, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.declare(metadata i8** %path, metadata !863, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !865, metadata !DIExpression()), !dbg !866
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !867
  %op1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 40, !dbg !868
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op1, align 8, !dbg !868
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %op, align 8, !dbg !869
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !870
  %tobool = icmp ne %union.acpi_parse_object* %2, null, !dbg !870
  br i1 %tobool, label %if.then, label %if.end9, !dbg !872

if.then:                                          ; preds = %entry
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !873
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 41, !dbg !876
  %4 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !876
  %flags2 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %4, i32 0, i32 2, !dbg !877
  %5 = load i16, i16* %flags2, align 4, !dbg !877
  %conv = zext i16 %5 to i32, !dbg !873
  %and = and i32 %conv, 64, !dbg !878
  %tobool3 = icmp ne i32 %and, 0, !dbg !878
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !879

if.then4:                                         ; preds = %if.then
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !880
  %7 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %out_op.addr, align 8, !dbg !882
  store %union.acpi_parse_object* %6, %union.acpi_parse_object** %7, align 8, !dbg !883
  store i32 0, i32* %retval, align 4, !dbg !884
  br label %return, !dbg !884

if.end:                                           ; preds = %if.then
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !885
  %common = bitcast %union.acpi_parse_object* %8 to %struct.acpi_parse_obj_common*, !dbg !887
  %node5 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 6, !dbg !888
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node5, align 8, !dbg !888
  %tobool6 = icmp ne %struct.acpi_namespace_node* %9, null, !dbg !885
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !889

if.then7:                                         ; preds = %if.end
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !890
  %11 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %out_op.addr, align 8, !dbg !892
  store %union.acpi_parse_object* %10, %union.acpi_parse_object** %11, align 8, !dbg !893
  store i32 0, i32* %retval, align 4, !dbg !894
  br label %return, !dbg !894

if.end8:                                          ; preds = %if.end
  br label %if.end9, !dbg !895

if.end9:                                          ; preds = %if.end8, %entry
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !896
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 21, !dbg !897
  %call = call i8* @acpi_ps_get_next_namestring(%struct.acpi_parse_state* %parser_state) #3, !dbg !898
  store i8* %call, i8** %path, align 8, !dbg !899
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !900
  %op_info10 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 41, !dbg !901
  %14 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info10, align 8, !dbg !901
  %object_type11 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %14, i32 0, i32 3, !dbg !902
  %15 = load i8, i8* %object_type11, align 2, !dbg !902
  %conv12 = zext i8 %15 to i32, !dbg !900
  store i32 %conv12, i32* %object_type, align 4, !dbg !903
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !904
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 3, !dbg !905
  %17 = load i16, i16* %opcode, align 2, !dbg !905
  %conv13 = zext i16 %17 to i32, !dbg !904
  switch i32 %conv13, label %sw.default35 [
    i32 16, label %sw.bb
  ], !dbg !906

sw.bb:                                            ; preds = %if.end9
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !907
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 46, !dbg !909
  %19 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !909
  %20 = load i8*, i8** %path, align 8, !dbg !910
  %21 = load i32, i32* %object_type, align 4, !dbg !911
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !912
  %call14 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %19, i8* %20, i32 %21, i32 3, i32 1, %struct.acpi_walk_state* %22, %struct.acpi_namespace_node** %node) #3, !dbg !913
  store i32 %call14, i32* %status, align 4, !dbg !914
  %23 = load i32, i32* %status, align 4, !dbg !915
  %tobool15 = icmp ne i32 %23, 0, !dbg !915
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !917

if.then16:                                        ; preds = %sw.bb
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !918
  %scope_info17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 46, !dbg !918
  %25 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info17, align 8, !dbg !918
  %26 = load i8*, i8** %path, align 8, !dbg !918
  %27 = load i32, i32* %status, align 4, !dbg !918
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 174, %union.acpi_generic_state* %25, i8* %26, i32 %27) #3, !dbg !918
  %28 = load i32, i32* %status, align 4, !dbg !920
  store i32 %28, i32* %retval, align 4, !dbg !920
  br label %return, !dbg !920

if.end18:                                         ; preds = %sw.bb
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !921
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %29, i32 0, i32 2, !dbg !922
  %30 = load i8, i8* %type, align 1, !dbg !922
  %conv19 = zext i8 %30 to i32, !dbg !921
  switch i32 %conv19, label %sw.default [
    i32 0, label %sw.bb20
    i32 27, label %sw.bb20
    i32 6, label %sw.bb20
    i32 11, label %sw.bb20
    i32 12, label %sw.bb20
    i32 13, label %sw.bb20
    i32 1, label %sw.bb21
    i32 2, label %sw.bb21
    i32 3, label %sw.bb21
    i32 8, label %sw.bb25
  ], !dbg !923

sw.bb20:                                          ; preds = %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18
  br label %sw.epilog, !dbg !924

sw.bb21:                                          ; preds = %if.end18, %if.end18, %if.end18
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !926
  %type22 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %31, i32 0, i32 2, !dbg !927
  store i8 0, i8* %type22, align 1, !dbg !928
  %32 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !929
  %scope_info23 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %32, i32 0, i32 46, !dbg !930
  %33 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info23, align 8, !dbg !930
  %common24 = bitcast %union.acpi_generic_state* %33 to %struct.acpi_common_state*, !dbg !931
  %value = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common24, i32 0, i32 3, !dbg !932
  store i16 0, i16* %value, align 2, !dbg !933
  br label %sw.epilog, !dbg !934

sw.bb25:                                          ; preds = %if.end18
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !935
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !937
  %cmp = icmp eq %struct.acpi_namespace_node* %34, %35, !dbg !938
  br i1 %cmp, label %land.lhs.true, label %if.end30, !dbg !939

land.lhs.true:                                    ; preds = %sw.bb25
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !940
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %36, i32 0, i32 20, !dbg !941
  %37 = load i32, i32* %parse_flags, align 4, !dbg !941
  %and27 = and i32 %37, 1024, !dbg !942
  %tobool28 = icmp ne i32 %and27, 0, !dbg !942
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !943

if.then29:                                        ; preds = %land.lhs.true
  br label %sw.epilog, !dbg !944

if.end30:                                         ; preds = %land.lhs.true, %sw.bb25
  br label %sw.default, !dbg !946

sw.default:                                       ; preds = %if.end18, %if.end30
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !947
  %type31 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %38, i32 0, i32 2, !dbg !947
  %39 = load i8, i8* %type31, align 1, !dbg !947
  %conv32 = zext i8 %39 to i32, !dbg !947
  %call33 = call i8* @acpi_ut_get_type_name(i32 %conv32) #3, !dbg !947
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !947
  %41 = bitcast %struct.acpi_namespace_node* %40 to i8*, !dbg !947
  %call34 = call i8* @acpi_ut_get_node_name(i8* %41) #3, !dbg !947
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 233, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* %call33, i8* %call34) #3, !dbg !947
  store i32 12291, i32* %retval, align 4, !dbg !948
  br label %return, !dbg !948

sw.epilog:                                        ; preds = %if.then29, %sw.bb21, %sw.bb20
  br label %sw.epilog91, !dbg !949

sw.default35:                                     ; preds = %if.end9
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !950
  %deferred_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %42, i32 0, i32 33, !dbg !952
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %deferred_node, align 8, !dbg !952
  %tobool36 = icmp ne %struct.acpi_namespace_node* %43, null, !dbg !950
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !953

if.then37:                                        ; preds = %sw.default35
  %44 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !954
  %deferred_node38 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %44, i32 0, i32 33, !dbg !956
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %deferred_node38, align 8, !dbg !956
  store %struct.acpi_namespace_node* %45, %struct.acpi_namespace_node** %node, align 8, !dbg !957
  store i32 0, i32* %status, align 4, !dbg !958
  br label %sw.epilog91, !dbg !959

if.end39:                                         ; preds = %sw.default35
  %46 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !960
  %method_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %46, i32 0, i32 38, !dbg !962
  %47 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !962
  %tobool40 = icmp ne %struct.acpi_namespace_node* %47, null, !dbg !960
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !963

if.then41:                                        ; preds = %if.end39
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %node, align 8, !dbg !964
  store i32 0, i32* %status, align 4, !dbg !966
  br label %sw.epilog91, !dbg !967

if.end42:                                         ; preds = %if.end39
  store i32 0, i32* %flags, align 4, !dbg !968
  %48 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !969
  %opcode43 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %48, i32 0, i32 3, !dbg !971
  %49 = load i16, i16* %opcode43, align 2, !dbg !971
  %conv44 = zext i16 %49 to i32, !dbg !969
  %cmp45 = icmp ne i32 %conv44, 16, !dbg !972
  br i1 %cmp45, label %land.lhs.true47, label %if.else56, !dbg !973

land.lhs.true47:                                  ; preds = %if.end42
  %50 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !974
  %parse_flags48 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %50, i32 0, i32 20, !dbg !975
  %51 = load i32, i32* %parse_flags48, align 4, !dbg !975
  %and49 = and i32 %51, 256, !dbg !976
  %tobool50 = icmp ne i32 %and49, 0, !dbg !976
  br i1 %tobool50, label %if.else56, label %if.then51, !dbg !977

if.then51:                                        ; preds = %land.lhs.true47
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !978
  %namespace_override = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %52, i32 0, i32 13, !dbg !981
  %53 = load i8, i8* %namespace_override, align 1, !dbg !981
  %tobool52 = icmp ne i8 %53, 0, !dbg !978
  br i1 %tobool52, label %if.then53, label %if.else, !dbg !982

if.then53:                                        ; preds = %if.then51
  %54 = load i32, i32* %flags, align 4, !dbg !983
  %or = or i32 %54, 128, !dbg !983
  store i32 %or, i32* %flags, align 4, !dbg !983
  br label %if.end55, !dbg !985

if.else:                                          ; preds = %if.then51
  %55 = load i32, i32* %flags, align 4, !dbg !986
  %or54 = or i32 %55, 8, !dbg !986
  store i32 %or54, i32* %flags, align 4, !dbg !986
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then53
  br label %if.end57, !dbg !988

if.else56:                                        ; preds = %land.lhs.true47, %if.end42
  br label %if.end57

if.end57:                                         ; preds = %if.else56, %if.end55
  %56 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !989
  %scope_info58 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %56, i32 0, i32 46, !dbg !990
  %57 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info58, align 8, !dbg !990
  %58 = load i8*, i8** %path, align 8, !dbg !991
  %59 = load i32, i32* %object_type, align 4, !dbg !992
  %60 = load i32, i32* %flags, align 4, !dbg !993
  %61 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !994
  %call59 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %57, i8* %58, i32 %59, i32 1, i32 %60, %struct.acpi_walk_state* %61, %struct.acpi_namespace_node** %node) #3, !dbg !995
  store i32 %call59, i32* %status, align 4, !dbg !996
  %62 = load i32, i32* %status, align 4, !dbg !997
  %tobool60 = icmp ne i32 %62, 0, !dbg !997
  br i1 %tobool60, label %if.then61, label %if.end90, !dbg !999

if.then61:                                        ; preds = %if.end57
  %63 = load i32, i32* %status, align 4, !dbg !1000
  %cmp62 = icmp eq i32 %63, 7, !dbg !1003
  br i1 %cmp62, label %if.then64, label %if.end85, !dbg !1004

if.then64:                                        ; preds = %if.then61
  %64 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1005
  %flags65 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %64, i32 0, i32 3, !dbg !1008
  %65 = load i16, i16* %flags65, align 2, !dbg !1008
  %conv66 = zext i16 %65 to i32, !dbg !1005
  %and67 = and i32 %conv66, 8, !dbg !1009
  %tobool68 = icmp ne i32 %and67, 0, !dbg !1009
  br i1 %tobool68, label %if.then69, label %if.end84, !dbg !1010

if.then69:                                        ; preds = %if.then64
  %66 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1011
  %flags70 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %66, i32 0, i32 3, !dbg !1013
  %67 = load i16, i16* %flags70, align 2, !dbg !1014
  %conv71 = zext i16 %67 to i32, !dbg !1014
  %and72 = and i32 %conv71, -9, !dbg !1014
  %conv73 = trunc i32 %and72 to i16, !dbg !1014
  store i16 %conv73, i16* %flags70, align 2, !dbg !1014
  %68 = load i32, i32* %object_type, align 4, !dbg !1015
  %conv74 = trunc i32 %68 to i8, !dbg !1016
  %69 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1017
  %type75 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %69, i32 0, i32 2, !dbg !1018
  store i8 %conv74, i8* %type75, align 1, !dbg !1019
  %70 = load i32, i32* %object_type, align 4, !dbg !1020
  %call76 = call i32 @acpi_ns_opens_scope(i32 %70) #3, !dbg !1022
  %tobool77 = icmp ne i32 %call76, 0, !dbg !1022
  br i1 %tobool77, label %if.then78, label %if.end83, !dbg !1023

if.then78:                                        ; preds = %if.then69
  %71 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1024
  %72 = load i32, i32* %object_type, align 4, !dbg !1026
  %73 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1027
  %call79 = call i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %71, i32 %72, %struct.acpi_walk_state* %73) #3, !dbg !1028
  store i32 %call79, i32* %status, align 4, !dbg !1029
  %74 = load i32, i32* %status, align 4, !dbg !1030
  %tobool80 = icmp ne i32 %74, 0, !dbg !1030
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !1032

if.then81:                                        ; preds = %if.then78
  %75 = load i32, i32* %status, align 4, !dbg !1033
  store i32 %75, i32* %retval, align 4, !dbg !1033
  br label %return, !dbg !1033

if.end82:                                         ; preds = %if.then78
  br label %if.end83, !dbg !1035

if.end83:                                         ; preds = %if.end82, %if.then69
  store i32 0, i32* %status, align 4, !dbg !1036
  br label %if.end84, !dbg !1037

if.end84:                                         ; preds = %if.end83, %if.then64
  br label %if.end85, !dbg !1038

if.end85:                                         ; preds = %if.end84, %if.then61
  %76 = load i32, i32* %status, align 4, !dbg !1039
  %tobool86 = icmp ne i32 %76, 0, !dbg !1039
  br i1 %tobool86, label %if.then87, label %if.end89, !dbg !1041

if.then87:                                        ; preds = %if.end85
  %77 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1042
  %scope_info88 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %77, i32 0, i32 46, !dbg !1042
  %78 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info88, align 8, !dbg !1042
  %79 = load i8*, i8** %path, align 8, !dbg !1042
  %80 = load i32, i32* %status, align 4, !dbg !1042
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 343, %union.acpi_generic_state* %78, i8* %79, i32 %80) #3, !dbg !1042
  %81 = load i32, i32* %status, align 4, !dbg !1044
  store i32 %81, i32* %retval, align 4, !dbg !1044
  br label %return, !dbg !1044

if.end89:                                         ; preds = %if.end85
  br label %if.end90, !dbg !1045

if.end90:                                         ; preds = %if.end89, %if.end57
  br label %sw.epilog91, !dbg !1046

sw.epilog91:                                      ; preds = %if.end90, %if.then41, %if.then37, %sw.epilog
  %82 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1047
  %tobool92 = icmp ne %union.acpi_parse_object* %82, null, !dbg !1047
  br i1 %tobool92, label %if.end99, label %if.then93, !dbg !1049

if.then93:                                        ; preds = %sw.epilog91
  %83 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1050
  %opcode94 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %83, i32 0, i32 3, !dbg !1052
  %84 = load i16, i16* %opcode94, align 2, !dbg !1052
  %85 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1053
  %aml = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %85, i32 0, i32 16, !dbg !1054
  %86 = load i8*, i8** %aml, align 8, !dbg !1054
  %call95 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext %84, i8* %86) #3, !dbg !1055
  store %union.acpi_parse_object* %call95, %union.acpi_parse_object** %op, align 8, !dbg !1056
  %87 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1057
  %tobool96 = icmp ne %union.acpi_parse_object* %87, null, !dbg !1057
  br i1 %tobool96, label %if.end98, label %if.then97, !dbg !1059

if.then97:                                        ; preds = %if.then93
  store i32 4, i32* %retval, align 4, !dbg !1060
  br label %return, !dbg !1060

if.end98:                                         ; preds = %if.then93
  br label %if.end99, !dbg !1062

if.end99:                                         ; preds = %if.end98, %sw.epilog91
  %88 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1063
  %tobool100 = icmp ne %struct.acpi_namespace_node* %88, null, !dbg !1063
  br i1 %tobool100, label %if.then101, label %if.end105, !dbg !1065

if.then101:                                       ; preds = %if.end99
  %89 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1066
  %90 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1068
  %common102 = bitcast %union.acpi_parse_object* %90 to %struct.acpi_parse_obj_common*, !dbg !1069
  %node103 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common102, i32 0, i32 6, !dbg !1070
  store %struct.acpi_namespace_node* %89, %struct.acpi_namespace_node** %node103, align 8, !dbg !1071
  %91 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1072
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %91, i32 0, i32 4, !dbg !1073
  %integer = bitcast %union.acpi_name_union* %name to i32*, !dbg !1074
  %92 = load i32, i32* %integer, align 4, !dbg !1074
  %93 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1075
  %named = bitcast %union.acpi_parse_object* %93 to %struct.acpi_parse_obj_named*, !dbg !1076
  %name104 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 12, !dbg !1077
  store i32 %92, i32* %name104, align 4, !dbg !1078
  br label %if.end105, !dbg !1079

if.end105:                                        ; preds = %if.then101, %if.end99
  %94 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1080
  %parser_state106 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %94, i32 0, i32 21, !dbg !1081
  %call107 = call %union.acpi_parse_object* @acpi_ps_get_parent_scope(%struct.acpi_parse_state* %parser_state106) #3, !dbg !1082
  %95 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1083
  call void @acpi_ps_append_arg(%union.acpi_parse_object* %call107, %union.acpi_parse_object* %95) #3, !dbg !1084
  %96 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1085
  %97 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %out_op.addr, align 8, !dbg !1086
  store %union.acpi_parse_object* %96, %union.acpi_parse_object** %97, align 8, !dbg !1087
  %98 = load i32, i32* %status, align 4, !dbg !1088
  store i32 %98, i32* %retval, align 4, !dbg !1088
  br label %return, !dbg !1088

return:                                           ; preds = %if.end105, %if.then97, %if.then87, %if.then81, %sw.default, %if.then16, %if.then7, %if.then4
  %99 = load i32, i32* %retval, align 4, !dbg !1089
  ret i32 %99, !dbg !1089
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_load1_end_op(%struct.acpi_walk_state* %walk_state) #0 !dbg !1090 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op = alloca %union.acpi_parse_object*, align 8
  %object_type = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1091, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op, metadata !1093, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.declare(metadata i32* %object_type, metadata !1095, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1097, metadata !DIExpression()), !dbg !1098
  store i32 0, i32* %status, align 4, !dbg !1098
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1099
  %op1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 40, !dbg !1100
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op1, align 8, !dbg !1100
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %op, align 8, !dbg !1101
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1102
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 20, !dbg !1104
  %3 = load i32, i32* %parse_flags, align 4, !dbg !1104
  %and = and i32 %3, 512, !dbg !1105
  %tobool = icmp ne i32 %and, 0, !dbg !1105
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1106

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1107
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 41, !dbg !1108
  %5 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1108
  %flags = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %5, i32 0, i32 2, !dbg !1109
  %6 = load i16, i16* %flags, align 4, !dbg !1109
  %conv = zext i16 %6 to i32, !dbg !1107
  %and2 = and i32 %conv, 8, !dbg !1110
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1110
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1111

if.then:                                          ; preds = %land.lhs.true
  %7 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1112
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1114
  %call = call i32 @acpi_ds_create_buffer_field(%union.acpi_parse_object* %7, %struct.acpi_walk_state* %8) #3, !dbg !1115
  store i32 %call, i32* %status, align 4, !dbg !1116
  %9 = load i32, i32* %status, align 4, !dbg !1117
  store i32 %9, i32* %retval, align 4, !dbg !1117
  br label %return, !dbg !1117

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1118
  %op_info4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 41, !dbg !1120
  %11 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info4, align 8, !dbg !1120
  %flags5 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %11, i32 0, i32 2, !dbg !1121
  %12 = load i16, i16* %flags5, align 4, !dbg !1121
  %conv6 = zext i16 %12 to i32, !dbg !1118
  %and7 = and i32 %conv6, 80, !dbg !1122
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1122
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1123

if.then9:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1124
  br label %return, !dbg !1124

if.end10:                                         ; preds = %if.end
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1126
  %op_info11 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 41, !dbg !1127
  %14 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info11, align 8, !dbg !1127
  %object_type12 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %14, i32 0, i32 3, !dbg !1128
  %15 = load i8, i8* %object_type12, align 2, !dbg !1128
  %conv13 = zext i8 %15 to i32, !dbg !1126
  store i32 %conv13, i32* %object_type, align 4, !dbg !1129
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1130
  %op_info14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 41, !dbg !1132
  %17 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info14, align 8, !dbg !1132
  %flags15 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %17, i32 0, i32 2, !dbg !1133
  %18 = load i16, i16* %flags15, align 4, !dbg !1133
  %conv16 = zext i16 %18 to i32, !dbg !1130
  %and17 = and i32 %conv16, 16, !dbg !1134
  %tobool18 = icmp ne i32 %and17, 0, !dbg !1134
  br i1 %tobool18, label %if.then19, label %if.end37, !dbg !1135

if.then19:                                        ; preds = %if.end10
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1136
  %method_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 38, !dbg !1139
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !1139
  %tobool20 = icmp ne %struct.acpi_namespace_node* %20, null, !dbg !1136
  br i1 %tobool20, label %if.end36, label %if.then21, !dbg !1140

if.then21:                                        ; preds = %if.then19
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1141
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %21, i32 0, i32 3, !dbg !1144
  %22 = load i16, i16* %opcode, align 2, !dbg !1144
  %conv22 = zext i16 %22 to i32, !dbg !1141
  %cmp = icmp eq i32 %conv22, 23425, !dbg !1145
  br i1 %cmp, label %if.then33, label %lor.lhs.false, !dbg !1146

lor.lhs.false:                                    ; preds = %if.then21
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1147
  %opcode24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 3, !dbg !1148
  %24 = load i16, i16* %opcode24, align 2, !dbg !1148
  %conv25 = zext i16 %24 to i32, !dbg !1147
  %cmp26 = icmp eq i32 %conv25, 23431, !dbg !1149
  br i1 %cmp26, label %if.then33, label %lor.lhs.false28, !dbg !1150

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1151
  %opcode29 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %25, i32 0, i32 3, !dbg !1152
  %26 = load i16, i16* %opcode29, align 2, !dbg !1152
  %conv30 = zext i16 %26 to i32, !dbg !1151
  %cmp31 = icmp eq i32 %conv30, 23430, !dbg !1153
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !1154

if.then33:                                        ; preds = %lor.lhs.false28, %lor.lhs.false, %if.then21
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1155
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1157
  %call34 = call i32 @acpi_ds_init_field_objects(%union.acpi_parse_object* %27, %struct.acpi_walk_state* %28) #3, !dbg !1158
  store i32 %call34, i32* %status, align 4, !dbg !1159
  br label %if.end35, !dbg !1160

if.end35:                                         ; preds = %if.then33, %lor.lhs.false28
  br label %if.end36, !dbg !1161

if.end36:                                         ; preds = %if.end35, %if.then19
  %29 = load i32, i32* %status, align 4, !dbg !1162
  store i32 %29, i32* %retval, align 4, !dbg !1162
  br label %return, !dbg !1162

if.end37:                                         ; preds = %if.end10
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1163
  %method_node38 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 38, !dbg !1165
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node38, align 8, !dbg !1165
  %tobool39 = icmp ne %struct.acpi_namespace_node* %31, null, !dbg !1163
  br i1 %tobool39, label %if.end70, label %if.then40, !dbg !1166

if.then40:                                        ; preds = %if.end37
  %32 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1167
  %common = bitcast %union.acpi_parse_object* %32 to %struct.acpi_parse_obj_common*, !dbg !1170
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !1171
  %33 = load i16, i16* %aml_opcode, align 2, !dbg !1171
  %conv41 = zext i16 %33 to i32, !dbg !1167
  %cmp42 = icmp eq i32 %conv41, 23424, !dbg !1172
  br i1 %cmp42, label %if.then44, label %if.else, !dbg !1173

if.then44:                                        ; preds = %if.then40
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1174
  %named = bitcast %union.acpi_parse_object* %34 to %struct.acpi_parse_obj_named*, !dbg !1176
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 10, !dbg !1177
  %35 = load i8*, i8** %data, align 8, !dbg !1177
  %36 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1178
  %named45 = bitcast %union.acpi_parse_object* %36 to %struct.acpi_parse_obj_named*, !dbg !1179
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named45, i32 0, i32 11, !dbg !1180
  %37 = load i32, i32* %length, align 8, !dbg !1180
  %38 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1181
  %common46 = bitcast %union.acpi_parse_object* %38 to %struct.acpi_parse_obj_common*, !dbg !1182
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common46, i32 0, i32 7, !dbg !1183
  %arg = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !1184
  %39 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1184
  %common47 = bitcast %union.acpi_parse_object* %39 to %struct.acpi_parse_obj_common*, !dbg !1185
  %value48 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common47, i32 0, i32 7, !dbg !1186
  %integer = bitcast %union.acpi_parse_value* %value48 to i64*, !dbg !1187
  %40 = load i64, i64* %integer, align 8, !dbg !1187
  %conv49 = trunc i64 %40 to i8, !dbg !1188
  %41 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1189
  %call50 = call i32 @acpi_ex_create_region(i8* %35, i32 %37, i8 zeroext %conv49, %struct.acpi_walk_state* %41) #3, !dbg !1190
  store i32 %call50, i32* %status, align 4, !dbg !1191
  %42 = load i32, i32* %status, align 4, !dbg !1192
  %tobool51 = icmp ne i32 %42, 0, !dbg !1192
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !1194

if.then52:                                        ; preds = %if.then44
  %43 = load i32, i32* %status, align 4, !dbg !1195
  store i32 %43, i32* %retval, align 4, !dbg !1195
  br label %return, !dbg !1195

if.end53:                                         ; preds = %if.then44
  br label %if.end69, !dbg !1197

if.else:                                          ; preds = %if.then40
  %44 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1198
  %common54 = bitcast %union.acpi_parse_object* %44 to %struct.acpi_parse_obj_common*, !dbg !1200
  %aml_opcode55 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common54, i32 0, i32 3, !dbg !1201
  %45 = load i16, i16* %aml_opcode55, align 2, !dbg !1201
  %conv56 = zext i16 %45 to i32, !dbg !1198
  %cmp57 = icmp eq i32 %conv56, 23432, !dbg !1202
  br i1 %cmp57, label %if.then59, label %if.end68, !dbg !1203

if.then59:                                        ; preds = %if.else
  %46 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1204
  %named60 = bitcast %union.acpi_parse_object* %46 to %struct.acpi_parse_obj_named*, !dbg !1206
  %data61 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named60, i32 0, i32 10, !dbg !1207
  %47 = load i8*, i8** %data61, align 8, !dbg !1207
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1208
  %named62 = bitcast %union.acpi_parse_object* %48 to %struct.acpi_parse_obj_named*, !dbg !1209
  %length63 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named62, i32 0, i32 11, !dbg !1210
  %49 = load i32, i32* %length63, align 8, !dbg !1210
  %50 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1211
  %call64 = call i32 @acpi_ex_create_region(i8* %47, i32 %49, i8 zeroext 126, %struct.acpi_walk_state* %50) #3, !dbg !1212
  store i32 %call64, i32* %status, align 4, !dbg !1213
  %51 = load i32, i32* %status, align 4, !dbg !1214
  %tobool65 = icmp ne i32 %51, 0, !dbg !1214
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !1216

if.then66:                                        ; preds = %if.then59
  %52 = load i32, i32* %status, align 4, !dbg !1217
  store i32 %52, i32* %retval, align 4, !dbg !1217
  br label %return, !dbg !1217

if.end67:                                         ; preds = %if.then59
  br label %if.end68, !dbg !1219

if.end68:                                         ; preds = %if.end67, %if.else
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end53
  br label %if.end70, !dbg !1220

if.end70:                                         ; preds = %if.end69, %if.end37
  %53 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1221
  %common71 = bitcast %union.acpi_parse_object* %53 to %struct.acpi_parse_obj_common*, !dbg !1223
  %aml_opcode72 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common71, i32 0, i32 3, !dbg !1224
  %54 = load i16, i16* %aml_opcode72, align 2, !dbg !1224
  %conv73 = zext i16 %54 to i32, !dbg !1221
  %cmp74 = icmp eq i32 %conv73, 8, !dbg !1225
  br i1 %cmp74, label %if.then76, label %if.end98, !dbg !1226

if.then76:                                        ; preds = %if.end70
  %55 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1227
  %common77 = bitcast %union.acpi_parse_object* %55 to %struct.acpi_parse_obj_common*, !dbg !1230
  %value78 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common77, i32 0, i32 7, !dbg !1231
  %arg79 = bitcast %union.acpi_parse_value* %value78 to %union.acpi_parse_object**, !dbg !1232
  %56 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg79, align 8, !dbg !1232
  %tobool80 = icmp ne %union.acpi_parse_object* %56, null, !dbg !1227
  br i1 %tobool80, label %if.then81, label %if.end97, !dbg !1233

if.then81:                                        ; preds = %if.then76
  %57 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1234
  %common82 = bitcast %union.acpi_parse_object* %57 to %struct.acpi_parse_obj_common*, !dbg !1236
  %value83 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common82, i32 0, i32 7, !dbg !1237
  %arg84 = bitcast %union.acpi_parse_value* %value83 to %union.acpi_parse_object**, !dbg !1238
  %58 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg84, align 8, !dbg !1238
  %common85 = bitcast %union.acpi_parse_object* %58 to %struct.acpi_parse_obj_common*, !dbg !1239
  %aml_opcode86 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common85, i32 0, i32 3, !dbg !1240
  %59 = load i16, i16* %aml_opcode86, align 2, !dbg !1240
  %call87 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %59) #3, !dbg !1241
  %object_type88 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %call87, i32 0, i32 3, !dbg !1242
  %60 = load i8, i8* %object_type88, align 2, !dbg !1242
  %conv89 = zext i8 %60 to i32, !dbg !1243
  store i32 %conv89, i32* %object_type, align 4, !dbg !1244
  %61 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1245
  %common90 = bitcast %union.acpi_parse_object* %61 to %struct.acpi_parse_obj_common*, !dbg !1247
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common90, i32 0, i32 6, !dbg !1248
  %62 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1248
  %tobool91 = icmp ne %struct.acpi_namespace_node* %62, null, !dbg !1245
  br i1 %tobool91, label %if.then92, label %if.end96, !dbg !1249

if.then92:                                        ; preds = %if.then81
  %63 = load i32, i32* %object_type, align 4, !dbg !1250
  %conv93 = trunc i32 %63 to i8, !dbg !1252
  %64 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1253
  %common94 = bitcast %union.acpi_parse_object* %64 to %struct.acpi_parse_obj_common*, !dbg !1254
  %node95 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common94, i32 0, i32 6, !dbg !1255
  %65 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node95, align 8, !dbg !1255
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %65, i32 0, i32 2, !dbg !1256
  store i8 %conv93, i8* %type, align 1, !dbg !1257
  br label %if.end96, !dbg !1258

if.end96:                                         ; preds = %if.then92, %if.then81
  br label %if.end97, !dbg !1259

if.end97:                                         ; preds = %if.end96, %if.then76
  br label %if.end98, !dbg !1260

if.end98:                                         ; preds = %if.end97, %if.end70
  %66 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1261
  %method_node99 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %66, i32 0, i32 38, !dbg !1263
  %67 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node99, align 8, !dbg !1263
  %tobool100 = icmp ne %struct.acpi_namespace_node* %67, null, !dbg !1261
  br i1 %tobool100, label %if.end135, label %if.then101, !dbg !1264

if.then101:                                       ; preds = %if.end98
  %68 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1265
  %common102 = bitcast %union.acpi_parse_object* %68 to %struct.acpi_parse_obj_common*, !dbg !1268
  %aml_opcode103 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common102, i32 0, i32 3, !dbg !1269
  %69 = load i16, i16* %aml_opcode103, align 2, !dbg !1269
  %conv104 = zext i16 %69 to i32, !dbg !1265
  %cmp105 = icmp eq i32 %conv104, 20, !dbg !1270
  br i1 %cmp105, label %if.then107, label %if.end134, !dbg !1271

if.then107:                                       ; preds = %if.then101
  %70 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1272
  %named108 = bitcast %union.acpi_parse_object* %70 to %struct.acpi_parse_obj_named*, !dbg !1275
  %node109 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named108, i32 0, i32 6, !dbg !1276
  %71 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node109, align 8, !dbg !1276
  %call110 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %71) #3, !dbg !1277
  %tobool111 = icmp ne %union.acpi_operand_object* %call110, null, !dbg !1277
  br i1 %tobool111, label %if.end133, label %if.then112, !dbg !1278

if.then112:                                       ; preds = %if.then107
  %72 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1279
  %named113 = bitcast %union.acpi_parse_object* %72 to %struct.acpi_parse_obj_named*, !dbg !1279
  %node114 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named113, i32 0, i32 6, !dbg !1279
  %73 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node114, align 8, !dbg !1279
  %74 = bitcast %struct.acpi_namespace_node* %73 to i8*, !dbg !1279
  %75 = bitcast i8* %74 to %union.acpi_operand_object*, !dbg !1279
  %76 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1281
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %76, i32 0, i32 28, !dbg !1282
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !1281
  store %union.acpi_operand_object* %75, %union.acpi_operand_object** %arrayidx, align 8, !dbg !1283
  %77 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1284
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %77, i32 0, i32 5, !dbg !1285
  store i8 1, i8* %num_operands, align 1, !dbg !1286
  %78 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1287
  %79 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1288
  %common115 = bitcast %union.acpi_parse_object* %79 to %struct.acpi_parse_obj_common*, !dbg !1289
  %value116 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common115, i32 0, i32 7, !dbg !1290
  %arg117 = bitcast %union.acpi_parse_value* %value116 to %union.acpi_parse_object**, !dbg !1291
  %80 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg117, align 8, !dbg !1291
  %call118 = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %78, %union.acpi_parse_object* %80) #3, !dbg !1292
  store i32 %call118, i32* %status, align 4, !dbg !1293
  %81 = load i32, i32* %status, align 4, !dbg !1294
  %tobool119 = icmp ne i32 %81, 0, !dbg !1294
  br i1 %tobool119, label %if.end126, label %if.then120, !dbg !1296

if.then120:                                       ; preds = %if.then112
  %82 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1297
  %named121 = bitcast %union.acpi_parse_object* %82 to %struct.acpi_parse_obj_named*, !dbg !1299
  %data122 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named121, i32 0, i32 10, !dbg !1300
  %83 = load i8*, i8** %data122, align 8, !dbg !1300
  %84 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1301
  %named123 = bitcast %union.acpi_parse_object* %84 to %struct.acpi_parse_obj_named*, !dbg !1302
  %length124 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named123, i32 0, i32 11, !dbg !1303
  %85 = load i32, i32* %length124, align 8, !dbg !1303
  %86 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1304
  %call125 = call i32 @acpi_ex_create_method(i8* %83, i32 %85, %struct.acpi_walk_state* %86) #3, !dbg !1305
  store i32 %call125, i32* %status, align 4, !dbg !1306
  br label %if.end126, !dbg !1307

if.end126:                                        ; preds = %if.then120, %if.then112
  %87 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1308
  %operands127 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %87, i32 0, i32 28, !dbg !1309
  %arrayidx128 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands127, i64 0, i64 0, !dbg !1308
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx128, align 8, !dbg !1310
  %88 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1311
  %num_operands129 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %88, i32 0, i32 5, !dbg !1312
  store i8 0, i8* %num_operands129, align 1, !dbg !1313
  %89 = load i32, i32* %status, align 4, !dbg !1314
  %tobool130 = icmp ne i32 %89, 0, !dbg !1314
  br i1 %tobool130, label %if.then131, label %if.end132, !dbg !1316

if.then131:                                       ; preds = %if.end126
  %90 = load i32, i32* %status, align 4, !dbg !1317
  store i32 %90, i32* %retval, align 4, !dbg !1317
  br label %return, !dbg !1317

if.end132:                                        ; preds = %if.end126
  br label %if.end133, !dbg !1319

if.end133:                                        ; preds = %if.end132, %if.then107
  br label %if.end134, !dbg !1320

if.end134:                                        ; preds = %if.end133, %if.then101
  br label %if.end135, !dbg !1321

if.end135:                                        ; preds = %if.end134, %if.end98
  %91 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1322
  %method_node136 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %91, i32 0, i32 38, !dbg !1324
  %92 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node136, align 8, !dbg !1324
  %tobool137 = icmp ne %struct.acpi_namespace_node* %92, null, !dbg !1322
  br i1 %tobool137, label %if.end149, label %land.lhs.true138, !dbg !1325

land.lhs.true138:                                 ; preds = %if.end135
  %93 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1326
  %common139 = bitcast %union.acpi_parse_object* %93 to %struct.acpi_parse_obj_common*, !dbg !1327
  %aml_opcode140 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common139, i32 0, i32 3, !dbg !1328
  %94 = load i16, i16* %aml_opcode140, align 2, !dbg !1328
  %conv141 = zext i16 %94 to i32, !dbg !1326
  %cmp142 = icmp ne i32 %conv141, 21, !dbg !1329
  br i1 %cmp142, label %land.lhs.true144, label %if.end149, !dbg !1330

land.lhs.true144:                                 ; preds = %land.lhs.true138
  %95 = load i32, i32* %object_type, align 4, !dbg !1331
  %call145 = call i32 @acpi_ns_opens_scope(i32 %95) #3, !dbg !1332
  %tobool146 = icmp ne i32 %call145, 0, !dbg !1332
  br i1 %tobool146, label %if.then147, label %if.end149, !dbg !1333

if.then147:                                       ; preds = %land.lhs.true144
  %96 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1334
  %call148 = call i32 @acpi_ds_scope_stack_pop(%struct.acpi_walk_state* %96) #3, !dbg !1336
  store i32 %call148, i32* %status, align 4, !dbg !1337
  br label %if.end149, !dbg !1338

if.end149:                                        ; preds = %if.then147, %land.lhs.true144, %land.lhs.true138, %if.end135
  %97 = load i32, i32* %status, align 4, !dbg !1339
  store i32 %97, i32* %retval, align 4, !dbg !1339
  br label %return, !dbg !1339

return:                                           ; preds = %if.end149, %if.then131, %if.then66, %if.then52, %if.end36, %if.then9, %if.then
  %98 = load i32, i32* %retval, align 4, !dbg !1340
  ret i32 %98, !dbg !1340
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_load2_begin_op(%struct.acpi_walk_state*, %union.acpi_parse_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_load2_end_op(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_exec_begin_op(%struct.acpi_walk_state*, %union.acpi_parse_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_exec_end_op(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ps_get_next_namestring(%struct.acpi_parse_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_lookup(%union.acpi_generic_state*, i8*, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_prefixed_namespace_error(i8*, i32, %union.acpi_generic_state*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_node_name(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_opens_scope(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node*, i32, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext, i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_append_arg(%union.acpi_parse_object*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_parse_object* @acpi_ps_get_parent_scope(%struct.acpi_parse_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_create_buffer_field(%union.acpi_parse_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_init_field_objects(%union.acpi_parse_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_create_region(i8*, i32, i8 zeroext, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_create_operands(%struct.acpi_walk_state*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_create_method(i8*, i32, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_scope_stack_pop(%struct.acpi_walk_state*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 22, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dswload.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3, isUnsigned: true)
!12 = !{!13, !19, !22, !25, !26}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !14, line: 421, baseType: !15)
!14 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 21, baseType: !17)
!16 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !18, line: 27, baseType: !7)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !16, line: 19, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !18, line: 24, baseType: !21)
!21 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !16, line: 17, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !14, line: 805, baseType: !22)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !{!0}
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !31)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !{!32}
!32 = !DISubrange(count: 8)
!33 = !{i32 7, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"Code Model", i32 2}
!37 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!38 = distinct !DISubprogram(name: "acpi_ds_init_callbacks", scope: !3, file: !3, line: 37, type: !39, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !798)
!39 = !DISubroutineType(types: !40)
!40 = !{!13, !41, !15}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !43, line: 37, size: 9024, elements: !44)
!43 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !58, !59, !60, !61, !62, !64, !65, !66, !67, !68, !745, !746, !747, !748, !749, !753, !755, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !782, !783, !784, !785, !786, !787, !788, !789, !790, !796}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !42, file: !43, line: 38, baseType: !41, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !42, file: !43, line: 39, baseType: !22, size: 8, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !42, file: !43, line: 40, baseType: !22, size: 8, offset: 72)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !42, file: !43, line: 41, baseType: !19, size: 16, offset: 80)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !42, file: !43, line: 42, baseType: !22, size: 8, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !42, file: !43, line: 43, baseType: !22, size: 8, offset: 104)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !42, file: !43, line: 44, baseType: !22, size: 8, offset: 112)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !42, file: !43, line: 45, baseType: !53, size: 16, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !14, line: 445, baseType: !19)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !42, file: !43, line: 46, baseType: !22, size: 8, offset: 144)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !42, file: !43, line: 47, baseType: !22, size: 8, offset: 152)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !42, file: !43, line: 48, baseType: !22, size: 8, offset: 160)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !42, file: !43, line: 49, baseType: !22, size: 8, offset: 168)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !42, file: !43, line: 50, baseType: !22, size: 8, offset: 176)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !42, file: !43, line: 51, baseType: !22, size: 8, offset: 184)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !42, file: !43, line: 52, baseType: !22, size: 8, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !42, file: !43, line: 53, baseType: !22, size: 8, offset: 200)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !42, file: !43, line: 54, baseType: !63, size: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !42, file: !43, line: 55, baseType: !15, size: 32, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !42, file: !43, line: 56, baseType: !15, size: 32, offset: 352)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !42, file: !43, line: 57, baseType: !15, size: 32, offset: 384)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !42, file: !43, line: 58, baseType: !15, size: 32, offset: 416)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !42, file: !43, line: 60, baseType: !69, size: 640, offset: 448)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !644, !645, !743, !744}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !69, file: !6, line: 894, baseType: !63, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !69, file: !6, line: 895, baseType: !63, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !69, file: !6, line: 896, baseType: !63, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !69, file: !6, line: 897, baseType: !63, size: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !69, file: !6, line: 898, baseType: !63, size: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !69, file: !6, line: 899, baseType: !77, size: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !79)
!79 = !{!80, !587, !603}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !78, file: !6, line: 876, baseType: !81, size: 448)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !577, !586}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !81, file: !6, line: 829, baseType: !77, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !81, file: !6, line: 829, baseType: !22, size: 8, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !6, line: 829, baseType: !22, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !81, file: !6, line: 829, baseType: !19, size: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !81, file: !6, line: 829, baseType: !63, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !81, file: !6, line: 829, baseType: !77, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !81, file: !6, line: 829, baseType: !90, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !92)
!92 = !{!93, !561, !562, !563, !564, !573, !574, !575, !576}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !91, file: !6, line: 134, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !96, line: 367, size: 576, elements: !97)
!96 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!97 = !{!98, !106, !122, !133, !146, !160, !169, !195, !224, !239, !252, !331, !343, !357, !367, !385, !407, !426, !445, !464, !481, !507, !524, !537, !551, !560}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !95, file: !96, line: 368, baseType: !99, size: 128)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !96, line: 73, size: 128, elements: !100)
!100 = !{!101, !102, !103, !104, !105}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !99, file: !96, line: 74, baseType: !94, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !99, file: !96, line: 74, baseType: !22, size: 8, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !96, line: 74, baseType: !22, size: 8, offset: 72)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !99, file: !96, line: 74, baseType: !19, size: 16, offset: 80)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !96, line: 74, baseType: !22, size: 8, offset: 96)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !95, file: !96, line: 369, baseType: !107, size: 192)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !96, line: 76, size: 192, elements: !108)
!108 = !{!109, !110, !111, !112, !113, !114, !118}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !107, file: !96, line: 77, baseType: !94, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !107, file: !96, line: 77, baseType: !22, size: 8, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !96, line: 77, baseType: !22, size: 8, offset: 72)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !107, file: !96, line: 77, baseType: !19, size: 16, offset: 80)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !96, line: 77, baseType: !22, size: 8, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !107, file: !96, line: 77, baseType: !115, size: 24, offset: 104)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 24, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 3)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !107, file: !96, line: 78, baseType: !119, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !16, line: 23, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !18, line: 31, baseType: !121)
!121 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !95, file: !96, line: 370, baseType: !123, size: 256)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !96, line: 93, size: 256, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !132}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !96, line: 94, baseType: !94, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !96, line: 94, baseType: !22, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !96, line: 94, baseType: !22, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !96, line: 94, baseType: !19, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !96, line: 94, baseType: !22, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !123, file: !96, line: 94, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !123, file: !96, line: 94, baseType: !15, size: 32, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !95, file: !96, line: 371, baseType: !134, size: 384)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !96, line: 97, size: 384, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !134, file: !96, line: 98, baseType: !94, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !96, line: 98, baseType: !22, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !96, line: 98, baseType: !22, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !134, file: !96, line: 98, baseType: !19, size: 16, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !96, line: 98, baseType: !22, size: 8, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !134, file: !96, line: 98, baseType: !63, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !134, file: !96, line: 98, baseType: !15, size: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !134, file: !96, line: 99, baseType: !15, size: 32, offset: 224)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !134, file: !96, line: 100, baseType: !63, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !134, file: !96, line: 101, baseType: !90, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !95, file: !96, line: 372, baseType: !147, size: 384)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !96, line: 104, size: 384, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !157, !158, !159}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !147, file: !96, line: 105, baseType: !94, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !96, line: 105, baseType: !22, size: 8, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !96, line: 105, baseType: !22, size: 8, offset: 72)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !147, file: !96, line: 105, baseType: !19, size: 16, offset: 80)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !96, line: 105, baseType: !22, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !147, file: !96, line: 105, baseType: !90, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !147, file: !96, line: 106, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !147, file: !96, line: 107, baseType: !63, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !147, file: !96, line: 108, baseType: !15, size: 32, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !147, file: !96, line: 109, baseType: !15, size: 32, offset: 352)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !95, file: !96, line: 373, baseType: !161, size: 192)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !96, line: 118, size: 192, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !161, file: !96, line: 119, baseType: !94, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !161, file: !96, line: 119, baseType: !22, size: 8, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !161, file: !96, line: 119, baseType: !22, size: 8, offset: 72)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !161, file: !96, line: 119, baseType: !19, size: 16, offset: 80)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !96, line: 119, baseType: !22, size: 8, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !161, file: !96, line: 119, baseType: !26, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !95, file: !96, line: 374, baseType: !170, size: 448)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !96, line: 143, size: 448, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !192, !193, !194}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !170, file: !96, line: 144, baseType: !94, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !170, file: !96, line: 144, baseType: !22, size: 8, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !96, line: 144, baseType: !22, size: 8, offset: 72)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !170, file: !96, line: 144, baseType: !19, size: 16, offset: 80)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !170, file: !96, line: 144, baseType: !22, size: 8, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !170, file: !96, line: 144, baseType: !22, size: 8, offset: 104)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !170, file: !96, line: 145, baseType: !22, size: 8, offset: 112)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !170, file: !96, line: 146, baseType: !22, size: 8, offset: 120)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !170, file: !96, line: 147, baseType: !94, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !170, file: !96, line: 148, baseType: !94, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !170, file: !96, line: 149, baseType: !63, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !170, file: !96, line: 153, baseType: !184, size: 64, offset: 320)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !96, line: 150, size: 64, elements: !185)
!185 = !{!186, !191}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !184, file: !96, line: 151, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!13, !41}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !184, file: !96, line: 152, baseType: !94, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !170, file: !96, line: 155, baseType: !15, size: 32, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !170, file: !96, line: 156, baseType: !53, size: 16, offset: 416)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !170, file: !96, line: 157, baseType: !22, size: 8, offset: 432)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !95, file: !96, line: 375, baseType: !196, size: 576)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !96, line: 122, size: 576, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !220, !221, !222, !223}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !196, file: !96, line: 123, baseType: !94, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !196, file: !96, line: 123, baseType: !22, size: 8, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !196, file: !96, line: 123, baseType: !22, size: 8, offset: 72)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !196, file: !96, line: 123, baseType: !19, size: 16, offset: 80)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !96, line: 123, baseType: !22, size: 8, offset: 96)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !196, file: !96, line: 123, baseType: !22, size: 8, offset: 104)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !196, file: !96, line: 124, baseType: !19, size: 16, offset: 112)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !196, file: !96, line: 125, baseType: !26, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !196, file: !96, line: 126, baseType: !119, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !196, file: !96, line: 127, baseType: !208, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !6, line: 621, baseType: !26, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !209, file: !6, line: 621, baseType: !22, size: 8, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !209, file: !6, line: 621, baseType: !22, size: 8, offset: 72)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !209, file: !6, line: 621, baseType: !19, size: 16, offset: 80)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !209, file: !6, line: 621, baseType: !19, size: 16, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !209, file: !6, line: 621, baseType: !22, size: 8, offset: 112)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !209, file: !6, line: 622, baseType: !41, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !209, file: !6, line: 623, baseType: !94, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !209, file: !6, line: 624, baseType: !119, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !196, file: !96, line: 128, baseType: !94, size: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !96, line: 129, baseType: !94, size: 64, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !196, file: !96, line: 130, baseType: !90, size: 64, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !196, file: !96, line: 131, baseType: !22, size: 8, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !95, file: !96, line: 376, baseType: !225, size: 448)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !96, line: 134, size: 448, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !238}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !225, file: !96, line: 135, baseType: !94, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !225, file: !96, line: 135, baseType: !22, size: 8, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !225, file: !96, line: 135, baseType: !22, size: 8, offset: 72)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !225, file: !96, line: 135, baseType: !19, size: 16, offset: 80)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !96, line: 135, baseType: !22, size: 8, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !225, file: !96, line: 135, baseType: !22, size: 8, offset: 104)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !225, file: !96, line: 136, baseType: !90, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !225, file: !96, line: 137, baseType: !94, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !96, line: 138, baseType: !94, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !225, file: !96, line: 139, baseType: !237, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !14, line: 129, baseType: !119)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !225, file: !96, line: 140, baseType: !15, size: 32, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !95, file: !96, line: 377, baseType: !240, size: 320)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !96, line: 184, size: 320, elements: !241)
!241 = !{!242, !243, !244, !245, !246, !247, !251}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !240, file: !96, line: 185, baseType: !94, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !240, file: !96, line: 185, baseType: !22, size: 8, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !240, file: !96, line: 185, baseType: !22, size: 8, offset: 72)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !240, file: !96, line: 185, baseType: !19, size: 16, offset: 80)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !240, file: !96, line: 185, baseType: !22, size: 8, offset: 96)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !240, file: !96, line: 185, baseType: !248, size: 128, offset: 128)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 2)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !240, file: !96, line: 185, baseType: !94, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !95, file: !96, line: 378, baseType: !253, size: 384)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !96, line: 187, size: 384, elements: !254)
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !253, file: !96, line: 188, baseType: !94, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !253, file: !96, line: 188, baseType: !22, size: 8, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !253, file: !96, line: 188, baseType: !22, size: 8, offset: 72)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !253, file: !96, line: 188, baseType: !19, size: 16, offset: 80)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !253, file: !96, line: 188, baseType: !22, size: 8, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !253, file: !96, line: 189, baseType: !248, size: 128, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !253, file: !96, line: 189, baseType: !94, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !253, file: !96, line: 189, baseType: !263, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !265)
!265 = !{!266, !267, !268, !269, !277, !292, !325, !326, !327, !328, !329, !330}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !264, file: !6, line: 481, baseType: !90, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !264, file: !6, line: 482, baseType: !263, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !6, line: 483, baseType: !263, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !264, file: !6, line: 484, baseType: !270, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !272)
!272 = !{!273, !274, !275, !276}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !271, file: !6, line: 498, baseType: !270, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !6, line: 499, baseType: !270, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !271, file: !6, line: 500, baseType: !263, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !271, file: !6, line: 501, baseType: !15, size: 32, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !264, file: !6, line: 485, baseType: !278, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !280)
!280 = !{!281, !286, !287, !288, !289, !290, !291}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !279, file: !6, line: 467, baseType: !282, size: 128)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !283)
!283 = !{!284, !285}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !282, file: !6, line: 460, baseType: !22, size: 8)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !282, file: !6, line: 461, baseType: !119, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !279, file: !6, line: 468, baseType: !282, size: 128, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !279, file: !6, line: 469, baseType: !19, size: 16, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !279, file: !6, line: 470, baseType: !22, size: 8, offset: 272)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !279, file: !6, line: 471, baseType: !22, size: 8, offset: 280)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !279, file: !6, line: 472, baseType: !22, size: 8, offset: 288)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !279, file: !6, line: 473, baseType: !22, size: 8, offset: 296)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !264, file: !6, line: 486, baseType: !293, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !295)
!295 = !{!296, !320, !321, !322, !323, !324}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !294, file: !6, line: 449, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !298)
!298 = !{!299, !300, !314}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !297, file: !6, line: 439, baseType: !90, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !297, file: !6, line: 440, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !303)
!303 = !{!304, !310, !311, !312, !313}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !302, file: !6, line: 420, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !14, line: 1049, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!15, !309, !15, !26}
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !14, line: 424, baseType: !26)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !302, file: !6, line: 421, baseType: !26, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !302, file: !6, line: 422, baseType: !90, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !302, file: !6, line: 423, baseType: !22, size: 8, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !302, file: !6, line: 424, baseType: !22, size: 8, offset: 200)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !297, file: !6, line: 441, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !316, file: !6, line: 430, baseType: !90, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !6, line: 431, baseType: !315, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !294, file: !6, line: 450, baseType: !278, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !6, line: 451, baseType: !22, size: 8, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !294, file: !6, line: 452, baseType: !22, size: 8, offset: 136)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !294, file: !6, line: 453, baseType: !22, size: 8, offset: 144)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !294, file: !6, line: 454, baseType: !22, size: 8, offset: 152)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !264, file: !6, line: 487, baseType: !119, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !264, file: !6, line: 488, baseType: !15, size: 32, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !264, file: !6, line: 489, baseType: !19, size: 16, offset: 480)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !264, file: !6, line: 490, baseType: !19, size: 16, offset: 496)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !264, file: !6, line: 491, baseType: !22, size: 8, offset: 512)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !264, file: !6, line: 492, baseType: !22, size: 8, offset: 520)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !95, file: !96, line: 379, baseType: !332, size: 384)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !96, line: 192, size: 384, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !332, file: !96, line: 193, baseType: !94, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !96, line: 193, baseType: !22, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !332, file: !96, line: 193, baseType: !22, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !332, file: !96, line: 193, baseType: !19, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !96, line: 193, baseType: !22, size: 8, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !332, file: !96, line: 193, baseType: !248, size: 128, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !332, file: !96, line: 193, baseType: !94, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !332, file: !96, line: 193, baseType: !15, size: 32, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !332, file: !96, line: 194, baseType: !15, size: 32, offset: 352)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !95, file: !96, line: 380, baseType: !344, size: 384)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !96, line: 197, size: 384, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !344, file: !96, line: 198, baseType: !94, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !344, file: !96, line: 198, baseType: !22, size: 8, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !344, file: !96, line: 198, baseType: !22, size: 8, offset: 72)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !344, file: !96, line: 198, baseType: !19, size: 16, offset: 80)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !96, line: 198, baseType: !22, size: 8, offset: 96)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !344, file: !96, line: 200, baseType: !22, size: 8, offset: 104)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !344, file: !96, line: 201, baseType: !22, size: 8, offset: 112)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !344, file: !96, line: 202, baseType: !248, size: 128, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !344, file: !96, line: 202, baseType: !94, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !344, file: !96, line: 202, baseType: !356, size: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !14, line: 128, baseType: !119)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !95, file: !96, line: 381, baseType: !358, size: 320)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !96, line: 205, size: 320, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !358, file: !96, line: 206, baseType: !94, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !96, line: 206, baseType: !22, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !358, file: !96, line: 206, baseType: !22, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !358, file: !96, line: 206, baseType: !19, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !96, line: 206, baseType: !22, size: 8, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !358, file: !96, line: 206, baseType: !248, size: 128, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !358, file: !96, line: 206, baseType: !94, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !95, file: !96, line: 382, baseType: !368, size: 384)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !96, line: 233, size: 384, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !368, file: !96, line: 234, baseType: !94, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !368, file: !96, line: 234, baseType: !22, size: 8, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !368, file: !96, line: 234, baseType: !22, size: 8, offset: 72)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !368, file: !96, line: 234, baseType: !19, size: 16, offset: 80)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !96, line: 234, baseType: !22, size: 8, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !368, file: !96, line: 234, baseType: !22, size: 8, offset: 104)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !368, file: !96, line: 234, baseType: !22, size: 8, offset: 112)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !368, file: !96, line: 234, baseType: !22, size: 8, offset: 120)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !368, file: !96, line: 234, baseType: !90, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !368, file: !96, line: 234, baseType: !15, size: 32, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !368, file: !96, line: 234, baseType: !15, size: 32, offset: 224)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !368, file: !96, line: 234, baseType: !15, size: 32, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !368, file: !96, line: 234, baseType: !22, size: 8, offset: 288)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !368, file: !96, line: 234, baseType: !22, size: 8, offset: 296)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !368, file: !96, line: 234, baseType: !94, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !95, file: !96, line: 383, baseType: !386, size: 576)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !96, line: 237, size: 576, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !386, file: !96, line: 238, baseType: !94, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !386, file: !96, line: 238, baseType: !22, size: 8, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !386, file: !96, line: 238, baseType: !22, size: 8, offset: 72)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !386, file: !96, line: 238, baseType: !19, size: 16, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !96, line: 238, baseType: !22, size: 8, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !386, file: !96, line: 238, baseType: !22, size: 8, offset: 104)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !386, file: !96, line: 238, baseType: !22, size: 8, offset: 112)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !386, file: !96, line: 238, baseType: !22, size: 8, offset: 120)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !386, file: !96, line: 238, baseType: !90, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !386, file: !96, line: 238, baseType: !15, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !386, file: !96, line: 238, baseType: !15, size: 32, offset: 224)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !386, file: !96, line: 238, baseType: !15, size: 32, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !386, file: !96, line: 238, baseType: !22, size: 8, offset: 288)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !386, file: !96, line: 238, baseType: !22, size: 8, offset: 296)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !386, file: !96, line: 238, baseType: !19, size: 16, offset: 304)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !386, file: !96, line: 239, baseType: !94, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !386, file: !96, line: 240, baseType: !63, size: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !386, file: !96, line: 241, baseType: !19, size: 16, offset: 448)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !386, file: !96, line: 242, baseType: !63, size: 64, offset: 512)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !95, file: !96, line: 384, baseType: !408, size: 384)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !96, line: 262, size: 384, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !408, file: !96, line: 263, baseType: !94, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !408, file: !96, line: 263, baseType: !22, size: 8, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !408, file: !96, line: 263, baseType: !22, size: 8, offset: 72)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !408, file: !96, line: 263, baseType: !19, size: 16, offset: 80)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !96, line: 263, baseType: !22, size: 8, offset: 96)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !408, file: !96, line: 263, baseType: !22, size: 8, offset: 104)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !408, file: !96, line: 263, baseType: !22, size: 8, offset: 112)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !408, file: !96, line: 263, baseType: !22, size: 8, offset: 120)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !408, file: !96, line: 263, baseType: !90, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !408, file: !96, line: 263, baseType: !15, size: 32, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !408, file: !96, line: 263, baseType: !15, size: 32, offset: 224)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !408, file: !96, line: 263, baseType: !15, size: 32, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !408, file: !96, line: 263, baseType: !22, size: 8, offset: 288)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !408, file: !96, line: 263, baseType: !22, size: 8, offset: 296)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !408, file: !96, line: 263, baseType: !22, size: 8, offset: 304)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !408, file: !96, line: 264, baseType: !94, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !95, file: !96, line: 385, baseType: !427, size: 448)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !96, line: 245, size: 448, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !427, file: !96, line: 246, baseType: !94, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !427, file: !96, line: 246, baseType: !22, size: 8, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !427, file: !96, line: 246, baseType: !22, size: 8, offset: 72)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !427, file: !96, line: 246, baseType: !19, size: 16, offset: 80)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !427, file: !96, line: 246, baseType: !22, size: 8, offset: 96)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !427, file: !96, line: 246, baseType: !22, size: 8, offset: 104)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !427, file: !96, line: 246, baseType: !22, size: 8, offset: 112)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !427, file: !96, line: 246, baseType: !22, size: 8, offset: 120)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !427, file: !96, line: 246, baseType: !90, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !427, file: !96, line: 246, baseType: !15, size: 32, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !427, file: !96, line: 246, baseType: !15, size: 32, offset: 224)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !427, file: !96, line: 246, baseType: !15, size: 32, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !427, file: !96, line: 246, baseType: !22, size: 8, offset: 288)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !427, file: !96, line: 246, baseType: !22, size: 8, offset: 296)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !427, file: !96, line: 246, baseType: !94, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !427, file: !96, line: 247, baseType: !94, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !95, file: !96, line: 386, baseType: !446, size: 448)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !96, line: 250, size: 448, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !446, file: !96, line: 251, baseType: !94, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !446, file: !96, line: 251, baseType: !22, size: 8, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !446, file: !96, line: 251, baseType: !22, size: 8, offset: 72)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !446, file: !96, line: 251, baseType: !19, size: 16, offset: 80)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !96, line: 251, baseType: !22, size: 8, offset: 96)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !446, file: !96, line: 251, baseType: !22, size: 8, offset: 104)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !446, file: !96, line: 251, baseType: !22, size: 8, offset: 112)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !446, file: !96, line: 251, baseType: !22, size: 8, offset: 120)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !446, file: !96, line: 251, baseType: !90, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !446, file: !96, line: 251, baseType: !15, size: 32, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !446, file: !96, line: 251, baseType: !15, size: 32, offset: 224)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !446, file: !96, line: 251, baseType: !15, size: 32, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !446, file: !96, line: 251, baseType: !22, size: 8, offset: 288)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !446, file: !96, line: 251, baseType: !22, size: 8, offset: 296)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !446, file: !96, line: 256, baseType: !94, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !446, file: !96, line: 257, baseType: !94, size: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !95, file: !96, line: 387, baseType: !465, size: 512)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !96, line: 273, size: 512, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474, !479, !480}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !465, file: !96, line: 274, baseType: !94, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !465, file: !96, line: 274, baseType: !22, size: 8, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !465, file: !96, line: 274, baseType: !22, size: 8, offset: 72)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !465, file: !96, line: 274, baseType: !19, size: 16, offset: 80)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !96, line: 274, baseType: !22, size: 8, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !465, file: !96, line: 274, baseType: !90, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !465, file: !96, line: 275, baseType: !15, size: 32, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !465, file: !96, line: 276, baseType: !475, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !14, line: 1052, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !309, !15, !26}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !465, file: !96, line: 277, baseType: !26, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !465, file: !96, line: 278, baseType: !248, size: 128, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !95, file: !96, line: 388, baseType: !482, size: 512)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !96, line: 281, size: 512, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !490, !491, !497, !498, !499, !505, !506}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !482, file: !96, line: 282, baseType: !94, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !482, file: !96, line: 282, baseType: !22, size: 8, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !482, file: !96, line: 282, baseType: !22, size: 8, offset: 72)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !482, file: !96, line: 282, baseType: !19, size: 16, offset: 80)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !96, line: 282, baseType: !22, size: 8, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !482, file: !96, line: 282, baseType: !22, size: 8, offset: 104)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !482, file: !96, line: 283, baseType: !22, size: 8, offset: 112)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !482, file: !96, line: 284, baseType: !492, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !14, line: 1084, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!13, !15, !237, !15, !496, !26, !26}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !482, file: !96, line: 285, baseType: !90, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !482, file: !96, line: 286, baseType: !26, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !482, file: !96, line: 287, baseType: !500, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !14, line: 1102, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!13, !309, !15, !26, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !482, file: !96, line: 288, baseType: !94, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !482, file: !96, line: 289, baseType: !94, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !95, file: !96, line: 389, baseType: !508, size: 512)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !96, line: 307, size: 512, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !508, file: !96, line: 308, baseType: !94, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !508, file: !96, line: 308, baseType: !22, size: 8, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !508, file: !96, line: 308, baseType: !22, size: 8, offset: 72)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !508, file: !96, line: 308, baseType: !19, size: 16, offset: 80)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !96, line: 308, baseType: !22, size: 8, offset: 96)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !508, file: !96, line: 308, baseType: !22, size: 8, offset: 104)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !508, file: !96, line: 309, baseType: !22, size: 8, offset: 112)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !508, file: !96, line: 310, baseType: !22, size: 8, offset: 120)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !508, file: !96, line: 311, baseType: !26, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !96, line: 312, baseType: !90, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !508, file: !96, line: 313, baseType: !156, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !508, file: !96, line: 314, baseType: !63, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !508, file: !96, line: 315, baseType: !63, size: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !508, file: !96, line: 316, baseType: !15, size: 32, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !95, file: !96, line: 390, baseType: !525, size: 448)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !96, line: 340, size: 448, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535, !536}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !525, file: !96, line: 341, baseType: !94, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !525, file: !96, line: 341, baseType: !22, size: 8, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !525, file: !96, line: 341, baseType: !22, size: 8, offset: 72)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !525, file: !96, line: 341, baseType: !19, size: 16, offset: 80)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !525, file: !96, line: 341, baseType: !22, size: 8, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !525, file: !96, line: 341, baseType: !90, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !525, file: !96, line: 342, baseType: !90, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !525, file: !96, line: 343, baseType: !26, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !525, file: !96, line: 344, baseType: !63, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !525, file: !96, line: 345, baseType: !15, size: 32, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !95, file: !96, line: 391, baseType: !538, size: 256)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !96, line: 350, size: 256, elements: !539)
!539 = !{!540, !541, !542, !543, !544, !545, !550}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !538, file: !96, line: 351, baseType: !94, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !538, file: !96, line: 351, baseType: !22, size: 8, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !538, file: !96, line: 351, baseType: !22, size: 8, offset: 72)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !538, file: !96, line: 351, baseType: !19, size: 16, offset: 80)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !96, line: 351, baseType: !22, size: 8, offset: 96)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !538, file: !96, line: 351, baseType: !546, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !14, line: 1055, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !309, !26}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !538, file: !96, line: 352, baseType: !26, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !95, file: !96, line: 392, baseType: !552, size: 192)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !96, line: 357, size: 192, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !552, file: !96, line: 358, baseType: !94, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !552, file: !96, line: 358, baseType: !22, size: 8, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !552, file: !96, line: 358, baseType: !22, size: 8, offset: 72)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !552, file: !96, line: 358, baseType: !19, size: 16, offset: 80)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !96, line: 358, baseType: !22, size: 8, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !552, file: !96, line: 358, baseType: !94, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !95, file: !96, line: 399, baseType: !91, size: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !91, file: !6, line: 135, baseType: !22, size: 8, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !6, line: 136, baseType: !22, size: 8, offset: 72)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !6, line: 137, baseType: !19, size: 16, offset: 80)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !6, line: 138, baseType: !565, size: 32, offset: 96)
!565 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !566, line: 327, size: 32, elements: !567)
!566 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !565, file: !566, line: 328, baseType: !15, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !565, file: !566, line: 329, baseType: !570, size: 32)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 4)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !91, file: !6, line: 139, baseType: !90, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !91, file: !6, line: 140, baseType: !90, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !91, file: !6, line: 141, baseType: !90, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !91, file: !6, line: 142, baseType: !53, size: 16, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !81, file: !6, line: 829, baseType: !578, size: 64, offset: 320)
!578 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !578, file: !6, line: 717, baseType: !119, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !578, file: !6, line: 718, baseType: !15, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !578, file: !6, line: 719, baseType: !131, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !578, file: !6, line: 720, baseType: !63, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !578, file: !6, line: 721, baseType: !131, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !578, file: !6, line: 722, baseType: !77, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !81, file: !6, line: 829, baseType: !22, size: 8, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !78, file: !6, line: 877, baseType: !588, size: 640)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !588, file: !6, line: 836, baseType: !77, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !6, line: 836, baseType: !22, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !6, line: 836, baseType: !22, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !588, file: !6, line: 836, baseType: !19, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !588, file: !6, line: 836, baseType: !63, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !588, file: !6, line: 836, baseType: !77, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !588, file: !6, line: 836, baseType: !90, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !588, file: !6, line: 836, baseType: !578, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !588, file: !6, line: 836, baseType: !22, size: 8, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !588, file: !6, line: 836, baseType: !131, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !588, file: !6, line: 837, baseType: !63, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !588, file: !6, line: 838, baseType: !15, size: 32, offset: 576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !588, file: !6, line: 839, baseType: !15, size: 32, offset: 608)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !78, file: !6, line: 878, baseType: !604, size: 1600)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !604, file: !6, line: 847, baseType: !77, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !604, file: !6, line: 847, baseType: !22, size: 8, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !6, line: 847, baseType: !22, size: 8, offset: 72)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !604, file: !6, line: 847, baseType: !19, size: 16, offset: 80)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !604, file: !6, line: 847, baseType: !63, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !604, file: !6, line: 847, baseType: !77, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !604, file: !6, line: 847, baseType: !90, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !604, file: !6, line: 847, baseType: !578, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !604, file: !6, line: 847, baseType: !22, size: 8, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !604, file: !6, line: 847, baseType: !77, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !604, file: !6, line: 848, baseType: !77, size: 64, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !604, file: !6, line: 849, baseType: !131, size: 64, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !604, file: !6, line: 850, baseType: !22, size: 8, offset: 640)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !604, file: !6, line: 851, baseType: !131, size: 64, offset: 704)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !604, file: !6, line: 852, baseType: !131, size: 64, offset: 768)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !604, file: !6, line: 853, baseType: !131, size: 64, offset: 832)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !604, file: !6, line: 854, baseType: !570, size: 32, offset: 896)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !604, file: !6, line: 855, baseType: !15, size: 32, offset: 928)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !604, file: !6, line: 856, baseType: !15, size: 32, offset: 960)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !604, file: !6, line: 857, baseType: !15, size: 32, offset: 992)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !604, file: !6, line: 858, baseType: !15, size: 32, offset: 1024)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !604, file: !6, line: 859, baseType: !15, size: 32, offset: 1056)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !604, file: !6, line: 860, baseType: !15, size: 32, offset: 1088)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !604, file: !6, line: 861, baseType: !15, size: 32, offset: 1120)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !604, file: !6, line: 862, baseType: !15, size: 32, offset: 1152)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !604, file: !6, line: 863, baseType: !15, size: 32, offset: 1184)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !604, file: !6, line: 864, baseType: !15, size: 32, offset: 1216)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !604, file: !6, line: 865, baseType: !15, size: 32, offset: 1248)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !604, file: !6, line: 866, baseType: !15, size: 32, offset: 1280)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !604, file: !6, line: 867, baseType: !15, size: 32, offset: 1312)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !604, file: !6, line: 868, baseType: !19, size: 16, offset: 1344)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !604, file: !6, line: 869, baseType: !22, size: 8, offset: 1360)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !604, file: !6, line: 870, baseType: !22, size: 8, offset: 1368)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !604, file: !6, line: 871, baseType: !22, size: 8, offset: 1376)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !604, file: !6, line: 872, baseType: !641, size: 160, offset: 1384)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 20)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !69, file: !6, line: 900, baseType: !90, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !69, file: !6, line: 901, baseType: !646, size: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !648)
!648 = !{!649, !657, !670, !679, !688, !701, !715, !716, !726}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !647, file: !6, line: 664, baseType: !650, size: 128)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !651)
!651 = !{!652, !653, !654, !655, !656}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !650, file: !6, line: 568, baseType: !26, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !650, file: !6, line: 568, baseType: !22, size: 8, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !6, line: 568, baseType: !22, size: 8, offset: 72)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !650, file: !6, line: 568, baseType: !19, size: 16, offset: 80)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !650, file: !6, line: 568, baseType: !19, size: 16, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !647, file: !6, line: 665, baseType: !658, size: 384)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !658, file: !6, line: 594, baseType: !26, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !6, line: 594, baseType: !22, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !6, line: 594, baseType: !22, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !6, line: 594, baseType: !19, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !658, file: !6, line: 594, baseType: !19, size: 16, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !658, file: !6, line: 594, baseType: !19, size: 16, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !658, file: !6, line: 595, baseType: !77, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !658, file: !6, line: 596, baseType: !63, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !658, file: !6, line: 597, baseType: !63, size: 64, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !658, file: !6, line: 598, baseType: !119, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !647, file: !6, line: 666, baseType: !671, size: 192)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !671, file: !6, line: 574, baseType: !26, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !6, line: 574, baseType: !22, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !6, line: 574, baseType: !22, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !6, line: 574, baseType: !19, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !671, file: !6, line: 574, baseType: !19, size: 16, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !671, file: !6, line: 574, baseType: !94, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !647, file: !6, line: 667, baseType: !680, size: 192)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !680, file: !6, line: 605, baseType: !26, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !680, file: !6, line: 605, baseType: !22, size: 8, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !6, line: 605, baseType: !22, size: 8, offset: 72)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !680, file: !6, line: 605, baseType: !19, size: 16, offset: 80)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !680, file: !6, line: 605, baseType: !19, size: 16, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !680, file: !6, line: 605, baseType: !90, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !647, file: !6, line: 668, baseType: !689, size: 448)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !6, line: 609, baseType: !26, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !6, line: 609, baseType: !22, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !6, line: 609, baseType: !22, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !689, file: !6, line: 609, baseType: !19, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !689, file: !6, line: 609, baseType: !19, size: 16, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !689, file: !6, line: 609, baseType: !15, size: 32, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !689, file: !6, line: 610, baseType: !77, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !689, file: !6, line: 611, baseType: !63, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !689, file: !6, line: 612, baseType: !63, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !689, file: !6, line: 613, baseType: !15, size: 32, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !647, file: !6, line: 669, baseType: !702, size: 512)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !702, file: !6, line: 581, baseType: !26, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !702, file: !6, line: 581, baseType: !22, size: 8, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !6, line: 581, baseType: !22, size: 8, offset: 72)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !702, file: !6, line: 581, baseType: !19, size: 16, offset: 80)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !702, file: !6, line: 581, baseType: !19, size: 16, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !702, file: !6, line: 581, baseType: !15, size: 32, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !702, file: !6, line: 582, baseType: !94, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !702, file: !6, line: 583, baseType: !94, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !702, file: !6, line: 584, baseType: !41, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !702, file: !6, line: 585, baseType: !26, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !702, file: !6, line: 586, baseType: !15, size: 32, offset: 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !647, file: !6, line: 670, baseType: !209, size: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !647, file: !6, line: 671, baseType: !717, size: 640)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !717, file: !6, line: 632, baseType: !26, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !717, file: !6, line: 632, baseType: !22, size: 8, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !6, line: 632, baseType: !22, size: 8, offset: 72)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !717, file: !6, line: 632, baseType: !19, size: 16, offset: 80)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !717, file: !6, line: 632, baseType: !19, size: 16, offset: 96)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !717, file: !6, line: 633, baseType: !725, size: 512, offset: 128)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 512, elements: !31)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !647, file: !6, line: 672, baseType: !727, size: 320)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !727, file: !6, line: 655, baseType: !26, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !727, file: !6, line: 655, baseType: !22, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !6, line: 655, baseType: !22, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !727, file: !6, line: 655, baseType: !19, size: 16, offset: 80)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !727, file: !6, line: 655, baseType: !19, size: 16, offset: 96)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !727, file: !6, line: 655, baseType: !22, size: 8, offset: 112)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !727, file: !6, line: 656, baseType: !90, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !727, file: !6, line: 657, baseType: !94, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !727, file: !6, line: 658, baseType: !738, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !739, file: !6, line: 646, baseType: !475, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !739, file: !6, line: 647, baseType: !26, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !69, file: !6, line: 902, baseType: !77, size: 64, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !69, file: !6, line: 903, baseType: !15, size: 32, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !42, file: !43, line: 61, baseType: !15, size: 32, offset: 1088)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !42, file: !43, line: 62, baseType: !15, size: 32, offset: 1120)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !42, file: !43, line: 63, baseType: !19, size: 16, offset: 1152)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !42, file: !43, line: 64, baseType: !22, size: 8, offset: 1168)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !42, file: !43, line: 66, baseType: !750, size: 2688, offset: 1216)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2688, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 7)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !42, file: !43, line: 67, baseType: !754, size: 3072, offset: 3904)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 3072, elements: !31)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !42, file: !43, line: 68, baseType: !756, size: 576, offset: 6976)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 576, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 9)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !42, file: !43, line: 69, baseType: !156, size: 64, offset: 7552)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !42, file: !43, line: 71, baseType: !63, size: 64, offset: 7616)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !42, file: !43, line: 72, baseType: !156, size: 64, offset: 7680)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !42, file: !43, line: 73, baseType: !646, size: 64, offset: 7744)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !42, file: !43, line: 74, baseType: !90, size: 64, offset: 7808)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !42, file: !43, line: 75, baseType: !94, size: 64, offset: 7872)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !42, file: !43, line: 76, baseType: !90, size: 64, offset: 7936)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !42, file: !43, line: 77, baseType: !77, size: 64, offset: 8000)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !42, file: !43, line: 78, baseType: !94, size: 64, offset: 8064)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !42, file: !43, line: 79, baseType: !90, size: 64, offset: 8128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !42, file: !43, line: 80, baseType: !131, size: 64, offset: 8192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !42, file: !43, line: 81, baseType: !77, size: 64, offset: 8256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !42, file: !43, line: 82, baseType: !772, size: 64, offset: 8320)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !775)
!775 = !{!776, !777, !778, !779, !780, !781}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !774, file: !6, line: 706, baseType: !15, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !774, file: !6, line: 707, baseType: !15, size: 32, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !6, line: 708, baseType: !19, size: 16, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !774, file: !6, line: 709, baseType: !22, size: 8, offset: 80)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !774, file: !6, line: 710, baseType: !22, size: 8, offset: 88)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !774, file: !6, line: 711, baseType: !22, size: 8, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !42, file: !43, line: 83, baseType: !77, size: 64, offset: 8384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !42, file: !43, line: 84, baseType: !94, size: 64, offset: 8448)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !42, file: !43, line: 85, baseType: !646, size: 64, offset: 8512)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !42, file: !43, line: 86, baseType: !94, size: 64, offset: 8576)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !42, file: !43, line: 87, baseType: !646, size: 64, offset: 8640)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !42, file: !43, line: 88, baseType: !77, size: 64, offset: 8704)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !42, file: !43, line: 89, baseType: !77, size: 64, offset: 8768)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !42, file: !43, line: 90, baseType: !208, size: 64, offset: 8832)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !42, file: !43, line: 91, baseType: !791, size: 64, offset: 8896)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!13, !41, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !42, file: !43, line: 92, baseType: !797, size: 64, offset: 8960)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !188)
!798 = !{}
!799 = !DILocalVariable(name: "walk_state", arg: 1, scope: !38, file: !3, line: 37, type: !41)
!800 = !DILocation(line: 37, column: 48, scope: !38)
!801 = !DILocalVariable(name: "pass_number", arg: 2, scope: !38, file: !3, line: 37, type: !15)
!802 = !DILocation(line: 37, column: 64, scope: !38)
!803 = !DILocation(line: 40, column: 10, scope: !38)
!804 = !DILocation(line: 40, column: 2, scope: !38)
!805 = !DILocation(line: 45, column: 3, scope: !806)
!806 = distinct !DILexicalBlock(scope: !38, file: !3, line: 40, column: 23)
!807 = !DILocation(line: 45, column: 15, scope: !806)
!808 = !DILocation(line: 45, column: 27, scope: !806)
!809 = !DILocation(line: 47, column: 3, scope: !806)
!810 = !DILocation(line: 47, column: 15, scope: !806)
!811 = !DILocation(line: 47, column: 35, scope: !806)
!812 = !DILocation(line: 48, column: 3, scope: !806)
!813 = !DILocation(line: 48, column: 15, scope: !806)
!814 = !DILocation(line: 48, column: 34, scope: !806)
!815 = !DILocation(line: 49, column: 3, scope: !806)
!816 = !DILocation(line: 55, column: 3, scope: !806)
!817 = !DILocation(line: 55, column: 15, scope: !806)
!818 = !DILocation(line: 55, column: 27, scope: !806)
!819 = !DILocation(line: 57, column: 3, scope: !806)
!820 = !DILocation(line: 57, column: 15, scope: !806)
!821 = !DILocation(line: 57, column: 35, scope: !806)
!822 = !DILocation(line: 58, column: 3, scope: !806)
!823 = !DILocation(line: 58, column: 15, scope: !806)
!824 = !DILocation(line: 58, column: 34, scope: !806)
!825 = !DILocation(line: 59, column: 3, scope: !806)
!826 = !DILocation(line: 65, column: 3, scope: !806)
!827 = !DILocation(line: 65, column: 15, scope: !806)
!828 = !DILocation(line: 65, column: 27, scope: !806)
!829 = !DILocation(line: 67, column: 3, scope: !806)
!830 = !DILocation(line: 67, column: 15, scope: !806)
!831 = !DILocation(line: 67, column: 35, scope: !806)
!832 = !DILocation(line: 68, column: 3, scope: !806)
!833 = !DILocation(line: 68, column: 15, scope: !806)
!834 = !DILocation(line: 68, column: 34, scope: !806)
!835 = !DILocation(line: 69, column: 3, scope: !806)
!836 = !DILocation(line: 75, column: 3, scope: !806)
!837 = !DILocation(line: 75, column: 15, scope: !806)
!838 = !DILocation(line: 75, column: 27, scope: !806)
!839 = !DILocation(line: 77, column: 3, scope: !806)
!840 = !DILocation(line: 77, column: 15, scope: !806)
!841 = !DILocation(line: 77, column: 35, scope: !806)
!842 = !DILocation(line: 78, column: 3, scope: !806)
!843 = !DILocation(line: 78, column: 15, scope: !806)
!844 = !DILocation(line: 78, column: 34, scope: !806)
!845 = !DILocation(line: 79, column: 3, scope: !806)
!846 = !DILocation(line: 83, column: 3, scope: !806)
!847 = !DILocation(line: 86, column: 2, scope: !38)
!848 = !DILocation(line: 87, column: 1, scope: !38)
!849 = distinct !DISubprogram(name: "acpi_ds_load1_begin_op", scope: !3, file: !3, line: 103, type: !793, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !798)
!850 = !DILocalVariable(name: "walk_state", arg: 1, scope: !849, file: !3, line: 103, type: !41)
!851 = !DILocation(line: 103, column: 48, scope: !849)
!852 = !DILocalVariable(name: "out_op", arg: 2, scope: !849, file: !3, line: 104, type: !795)
!853 = !DILocation(line: 104, column: 36, scope: !849)
!854 = !DILocalVariable(name: "op", scope: !849, file: !3, line: 106, type: !77)
!855 = !DILocation(line: 106, column: 27, scope: !849)
!856 = !DILocalVariable(name: "node", scope: !849, file: !3, line: 107, type: !90)
!857 = !DILocation(line: 107, column: 30, scope: !849)
!858 = !DILocalVariable(name: "status", scope: !849, file: !3, line: 108, type: !13)
!859 = !DILocation(line: 108, column: 14, scope: !849)
!860 = !DILocalVariable(name: "object_type", scope: !849, file: !3, line: 109, type: !861)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !14, line: 635, baseType: !15)
!862 = !DILocation(line: 109, column: 19, scope: !849)
!863 = !DILocalVariable(name: "path", scope: !849, file: !3, line: 110, type: !131)
!864 = !DILocation(line: 110, column: 8, scope: !849)
!865 = !DILocalVariable(name: "flags", scope: !849, file: !3, line: 111, type: !15)
!866 = !DILocation(line: 111, column: 6, scope: !849)
!867 = !DILocation(line: 115, column: 7, scope: !849)
!868 = !DILocation(line: 115, column: 19, scope: !849)
!869 = !DILocation(line: 115, column: 5, scope: !849)
!870 = !DILocation(line: 121, column: 6, scope: !871)
!871 = distinct !DILexicalBlock(scope: !849, file: !3, line: 121, column: 6)
!872 = !DILocation(line: 121, column: 6, scope: !849)
!873 = !DILocation(line: 122, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 122, column: 7)
!875 = distinct !DILexicalBlock(scope: !871, file: !3, line: 121, column: 10)
!876 = !DILocation(line: 122, column: 21, scope: !874)
!877 = !DILocation(line: 122, column: 30, scope: !874)
!878 = !DILocation(line: 122, column: 36, scope: !874)
!879 = !DILocation(line: 122, column: 7, scope: !875)
!880 = !DILocation(line: 123, column: 14, scope: !881)
!881 = distinct !DILexicalBlock(scope: !874, file: !3, line: 122, column: 50)
!882 = !DILocation(line: 123, column: 5, scope: !881)
!883 = !DILocation(line: 123, column: 12, scope: !881)
!884 = !DILocation(line: 124, column: 4, scope: !881)
!885 = !DILocation(line: 129, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !875, file: !3, line: 129, column: 7)
!887 = !DILocation(line: 129, column: 11, scope: !886)
!888 = !DILocation(line: 129, column: 18, scope: !886)
!889 = !DILocation(line: 129, column: 7, scope: !875)
!890 = !DILocation(line: 130, column: 14, scope: !891)
!891 = distinct !DILexicalBlock(scope: !886, file: !3, line: 129, column: 24)
!892 = !DILocation(line: 130, column: 5, scope: !891)
!893 = !DILocation(line: 130, column: 12, scope: !891)
!894 = !DILocation(line: 131, column: 4, scope: !891)
!895 = !DILocation(line: 133, column: 2, scope: !875)
!896 = !DILocation(line: 135, column: 38, scope: !849)
!897 = !DILocation(line: 135, column: 50, scope: !849)
!898 = !DILocation(line: 135, column: 9, scope: !849)
!899 = !DILocation(line: 135, column: 7, scope: !849)
!900 = !DILocation(line: 139, column: 16, scope: !849)
!901 = !DILocation(line: 139, column: 28, scope: !849)
!902 = !DILocation(line: 139, column: 37, scope: !849)
!903 = !DILocation(line: 139, column: 14, scope: !849)
!904 = !DILocation(line: 145, column: 10, scope: !849)
!905 = !DILocation(line: 145, column: 22, scope: !849)
!906 = !DILocation(line: 145, column: 2, scope: !849)
!907 = !DILocation(line: 153, column: 22, scope: !908)
!908 = distinct !DILexicalBlock(scope: !849, file: !3, line: 145, column: 30)
!909 = !DILocation(line: 153, column: 34, scope: !908)
!910 = !DILocation(line: 153, column: 46, scope: !908)
!911 = !DILocation(line: 153, column: 52, scope: !908)
!912 = !DILocation(line: 155, column: 8, scope: !908)
!913 = !DILocation(line: 153, column: 7, scope: !908)
!914 = !DILocation(line: 152, column: 10, scope: !908)
!915 = !DILocation(line: 172, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !908, file: !3, line: 172, column: 7)
!917 = !DILocation(line: 172, column: 7, scope: !908)
!918 = !DILocation(line: 173, column: 4, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !3, line: 172, column: 29)
!920 = !DILocation(line: 175, column: 4, scope: !919)
!921 = !DILocation(line: 182, column: 11, scope: !908)
!922 = !DILocation(line: 182, column: 17, scope: !908)
!923 = !DILocation(line: 182, column: 3, scope: !908)
!924 = !DILocation(line: 191, column: 4, scope: !925)
!925 = distinct !DILexicalBlock(scope: !908, file: !3, line: 182, column: 23)
!926 = !DILocation(line: 212, column: 4, scope: !925)
!927 = !DILocation(line: 212, column: 10, scope: !925)
!928 = !DILocation(line: 212, column: 15, scope: !925)
!929 = !DILocation(line: 213, column: 4, scope: !925)
!930 = !DILocation(line: 213, column: 16, scope: !925)
!931 = !DILocation(line: 213, column: 28, scope: !925)
!932 = !DILocation(line: 213, column: 35, scope: !925)
!933 = !DILocation(line: 213, column: 41, scope: !925)
!934 = !DILocation(line: 214, column: 4, scope: !925)
!935 = !DILocation(line: 221, column: 9, scope: !936)
!936 = distinct !DILexicalBlock(scope: !925, file: !3, line: 221, column: 8)
!937 = !DILocation(line: 221, column: 17, scope: !936)
!938 = !DILocation(line: 221, column: 14, scope: !936)
!939 = !DILocation(line: 221, column: 37, scope: !936)
!940 = !DILocation(line: 222, column: 9, scope: !936)
!941 = !DILocation(line: 223, column: 9, scope: !936)
!942 = !DILocation(line: 223, column: 21, scope: !936)
!943 = !DILocation(line: 221, column: 8, scope: !925)
!944 = !DILocation(line: 224, column: 5, scope: !945)
!945 = distinct !DILexicalBlock(scope: !936, file: !3, line: 223, column: 49)
!946 = !DILocation(line: 223, column: 46, scope: !936)
!947 = !DILocation(line: 233, column: 4, scope: !925)
!948 = !DILocation(line: 239, column: 4, scope: !925)
!949 = !DILocation(line: 241, column: 3, scope: !908)
!950 = !DILocation(line: 260, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !908, file: !3, line: 260, column: 7)
!952 = !DILocation(line: 260, column: 19, scope: !951)
!953 = !DILocation(line: 260, column: 7, scope: !908)
!954 = !DILocation(line: 264, column: 11, scope: !955)
!955 = distinct !DILexicalBlock(scope: !951, file: !3, line: 260, column: 34)
!956 = !DILocation(line: 264, column: 23, scope: !955)
!957 = !DILocation(line: 264, column: 9, scope: !955)
!958 = !DILocation(line: 265, column: 11, scope: !955)
!959 = !DILocation(line: 266, column: 4, scope: !955)
!960 = !DILocation(line: 273, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !908, file: !3, line: 273, column: 7)
!962 = !DILocation(line: 273, column: 19, scope: !961)
!963 = !DILocation(line: 273, column: 7, scope: !908)
!964 = !DILocation(line: 274, column: 9, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !3, line: 273, column: 32)
!966 = !DILocation(line: 275, column: 11, scope: !965)
!967 = !DILocation(line: 276, column: 4, scope: !965)
!968 = !DILocation(line: 279, column: 9, scope: !908)
!969 = !DILocation(line: 280, column: 8, scope: !970)
!970 = distinct !DILexicalBlock(scope: !908, file: !3, line: 280, column: 7)
!971 = !DILocation(line: 280, column: 20, scope: !970)
!972 = !DILocation(line: 280, column: 27, scope: !970)
!973 = !DILocation(line: 280, column: 44, scope: !970)
!974 = !DILocation(line: 281, column: 10, scope: !970)
!975 = !DILocation(line: 281, column: 22, scope: !970)
!976 = !DILocation(line: 281, column: 34, scope: !970)
!977 = !DILocation(line: 280, column: 7, scope: !908)
!978 = !DILocation(line: 282, column: 8, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !3, line: 282, column: 8)
!980 = distinct !DILexicalBlock(scope: !970, file: !3, line: 281, column: 62)
!981 = !DILocation(line: 282, column: 20, scope: !979)
!982 = !DILocation(line: 282, column: 8, scope: !980)
!983 = !DILocation(line: 283, column: 11, scope: !984)
!984 = distinct !DILexicalBlock(scope: !979, file: !3, line: 282, column: 40)
!985 = !DILocation(line: 288, column: 4, scope: !984)
!986 = !DILocation(line: 289, column: 11, scope: !987)
!987 = distinct !DILexicalBlock(scope: !979, file: !3, line: 288, column: 11)
!988 = !DILocation(line: 295, column: 3, scope: !980)
!989 = !DILocation(line: 308, column: 22, scope: !908)
!990 = !DILocation(line: 308, column: 34, scope: !908)
!991 = !DILocation(line: 308, column: 46, scope: !908)
!992 = !DILocation(line: 308, column: 52, scope: !908)
!993 = !DILocation(line: 309, column: 31, scope: !908)
!994 = !DILocation(line: 309, column: 38, scope: !908)
!995 = !DILocation(line: 308, column: 7, scope: !908)
!996 = !DILocation(line: 307, column: 10, scope: !908)
!997 = !DILocation(line: 311, column: 7, scope: !998)
!998 = distinct !DILexicalBlock(scope: !908, file: !3, line: 311, column: 7)
!999 = !DILocation(line: 311, column: 7, scope: !908)
!1000 = !DILocation(line: 312, column: 8, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 312, column: 8)
!1002 = distinct !DILexicalBlock(scope: !998, file: !3, line: 311, column: 29)
!1003 = !DILocation(line: 312, column: 15, scope: !1001)
!1004 = !DILocation(line: 312, column: 8, scope: !1002)
!1005 = !DILocation(line: 316, column: 9, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 316, column: 9)
!1007 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 312, column: 37)
!1008 = !DILocation(line: 316, column: 15, scope: !1006)
!1009 = !DILocation(line: 316, column: 21, scope: !1006)
!1010 = !DILocation(line: 316, column: 9, scope: !1007)
!1011 = !DILocation(line: 321, column: 6, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 316, column: 42)
!1013 = !DILocation(line: 321, column: 12, scope: !1012)
!1014 = !DILocation(line: 321, column: 18, scope: !1012)
!1015 = !DILocation(line: 322, column: 24, scope: !1012)
!1016 = !DILocation(line: 322, column: 19, scope: !1012)
!1017 = !DILocation(line: 322, column: 6, scope: !1012)
!1018 = !DILocation(line: 322, column: 12, scope: !1012)
!1019 = !DILocation(line: 322, column: 17, scope: !1012)
!1020 = !DILocation(line: 326, column: 30, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 326, column: 10)
!1022 = !DILocation(line: 326, column: 10, scope: !1021)
!1023 = !DILocation(line: 326, column: 10, scope: !1012)
!1024 = !DILocation(line: 329, column: 12, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 326, column: 44)
!1026 = !DILocation(line: 329, column: 18, scope: !1025)
!1027 = !DILocation(line: 330, column: 12, scope: !1025)
!1028 = !DILocation(line: 328, column: 11, scope: !1025)
!1029 = !DILocation(line: 327, column: 14, scope: !1025)
!1030 = !DILocation(line: 331, column: 11, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 331, column: 11)
!1032 = !DILocation(line: 331, column: 11, scope: !1025)
!1033 = !DILocation(line: 332, column: 8, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 331, column: 33)
!1035 = !DILocation(line: 335, column: 6, scope: !1025)
!1036 = !DILocation(line: 337, column: 13, scope: !1012)
!1037 = !DILocation(line: 338, column: 5, scope: !1012)
!1038 = !DILocation(line: 339, column: 4, scope: !1007)
!1039 = !DILocation(line: 341, column: 8, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 341, column: 8)
!1041 = !DILocation(line: 341, column: 8, scope: !1002)
!1042 = !DILocation(line: 342, column: 5, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 341, column: 30)
!1044 = !DILocation(line: 344, column: 5, scope: !1043)
!1045 = !DILocation(line: 346, column: 3, scope: !1002)
!1046 = !DILocation(line: 347, column: 3, scope: !908)
!1047 = !DILocation(line: 352, column: 7, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !849, file: !3, line: 352, column: 6)
!1049 = !DILocation(line: 352, column: 6, scope: !849)
!1050 = !DILocation(line: 356, column: 25, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 352, column: 11)
!1052 = !DILocation(line: 356, column: 37, scope: !1051)
!1053 = !DILocation(line: 356, column: 45, scope: !1051)
!1054 = !DILocation(line: 356, column: 57, scope: !1051)
!1055 = !DILocation(line: 356, column: 8, scope: !1051)
!1056 = !DILocation(line: 356, column: 6, scope: !1051)
!1057 = !DILocation(line: 357, column: 8, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 357, column: 7)
!1059 = !DILocation(line: 357, column: 7, scope: !1051)
!1060 = !DILocation(line: 358, column: 4, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 357, column: 12)
!1062 = !DILocation(line: 360, column: 2, scope: !1051)
!1063 = !DILocation(line: 368, column: 6, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !849, file: !3, line: 368, column: 6)
!1065 = !DILocation(line: 368, column: 6, scope: !849)
!1066 = !DILocation(line: 373, column: 21, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 368, column: 12)
!1068 = !DILocation(line: 373, column: 3, scope: !1067)
!1069 = !DILocation(line: 373, column: 7, scope: !1067)
!1070 = !DILocation(line: 373, column: 14, scope: !1067)
!1071 = !DILocation(line: 373, column: 19, scope: !1067)
!1072 = !DILocation(line: 374, column: 20, scope: !1067)
!1073 = !DILocation(line: 374, column: 26, scope: !1067)
!1074 = !DILocation(line: 374, column: 31, scope: !1067)
!1075 = !DILocation(line: 374, column: 3, scope: !1067)
!1076 = !DILocation(line: 374, column: 7, scope: !1067)
!1077 = !DILocation(line: 374, column: 13, scope: !1067)
!1078 = !DILocation(line: 374, column: 18, scope: !1067)
!1079 = !DILocation(line: 375, column: 2, scope: !1067)
!1080 = !DILocation(line: 377, column: 47, scope: !849)
!1081 = !DILocation(line: 377, column: 59, scope: !849)
!1082 = !DILocation(line: 377, column: 21, scope: !849)
!1083 = !DILocation(line: 378, column: 7, scope: !849)
!1084 = !DILocation(line: 377, column: 2, scope: !849)
!1085 = !DILocation(line: 379, column: 12, scope: !849)
!1086 = !DILocation(line: 379, column: 3, scope: !849)
!1087 = !DILocation(line: 379, column: 10, scope: !849)
!1088 = !DILocation(line: 380, column: 2, scope: !849)
!1089 = !DILocation(line: 381, column: 1, scope: !849)
!1090 = distinct !DISubprogram(name: "acpi_ds_load1_end_op", scope: !3, file: !3, line: 396, type: !189, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !798)
!1091 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1090, file: !3, line: 396, type: !41)
!1092 = !DILocation(line: 396, column: 58, scope: !1090)
!1093 = !DILocalVariable(name: "op", scope: !1090, file: !3, line: 398, type: !77)
!1094 = !DILocation(line: 398, column: 27, scope: !1090)
!1095 = !DILocalVariable(name: "object_type", scope: !1090, file: !3, line: 399, type: !861)
!1096 = !DILocation(line: 399, column: 19, scope: !1090)
!1097 = !DILocalVariable(name: "status", scope: !1090, file: !3, line: 400, type: !13)
!1098 = !DILocation(line: 400, column: 14, scope: !1090)
!1099 = !DILocation(line: 407, column: 7, scope: !1090)
!1100 = !DILocation(line: 407, column: 19, scope: !1090)
!1101 = !DILocation(line: 407, column: 5, scope: !1090)
!1102 = !DILocation(line: 426, column: 7, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 426, column: 6)
!1104 = !DILocation(line: 426, column: 19, scope: !1103)
!1105 = !DILocation(line: 426, column: 31, scope: !1103)
!1106 = !DILocation(line: 426, column: 57, scope: !1103)
!1107 = !DILocation(line: 427, column: 7, scope: !1103)
!1108 = !DILocation(line: 427, column: 19, scope: !1103)
!1109 = !DILocation(line: 427, column: 28, scope: !1103)
!1110 = !DILocation(line: 427, column: 34, scope: !1103)
!1111 = !DILocation(line: 426, column: 6, scope: !1090)
!1112 = !DILocation(line: 428, column: 40, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 427, column: 49)
!1114 = !DILocation(line: 428, column: 44, scope: !1113)
!1115 = !DILocation(line: 428, column: 12, scope: !1113)
!1116 = !DILocation(line: 428, column: 10, scope: !1113)
!1117 = !DILocation(line: 429, column: 3, scope: !1113)
!1118 = !DILocation(line: 434, column: 8, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 434, column: 6)
!1120 = !DILocation(line: 434, column: 20, scope: !1119)
!1121 = !DILocation(line: 434, column: 29, scope: !1119)
!1122 = !DILocation(line: 434, column: 35, scope: !1119)
!1123 = !DILocation(line: 434, column: 6, scope: !1090)
!1124 = !DILocation(line: 435, column: 3, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 434, column: 63)
!1126 = !DILocation(line: 440, column: 16, scope: !1090)
!1127 = !DILocation(line: 440, column: 28, scope: !1090)
!1128 = !DILocation(line: 440, column: 37, scope: !1090)
!1129 = !DILocation(line: 440, column: 14, scope: !1090)
!1130 = !DILocation(line: 442, column: 6, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 442, column: 6)
!1132 = !DILocation(line: 442, column: 18, scope: !1131)
!1133 = !DILocation(line: 442, column: 27, scope: !1131)
!1134 = !DILocation(line: 442, column: 33, scope: !1131)
!1135 = !DILocation(line: 442, column: 6, scope: !1090)
!1136 = !DILocation(line: 447, column: 8, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 447, column: 7)
!1138 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 442, column: 46)
!1139 = !DILocation(line: 447, column: 20, scope: !1137)
!1140 = !DILocation(line: 447, column: 7, scope: !1138)
!1141 = !DILocation(line: 448, column: 8, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 448, column: 8)
!1143 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 447, column: 33)
!1144 = !DILocation(line: 448, column: 20, scope: !1142)
!1145 = !DILocation(line: 448, column: 27, scope: !1142)
!1146 = !DILocation(line: 448, column: 43, scope: !1142)
!1147 = !DILocation(line: 449, column: 8, scope: !1142)
!1148 = !DILocation(line: 449, column: 20, scope: !1142)
!1149 = !DILocation(line: 449, column: 27, scope: !1142)
!1150 = !DILocation(line: 449, column: 48, scope: !1142)
!1151 = !DILocation(line: 450, column: 8, scope: !1142)
!1152 = !DILocation(line: 450, column: 20, scope: !1142)
!1153 = !DILocation(line: 450, column: 27, scope: !1142)
!1154 = !DILocation(line: 448, column: 8, scope: !1143)
!1155 = !DILocation(line: 452, column: 36, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 450, column: 50)
!1157 = !DILocation(line: 452, column: 40, scope: !1156)
!1158 = !DILocation(line: 452, column: 9, scope: !1156)
!1159 = !DILocation(line: 451, column: 12, scope: !1156)
!1160 = !DILocation(line: 453, column: 4, scope: !1156)
!1161 = !DILocation(line: 454, column: 3, scope: !1143)
!1162 = !DILocation(line: 455, column: 3, scope: !1138)
!1163 = !DILocation(line: 462, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 462, column: 6)
!1165 = !DILocation(line: 462, column: 19, scope: !1164)
!1166 = !DILocation(line: 462, column: 6, scope: !1090)
!1167 = !DILocation(line: 463, column: 7, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 463, column: 7)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 462, column: 32)
!1170 = !DILocation(line: 463, column: 11, scope: !1168)
!1171 = !DILocation(line: 463, column: 18, scope: !1168)
!1172 = !DILocation(line: 463, column: 29, scope: !1168)
!1173 = !DILocation(line: 463, column: 7, scope: !1169)
!1174 = !DILocation(line: 465, column: 30, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 463, column: 47)
!1176 = !DILocation(line: 465, column: 34, scope: !1175)
!1177 = !DILocation(line: 465, column: 40, scope: !1175)
!1178 = !DILocation(line: 466, column: 9, scope: !1175)
!1179 = !DILocation(line: 466, column: 13, scope: !1175)
!1180 = !DILocation(line: 466, column: 19, scope: !1175)
!1181 = !DILocation(line: 468, column: 11, scope: !1175)
!1182 = !DILocation(line: 468, column: 15, scope: !1175)
!1183 = !DILocation(line: 468, column: 22, scope: !1175)
!1184 = !DILocation(line: 468, column: 28, scope: !1175)
!1185 = !DILocation(line: 469, column: 10, scope: !1175)
!1186 = !DILocation(line: 469, column: 17, scope: !1175)
!1187 = !DILocation(line: 469, column: 23, scope: !1175)
!1188 = !DILocation(line: 467, column: 9, scope: !1175)
!1189 = !DILocation(line: 470, column: 9, scope: !1175)
!1190 = !DILocation(line: 465, column: 8, scope: !1175)
!1191 = !DILocation(line: 464, column: 11, scope: !1175)
!1192 = !DILocation(line: 471, column: 8, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 471, column: 8)
!1194 = !DILocation(line: 471, column: 8, scope: !1175)
!1195 = !DILocation(line: 472, column: 5, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 471, column: 30)
!1197 = !DILocation(line: 474, column: 3, scope: !1175)
!1198 = !DILocation(line: 474, column: 14, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 474, column: 14)
!1200 = !DILocation(line: 474, column: 18, scope: !1199)
!1201 = !DILocation(line: 474, column: 25, scope: !1199)
!1202 = !DILocation(line: 474, column: 36, scope: !1199)
!1203 = !DILocation(line: 474, column: 14, scope: !1168)
!1204 = !DILocation(line: 476, column: 30, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 474, column: 59)
!1206 = !DILocation(line: 476, column: 34, scope: !1205)
!1207 = !DILocation(line: 476, column: 40, scope: !1205)
!1208 = !DILocation(line: 477, column: 9, scope: !1205)
!1209 = !DILocation(line: 477, column: 13, scope: !1205)
!1210 = !DILocation(line: 477, column: 19, scope: !1205)
!1211 = !DILocation(line: 479, column: 9, scope: !1205)
!1212 = !DILocation(line: 476, column: 8, scope: !1205)
!1213 = !DILocation(line: 475, column: 11, scope: !1205)
!1214 = !DILocation(line: 480, column: 8, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 480, column: 8)
!1216 = !DILocation(line: 480, column: 8, scope: !1205)
!1217 = !DILocation(line: 481, column: 5, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 480, column: 30)
!1219 = !DILocation(line: 483, column: 3, scope: !1205)
!1220 = !DILocation(line: 484, column: 2, scope: !1169)
!1221 = !DILocation(line: 486, column: 6, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 486, column: 6)
!1223 = !DILocation(line: 486, column: 10, scope: !1222)
!1224 = !DILocation(line: 486, column: 17, scope: !1222)
!1225 = !DILocation(line: 486, column: 28, scope: !1222)
!1226 = !DILocation(line: 486, column: 6, scope: !1090)
!1227 = !DILocation(line: 490, column: 7, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 490, column: 7)
!1229 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 486, column: 44)
!1230 = !DILocation(line: 490, column: 11, scope: !1228)
!1231 = !DILocation(line: 490, column: 18, scope: !1228)
!1232 = !DILocation(line: 490, column: 24, scope: !1228)
!1233 = !DILocation(line: 490, column: 7, scope: !1229)
!1234 = !DILocation(line: 491, column: 44, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 490, column: 29)
!1236 = !DILocation(line: 491, column: 48, scope: !1235)
!1237 = !DILocation(line: 492, column: 9, scope: !1235)
!1238 = !DILocation(line: 492, column: 15, scope: !1235)
!1239 = !DILocation(line: 493, column: 15, scope: !1235)
!1240 = !DILocation(line: 494, column: 15, scope: !1235)
!1241 = !DILocation(line: 491, column: 19, scope: !1235)
!1242 = !DILocation(line: 495, column: 8, scope: !1235)
!1243 = !DILocation(line: 491, column: 18, scope: !1235)
!1244 = !DILocation(line: 491, column: 16, scope: !1235)
!1245 = !DILocation(line: 499, column: 8, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 499, column: 8)
!1247 = !DILocation(line: 499, column: 12, scope: !1246)
!1248 = !DILocation(line: 499, column: 19, scope: !1246)
!1249 = !DILocation(line: 499, column: 8, scope: !1235)
!1250 = !DILocation(line: 500, column: 34, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 499, column: 25)
!1252 = !DILocation(line: 500, column: 29, scope: !1251)
!1253 = !DILocation(line: 500, column: 5, scope: !1251)
!1254 = !DILocation(line: 500, column: 9, scope: !1251)
!1255 = !DILocation(line: 500, column: 16, scope: !1251)
!1256 = !DILocation(line: 500, column: 22, scope: !1251)
!1257 = !DILocation(line: 500, column: 27, scope: !1251)
!1258 = !DILocation(line: 501, column: 4, scope: !1251)
!1259 = !DILocation(line: 502, column: 3, scope: !1235)
!1260 = !DILocation(line: 503, column: 2, scope: !1229)
!1261 = !DILocation(line: 541, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 541, column: 6)
!1263 = !DILocation(line: 541, column: 19, scope: !1262)
!1264 = !DILocation(line: 541, column: 6, scope: !1090)
!1265 = !DILocation(line: 542, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 542, column: 7)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 541, column: 32)
!1268 = !DILocation(line: 542, column: 11, scope: !1266)
!1269 = !DILocation(line: 542, column: 18, scope: !1266)
!1270 = !DILocation(line: 542, column: 29, scope: !1266)
!1271 = !DILocation(line: 542, column: 7, scope: !1267)
!1272 = !DILocation(line: 555, column: 37, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 555, column: 8)
!1274 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 542, column: 47)
!1275 = !DILocation(line: 555, column: 41, scope: !1273)
!1276 = !DILocation(line: 555, column: 47, scope: !1273)
!1277 = !DILocation(line: 555, column: 9, scope: !1273)
!1278 = !DILocation(line: 555, column: 8, scope: !1274)
!1279 = !DILocation(line: 557, column: 9, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 555, column: 54)
!1281 = !DILocation(line: 556, column: 5, scope: !1280)
!1282 = !DILocation(line: 556, column: 17, scope: !1280)
!1283 = !DILocation(line: 556, column: 29, scope: !1280)
!1284 = !DILocation(line: 558, column: 5, scope: !1280)
!1285 = !DILocation(line: 558, column: 17, scope: !1280)
!1286 = !DILocation(line: 558, column: 30, scope: !1280)
!1287 = !DILocation(line: 561, column: 33, scope: !1280)
!1288 = !DILocation(line: 562, column: 12, scope: !1280)
!1289 = !DILocation(line: 562, column: 16, scope: !1280)
!1290 = !DILocation(line: 562, column: 23, scope: !1280)
!1291 = !DILocation(line: 563, column: 12, scope: !1280)
!1292 = !DILocation(line: 561, column: 9, scope: !1280)
!1293 = !DILocation(line: 560, column: 12, scope: !1280)
!1294 = !DILocation(line: 564, column: 9, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 564, column: 9)
!1296 = !DILocation(line: 564, column: 9, scope: !1280)
!1297 = !DILocation(line: 566, column: 32, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 564, column: 31)
!1299 = !DILocation(line: 566, column: 36, scope: !1298)
!1300 = !DILocation(line: 567, column: 11, scope: !1298)
!1301 = !DILocation(line: 568, column: 11, scope: !1298)
!1302 = !DILocation(line: 568, column: 15, scope: !1298)
!1303 = !DILocation(line: 569, column: 11, scope: !1298)
!1304 = !DILocation(line: 570, column: 11, scope: !1298)
!1305 = !DILocation(line: 566, column: 10, scope: !1298)
!1306 = !DILocation(line: 565, column: 13, scope: !1298)
!1307 = !DILocation(line: 571, column: 5, scope: !1298)
!1308 = !DILocation(line: 573, column: 5, scope: !1280)
!1309 = !DILocation(line: 573, column: 17, scope: !1280)
!1310 = !DILocation(line: 573, column: 29, scope: !1280)
!1311 = !DILocation(line: 574, column: 5, scope: !1280)
!1312 = !DILocation(line: 574, column: 17, scope: !1280)
!1313 = !DILocation(line: 574, column: 30, scope: !1280)
!1314 = !DILocation(line: 576, column: 9, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 576, column: 9)
!1316 = !DILocation(line: 576, column: 9, scope: !1280)
!1317 = !DILocation(line: 577, column: 6, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 576, column: 31)
!1319 = !DILocation(line: 579, column: 4, scope: !1280)
!1320 = !DILocation(line: 580, column: 3, scope: !1274)
!1321 = !DILocation(line: 581, column: 2, scope: !1267)
!1322 = !DILocation(line: 585, column: 7, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 585, column: 6)
!1324 = !DILocation(line: 585, column: 19, scope: !1323)
!1325 = !DILocation(line: 585, column: 31, scope: !1323)
!1326 = !DILocation(line: 586, column: 6, scope: !1323)
!1327 = !DILocation(line: 586, column: 10, scope: !1323)
!1328 = !DILocation(line: 586, column: 17, scope: !1323)
!1329 = !DILocation(line: 586, column: 28, scope: !1323)
!1330 = !DILocation(line: 586, column: 47, scope: !1323)
!1331 = !DILocation(line: 587, column: 26, scope: !1323)
!1332 = !DILocation(line: 587, column: 6, scope: !1323)
!1333 = !DILocation(line: 585, column: 6, scope: !1090)
!1334 = !DILocation(line: 592, column: 36, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 587, column: 40)
!1336 = !DILocation(line: 592, column: 12, scope: !1335)
!1337 = !DILocation(line: 592, column: 10, scope: !1335)
!1338 = !DILocation(line: 593, column: 2, scope: !1335)
!1339 = !DILocation(line: 595, column: 2, scope: !1090)
!1340 = !DILocation(line: 596, column: 1, scope: !1090)
