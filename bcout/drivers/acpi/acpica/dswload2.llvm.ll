; ModuleID = '../bcout/drivers/acpi/acpica/dswload2.llvm.bc'
source_filename = "drivers/acpi/acpica/dswload2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, {}*, i32 (%struct.acpi_walk_state*)* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%union.acpi_name_union = type { i32 }
%struct.acpi_common_state = type { i8*, i8, i8, i16, i16 }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }
%struct.acpi_parse_obj_named = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, i8*, i8*, i32, i32 }

@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@_acpi_module_name = internal constant [9 x i8] c"dswload2\00", align 1, !dbg !0
@.str = private unnamed_addr constant [86 x i8] c"Type override - [%4.4s] had invalid type (%s) for Scope operator, changed to type ANY\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Invalid type (%s) for target of Scope operator [%4.4s] (Cannot override)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"CreateBufferField failure\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_load2_begin_op(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object** %out_op) #0 !dbg !40 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %out_op.addr = alloca %union.acpi_parse_object**, align 8
  %op = alloca %union.acpi_parse_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  %object_type = alloca i32, align 4
  %buffer_ptr = alloca i8*, align 8
  %flags = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !797, metadata !DIExpression()), !dbg !798
  store %union.acpi_parse_object** %out_op, %union.acpi_parse_object*** %out_op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object*** %out_op.addr, metadata !799, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op, metadata !801, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !803, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.declare(metadata i32* %status, metadata !805, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.declare(metadata i32* %object_type, metadata !807, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.declare(metadata i8** %buffer_ptr, metadata !810, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !812, metadata !DIExpression()), !dbg !813
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !814
  %op1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 40, !dbg !815
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op1, align 8, !dbg !815
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %op, align 8, !dbg !816
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !817
  %tobool = icmp ne %union.acpi_parse_object* %2, null, !dbg !817
  br i1 %tobool, label %if.then, label %if.else30, !dbg !819

if.then:                                          ; preds = %entry
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !820
  %control_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 32, !dbg !823
  %4 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !823
  %tobool2 = icmp ne %union.acpi_generic_state* %4, null, !dbg !824
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !825

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !826
  %control_state3 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 32, !dbg !827
  %6 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state3, align 8, !dbg !827
  %common = bitcast %union.acpi_generic_state* %6 to %struct.acpi_common_state*, !dbg !828
  %state = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common, i32 0, i32 4, !dbg !829
  %7 = load i16, i16* %state, align 4, !dbg !829
  %conv = zext i16 %7 to i32, !dbg !826
  %cmp = icmp eq i32 %conv, 193, !dbg !830
  br i1 %cmp, label %if.then5, label %if.end, !dbg !831

if.then5:                                         ; preds = %land.lhs.true
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !832
  %9 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %out_op.addr, align 8, !dbg !834
  %call = call i32 @acpi_ds_exec_begin_op(%struct.acpi_walk_state* %8, %union.acpi_parse_object** %9) #3, !dbg !835
  store i32 %call, i32* %status, align 4, !dbg !836
  %10 = load i32, i32* %status, align 4, !dbg !837
  store i32 %10, i32* %retval, align 4, !dbg !837
  br label %return, !dbg !837

if.end:                                           ; preds = %land.lhs.true, %if.then
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !838
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 41, !dbg !840
  %12 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !840
  %flags6 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %12, i32 0, i32 2, !dbg !841
  %13 = load i16, i16* %flags6, align 4, !dbg !841
  %conv7 = zext i16 %13 to i32, !dbg !838
  %and = and i32 %conv7, 256, !dbg !842
  %tobool8 = icmp ne i32 %and, 0, !dbg !842
  br i1 %tobool8, label %lor.lhs.false, label %land.lhs.true9, !dbg !843

land.lhs.true9:                                   ; preds = %if.end
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !844
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 3, !dbg !845
  %15 = load i16, i16* %opcode, align 2, !dbg !845
  %conv10 = zext i16 %15 to i32, !dbg !844
  %cmp11 = icmp ne i32 %conv10, 45, !dbg !846
  br i1 %cmp11, label %if.then18, label %lor.lhs.false, !dbg !847

lor.lhs.false:                                    ; preds = %land.lhs.true9, %if.end
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !848
  %op_info13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 41, !dbg !849
  %17 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info13, align 8, !dbg !849
  %flags14 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %17, i32 0, i32 2, !dbg !850
  %18 = load i16, i16* %flags14, align 4, !dbg !850
  %conv15 = zext i16 %18 to i32, !dbg !848
  %and16 = and i32 %conv15, 64, !dbg !851
  %tobool17 = icmp ne i32 %and16, 0, !dbg !851
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !852

if.then18:                                        ; preds = %lor.lhs.false, %land.lhs.true9
  store i32 0, i32* %retval, align 4, !dbg !853
  br label %return, !dbg !853

if.end19:                                         ; preds = %lor.lhs.false
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !855
  %opcode20 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 3, !dbg !857
  %20 = load i16, i16* %opcode20, align 2, !dbg !857
  %conv21 = zext i16 %20 to i32, !dbg !855
  %cmp22 = icmp eq i32 %conv21, 45, !dbg !858
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !859

if.then24:                                        ; preds = %if.end19
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !860
  %common25 = bitcast %union.acpi_parse_object* %21 to %struct.acpi_parse_obj_common*, !dbg !862
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common25, i32 0, i32 7, !dbg !863
  %string = bitcast %union.acpi_parse_value* %value to i8**, !dbg !864
  %22 = load i8*, i8** %string, align 8, !dbg !864
  store i8* %22, i8** %buffer_ptr, align 8, !dbg !865
  %23 = load i8*, i8** %buffer_ptr, align 8, !dbg !866
  %tobool26 = icmp ne i8* %23, null, !dbg !866
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !868

if.then27:                                        ; preds = %if.then24
  store i32 0, i32* %retval, align 4, !dbg !869
  br label %return, !dbg !869

if.end28:                                         ; preds = %if.then24
  br label %if.end29, !dbg !871

if.else:                                          ; preds = %if.end19
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !872
  %named = bitcast %union.acpi_parse_object* %24 to %struct.acpi_parse_obj_named*, !dbg !872
  %name = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 12, !dbg !872
  %25 = bitcast i32* %name to i8*, !dbg !872
  store i8* %25, i8** %buffer_ptr, align 8, !dbg !874
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end28
  br label %if.end32, !dbg !875

if.else30:                                        ; preds = %entry
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !876
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 21, !dbg !878
  %call31 = call i8* @acpi_ps_get_next_namestring(%struct.acpi_parse_state* %parser_state) #3, !dbg !879
  store i8* %call31, i8** %buffer_ptr, align 8, !dbg !880
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.end29
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !881
  %op_info33 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %27, i32 0, i32 41, !dbg !882
  %28 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info33, align 8, !dbg !882
  %object_type34 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %28, i32 0, i32 3, !dbg !883
  %29 = load i8, i8* %object_type34, align 2, !dbg !883
  %conv35 = zext i8 %29 to i32, !dbg !881
  store i32 %conv35, i32* %object_type, align 4, !dbg !884
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !885
  %opcode36 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 3, !dbg !886
  %31 = load i16, i16* %opcode36, align 2, !dbg !886
  %conv37 = zext i16 %31 to i32, !dbg !885
  switch i32 %conv37, label %sw.default85 [
    i32 23425, label %sw.bb
    i32 23431, label %sw.bb
    i32 23430, label %sw.bb
    i32 45, label %sw.bb38
    i32 16, label %sw.bb40
  ], !dbg !887

sw.bb:                                            ; preds = %if.end32, %if.end32, %if.end32
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %node, align 8, !dbg !888
  store i32 0, i32* %status, align 4, !dbg !890
  br label %sw.epilog134, !dbg !891

sw.bb38:                                          ; preds = %if.end32
  %32 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !892
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %32, i32 0, i32 46, !dbg !893
  %33 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !893
  %34 = load i8*, i8** %buffer_ptr, align 8, !dbg !894
  %35 = load i32, i32* %object_type, align 4, !dbg !895
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !896
  %call39 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %33, i8* %34, i32 %35, i32 3, i32 1, %struct.acpi_walk_state* %36, %struct.acpi_namespace_node** %node) #3, !dbg !897
  store i32 %call39, i32* %status, align 4, !dbg !898
  br label %sw.epilog134, !dbg !899

sw.bb40:                                          ; preds = %if.end32
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !900
  %tobool41 = icmp ne %union.acpi_parse_object* %37, null, !dbg !900
  br i1 %tobool41, label %land.lhs.true42, label %if.else54, !dbg !902

land.lhs.true42:                                  ; preds = %sw.bb40
  %38 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !903
  %named43 = bitcast %union.acpi_parse_object* %38 to %struct.acpi_parse_obj_named*, !dbg !904
  %node44 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named43, i32 0, i32 6, !dbg !905
  %39 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node44, align 8, !dbg !905
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !906
  %cmp45 = icmp eq %struct.acpi_namespace_node* %39, %40, !dbg !907
  br i1 %cmp45, label %if.then47, label %if.else54, !dbg !908

if.then47:                                        ; preds = %land.lhs.true42
  %41 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !909
  %named48 = bitcast %union.acpi_parse_object* %41 to %struct.acpi_parse_obj_named*, !dbg !911
  %node49 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named48, i32 0, i32 6, !dbg !912
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node49, align 8, !dbg !912
  store %struct.acpi_namespace_node* %42, %struct.acpi_namespace_node** %node, align 8, !dbg !913
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !914
  %44 = load i32, i32* %object_type, align 4, !dbg !915
  %45 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !916
  %call50 = call i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %43, i32 %44, %struct.acpi_walk_state* %45) #3, !dbg !917
  store i32 %call50, i32* %status, align 4, !dbg !918
  %46 = load i32, i32* %status, align 4, !dbg !919
  %tobool51 = icmp ne i32 %46, 0, !dbg !919
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !921

if.then52:                                        ; preds = %if.then47
  %47 = load i32, i32* %status, align 4, !dbg !922
  store i32 %47, i32* %retval, align 4, !dbg !922
  br label %return, !dbg !922

if.end53:                                         ; preds = %if.then47
  br label %if.end61, !dbg !924

if.else54:                                        ; preds = %land.lhs.true42, %sw.bb40
  %48 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !925
  %scope_info55 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %48, i32 0, i32 46, !dbg !927
  %49 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info55, align 8, !dbg !927
  %50 = load i8*, i8** %buffer_ptr, align 8, !dbg !928
  %51 = load i32, i32* %object_type, align 4, !dbg !929
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !930
  %call56 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %49, i8* %50, i32 %51, i32 3, i32 1, %struct.acpi_walk_state* %52, %struct.acpi_namespace_node** %node) #3, !dbg !931
  store i32 %call56, i32* %status, align 4, !dbg !932
  %53 = load i32, i32* %status, align 4, !dbg !933
  %tobool57 = icmp ne i32 %53, 0, !dbg !933
  br i1 %tobool57, label %if.then58, label %if.end60, !dbg !935

if.then58:                                        ; preds = %if.else54
  %54 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !936
  %scope_info59 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %54, i32 0, i32 46, !dbg !936
  %55 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info59, align 8, !dbg !936
  %56 = load i8*, i8** %buffer_ptr, align 8, !dbg !936
  %57 = load i32, i32* %status, align 4, !dbg !936
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 163, %union.acpi_generic_state* %55, i8* %56, i32 %57) #3, !dbg !936
  %58 = load i32, i32* %status, align 4, !dbg !938
  store i32 %58, i32* %retval, align 4, !dbg !938
  br label %return, !dbg !938

if.end60:                                         ; preds = %if.else54
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end53
  %59 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !939
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %59, i32 0, i32 2, !dbg !940
  %60 = load i8, i8* %type, align 1, !dbg !940
  %conv62 = zext i8 %60 to i32, !dbg !939
  switch i32 %conv62, label %sw.default [
    i32 0, label %sw.bb63
    i32 27, label %sw.bb63
    i32 6, label %sw.bb63
    i32 11, label %sw.bb63
    i32 12, label %sw.bb63
    i32 13, label %sw.bb63
    i32 1, label %sw.bb64
    i32 2, label %sw.bb64
    i32 3, label %sw.bb64
    i32 8, label %sw.bb73
  ], !dbg !941

sw.bb63:                                          ; preds = %if.end61, %if.end61, %if.end61, %if.end61, %if.end61, %if.end61
  br label %sw.epilog, !dbg !942

sw.bb64:                                          ; preds = %if.end61, %if.end61, %if.end61
  %61 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !944
  %62 = bitcast %struct.acpi_namespace_node* %61 to i8*, !dbg !944
  %call65 = call i8* @acpi_ut_get_node_name(i8* %62) #3, !dbg !944
  %63 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !944
  %type66 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %63, i32 0, i32 2, !dbg !944
  %64 = load i8, i8* %type66, align 1, !dbg !944
  %conv67 = zext i8 %64 to i32, !dbg !944
  %call68 = call i8* @acpi_ut_get_type_name(i32 %conv67) #3, !dbg !944
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 195, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %call65, i8* %call68) #3, !dbg !944
  %65 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !945
  %type69 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %65, i32 0, i32 2, !dbg !946
  store i8 0, i8* %type69, align 1, !dbg !947
  %66 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !948
  %scope_info70 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %66, i32 0, i32 46, !dbg !949
  %67 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info70, align 8, !dbg !949
  %common71 = bitcast %union.acpi_generic_state* %67 to %struct.acpi_common_state*, !dbg !950
  %value72 = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common71, i32 0, i32 3, !dbg !951
  store i16 0, i16* %value72, align 2, !dbg !952
  br label %sw.epilog, !dbg !953

sw.bb73:                                          ; preds = %if.end61
  %68 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !954
  %69 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !956
  %cmp74 = icmp eq %struct.acpi_namespace_node* %68, %69, !dbg !957
  br i1 %cmp74, label %land.lhs.true76, label %if.end80, !dbg !958

land.lhs.true76:                                  ; preds = %sw.bb73
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !959
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %70, i32 0, i32 20, !dbg !960
  %71 = load i32, i32* %parse_flags, align 4, !dbg !960
  %and77 = and i32 %71, 1024, !dbg !961
  %tobool78 = icmp ne i32 %and77, 0, !dbg !961
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !962

if.then79:                                        ; preds = %land.lhs.true76
  br label %sw.epilog, !dbg !963

if.end80:                                         ; preds = %land.lhs.true76, %sw.bb73
  br label %sw.default, !dbg !965

sw.default:                                       ; preds = %if.end61, %if.end80
  %72 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !966
  %type81 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %72, i32 0, i32 2, !dbg !966
  %73 = load i8, i8* %type81, align 1, !dbg !966
  %conv82 = zext i8 %73 to i32, !dbg !966
  %call83 = call i8* @acpi_ut_get_type_name(i32 %conv82) #3, !dbg !966
  %74 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !966
  %75 = bitcast %struct.acpi_namespace_node* %74 to i8*, !dbg !966
  %call84 = call i8* @acpi_ut_get_node_name(i8* %75) #3, !dbg !966
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 223, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* %call83, i8* %call84) #3, !dbg !966
  store i32 12291, i32* %retval, align 4, !dbg !967
  br label %return, !dbg !967

sw.epilog:                                        ; preds = %if.then79, %sw.bb64, %sw.bb63
  br label %sw.epilog134, !dbg !968

sw.default85:                                     ; preds = %if.end32
  %76 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !969
  %tobool86 = icmp ne %union.acpi_parse_object* %76, null, !dbg !969
  br i1 %tobool86, label %land.lhs.true87, label %if.end102, !dbg !971

land.lhs.true87:                                  ; preds = %sw.default85
  %77 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !972
  %common88 = bitcast %union.acpi_parse_object* %77 to %struct.acpi_parse_obj_common*, !dbg !973
  %node89 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common88, i32 0, i32 6, !dbg !974
  %78 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node89, align 8, !dbg !974
  %tobool90 = icmp ne %struct.acpi_namespace_node* %78, null, !dbg !972
  br i1 %tobool90, label %if.then91, label %if.end102, !dbg !975

if.then91:                                        ; preds = %land.lhs.true87
  %79 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !976
  %common92 = bitcast %union.acpi_parse_object* %79 to %struct.acpi_parse_obj_common*, !dbg !978
  %node93 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common92, i32 0, i32 6, !dbg !979
  %80 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node93, align 8, !dbg !979
  store %struct.acpi_namespace_node* %80, %struct.acpi_namespace_node** %node, align 8, !dbg !980
  %81 = load i32, i32* %object_type, align 4, !dbg !981
  %call94 = call i32 @acpi_ns_opens_scope(i32 %81) #3, !dbg !983
  %tobool95 = icmp ne i32 %call94, 0, !dbg !983
  br i1 %tobool95, label %if.then96, label %if.end101, !dbg !984

if.then96:                                        ; preds = %if.then91
  %82 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !985
  %83 = load i32, i32* %object_type, align 4, !dbg !987
  %84 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !988
  %call97 = call i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %82, i32 %83, %struct.acpi_walk_state* %84) #3, !dbg !989
  store i32 %call97, i32* %status, align 4, !dbg !990
  %85 = load i32, i32* %status, align 4, !dbg !991
  %tobool98 = icmp ne i32 %85, 0, !dbg !991
  br i1 %tobool98, label %if.then99, label %if.end100, !dbg !993

if.then99:                                        ; preds = %if.then96
  %86 = load i32, i32* %status, align 4, !dbg !994
  store i32 %86, i32* %retval, align 4, !dbg !994
  br label %return, !dbg !994

if.end100:                                        ; preds = %if.then96
  br label %if.end101, !dbg !996

if.end101:                                        ; preds = %if.end100, %if.then91
  store i32 0, i32* %retval, align 4, !dbg !997
  br label %return, !dbg !997

if.end102:                                        ; preds = %land.lhs.true87, %sw.default85
  %87 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !998
  %deferred_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %87, i32 0, i32 33, !dbg !1000
  %88 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %deferred_node, align 8, !dbg !1000
  %tobool103 = icmp ne %struct.acpi_namespace_node* %88, null, !dbg !998
  br i1 %tobool103, label %if.then104, label %if.end106, !dbg !1001

if.then104:                                       ; preds = %if.end102
  %89 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1002
  %deferred_node105 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %89, i32 0, i32 33, !dbg !1004
  %90 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %deferred_node105, align 8, !dbg !1004
  store %struct.acpi_namespace_node* %90, %struct.acpi_namespace_node** %node, align 8, !dbg !1005
  store i32 0, i32* %status, align 4, !dbg !1006
  br label %sw.epilog134, !dbg !1007

if.end106:                                        ; preds = %if.end102
  store i32 0, i32* %flags, align 4, !dbg !1008
  %91 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1009
  %pass_number = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %91, i32 0, i32 12, !dbg !1011
  %92 = load i8, i8* %pass_number, align 2, !dbg !1011
  %conv107 = zext i8 %92 to i32, !dbg !1009
  %cmp108 = icmp eq i32 %conv107, 3, !dbg !1012
  br i1 %cmp108, label %if.then110, label %if.end117, !dbg !1013

if.then110:                                       ; preds = %if.end106
  %93 = load i32, i32* %flags, align 4, !dbg !1014
  %or = or i32 %93, 8, !dbg !1014
  store i32 %or, i32* %flags, align 4, !dbg !1014
  %94 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1016
  %parse_flags111 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %94, i32 0, i32 20, !dbg !1018
  %95 = load i32, i32* %parse_flags111, align 4, !dbg !1018
  %and112 = and i32 %95, 1024, !dbg !1019
  %tobool113 = icmp ne i32 %and112, 0, !dbg !1019
  br i1 %tobool113, label %if.end116, label %if.then114, !dbg !1020

if.then114:                                       ; preds = %if.then110
  %96 = load i32, i32* %flags, align 4, !dbg !1021
  %or115 = or i32 %96, 64, !dbg !1021
  store i32 %or115, i32* %flags, align 4, !dbg !1021
  br label %if.end116, !dbg !1023

if.end116:                                        ; preds = %if.then114, %if.then110
  br label %if.end117, !dbg !1024

if.end117:                                        ; preds = %if.end116, %if.end106
  %97 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1025
  %op_info118 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %97, i32 0, i32 41, !dbg !1027
  %98 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info118, align 8, !dbg !1027
  %flags119 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %98, i32 0, i32 2, !dbg !1028
  %99 = load i16, i16* %flags119, align 4, !dbg !1028
  %conv120 = zext i16 %99 to i32, !dbg !1025
  %and121 = and i32 %conv120, 64, !dbg !1029
  %tobool122 = icmp ne i32 %and121, 0, !dbg !1029
  br i1 %tobool122, label %if.then123, label %if.end125, !dbg !1030

if.then123:                                       ; preds = %if.end117
  %100 = load i32, i32* %flags, align 4, !dbg !1031
  %or124 = or i32 %100, 512, !dbg !1031
  store i32 %or124, i32* %flags, align 4, !dbg !1031
  br label %if.end125, !dbg !1033

if.end125:                                        ; preds = %if.then123, %if.end117
  %101 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1034
  %scope_info126 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %101, i32 0, i32 46, !dbg !1035
  %102 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info126, align 8, !dbg !1035
  %103 = load i8*, i8** %buffer_ptr, align 8, !dbg !1036
  %104 = load i32, i32* %object_type, align 4, !dbg !1037
  %105 = load i32, i32* %flags, align 4, !dbg !1038
  %106 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1039
  %call127 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %102, i8* %103, i32 %104, i32 2, i32 %105, %struct.acpi_walk_state* %106, %struct.acpi_namespace_node** %node) #3, !dbg !1040
  store i32 %call127, i32* %status, align 4, !dbg !1041
  %107 = load i32, i32* %status, align 4, !dbg !1042
  %tobool128 = icmp ne i32 %107, 0, !dbg !1042
  br i1 %tobool128, label %if.end133, label %land.lhs.true129, !dbg !1044

land.lhs.true129:                                 ; preds = %if.end125
  %108 = load i32, i32* %flags, align 4, !dbg !1045
  %and130 = and i32 %108, 64, !dbg !1046
  %tobool131 = icmp ne i32 %and130, 0, !dbg !1046
  br i1 %tobool131, label %if.then132, label %if.end133, !dbg !1047

if.then132:                                       ; preds = %land.lhs.true129
  br label %if.end133, !dbg !1048

if.end133:                                        ; preds = %if.then132, %land.lhs.true129, %if.end125
  br label %sw.epilog134, !dbg !1050

sw.epilog134:                                     ; preds = %if.end133, %if.then104, %sw.epilog, %sw.bb38, %sw.bb
  %109 = load i32, i32* %status, align 4, !dbg !1051
  %tobool135 = icmp ne i32 %109, 0, !dbg !1051
  br i1 %tobool135, label %if.then136, label %if.end138, !dbg !1053

if.then136:                                       ; preds = %sw.epilog134
  %110 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1054
  %scope_info137 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %110, i32 0, i32 46, !dbg !1054
  %111 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info137, align 8, !dbg !1054
  %112 = load i8*, i8** %buffer_ptr, align 8, !dbg !1054
  %113 = load i32, i32* %status, align 4, !dbg !1054
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 327, %union.acpi_generic_state* %111, i8* %112, i32 %113) #3, !dbg !1054
  %114 = load i32, i32* %status, align 4, !dbg !1056
  store i32 %114, i32* %retval, align 4, !dbg !1056
  br label %return, !dbg !1056

if.end138:                                        ; preds = %sw.epilog134
  %115 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1057
  %tobool139 = icmp ne %union.acpi_parse_object* %115, null, !dbg !1057
  br i1 %tobool139, label %if.end152, label %if.then140, !dbg !1059

if.then140:                                       ; preds = %if.end138
  %116 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1060
  %opcode141 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %116, i32 0, i32 3, !dbg !1062
  %117 = load i16, i16* %opcode141, align 2, !dbg !1062
  %118 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1063
  %aml = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %118, i32 0, i32 16, !dbg !1064
  %119 = load i8*, i8** %aml, align 8, !dbg !1064
  %call142 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext %117, i8* %119) #3, !dbg !1065
  store %union.acpi_parse_object* %call142, %union.acpi_parse_object** %op, align 8, !dbg !1066
  %120 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1067
  %tobool143 = icmp ne %union.acpi_parse_object* %120, null, !dbg !1067
  br i1 %tobool143, label %if.end145, label %if.then144, !dbg !1069

if.then144:                                       ; preds = %if.then140
  store i32 4, i32* %retval, align 4, !dbg !1070
  br label %return, !dbg !1070

if.end145:                                        ; preds = %if.then140
  %121 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1072
  %tobool146 = icmp ne %struct.acpi_namespace_node* %121, null, !dbg !1072
  br i1 %tobool146, label %if.then147, label %if.end151, !dbg !1074

if.then147:                                       ; preds = %if.end145
  %122 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1075
  %name148 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %122, i32 0, i32 4, !dbg !1077
  %integer = bitcast %union.acpi_name_union* %name148 to i32*, !dbg !1078
  %123 = load i32, i32* %integer, align 4, !dbg !1078
  %124 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1079
  %named149 = bitcast %union.acpi_parse_object* %124 to %struct.acpi_parse_obj_named*, !dbg !1080
  %name150 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named149, i32 0, i32 12, !dbg !1081
  store i32 %123, i32* %name150, align 4, !dbg !1082
  br label %if.end151, !dbg !1083

if.end151:                                        ; preds = %if.then147, %if.end145
  %125 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1084
  %126 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %out_op.addr, align 8, !dbg !1085
  store %union.acpi_parse_object* %125, %union.acpi_parse_object** %126, align 8, !dbg !1086
  br label %if.end152, !dbg !1087

if.end152:                                        ; preds = %if.end151, %if.end138
  %127 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1088
  %128 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1089
  %common153 = bitcast %union.acpi_parse_object* %128 to %struct.acpi_parse_obj_common*, !dbg !1090
  %node154 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common153, i32 0, i32 6, !dbg !1091
  store %struct.acpi_namespace_node* %127, %struct.acpi_namespace_node** %node154, align 8, !dbg !1092
  %129 = load i32, i32* %status, align 4, !dbg !1093
  store i32 %129, i32* %retval, align 4, !dbg !1093
  br label %return, !dbg !1093

return:                                           ; preds = %if.end152, %if.then144, %if.then136, %if.end101, %if.then99, %sw.default, %if.then58, %if.then52, %if.then27, %if.then18, %if.then5
  %130 = load i32, i32* %retval, align 4, !dbg !1094
  ret i32 %130, !dbg !1094
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_exec_begin_op(%struct.acpi_walk_state*, %union.acpi_parse_object**) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ps_get_next_namestring(%struct.acpi_parse_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_lookup(%union.acpi_generic_state*, i8*, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node*, i32, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_prefixed_namespace_error(i8*, i32, %union.acpi_generic_state*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_node_name(i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_opens_scope(i32) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_load2_end_op(%struct.acpi_walk_state* %walk_state) #0 !dbg !1095 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %object_type = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  %arg = alloca %union.acpi_parse_object*, align 8
  %new_node = alloca %struct.acpi_namespace_node*, align 8
  %i = alloca i32, align 4
  %region_space = alloca i8, align 1
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1096, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op, metadata !1098, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1100, metadata !DIExpression()), !dbg !1101
  store i32 0, i32* %status, align 4, !dbg !1101
  call void @llvm.dbg.declare(metadata i32* %object_type, metadata !1102, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !1106, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %new_node, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1110, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.declare(metadata i8* %region_space, metadata !1112, metadata !DIExpression()), !dbg !1113
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1114
  %op1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 40, !dbg !1115
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op1, align 8, !dbg !1115
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %op, align 8, !dbg !1116
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1117
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 41, !dbg !1119
  %3 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1119
  %flags = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %3, i32 0, i32 2, !dbg !1120
  %4 = load i16, i16* %flags, align 4, !dbg !1120
  %conv = zext i16 %4 to i32, !dbg !1117
  %and = and i32 %conv, 512, !dbg !1121
  %tobool = icmp ne i32 %and, 0, !dbg !1121
  br i1 %tobool, label %if.end, label %if.then, !dbg !1122

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1123
  br label %return, !dbg !1123

if.end:                                           ; preds = %entry
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1125
  %common = bitcast %union.acpi_parse_object* %5 to %struct.acpi_parse_obj_common*, !dbg !1127
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !1128
  %6 = load i16, i16* %aml_opcode, align 2, !dbg !1128
  %conv2 = zext i16 %6 to i32, !dbg !1125
  %cmp = icmp eq i32 %conv2, 16, !dbg !1129
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !1130

if.then4:                                         ; preds = %if.end
  br label %if.end5, !dbg !1131

if.end5:                                          ; preds = %if.then4, %if.end
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1133
  %op_info6 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 41, !dbg !1134
  %8 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info6, align 8, !dbg !1134
  %object_type7 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %8, i32 0, i32 3, !dbg !1135
  %9 = load i8, i8* %object_type7, align 2, !dbg !1135
  %conv8 = zext i8 %9 to i32, !dbg !1133
  store i32 %conv8, i32* %object_type, align 4, !dbg !1136
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1137
  %common9 = bitcast %union.acpi_parse_object* %10 to %struct.acpi_parse_obj_common*, !dbg !1138
  %node10 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common9, i32 0, i32 6, !dbg !1139
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node10, align 8, !dbg !1139
  store %struct.acpi_namespace_node* %11, %struct.acpi_namespace_node** %node, align 8, !dbg !1140
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1141
  %13 = bitcast %struct.acpi_namespace_node* %12 to i8*, !dbg !1142
  %14 = bitcast i8* %13 to %union.acpi_operand_object*, !dbg !1142
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1143
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 28, !dbg !1144
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !1143
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %arrayidx, align 8, !dbg !1145
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1146
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 5, !dbg !1147
  store i8 1, i8* %num_operands, align 1, !dbg !1148
  %17 = load i32, i32* %object_type, align 4, !dbg !1149
  %call = call i32 @acpi_ns_opens_scope(i32 %17) #3, !dbg !1151
  %tobool11 = icmp ne i32 %call, 0, !dbg !1151
  br i1 %tobool11, label %land.lhs.true, label %if.end22, !dbg !1152

land.lhs.true:                                    ; preds = %if.end5
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1153
  %common12 = bitcast %union.acpi_parse_object* %18 to %struct.acpi_parse_obj_common*, !dbg !1154
  %aml_opcode13 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common12, i32 0, i32 3, !dbg !1155
  %19 = load i16, i16* %aml_opcode13, align 2, !dbg !1155
  %conv14 = zext i16 %19 to i32, !dbg !1153
  %cmp15 = icmp ne i32 %conv14, 53, !dbg !1156
  br i1 %cmp15, label %if.then17, label %if.end22, !dbg !1157

if.then17:                                        ; preds = %land.lhs.true
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1158
  %call18 = call i32 @acpi_ds_scope_stack_pop(%struct.acpi_walk_state* %20) #3, !dbg !1160
  store i32 %call18, i32* %status, align 4, !dbg !1161
  %21 = load i32, i32* %status, align 4, !dbg !1162
  %tobool19 = icmp ne i32 %21, 0, !dbg !1162
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1164

if.then20:                                        ; preds = %if.then17
  br label %cleanup, !dbg !1165

if.end21:                                         ; preds = %if.then17
  br label %if.end22, !dbg !1167

if.end22:                                         ; preds = %if.end21, %land.lhs.true, %if.end5
  %22 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1168
  %common23 = bitcast %union.acpi_parse_object* %22 to %struct.acpi_parse_obj_common*, !dbg !1169
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common23, i32 0, i32 7, !dbg !1170
  %arg24 = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !1171
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg24, align 8, !dbg !1171
  store %union.acpi_parse_object* %23, %union.acpi_parse_object** %arg, align 8, !dbg !1172
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1173
  %op_info25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 41, !dbg !1174
  %25 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info25, align 8, !dbg !1174
  %type = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %25, i32 0, i32 5, !dbg !1175
  %26 = load i8, i8* %type, align 4, !dbg !1175
  %conv26 = zext i8 %26 to i32, !dbg !1173
  switch i32 %conv26, label %sw.default167 [
    i32 18, label %sw.bb
    i32 22, label %sw.bb31
    i32 23, label %sw.bb51
    i32 24, label %sw.bb80
    i32 7, label %sw.bb146
    i32 9, label %sw.bb147
  ], !dbg !1176

sw.bb:                                            ; preds = %if.end22
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1177
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1179
  %call27 = call i32 @acpi_ds_create_buffer_field(%union.acpi_parse_object* %27, %struct.acpi_walk_state* %28) #3, !dbg !1180
  store i32 %call27, i32* %status, align 4, !dbg !1181
  %29 = load i32, i32* %status, align 4, !dbg !1182
  %tobool28 = icmp ne i32 %29, 0, !dbg !1182
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1184

if.then29:                                        ; preds = %sw.bb
  %30 = load i32, i32* %status, align 4, !dbg !1185
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 477, i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !1185
  br label %cleanup, !dbg !1187

if.end30:                                         ; preds = %sw.bb
  br label %sw.epilog168, !dbg !1188

sw.bb31:                                          ; preds = %if.end22
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1189
  %method_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %31, i32 0, i32 38, !dbg !1191
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !1191
  %tobool32 = icmp ne %struct.acpi_namespace_node* %32, null, !dbg !1189
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !1192

if.then33:                                        ; preds = %sw.bb31
  %33 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1193
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1195
  %call34 = call i32 @acpi_ds_init_field_objects(%union.acpi_parse_object* %33, %struct.acpi_walk_state* %34) #3, !dbg !1196
  store i32 %call34, i32* %status, align 4, !dbg !1197
  br label %if.end35, !dbg !1198

if.end35:                                         ; preds = %if.then33, %sw.bb31
  %35 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1199
  %common36 = bitcast %union.acpi_parse_object* %35 to %struct.acpi_parse_obj_common*, !dbg !1200
  %aml_opcode37 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common36, i32 0, i32 3, !dbg !1201
  %36 = load i16, i16* %aml_opcode37, align 2, !dbg !1201
  %conv38 = zext i16 %36 to i32, !dbg !1199
  switch i32 %conv38, label %sw.default [
    i32 23430, label %sw.bb39
    i32 23431, label %sw.bb43
    i32 23425, label %sw.bb47
  ], !dbg !1202

sw.bb39:                                          ; preds = %if.end35
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1203
  %38 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1205
  %common40 = bitcast %union.acpi_parse_object* %38 to %struct.acpi_parse_obj_common*, !dbg !1206
  %node41 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common40, i32 0, i32 6, !dbg !1207
  %39 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node41, align 8, !dbg !1207
  %40 = bitcast %struct.acpi_namespace_node* %39 to i8*, !dbg !1208
  %41 = bitcast i8* %40 to %struct.acpi_namespace_node*, !dbg !1208
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1209
  %call42 = call i32 @acpi_ds_create_index_field(%union.acpi_parse_object* %37, %struct.acpi_namespace_node* %41, %struct.acpi_walk_state* %42) #3, !dbg !1210
  store i32 %call42, i32* %status, align 4, !dbg !1211
  br label %sw.epilog, !dbg !1212

sw.bb43:                                          ; preds = %if.end35
  %43 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1213
  %44 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1214
  %common44 = bitcast %union.acpi_parse_object* %44 to %struct.acpi_parse_obj_common*, !dbg !1215
  %node45 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common44, i32 0, i32 6, !dbg !1216
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node45, align 8, !dbg !1216
  %46 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1217
  %call46 = call i32 @acpi_ds_create_bank_field(%union.acpi_parse_object* %43, %struct.acpi_namespace_node* %45, %struct.acpi_walk_state* %46) #3, !dbg !1218
  store i32 %call46, i32* %status, align 4, !dbg !1219
  br label %sw.epilog, !dbg !1220

sw.bb47:                                          ; preds = %if.end35
  %47 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1221
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1222
  %common48 = bitcast %union.acpi_parse_object* %48 to %struct.acpi_parse_obj_common*, !dbg !1223
  %node49 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common48, i32 0, i32 6, !dbg !1224
  %49 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node49, align 8, !dbg !1224
  %50 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1225
  %call50 = call i32 @acpi_ds_create_field(%union.acpi_parse_object* %47, %struct.acpi_namespace_node* %49, %struct.acpi_walk_state* %50) #3, !dbg !1226
  store i32 %call50, i32* %status, align 4, !dbg !1227
  br label %sw.epilog, !dbg !1228

sw.default:                                       ; preds = %if.end35
  br label %sw.epilog, !dbg !1229

sw.epilog:                                        ; preds = %sw.default, %sw.bb47, %sw.bb43, %sw.bb39
  br label %sw.epilog168, !dbg !1230

sw.bb51:                                          ; preds = %if.end22
  %51 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1231
  %52 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1232
  %call52 = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %51, %union.acpi_parse_object* %52) #3, !dbg !1233
  store i32 %call52, i32* %status, align 4, !dbg !1234
  %53 = load i32, i32* %status, align 4, !dbg !1235
  %tobool53 = icmp ne i32 %53, 0, !dbg !1235
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !1237

if.then54:                                        ; preds = %sw.bb51
  br label %cleanup, !dbg !1238

if.end55:                                         ; preds = %sw.bb51
  %54 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1240
  %common56 = bitcast %union.acpi_parse_object* %54 to %struct.acpi_parse_obj_common*, !dbg !1241
  %aml_opcode57 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common56, i32 0, i32 3, !dbg !1242
  %55 = load i16, i16* %aml_opcode57, align 2, !dbg !1242
  %conv58 = zext i16 %55 to i32, !dbg !1240
  switch i32 %conv58, label %sw.default69 [
    i32 23427, label %sw.bb59
    i32 23428, label %sw.bb61
    i32 23297, label %sw.bb63
    i32 23298, label %sw.bb65
    i32 6, label %sw.bb67
  ], !dbg !1243

sw.bb59:                                          ; preds = %if.end55
  %56 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1244
  %call60 = call i32 @acpi_ex_create_processor(%struct.acpi_walk_state* %56) #3, !dbg !1246
  store i32 %call60, i32* %status, align 4, !dbg !1247
  br label %sw.epilog70, !dbg !1248

sw.bb61:                                          ; preds = %if.end55
  %57 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1249
  %call62 = call i32 @acpi_ex_create_power_resource(%struct.acpi_walk_state* %57) #3, !dbg !1250
  store i32 %call62, i32* %status, align 4, !dbg !1251
  br label %sw.epilog70, !dbg !1252

sw.bb63:                                          ; preds = %if.end55
  %58 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1253
  %call64 = call i32 @acpi_ex_create_mutex(%struct.acpi_walk_state* %58) #3, !dbg !1254
  store i32 %call64, i32* %status, align 4, !dbg !1255
  br label %sw.epilog70, !dbg !1256

sw.bb65:                                          ; preds = %if.end55
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1257
  %call66 = call i32 @acpi_ex_create_event(%struct.acpi_walk_state* %59) #3, !dbg !1258
  store i32 %call66, i32* %status, align 4, !dbg !1259
  br label %sw.epilog70, !dbg !1260

sw.bb67:                                          ; preds = %if.end55
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1261
  %call68 = call i32 @acpi_ex_create_alias(%struct.acpi_walk_state* %60) #3, !dbg !1262
  store i32 %call68, i32* %status, align 4, !dbg !1263
  br label %sw.epilog70, !dbg !1264

sw.default69:                                     ; preds = %if.end55
  store i32 0, i32* %status, align 4, !dbg !1265
  br label %cleanup, !dbg !1266

sw.epilog70:                                      ; preds = %sw.bb67, %sw.bb65, %sw.bb63, %sw.bb61, %sw.bb59
  store i32 1, i32* %i, align 4, !dbg !1267
  br label %for.cond, !dbg !1269

for.cond:                                         ; preds = %for.inc, %sw.epilog70
  %61 = load i32, i32* %i, align 4, !dbg !1270
  %62 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1272
  %num_operands71 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %62, i32 0, i32 5, !dbg !1273
  %63 = load i8, i8* %num_operands71, align 1, !dbg !1273
  %conv72 = zext i8 %63 to i32, !dbg !1272
  %cmp73 = icmp ult i32 %61, %conv72, !dbg !1274
  br i1 %cmp73, label %for.body, label %for.end, !dbg !1275

for.body:                                         ; preds = %for.cond
  %64 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1276
  %operands75 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %64, i32 0, i32 28, !dbg !1278
  %65 = load i32, i32* %i, align 4, !dbg !1279
  %idxprom = zext i32 %65 to i64, !dbg !1276
  %arrayidx76 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands75, i64 0, i64 %idxprom, !dbg !1276
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx76, align 8, !dbg !1276
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %66) #3, !dbg !1280
  %67 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1281
  %operands77 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %67, i32 0, i32 28, !dbg !1282
  %68 = load i32, i32* %i, align 4, !dbg !1283
  %idxprom78 = zext i32 %68 to i64, !dbg !1281
  %arrayidx79 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands77, i64 0, i64 %idxprom78, !dbg !1281
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx79, align 8, !dbg !1284
  br label %for.inc, !dbg !1285

for.inc:                                          ; preds = %for.body
  %69 = load i32, i32* %i, align 4, !dbg !1286
  %inc = add i32 %69, 1, !dbg !1286
  store i32 %inc, i32* %i, align 4, !dbg !1286
  br label %for.cond, !dbg !1287, !llvm.loop !1288

for.end:                                          ; preds = %for.cond
  br label %sw.epilog168, !dbg !1290

sw.bb80:                                          ; preds = %if.end22
  %70 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1291
  %common81 = bitcast %union.acpi_parse_object* %70 to %struct.acpi_parse_obj_common*, !dbg !1292
  %aml_opcode82 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common81, i32 0, i32 3, !dbg !1293
  %71 = load i16, i16* %aml_opcode82, align 2, !dbg !1293
  %conv83 = zext i16 %71 to i32, !dbg !1291
  switch i32 %conv83, label %sw.default144 [
    i32 23424, label %sw.bb84
    i32 23432, label %sw.bb84
    i32 8, label %sw.bb109
    i32 20, label %sw.bb114
  ], !dbg !1294

sw.bb84:                                          ; preds = %sw.bb80, %sw.bb80
  %72 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1295
  %common85 = bitcast %union.acpi_parse_object* %72 to %struct.acpi_parse_obj_common*, !dbg !1298
  %aml_opcode86 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common85, i32 0, i32 3, !dbg !1299
  %73 = load i16, i16* %aml_opcode86, align 2, !dbg !1299
  %conv87 = zext i16 %73 to i32, !dbg !1295
  %cmp88 = icmp eq i32 %conv87, 23424, !dbg !1300
  br i1 %cmp88, label %if.then90, label %if.else, !dbg !1301

if.then90:                                        ; preds = %sw.bb84
  %74 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1302
  %common91 = bitcast %union.acpi_parse_object* %74 to %struct.acpi_parse_obj_common*, !dbg !1304
  %value92 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common91, i32 0, i32 7, !dbg !1305
  %arg93 = bitcast %union.acpi_parse_value* %value92 to %union.acpi_parse_object**, !dbg !1306
  %75 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg93, align 8, !dbg !1306
  %common94 = bitcast %union.acpi_parse_object* %75 to %struct.acpi_parse_obj_common*, !dbg !1307
  %value95 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common94, i32 0, i32 7, !dbg !1308
  %integer = bitcast %union.acpi_parse_value* %value95 to i64*, !dbg !1309
  %76 = load i64, i64* %integer, align 8, !dbg !1309
  %conv96 = trunc i64 %76 to i8, !dbg !1310
  store i8 %conv96, i8* %region_space, align 1, !dbg !1311
  br label %if.end97, !dbg !1312

if.else:                                          ; preds = %sw.bb84
  store i8 126, i8* %region_space, align 1, !dbg !1313
  br label %if.end97

if.end97:                                         ; preds = %if.else, %if.then90
  %77 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1315
  %method_node98 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %77, i32 0, i32 38, !dbg !1317
  %78 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node98, align 8, !dbg !1317
  %tobool99 = icmp ne %struct.acpi_namespace_node* %78, null, !dbg !1315
  br i1 %tobool99, label %if.then100, label %if.end106, !dbg !1318

if.then100:                                       ; preds = %if.end97
  %79 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1319
  %named = bitcast %union.acpi_parse_object* %79 to %struct.acpi_parse_obj_named*, !dbg !1321
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 10, !dbg !1322
  %80 = load i8*, i8** %data, align 8, !dbg !1322
  %81 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1323
  %named101 = bitcast %union.acpi_parse_object* %81 to %struct.acpi_parse_obj_named*, !dbg !1324
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named101, i32 0, i32 11, !dbg !1325
  %82 = load i32, i32* %length, align 8, !dbg !1325
  %83 = load i8, i8* %region_space, align 1, !dbg !1326
  %84 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1327
  %call102 = call i32 @acpi_ex_create_region(i8* %80, i32 %82, i8 zeroext %83, %struct.acpi_walk_state* %84) #3, !dbg !1328
  store i32 %call102, i32* %status, align 4, !dbg !1329
  %85 = load i32, i32* %status, align 4, !dbg !1330
  %tobool103 = icmp ne i32 %85, 0, !dbg !1330
  br i1 %tobool103, label %if.then104, label %if.end105, !dbg !1332

if.then104:                                       ; preds = %if.then100
  %86 = load i32, i32* %status, align 4, !dbg !1333
  store i32 %86, i32* %retval, align 4, !dbg !1333
  br label %return, !dbg !1333

if.end105:                                        ; preds = %if.then100
  br label %if.end106, !dbg !1335

if.end106:                                        ; preds = %if.end105, %if.end97
  %87 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1336
  %call107 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %87) #3, !dbg !1337
  %call108 = call i32 @acpi_ev_initialize_region(%union.acpi_operand_object* %call107) #3, !dbg !1338
  store i32 %call108, i32* %status, align 4, !dbg !1339
  br label %sw.epilog145, !dbg !1340

sw.bb109:                                         ; preds = %sw.bb80
  %88 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1341
  %89 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1342
  %90 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1343
  %call110 = call i32 @acpi_ds_create_node(%struct.acpi_walk_state* %88, %struct.acpi_namespace_node* %89, %union.acpi_parse_object* %90) #3, !dbg !1344
  store i32 %call110, i32* %status, align 4, !dbg !1345
  %91 = load i32, i32* %status, align 4, !dbg !1346
  %tobool111 = icmp ne i32 %91, 0, !dbg !1346
  br i1 %tobool111, label %if.then112, label %if.end113, !dbg !1348

if.then112:                                       ; preds = %sw.bb109
  br label %cleanup, !dbg !1349

if.end113:                                        ; preds = %sw.bb109
  br label %sw.epilog145, !dbg !1351

sw.bb114:                                         ; preds = %sw.bb80
  %92 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1352
  %named115 = bitcast %union.acpi_parse_object* %92 to %struct.acpi_parse_obj_named*, !dbg !1354
  %node116 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named115, i32 0, i32 6, !dbg !1355
  %93 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node116, align 8, !dbg !1355
  %call117 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %93) #3, !dbg !1356
  %tobool118 = icmp ne %union.acpi_operand_object* %call117, null, !dbg !1356
  br i1 %tobool118, label %if.end143, label %if.then119, !dbg !1357

if.then119:                                       ; preds = %sw.bb114
  %94 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1358
  %named120 = bitcast %union.acpi_parse_object* %94 to %struct.acpi_parse_obj_named*, !dbg !1358
  %node121 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named120, i32 0, i32 6, !dbg !1358
  %95 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node121, align 8, !dbg !1358
  %96 = bitcast %struct.acpi_namespace_node* %95 to i8*, !dbg !1358
  %97 = bitcast i8* %96 to %union.acpi_operand_object*, !dbg !1358
  %98 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1360
  %operands122 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %98, i32 0, i32 28, !dbg !1361
  %arrayidx123 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands122, i64 0, i64 0, !dbg !1360
  store %union.acpi_operand_object* %97, %union.acpi_operand_object** %arrayidx123, align 8, !dbg !1362
  %99 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1363
  %num_operands124 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %99, i32 0, i32 5, !dbg !1364
  store i8 1, i8* %num_operands124, align 1, !dbg !1365
  %100 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1366
  %101 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1367
  %common125 = bitcast %union.acpi_parse_object* %101 to %struct.acpi_parse_obj_common*, !dbg !1368
  %value126 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common125, i32 0, i32 7, !dbg !1369
  %arg127 = bitcast %union.acpi_parse_value* %value126 to %union.acpi_parse_object**, !dbg !1370
  %102 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg127, align 8, !dbg !1370
  %call128 = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %100, %union.acpi_parse_object* %102) #3, !dbg !1371
  store i32 %call128, i32* %status, align 4, !dbg !1372
  %103 = load i32, i32* %status, align 4, !dbg !1373
  %tobool129 = icmp ne i32 %103, 0, !dbg !1373
  br i1 %tobool129, label %if.end136, label %if.then130, !dbg !1375

if.then130:                                       ; preds = %if.then119
  %104 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1376
  %named131 = bitcast %union.acpi_parse_object* %104 to %struct.acpi_parse_obj_named*, !dbg !1378
  %data132 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named131, i32 0, i32 10, !dbg !1379
  %105 = load i8*, i8** %data132, align 8, !dbg !1379
  %106 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1380
  %named133 = bitcast %union.acpi_parse_object* %106 to %struct.acpi_parse_obj_named*, !dbg !1381
  %length134 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named133, i32 0, i32 11, !dbg !1382
  %107 = load i32, i32* %length134, align 8, !dbg !1382
  %108 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1383
  %call135 = call i32 @acpi_ex_create_method(i8* %105, i32 %107, %struct.acpi_walk_state* %108) #3, !dbg !1384
  store i32 %call135, i32* %status, align 4, !dbg !1385
  br label %if.end136, !dbg !1386

if.end136:                                        ; preds = %if.then130, %if.then119
  %109 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1387
  %operands137 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %109, i32 0, i32 28, !dbg !1388
  %arrayidx138 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands137, i64 0, i64 0, !dbg !1387
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx138, align 8, !dbg !1389
  %110 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1390
  %num_operands139 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %110, i32 0, i32 5, !dbg !1391
  store i8 0, i8* %num_operands139, align 1, !dbg !1392
  %111 = load i32, i32* %status, align 4, !dbg !1393
  %tobool140 = icmp ne i32 %111, 0, !dbg !1393
  br i1 %tobool140, label %if.then141, label %if.end142, !dbg !1395

if.then141:                                       ; preds = %if.end136
  %112 = load i32, i32* %status, align 4, !dbg !1396
  store i32 %112, i32* %retval, align 4, !dbg !1396
  br label %return, !dbg !1396

if.end142:                                        ; preds = %if.end136
  br label %if.end143, !dbg !1398

if.end143:                                        ; preds = %if.end142, %sw.bb114
  br label %sw.epilog145, !dbg !1399

sw.default144:                                    ; preds = %sw.bb80
  br label %sw.epilog145, !dbg !1400

sw.epilog145:                                     ; preds = %sw.default144, %if.end143, %if.end113, %if.end106
  br label %sw.epilog168, !dbg !1401

sw.bb146:                                         ; preds = %if.end22
  br label %sw.epilog168, !dbg !1402

sw.bb147:                                         ; preds = %if.end22
  %113 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1403
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %113, i32 0, i32 46, !dbg !1404
  %114 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !1404
  %115 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1405
  %common148 = bitcast %union.acpi_parse_object* %115 to %struct.acpi_parse_obj_common*, !dbg !1406
  %value149 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common148, i32 0, i32 7, !dbg !1407
  %string = bitcast %union.acpi_parse_value* %value149 to i8**, !dbg !1408
  %116 = load i8*, i8** %string, align 8, !dbg !1408
  %117 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1409
  %call150 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %114, i8* %116, i32 0, i32 2, i32 3, %struct.acpi_walk_state* %117, %struct.acpi_namespace_node** %new_node) #3, !dbg !1410
  store i32 %call150, i32* %status, align 4, !dbg !1411
  %118 = load i32, i32* %status, align 4, !dbg !1412
  %tobool151 = icmp ne i32 %118, 0, !dbg !1412
  br i1 %tobool151, label %if.else161, label %if.then152, !dbg !1414

if.then152:                                       ; preds = %sw.bb147
  %119 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !1415
  %type153 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %119, i32 0, i32 2, !dbg !1418
  %120 = load i8, i8* %type153, align 1, !dbg !1418
  %conv154 = zext i8 %120 to i32, !dbg !1415
  %cmp155 = icmp ne i32 %conv154, 8, !dbg !1419
  br i1 %cmp155, label %if.then157, label %if.end158, !dbg !1420

if.then157:                                       ; preds = %if.then152
  store i32 12291, i32* %status, align 4, !dbg !1421
  br label %if.end158, !dbg !1423

if.end158:                                        ; preds = %if.then157, %if.then152
  %121 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !1424
  %122 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1425
  %common159 = bitcast %union.acpi_parse_object* %122 to %struct.acpi_parse_obj_common*, !dbg !1426
  %node160 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common159, i32 0, i32 6, !dbg !1427
  store %struct.acpi_namespace_node* %121, %struct.acpi_namespace_node** %node160, align 8, !dbg !1428
  br label %if.end166, !dbg !1429

if.else161:                                       ; preds = %sw.bb147
  %123 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1430
  %scope_info162 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %123, i32 0, i32 46, !dbg !1430
  %124 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info162, align 8, !dbg !1430
  %125 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1430
  %common163 = bitcast %union.acpi_parse_object* %125 to %struct.acpi_parse_obj_common*, !dbg !1430
  %value164 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common163, i32 0, i32 7, !dbg !1430
  %string165 = bitcast %union.acpi_parse_value* %value164 to i8**, !dbg !1430
  %126 = load i8*, i8** %string165, align 8, !dbg !1430
  %127 = load i32, i32* %status, align 4, !dbg !1430
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 729, %union.acpi_generic_state* %124, i8* %126, i32 %127) #3, !dbg !1430
  br label %if.end166

if.end166:                                        ; preds = %if.else161, %if.end158
  br label %sw.epilog168, !dbg !1432

sw.default167:                                    ; preds = %if.end22
  br label %sw.epilog168, !dbg !1433

sw.epilog168:                                     ; preds = %sw.default167, %if.end166, %sw.bb146, %sw.epilog145, %for.end, %sw.epilog, %if.end30
  br label %cleanup, !dbg !1434

cleanup:                                          ; preds = %sw.epilog168, %if.then112, %sw.default69, %if.then54, %if.then29, %if.then20
  call void @llvm.dbg.label(metadata !1435), !dbg !1436
  %128 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1437
  %operands169 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %128, i32 0, i32 28, !dbg !1438
  %arrayidx170 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands169, i64 0, i64 0, !dbg !1437
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx170, align 8, !dbg !1439
  %129 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1440
  %num_operands171 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %129, i32 0, i32 5, !dbg !1441
  store i8 0, i8* %num_operands171, align 1, !dbg !1442
  %130 = load i32, i32* %status, align 4, !dbg !1443
  store i32 %130, i32* %retval, align 4, !dbg !1443
  br label %return, !dbg !1443

return:                                           ; preds = %cleanup, %if.then141, %if.then104, %if.then
  %131 = load i32, i32* %retval, align 4, !dbg !1444
  ret i32 %131, !dbg !1444
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_scope_stack_pop(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_create_buffer_field(%union.acpi_parse_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_init_field_objects(%union.acpi_parse_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_create_index_field(%union.acpi_parse_object*, %struct.acpi_namespace_node*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_create_bank_field(%union.acpi_parse_object*, %struct.acpi_namespace_node*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_create_field(%union.acpi_parse_object*, %struct.acpi_namespace_node*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_create_operands(%struct.acpi_walk_state*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_create_processor(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_create_power_resource(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_create_mutex(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_create_event(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_create_alias(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_create_region(i8*, i32, i8 zeroext, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_initialize_region(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_create_node(%struct.acpi_walk_state*, %struct.acpi_namespace_node*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_create_method(i8*, i32, %struct.acpi_walk_state*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 23, type: !31, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dswload2.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3, isUnsigned: true)
!12 = !{!13, !18, !22, !24, !25, !26}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !17)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !7)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !24)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !19, line: 805, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !29)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !{!0}
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 72, elements: !33)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!33 = !{!34}
!34 = !DISubrange(count: 9)
!35 = !{i32 7, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"Code Model", i32 2}
!39 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!40 = distinct !DISubprogram(name: "acpi_ds_load2_begin_op", scope: !3, file: !3, line: 38, type: !41, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !796)
!41 = !DISubroutineType(types: !42)
!42 = !{!18, !43, !795}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !45, line: 37, size: 9024, elements: !46)
!45 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !66, !67, !68, !69, !70, !747, !748, !749, !750, !751, !755, !757, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !782, !783, !784, !785, !786, !787, !788, !789, !790, !793}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !45, line: 38, baseType: !43, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !44, file: !45, line: 39, baseType: !27, size: 8, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !44, file: !45, line: 40, baseType: !27, size: 8, offset: 72)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !44, file: !45, line: 41, baseType: !13, size: 16, offset: 80)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !44, file: !45, line: 42, baseType: !27, size: 8, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !44, file: !45, line: 43, baseType: !27, size: 8, offset: 104)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !44, file: !45, line: 44, baseType: !27, size: 8, offset: 112)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !44, file: !45, line: 45, baseType: !55, size: 16, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !13)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !44, file: !45, line: 46, baseType: !27, size: 8, offset: 144)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !44, file: !45, line: 47, baseType: !27, size: 8, offset: 152)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !44, file: !45, line: 48, baseType: !27, size: 8, offset: 160)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !44, file: !45, line: 49, baseType: !27, size: 8, offset: 168)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !44, file: !45, line: 50, baseType: !27, size: 8, offset: 176)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !44, file: !45, line: 51, baseType: !27, size: 8, offset: 184)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !44, file: !45, line: 52, baseType: !27, size: 8, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !44, file: !45, line: 53, baseType: !27, size: 8, offset: 200)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !44, file: !45, line: 54, baseType: !65, size: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !44, file: !45, line: 55, baseType: !20, size: 32, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !44, file: !45, line: 56, baseType: !20, size: 32, offset: 352)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !44, file: !45, line: 57, baseType: !20, size: 32, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !44, file: !45, line: 58, baseType: !20, size: 32, offset: 416)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !44, file: !45, line: 60, baseType: !71, size: 640, offset: 448)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !644, !645, !745, !746}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !71, file: !6, line: 894, baseType: !65, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !71, file: !6, line: 895, baseType: !65, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !71, file: !6, line: 896, baseType: !65, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !71, file: !6, line: 897, baseType: !65, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !71, file: !6, line: 898, baseType: !65, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !71, file: !6, line: 899, baseType: !79, size: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !81)
!81 = !{!82, !587, !603}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !80, file: !6, line: 876, baseType: !83, size: 448)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !577, !586}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !83, file: !6, line: 829, baseType: !79, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !83, file: !6, line: 829, baseType: !27, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !6, line: 829, baseType: !27, size: 8, offset: 72)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !83, file: !6, line: 829, baseType: !13, size: 16, offset: 80)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !83, file: !6, line: 829, baseType: !65, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !83, file: !6, line: 829, baseType: !79, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !83, file: !6, line: 829, baseType: !92, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !94)
!94 = !{!95, !561, !562, !563, !564, !573, !574, !575, !576}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !93, file: !6, line: 134, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !98, line: 367, size: 576, elements: !99)
!98 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !108, !124, !134, !147, !161, !170, !196, !225, !240, !253, !331, !343, !357, !367, !385, !407, !426, !445, !464, !481, !507, !524, !537, !551, !560}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !97, file: !98, line: 368, baseType: !101, size: 128)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !98, line: 73, size: 128, elements: !102)
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !101, file: !98, line: 74, baseType: !96, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !101, file: !98, line: 74, baseType: !27, size: 8, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !98, line: 74, baseType: !27, size: 8, offset: 72)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !101, file: !98, line: 74, baseType: !13, size: 16, offset: 80)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !98, line: 74, baseType: !27, size: 8, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !97, file: !98, line: 369, baseType: !109, size: 192)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !98, line: 76, size: 192, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116, !120}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !109, file: !98, line: 77, baseType: !96, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !109, file: !98, line: 77, baseType: !27, size: 8, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !98, line: 77, baseType: !27, size: 8, offset: 72)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !109, file: !98, line: 77, baseType: !13, size: 16, offset: 80)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !98, line: 77, baseType: !27, size: 8, offset: 96)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !109, file: !98, line: 77, baseType: !117, size: 24, offset: 104)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 3)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !109, file: !98, line: 78, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !14, line: 23, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !123)
!123 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !97, file: !98, line: 370, baseType: !125, size: 256)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !98, line: 93, size: 256, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !125, file: !98, line: 94, baseType: !96, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !98, line: 94, baseType: !27, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !98, line: 94, baseType: !27, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !125, file: !98, line: 94, baseType: !13, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !98, line: 94, baseType: !27, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !125, file: !98, line: 94, baseType: !22, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !125, file: !98, line: 94, baseType: !20, size: 32, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !97, file: !98, line: 371, baseType: !135, size: 384)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !98, line: 97, size: 384, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !135, file: !98, line: 98, baseType: !96, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !135, file: !98, line: 98, baseType: !27, size: 8, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !98, line: 98, baseType: !27, size: 8, offset: 72)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !135, file: !98, line: 98, baseType: !13, size: 16, offset: 80)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !135, file: !98, line: 98, baseType: !27, size: 8, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !135, file: !98, line: 98, baseType: !65, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !135, file: !98, line: 98, baseType: !20, size: 32, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !135, file: !98, line: 99, baseType: !20, size: 32, offset: 224)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !135, file: !98, line: 100, baseType: !65, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !135, file: !98, line: 101, baseType: !92, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !97, file: !98, line: 372, baseType: !148, size: 384)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !98, line: 104, size: 384, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !158, !159, !160}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !148, file: !98, line: 105, baseType: !96, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !148, file: !98, line: 105, baseType: !27, size: 8, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !148, file: !98, line: 105, baseType: !27, size: 8, offset: 72)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !148, file: !98, line: 105, baseType: !13, size: 16, offset: 80)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !98, line: 105, baseType: !27, size: 8, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !148, file: !98, line: 105, baseType: !92, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !148, file: !98, line: 106, baseType: !157, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !148, file: !98, line: 107, baseType: !65, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !148, file: !98, line: 108, baseType: !20, size: 32, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !148, file: !98, line: 109, baseType: !20, size: 32, offset: 352)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !97, file: !98, line: 373, baseType: !162, size: 192)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !98, line: 118, size: 192, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !162, file: !98, line: 119, baseType: !96, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !162, file: !98, line: 119, baseType: !27, size: 8, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !98, line: 119, baseType: !27, size: 8, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !162, file: !98, line: 119, baseType: !13, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !162, file: !98, line: 119, baseType: !27, size: 8, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !162, file: !98, line: 119, baseType: !24, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !97, file: !98, line: 374, baseType: !171, size: 448)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !98, line: 143, size: 448, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !193, !194, !195}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !171, file: !98, line: 144, baseType: !96, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !171, file: !98, line: 144, baseType: !27, size: 8, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !171, file: !98, line: 144, baseType: !27, size: 8, offset: 72)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !171, file: !98, line: 144, baseType: !13, size: 16, offset: 80)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !171, file: !98, line: 144, baseType: !27, size: 8, offset: 96)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !171, file: !98, line: 144, baseType: !27, size: 8, offset: 104)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !171, file: !98, line: 145, baseType: !27, size: 8, offset: 112)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !171, file: !98, line: 146, baseType: !27, size: 8, offset: 120)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !171, file: !98, line: 147, baseType: !96, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !171, file: !98, line: 148, baseType: !96, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !171, file: !98, line: 149, baseType: !65, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !171, file: !98, line: 153, baseType: !185, size: 64, offset: 320)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !98, line: 150, size: 64, elements: !186)
!186 = !{!187, !192}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !185, file: !98, line: 151, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!18, !43}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !185, file: !98, line: 152, baseType: !96, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !171, file: !98, line: 155, baseType: !20, size: 32, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !171, file: !98, line: 156, baseType: !55, size: 16, offset: 416)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !171, file: !98, line: 157, baseType: !27, size: 8, offset: 432)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !97, file: !98, line: 375, baseType: !197, size: 576)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !98, line: 122, size: 576, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !221, !222, !223, !224}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !197, file: !98, line: 123, baseType: !96, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !197, file: !98, line: 123, baseType: !27, size: 8, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !197, file: !98, line: 123, baseType: !27, size: 8, offset: 72)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !197, file: !98, line: 123, baseType: !13, size: 16, offset: 80)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !98, line: 123, baseType: !27, size: 8, offset: 96)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !197, file: !98, line: 123, baseType: !27, size: 8, offset: 104)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !197, file: !98, line: 124, baseType: !13, size: 16, offset: 112)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !197, file: !98, line: 125, baseType: !24, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !197, file: !98, line: 126, baseType: !121, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !197, file: !98, line: 127, baseType: !209, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !6, line: 621, baseType: !24, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !210, file: !6, line: 621, baseType: !27, size: 8, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !210, file: !6, line: 621, baseType: !27, size: 8, offset: 72)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !210, file: !6, line: 621, baseType: !13, size: 16, offset: 80)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !210, file: !6, line: 621, baseType: !13, size: 16, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !210, file: !6, line: 621, baseType: !27, size: 8, offset: 112)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !210, file: !6, line: 622, baseType: !43, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !210, file: !6, line: 623, baseType: !96, size: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !210, file: !6, line: 624, baseType: !121, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !197, file: !98, line: 128, baseType: !96, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !98, line: 129, baseType: !96, size: 64, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !197, file: !98, line: 130, baseType: !92, size: 64, offset: 448)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !197, file: !98, line: 131, baseType: !27, size: 8, offset: 512)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !97, file: !98, line: 376, baseType: !226, size: 448)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !98, line: 134, size: 448, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !239}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !226, file: !98, line: 135, baseType: !96, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !226, file: !98, line: 135, baseType: !27, size: 8, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !226, file: !98, line: 135, baseType: !27, size: 8, offset: 72)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !226, file: !98, line: 135, baseType: !13, size: 16, offset: 80)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !98, line: 135, baseType: !27, size: 8, offset: 96)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !226, file: !98, line: 135, baseType: !27, size: 8, offset: 104)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !226, file: !98, line: 136, baseType: !92, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !226, file: !98, line: 137, baseType: !96, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !98, line: 138, baseType: !96, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !226, file: !98, line: 139, baseType: !238, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !121)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !226, file: !98, line: 140, baseType: !20, size: 32, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !97, file: !98, line: 377, baseType: !241, size: 320)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !98, line: 184, size: 320, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !252}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !241, file: !98, line: 185, baseType: !96, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !241, file: !98, line: 185, baseType: !27, size: 8, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !241, file: !98, line: 185, baseType: !27, size: 8, offset: 72)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !241, file: !98, line: 185, baseType: !13, size: 16, offset: 80)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !98, line: 185, baseType: !27, size: 8, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !241, file: !98, line: 185, baseType: !249, size: 128, offset: 128)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 2)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !241, file: !98, line: 185, baseType: !96, size: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !97, file: !98, line: 378, baseType: !254, size: 384)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !98, line: 187, size: 384, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !254, file: !98, line: 188, baseType: !96, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !254, file: !98, line: 188, baseType: !27, size: 8, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !254, file: !98, line: 188, baseType: !27, size: 8, offset: 72)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !254, file: !98, line: 188, baseType: !13, size: 16, offset: 80)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !254, file: !98, line: 188, baseType: !27, size: 8, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !254, file: !98, line: 189, baseType: !249, size: 128, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !254, file: !98, line: 189, baseType: !96, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !254, file: !98, line: 189, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !266)
!266 = !{!267, !268, !269, !270, !278, !293, !325, !326, !327, !328, !329, !330}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !265, file: !6, line: 481, baseType: !92, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !265, file: !6, line: 482, baseType: !264, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !6, line: 483, baseType: !264, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !265, file: !6, line: 484, baseType: !271, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !273)
!273 = !{!274, !275, !276, !277}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !272, file: !6, line: 498, baseType: !271, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !6, line: 499, baseType: !271, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !272, file: !6, line: 500, baseType: !264, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !272, file: !6, line: 501, baseType: !20, size: 32, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !265, file: !6, line: 485, baseType: !279, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !281)
!281 = !{!282, !287, !288, !289, !290, !291, !292}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !280, file: !6, line: 467, baseType: !283, size: 128)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !284)
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !283, file: !6, line: 460, baseType: !27, size: 8)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !283, file: !6, line: 461, baseType: !121, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !280, file: !6, line: 468, baseType: !283, size: 128, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !280, file: !6, line: 469, baseType: !13, size: 16, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !280, file: !6, line: 470, baseType: !27, size: 8, offset: 272)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !280, file: !6, line: 471, baseType: !27, size: 8, offset: 280)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !280, file: !6, line: 472, baseType: !27, size: 8, offset: 288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !280, file: !6, line: 473, baseType: !27, size: 8, offset: 296)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !265, file: !6, line: 486, baseType: !294, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !296)
!296 = !{!297, !320, !321, !322, !323, !324}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !295, file: !6, line: 449, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !299)
!299 = !{!300, !301, !314}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !298, file: !6, line: 439, baseType: !92, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !298, file: !6, line: 440, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !304)
!304 = !{!305, !310, !311, !312, !313}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !303, file: !6, line: 420, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1049, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!20, !25, !20, !24}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !303, file: !6, line: 421, baseType: !24, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !303, file: !6, line: 422, baseType: !92, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !303, file: !6, line: 423, baseType: !27, size: 8, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !303, file: !6, line: 424, baseType: !27, size: 8, offset: 200)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !298, file: !6, line: 441, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !316, file: !6, line: 430, baseType: !92, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !6, line: 431, baseType: !315, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !295, file: !6, line: 450, baseType: !279, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !6, line: 451, baseType: !27, size: 8, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !295, file: !6, line: 452, baseType: !27, size: 8, offset: 136)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !295, file: !6, line: 453, baseType: !27, size: 8, offset: 144)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !295, file: !6, line: 454, baseType: !27, size: 8, offset: 152)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !265, file: !6, line: 487, baseType: !121, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !265, file: !6, line: 488, baseType: !20, size: 32, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !265, file: !6, line: 489, baseType: !13, size: 16, offset: 480)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !265, file: !6, line: 490, baseType: !13, size: 16, offset: 496)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !265, file: !6, line: 491, baseType: !27, size: 8, offset: 512)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !265, file: !6, line: 492, baseType: !27, size: 8, offset: 520)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !97, file: !98, line: 379, baseType: !332, size: 384)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !98, line: 192, size: 384, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !332, file: !98, line: 193, baseType: !96, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !98, line: 193, baseType: !27, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !332, file: !98, line: 193, baseType: !27, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !332, file: !98, line: 193, baseType: !13, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !98, line: 193, baseType: !27, size: 8, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !332, file: !98, line: 193, baseType: !249, size: 128, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !332, file: !98, line: 193, baseType: !96, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !332, file: !98, line: 193, baseType: !20, size: 32, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !332, file: !98, line: 194, baseType: !20, size: 32, offset: 352)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !97, file: !98, line: 380, baseType: !344, size: 384)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !98, line: 197, size: 384, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !344, file: !98, line: 198, baseType: !96, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !344, file: !98, line: 198, baseType: !27, size: 8, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !344, file: !98, line: 198, baseType: !27, size: 8, offset: 72)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !344, file: !98, line: 198, baseType: !13, size: 16, offset: 80)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !98, line: 198, baseType: !27, size: 8, offset: 96)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !344, file: !98, line: 200, baseType: !27, size: 8, offset: 104)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !344, file: !98, line: 201, baseType: !27, size: 8, offset: 112)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !344, file: !98, line: 202, baseType: !249, size: 128, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !344, file: !98, line: 202, baseType: !96, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !344, file: !98, line: 202, baseType: !356, size: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !121)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !97, file: !98, line: 381, baseType: !358, size: 320)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !98, line: 205, size: 320, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !358, file: !98, line: 206, baseType: !96, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !98, line: 206, baseType: !27, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !358, file: !98, line: 206, baseType: !27, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !358, file: !98, line: 206, baseType: !13, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !98, line: 206, baseType: !27, size: 8, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !358, file: !98, line: 206, baseType: !249, size: 128, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !358, file: !98, line: 206, baseType: !96, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !97, file: !98, line: 382, baseType: !368, size: 384)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !98, line: 233, size: 384, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !368, file: !98, line: 234, baseType: !96, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !368, file: !98, line: 234, baseType: !27, size: 8, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !368, file: !98, line: 234, baseType: !27, size: 8, offset: 72)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !368, file: !98, line: 234, baseType: !13, size: 16, offset: 80)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !98, line: 234, baseType: !27, size: 8, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !368, file: !98, line: 234, baseType: !27, size: 8, offset: 104)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !368, file: !98, line: 234, baseType: !27, size: 8, offset: 112)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !368, file: !98, line: 234, baseType: !27, size: 8, offset: 120)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !368, file: !98, line: 234, baseType: !92, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !368, file: !98, line: 234, baseType: !20, size: 32, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !368, file: !98, line: 234, baseType: !20, size: 32, offset: 224)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !368, file: !98, line: 234, baseType: !20, size: 32, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !368, file: !98, line: 234, baseType: !27, size: 8, offset: 288)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !368, file: !98, line: 234, baseType: !27, size: 8, offset: 296)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !368, file: !98, line: 234, baseType: !96, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !97, file: !98, line: 383, baseType: !386, size: 576)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !98, line: 237, size: 576, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !386, file: !98, line: 238, baseType: !96, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !386, file: !98, line: 238, baseType: !27, size: 8, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !386, file: !98, line: 238, baseType: !27, size: 8, offset: 72)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !386, file: !98, line: 238, baseType: !13, size: 16, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !98, line: 238, baseType: !27, size: 8, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !386, file: !98, line: 238, baseType: !27, size: 8, offset: 104)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !386, file: !98, line: 238, baseType: !27, size: 8, offset: 112)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !386, file: !98, line: 238, baseType: !27, size: 8, offset: 120)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !386, file: !98, line: 238, baseType: !92, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !386, file: !98, line: 238, baseType: !20, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !386, file: !98, line: 238, baseType: !20, size: 32, offset: 224)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !386, file: !98, line: 238, baseType: !20, size: 32, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !386, file: !98, line: 238, baseType: !27, size: 8, offset: 288)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !386, file: !98, line: 238, baseType: !27, size: 8, offset: 296)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !386, file: !98, line: 238, baseType: !13, size: 16, offset: 304)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !386, file: !98, line: 239, baseType: !96, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !386, file: !98, line: 240, baseType: !65, size: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !386, file: !98, line: 241, baseType: !13, size: 16, offset: 448)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !386, file: !98, line: 242, baseType: !65, size: 64, offset: 512)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !97, file: !98, line: 384, baseType: !408, size: 384)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !98, line: 262, size: 384, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !408, file: !98, line: 263, baseType: !96, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !408, file: !98, line: 263, baseType: !27, size: 8, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !408, file: !98, line: 263, baseType: !27, size: 8, offset: 72)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !408, file: !98, line: 263, baseType: !13, size: 16, offset: 80)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !98, line: 263, baseType: !27, size: 8, offset: 96)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !408, file: !98, line: 263, baseType: !27, size: 8, offset: 104)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !408, file: !98, line: 263, baseType: !27, size: 8, offset: 112)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !408, file: !98, line: 263, baseType: !27, size: 8, offset: 120)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !408, file: !98, line: 263, baseType: !92, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !408, file: !98, line: 263, baseType: !20, size: 32, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !408, file: !98, line: 263, baseType: !20, size: 32, offset: 224)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !408, file: !98, line: 263, baseType: !20, size: 32, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !408, file: !98, line: 263, baseType: !27, size: 8, offset: 288)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !408, file: !98, line: 263, baseType: !27, size: 8, offset: 296)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !408, file: !98, line: 263, baseType: !27, size: 8, offset: 304)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !408, file: !98, line: 264, baseType: !96, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !97, file: !98, line: 385, baseType: !427, size: 448)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !98, line: 245, size: 448, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !427, file: !98, line: 246, baseType: !96, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !427, file: !98, line: 246, baseType: !27, size: 8, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !427, file: !98, line: 246, baseType: !27, size: 8, offset: 72)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !427, file: !98, line: 246, baseType: !13, size: 16, offset: 80)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !427, file: !98, line: 246, baseType: !27, size: 8, offset: 96)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !427, file: !98, line: 246, baseType: !27, size: 8, offset: 104)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !427, file: !98, line: 246, baseType: !27, size: 8, offset: 112)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !427, file: !98, line: 246, baseType: !27, size: 8, offset: 120)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !427, file: !98, line: 246, baseType: !92, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !427, file: !98, line: 246, baseType: !20, size: 32, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !427, file: !98, line: 246, baseType: !20, size: 32, offset: 224)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !427, file: !98, line: 246, baseType: !20, size: 32, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !427, file: !98, line: 246, baseType: !27, size: 8, offset: 288)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !427, file: !98, line: 246, baseType: !27, size: 8, offset: 296)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !427, file: !98, line: 246, baseType: !96, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !427, file: !98, line: 247, baseType: !96, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !97, file: !98, line: 386, baseType: !446, size: 448)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !98, line: 250, size: 448, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !446, file: !98, line: 251, baseType: !96, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !446, file: !98, line: 251, baseType: !27, size: 8, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !446, file: !98, line: 251, baseType: !27, size: 8, offset: 72)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !446, file: !98, line: 251, baseType: !13, size: 16, offset: 80)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !98, line: 251, baseType: !27, size: 8, offset: 96)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !446, file: !98, line: 251, baseType: !27, size: 8, offset: 104)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !446, file: !98, line: 251, baseType: !27, size: 8, offset: 112)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !446, file: !98, line: 251, baseType: !27, size: 8, offset: 120)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !446, file: !98, line: 251, baseType: !92, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !446, file: !98, line: 251, baseType: !20, size: 32, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !446, file: !98, line: 251, baseType: !20, size: 32, offset: 224)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !446, file: !98, line: 251, baseType: !20, size: 32, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !446, file: !98, line: 251, baseType: !27, size: 8, offset: 288)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !446, file: !98, line: 251, baseType: !27, size: 8, offset: 296)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !446, file: !98, line: 256, baseType: !96, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !446, file: !98, line: 257, baseType: !96, size: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !97, file: !98, line: 387, baseType: !465, size: 512)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !98, line: 273, size: 512, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474, !479, !480}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !465, file: !98, line: 274, baseType: !96, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !465, file: !98, line: 274, baseType: !27, size: 8, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !465, file: !98, line: 274, baseType: !27, size: 8, offset: 72)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !465, file: !98, line: 274, baseType: !13, size: 16, offset: 80)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !98, line: 274, baseType: !27, size: 8, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !465, file: !98, line: 274, baseType: !92, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !465, file: !98, line: 275, baseType: !20, size: 32, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !465, file: !98, line: 276, baseType: !475, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1052, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !25, !20, !24}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !465, file: !98, line: 277, baseType: !24, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !465, file: !98, line: 278, baseType: !249, size: 128, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !97, file: !98, line: 388, baseType: !482, size: 512)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !98, line: 281, size: 512, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !490, !491, !497, !498, !499, !505, !506}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !482, file: !98, line: 282, baseType: !96, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !482, file: !98, line: 282, baseType: !27, size: 8, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !482, file: !98, line: 282, baseType: !27, size: 8, offset: 72)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !482, file: !98, line: 282, baseType: !13, size: 16, offset: 80)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !98, line: 282, baseType: !27, size: 8, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !482, file: !98, line: 282, baseType: !27, size: 8, offset: 104)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !482, file: !98, line: 283, baseType: !27, size: 8, offset: 112)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !482, file: !98, line: 284, baseType: !492, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1084, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!18, !20, !238, !20, !496, !24, !24}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !482, file: !98, line: 285, baseType: !92, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !482, file: !98, line: 286, baseType: !24, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !482, file: !98, line: 287, baseType: !500, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1102, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!18, !25, !20, !24, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !482, file: !98, line: 288, baseType: !96, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !482, file: !98, line: 289, baseType: !96, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !97, file: !98, line: 389, baseType: !508, size: 512)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !98, line: 307, size: 512, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !508, file: !98, line: 308, baseType: !96, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !508, file: !98, line: 308, baseType: !27, size: 8, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !508, file: !98, line: 308, baseType: !27, size: 8, offset: 72)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !508, file: !98, line: 308, baseType: !13, size: 16, offset: 80)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !98, line: 308, baseType: !27, size: 8, offset: 96)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !508, file: !98, line: 308, baseType: !27, size: 8, offset: 104)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !508, file: !98, line: 309, baseType: !27, size: 8, offset: 112)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !508, file: !98, line: 310, baseType: !27, size: 8, offset: 120)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !508, file: !98, line: 311, baseType: !24, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !98, line: 312, baseType: !92, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !508, file: !98, line: 313, baseType: !157, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !508, file: !98, line: 314, baseType: !65, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !508, file: !98, line: 315, baseType: !65, size: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !508, file: !98, line: 316, baseType: !20, size: 32, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !97, file: !98, line: 390, baseType: !525, size: 448)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !98, line: 340, size: 448, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535, !536}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !525, file: !98, line: 341, baseType: !96, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !525, file: !98, line: 341, baseType: !27, size: 8, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !525, file: !98, line: 341, baseType: !27, size: 8, offset: 72)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !525, file: !98, line: 341, baseType: !13, size: 16, offset: 80)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !525, file: !98, line: 341, baseType: !27, size: 8, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !525, file: !98, line: 341, baseType: !92, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !525, file: !98, line: 342, baseType: !92, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !525, file: !98, line: 343, baseType: !24, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !525, file: !98, line: 344, baseType: !65, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !525, file: !98, line: 345, baseType: !20, size: 32, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !97, file: !98, line: 391, baseType: !538, size: 256)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !98, line: 350, size: 256, elements: !539)
!539 = !{!540, !541, !542, !543, !544, !545, !550}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !538, file: !98, line: 351, baseType: !96, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !538, file: !98, line: 351, baseType: !27, size: 8, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !538, file: !98, line: 351, baseType: !27, size: 8, offset: 72)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !538, file: !98, line: 351, baseType: !13, size: 16, offset: 80)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !98, line: 351, baseType: !27, size: 8, offset: 96)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !538, file: !98, line: 351, baseType: !546, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1055, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !25, !24}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !538, file: !98, line: 352, baseType: !24, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !97, file: !98, line: 392, baseType: !552, size: 192)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !98, line: 357, size: 192, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !552, file: !98, line: 358, baseType: !96, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !552, file: !98, line: 358, baseType: !27, size: 8, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !552, file: !98, line: 358, baseType: !27, size: 8, offset: 72)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !552, file: !98, line: 358, baseType: !13, size: 16, offset: 80)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !98, line: 358, baseType: !27, size: 8, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !552, file: !98, line: 358, baseType: !96, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !97, file: !98, line: 399, baseType: !93, size: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !6, line: 135, baseType: !27, size: 8, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !6, line: 136, baseType: !27, size: 8, offset: 72)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !6, line: 137, baseType: !13, size: 16, offset: 80)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !93, file: !6, line: 138, baseType: !565, size: 32, offset: 96)
!565 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !566, line: 327, size: 32, elements: !567)
!566 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !565, file: !566, line: 328, baseType: !20, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !565, file: !566, line: 329, baseType: !570, size: 32)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 4)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !93, file: !6, line: 139, baseType: !92, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !93, file: !6, line: 140, baseType: !92, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !93, file: !6, line: 141, baseType: !92, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !93, file: !6, line: 142, baseType: !55, size: 16, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !83, file: !6, line: 829, baseType: !578, size: 64, offset: 320)
!578 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !578, file: !6, line: 717, baseType: !121, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !578, file: !6, line: 718, baseType: !20, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !578, file: !6, line: 719, baseType: !22, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !578, file: !6, line: 720, baseType: !65, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !578, file: !6, line: 721, baseType: !22, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !578, file: !6, line: 722, baseType: !79, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !83, file: !6, line: 829, baseType: !27, size: 8, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !80, file: !6, line: 877, baseType: !588, size: 640)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !588, file: !6, line: 836, baseType: !79, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !6, line: 836, baseType: !27, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !6, line: 836, baseType: !27, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !588, file: !6, line: 836, baseType: !13, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !588, file: !6, line: 836, baseType: !65, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !588, file: !6, line: 836, baseType: !79, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !588, file: !6, line: 836, baseType: !92, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !588, file: !6, line: 836, baseType: !578, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !588, file: !6, line: 836, baseType: !27, size: 8, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !588, file: !6, line: 836, baseType: !22, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !588, file: !6, line: 837, baseType: !65, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !588, file: !6, line: 838, baseType: !20, size: 32, offset: 576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !588, file: !6, line: 839, baseType: !20, size: 32, offset: 608)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !80, file: !6, line: 878, baseType: !604, size: 1600)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !604, file: !6, line: 847, baseType: !79, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !604, file: !6, line: 847, baseType: !27, size: 8, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !6, line: 847, baseType: !27, size: 8, offset: 72)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !604, file: !6, line: 847, baseType: !13, size: 16, offset: 80)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !604, file: !6, line: 847, baseType: !65, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !604, file: !6, line: 847, baseType: !79, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !604, file: !6, line: 847, baseType: !92, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !604, file: !6, line: 847, baseType: !578, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !604, file: !6, line: 847, baseType: !27, size: 8, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !604, file: !6, line: 847, baseType: !79, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !604, file: !6, line: 848, baseType: !79, size: 64, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !604, file: !6, line: 849, baseType: !22, size: 64, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !604, file: !6, line: 850, baseType: !27, size: 8, offset: 640)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !604, file: !6, line: 851, baseType: !22, size: 64, offset: 704)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !604, file: !6, line: 852, baseType: !22, size: 64, offset: 768)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !604, file: !6, line: 853, baseType: !22, size: 64, offset: 832)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !604, file: !6, line: 854, baseType: !570, size: 32, offset: 896)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !604, file: !6, line: 855, baseType: !20, size: 32, offset: 928)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !604, file: !6, line: 856, baseType: !20, size: 32, offset: 960)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !604, file: !6, line: 857, baseType: !20, size: 32, offset: 992)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !604, file: !6, line: 858, baseType: !20, size: 32, offset: 1024)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !604, file: !6, line: 859, baseType: !20, size: 32, offset: 1056)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !604, file: !6, line: 860, baseType: !20, size: 32, offset: 1088)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !604, file: !6, line: 861, baseType: !20, size: 32, offset: 1120)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !604, file: !6, line: 862, baseType: !20, size: 32, offset: 1152)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !604, file: !6, line: 863, baseType: !20, size: 32, offset: 1184)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !604, file: !6, line: 864, baseType: !20, size: 32, offset: 1216)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !604, file: !6, line: 865, baseType: !20, size: 32, offset: 1248)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !604, file: !6, line: 866, baseType: !20, size: 32, offset: 1280)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !604, file: !6, line: 867, baseType: !20, size: 32, offset: 1312)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !604, file: !6, line: 868, baseType: !13, size: 16, offset: 1344)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !604, file: !6, line: 869, baseType: !27, size: 8, offset: 1360)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !604, file: !6, line: 870, baseType: !27, size: 8, offset: 1368)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !604, file: !6, line: 871, baseType: !27, size: 8, offset: 1376)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !604, file: !6, line: 872, baseType: !641, size: 160, offset: 1384)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 20)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !71, file: !6, line: 900, baseType: !92, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !71, file: !6, line: 901, baseType: !646, size: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !648)
!648 = !{!649, !657, !670, !679, !688, !701, !715, !716, !728}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !647, file: !6, line: 664, baseType: !650, size: 128)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !651)
!651 = !{!652, !653, !654, !655, !656}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !650, file: !6, line: 568, baseType: !24, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !650, file: !6, line: 568, baseType: !27, size: 8, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !6, line: 568, baseType: !27, size: 8, offset: 72)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !650, file: !6, line: 568, baseType: !13, size: 16, offset: 80)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !650, file: !6, line: 568, baseType: !13, size: 16, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !647, file: !6, line: 665, baseType: !658, size: 384)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !658, file: !6, line: 594, baseType: !24, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !6, line: 594, baseType: !27, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !6, line: 594, baseType: !27, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !6, line: 594, baseType: !13, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !658, file: !6, line: 594, baseType: !13, size: 16, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !658, file: !6, line: 594, baseType: !13, size: 16, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !658, file: !6, line: 595, baseType: !79, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !658, file: !6, line: 596, baseType: !65, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !658, file: !6, line: 597, baseType: !65, size: 64, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !658, file: !6, line: 598, baseType: !121, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !647, file: !6, line: 666, baseType: !671, size: 192)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !671, file: !6, line: 574, baseType: !24, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !6, line: 574, baseType: !27, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !6, line: 574, baseType: !27, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !6, line: 574, baseType: !13, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !671, file: !6, line: 574, baseType: !13, size: 16, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !671, file: !6, line: 574, baseType: !96, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !647, file: !6, line: 667, baseType: !680, size: 192)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !680, file: !6, line: 605, baseType: !24, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !680, file: !6, line: 605, baseType: !27, size: 8, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !6, line: 605, baseType: !27, size: 8, offset: 72)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !680, file: !6, line: 605, baseType: !13, size: 16, offset: 80)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !680, file: !6, line: 605, baseType: !13, size: 16, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !680, file: !6, line: 605, baseType: !92, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !647, file: !6, line: 668, baseType: !689, size: 448)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !6, line: 609, baseType: !24, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !6, line: 609, baseType: !27, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !6, line: 609, baseType: !27, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !689, file: !6, line: 609, baseType: !13, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !689, file: !6, line: 609, baseType: !13, size: 16, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !689, file: !6, line: 609, baseType: !20, size: 32, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !689, file: !6, line: 610, baseType: !79, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !689, file: !6, line: 611, baseType: !65, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !689, file: !6, line: 612, baseType: !65, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !689, file: !6, line: 613, baseType: !20, size: 32, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !647, file: !6, line: 669, baseType: !702, size: 512)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !702, file: !6, line: 581, baseType: !24, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !702, file: !6, line: 581, baseType: !27, size: 8, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !6, line: 581, baseType: !27, size: 8, offset: 72)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !702, file: !6, line: 581, baseType: !13, size: 16, offset: 80)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !702, file: !6, line: 581, baseType: !13, size: 16, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !702, file: !6, line: 581, baseType: !20, size: 32, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !702, file: !6, line: 582, baseType: !96, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !702, file: !6, line: 583, baseType: !96, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !702, file: !6, line: 584, baseType: !43, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !702, file: !6, line: 585, baseType: !24, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !702, file: !6, line: 586, baseType: !20, size: 32, offset: 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !647, file: !6, line: 670, baseType: !210, size: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !647, file: !6, line: 671, baseType: !717, size: 640)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !717, file: !6, line: 632, baseType: !24, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !717, file: !6, line: 632, baseType: !27, size: 8, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !6, line: 632, baseType: !27, size: 8, offset: 72)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !717, file: !6, line: 632, baseType: !13, size: 16, offset: 80)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !717, file: !6, line: 632, baseType: !13, size: 16, offset: 96)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !717, file: !6, line: 633, baseType: !725, size: 512, offset: 128)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 512, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 8)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !647, file: !6, line: 672, baseType: !729, size: 320)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !730)
!730 = !{!731, !732, !733, !734, !735, !736, !737, !738, !739}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !729, file: !6, line: 655, baseType: !24, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !729, file: !6, line: 655, baseType: !27, size: 8, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !729, file: !6, line: 655, baseType: !27, size: 8, offset: 72)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !729, file: !6, line: 655, baseType: !13, size: 16, offset: 80)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !729, file: !6, line: 655, baseType: !13, size: 16, offset: 96)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !729, file: !6, line: 655, baseType: !27, size: 8, offset: 112)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !729, file: !6, line: 656, baseType: !92, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !729, file: !6, line: 657, baseType: !96, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !729, file: !6, line: 658, baseType: !740, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !741, file: !6, line: 646, baseType: !475, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !741, file: !6, line: 647, baseType: !24, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !71, file: !6, line: 902, baseType: !79, size: 64, offset: 512)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !71, file: !6, line: 903, baseType: !20, size: 32, offset: 576)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !44, file: !45, line: 61, baseType: !20, size: 32, offset: 1088)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !44, file: !45, line: 62, baseType: !20, size: 32, offset: 1120)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !44, file: !45, line: 63, baseType: !13, size: 16, offset: 1152)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !44, file: !45, line: 64, baseType: !27, size: 8, offset: 1168)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !44, file: !45, line: 66, baseType: !752, size: 2688, offset: 1216)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 2688, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 7)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !44, file: !45, line: 67, baseType: !756, size: 3072, offset: 3904)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 3072, elements: !726)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !44, file: !45, line: 68, baseType: !758, size: 576, offset: 6976)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 576, elements: !33)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !44, file: !45, line: 69, baseType: !157, size: 64, offset: 7552)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !44, file: !45, line: 71, baseType: !65, size: 64, offset: 7616)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !44, file: !45, line: 72, baseType: !157, size: 64, offset: 7680)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !44, file: !45, line: 73, baseType: !646, size: 64, offset: 7744)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !44, file: !45, line: 74, baseType: !92, size: 64, offset: 7808)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !44, file: !45, line: 75, baseType: !96, size: 64, offset: 7872)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !44, file: !45, line: 76, baseType: !92, size: 64, offset: 7936)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !44, file: !45, line: 77, baseType: !79, size: 64, offset: 8000)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !44, file: !45, line: 78, baseType: !96, size: 64, offset: 8064)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !44, file: !45, line: 79, baseType: !92, size: 64, offset: 8128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !44, file: !45, line: 80, baseType: !22, size: 64, offset: 8192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !44, file: !45, line: 81, baseType: !79, size: 64, offset: 8256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !44, file: !45, line: 82, baseType: !772, size: 64, offset: 8320)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !775)
!775 = !{!776, !777, !778, !779, !780, !781}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !774, file: !6, line: 706, baseType: !20, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !774, file: !6, line: 707, baseType: !20, size: 32, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !6, line: 708, baseType: !13, size: 16, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !774, file: !6, line: 709, baseType: !27, size: 8, offset: 80)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !774, file: !6, line: 710, baseType: !27, size: 8, offset: 88)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !774, file: !6, line: 711, baseType: !27, size: 8, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !44, file: !45, line: 83, baseType: !79, size: 64, offset: 8384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !44, file: !45, line: 84, baseType: !96, size: 64, offset: 8448)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !44, file: !45, line: 85, baseType: !646, size: 64, offset: 8512)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !44, file: !45, line: 86, baseType: !96, size: 64, offset: 8576)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !44, file: !45, line: 87, baseType: !646, size: 64, offset: 8640)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !44, file: !45, line: 88, baseType: !79, size: 64, offset: 8704)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !44, file: !45, line: 89, baseType: !79, size: 64, offset: 8768)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !44, file: !45, line: 90, baseType: !209, size: 64, offset: 8832)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !44, file: !45, line: 91, baseType: !791, size: 64, offset: 8896)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !44, file: !45, line: 92, baseType: !794, size: 64, offset: 8960)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !189)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!796 = !{}
!797 = !DILocalVariable(name: "walk_state", arg: 1, scope: !40, file: !3, line: 38, type: !43)
!798 = !DILocation(line: 38, column: 48, scope: !40)
!799 = !DILocalVariable(name: "out_op", arg: 2, scope: !40, file: !3, line: 39, type: !795)
!800 = !DILocation(line: 39, column: 36, scope: !40)
!801 = !DILocalVariable(name: "op", scope: !40, file: !3, line: 41, type: !79)
!802 = !DILocation(line: 41, column: 27, scope: !40)
!803 = !DILocalVariable(name: "node", scope: !40, file: !3, line: 42, type: !92)
!804 = !DILocation(line: 42, column: 30, scope: !40)
!805 = !DILocalVariable(name: "status", scope: !40, file: !3, line: 43, type: !18)
!806 = !DILocation(line: 43, column: 14, scope: !40)
!807 = !DILocalVariable(name: "object_type", scope: !40, file: !3, line: 44, type: !808)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 635, baseType: !20)
!809 = !DILocation(line: 44, column: 19, scope: !40)
!810 = !DILocalVariable(name: "buffer_ptr", scope: !40, file: !3, line: 45, type: !22)
!811 = !DILocation(line: 45, column: 8, scope: !40)
!812 = !DILocalVariable(name: "flags", scope: !40, file: !3, line: 46, type: !20)
!813 = !DILocation(line: 46, column: 6, scope: !40)
!814 = !DILocation(line: 50, column: 7, scope: !40)
!815 = !DILocation(line: 50, column: 19, scope: !40)
!816 = !DILocation(line: 50, column: 5, scope: !40)
!817 = !DILocation(line: 54, column: 6, scope: !818)
!818 = distinct !DILexicalBlock(scope: !40, file: !3, line: 54, column: 6)
!819 = !DILocation(line: 54, column: 6, scope: !40)
!820 = !DILocation(line: 55, column: 8, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 55, column: 7)
!822 = distinct !DILexicalBlock(scope: !818, file: !3, line: 54, column: 10)
!823 = !DILocation(line: 55, column: 20, scope: !821)
!824 = !DILocation(line: 55, column: 7, scope: !821)
!825 = !DILocation(line: 55, column: 35, scope: !821)
!826 = !DILocation(line: 56, column: 8, scope: !821)
!827 = !DILocation(line: 56, column: 20, scope: !821)
!828 = !DILocation(line: 56, column: 35, scope: !821)
!829 = !DILocation(line: 56, column: 42, scope: !821)
!830 = !DILocation(line: 56, column: 48, scope: !821)
!831 = !DILocation(line: 55, column: 7, scope: !822)
!832 = !DILocation(line: 61, column: 35, scope: !833)
!833 = distinct !DILexicalBlock(scope: !821, file: !3, line: 57, column: 45)
!834 = !DILocation(line: 61, column: 47, scope: !833)
!835 = !DILocation(line: 61, column: 13, scope: !833)
!836 = !DILocation(line: 61, column: 11, scope: !833)
!837 = !DILocation(line: 62, column: 4, scope: !833)
!838 = !DILocation(line: 67, column: 10, scope: !839)
!839 = distinct !DILexicalBlock(scope: !822, file: !3, line: 67, column: 7)
!840 = !DILocation(line: 67, column: 22, scope: !839)
!841 = !DILocation(line: 67, column: 31, scope: !839)
!842 = !DILocation(line: 67, column: 37, scope: !839)
!843 = !DILocation(line: 67, column: 53, scope: !839)
!844 = !DILocation(line: 68, column: 9, scope: !839)
!845 = !DILocation(line: 68, column: 21, scope: !839)
!846 = !DILocation(line: 68, column: 28, scope: !839)
!847 = !DILocation(line: 68, column: 53, scope: !839)
!848 = !DILocation(line: 69, column: 10, scope: !839)
!849 = !DILocation(line: 69, column: 22, scope: !839)
!850 = !DILocation(line: 69, column: 31, scope: !839)
!851 = !DILocation(line: 69, column: 37, scope: !839)
!852 = !DILocation(line: 67, column: 7, scope: !822)
!853 = !DILocation(line: 70, column: 4, scope: !854)
!854 = distinct !DILexicalBlock(scope: !839, file: !3, line: 69, column: 52)
!855 = !DILocation(line: 75, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !822, file: !3, line: 75, column: 7)
!857 = !DILocation(line: 75, column: 19, scope: !856)
!858 = !DILocation(line: 75, column: 26, scope: !856)
!859 = !DILocation(line: 75, column: 7, scope: !822)
!860 = !DILocation(line: 79, column: 17, scope: !861)
!861 = distinct !DILexicalBlock(scope: !856, file: !3, line: 75, column: 50)
!862 = !DILocation(line: 79, column: 21, scope: !861)
!863 = !DILocation(line: 79, column: 28, scope: !861)
!864 = !DILocation(line: 79, column: 34, scope: !861)
!865 = !DILocation(line: 79, column: 15, scope: !861)
!866 = !DILocation(line: 80, column: 9, scope: !867)
!867 = distinct !DILexicalBlock(scope: !861, file: !3, line: 80, column: 8)
!868 = !DILocation(line: 80, column: 8, scope: !861)
!869 = !DILocation(line: 84, column: 5, scope: !870)
!870 = distinct !DILexicalBlock(scope: !867, file: !3, line: 80, column: 21)
!871 = !DILocation(line: 86, column: 3, scope: !861)
!872 = !DILocation(line: 89, column: 17, scope: !873)
!873 = distinct !DILexicalBlock(scope: !856, file: !3, line: 86, column: 10)
!874 = !DILocation(line: 89, column: 15, scope: !873)
!875 = !DILocation(line: 91, column: 2, scope: !822)
!876 = !DILocation(line: 95, column: 36, scope: !877)
!877 = distinct !DILexicalBlock(scope: !818, file: !3, line: 91, column: 9)
!878 = !DILocation(line: 95, column: 48, scope: !877)
!879 = !DILocation(line: 95, column: 7, scope: !877)
!880 = !DILocation(line: 94, column: 14, scope: !877)
!881 = !DILocation(line: 100, column: 16, scope: !40)
!882 = !DILocation(line: 100, column: 28, scope: !40)
!883 = !DILocation(line: 100, column: 37, scope: !40)
!884 = !DILocation(line: 100, column: 14, scope: !40)
!885 = !DILocation(line: 106, column: 10, scope: !40)
!886 = !DILocation(line: 106, column: 22, scope: !40)
!887 = !DILocation(line: 106, column: 2, scope: !40)
!888 = !DILocation(line: 111, column: 8, scope: !889)
!889 = distinct !DILexicalBlock(scope: !40, file: !3, line: 106, column: 30)
!890 = !DILocation(line: 112, column: 10, scope: !889)
!891 = !DILocation(line: 113, column: 3, scope: !889)
!892 = !DILocation(line: 122, column: 22, scope: !889)
!893 = !DILocation(line: 122, column: 34, scope: !889)
!894 = !DILocation(line: 122, column: 46, scope: !889)
!895 = !DILocation(line: 123, column: 8, scope: !889)
!896 = !DILocation(line: 124, column: 31, scope: !889)
!897 = !DILocation(line: 122, column: 7, scope: !889)
!898 = !DILocation(line: 121, column: 10, scope: !889)
!899 = !DILocation(line: 125, column: 3, scope: !889)
!900 = !DILocation(line: 131, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !889, file: !3, line: 131, column: 7)
!902 = !DILocation(line: 131, column: 10, scope: !901)
!903 = !DILocation(line: 131, column: 14, scope: !901)
!904 = !DILocation(line: 131, column: 18, scope: !901)
!905 = !DILocation(line: 131, column: 24, scope: !901)
!906 = !DILocation(line: 131, column: 32, scope: !901)
!907 = !DILocation(line: 131, column: 29, scope: !901)
!908 = !DILocation(line: 131, column: 7, scope: !889)
!909 = !DILocation(line: 132, column: 11, scope: !910)
!910 = distinct !DILexicalBlock(scope: !901, file: !3, line: 131, column: 53)
!911 = !DILocation(line: 132, column: 15, scope: !910)
!912 = !DILocation(line: 132, column: 21, scope: !910)
!913 = !DILocation(line: 132, column: 9, scope: !910)
!914 = !DILocation(line: 135, column: 33, scope: !910)
!915 = !DILocation(line: 135, column: 39, scope: !910)
!916 = !DILocation(line: 136, column: 12, scope: !910)
!917 = !DILocation(line: 135, column: 8, scope: !910)
!918 = !DILocation(line: 134, column: 11, scope: !910)
!919 = !DILocation(line: 137, column: 8, scope: !920)
!920 = distinct !DILexicalBlock(scope: !910, file: !3, line: 137, column: 8)
!921 = !DILocation(line: 137, column: 8, scope: !910)
!922 = !DILocation(line: 138, column: 5, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !3, line: 137, column: 30)
!924 = !DILocation(line: 140, column: 3, scope: !910)
!925 = !DILocation(line: 147, column: 23, scope: !926)
!926 = distinct !DILexicalBlock(scope: !901, file: !3, line: 140, column: 10)
!927 = !DILocation(line: 147, column: 35, scope: !926)
!928 = !DILocation(line: 147, column: 47, scope: !926)
!929 = !DILocation(line: 148, column: 9, scope: !926)
!930 = !DILocation(line: 149, column: 32, scope: !926)
!931 = !DILocation(line: 147, column: 8, scope: !926)
!932 = !DILocation(line: 146, column: 11, scope: !926)
!933 = !DILocation(line: 151, column: 8, scope: !934)
!934 = distinct !DILexicalBlock(scope: !926, file: !3, line: 151, column: 8)
!935 = !DILocation(line: 151, column: 8, scope: !926)
!936 = !DILocation(line: 162, column: 5, scope: !937)
!937 = distinct !DILexicalBlock(scope: !934, file: !3, line: 151, column: 30)
!938 = !DILocation(line: 165, column: 5, scope: !937)
!939 = !DILocation(line: 173, column: 11, scope: !889)
!940 = !DILocation(line: 173, column: 17, scope: !889)
!941 = !DILocation(line: 173, column: 3, scope: !889)
!942 = !DILocation(line: 182, column: 4, scope: !943)
!943 = distinct !DILexicalBlock(scope: !889, file: !3, line: 173, column: 23)
!944 = !DILocation(line: 195, column: 4, scope: !943)
!945 = !DILocation(line: 201, column: 4, scope: !943)
!946 = !DILocation(line: 201, column: 10, scope: !943)
!947 = !DILocation(line: 201, column: 15, scope: !943)
!948 = !DILocation(line: 202, column: 4, scope: !943)
!949 = !DILocation(line: 202, column: 16, scope: !943)
!950 = !DILocation(line: 202, column: 28, scope: !943)
!951 = !DILocation(line: 202, column: 35, scope: !943)
!952 = !DILocation(line: 202, column: 41, scope: !943)
!953 = !DILocation(line: 203, column: 4, scope: !943)
!954 = !DILocation(line: 211, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !943, file: !3, line: 211, column: 8)
!956 = !DILocation(line: 211, column: 17, scope: !955)
!957 = !DILocation(line: 211, column: 14, scope: !955)
!958 = !DILocation(line: 211, column: 37, scope: !955)
!959 = !DILocation(line: 212, column: 9, scope: !955)
!960 = !DILocation(line: 213, column: 9, scope: !955)
!961 = !DILocation(line: 213, column: 21, scope: !955)
!962 = !DILocation(line: 211, column: 8, scope: !943)
!963 = !DILocation(line: 214, column: 5, scope: !964)
!964 = distinct !DILexicalBlock(scope: !955, file: !3, line: 213, column: 49)
!965 = !DILocation(line: 213, column: 46, scope: !955)
!966 = !DILocation(line: 223, column: 4, scope: !943)
!967 = !DILocation(line: 229, column: 4, scope: !943)
!968 = !DILocation(line: 231, column: 3, scope: !889)
!969 = !DILocation(line: 237, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !889, file: !3, line: 237, column: 7)
!971 = !DILocation(line: 237, column: 10, scope: !970)
!972 = !DILocation(line: 237, column: 13, scope: !970)
!973 = !DILocation(line: 237, column: 17, scope: !970)
!974 = !DILocation(line: 237, column: 24, scope: !970)
!975 = !DILocation(line: 237, column: 7, scope: !889)
!976 = !DILocation(line: 241, column: 11, scope: !977)
!977 = distinct !DILexicalBlock(scope: !970, file: !3, line: 237, column: 30)
!978 = !DILocation(line: 241, column: 15, scope: !977)
!979 = !DILocation(line: 241, column: 22, scope: !977)
!980 = !DILocation(line: 241, column: 9, scope: !977)
!981 = !DILocation(line: 243, column: 28, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !3, line: 243, column: 8)
!983 = !DILocation(line: 243, column: 8, scope: !982)
!984 = !DILocation(line: 243, column: 8, scope: !977)
!985 = !DILocation(line: 245, column: 34, scope: !986)
!986 = distinct !DILexicalBlock(scope: !982, file: !3, line: 243, column: 42)
!987 = !DILocation(line: 245, column: 40, scope: !986)
!988 = !DILocation(line: 246, column: 13, scope: !986)
!989 = !DILocation(line: 245, column: 9, scope: !986)
!990 = !DILocation(line: 244, column: 12, scope: !986)
!991 = !DILocation(line: 247, column: 9, scope: !992)
!992 = distinct !DILexicalBlock(scope: !986, file: !3, line: 247, column: 9)
!993 = !DILocation(line: 247, column: 9, scope: !986)
!994 = !DILocation(line: 248, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !992, file: !3, line: 247, column: 31)
!996 = !DILocation(line: 250, column: 4, scope: !986)
!997 = !DILocation(line: 252, column: 4, scope: !977)
!998 = !DILocation(line: 263, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !889, file: !3, line: 263, column: 7)
!1000 = !DILocation(line: 263, column: 19, scope: !999)
!1001 = !DILocation(line: 263, column: 7, scope: !889)
!1002 = !DILocation(line: 267, column: 11, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !3, line: 263, column: 34)
!1004 = !DILocation(line: 267, column: 23, scope: !1003)
!1005 = !DILocation(line: 267, column: 9, scope: !1003)
!1006 = !DILocation(line: 268, column: 11, scope: !1003)
!1007 = !DILocation(line: 269, column: 4, scope: !1003)
!1008 = !DILocation(line: 272, column: 9, scope: !889)
!1009 = !DILocation(line: 273, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !889, file: !3, line: 273, column: 7)
!1011 = !DILocation(line: 273, column: 19, scope: !1010)
!1012 = !DILocation(line: 273, column: 31, scope: !1010)
!1013 = !DILocation(line: 273, column: 7, scope: !889)
!1014 = !DILocation(line: 277, column: 10, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 273, column: 54)
!1016 = !DILocation(line: 280, column: 9, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 279, column: 8)
!1018 = !DILocation(line: 281, column: 9, scope: !1017)
!1019 = !DILocation(line: 281, column: 21, scope: !1017)
!1020 = !DILocation(line: 279, column: 8, scope: !1015)
!1021 = !DILocation(line: 282, column: 11, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 281, column: 49)
!1023 = !DILocation(line: 283, column: 4, scope: !1022)
!1024 = !DILocation(line: 284, column: 3, scope: !1015)
!1025 = !DILocation(line: 306, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !889, file: !3, line: 306, column: 7)
!1027 = !DILocation(line: 306, column: 19, scope: !1026)
!1028 = !DILocation(line: 306, column: 28, scope: !1026)
!1029 = !DILocation(line: 306, column: 34, scope: !1026)
!1030 = !DILocation(line: 306, column: 7, scope: !889)
!1031 = !DILocation(line: 307, column: 10, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 306, column: 47)
!1033 = !DILocation(line: 308, column: 3, scope: !1032)
!1034 = !DILocation(line: 313, column: 22, scope: !889)
!1035 = !DILocation(line: 313, column: 34, scope: !889)
!1036 = !DILocation(line: 313, column: 46, scope: !889)
!1037 = !DILocation(line: 314, column: 8, scope: !889)
!1038 = !DILocation(line: 314, column: 44, scope: !889)
!1039 = !DILocation(line: 315, column: 8, scope: !889)
!1040 = !DILocation(line: 313, column: 7, scope: !889)
!1041 = !DILocation(line: 312, column: 10, scope: !889)
!1042 = !DILocation(line: 317, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !889, file: !3, line: 317, column: 7)
!1044 = !DILocation(line: 317, column: 28, scope: !1043)
!1045 = !DILocation(line: 317, column: 32, scope: !1043)
!1046 = !DILocation(line: 317, column: 38, scope: !1043)
!1047 = !DILocation(line: 317, column: 7, scope: !889)
!1048 = !DILocation(line: 321, column: 3, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 317, column: 60)
!1050 = !DILocation(line: 322, column: 3, scope: !889)
!1051 = !DILocation(line: 325, column: 6, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !40, file: !3, line: 325, column: 6)
!1053 = !DILocation(line: 325, column: 6, scope: !40)
!1054 = !DILocation(line: 326, column: 3, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 325, column: 28)
!1056 = !DILocation(line: 328, column: 3, scope: !1055)
!1057 = !DILocation(line: 331, column: 7, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !40, file: !3, line: 331, column: 6)
!1059 = !DILocation(line: 331, column: 6, scope: !40)
!1060 = !DILocation(line: 335, column: 25, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 331, column: 11)
!1062 = !DILocation(line: 335, column: 37, scope: !1061)
!1063 = !DILocation(line: 335, column: 45, scope: !1061)
!1064 = !DILocation(line: 335, column: 57, scope: !1061)
!1065 = !DILocation(line: 335, column: 8, scope: !1061)
!1066 = !DILocation(line: 335, column: 6, scope: !1061)
!1067 = !DILocation(line: 336, column: 8, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 336, column: 7)
!1069 = !DILocation(line: 336, column: 7, scope: !1061)
!1070 = !DILocation(line: 337, column: 4, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 336, column: 12)
!1072 = !DILocation(line: 342, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 342, column: 7)
!1074 = !DILocation(line: 342, column: 7, scope: !1061)
!1075 = !DILocation(line: 343, column: 21, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 342, column: 13)
!1077 = !DILocation(line: 343, column: 27, scope: !1076)
!1078 = !DILocation(line: 343, column: 32, scope: !1076)
!1079 = !DILocation(line: 343, column: 4, scope: !1076)
!1080 = !DILocation(line: 343, column: 8, scope: !1076)
!1081 = !DILocation(line: 343, column: 14, scope: !1076)
!1082 = !DILocation(line: 343, column: 19, scope: !1076)
!1083 = !DILocation(line: 344, column: 3, scope: !1076)
!1084 = !DILocation(line: 345, column: 13, scope: !1061)
!1085 = !DILocation(line: 345, column: 4, scope: !1061)
!1086 = !DILocation(line: 345, column: 11, scope: !1061)
!1087 = !DILocation(line: 346, column: 2, scope: !1061)
!1088 = !DILocation(line: 352, column: 20, scope: !40)
!1089 = !DILocation(line: 352, column: 2, scope: !40)
!1090 = !DILocation(line: 352, column: 6, scope: !40)
!1091 = !DILocation(line: 352, column: 13, scope: !40)
!1092 = !DILocation(line: 352, column: 18, scope: !40)
!1093 = !DILocation(line: 353, column: 2, scope: !40)
!1094 = !DILocation(line: 354, column: 1, scope: !40)
!1095 = distinct !DISubprogram(name: "acpi_ds_load2_end_op", scope: !3, file: !3, line: 369, type: !190, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !796)
!1096 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1095, file: !3, line: 369, type: !43)
!1097 = !DILocation(line: 369, column: 58, scope: !1095)
!1098 = !DILocalVariable(name: "op", scope: !1095, file: !3, line: 371, type: !79)
!1099 = !DILocation(line: 371, column: 27, scope: !1095)
!1100 = !DILocalVariable(name: "status", scope: !1095, file: !3, line: 372, type: !18)
!1101 = !DILocation(line: 372, column: 14, scope: !1095)
!1102 = !DILocalVariable(name: "object_type", scope: !1095, file: !3, line: 373, type: !808)
!1103 = !DILocation(line: 373, column: 19, scope: !1095)
!1104 = !DILocalVariable(name: "node", scope: !1095, file: !3, line: 374, type: !92)
!1105 = !DILocation(line: 374, column: 30, scope: !1095)
!1106 = !DILocalVariable(name: "arg", scope: !1095, file: !3, line: 375, type: !79)
!1107 = !DILocation(line: 375, column: 27, scope: !1095)
!1108 = !DILocalVariable(name: "new_node", scope: !1095, file: !3, line: 376, type: !92)
!1109 = !DILocation(line: 376, column: 30, scope: !1095)
!1110 = !DILocalVariable(name: "i", scope: !1095, file: !3, line: 377, type: !20)
!1111 = !DILocation(line: 377, column: 6, scope: !1095)
!1112 = !DILocalVariable(name: "region_space", scope: !1095, file: !3, line: 378, type: !27)
!1113 = !DILocation(line: 378, column: 5, scope: !1095)
!1114 = !DILocation(line: 386, column: 7, scope: !1095)
!1115 = !DILocation(line: 386, column: 19, scope: !1095)
!1116 = !DILocation(line: 386, column: 5, scope: !1095)
!1117 = !DILocation(line: 392, column: 8, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 392, column: 6)
!1119 = !DILocation(line: 392, column: 20, scope: !1118)
!1120 = !DILocation(line: 392, column: 29, scope: !1118)
!1121 = !DILocation(line: 392, column: 35, scope: !1118)
!1122 = !DILocation(line: 392, column: 6, scope: !1095)
!1123 = !DILocation(line: 393, column: 3, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 392, column: 52)
!1125 = !DILocation(line: 396, column: 6, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 396, column: 6)
!1127 = !DILocation(line: 396, column: 10, scope: !1126)
!1128 = !DILocation(line: 396, column: 17, scope: !1126)
!1129 = !DILocation(line: 396, column: 28, scope: !1126)
!1130 = !DILocation(line: 396, column: 6, scope: !1095)
!1131 = !DILocation(line: 400, column: 2, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 396, column: 45)
!1133 = !DILocation(line: 402, column: 16, scope: !1095)
!1134 = !DILocation(line: 402, column: 28, scope: !1095)
!1135 = !DILocation(line: 402, column: 37, scope: !1095)
!1136 = !DILocation(line: 402, column: 14, scope: !1095)
!1137 = !DILocation(line: 408, column: 9, scope: !1095)
!1138 = !DILocation(line: 408, column: 13, scope: !1095)
!1139 = !DILocation(line: 408, column: 20, scope: !1095)
!1140 = !DILocation(line: 408, column: 7, scope: !1095)
!1141 = !DILocation(line: 414, column: 36, scope: !1095)
!1142 = !DILocation(line: 414, column: 28, scope: !1095)
!1143 = !DILocation(line: 414, column: 2, scope: !1095)
!1144 = !DILocation(line: 414, column: 14, scope: !1095)
!1145 = !DILocation(line: 414, column: 26, scope: !1095)
!1146 = !DILocation(line: 415, column: 2, scope: !1095)
!1147 = !DILocation(line: 415, column: 14, scope: !1095)
!1148 = !DILocation(line: 415, column: 27, scope: !1095)
!1149 = !DILocation(line: 419, column: 26, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 419, column: 6)
!1151 = !DILocation(line: 419, column: 6, scope: !1150)
!1152 = !DILocation(line: 419, column: 39, scope: !1150)
!1153 = !DILocation(line: 420, column: 7, scope: !1150)
!1154 = !DILocation(line: 420, column: 11, scope: !1150)
!1155 = !DILocation(line: 420, column: 18, scope: !1150)
!1156 = !DILocation(line: 420, column: 29, scope: !1150)
!1157 = !DILocation(line: 419, column: 6, scope: !1095)
!1158 = !DILocation(line: 425, column: 36, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 420, column: 56)
!1160 = !DILocation(line: 425, column: 12, scope: !1159)
!1161 = !DILocation(line: 425, column: 10, scope: !1159)
!1162 = !DILocation(line: 426, column: 7, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 426, column: 7)
!1164 = !DILocation(line: 426, column: 7, scope: !1159)
!1165 = !DILocation(line: 427, column: 4, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 426, column: 29)
!1167 = !DILocation(line: 429, column: 2, scope: !1159)
!1168 = !DILocation(line: 466, column: 8, scope: !1095)
!1169 = !DILocation(line: 466, column: 12, scope: !1095)
!1170 = !DILocation(line: 466, column: 19, scope: !1095)
!1171 = !DILocation(line: 466, column: 25, scope: !1095)
!1172 = !DILocation(line: 466, column: 6, scope: !1095)
!1173 = !DILocation(line: 468, column: 10, scope: !1095)
!1174 = !DILocation(line: 468, column: 22, scope: !1095)
!1175 = !DILocation(line: 468, column: 31, scope: !1095)
!1176 = !DILocation(line: 468, column: 2, scope: !1095)
!1177 = !DILocation(line: 475, column: 40, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 468, column: 37)
!1179 = !DILocation(line: 475, column: 44, scope: !1178)
!1180 = !DILocation(line: 475, column: 12, scope: !1178)
!1181 = !DILocation(line: 475, column: 10, scope: !1178)
!1182 = !DILocation(line: 476, column: 7, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 476, column: 7)
!1184 = !DILocation(line: 476, column: 7, scope: !1178)
!1185 = !DILocation(line: 477, column: 4, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 476, column: 29)
!1187 = !DILocation(line: 479, column: 4, scope: !1186)
!1188 = !DILocation(line: 481, column: 3, scope: !1178)
!1189 = !DILocation(line: 487, column: 7, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 487, column: 7)
!1191 = !DILocation(line: 487, column: 19, scope: !1190)
!1192 = !DILocation(line: 487, column: 7, scope: !1178)
!1193 = !DILocation(line: 488, column: 40, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 487, column: 32)
!1195 = !DILocation(line: 488, column: 44, scope: !1194)
!1196 = !DILocation(line: 488, column: 13, scope: !1194)
!1197 = !DILocation(line: 488, column: 11, scope: !1194)
!1198 = !DILocation(line: 489, column: 3, scope: !1194)
!1199 = !DILocation(line: 491, column: 11, scope: !1178)
!1200 = !DILocation(line: 491, column: 15, scope: !1178)
!1201 = !DILocation(line: 491, column: 22, scope: !1178)
!1202 = !DILocation(line: 491, column: 3, scope: !1178)
!1203 = !DILocation(line: 495, column: 35, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 491, column: 34)
!1205 = !DILocation(line: 496, column: 27, scope: !1204)
!1206 = !DILocation(line: 496, column: 32, scope: !1204)
!1207 = !DILocation(line: 497, column: 14, scope: !1204)
!1208 = !DILocation(line: 496, column: 14, scope: !1204)
!1209 = !DILocation(line: 497, column: 20, scope: !1204)
!1210 = !DILocation(line: 495, column: 8, scope: !1204)
!1211 = !DILocation(line: 494, column: 11, scope: !1204)
!1212 = !DILocation(line: 498, column: 4, scope: !1204)
!1213 = !DILocation(line: 503, column: 34, scope: !1204)
!1214 = !DILocation(line: 503, column: 38, scope: !1204)
!1215 = !DILocation(line: 503, column: 43, scope: !1204)
!1216 = !DILocation(line: 503, column: 50, scope: !1204)
!1217 = !DILocation(line: 504, column: 13, scope: !1204)
!1218 = !DILocation(line: 503, column: 8, scope: !1204)
!1219 = !DILocation(line: 502, column: 11, scope: !1204)
!1220 = !DILocation(line: 505, column: 4, scope: !1204)
!1221 = !DILocation(line: 510, column: 29, scope: !1204)
!1222 = !DILocation(line: 510, column: 33, scope: !1204)
!1223 = !DILocation(line: 510, column: 38, scope: !1204)
!1224 = !DILocation(line: 510, column: 45, scope: !1204)
!1225 = !DILocation(line: 511, column: 8, scope: !1204)
!1226 = !DILocation(line: 510, column: 8, scope: !1204)
!1227 = !DILocation(line: 509, column: 11, scope: !1204)
!1228 = !DILocation(line: 512, column: 4, scope: !1204)
!1229 = !DILocation(line: 517, column: 4, scope: !1204)
!1230 = !DILocation(line: 519, column: 3, scope: !1178)
!1231 = !DILocation(line: 523, column: 36, scope: !1178)
!1232 = !DILocation(line: 523, column: 48, scope: !1178)
!1233 = !DILocation(line: 523, column: 12, scope: !1178)
!1234 = !DILocation(line: 523, column: 10, scope: !1178)
!1235 = !DILocation(line: 524, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 524, column: 7)
!1237 = !DILocation(line: 524, column: 7, scope: !1178)
!1238 = !DILocation(line: 525, column: 4, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 524, column: 29)
!1240 = !DILocation(line: 528, column: 11, scope: !1178)
!1241 = !DILocation(line: 528, column: 15, scope: !1178)
!1242 = !DILocation(line: 528, column: 22, scope: !1178)
!1243 = !DILocation(line: 528, column: 3, scope: !1178)
!1244 = !DILocation(line: 531, column: 38, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 528, column: 34)
!1246 = !DILocation(line: 531, column: 13, scope: !1245)
!1247 = !DILocation(line: 531, column: 11, scope: !1245)
!1248 = !DILocation(line: 532, column: 4, scope: !1245)
!1249 = !DILocation(line: 536, column: 43, scope: !1245)
!1250 = !DILocation(line: 536, column: 13, scope: !1245)
!1251 = !DILocation(line: 536, column: 11, scope: !1245)
!1252 = !DILocation(line: 537, column: 4, scope: !1245)
!1253 = !DILocation(line: 541, column: 34, scope: !1245)
!1254 = !DILocation(line: 541, column: 13, scope: !1245)
!1255 = !DILocation(line: 541, column: 11, scope: !1245)
!1256 = !DILocation(line: 542, column: 4, scope: !1245)
!1257 = !DILocation(line: 546, column: 34, scope: !1245)
!1258 = !DILocation(line: 546, column: 13, scope: !1245)
!1259 = !DILocation(line: 546, column: 11, scope: !1245)
!1260 = !DILocation(line: 547, column: 4, scope: !1245)
!1261 = !DILocation(line: 551, column: 34, scope: !1245)
!1262 = !DILocation(line: 551, column: 13, scope: !1245)
!1263 = !DILocation(line: 551, column: 11, scope: !1245)
!1264 = !DILocation(line: 552, column: 4, scope: !1245)
!1265 = !DILocation(line: 558, column: 11, scope: !1245)
!1266 = !DILocation(line: 559, column: 4, scope: !1245)
!1267 = !DILocation(line: 564, column: 10, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 564, column: 3)
!1269 = !DILocation(line: 564, column: 8, scope: !1268)
!1270 = !DILocation(line: 564, column: 15, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 564, column: 3)
!1272 = !DILocation(line: 564, column: 19, scope: !1271)
!1273 = !DILocation(line: 564, column: 31, scope: !1271)
!1274 = !DILocation(line: 564, column: 17, scope: !1271)
!1275 = !DILocation(line: 564, column: 3, scope: !1268)
!1276 = !DILocation(line: 565, column: 29, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 564, column: 50)
!1278 = !DILocation(line: 565, column: 41, scope: !1277)
!1279 = !DILocation(line: 565, column: 50, scope: !1277)
!1280 = !DILocation(line: 565, column: 4, scope: !1277)
!1281 = !DILocation(line: 566, column: 4, scope: !1277)
!1282 = !DILocation(line: 566, column: 16, scope: !1277)
!1283 = !DILocation(line: 566, column: 25, scope: !1277)
!1284 = !DILocation(line: 566, column: 28, scope: !1277)
!1285 = !DILocation(line: 567, column: 3, scope: !1277)
!1286 = !DILocation(line: 564, column: 46, scope: !1271)
!1287 = !DILocation(line: 564, column: 3, scope: !1271)
!1288 = distinct !{!1288, !1275, !1289}
!1289 = !DILocation(line: 567, column: 3, scope: !1268)
!1290 = !DILocation(line: 569, column: 3, scope: !1178)
!1291 = !DILocation(line: 573, column: 11, scope: !1178)
!1292 = !DILocation(line: 573, column: 15, scope: !1178)
!1293 = !DILocation(line: 573, column: 22, scope: !1178)
!1294 = !DILocation(line: 573, column: 3, scope: !1178)
!1295 = !DILocation(line: 577, column: 8, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 577, column: 8)
!1297 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 573, column: 34)
!1298 = !DILocation(line: 577, column: 12, scope: !1296)
!1299 = !DILocation(line: 577, column: 19, scope: !1296)
!1300 = !DILocation(line: 577, column: 30, scope: !1296)
!1301 = !DILocation(line: 577, column: 8, scope: !1297)
!1302 = !DILocation(line: 579, column: 11, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 577, column: 48)
!1304 = !DILocation(line: 579, column: 15, scope: !1303)
!1305 = !DILocation(line: 579, column: 22, scope: !1303)
!1306 = !DILocation(line: 579, column: 28, scope: !1303)
!1307 = !DILocation(line: 579, column: 34, scope: !1303)
!1308 = !DILocation(line: 579, column: 41, scope: !1303)
!1309 = !DILocation(line: 580, column: 10, scope: !1303)
!1310 = !DILocation(line: 578, column: 20, scope: !1303)
!1311 = !DILocation(line: 578, column: 18, scope: !1303)
!1312 = !DILocation(line: 581, column: 4, scope: !1303)
!1313 = !DILocation(line: 582, column: 18, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 581, column: 11)
!1315 = !DILocation(line: 597, column: 8, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 597, column: 8)
!1317 = !DILocation(line: 597, column: 20, scope: !1316)
!1318 = !DILocation(line: 597, column: 8, scope: !1297)
!1319 = !DILocation(line: 602, column: 36, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 597, column: 33)
!1321 = !DILocation(line: 602, column: 40, scope: !1320)
!1322 = !DILocation(line: 602, column: 46, scope: !1320)
!1323 = !DILocation(line: 603, column: 15, scope: !1320)
!1324 = !DILocation(line: 603, column: 19, scope: !1320)
!1325 = !DILocation(line: 603, column: 25, scope: !1320)
!1326 = !DILocation(line: 604, column: 15, scope: !1320)
!1327 = !DILocation(line: 605, column: 15, scope: !1320)
!1328 = !DILocation(line: 602, column: 14, scope: !1320)
!1329 = !DILocation(line: 602, column: 12, scope: !1320)
!1330 = !DILocation(line: 606, column: 9, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 606, column: 9)
!1332 = !DILocation(line: 606, column: 9, scope: !1320)
!1333 = !DILocation(line: 607, column: 6, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 606, column: 31)
!1335 = !DILocation(line: 609, column: 4, scope: !1320)
!1336 = !DILocation(line: 613, column: 37, scope: !1297)
!1337 = !DILocation(line: 613, column: 9, scope: !1297)
!1338 = !DILocation(line: 612, column: 8, scope: !1297)
!1339 = !DILocation(line: 611, column: 11, scope: !1297)
!1340 = !DILocation(line: 614, column: 4, scope: !1297)
!1341 = !DILocation(line: 618, column: 33, scope: !1297)
!1342 = !DILocation(line: 618, column: 45, scope: !1297)
!1343 = !DILocation(line: 618, column: 51, scope: !1297)
!1344 = !DILocation(line: 618, column: 13, scope: !1297)
!1345 = !DILocation(line: 618, column: 11, scope: !1297)
!1346 = !DILocation(line: 619, column: 8, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 619, column: 8)
!1348 = !DILocation(line: 619, column: 8, scope: !1297)
!1349 = !DILocation(line: 620, column: 5, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 619, column: 30)
!1351 = !DILocation(line: 642, column: 4, scope: !1297)
!1352 = !DILocation(line: 657, column: 37, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 657, column: 8)
!1354 = !DILocation(line: 657, column: 41, scope: !1353)
!1355 = !DILocation(line: 657, column: 47, scope: !1353)
!1356 = !DILocation(line: 657, column: 9, scope: !1353)
!1357 = !DILocation(line: 657, column: 8, scope: !1297)
!1358 = !DILocation(line: 659, column: 9, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 657, column: 54)
!1360 = !DILocation(line: 658, column: 5, scope: !1359)
!1361 = !DILocation(line: 658, column: 17, scope: !1359)
!1362 = !DILocation(line: 658, column: 29, scope: !1359)
!1363 = !DILocation(line: 660, column: 5, scope: !1359)
!1364 = !DILocation(line: 660, column: 17, scope: !1359)
!1365 = !DILocation(line: 660, column: 30, scope: !1359)
!1366 = !DILocation(line: 663, column: 33, scope: !1359)
!1367 = !DILocation(line: 664, column: 12, scope: !1359)
!1368 = !DILocation(line: 664, column: 16, scope: !1359)
!1369 = !DILocation(line: 664, column: 23, scope: !1359)
!1370 = !DILocation(line: 665, column: 12, scope: !1359)
!1371 = !DILocation(line: 663, column: 9, scope: !1359)
!1372 = !DILocation(line: 662, column: 12, scope: !1359)
!1373 = !DILocation(line: 666, column: 9, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 666, column: 9)
!1375 = !DILocation(line: 666, column: 9, scope: !1359)
!1376 = !DILocation(line: 668, column: 32, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 666, column: 31)
!1378 = !DILocation(line: 668, column: 36, scope: !1377)
!1379 = !DILocation(line: 669, column: 11, scope: !1377)
!1380 = !DILocation(line: 670, column: 11, scope: !1377)
!1381 = !DILocation(line: 670, column: 15, scope: !1377)
!1382 = !DILocation(line: 671, column: 11, scope: !1377)
!1383 = !DILocation(line: 672, column: 11, scope: !1377)
!1384 = !DILocation(line: 668, column: 10, scope: !1377)
!1385 = !DILocation(line: 667, column: 13, scope: !1377)
!1386 = !DILocation(line: 673, column: 5, scope: !1377)
!1387 = !DILocation(line: 675, column: 5, scope: !1359)
!1388 = !DILocation(line: 675, column: 17, scope: !1359)
!1389 = !DILocation(line: 675, column: 29, scope: !1359)
!1390 = !DILocation(line: 676, column: 5, scope: !1359)
!1391 = !DILocation(line: 676, column: 17, scope: !1359)
!1392 = !DILocation(line: 676, column: 30, scope: !1359)
!1393 = !DILocation(line: 678, column: 9, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 678, column: 9)
!1395 = !DILocation(line: 678, column: 9, scope: !1359)
!1396 = !DILocation(line: 679, column: 6, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 678, column: 31)
!1398 = !DILocation(line: 681, column: 4, scope: !1359)
!1399 = !DILocation(line: 682, column: 4, scope: !1297)
!1400 = !DILocation(line: 687, column: 4, scope: !1297)
!1401 = !DILocation(line: 689, column: 3, scope: !1178)
!1402 = !DILocation(line: 694, column: 3, scope: !1178)
!1403 = !DILocation(line: 706, column: 22, scope: !1178)
!1404 = !DILocation(line: 706, column: 34, scope: !1178)
!1405 = !DILocation(line: 707, column: 8, scope: !1178)
!1406 = !DILocation(line: 707, column: 13, scope: !1178)
!1407 = !DILocation(line: 707, column: 20, scope: !1178)
!1408 = !DILocation(line: 707, column: 26, scope: !1178)
!1409 = !DILocation(line: 710, column: 33, scope: !1178)
!1410 = !DILocation(line: 706, column: 7, scope: !1178)
!1411 = !DILocation(line: 705, column: 10, scope: !1178)
!1412 = !DILocation(line: 712, column: 7, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 712, column: 7)
!1414 = !DILocation(line: 712, column: 7, scope: !1178)
!1415 = !DILocation(line: 718, column: 8, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 718, column: 8)
!1417 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 712, column: 29)
!1418 = !DILocation(line: 718, column: 18, scope: !1416)
!1419 = !DILocation(line: 718, column: 23, scope: !1416)
!1420 = !DILocation(line: 718, column: 8, scope: !1417)
!1421 = !DILocation(line: 719, column: 12, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 718, column: 44)
!1423 = !DILocation(line: 720, column: 4, scope: !1422)
!1424 = !DILocation(line: 726, column: 22, scope: !1417)
!1425 = !DILocation(line: 726, column: 4, scope: !1417)
!1426 = !DILocation(line: 726, column: 8, scope: !1417)
!1427 = !DILocation(line: 726, column: 15, scope: !1417)
!1428 = !DILocation(line: 726, column: 20, scope: !1417)
!1429 = !DILocation(line: 727, column: 3, scope: !1417)
!1430 = !DILocation(line: 728, column: 4, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 727, column: 10)
!1432 = !DILocation(line: 731, column: 3, scope: !1178)
!1433 = !DILocation(line: 735, column: 3, scope: !1178)
!1434 = !DILocation(line: 736, column: 2, scope: !1178)
!1435 = !DILabel(scope: !1095, name: "cleanup", file: !3, line: 738)
!1436 = !DILocation(line: 738, column: 1, scope: !1095)
!1437 = !DILocation(line: 742, column: 2, scope: !1095)
!1438 = !DILocation(line: 742, column: 14, scope: !1095)
!1439 = !DILocation(line: 742, column: 26, scope: !1095)
!1440 = !DILocation(line: 743, column: 2, scope: !1095)
!1441 = !DILocation(line: 743, column: 14, scope: !1095)
!1442 = !DILocation(line: 743, column: 27, scope: !1095)
!1443 = !DILocation(line: 744, column: 2, scope: !1095)
!1444 = !DILocation(line: 745, column: 1, scope: !1095)
