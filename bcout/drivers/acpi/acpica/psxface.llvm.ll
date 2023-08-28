; ModuleID = '../bcout/drivers/acpi/acpica/psxface.llvm.bc'
source_filename = "drivers/acpi/acpica/psxface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%union.acpi_name_union = type { i32 }
%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%struct.acpi_object_method = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*, %union.anon, i32, i16, i8 }
%union.anon = type { i32 (%struct.acpi_walk_state*)* }

@acpi_gbl_trace_method_name = external dso_local global i8*, align 8
@acpi_gbl_trace_flags = external dso_local global i32, align 4
@acpi_gbl_trace_dbg_level = external dso_local global i32, align 4
@acpi_gbl_trace_dbg_layer = external dso_local global i32, align 4
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_debug_trace(i8* %name, i32 %debug_level, i32 %debug_layer, i32 %flags) #0 !dbg !28 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %debug_level.addr = alloca i32, align 4
  %debug_layer.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 %debug_level, i32* %debug_level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %debug_level.addr, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 %debug_layer, i32* %debug_layer.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %debug_layer.addr, metadata !39, metadata !DIExpression()), !dbg !40
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %status, metadata !43, metadata !DIExpression()), !dbg !44
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #3, !dbg !45
  store i32 %call, i32* %status, align 4, !dbg !46
  %0 = load i32, i32* %status, align 4, !dbg !47
  %tobool = icmp ne i32 %0, 0, !dbg !47
  br i1 %tobool, label %if.then, label %if.end, !dbg !49

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !50
  store i32 %1, i32* %retval, align 4, !dbg !52
  br label %return, !dbg !52

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8, !dbg !53
  store i8* %2, i8** @acpi_gbl_trace_method_name, align 8, !dbg !54
  %3 = load i32, i32* %flags.addr, align 4, !dbg !55
  store i32 %3, i32* @acpi_gbl_trace_flags, align 4, !dbg !56
  %4 = load i32, i32* %debug_level.addr, align 4, !dbg !57
  store i32 %4, i32* @acpi_gbl_trace_dbg_level, align 4, !dbg !58
  %5 = load i32, i32* %debug_layer.addr, align 4, !dbg !59
  store i32 %5, i32* @acpi_gbl_trace_dbg_layer, align 4, !dbg !60
  store i32 0, i32* %status, align 4, !dbg !61
  %call1 = call i32 @acpi_ut_release_mutex(i32 1) #3, !dbg !62
  %6 = load i32, i32* %status, align 4, !dbg !63
  store i32 %6, i32* %retval, align 4, !dbg !64
  br label %return, !dbg !64

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !65
  ret i32 %7, !dbg !65
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_execute_method(%struct.acpi_evaluate_info* %info) #0 !dbg !66 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %status = alloca i32, align 4
  %op = alloca %union.acpi_parse_object*, align 8
  %walk_state = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !893, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.declare(metadata i32* %status, metadata !895, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op, metadata !897, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state, metadata !899, metadata !DIExpression()), !dbg !900
  call void @acpi_tb_check_dsdt_header() #3, !dbg !901
  %0 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !902
  %tobool = icmp ne %struct.acpi_evaluate_info* %0, null, !dbg !902
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !904

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !905
  %node = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %1, i32 0, i32 3, !dbg !906
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !906
  %tobool1 = icmp ne %struct.acpi_namespace_node* %2, null, !dbg !905
  br i1 %tobool1, label %if.end, label %if.then, !dbg !907

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 10, i32* %retval, align 4, !dbg !908
  br label %return, !dbg !908

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !910
  %node2 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %3, i32 0, i32 3, !dbg !911
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node2, align 8, !dbg !911
  %5 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !912
  %obj_desc = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %5, i32 0, i32 4, !dbg !913
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !913
  %call = call i32 @acpi_ds_begin_method_execution(%struct.acpi_namespace_node* %4, %union.acpi_operand_object* %6, %struct.acpi_walk_state* null) #3, !dbg !914
  store i32 %call, i32* %status, align 4, !dbg !915
  %7 = load i32, i32* %status, align 4, !dbg !916
  %tobool3 = icmp ne i32 %7, 0, !dbg !916
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !918

if.then4:                                         ; preds = %if.end
  %8 = load i32, i32* %status, align 4, !dbg !919
  store i32 %8, i32* %retval, align 4, !dbg !919
  br label %return, !dbg !919

if.end5:                                          ; preds = %if.end
  %9 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !921
  call void @acpi_ps_update_parameter_list(%struct.acpi_evaluate_info* %9, i16 zeroext 0) #3, !dbg !922
  %10 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !923
  %obj_desc6 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %10, i32 0, i32 4, !dbg !924
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc6, align 8, !dbg !924
  %method = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_method*, !dbg !925
  %aml_start = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 10, !dbg !926
  %12 = load i8*, i8** %aml_start, align 8, !dbg !926
  %call7 = call %union.acpi_parse_object* @acpi_ps_create_scope_op(i8* %12) #3, !dbg !927
  store %union.acpi_parse_object* %call7, %union.acpi_parse_object** %op, align 8, !dbg !928
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !929
  %tobool8 = icmp ne %union.acpi_parse_object* %13, null, !dbg !929
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !931

if.then9:                                         ; preds = %if.end5
  store i32 4, i32* %status, align 4, !dbg !932
  br label %cleanup, !dbg !934

if.end10:                                         ; preds = %if.end5
  %14 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !935
  %pass_number = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %14, i32 0, i32 13, !dbg !936
  store i8 3, i8* %pass_number, align 4, !dbg !937
  %15 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !938
  %obj_desc11 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %15, i32 0, i32 4, !dbg !939
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc11, align 8, !dbg !939
  %method12 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_method*, !dbg !940
  %owner_id = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method12, i32 0, i32 13, !dbg !941
  %17 = load i16, i16* %owner_id, align 4, !dbg !941
  %call13 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i16 zeroext %17, %union.acpi_parse_object* null, %union.acpi_operand_object* null, %struct.acpi_thread_state* null) #3, !dbg !942
  store %struct.acpi_walk_state* %call13, %struct.acpi_walk_state** %walk_state, align 8, !dbg !943
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !944
  %tobool14 = icmp ne %struct.acpi_walk_state* %18, null, !dbg !944
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !946

if.then15:                                        ; preds = %if.end10
  store i32 4, i32* %status, align 4, !dbg !947
  br label %cleanup, !dbg !949

if.end16:                                         ; preds = %if.end10
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !950
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !951
  %21 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !952
  %node17 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %21, i32 0, i32 3, !dbg !953
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node17, align 8, !dbg !953
  %23 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !954
  %obj_desc18 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %23, i32 0, i32 4, !dbg !955
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc18, align 8, !dbg !955
  %method19 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_method*, !dbg !956
  %aml_start20 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method19, i32 0, i32 10, !dbg !957
  %25 = load i8*, i8** %aml_start20, align 8, !dbg !957
  %26 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !958
  %obj_desc21 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %26, i32 0, i32 4, !dbg !959
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc21, align 8, !dbg !959
  %method22 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_method*, !dbg !960
  %aml_length = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method22, i32 0, i32 12, !dbg !961
  %28 = load i32, i32* %aml_length, align 8, !dbg !961
  %29 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !962
  %30 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !963
  %pass_number23 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %30, i32 0, i32 13, !dbg !964
  %31 = load i8, i8* %pass_number23, align 4, !dbg !964
  %call24 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %19, %union.acpi_parse_object* %20, %struct.acpi_namespace_node* %22, i8* %25, i32 %28, %struct.acpi_evaluate_info* %29, i8 zeroext %31) #3, !dbg !965
  store i32 %call24, i32* %status, align 4, !dbg !966
  %32 = load i32, i32* %status, align 4, !dbg !967
  %tobool25 = icmp ne i32 %32, 0, !dbg !967
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !969

if.then26:                                        ; preds = %if.end16
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !970
  call void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %33) #3, !dbg !972
  br label %cleanup, !dbg !973

if.end27:                                         ; preds = %if.end16
  %34 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !974
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %34, i32 0, i32 5, !dbg !975
  %35 = load i8*, i8** %full_pathname, align 8, !dbg !975
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !976
  %method_pathname = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %36, i32 0, i32 39, !dbg !977
  store i8* %35, i8** %method_pathname, align 8, !dbg !978
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !979
  %method_is_nested = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %37, i32 0, i32 25, !dbg !980
  store i8 0, i8* %method_is_nested, align 2, !dbg !981
  %38 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !982
  %obj_desc28 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %38, i32 0, i32 4, !dbg !984
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc28, align 8, !dbg !984
  %method29 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_method*, !dbg !985
  %info_flags = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method29, i32 0, i32 5, !dbg !986
  %40 = load i8, i8* %info_flags, align 1, !dbg !986
  %conv = zext i8 %40 to i32, !dbg !982
  %and = and i32 %conv, 1, !dbg !987
  %tobool30 = icmp ne i32 %and, 0, !dbg !987
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !988

if.then31:                                        ; preds = %if.end27
  %41 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !989
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %41, i32 0, i32 20, !dbg !991
  %42 = load i32, i32* %parse_flags, align 4, !dbg !992
  %or = or i32 %42, 1024, !dbg !992
  store i32 %or, i32* %parse_flags, align 4, !dbg !992
  br label %if.end32, !dbg !993

if.end32:                                         ; preds = %if.then31, %if.end27
  %43 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !994
  %obj_desc33 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %43, i32 0, i32 4, !dbg !996
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc33, align 8, !dbg !996
  %method34 = bitcast %union.acpi_operand_object* %44 to %struct.acpi_object_method*, !dbg !997
  %info_flags35 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method34, i32 0, i32 5, !dbg !998
  %45 = load i8, i8* %info_flags35, align 1, !dbg !998
  %conv36 = zext i8 %45 to i32, !dbg !994
  %and37 = and i32 %conv36, 2, !dbg !999
  %tobool38 = icmp ne i32 %and37, 0, !dbg !999
  br i1 %tobool38, label %if.then39, label %if.end43, !dbg !1000

if.then39:                                        ; preds = %if.end32
  %46 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1001
  %obj_desc40 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %46, i32 0, i32 4, !dbg !1003
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc40, align 8, !dbg !1003
  %method41 = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_method*, !dbg !1004
  %dispatch = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method41, i32 0, i32 11, !dbg !1005
  %implementation = bitcast %union.anon* %dispatch to i32 (%struct.acpi_walk_state*)**, !dbg !1006
  %48 = load i32 (%struct.acpi_walk_state*)*, i32 (%struct.acpi_walk_state*)** %implementation, align 8, !dbg !1006
  %49 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1007
  %call42 = call i32 %48(%struct.acpi_walk_state* %49) #3, !dbg !1001
  store i32 %call42, i32* %status, align 4, !dbg !1008
  %50 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1009
  %return_desc = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %50, i32 0, i32 45, !dbg !1010
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1010
  %52 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1011
  %return_object = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %52, i32 0, i32 7, !dbg !1012
  store %union.acpi_operand_object* %51, %union.acpi_operand_object** %return_object, align 8, !dbg !1013
  %53 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1014
  call void @acpi_ds_scope_stack_clear(%struct.acpi_walk_state* %53) #3, !dbg !1015
  %54 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1016
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %54, i32 0, i32 21, !dbg !1017
  call void @acpi_ps_cleanup_scope(%struct.acpi_parse_state* %parser_state) #3, !dbg !1018
  %55 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1019
  %method_desc = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %55, i32 0, i32 37, !dbg !1020
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc, align 8, !dbg !1020
  %57 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1021
  call void @acpi_ds_terminate_control_method(%union.acpi_operand_object* %56, %struct.acpi_walk_state* %57) #3, !dbg !1022
  %58 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1023
  call void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %58) #3, !dbg !1024
  br label %cleanup, !dbg !1025

if.end43:                                         ; preds = %if.end32
  %59 = load i8, i8* @acpi_gbl_enable_interpreter_slack, align 1, !dbg !1026
  %tobool44 = icmp ne i8 %59, 0, !dbg !1026
  br i1 %tobool44, label %if.then45, label %if.end51, !dbg !1028

if.then45:                                        ; preds = %if.end43
  %call46 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 0) #3, !dbg !1029
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1031
  %implicit_return_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %60, i32 0, i32 34, !dbg !1032
  store %union.acpi_operand_object* %call46, %union.acpi_operand_object** %implicit_return_obj, align 8, !dbg !1033
  %61 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1034
  %implicit_return_obj47 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %61, i32 0, i32 34, !dbg !1036
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %implicit_return_obj47, align 8, !dbg !1036
  %tobool48 = icmp ne %union.acpi_operand_object* %62, null, !dbg !1034
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !1037

if.then49:                                        ; preds = %if.then45
  store i32 4, i32* %status, align 4, !dbg !1038
  %63 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1040
  call void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %63) #3, !dbg !1041
  br label %cleanup, !dbg !1042

if.end50:                                         ; preds = %if.then45
  br label %if.end51, !dbg !1043

if.end51:                                         ; preds = %if.end50, %if.end43
  %64 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1044
  %call52 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %64) #3, !dbg !1045
  store i32 %call52, i32* %status, align 4, !dbg !1046
  br label %cleanup, !dbg !1047

cleanup:                                          ; preds = %if.end51, %if.then49, %if.then39, %if.then26, %if.then15, %if.then9
  call void @llvm.dbg.label(metadata !1048), !dbg !1049
  %65 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1050
  call void @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %65) #3, !dbg !1051
  %66 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1052
  call void @acpi_ps_update_parameter_list(%struct.acpi_evaluate_info* %66, i16 zeroext 1) #3, !dbg !1053
  %67 = load i32, i32* %status, align 4, !dbg !1054
  %tobool53 = icmp ne i32 %67, 0, !dbg !1054
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !1056

if.then54:                                        ; preds = %cleanup
  %68 = load i32, i32* %status, align 4, !dbg !1057
  store i32 %68, i32* %retval, align 4, !dbg !1057
  br label %return, !dbg !1057

if.end55:                                         ; preds = %cleanup
  %69 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1059
  %return_object56 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %69, i32 0, i32 7, !dbg !1061
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object56, align 8, !dbg !1061
  %tobool57 = icmp ne %union.acpi_operand_object* %70, null, !dbg !1059
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !1062

if.then58:                                        ; preds = %if.end55
  store i32 16385, i32* %status, align 4, !dbg !1063
  br label %if.end59, !dbg !1065

if.end59:                                         ; preds = %if.then58, %if.end55
  %71 = load i32, i32* %status, align 4, !dbg !1066
  store i32 %71, i32* %retval, align 4, !dbg !1066
  br label %return, !dbg !1066

return:                                           ; preds = %if.end59, %if.then54, %if.then4, %if.then
  %72 = load i32, i32* %retval, align 4, !dbg !1067
  ret i32 %72, !dbg !1067
}

; Function Attrs: noredzone
declare dso_local void @acpi_tb_check_dsdt_header() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_begin_method_execution(%struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ps_update_parameter_list(%struct.acpi_evaluate_info* %info, i16 zeroext %action) #0 !dbg !1068 {
entry:
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %action.addr = alloca i16, align 2
  %i = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1071, metadata !DIExpression()), !dbg !1072
  store i16 %action, i16* %action.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %action.addr, metadata !1073, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1075, metadata !DIExpression()), !dbg !1076
  %0 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1077
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %0, i32 0, i32 2, !dbg !1079
  %1 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %parameters, align 8, !dbg !1079
  %tobool = icmp ne %union.acpi_operand_object** %1, null, !dbg !1077
  br i1 %tobool, label %if.then, label %if.end, !dbg !1080

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !1081
  br label %for.cond, !dbg !1084

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1085
  %parameters1 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %2, i32 0, i32 2, !dbg !1087
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %parameters1, align 8, !dbg !1087
  %4 = load i32, i32* %i, align 4, !dbg !1088
  %idxprom = zext i32 %4 to i64, !dbg !1085
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %3, i64 %idxprom, !dbg !1085
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !1085
  %tobool2 = icmp ne %union.acpi_operand_object* %5, null, !dbg !1089
  br i1 %tobool2, label %for.body, label %for.end, !dbg !1089

for.body:                                         ; preds = %for.cond
  %6 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1090
  %parameters3 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %6, i32 0, i32 2, !dbg !1092
  %7 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %parameters3, align 8, !dbg !1092
  %8 = load i32, i32* %i, align 4, !dbg !1093
  %idxprom4 = zext i32 %8 to i64, !dbg !1090
  %arrayidx5 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %7, i64 %idxprom4, !dbg !1090
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx5, align 8, !dbg !1090
  %10 = load i16, i16* %action.addr, align 2, !dbg !1094
  %call = call i32 @acpi_ut_update_object_reference(%union.acpi_operand_object* %9, i16 zeroext %10) #3, !dbg !1095
  br label %for.inc, !dbg !1096

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !1097
  %inc = add i32 %11, 1, !dbg !1097
  store i32 %inc, i32* %i, align 4, !dbg !1097
  br label %for.cond, !dbg !1098, !llvm.loop !1099

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !1101

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !1102
}

; Function Attrs: noredzone
declare dso_local %union.acpi_parse_object* @acpi_ps_create_scope_op(i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i16 zeroext, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_thread_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, i8*, i32, %struct.acpi_evaluate_info*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_delete_walk_state(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_scope_stack_clear(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_cleanup_scope(%struct.acpi_parse_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_terminate_control_method(%union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_parse_aml(%struct.acpi_walk_state*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ps_delete_parse_tree(%union.acpi_parse_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_execute_table(%struct.acpi_evaluate_info* %info) #0 !dbg !1103 {
entry:
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %status = alloca i32, align 4
  %op = alloca %union.acpi_parse_object*, align 8
  %walk_state = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1106, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op, metadata !1108, metadata !DIExpression()), !dbg !1109
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %op, align 8, !dbg !1109
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state, metadata !1110, metadata !DIExpression()), !dbg !1111
  store %struct.acpi_walk_state* null, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1111
  %0 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1112
  %obj_desc = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %0, i32 0, i32 4, !dbg !1113
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1113
  %method = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_method*, !dbg !1114
  %aml_start = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 10, !dbg !1115
  %2 = load i8*, i8** %aml_start, align 8, !dbg !1115
  %call = call %union.acpi_parse_object* @acpi_ps_create_scope_op(i8* %2) #3, !dbg !1116
  store %union.acpi_parse_object* %call, %union.acpi_parse_object** %op, align 8, !dbg !1117
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1118
  %tobool = icmp ne %union.acpi_parse_object* %3, null, !dbg !1118
  br i1 %tobool, label %if.end, label %if.then, !dbg !1120

if.then:                                          ; preds = %entry
  store i32 4, i32* %status, align 4, !dbg !1121
  br label %cleanup, !dbg !1123

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1124
  %obj_desc1 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %4, i32 0, i32 4, !dbg !1125
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc1, align 8, !dbg !1125
  %method2 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_method*, !dbg !1126
  %owner_id = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method2, i32 0, i32 13, !dbg !1127
  %6 = load i16, i16* %owner_id, align 4, !dbg !1127
  %call3 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i16 zeroext %6, %union.acpi_parse_object* null, %union.acpi_operand_object* null, %struct.acpi_thread_state* null) #3, !dbg !1128
  store %struct.acpi_walk_state* %call3, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1129
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1130
  %tobool4 = icmp ne %struct.acpi_walk_state* %7, null, !dbg !1130
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1132

if.then5:                                         ; preds = %if.end
  store i32 4, i32* %status, align 4, !dbg !1133
  br label %cleanup, !dbg !1135

if.end6:                                          ; preds = %if.end
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1136
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1137
  %10 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1138
  %node = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %10, i32 0, i32 3, !dbg !1139
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1139
  %12 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1140
  %obj_desc7 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %12, i32 0, i32 4, !dbg !1141
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc7, align 8, !dbg !1141
  %method8 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_method*, !dbg !1142
  %aml_start9 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method8, i32 0, i32 10, !dbg !1143
  %14 = load i8*, i8** %aml_start9, align 8, !dbg !1143
  %15 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1144
  %obj_desc10 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %15, i32 0, i32 4, !dbg !1145
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc10, align 8, !dbg !1145
  %method11 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_method*, !dbg !1146
  %aml_length = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method11, i32 0, i32 12, !dbg !1147
  %17 = load i32, i32* %aml_length, align 8, !dbg !1147
  %18 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1148
  %19 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1149
  %pass_number = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %19, i32 0, i32 13, !dbg !1150
  %20 = load i8, i8* %pass_number, align 4, !dbg !1150
  %call12 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %8, %union.acpi_parse_object* %9, %struct.acpi_namespace_node* %11, i8* %14, i32 %17, %struct.acpi_evaluate_info* %18, i8 zeroext %20) #3, !dbg !1151
  store i32 %call12, i32* %status, align 4, !dbg !1152
  %21 = load i32, i32* %status, align 4, !dbg !1153
  %tobool13 = icmp ne i32 %21, 0, !dbg !1153
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1155

if.then14:                                        ; preds = %if.end6
  br label %cleanup, !dbg !1156

if.end15:                                         ; preds = %if.end6
  %22 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1158
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %22, i32 0, i32 5, !dbg !1159
  %23 = load i8*, i8** %full_pathname, align 8, !dbg !1159
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1160
  %method_pathname = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 39, !dbg !1161
  store i8* %23, i8** %method_pathname, align 8, !dbg !1162
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1163
  %method_is_nested = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %25, i32 0, i32 25, !dbg !1164
  store i8 0, i8* %method_is_nested, align 2, !dbg !1165
  %26 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1166
  %obj_desc16 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %26, i32 0, i32 4, !dbg !1168
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc16, align 8, !dbg !1168
  %method17 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_method*, !dbg !1169
  %info_flags = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method17, i32 0, i32 5, !dbg !1170
  %28 = load i8, i8* %info_flags, align 1, !dbg !1170
  %conv = zext i8 %28 to i32, !dbg !1166
  %and = and i32 %conv, 1, !dbg !1171
  %tobool18 = icmp ne i32 %and, 0, !dbg !1171
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !1172

if.then19:                                        ; preds = %if.end15
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1173
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %29, i32 0, i32 20, !dbg !1175
  %30 = load i32, i32* %parse_flags, align 4, !dbg !1176
  %or = or i32 %30, 1024, !dbg !1176
  store i32 %or, i32* %parse_flags, align 4, !dbg !1176
  br label %if.end20, !dbg !1177

if.end20:                                         ; preds = %if.then19, %if.end15
  %31 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1178
  %node21 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %31, i32 0, i32 3, !dbg !1180
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node21, align 8, !dbg !1180
  %tobool22 = icmp ne %struct.acpi_namespace_node* %32, null, !dbg !1178
  br i1 %tobool22, label %land.lhs.true, label %if.end31, !dbg !1181

land.lhs.true:                                    ; preds = %if.end20
  %33 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1182
  %node23 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %33, i32 0, i32 3, !dbg !1183
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node23, align 8, !dbg !1183
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1184
  %cmp = icmp ne %struct.acpi_namespace_node* %34, %35, !dbg !1185
  br i1 %cmp, label %if.then25, label %if.end31, !dbg !1186

if.then25:                                        ; preds = %land.lhs.true
  %36 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1187
  %node26 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %36, i32 0, i32 3, !dbg !1189
  %37 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node26, align 8, !dbg !1189
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1190
  %call27 = call i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %37, i32 8, %struct.acpi_walk_state* %38) #3, !dbg !1191
  store i32 %call27, i32* %status, align 4, !dbg !1192
  %39 = load i32, i32* %status, align 4, !dbg !1193
  %tobool28 = icmp ne i32 %39, 0, !dbg !1193
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1195

if.then29:                                        ; preds = %if.then25
  br label %cleanup, !dbg !1196

if.end30:                                         ; preds = %if.then25
  br label %if.end31, !dbg !1198

if.end31:                                         ; preds = %if.end30, %land.lhs.true, %if.end20
  call void @acpi_ex_enter_interpreter() #3, !dbg !1199
  %40 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1200
  %call32 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %40) #3, !dbg !1201
  store i32 %call32, i32* %status, align 4, !dbg !1202
  call void @acpi_ex_exit_interpreter() #3, !dbg !1203
  store %struct.acpi_walk_state* null, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1204
  br label %cleanup, !dbg !1205

cleanup:                                          ; preds = %if.end31, %if.then29, %if.then14, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !1206), !dbg !1207
  %41 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1208
  %tobool33 = icmp ne %struct.acpi_walk_state* %41, null, !dbg !1208
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !1210

if.then34:                                        ; preds = %cleanup
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1211
  call void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %42) #3, !dbg !1213
  br label %if.end35, !dbg !1214

if.end35:                                         ; preds = %if.then34, %cleanup
  %43 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1215
  %tobool36 = icmp ne %union.acpi_parse_object* %43, null, !dbg !1215
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1217

if.then37:                                        ; preds = %if.end35
  %44 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1218
  call void @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %44) #3, !dbg !1220
  br label %if.end38, !dbg !1221

if.end38:                                         ; preds = %if.then37, %if.end35
  %45 = load i32, i32* %status, align 4, !dbg !1222
  ret i32 %45, !dbg !1222
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node*, i32, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_enter_interpreter() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_exit_interpreter() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_update_object_reference(%union.acpi_operand_object*, i16 zeroext) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/psxface.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 116, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1, isUnsigned: true)
!8 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2, isUnsigned: true)
!9 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3, isUnsigned: true)
!10 = !{!11, !17, !20}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !12, line: 421, baseType: !13)
!12 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !5)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !19)
!19 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !14, line: 23, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !22)
!22 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"Code Model", i32 2}
!27 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!28 = distinct !DISubprogram(name: "acpi_debug_trace", scope: !1, file: !1, line: 42, type: !29, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!29 = !DISubroutineType(types: !30)
!30 = !{!11, !31, !13, !13, !13}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !{}
!35 = !DILocalVariable(name: "name", arg: 1, scope: !28, file: !1, line: 42, type: !31)
!36 = !DILocation(line: 42, column: 30, scope: !28)
!37 = !DILocalVariable(name: "debug_level", arg: 2, scope: !28, file: !1, line: 42, type: !13)
!38 = !DILocation(line: 42, column: 40, scope: !28)
!39 = !DILocalVariable(name: "debug_layer", arg: 3, scope: !28, file: !1, line: 42, type: !13)
!40 = !DILocation(line: 42, column: 57, scope: !28)
!41 = !DILocalVariable(name: "flags", arg: 4, scope: !28, file: !1, line: 42, type: !13)
!42 = !DILocation(line: 42, column: 74, scope: !28)
!43 = !DILocalVariable(name: "status", scope: !28, file: !1, line: 44, type: !11)
!44 = !DILocation(line: 44, column: 14, scope: !28)
!45 = !DILocation(line: 46, column: 11, scope: !28)
!46 = !DILocation(line: 46, column: 9, scope: !28)
!47 = !DILocation(line: 47, column: 6, scope: !48)
!48 = distinct !DILexicalBlock(scope: !28, file: !1, line: 47, column: 6)
!49 = !DILocation(line: 47, column: 6, scope: !28)
!50 = !DILocation(line: 48, column: 11, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 47, column: 28)
!52 = !DILocation(line: 48, column: 3, scope: !51)
!53 = !DILocation(line: 51, column: 31, scope: !28)
!54 = !DILocation(line: 51, column: 29, scope: !28)
!55 = !DILocation(line: 52, column: 25, scope: !28)
!56 = !DILocation(line: 52, column: 23, scope: !28)
!57 = !DILocation(line: 53, column: 29, scope: !28)
!58 = !DILocation(line: 53, column: 27, scope: !28)
!59 = !DILocation(line: 54, column: 29, scope: !28)
!60 = !DILocation(line: 54, column: 27, scope: !28)
!61 = !DILocation(line: 55, column: 9, scope: !28)
!62 = !DILocation(line: 57, column: 8, scope: !28)
!63 = !DILocation(line: 58, column: 10, scope: !28)
!64 = !DILocation(line: 58, column: 2, scope: !28)
!65 = !DILocation(line: 59, column: 1, scope: !28)
!66 = distinct !DISubprogram(name: "acpi_ps_execute_method", scope: !1, file: !1, line: 84, type: !67, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!67 = !DISubroutineType(types: !68)
!68 = !{!11, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !71, line: 152, size: 704, elements: !72)
!71 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !833, !834, !835, !836, !837, !838, !884, !885, !886, !887, !888, !889, !890, !891, !892}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !70, file: !71, line: 155, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !4, line: 133, size: 384, elements: !76)
!76 = !{!77, !820, !821, !822, !823, !829, !830, !831, !832}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !75, file: !4, line: 134, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !80, line: 367, size: 576, elements: !81)
!80 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !93, !106, !117, !131, !145, !155, !471, !488, !503, !516, !594, !606, !620, !630, !648, !670, !689, !708, !727, !740, !766, !783, !796, !810, !819}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !79, file: !80, line: 368, baseType: !83, size: 128)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !80, line: 73, size: 128, elements: !84)
!84 = !{!85, !86, !90, !91, !92}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !83, file: !80, line: 74, baseType: !78, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !83, file: !80, line: 74, baseType: !87, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !89)
!89 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !80, line: 74, baseType: !87, size: 8, offset: 72)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !83, file: !80, line: 74, baseType: !17, size: 16, offset: 80)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !80, line: 74, baseType: !87, size: 8, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !79, file: !80, line: 369, baseType: !94, size: 192)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !80, line: 76, size: 192, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !105}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !94, file: !80, line: 77, baseType: !78, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !80, line: 77, baseType: !87, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !80, line: 77, baseType: !87, size: 8, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !94, file: !80, line: 77, baseType: !17, size: 16, offset: 80)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !80, line: 77, baseType: !87, size: 8, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !94, file: !80, line: 77, baseType: !102, size: 24, offset: 104)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 24, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 3)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !94, file: !80, line: 78, baseType: !20, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !79, file: !80, line: 370, baseType: !107, size: 256)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !80, line: 93, size: 256, elements: !108)
!108 = !{!109, !110, !111, !112, !113, !114, !116}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !107, file: !80, line: 94, baseType: !78, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !107, file: !80, line: 94, baseType: !87, size: 8, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !80, line: 94, baseType: !87, size: 8, offset: 72)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !107, file: !80, line: 94, baseType: !17, size: 16, offset: 80)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !80, line: 94, baseType: !87, size: 8, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !107, file: !80, line: 94, baseType: !115, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !107, file: !80, line: 94, baseType: !13, size: 32, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !79, file: !80, line: 371, baseType: !118, size: 384)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !80, line: 97, size: 384, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !127, !128, !129, !130}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !118, file: !80, line: 98, baseType: !78, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !118, file: !80, line: 98, baseType: !87, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !80, line: 98, baseType: !87, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !118, file: !80, line: 98, baseType: !17, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !80, line: 98, baseType: !87, size: 8, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !118, file: !80, line: 98, baseType: !126, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !118, file: !80, line: 98, baseType: !13, size: 32, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !118, file: !80, line: 99, baseType: !13, size: 32, offset: 224)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !118, file: !80, line: 100, baseType: !126, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !118, file: !80, line: 101, baseType: !74, size: 64, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !79, file: !80, line: 372, baseType: !132, size: 384)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !80, line: 104, size: 384, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !142, !143, !144}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !132, file: !80, line: 105, baseType: !78, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !132, file: !80, line: 105, baseType: !87, size: 8, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !80, line: 105, baseType: !87, size: 8, offset: 72)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !132, file: !80, line: 105, baseType: !17, size: 16, offset: 80)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !80, line: 105, baseType: !87, size: 8, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !132, file: !80, line: 105, baseType: !74, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !132, file: !80, line: 106, baseType: !141, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !132, file: !80, line: 107, baseType: !126, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !132, file: !80, line: 108, baseType: !13, size: 32, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !132, file: !80, line: 109, baseType: !13, size: 32, offset: 352)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !79, file: !80, line: 373, baseType: !146, size: 192)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !80, line: 118, size: 192, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !146, file: !80, line: 119, baseType: !78, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !146, file: !80, line: 119, baseType: !87, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !80, line: 119, baseType: !87, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !146, file: !80, line: 119, baseType: !17, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !80, line: 119, baseType: !87, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !146, file: !80, line: 119, baseType: !154, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !79, file: !80, line: 374, baseType: !156, size: 448)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !80, line: 143, size: 448, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !468, !469, !470}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !156, file: !80, line: 144, baseType: !78, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !156, file: !80, line: 144, baseType: !87, size: 8, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !80, line: 144, baseType: !87, size: 8, offset: 72)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !156, file: !80, line: 144, baseType: !17, size: 16, offset: 80)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !80, line: 144, baseType: !87, size: 8, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !156, file: !80, line: 144, baseType: !87, size: 8, offset: 104)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !156, file: !80, line: 145, baseType: !87, size: 8, offset: 112)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !156, file: !80, line: 146, baseType: !87, size: 8, offset: 120)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !156, file: !80, line: 147, baseType: !78, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !156, file: !80, line: 148, baseType: !78, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !156, file: !80, line: 149, baseType: !126, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !156, file: !80, line: 153, baseType: !170, size: 64, offset: 320)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !80, line: 150, size: 64, elements: !171)
!171 = !{!172, !467}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !170, file: !80, line: 151, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !4, line: 248, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!11, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !71, line: 37, size: 9024, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !413, !414, !415, !416, !417, !421, !423, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !450, !451, !452, !453, !454, !455, !456, !457, !459, !465}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !71, line: 38, baseType: !177, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !178, file: !71, line: 39, baseType: !87, size: 8, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !178, file: !71, line: 40, baseType: !87, size: 8, offset: 72)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !178, file: !71, line: 41, baseType: !17, size: 16, offset: 80)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !178, file: !71, line: 42, baseType: !87, size: 8, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !178, file: !71, line: 43, baseType: !87, size: 8, offset: 104)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !178, file: !71, line: 44, baseType: !87, size: 8, offset: 112)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !178, file: !71, line: 45, baseType: !188, size: 16, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !12, line: 445, baseType: !17)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !178, file: !71, line: 46, baseType: !87, size: 8, offset: 144)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !178, file: !71, line: 47, baseType: !87, size: 8, offset: 152)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !178, file: !71, line: 48, baseType: !87, size: 8, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !178, file: !71, line: 49, baseType: !87, size: 8, offset: 168)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !178, file: !71, line: 50, baseType: !87, size: 8, offset: 176)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !178, file: !71, line: 51, baseType: !87, size: 8, offset: 184)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !178, file: !71, line: 52, baseType: !87, size: 8, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !178, file: !71, line: 53, baseType: !87, size: 8, offset: 200)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !178, file: !71, line: 54, baseType: !126, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !178, file: !71, line: 55, baseType: !13, size: 32, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !178, file: !71, line: 56, baseType: !13, size: 32, offset: 352)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !178, file: !71, line: 57, baseType: !13, size: 32, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !178, file: !71, line: 58, baseType: !13, size: 32, offset: 416)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !178, file: !71, line: 60, baseType: !203, size: 640, offset: 448)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !4, line: 893, size: 640, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !294, !295, !411, !412}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !203, file: !4, line: 894, baseType: !126, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !203, file: !4, line: 895, baseType: !126, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !203, file: !4, line: 896, baseType: !126, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !203, file: !4, line: 897, baseType: !126, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !203, file: !4, line: 898, baseType: !126, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !203, file: !4, line: 899, baseType: !211, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !4, line: 875, size: 1600, elements: !213)
!213 = !{!214, !234, !250}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !212, file: !4, line: 876, baseType: !215, size: 448)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !4, line: 828, size: 448, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !233}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !215, file: !4, line: 829, baseType: !211, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !215, file: !4, line: 829, baseType: !87, size: 8, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !4, line: 829, baseType: !87, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !215, file: !4, line: 829, baseType: !17, size: 16, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !215, file: !4, line: 829, baseType: !126, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !4, line: 829, baseType: !211, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !215, file: !4, line: 829, baseType: !74, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !215, file: !4, line: 829, baseType: !225, size: 64, offset: 320)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !4, line: 716, size: 64, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !225, file: !4, line: 717, baseType: !20, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !225, file: !4, line: 718, baseType: !13, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !225, file: !4, line: 719, baseType: !115, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !225, file: !4, line: 720, baseType: !126, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !4, line: 721, baseType: !115, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !225, file: !4, line: 722, baseType: !211, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !215, file: !4, line: 829, baseType: !87, size: 8, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !212, file: !4, line: 877, baseType: !235, size: 640)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !4, line: 835, size: 640, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !235, file: !4, line: 836, baseType: !211, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !235, file: !4, line: 836, baseType: !87, size: 8, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !235, file: !4, line: 836, baseType: !87, size: 8, offset: 72)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !235, file: !4, line: 836, baseType: !17, size: 16, offset: 80)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !235, file: !4, line: 836, baseType: !126, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !4, line: 836, baseType: !211, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !235, file: !4, line: 836, baseType: !74, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !235, file: !4, line: 836, baseType: !225, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !235, file: !4, line: 836, baseType: !87, size: 8, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !235, file: !4, line: 836, baseType: !115, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !235, file: !4, line: 837, baseType: !126, size: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !235, file: !4, line: 838, baseType: !13, size: 32, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !4, line: 839, baseType: !13, size: 32, offset: 608)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !212, file: !4, line: 878, baseType: !251, size: 1600)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !4, line: 846, size: 1600, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !251, file: !4, line: 847, baseType: !211, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !251, file: !4, line: 847, baseType: !87, size: 8, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !4, line: 847, baseType: !87, size: 8, offset: 72)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !251, file: !4, line: 847, baseType: !17, size: 16, offset: 80)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !251, file: !4, line: 847, baseType: !126, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !251, file: !4, line: 847, baseType: !211, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !251, file: !4, line: 847, baseType: !74, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !251, file: !4, line: 847, baseType: !225, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !251, file: !4, line: 847, baseType: !87, size: 8, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !251, file: !4, line: 847, baseType: !211, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !251, file: !4, line: 848, baseType: !211, size: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !251, file: !4, line: 849, baseType: !115, size: 64, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !251, file: !4, line: 850, baseType: !87, size: 8, offset: 640)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !251, file: !4, line: 851, baseType: !115, size: 64, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !251, file: !4, line: 852, baseType: !115, size: 64, offset: 768)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !251, file: !4, line: 853, baseType: !115, size: 64, offset: 832)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !251, file: !4, line: 854, baseType: !270, size: 32, offset: 896)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 4)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !251, file: !4, line: 855, baseType: !13, size: 32, offset: 928)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !251, file: !4, line: 856, baseType: !13, size: 32, offset: 960)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !251, file: !4, line: 857, baseType: !13, size: 32, offset: 992)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !251, file: !4, line: 858, baseType: !13, size: 32, offset: 1024)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !251, file: !4, line: 859, baseType: !13, size: 32, offset: 1056)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !251, file: !4, line: 860, baseType: !13, size: 32, offset: 1088)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !251, file: !4, line: 861, baseType: !13, size: 32, offset: 1120)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !251, file: !4, line: 862, baseType: !13, size: 32, offset: 1152)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !251, file: !4, line: 863, baseType: !13, size: 32, offset: 1184)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !251, file: !4, line: 864, baseType: !13, size: 32, offset: 1216)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !251, file: !4, line: 865, baseType: !13, size: 32, offset: 1248)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !251, file: !4, line: 866, baseType: !13, size: 32, offset: 1280)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !251, file: !4, line: 867, baseType: !13, size: 32, offset: 1312)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !251, file: !4, line: 868, baseType: !17, size: 16, offset: 1344)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !251, file: !4, line: 869, baseType: !87, size: 8, offset: 1360)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !251, file: !4, line: 870, baseType: !87, size: 8, offset: 1368)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !251, file: !4, line: 871, baseType: !87, size: 8, offset: 1376)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !251, file: !4, line: 872, baseType: !291, size: 160, offset: 1384)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 160, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 20)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !203, file: !4, line: 900, baseType: !74, size: 64, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !203, file: !4, line: 901, baseType: !296, size: 64, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !4, line: 663, size: 640, elements: !298)
!298 = !{!299, !307, !320, !329, !338, !351, !365, !377, !389}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !297, file: !4, line: 664, baseType: !300, size: 128)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !4, line: 567, size: 128, elements: !301)
!301 = !{!302, !303, !304, !305, !306}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !4, line: 568, baseType: !154, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !4, line: 568, baseType: !87, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !4, line: 568, baseType: !87, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !4, line: 568, baseType: !17, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !4, line: 568, baseType: !17, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !297, file: !4, line: 665, baseType: !308, size: 384)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !4, line: 593, size: 384, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317, !318, !319}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !4, line: 594, baseType: !154, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !308, file: !4, line: 594, baseType: !87, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !4, line: 594, baseType: !87, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !308, file: !4, line: 594, baseType: !17, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !308, file: !4, line: 594, baseType: !17, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !308, file: !4, line: 594, baseType: !17, size: 16, offset: 112)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !308, file: !4, line: 595, baseType: !211, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !308, file: !4, line: 596, baseType: !126, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !308, file: !4, line: 597, baseType: !126, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !308, file: !4, line: 598, baseType: !20, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !297, file: !4, line: 666, baseType: !321, size: 192)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !4, line: 573, size: 192, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !4, line: 574, baseType: !154, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !321, file: !4, line: 574, baseType: !87, size: 8, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !4, line: 574, baseType: !87, size: 8, offset: 72)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !321, file: !4, line: 574, baseType: !17, size: 16, offset: 80)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !321, file: !4, line: 574, baseType: !17, size: 16, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !321, file: !4, line: 574, baseType: !78, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !297, file: !4, line: 667, baseType: !330, size: 192)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !4, line: 604, size: 192, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !4, line: 605, baseType: !154, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !330, file: !4, line: 605, baseType: !87, size: 8, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !4, line: 605, baseType: !87, size: 8, offset: 72)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !330, file: !4, line: 605, baseType: !17, size: 16, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !330, file: !4, line: 605, baseType: !17, size: 16, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !330, file: !4, line: 605, baseType: !74, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !297, file: !4, line: 668, baseType: !339, size: 448)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !4, line: 608, size: 448, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349, !350}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !4, line: 609, baseType: !154, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !339, file: !4, line: 609, baseType: !87, size: 8, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !4, line: 609, baseType: !87, size: 8, offset: 72)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !339, file: !4, line: 609, baseType: !17, size: 16, offset: 80)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !339, file: !4, line: 609, baseType: !17, size: 16, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !339, file: !4, line: 609, baseType: !13, size: 32, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !339, file: !4, line: 610, baseType: !211, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !339, file: !4, line: 611, baseType: !126, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !339, file: !4, line: 612, baseType: !126, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !339, file: !4, line: 613, baseType: !13, size: 32, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !297, file: !4, line: 669, baseType: !352, size: 512)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !4, line: 580, size: 512, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !4, line: 581, baseType: !154, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !352, file: !4, line: 581, baseType: !87, size: 8, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !4, line: 581, baseType: !87, size: 8, offset: 72)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !352, file: !4, line: 581, baseType: !17, size: 16, offset: 80)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !352, file: !4, line: 581, baseType: !17, size: 16, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !352, file: !4, line: 581, baseType: !13, size: 32, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !352, file: !4, line: 582, baseType: !78, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !352, file: !4, line: 583, baseType: !78, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !352, file: !4, line: 584, baseType: !177, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !352, file: !4, line: 585, baseType: !154, size: 64, offset: 384)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !352, file: !4, line: 586, baseType: !13, size: 32, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !297, file: !4, line: 670, baseType: !366, size: 320)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !4, line: 620, size: 320, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !4, line: 621, baseType: !154, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !4, line: 621, baseType: !87, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !4, line: 621, baseType: !87, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !366, file: !4, line: 621, baseType: !17, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !4, line: 621, baseType: !17, size: 16, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !366, file: !4, line: 621, baseType: !87, size: 8, offset: 112)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !366, file: !4, line: 622, baseType: !177, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !366, file: !4, line: 623, baseType: !78, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !366, file: !4, line: 624, baseType: !20, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !297, file: !4, line: 671, baseType: !378, size: 640)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !4, line: 631, size: 640, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !4, line: 632, baseType: !154, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !378, file: !4, line: 632, baseType: !87, size: 8, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !378, file: !4, line: 632, baseType: !87, size: 8, offset: 72)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !378, file: !4, line: 632, baseType: !17, size: 16, offset: 80)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !378, file: !4, line: 632, baseType: !17, size: 16, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !378, file: !4, line: 633, baseType: !386, size: 512, offset: 128)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 512, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 8)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !297, file: !4, line: 672, baseType: !390, size: 320)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !4, line: 654, size: 320, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !390, file: !4, line: 655, baseType: !154, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !390, file: !4, line: 655, baseType: !87, size: 8, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !4, line: 655, baseType: !87, size: 8, offset: 72)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !390, file: !4, line: 655, baseType: !17, size: 16, offset: 80)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !390, file: !4, line: 655, baseType: !17, size: 16, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !390, file: !4, line: 655, baseType: !87, size: 8, offset: 112)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !390, file: !4, line: 656, baseType: !74, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !390, file: !4, line: 657, baseType: !78, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !390, file: !4, line: 658, baseType: !401, size: 64, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !4, line: 645, size: 128, elements: !403)
!403 = !{!404, !410}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !402, file: !4, line: 646, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !12, line: 1052, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !409, !13, !154}
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !12, line: 424, baseType: !154)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !402, file: !4, line: 647, baseType: !154, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !203, file: !4, line: 902, baseType: !211, size: 64, offset: 512)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !203, file: !4, line: 903, baseType: !13, size: 32, offset: 576)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !178, file: !71, line: 61, baseType: !13, size: 32, offset: 1088)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !178, file: !71, line: 62, baseType: !13, size: 32, offset: 1120)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !178, file: !71, line: 63, baseType: !17, size: 16, offset: 1152)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !178, file: !71, line: 64, baseType: !87, size: 8, offset: 1168)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !178, file: !71, line: 66, baseType: !418, size: 2688, offset: 1216)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 2688, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 7)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !178, file: !71, line: 67, baseType: !422, size: 3072, offset: 3904)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 3072, elements: !387)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !178, file: !71, line: 68, baseType: !424, size: 576, offset: 6976)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 576, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 9)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !178, file: !71, line: 69, baseType: !141, size: 64, offset: 7552)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !178, file: !71, line: 71, baseType: !126, size: 64, offset: 7616)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !178, file: !71, line: 72, baseType: !141, size: 64, offset: 7680)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !178, file: !71, line: 73, baseType: !296, size: 64, offset: 7744)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !178, file: !71, line: 74, baseType: !74, size: 64, offset: 7808)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !178, file: !71, line: 75, baseType: !78, size: 64, offset: 7872)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !178, file: !71, line: 76, baseType: !74, size: 64, offset: 7936)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !178, file: !71, line: 77, baseType: !211, size: 64, offset: 8000)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !178, file: !71, line: 78, baseType: !78, size: 64, offset: 8064)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !178, file: !71, line: 79, baseType: !74, size: 64, offset: 8128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !178, file: !71, line: 80, baseType: !115, size: 64, offset: 8192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !178, file: !71, line: 81, baseType: !211, size: 64, offset: 8256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !178, file: !71, line: 82, baseType: !440, size: 64, offset: 8320)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !4, line: 702, size: 128, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !442, file: !4, line: 706, baseType: !13, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !442, file: !4, line: 707, baseType: !13, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !4, line: 708, baseType: !17, size: 16, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !442, file: !4, line: 709, baseType: !87, size: 8, offset: 80)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !442, file: !4, line: 710, baseType: !87, size: 8, offset: 88)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !442, file: !4, line: 711, baseType: !87, size: 8, offset: 96)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !178, file: !71, line: 83, baseType: !211, size: 64, offset: 8384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !178, file: !71, line: 84, baseType: !78, size: 64, offset: 8448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !178, file: !71, line: 85, baseType: !296, size: 64, offset: 8512)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !178, file: !71, line: 86, baseType: !78, size: 64, offset: 8576)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !178, file: !71, line: 87, baseType: !296, size: 64, offset: 8640)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !178, file: !71, line: 88, baseType: !211, size: 64, offset: 8704)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !178, file: !71, line: 89, baseType: !211, size: 64, offset: 8768)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !178, file: !71, line: 90, baseType: !458, size: 64, offset: 8832)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !178, file: !71, line: 91, baseType: !460, size: 64, offset: 8896)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !4, line: 637, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!11, !177, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !178, file: !71, line: 92, baseType: !466, size: 64, offset: 8960)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !4, line: 641, baseType: !174)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !170, file: !80, line: 152, baseType: !78, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !156, file: !80, line: 155, baseType: !13, size: 32, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !156, file: !80, line: 156, baseType: !188, size: 16, offset: 416)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !156, file: !80, line: 157, baseType: !87, size: 8, offset: 432)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !79, file: !80, line: 375, baseType: !472, size: 576)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !80, line: 122, size: 576, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !472, file: !80, line: 123, baseType: !78, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !472, file: !80, line: 123, baseType: !87, size: 8, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !80, line: 123, baseType: !87, size: 8, offset: 72)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !472, file: !80, line: 123, baseType: !17, size: 16, offset: 80)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !80, line: 123, baseType: !87, size: 8, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !472, file: !80, line: 123, baseType: !87, size: 8, offset: 104)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !472, file: !80, line: 124, baseType: !17, size: 16, offset: 112)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !472, file: !80, line: 125, baseType: !154, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !472, file: !80, line: 126, baseType: !20, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !472, file: !80, line: 127, baseType: !458, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !472, file: !80, line: 128, baseType: !78, size: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !472, file: !80, line: 129, baseType: !78, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !472, file: !80, line: 130, baseType: !74, size: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !472, file: !80, line: 131, baseType: !87, size: 8, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !79, file: !80, line: 376, baseType: !489, size: 448)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !80, line: 134, size: 448, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !502}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !489, file: !80, line: 135, baseType: !78, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !489, file: !80, line: 135, baseType: !87, size: 8, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !489, file: !80, line: 135, baseType: !87, size: 8, offset: 72)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !489, file: !80, line: 135, baseType: !17, size: 16, offset: 80)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !80, line: 135, baseType: !87, size: 8, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !489, file: !80, line: 135, baseType: !87, size: 8, offset: 104)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !489, file: !80, line: 136, baseType: !74, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !489, file: !80, line: 137, baseType: !78, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !489, file: !80, line: 138, baseType: !78, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !489, file: !80, line: 139, baseType: !501, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !12, line: 129, baseType: !20)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !489, file: !80, line: 140, baseType: !13, size: 32, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !79, file: !80, line: 377, baseType: !504, size: 320)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !80, line: 184, size: 320, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !515}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !504, file: !80, line: 185, baseType: !78, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !504, file: !80, line: 185, baseType: !87, size: 8, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !504, file: !80, line: 185, baseType: !87, size: 8, offset: 72)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !504, file: !80, line: 185, baseType: !17, size: 16, offset: 80)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !504, file: !80, line: 185, baseType: !87, size: 8, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !504, file: !80, line: 185, baseType: !512, size: 128, offset: 128)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 128, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 2)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !504, file: !80, line: 185, baseType: !78, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !79, file: !80, line: 378, baseType: !517, size: 384)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !80, line: 187, size: 384, elements: !518)
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !517, file: !80, line: 188, baseType: !78, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !517, file: !80, line: 188, baseType: !87, size: 8, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !517, file: !80, line: 188, baseType: !87, size: 8, offset: 72)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !517, file: !80, line: 188, baseType: !17, size: 16, offset: 80)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !517, file: !80, line: 188, baseType: !87, size: 8, offset: 96)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !517, file: !80, line: 189, baseType: !512, size: 128, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !517, file: !80, line: 189, baseType: !78, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !517, file: !80, line: 189, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !4, line: 480, size: 576, elements: !529)
!529 = !{!530, !531, !532, !533, !541, !556, !588, !589, !590, !591, !592, !593}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !528, file: !4, line: 481, baseType: !74, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !528, file: !4, line: 482, baseType: !527, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !4, line: 483, baseType: !527, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !528, file: !4, line: 484, baseType: !534, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !4, line: 497, size: 256, elements: !536)
!536 = !{!537, !538, !539, !540}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !535, file: !4, line: 498, baseType: !534, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !4, line: 499, baseType: !534, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !535, file: !4, line: 500, baseType: !527, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !535, file: !4, line: 501, baseType: !13, size: 32, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !528, file: !4, line: 485, baseType: !542, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !4, line: 466, size: 320, elements: !544)
!544 = !{!545, !550, !551, !552, !553, !554, !555}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !543, file: !4, line: 467, baseType: !546, size: 128)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !4, line: 459, size: 128, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !546, file: !4, line: 460, baseType: !87, size: 8)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !546, file: !4, line: 461, baseType: !20, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !543, file: !4, line: 468, baseType: !546, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !543, file: !4, line: 469, baseType: !17, size: 16, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !543, file: !4, line: 470, baseType: !87, size: 8, offset: 272)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !543, file: !4, line: 471, baseType: !87, size: 8, offset: 280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !543, file: !4, line: 472, baseType: !87, size: 8, offset: 288)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !543, file: !4, line: 473, baseType: !87, size: 8, offset: 296)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !528, file: !4, line: 486, baseType: !557, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !4, line: 448, size: 192, elements: !559)
!559 = !{!560, !583, !584, !585, !586, !587}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !558, file: !4, line: 449, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !4, line: 438, size: 64, elements: !562)
!562 = !{!563, !564, !577}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !561, file: !4, line: 439, baseType: !74, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !561, file: !4, line: 440, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !4, line: 419, size: 256, elements: !567)
!567 = !{!568, !573, !574, !575, !576}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !566, file: !4, line: 420, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !12, line: 1049, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!13, !409, !13, !154}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !566, file: !4, line: 421, baseType: !154, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !566, file: !4, line: 422, baseType: !74, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !566, file: !4, line: 423, baseType: !87, size: 8, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !566, file: !4, line: 424, baseType: !87, size: 8, offset: 200)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !561, file: !4, line: 441, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !4, line: 429, size: 128, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !579, file: !4, line: 430, baseType: !74, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !579, file: !4, line: 431, baseType: !578, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !558, file: !4, line: 450, baseType: !542, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !558, file: !4, line: 451, baseType: !87, size: 8, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !558, file: !4, line: 452, baseType: !87, size: 8, offset: 136)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !558, file: !4, line: 453, baseType: !87, size: 8, offset: 144)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !558, file: !4, line: 454, baseType: !87, size: 8, offset: 152)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !528, file: !4, line: 487, baseType: !20, size: 64, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !528, file: !4, line: 488, baseType: !13, size: 32, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !528, file: !4, line: 489, baseType: !17, size: 16, offset: 480)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !528, file: !4, line: 490, baseType: !17, size: 16, offset: 496)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !528, file: !4, line: 491, baseType: !87, size: 8, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !528, file: !4, line: 492, baseType: !87, size: 8, offset: 520)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !79, file: !80, line: 379, baseType: !595, size: 384)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !80, line: 192, size: 384, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603, !604, !605}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !595, file: !80, line: 193, baseType: !78, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !595, file: !80, line: 193, baseType: !87, size: 8, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !595, file: !80, line: 193, baseType: !87, size: 8, offset: 72)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !595, file: !80, line: 193, baseType: !17, size: 16, offset: 80)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !595, file: !80, line: 193, baseType: !87, size: 8, offset: 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !595, file: !80, line: 193, baseType: !512, size: 128, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !595, file: !80, line: 193, baseType: !78, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !595, file: !80, line: 193, baseType: !13, size: 32, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !595, file: !80, line: 194, baseType: !13, size: 32, offset: 352)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !79, file: !80, line: 380, baseType: !607, size: 384)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !80, line: 197, size: 384, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !607, file: !80, line: 198, baseType: !78, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !607, file: !80, line: 198, baseType: !87, size: 8, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !607, file: !80, line: 198, baseType: !87, size: 8, offset: 72)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !607, file: !80, line: 198, baseType: !17, size: 16, offset: 80)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !607, file: !80, line: 198, baseType: !87, size: 8, offset: 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !607, file: !80, line: 200, baseType: !87, size: 8, offset: 104)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !607, file: !80, line: 201, baseType: !87, size: 8, offset: 112)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !607, file: !80, line: 202, baseType: !512, size: 128, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !607, file: !80, line: 202, baseType: !78, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !607, file: !80, line: 202, baseType: !619, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !12, line: 128, baseType: !20)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !79, file: !80, line: 381, baseType: !621, size: 320)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !80, line: 205, size: 320, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !621, file: !80, line: 206, baseType: !78, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !621, file: !80, line: 206, baseType: !87, size: 8, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !621, file: !80, line: 206, baseType: !87, size: 8, offset: 72)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !621, file: !80, line: 206, baseType: !17, size: 16, offset: 80)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !80, line: 206, baseType: !87, size: 8, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !621, file: !80, line: 206, baseType: !512, size: 128, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !621, file: !80, line: 206, baseType: !78, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !79, file: !80, line: 382, baseType: !631, size: 384)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !80, line: 233, size: 384, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !631, file: !80, line: 234, baseType: !78, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !631, file: !80, line: 234, baseType: !87, size: 8, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !631, file: !80, line: 234, baseType: !87, size: 8, offset: 72)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !631, file: !80, line: 234, baseType: !17, size: 16, offset: 80)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !80, line: 234, baseType: !87, size: 8, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !631, file: !80, line: 234, baseType: !87, size: 8, offset: 104)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !631, file: !80, line: 234, baseType: !87, size: 8, offset: 112)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !631, file: !80, line: 234, baseType: !87, size: 8, offset: 120)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !631, file: !80, line: 234, baseType: !74, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !631, file: !80, line: 234, baseType: !13, size: 32, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !631, file: !80, line: 234, baseType: !13, size: 32, offset: 224)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !631, file: !80, line: 234, baseType: !13, size: 32, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !631, file: !80, line: 234, baseType: !87, size: 8, offset: 288)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !631, file: !80, line: 234, baseType: !87, size: 8, offset: 296)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !631, file: !80, line: 234, baseType: !78, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !79, file: !80, line: 383, baseType: !649, size: 576)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !80, line: 237, size: 576, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !649, file: !80, line: 238, baseType: !78, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !649, file: !80, line: 238, baseType: !87, size: 8, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !649, file: !80, line: 238, baseType: !87, size: 8, offset: 72)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !649, file: !80, line: 238, baseType: !17, size: 16, offset: 80)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !80, line: 238, baseType: !87, size: 8, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !649, file: !80, line: 238, baseType: !87, size: 8, offset: 104)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !649, file: !80, line: 238, baseType: !87, size: 8, offset: 112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !649, file: !80, line: 238, baseType: !87, size: 8, offset: 120)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !649, file: !80, line: 238, baseType: !74, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !649, file: !80, line: 238, baseType: !13, size: 32, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !649, file: !80, line: 238, baseType: !13, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !649, file: !80, line: 238, baseType: !13, size: 32, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !649, file: !80, line: 238, baseType: !87, size: 8, offset: 288)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !649, file: !80, line: 238, baseType: !87, size: 8, offset: 296)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !649, file: !80, line: 238, baseType: !17, size: 16, offset: 304)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !649, file: !80, line: 239, baseType: !78, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !649, file: !80, line: 240, baseType: !126, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !649, file: !80, line: 241, baseType: !17, size: 16, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !649, file: !80, line: 242, baseType: !126, size: 64, offset: 512)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !79, file: !80, line: 384, baseType: !671, size: 384)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !80, line: 262, size: 384, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !80, line: 263, baseType: !78, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !80, line: 263, baseType: !87, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !80, line: 263, baseType: !87, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !80, line: 263, baseType: !17, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !80, line: 263, baseType: !87, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !80, line: 263, baseType: !87, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !80, line: 263, baseType: !87, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !80, line: 263, baseType: !87, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !80, line: 263, baseType: !74, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !80, line: 263, baseType: !13, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !80, line: 263, baseType: !13, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !80, line: 263, baseType: !13, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !80, line: 263, baseType: !87, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !80, line: 263, baseType: !87, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !671, file: !80, line: 263, baseType: !87, size: 8, offset: 304)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !671, file: !80, line: 264, baseType: !78, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !79, file: !80, line: 385, baseType: !690, size: 448)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !80, line: 245, size: 448, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !80, line: 246, baseType: !78, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !80, line: 246, baseType: !87, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !80, line: 246, baseType: !87, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !80, line: 246, baseType: !17, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !80, line: 246, baseType: !87, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !690, file: !80, line: 246, baseType: !87, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !690, file: !80, line: 246, baseType: !87, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !690, file: !80, line: 246, baseType: !87, size: 8, offset: 120)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !80, line: 246, baseType: !74, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !690, file: !80, line: 246, baseType: !13, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !690, file: !80, line: 246, baseType: !13, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !690, file: !80, line: 246, baseType: !13, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !690, file: !80, line: 246, baseType: !87, size: 8, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !690, file: !80, line: 246, baseType: !87, size: 8, offset: 296)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !690, file: !80, line: 246, baseType: !78, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !690, file: !80, line: 247, baseType: !78, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !79, file: !80, line: 386, baseType: !709, size: 448)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !80, line: 250, size: 448, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !80, line: 251, baseType: !78, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !80, line: 251, baseType: !87, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !80, line: 251, baseType: !87, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !80, line: 251, baseType: !17, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !80, line: 251, baseType: !87, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !709, file: !80, line: 251, baseType: !87, size: 8, offset: 104)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !709, file: !80, line: 251, baseType: !87, size: 8, offset: 112)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !709, file: !80, line: 251, baseType: !87, size: 8, offset: 120)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !80, line: 251, baseType: !74, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !709, file: !80, line: 251, baseType: !13, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !709, file: !80, line: 251, baseType: !13, size: 32, offset: 224)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !709, file: !80, line: 251, baseType: !13, size: 32, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !709, file: !80, line: 251, baseType: !87, size: 8, offset: 288)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !709, file: !80, line: 251, baseType: !87, size: 8, offset: 296)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !709, file: !80, line: 256, baseType: !78, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !709, file: !80, line: 257, baseType: !78, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !79, file: !80, line: 387, baseType: !728, size: 512)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !80, line: 273, size: 512, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !738, !739}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !728, file: !80, line: 274, baseType: !78, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !728, file: !80, line: 274, baseType: !87, size: 8, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !728, file: !80, line: 274, baseType: !87, size: 8, offset: 72)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !728, file: !80, line: 274, baseType: !17, size: 16, offset: 80)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !80, line: 274, baseType: !87, size: 8, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !728, file: !80, line: 274, baseType: !74, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !728, file: !80, line: 275, baseType: !13, size: 32, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !728, file: !80, line: 276, baseType: !405, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !728, file: !80, line: 277, baseType: !154, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !728, file: !80, line: 278, baseType: !512, size: 128, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !79, file: !80, line: 388, baseType: !741, size: 512)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !80, line: 281, size: 512, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !756, !757, !758, !764, !765}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !741, file: !80, line: 282, baseType: !78, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !741, file: !80, line: 282, baseType: !87, size: 8, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !741, file: !80, line: 282, baseType: !87, size: 8, offset: 72)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !741, file: !80, line: 282, baseType: !17, size: 16, offset: 80)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !741, file: !80, line: 282, baseType: !87, size: 8, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !741, file: !80, line: 282, baseType: !87, size: 8, offset: 104)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !741, file: !80, line: 283, baseType: !87, size: 8, offset: 112)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !741, file: !80, line: 284, baseType: !751, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !12, line: 1084, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!11, !13, !501, !13, !755, !154, !154}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !741, file: !80, line: 285, baseType: !74, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !741, file: !80, line: 286, baseType: !154, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !741, file: !80, line: 287, baseType: !759, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !12, line: 1102, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!11, !409, !13, !154, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !741, file: !80, line: 288, baseType: !78, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !741, file: !80, line: 289, baseType: !78, size: 64, offset: 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !79, file: !80, line: 389, baseType: !767, size: 512)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !80, line: 307, size: 512, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !767, file: !80, line: 308, baseType: !78, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !767, file: !80, line: 308, baseType: !87, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !80, line: 308, baseType: !87, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !767, file: !80, line: 308, baseType: !17, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !80, line: 308, baseType: !87, size: 8, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !767, file: !80, line: 308, baseType: !87, size: 8, offset: 104)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !767, file: !80, line: 309, baseType: !87, size: 8, offset: 112)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !767, file: !80, line: 310, baseType: !87, size: 8, offset: 120)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !767, file: !80, line: 311, baseType: !154, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !767, file: !80, line: 312, baseType: !74, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !767, file: !80, line: 313, baseType: !141, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !767, file: !80, line: 314, baseType: !126, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !767, file: !80, line: 315, baseType: !126, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !767, file: !80, line: 316, baseType: !13, size: 32, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !79, file: !80, line: 390, baseType: !784, size: 448)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !80, line: 340, size: 448, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !791, !792, !793, !794, !795}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !784, file: !80, line: 341, baseType: !78, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !784, file: !80, line: 341, baseType: !87, size: 8, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !784, file: !80, line: 341, baseType: !87, size: 8, offset: 72)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !784, file: !80, line: 341, baseType: !17, size: 16, offset: 80)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !784, file: !80, line: 341, baseType: !87, size: 8, offset: 96)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !784, file: !80, line: 341, baseType: !74, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !784, file: !80, line: 342, baseType: !74, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !784, file: !80, line: 343, baseType: !154, size: 64, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !784, file: !80, line: 344, baseType: !126, size: 64, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !784, file: !80, line: 345, baseType: !13, size: 32, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !79, file: !80, line: 391, baseType: !797, size: 256)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !80, line: 350, size: 256, elements: !798)
!798 = !{!799, !800, !801, !802, !803, !804, !809}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !797, file: !80, line: 351, baseType: !78, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !797, file: !80, line: 351, baseType: !87, size: 8, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !797, file: !80, line: 351, baseType: !87, size: 8, offset: 72)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !797, file: !80, line: 351, baseType: !17, size: 16, offset: 80)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !797, file: !80, line: 351, baseType: !87, size: 8, offset: 96)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !797, file: !80, line: 351, baseType: !805, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !12, line: 1055, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !409, !154}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !797, file: !80, line: 352, baseType: !154, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !79, file: !80, line: 392, baseType: !811, size: 192)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !80, line: 357, size: 192, elements: !812)
!812 = !{!813, !814, !815, !816, !817, !818}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !811, file: !80, line: 358, baseType: !78, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !811, file: !80, line: 358, baseType: !87, size: 8, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !811, file: !80, line: 358, baseType: !87, size: 8, offset: 72)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !811, file: !80, line: 358, baseType: !17, size: 16, offset: 80)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !811, file: !80, line: 358, baseType: !87, size: 8, offset: 96)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !811, file: !80, line: 358, baseType: !78, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !79, file: !80, line: 399, baseType: !75, size: 384)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !4, line: 135, baseType: !87, size: 8, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !4, line: 136, baseType: !87, size: 8, offset: 72)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !4, line: 137, baseType: !17, size: 16, offset: 80)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !4, line: 138, baseType: !824, size: 32, offset: 96)
!824 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !825, line: 327, size: 32, elements: !826)
!825 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !824, file: !825, line: 328, baseType: !13, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !824, file: !825, line: 329, baseType: !270, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !75, file: !4, line: 139, baseType: !74, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !75, file: !4, line: 140, baseType: !74, size: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !75, file: !4, line: 141, baseType: !74, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !75, file: !4, line: 142, baseType: !188, size: 16, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !70, file: !71, line: 156, baseType: !31, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !70, file: !71, line: 157, baseType: !141, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !70, file: !71, line: 159, baseType: !74, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !70, file: !71, line: 160, baseType: !78, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !70, file: !71, line: 161, baseType: !115, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !70, file: !71, line: 163, baseType: !839, size: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !4, line: 351, size: 56, elements: !842)
!842 = !{!843, !849, !858, !866, !875}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !841, file: !4, line: 352, baseType: !844, size: 56)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !4, line: 295, size: 56, elements: !845)
!845 = !{!846, !847, !848}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !844, file: !4, line: 296, baseType: !270, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !844, file: !4, line: 297, baseType: !17, size: 16, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !844, file: !4, line: 298, baseType: !87, size: 8, offset: 48)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !841, file: !4, line: 353, baseType: !850, size: 56)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !4, line: 314, size: 56, elements: !851)
!851 = !{!852, !853, !854, !855, !856, !857}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !850, file: !4, line: 315, baseType: !87, size: 8)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !850, file: !4, line: 316, baseType: !87, size: 8, offset: 8)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !850, file: !4, line: 317, baseType: !87, size: 8, offset: 16)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !850, file: !4, line: 318, baseType: !87, size: 8, offset: 24)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !850, file: !4, line: 319, baseType: !87, size: 8, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !850, file: !4, line: 320, baseType: !17, size: 16, offset: 40)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !841, file: !4, line: 354, baseType: !859, size: 56)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !4, line: 325, size: 56, elements: !860)
!860 = !{!861, !862, !863, !865}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !859, file: !4, line: 326, baseType: !87, size: 8)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !859, file: !4, line: 327, baseType: !87, size: 8, offset: 8)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !859, file: !4, line: 328, baseType: !864, size: 32, offset: 16)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 32, elements: !271)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !859, file: !4, line: 329, baseType: !87, size: 8, offset: 48)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !841, file: !4, line: 355, baseType: !867, size: 56)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !4, line: 334, size: 56, elements: !868)
!868 = !{!869, !870, !871, !873, !874}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !867, file: !4, line: 335, baseType: !87, size: 8)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !867, file: !4, line: 336, baseType: !87, size: 8, offset: 8)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !867, file: !4, line: 337, baseType: !872, size: 16, offset: 16)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 16, elements: !513)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !867, file: !4, line: 338, baseType: !87, size: 8, offset: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !867, file: !4, line: 339, baseType: !17, size: 16, offset: 40)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !841, file: !4, line: 356, baseType: !876, size: 56)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !4, line: 342, size: 56, elements: !877)
!877 = !{!878, !879, !880, !881, !882, !883}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !876, file: !4, line: 343, baseType: !87, size: 8)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !876, file: !4, line: 344, baseType: !87, size: 8, offset: 8)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !876, file: !4, line: 345, baseType: !87, size: 8, offset: 16)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !876, file: !4, line: 346, baseType: !87, size: 8, offset: 24)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !876, file: !4, line: 347, baseType: !87, size: 8, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !876, file: !4, line: 348, baseType: !17, size: 16, offset: 40)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !70, file: !71, line: 164, baseType: !78, size: 64, offset: 448)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !70, file: !71, line: 165, baseType: !78, size: 64, offset: 512)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !70, file: !71, line: 167, baseType: !13, size: 32, offset: 576)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !70, file: !71, line: 168, baseType: !13, size: 32, offset: 608)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !70, file: !71, line: 169, baseType: !17, size: 16, offset: 640)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !70, file: !71, line: 170, baseType: !17, size: 16, offset: 656)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !70, file: !71, line: 171, baseType: !87, size: 8, offset: 672)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !70, file: !71, line: 172, baseType: !87, size: 8, offset: 680)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !71, line: 173, baseType: !87, size: 8, offset: 688)
!893 = !DILocalVariable(name: "info", arg: 1, scope: !66, file: !1, line: 84, type: !69)
!894 = !DILocation(line: 84, column: 63, scope: !66)
!895 = !DILocalVariable(name: "status", scope: !66, file: !1, line: 86, type: !11)
!896 = !DILocation(line: 86, column: 14, scope: !66)
!897 = !DILocalVariable(name: "op", scope: !66, file: !1, line: 87, type: !211)
!898 = !DILocation(line: 87, column: 27, scope: !66)
!899 = !DILocalVariable(name: "walk_state", scope: !66, file: !1, line: 88, type: !177)
!900 = !DILocation(line: 88, column: 26, scope: !66)
!901 = !DILocation(line: 94, column: 2, scope: !66)
!902 = !DILocation(line: 98, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !66, file: !1, line: 98, column: 6)
!904 = !DILocation(line: 98, column: 12, scope: !903)
!905 = !DILocation(line: 98, column: 16, scope: !903)
!906 = !DILocation(line: 98, column: 22, scope: !903)
!907 = !DILocation(line: 98, column: 6, scope: !66)
!908 = !DILocation(line: 99, column: 3, scope: !909)
!909 = distinct !DILexicalBlock(scope: !903, file: !1, line: 98, column: 28)
!910 = !DILocation(line: 105, column: 37, scope: !66)
!911 = !DILocation(line: 105, column: 43, scope: !66)
!912 = !DILocation(line: 105, column: 49, scope: !66)
!913 = !DILocation(line: 105, column: 55, scope: !66)
!914 = !DILocation(line: 105, column: 6, scope: !66)
!915 = !DILocation(line: 104, column: 9, scope: !66)
!916 = !DILocation(line: 106, column: 6, scope: !917)
!917 = distinct !DILexicalBlock(scope: !66, file: !1, line: 106, column: 6)
!918 = !DILocation(line: 106, column: 6, scope: !66)
!919 = !DILocation(line: 107, column: 3, scope: !920)
!920 = distinct !DILexicalBlock(scope: !917, file: !1, line: 106, column: 28)
!921 = !DILocation(line: 113, column: 32, scope: !66)
!922 = !DILocation(line: 113, column: 2, scope: !66)
!923 = !DILocation(line: 124, column: 31, scope: !66)
!924 = !DILocation(line: 124, column: 37, scope: !66)
!925 = !DILocation(line: 124, column: 47, scope: !66)
!926 = !DILocation(line: 124, column: 54, scope: !66)
!927 = !DILocation(line: 124, column: 7, scope: !66)
!928 = !DILocation(line: 124, column: 5, scope: !66)
!929 = !DILocation(line: 125, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !66, file: !1, line: 125, column: 6)
!931 = !DILocation(line: 125, column: 6, scope: !66)
!932 = !DILocation(line: 126, column: 10, scope: !933)
!933 = distinct !DILexicalBlock(scope: !930, file: !1, line: 125, column: 11)
!934 = !DILocation(line: 127, column: 3, scope: !933)
!935 = !DILocation(line: 132, column: 2, scope: !66)
!936 = !DILocation(line: 132, column: 8, scope: !66)
!937 = !DILocation(line: 132, column: 20, scope: !66)
!938 = !DILocation(line: 134, column: 32, scope: !66)
!939 = !DILocation(line: 134, column: 38, scope: !66)
!940 = !DILocation(line: 134, column: 48, scope: !66)
!941 = !DILocation(line: 134, column: 55, scope: !66)
!942 = !DILocation(line: 134, column: 6, scope: !66)
!943 = !DILocation(line: 133, column: 13, scope: !66)
!944 = !DILocation(line: 136, column: 7, scope: !945)
!945 = distinct !DILexicalBlock(scope: !66, file: !1, line: 136, column: 6)
!946 = !DILocation(line: 136, column: 6, scope: !66)
!947 = !DILocation(line: 137, column: 10, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !1, line: 136, column: 19)
!949 = !DILocation(line: 138, column: 3, scope: !948)
!950 = !DILocation(line: 141, column: 33, scope: !66)
!951 = !DILocation(line: 141, column: 45, scope: !66)
!952 = !DILocation(line: 141, column: 49, scope: !66)
!953 = !DILocation(line: 141, column: 55, scope: !66)
!954 = !DILocation(line: 142, column: 12, scope: !66)
!955 = !DILocation(line: 142, column: 18, scope: !66)
!956 = !DILocation(line: 142, column: 28, scope: !66)
!957 = !DILocation(line: 142, column: 35, scope: !66)
!958 = !DILocation(line: 143, column: 12, scope: !66)
!959 = !DILocation(line: 143, column: 18, scope: !66)
!960 = !DILocation(line: 143, column: 28, scope: !66)
!961 = !DILocation(line: 143, column: 35, scope: !66)
!962 = !DILocation(line: 143, column: 47, scope: !66)
!963 = !DILocation(line: 144, column: 12, scope: !66)
!964 = !DILocation(line: 144, column: 18, scope: !66)
!965 = !DILocation(line: 141, column: 11, scope: !66)
!966 = !DILocation(line: 141, column: 9, scope: !66)
!967 = !DILocation(line: 145, column: 6, scope: !968)
!968 = distinct !DILexicalBlock(scope: !66, file: !1, line: 145, column: 6)
!969 = !DILocation(line: 145, column: 6, scope: !66)
!970 = !DILocation(line: 146, column: 29, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !1, line: 145, column: 28)
!972 = !DILocation(line: 146, column: 3, scope: !971)
!973 = !DILocation(line: 147, column: 3, scope: !971)
!974 = !DILocation(line: 150, column: 32, scope: !66)
!975 = !DILocation(line: 150, column: 38, scope: !66)
!976 = !DILocation(line: 150, column: 2, scope: !66)
!977 = !DILocation(line: 150, column: 14, scope: !66)
!978 = !DILocation(line: 150, column: 30, scope: !66)
!979 = !DILocation(line: 151, column: 2, scope: !66)
!980 = !DILocation(line: 151, column: 14, scope: !66)
!981 = !DILocation(line: 151, column: 31, scope: !66)
!982 = !DILocation(line: 153, column: 6, scope: !983)
!983 = distinct !DILexicalBlock(scope: !66, file: !1, line: 153, column: 6)
!984 = !DILocation(line: 153, column: 12, scope: !983)
!985 = !DILocation(line: 153, column: 22, scope: !983)
!986 = !DILocation(line: 153, column: 29, scope: !983)
!987 = !DILocation(line: 153, column: 40, scope: !983)
!988 = !DILocation(line: 153, column: 6, scope: !66)
!989 = !DILocation(line: 154, column: 3, scope: !990)
!990 = distinct !DILexicalBlock(scope: !983, file: !1, line: 153, column: 68)
!991 = !DILocation(line: 154, column: 15, scope: !990)
!992 = !DILocation(line: 154, column: 27, scope: !990)
!993 = !DILocation(line: 155, column: 2, scope: !990)
!994 = !DILocation(line: 159, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !66, file: !1, line: 159, column: 6)
!996 = !DILocation(line: 159, column: 12, scope: !995)
!997 = !DILocation(line: 159, column: 22, scope: !995)
!998 = !DILocation(line: 159, column: 29, scope: !995)
!999 = !DILocation(line: 159, column: 40, scope: !995)
!1000 = !DILocation(line: 159, column: 6, scope: !66)
!1001 = !DILocation(line: 161, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !995, file: !1, line: 159, column: 69)
!1003 = !DILocation(line: 161, column: 13, scope: !1002)
!1004 = !DILocation(line: 161, column: 23, scope: !1002)
!1005 = !DILocation(line: 161, column: 30, scope: !1002)
!1006 = !DILocation(line: 161, column: 39, scope: !1002)
!1007 = !DILocation(line: 161, column: 54, scope: !1002)
!1008 = !DILocation(line: 160, column: 10, scope: !1002)
!1009 = !DILocation(line: 162, column: 25, scope: !1002)
!1010 = !DILocation(line: 162, column: 37, scope: !1002)
!1011 = !DILocation(line: 162, column: 3, scope: !1002)
!1012 = !DILocation(line: 162, column: 9, scope: !1002)
!1013 = !DILocation(line: 162, column: 23, scope: !1002)
!1014 = !DILocation(line: 166, column: 29, scope: !1002)
!1015 = !DILocation(line: 166, column: 3, scope: !1002)
!1016 = !DILocation(line: 167, column: 26, scope: !1002)
!1017 = !DILocation(line: 167, column: 38, scope: !1002)
!1018 = !DILocation(line: 167, column: 3, scope: !1002)
!1019 = !DILocation(line: 168, column: 36, scope: !1002)
!1020 = !DILocation(line: 168, column: 48, scope: !1002)
!1021 = !DILocation(line: 169, column: 8, scope: !1002)
!1022 = !DILocation(line: 168, column: 3, scope: !1002)
!1023 = !DILocation(line: 170, column: 29, scope: !1002)
!1024 = !DILocation(line: 170, column: 3, scope: !1002)
!1025 = !DILocation(line: 171, column: 3, scope: !1002)
!1026 = !DILocation(line: 178, column: 6, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !66, file: !1, line: 178, column: 6)
!1028 = !DILocation(line: 178, column: 6, scope: !66)
!1029 = !DILocation(line: 180, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 178, column: 41)
!1031 = !DILocation(line: 179, column: 3, scope: !1030)
!1032 = !DILocation(line: 179, column: 15, scope: !1030)
!1033 = !DILocation(line: 179, column: 35, scope: !1030)
!1034 = !DILocation(line: 181, column: 8, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 181, column: 7)
!1036 = !DILocation(line: 181, column: 20, scope: !1035)
!1037 = !DILocation(line: 181, column: 7, scope: !1030)
!1038 = !DILocation(line: 182, column: 11, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 181, column: 41)
!1040 = !DILocation(line: 183, column: 30, scope: !1039)
!1041 = !DILocation(line: 183, column: 4, scope: !1039)
!1042 = !DILocation(line: 184, column: 4, scope: !1039)
!1043 = !DILocation(line: 186, column: 2, scope: !1030)
!1044 = !DILocation(line: 190, column: 29, scope: !66)
!1045 = !DILocation(line: 190, column: 11, scope: !66)
!1046 = !DILocation(line: 190, column: 9, scope: !66)
!1047 = !DILocation(line: 190, column: 2, scope: !66)
!1048 = !DILabel(scope: !66, name: "cleanup", file: !1, line: 194)
!1049 = !DILocation(line: 194, column: 1, scope: !66)
!1050 = !DILocation(line: 195, column: 28, scope: !66)
!1051 = !DILocation(line: 195, column: 2, scope: !66)
!1052 = !DILocation(line: 199, column: 32, scope: !66)
!1053 = !DILocation(line: 199, column: 2, scope: !66)
!1054 = !DILocation(line: 203, column: 6, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !66, file: !1, line: 203, column: 6)
!1056 = !DILocation(line: 203, column: 6, scope: !66)
!1057 = !DILocation(line: 204, column: 3, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 203, column: 28)
!1059 = !DILocation(line: 211, column: 6, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !66, file: !1, line: 211, column: 6)
!1061 = !DILocation(line: 211, column: 12, scope: !1060)
!1062 = !DILocation(line: 211, column: 6, scope: !66)
!1063 = !DILocation(line: 216, column: 10, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 211, column: 27)
!1065 = !DILocation(line: 217, column: 2, scope: !1064)
!1066 = !DILocation(line: 219, column: 2, scope: !66)
!1067 = !DILocation(line: 220, column: 1, scope: !66)
!1068 = distinct !DISubprogram(name: "acpi_ps_update_parameter_list", scope: !1, file: !1, line: 324, type: !1069, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !34)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !69, !17}
!1071 = !DILocalVariable(name: "info", arg: 1, scope: !1068, file: !1, line: 324, type: !69)
!1072 = !DILocation(line: 324, column: 58, scope: !1068)
!1073 = !DILocalVariable(name: "action", arg: 2, scope: !1068, file: !1, line: 324, type: !17)
!1074 = !DILocation(line: 324, column: 68, scope: !1068)
!1075 = !DILocalVariable(name: "i", scope: !1068, file: !1, line: 326, type: !13)
!1076 = !DILocation(line: 326, column: 6, scope: !1068)
!1077 = !DILocation(line: 328, column: 6, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 328, column: 6)
!1079 = !DILocation(line: 328, column: 12, scope: !1078)
!1080 = !DILocation(line: 328, column: 6, scope: !1068)
!1081 = !DILocation(line: 332, column: 10, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 332, column: 3)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 328, column: 24)
!1084 = !DILocation(line: 332, column: 8, scope: !1082)
!1085 = !DILocation(line: 332, column: 15, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !1, line: 332, column: 3)
!1087 = !DILocation(line: 332, column: 21, scope: !1086)
!1088 = !DILocation(line: 332, column: 32, scope: !1086)
!1089 = !DILocation(line: 332, column: 3, scope: !1082)
!1090 = !DILocation(line: 336, column: 42, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 332, column: 41)
!1092 = !DILocation(line: 337, column: 14, scope: !1091)
!1093 = !DILocation(line: 337, column: 25, scope: !1091)
!1094 = !DILocation(line: 338, column: 14, scope: !1091)
!1095 = !DILocation(line: 336, column: 10, scope: !1091)
!1096 = !DILocation(line: 339, column: 3, scope: !1091)
!1097 = !DILocation(line: 332, column: 37, scope: !1086)
!1098 = !DILocation(line: 332, column: 3, scope: !1086)
!1099 = distinct !{!1099, !1089, !1100}
!1100 = !DILocation(line: 339, column: 3, scope: !1082)
!1101 = !DILocation(line: 340, column: 2, scope: !1083)
!1102 = !DILocation(line: 341, column: 1, scope: !1068)
!1103 = distinct !DISubprogram(name: "acpi_ps_execute_table", scope: !1, file: !1, line: 239, type: !67, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!1104 = !DILocalVariable(name: "info", arg: 1, scope: !1103, file: !1, line: 239, type: !69)
!1105 = !DILocation(line: 239, column: 62, scope: !1103)
!1106 = !DILocalVariable(name: "status", scope: !1103, file: !1, line: 241, type: !11)
!1107 = !DILocation(line: 241, column: 14, scope: !1103)
!1108 = !DILocalVariable(name: "op", scope: !1103, file: !1, line: 242, type: !211)
!1109 = !DILocation(line: 242, column: 27, scope: !1103)
!1110 = !DILocalVariable(name: "walk_state", scope: !1103, file: !1, line: 243, type: !177)
!1111 = !DILocation(line: 243, column: 26, scope: !1103)
!1112 = !DILocation(line: 249, column: 31, scope: !1103)
!1113 = !DILocation(line: 249, column: 37, scope: !1103)
!1114 = !DILocation(line: 249, column: 47, scope: !1103)
!1115 = !DILocation(line: 249, column: 54, scope: !1103)
!1116 = !DILocation(line: 249, column: 7, scope: !1103)
!1117 = !DILocation(line: 249, column: 5, scope: !1103)
!1118 = !DILocation(line: 250, column: 7, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 250, column: 6)
!1120 = !DILocation(line: 250, column: 6, scope: !1103)
!1121 = !DILocation(line: 251, column: 10, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 250, column: 11)
!1123 = !DILocation(line: 252, column: 3, scope: !1122)
!1124 = !DILocation(line: 258, column: 32, scope: !1103)
!1125 = !DILocation(line: 258, column: 38, scope: !1103)
!1126 = !DILocation(line: 258, column: 48, scope: !1103)
!1127 = !DILocation(line: 258, column: 55, scope: !1103)
!1128 = !DILocation(line: 258, column: 6, scope: !1103)
!1129 = !DILocation(line: 257, column: 13, scope: !1103)
!1130 = !DILocation(line: 260, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 260, column: 6)
!1132 = !DILocation(line: 260, column: 6, scope: !1103)
!1133 = !DILocation(line: 261, column: 10, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 260, column: 19)
!1135 = !DILocation(line: 262, column: 3, scope: !1134)
!1136 = !DILocation(line: 265, column: 33, scope: !1103)
!1137 = !DILocation(line: 265, column: 45, scope: !1103)
!1138 = !DILocation(line: 265, column: 49, scope: !1103)
!1139 = !DILocation(line: 265, column: 55, scope: !1103)
!1140 = !DILocation(line: 266, column: 12, scope: !1103)
!1141 = !DILocation(line: 266, column: 18, scope: !1103)
!1142 = !DILocation(line: 266, column: 28, scope: !1103)
!1143 = !DILocation(line: 266, column: 35, scope: !1103)
!1144 = !DILocation(line: 267, column: 12, scope: !1103)
!1145 = !DILocation(line: 267, column: 18, scope: !1103)
!1146 = !DILocation(line: 267, column: 28, scope: !1103)
!1147 = !DILocation(line: 267, column: 35, scope: !1103)
!1148 = !DILocation(line: 267, column: 47, scope: !1103)
!1149 = !DILocation(line: 268, column: 12, scope: !1103)
!1150 = !DILocation(line: 268, column: 18, scope: !1103)
!1151 = !DILocation(line: 265, column: 11, scope: !1103)
!1152 = !DILocation(line: 265, column: 9, scope: !1103)
!1153 = !DILocation(line: 269, column: 6, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 269, column: 6)
!1155 = !DILocation(line: 269, column: 6, scope: !1103)
!1156 = !DILocation(line: 270, column: 3, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 269, column: 28)
!1158 = !DILocation(line: 273, column: 32, scope: !1103)
!1159 = !DILocation(line: 273, column: 38, scope: !1103)
!1160 = !DILocation(line: 273, column: 2, scope: !1103)
!1161 = !DILocation(line: 273, column: 14, scope: !1103)
!1162 = !DILocation(line: 273, column: 30, scope: !1103)
!1163 = !DILocation(line: 274, column: 2, scope: !1103)
!1164 = !DILocation(line: 274, column: 14, scope: !1103)
!1165 = !DILocation(line: 274, column: 31, scope: !1103)
!1166 = !DILocation(line: 276, column: 6, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 276, column: 6)
!1168 = !DILocation(line: 276, column: 12, scope: !1167)
!1169 = !DILocation(line: 276, column: 22, scope: !1167)
!1170 = !DILocation(line: 276, column: 29, scope: !1167)
!1171 = !DILocation(line: 276, column: 40, scope: !1167)
!1172 = !DILocation(line: 276, column: 6, scope: !1103)
!1173 = !DILocation(line: 277, column: 3, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 276, column: 68)
!1175 = !DILocation(line: 277, column: 15, scope: !1174)
!1176 = !DILocation(line: 277, column: 27, scope: !1174)
!1177 = !DILocation(line: 278, column: 2, scope: !1174)
!1178 = !DILocation(line: 282, column: 6, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 282, column: 6)
!1180 = !DILocation(line: 282, column: 12, scope: !1179)
!1181 = !DILocation(line: 282, column: 17, scope: !1179)
!1182 = !DILocation(line: 282, column: 20, scope: !1179)
!1183 = !DILocation(line: 282, column: 26, scope: !1179)
!1184 = !DILocation(line: 282, column: 34, scope: !1179)
!1185 = !DILocation(line: 282, column: 31, scope: !1179)
!1186 = !DILocation(line: 282, column: 6, scope: !1103)
!1187 = !DILocation(line: 284, column: 32, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1179, file: !1, line: 282, column: 54)
!1189 = !DILocation(line: 284, column: 38, scope: !1188)
!1190 = !DILocation(line: 285, column: 11, scope: !1188)
!1191 = !DILocation(line: 284, column: 7, scope: !1188)
!1192 = !DILocation(line: 283, column: 10, scope: !1188)
!1193 = !DILocation(line: 286, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 286, column: 7)
!1195 = !DILocation(line: 286, column: 7, scope: !1188)
!1196 = !DILocation(line: 287, column: 4, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 286, column: 29)
!1198 = !DILocation(line: 289, column: 2, scope: !1188)
!1199 = !DILocation(line: 294, column: 2, scope: !1103)
!1200 = !DILocation(line: 295, column: 29, scope: !1103)
!1201 = !DILocation(line: 295, column: 11, scope: !1103)
!1202 = !DILocation(line: 295, column: 9, scope: !1103)
!1203 = !DILocation(line: 296, column: 2, scope: !1103)
!1204 = !DILocation(line: 297, column: 13, scope: !1103)
!1205 = !DILocation(line: 297, column: 2, scope: !1103)
!1206 = !DILabel(scope: !1103, name: "cleanup", file: !1, line: 299)
!1207 = !DILocation(line: 299, column: 1, scope: !1103)
!1208 = !DILocation(line: 300, column: 6, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 300, column: 6)
!1210 = !DILocation(line: 300, column: 6, scope: !1103)
!1211 = !DILocation(line: 301, column: 29, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 300, column: 18)
!1213 = !DILocation(line: 301, column: 3, scope: !1212)
!1214 = !DILocation(line: 302, column: 2, scope: !1212)
!1215 = !DILocation(line: 303, column: 6, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 303, column: 6)
!1217 = !DILocation(line: 303, column: 6, scope: !1103)
!1218 = !DILocation(line: 304, column: 29, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 303, column: 10)
!1220 = !DILocation(line: 304, column: 3, scope: !1219)
!1221 = !DILocation(line: 305, column: 2, scope: !1219)
!1222 = !DILocation(line: 306, column: 2, scope: !1103)
