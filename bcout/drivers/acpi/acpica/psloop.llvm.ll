; ModuleID = '../bcout/drivers/acpi/acpica/psloop.llvm.bc'
source_filename = "drivers/acpi/acpica/psloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_pscope_state = type { i8*, i8, i8, i16, i16, i32, %union.acpi_parse_object*, i8*, i8*, i32 }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }
%struct.acpi_common_state = type { i8*, i8, i8, i16, i16 }
%struct.acpi_control_state = type { i8*, i8, i8, i16, i16, i16, %union.acpi_parse_object*, i8*, i8*, i64 }
%struct.acpi_parse_obj_named = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, i8*, i8*, i32, i32 }

@_acpi_module_name = internal constant [7 x i8] c"psloop\00", align 1, !dbg !0
@.str = private unnamed_addr constant [38 x i8] c"Invoked method did not return a value\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GetPredicate Failed\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Skipping parse of AML opcode: %s (0x%4.4X)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Skipping While/If block\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Skipping Else block\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_parse_loop(%struct.acpi_walk_state* %walk_state) #0 !dbg !38 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %op = alloca %union.acpi_parse_object*, align 8
  %parser_state = alloca %struct.acpi_parse_state*, align 8
  %aml_op_start = alloca i8*, align 8
  %opcode_length = alloca i8, align 1
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !797, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.declare(metadata i32* %status, metadata !799, metadata !DIExpression()), !dbg !800
  store i32 0, i32* %status, align 4, !dbg !800
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op, metadata !801, metadata !DIExpression()), !dbg !802
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %op, align 8, !dbg !802
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state, metadata !803, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.declare(metadata i8** %aml_op_start, metadata !806, metadata !DIExpression()), !dbg !807
  store i8* null, i8** %aml_op_start, align 8, !dbg !807
  call void @llvm.dbg.declare(metadata i8* %opcode_length, metadata !808, metadata !DIExpression()), !dbg !809
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !810
  %descending_callback = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 50, !dbg !812
  %1 = load i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)** %descending_callback, align 8, !dbg !812
  %cmp = icmp eq i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)* %1, null, !dbg !813
  br i1 %cmp, label %if.then, label %if.end, !dbg !814

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !815
  br label %return, !dbg !815

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !817
  %parser_state1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 21, !dbg !818
  store %struct.acpi_parse_state* %parser_state1, %struct.acpi_parse_state** %parser_state, align 8, !dbg !819
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !820
  %arg_types = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 17, !dbg !821
  store i32 0, i32* %arg_types, align 8, !dbg !822
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !823
  %walk_type = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 2, !dbg !825
  %5 = load i8, i8* %walk_type, align 1, !dbg !825
  %conv = zext i8 %5 to i32, !dbg !823
  %and = and i32 %conv, 2, !dbg !826
  %tobool = icmp ne i32 %and, 0, !dbg !826
  br i1 %tobool, label %if.then2, label %if.end52, !dbg !827

if.then2:                                         ; preds = %if.end
  %6 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !828
  %call = call zeroext i8 @acpi_ps_has_completed_scope(%struct.acpi_parse_state* %6) #3, !dbg !831
  %tobool3 = icmp ne i8 %call, 0, !dbg !831
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !832

if.then4:                                         ; preds = %if.then2
  %7 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !833
  %scope = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %7, i32 0, i32 7, !dbg !836
  %8 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !836
  %parse_scope = bitcast %union.acpi_generic_state* %8 to %struct.acpi_pscope_state*, !dbg !837
  %op5 = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope, i32 0, i32 6, !dbg !838
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op5, align 8, !dbg !838
  %tobool6 = icmp ne %union.acpi_parse_object* %9, null, !dbg !839
  br i1 %tobool6, label %land.lhs.true, label %if.end44, !dbg !840

land.lhs.true:                                    ; preds = %if.then4
  %10 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !841
  %scope7 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %10, i32 0, i32 7, !dbg !842
  %11 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope7, align 8, !dbg !842
  %parse_scope8 = bitcast %union.acpi_generic_state* %11 to %struct.acpi_pscope_state*, !dbg !843
  %op9 = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope8, i32 0, i32 6, !dbg !844
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op9, align 8, !dbg !844
  %common = bitcast %union.acpi_parse_object* %12 to %struct.acpi_parse_obj_common*, !dbg !845
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !846
  %13 = load i16, i16* %aml_opcode, align 2, !dbg !846
  %conv10 = zext i16 %13 to i32, !dbg !841
  %cmp11 = icmp eq i32 %conv10, 160, !dbg !847
  br i1 %cmp11, label %land.lhs.true21, label %lor.lhs.false, !dbg !848

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !849
  %scope13 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %14, i32 0, i32 7, !dbg !850
  %15 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope13, align 8, !dbg !850
  %parse_scope14 = bitcast %union.acpi_generic_state* %15 to %struct.acpi_pscope_state*, !dbg !851
  %op15 = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope14, i32 0, i32 6, !dbg !852
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op15, align 8, !dbg !852
  %common16 = bitcast %union.acpi_parse_object* %16 to %struct.acpi_parse_obj_common*, !dbg !853
  %aml_opcode17 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common16, i32 0, i32 3, !dbg !854
  %17 = load i16, i16* %aml_opcode17, align 2, !dbg !854
  %conv18 = zext i16 %17 to i32, !dbg !849
  %cmp19 = icmp eq i32 %conv18, 162, !dbg !855
  br i1 %cmp19, label %land.lhs.true21, label %if.end44, !dbg !856

land.lhs.true21:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !857
  %control_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 32, !dbg !858
  %19 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !858
  %tobool22 = icmp ne %union.acpi_generic_state* %19, null, !dbg !859
  br i1 %tobool22, label %land.lhs.true23, label %if.end44, !dbg !860

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !861
  %control_state24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 32, !dbg !862
  %21 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state24, align 8, !dbg !862
  %common25 = bitcast %union.acpi_generic_state* %21 to %struct.acpi_common_state*, !dbg !863
  %state = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common25, i32 0, i32 4, !dbg !864
  %22 = load i16, i16* %state, align 4, !dbg !864
  %conv26 = zext i16 %22 to i32, !dbg !861
  %cmp27 = icmp eq i32 %conv26, 194, !dbg !865
  br i1 %cmp27, label %if.then29, label %if.end44, !dbg !866

if.then29:                                        ; preds = %land.lhs.true23
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !867
  %op30 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 40, !dbg !869
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %op30, align 8, !dbg !870
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !871
  %call31 = call i32 @acpi_ds_get_predicate_value(%struct.acpi_walk_state* %24, %union.acpi_operand_object* inttoptr (i64 1 to %union.acpi_operand_object*)) #3, !dbg !872
  store i32 %call31, i32* %status, align 4, !dbg !873
  %25 = load i32, i32* %status, align 4, !dbg !874
  %tobool32 = icmp ne i32 %25, 0, !dbg !874
  br i1 %tobool32, label %land.lhs.true33, label %if.end42, !dbg !876

land.lhs.true33:                                  ; preds = %if.then29
  %26 = load i32, i32* %status, align 4, !dbg !877
  %and34 = and i32 %26, 61440, !dbg !878
  %cmp35 = icmp ne i32 %and34, 16384, !dbg !879
  br i1 %cmp35, label %if.then37, label %if.end42, !dbg !880

if.then37:                                        ; preds = %land.lhs.true33
  %27 = load i32, i32* %status, align 4, !dbg !881
  %cmp38 = icmp eq i32 %27, 12306, !dbg !884
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !885

if.then40:                                        ; preds = %if.then37
  %28 = load i32, i32* %status, align 4, !dbg !886
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 270, i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0)) #3, !dbg !886
  br label %if.end41, !dbg !888

if.end41:                                         ; preds = %if.then40, %if.then37
  %29 = load i32, i32* %status, align 4, !dbg !889
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 274, i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !889
  %30 = load i32, i32* %status, align 4, !dbg !890
  store i32 %30, i32* %retval, align 4, !dbg !890
  br label %return, !dbg !890

if.end42:                                         ; preds = %land.lhs.true33, %if.then29
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !891
  %32 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !892
  %33 = load i32, i32* %status, align 4, !dbg !893
  %call43 = call i32 @acpi_ps_next_parse_state(%struct.acpi_walk_state* %31, %union.acpi_parse_object* %32, i32 %33) #3, !dbg !894
  store i32 %call43, i32* %status, align 4, !dbg !895
  br label %if.end44, !dbg !896

if.end44:                                         ; preds = %if.end42, %land.lhs.true23, %land.lhs.true21, %lor.lhs.false, %if.then4
  %34 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !897
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !898
  %arg_types45 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 17, !dbg !899
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !900
  %arg_count = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %36, i32 0, i32 23, !dbg !901
  call void @acpi_ps_pop_scope(%struct.acpi_parse_state* %34, %union.acpi_parse_object** %op, i32* %arg_types45, i32* %arg_count) #3, !dbg !902
  br label %if.end51, !dbg !903

if.else:                                          ; preds = %if.then2
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !904
  %prev_op = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %37, i32 0, i32 47, !dbg !906
  %38 = load %union.acpi_parse_object*, %union.acpi_parse_object** %prev_op, align 8, !dbg !906
  %tobool46 = icmp ne %union.acpi_parse_object* %38, null, !dbg !904
  br i1 %tobool46, label %if.then47, label %if.end50, !dbg !907

if.then47:                                        ; preds = %if.else
  %39 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !908
  %prev_op48 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %39, i32 0, i32 47, !dbg !910
  %40 = load %union.acpi_parse_object*, %union.acpi_parse_object** %prev_op48, align 8, !dbg !910
  store %union.acpi_parse_object* %40, %union.acpi_parse_object** %op, align 8, !dbg !911
  %41 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !912
  %prev_arg_types = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %41, i32 0, i32 22, !dbg !913
  %42 = load i32, i32* %prev_arg_types, align 8, !dbg !913
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !914
  %arg_types49 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %43, i32 0, i32 17, !dbg !915
  store i32 %42, i32* %arg_types49, align 8, !dbg !916
  br label %if.end50, !dbg !917

if.end50:                                         ; preds = %if.then47, %if.else
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end44
  br label %if.end52, !dbg !918

if.end52:                                         ; preds = %if.end51, %if.end
  br label %while.cond, !dbg !919

while.cond:                                       ; preds = %if.end282, %if.end188, %if.end187, %if.end173, %if.end115, %if.then74, %if.end52
  %44 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !920
  %aml = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %44, i32 0, i32 1, !dbg !921
  %45 = load i8*, i8** %aml, align 8, !dbg !921
  %46 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !922
  %aml_end = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %46, i32 0, i32 2, !dbg !923
  %47 = load i8*, i8** %aml_end, align 8, !dbg !923
  %cmp53 = icmp ult i8* %45, %47, !dbg !924
  br i1 %cmp53, label %lor.end, label %lor.rhs, !dbg !925

lor.rhs:                                          ; preds = %while.cond
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !926
  %tobool55 = icmp ne %union.acpi_parse_object* %48, null, !dbg !925
  br label %lor.end, !dbg !925

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %49 = phi i1 [ true, %while.cond ], [ %tobool55, %lor.rhs ]
  br i1 %49, label %while.body, label %while.end, !dbg !919

while.body:                                       ; preds = %lor.end
  %50 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !927
  %aml56 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %50, i32 0, i32 1, !dbg !929
  %51 = load i8*, i8** %aml56, align 8, !dbg !929
  store i8* %51, i8** %aml_op_start, align 8, !dbg !930
  %52 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !931
  %tobool57 = icmp ne %union.acpi_parse_object* %52, null, !dbg !931
  br i1 %tobool57, label %if.end117, label %if.then58, !dbg !933

if.then58:                                        ; preds = %while.body
  %53 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !934
  %54 = load i8*, i8** %aml_op_start, align 8, !dbg !936
  %call59 = call i32 @acpi_ps_create_op(%struct.acpi_walk_state* %53, i8* %54, %union.acpi_parse_object** %op) #3, !dbg !937
  store i32 %call59, i32* %status, align 4, !dbg !938
  %55 = load i32, i32* %status, align 4, !dbg !939
  %tobool60 = icmp ne i32 %55, 0, !dbg !939
  br i1 %tobool60, label %if.then61, label %if.end116, !dbg !941

if.then61:                                        ; preds = %if.then58
  %56 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !942
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %56, i32 0, i32 20, !dbg !945
  %57 = load i32, i32* %parse_flags, align 4, !dbg !945
  %and62 = and i32 %57, 1024, !dbg !946
  %tobool63 = icmp ne i32 %and62, 0, !dbg !946
  br i1 %tobool63, label %land.lhs.true64, label %if.end71, !dbg !947

land.lhs.true64:                                  ; preds = %if.then61
  %58 = load i32, i32* %status, align 4, !dbg !948
  %cmp65 = icmp eq i32 %58, 7, !dbg !949
  br i1 %cmp65, label %if.then70, label %lor.lhs.false67, !dbg !950

lor.lhs.false67:                                  ; preds = %land.lhs.true64
  %59 = load i32, i32* %status, align 4, !dbg !951
  %cmp68 = icmp eq i32 %59, 5, !dbg !952
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !953

if.then70:                                        ; preds = %lor.lhs.false67, %land.lhs.true64
  store i32 0, i32* %status, align 4, !dbg !954
  br label %if.end71, !dbg !956

if.end71:                                         ; preds = %if.then70, %lor.lhs.false67, %if.then61
  %60 = load i32, i32* %status, align 4, !dbg !957
  %cmp72 = icmp eq i32 %60, 16395, !dbg !959
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !960

if.then74:                                        ; preds = %if.end71
  br label %while.cond, !dbg !961, !llvm.loop !963

if.end75:                                         ; preds = %if.end71
  %61 = load i32, i32* %status, align 4, !dbg !965
  %cmp76 = icmp eq i32 %61, 16396, !dbg !967
  br i1 %cmp76, label %if.then78, label %if.end79, !dbg !968

if.then78:                                        ; preds = %if.end75
  store i32 0, i32* %status, align 4, !dbg !969
  br label %if.end79, !dbg !971

if.end79:                                         ; preds = %if.then78, %if.end75
  %62 = load i32, i32* %status, align 4, !dbg !972
  %cmp80 = icmp eq i32 %62, 16387, !dbg !974
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !975

if.then82:                                        ; preds = %if.end79
  %63 = load i32, i32* %status, align 4, !dbg !976
  store i32 %63, i32* %retval, align 4, !dbg !976
  br label %return, !dbg !976

if.end83:                                         ; preds = %if.end79
  %64 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !978
  %65 = load i32, i32* %status, align 4, !dbg !979
  %call84 = call i32 @acpi_ps_complete_op(%struct.acpi_walk_state* %64, %union.acpi_parse_object** %op, i32 %65) #3, !dbg !980
  store i32 %call84, i32* %status, align 4, !dbg !981
  %66 = load i32, i32* %status, align 4, !dbg !982
  %tobool85 = icmp ne i32 %66, 0, !dbg !982
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !984

if.then86:                                        ; preds = %if.end83
  %67 = load i32, i32* %status, align 4, !dbg !985
  store i32 %67, i32* %retval, align 4, !dbg !985
  br label %return, !dbg !985

if.end87:                                         ; preds = %if.end83
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !987
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %68, i32 0, i32 3, !dbg !989
  %69 = load i16, i16* %opcode, align 2, !dbg !989
  %call88 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %69) #3, !dbg !990
  %object_type = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %call88, i32 0, i32 3, !dbg !991
  %70 = load i8, i8* %object_type, align 2, !dbg !991
  %conv89 = zext i8 %70 to i32, !dbg !990
  %call90 = call i32 @acpi_ns_opens_scope(i32 %conv89) #3, !dbg !992
  %tobool91 = icmp ne i32 %call90, 0, !dbg !992
  br i1 %tobool91, label %if.then92, label %if.end115, !dbg !993

if.then92:                                        ; preds = %if.end87
  %71 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !994
  %opcode93 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %71, i32 0, i32 3, !dbg !994
  %72 = load i16, i16* %opcode93, align 2, !dbg !994
  %call94 = call i8* @acpi_ps_get_opcode_name(i16 zeroext %72) #3, !dbg !994
  %73 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !994
  %opcode95 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %73, i32 0, i32 3, !dbg !994
  %74 = load i16, i16* %opcode95, align 2, !dbg !994
  %conv96 = zext i16 %74 to i32, !dbg !994
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %call94, i32 %conv96) #3, !dbg !994
  store i8 1, i8* %opcode_length, align 1, !dbg !996
  %75 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !997
  %opcode97 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %75, i32 0, i32 3, !dbg !999
  %76 = load i16, i16* %opcode97, align 2, !dbg !999
  %conv98 = zext i16 %76 to i32, !dbg !997
  %and99 = and i32 %conv98, 65280, !dbg !1000
  %cmp100 = icmp eq i32 %and99, 23296, !dbg !1001
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !1002

if.then102:                                       ; preds = %if.then92
  store i8 2, i8* %opcode_length, align 1, !dbg !1003
  br label %if.end103, !dbg !1005

if.end103:                                        ; preds = %if.then102, %if.then92
  %77 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1006
  %aml104 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %77, i32 0, i32 16, !dbg !1007
  %78 = load i8*, i8** %aml104, align 8, !dbg !1007
  %79 = load i8, i8* %opcode_length, align 1, !dbg !1008
  %conv105 = zext i8 %79 to i32, !dbg !1008
  %idx.ext = sext i32 %conv105 to i64, !dbg !1009
  %add.ptr = getelementptr i8, i8* %78, i64 %idx.ext, !dbg !1009
  %80 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1010
  %parser_state106 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %80, i32 0, i32 21, !dbg !1011
  %aml107 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state106, i32 0, i32 1, !dbg !1012
  store i8* %add.ptr, i8** %aml107, align 8, !dbg !1013
  %81 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1014
  %parser_state108 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %81, i32 0, i32 21, !dbg !1015
  %call109 = call i8* @acpi_ps_get_next_package_end(%struct.acpi_parse_state* %parser_state108) #3, !dbg !1016
  %82 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1017
  %parser_state110 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %82, i32 0, i32 21, !dbg !1018
  %aml111 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state110, i32 0, i32 1, !dbg !1019
  store i8* %call109, i8** %aml111, align 8, !dbg !1020
  %83 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1021
  %parser_state112 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %83, i32 0, i32 21, !dbg !1022
  %aml113 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state112, i32 0, i32 1, !dbg !1023
  %84 = load i8*, i8** %aml113, align 8, !dbg !1023
  %85 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1024
  %aml114 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %85, i32 0, i32 16, !dbg !1025
  store i8* %84, i8** %aml114, align 8, !dbg !1026
  br label %if.end115, !dbg !1027

if.end115:                                        ; preds = %if.end103, %if.end87
  br label %while.cond, !dbg !1028, !llvm.loop !963

if.end116:                                        ; preds = %if.then58
  %86 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1029
  %87 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1030
  call void @acpi_ex_start_trace_opcode(%union.acpi_parse_object* %86, %struct.acpi_walk_state* %87) #3, !dbg !1031
  br label %if.end117, !dbg !1032

if.end117:                                        ; preds = %if.end116, %while.body
  %88 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1033
  %arg_count118 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %88, i32 0, i32 23, !dbg !1034
  store i32 0, i32* %arg_count118, align 4, !dbg !1035
  %89 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1036
  %common119 = bitcast %union.acpi_parse_object* %89 to %struct.acpi_parse_obj_common*, !dbg !1037
  %aml_opcode120 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common119, i32 0, i32 3, !dbg !1038
  %90 = load i16, i16* %aml_opcode120, align 2, !dbg !1038
  %conv121 = zext i16 %90 to i32, !dbg !1036
  switch i32 %conv121, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 14, label %sw.bb
  ], !dbg !1039

sw.bb:                                            ; preds = %if.end117, %if.end117, %if.end117, %if.end117
  br label %sw.epilog, !dbg !1040

sw.default:                                       ; preds = %if.end117
  br label %sw.epilog, !dbg !1042

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %91 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1043
  %arg_types122 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %91, i32 0, i32 17, !dbg !1045
  %92 = load i32, i32* %arg_types122, align 8, !dbg !1045
  %tobool123 = icmp ne i32 %92, 0, !dbg !1043
  br i1 %tobool123, label %if.then124, label %if.end175, !dbg !1046

if.then124:                                       ; preds = %sw.epilog
  %93 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1047
  %94 = load i8*, i8** %aml_op_start, align 8, !dbg !1049
  %95 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1050
  %call125 = call i32 @acpi_ps_get_arguments(%struct.acpi_walk_state* %93, i8* %94, %union.acpi_parse_object* %95) #3, !dbg !1051
  store i32 %call125, i32* %status, align 4, !dbg !1052
  %96 = load i32, i32* %status, align 4, !dbg !1053
  %tobool126 = icmp ne i32 %96, 0, !dbg !1053
  br i1 %tobool126, label %if.then127, label %if.end174, !dbg !1055

if.then127:                                       ; preds = %if.then124
  %97 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1056
  %98 = load i32, i32* %status, align 4, !dbg !1058
  %call128 = call i32 @acpi_ps_complete_op(%struct.acpi_walk_state* %97, %union.acpi_parse_object** %op, i32 %98) #3, !dbg !1059
  store i32 %call128, i32* %status, align 4, !dbg !1060
  %99 = load i32, i32* %status, align 4, !dbg !1061
  %tobool129 = icmp ne i32 %99, 0, !dbg !1061
  br i1 %tobool129, label %if.then130, label %if.end131, !dbg !1063

if.then130:                                       ; preds = %if.then127
  %100 = load i32, i32* %status, align 4, !dbg !1064
  store i32 %100, i32* %retval, align 4, !dbg !1064
  br label %return, !dbg !1064

if.end131:                                        ; preds = %if.then127
  %101 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1066
  %control_state132 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %101, i32 0, i32 32, !dbg !1068
  %102 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state132, align 8, !dbg !1068
  %tobool133 = icmp ne %union.acpi_generic_state* %102, null, !dbg !1069
  br i1 %tobool133, label %land.lhs.true134, label %if.end173, !dbg !1070

land.lhs.true134:                                 ; preds = %if.end131
  %103 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1071
  %control_state135 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %103, i32 0, i32 32, !dbg !1072
  %104 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state135, align 8, !dbg !1072
  %control = bitcast %union.acpi_generic_state* %104 to %struct.acpi_control_state*, !dbg !1073
  %opcode136 = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control, i32 0, i32 5, !dbg !1074
  %105 = load i16, i16* %opcode136, align 2, !dbg !1074
  %conv137 = zext i16 %105 to i32, !dbg !1071
  %cmp138 = icmp eq i32 %conv137, 160, !dbg !1075
  br i1 %cmp138, label %if.then147, label %lor.lhs.false140, !dbg !1076

lor.lhs.false140:                                 ; preds = %land.lhs.true134
  %106 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1077
  %control_state141 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %106, i32 0, i32 32, !dbg !1078
  %107 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state141, align 8, !dbg !1078
  %control142 = bitcast %union.acpi_generic_state* %107 to %struct.acpi_control_state*, !dbg !1079
  %opcode143 = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control142, i32 0, i32 5, !dbg !1080
  %108 = load i16, i16* %opcode143, align 2, !dbg !1080
  %conv144 = zext i16 %108 to i32, !dbg !1077
  %cmp145 = icmp eq i32 %conv144, 162, !dbg !1081
  br i1 %cmp145, label %if.then147, label %if.end173, !dbg !1082

if.then147:                                       ; preds = %lor.lhs.false140, %land.lhs.true134
  %109 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1083
  %control_state148 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %109, i32 0, i32 32, !dbg !1085
  %110 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state148, align 8, !dbg !1085
  %control149 = bitcast %union.acpi_generic_state* %110 to %struct.acpi_control_state*, !dbg !1086
  %aml_predicate_start = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control149, i32 0, i32 7, !dbg !1087
  %111 = load i8*, i8** %aml_predicate_start, align 8, !dbg !1087
  %add.ptr150 = getelementptr i8, i8* %111, i64 1, !dbg !1088
  %112 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1089
  %aml151 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %112, i32 0, i32 1, !dbg !1090
  store i8* %add.ptr150, i8** %aml151, align 8, !dbg !1091
  %113 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1092
  %call152 = call i8* @acpi_ps_get_next_package_end(%struct.acpi_parse_state* %113) #3, !dbg !1093
  %114 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1094
  %aml153 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %114, i32 0, i32 1, !dbg !1095
  store i8* %call152, i8** %aml153, align 8, !dbg !1096
  %115 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1097
  %aml154 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %115, i32 0, i32 1, !dbg !1098
  %116 = load i8*, i8** %aml154, align 8, !dbg !1098
  %117 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1099
  %aml155 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %117, i32 0, i32 16, !dbg !1100
  store i8* %116, i8** %aml155, align 8, !dbg !1101
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 427, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1102
  %118 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1103
  %aml156 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %118, i32 0, i32 16, !dbg !1105
  %119 = load i8*, i8** %aml156, align 8, !dbg !1105
  %120 = load i8, i8* %119, align 1, !dbg !1106
  %conv157 = zext i8 %120 to i32, !dbg !1106
  %cmp158 = icmp eq i32 %conv157, 161, !dbg !1107
  br i1 %cmp158, label %if.then160, label %if.end170, !dbg !1108

if.then160:                                       ; preds = %if.then147
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 430, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)) #3, !dbg !1109
  %121 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1111
  %aml161 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %121, i32 0, i32 16, !dbg !1112
  %122 = load i8*, i8** %aml161, align 8, !dbg !1112
  %add.ptr162 = getelementptr i8, i8* %122, i64 1, !dbg !1113
  %123 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1114
  %parser_state163 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %123, i32 0, i32 21, !dbg !1115
  %aml164 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state163, i32 0, i32 1, !dbg !1116
  store i8* %add.ptr162, i8** %aml164, align 8, !dbg !1117
  %124 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1118
  %call165 = call i8* @acpi_ps_get_next_package_end(%struct.acpi_parse_state* %124) #3, !dbg !1119
  %125 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1120
  %parser_state166 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %125, i32 0, i32 21, !dbg !1121
  %aml167 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state166, i32 0, i32 1, !dbg !1122
  store i8* %call165, i8** %aml167, align 8, !dbg !1123
  %126 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1124
  %aml168 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %126, i32 0, i32 1, !dbg !1125
  %127 = load i8*, i8** %aml168, align 8, !dbg !1125
  %128 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1126
  %aml169 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %128, i32 0, i32 16, !dbg !1127
  store i8* %127, i8** %aml169, align 8, !dbg !1128
  br label %if.end170, !dbg !1129

if.end170:                                        ; preds = %if.then160, %if.then147
  %129 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1130
  %control_state171 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %129, i32 0, i32 32, !dbg !1130
  %call172 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %control_state171) #3, !dbg !1130
  %130 = bitcast %union.acpi_generic_state* %call172 to i8*, !dbg !1130
  call void @acpi_os_free(i8* %130) #3, !dbg !1130
  br label %if.end173, !dbg !1131

if.end173:                                        ; preds = %if.end170, %lor.lhs.false140, %if.end131
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %op, align 8, !dbg !1132
  br label %while.cond, !dbg !1133, !llvm.loop !963

if.end174:                                        ; preds = %if.then124
  br label %if.end175, !dbg !1134

if.end175:                                        ; preds = %if.end174, %sw.epilog
  %131 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1135
  %arg_count176 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %131, i32 0, i32 23, !dbg !1137
  %132 = load i32, i32* %arg_count176, align 4, !dbg !1137
  %tobool177 = icmp ne i32 %132, 0, !dbg !1135
  br i1 %tobool177, label %if.then178, label %if.end189, !dbg !1138

if.then178:                                       ; preds = %if.end175
  %133 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1139
  %134 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1141
  %135 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1142
  %arg_types179 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %135, i32 0, i32 17, !dbg !1143
  %136 = load i32, i32* %arg_types179, align 8, !dbg !1143
  %137 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1144
  %arg_count180 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %137, i32 0, i32 23, !dbg !1145
  %138 = load i32, i32* %arg_count180, align 4, !dbg !1145
  %call181 = call i32 @acpi_ps_push_scope(%struct.acpi_parse_state* %133, %union.acpi_parse_object* %134, i32 %136, i32 %138) #3, !dbg !1146
  store i32 %call181, i32* %status, align 4, !dbg !1147
  %139 = load i32, i32* %status, align 4, !dbg !1148
  %tobool182 = icmp ne i32 %139, 0, !dbg !1148
  br i1 %tobool182, label %if.then183, label %if.end188, !dbg !1150

if.then183:                                       ; preds = %if.then178
  %140 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1151
  %141 = load i32, i32* %status, align 4, !dbg !1153
  %call184 = call i32 @acpi_ps_complete_op(%struct.acpi_walk_state* %140, %union.acpi_parse_object** %op, i32 %141) #3, !dbg !1154
  store i32 %call184, i32* %status, align 4, !dbg !1155
  %142 = load i32, i32* %status, align 4, !dbg !1156
  %tobool185 = icmp ne i32 %142, 0, !dbg !1156
  br i1 %tobool185, label %if.then186, label %if.end187, !dbg !1158

if.then186:                                       ; preds = %if.then183
  %143 = load i32, i32* %status, align 4, !dbg !1159
  store i32 %143, i32* %retval, align 4, !dbg !1159
  br label %return, !dbg !1159

if.end187:                                        ; preds = %if.then183
  br label %while.cond, !dbg !1161, !llvm.loop !963

if.end188:                                        ; preds = %if.then178
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %op, align 8, !dbg !1162
  br label %while.cond, !dbg !1163, !llvm.loop !963

if.end189:                                        ; preds = %if.end175
  %144 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1164
  %common190 = bitcast %union.acpi_parse_object* %144 to %struct.acpi_parse_obj_common*, !dbg !1165
  %aml_opcode191 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common190, i32 0, i32 3, !dbg !1166
  %145 = load i16, i16* %aml_opcode191, align 2, !dbg !1166
  %call192 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %145) #3, !dbg !1167
  %146 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1168
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %146, i32 0, i32 41, !dbg !1169
  store %struct.acpi_opcode_info* %call192, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1170
  %147 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1171
  %op_info193 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %147, i32 0, i32 41, !dbg !1173
  %148 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info193, align 8, !dbg !1173
  %flags = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %148, i32 0, i32 2, !dbg !1174
  %149 = load i16, i16* %flags, align 4, !dbg !1174
  %conv194 = zext i16 %149 to i32, !dbg !1171
  %and195 = and i32 %conv194, 64, !dbg !1175
  %tobool196 = icmp ne i32 %and195, 0, !dbg !1175
  br i1 %tobool196, label %if.then197, label %if.end214, !dbg !1176

if.then197:                                       ; preds = %if.end189
  %150 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1177
  %common198 = bitcast %union.acpi_parse_object* %150 to %struct.acpi_parse_obj_common*, !dbg !1180
  %aml_opcode199 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common198, i32 0, i32 3, !dbg !1181
  %151 = load i16, i16* %aml_opcode199, align 2, !dbg !1181
  %conv200 = zext i16 %151 to i32, !dbg !1177
  %cmp201 = icmp eq i32 %conv200, 23424, !dbg !1182
  br i1 %cmp201, label %if.then209, label %lor.lhs.false203, !dbg !1183

lor.lhs.false203:                                 ; preds = %if.then197
  %152 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1184
  %common204 = bitcast %union.acpi_parse_object* %152 to %struct.acpi_parse_obj_common*, !dbg !1185
  %aml_opcode205 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common204, i32 0, i32 3, !dbg !1186
  %153 = load i16, i16* %aml_opcode205, align 2, !dbg !1186
  %conv206 = zext i16 %153 to i32, !dbg !1184
  %cmp207 = icmp eq i32 %conv206, 23432, !dbg !1187
  br i1 %cmp207, label %if.then209, label %if.end213, !dbg !1188

if.then209:                                       ; preds = %lor.lhs.false203, %if.then197
  %154 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1189
  %aml210 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %154, i32 0, i32 1, !dbg !1191
  %155 = load i8*, i8** %aml210, align 8, !dbg !1191
  %156 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1192
  %named = bitcast %union.acpi_parse_object* %156 to %struct.acpi_parse_obj_named*, !dbg !1193
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 10, !dbg !1194
  %157 = load i8*, i8** %data, align 8, !dbg !1194
  %sub.ptr.lhs.cast = ptrtoint i8* %155 to i64, !dbg !1195
  %sub.ptr.rhs.cast = ptrtoint i8* %157 to i64, !dbg !1195
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1195
  %conv211 = trunc i64 %sub.ptr.sub to i32, !dbg !1196
  %158 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1197
  %named212 = bitcast %union.acpi_parse_object* %158 to %struct.acpi_parse_obj_named*, !dbg !1198
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named212, i32 0, i32 11, !dbg !1199
  store i32 %conv211, i32* %length, align 8, !dbg !1200
  br label %if.end213, !dbg !1201

if.end213:                                        ; preds = %if.then209, %lor.lhs.false203
  br label %if.end214, !dbg !1202

if.end214:                                        ; preds = %if.end213, %if.end189
  %159 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1203
  %op_info215 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %159, i32 0, i32 41, !dbg !1205
  %160 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info215, align 8, !dbg !1205
  %flags216 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %160, i32 0, i32 2, !dbg !1206
  %161 = load i16, i16* %flags216, align 4, !dbg !1206
  %conv217 = zext i16 %161 to i32, !dbg !1203
  %and218 = and i32 %conv217, 8, !dbg !1207
  %tobool219 = icmp ne i32 %and218, 0, !dbg !1207
  br i1 %tobool219, label %if.then220, label %if.end230, !dbg !1208

if.then220:                                       ; preds = %if.end214
  %162 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1209
  %aml221 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %162, i32 0, i32 1, !dbg !1211
  %163 = load i8*, i8** %aml221, align 8, !dbg !1211
  %164 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1212
  %named222 = bitcast %union.acpi_parse_object* %164 to %struct.acpi_parse_obj_named*, !dbg !1213
  %data223 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named222, i32 0, i32 10, !dbg !1214
  %165 = load i8*, i8** %data223, align 8, !dbg !1214
  %sub.ptr.lhs.cast224 = ptrtoint i8* %163 to i64, !dbg !1215
  %sub.ptr.rhs.cast225 = ptrtoint i8* %165 to i64, !dbg !1215
  %sub.ptr.sub226 = sub i64 %sub.ptr.lhs.cast224, %sub.ptr.rhs.cast225, !dbg !1215
  %conv227 = trunc i64 %sub.ptr.sub226 to i32, !dbg !1216
  %166 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1217
  %named228 = bitcast %union.acpi_parse_object* %166 to %struct.acpi_parse_obj_named*, !dbg !1218
  %length229 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named228, i32 0, i32 11, !dbg !1219
  store i32 %conv227, i32* %length229, align 8, !dbg !1220
  br label %if.end230, !dbg !1221

if.end230:                                        ; preds = %if.then220, %if.end214
  %167 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1222
  %common231 = bitcast %union.acpi_parse_object* %167 to %struct.acpi_parse_obj_common*, !dbg !1224
  %aml_opcode232 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common231, i32 0, i32 3, !dbg !1225
  %168 = load i16, i16* %aml_opcode232, align 2, !dbg !1225
  %conv233 = zext i16 %168 to i32, !dbg !1222
  %cmp234 = icmp eq i32 %conv233, 23431, !dbg !1226
  br i1 %cmp234, label %if.then236, label %if.end246, !dbg !1227

if.then236:                                       ; preds = %if.end230
  %169 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1228
  %aml237 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %169, i32 0, i32 1, !dbg !1230
  %170 = load i8*, i8** %aml237, align 8, !dbg !1230
  %171 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1231
  %named238 = bitcast %union.acpi_parse_object* %171 to %struct.acpi_parse_obj_named*, !dbg !1232
  %data239 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named238, i32 0, i32 10, !dbg !1233
  %172 = load i8*, i8** %data239, align 8, !dbg !1233
  %sub.ptr.lhs.cast240 = ptrtoint i8* %170 to i64, !dbg !1234
  %sub.ptr.rhs.cast241 = ptrtoint i8* %172 to i64, !dbg !1234
  %sub.ptr.sub242 = sub i64 %sub.ptr.lhs.cast240, %sub.ptr.rhs.cast241, !dbg !1234
  %conv243 = trunc i64 %sub.ptr.sub242 to i32, !dbg !1235
  %173 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1236
  %named244 = bitcast %union.acpi_parse_object* %173 to %struct.acpi_parse_obj_named*, !dbg !1237
  %length245 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named244, i32 0, i32 11, !dbg !1238
  store i32 %conv243, i32* %length245, align 8, !dbg !1239
  br label %if.end246, !dbg !1240

if.end246:                                        ; preds = %if.then236, %if.end230
  %174 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1241
  %ascending_callback = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %174, i32 0, i32 51, !dbg !1243
  %ascending_callback247 = bitcast {}** %ascending_callback to i32 (%struct.acpi_walk_state*)**, !dbg !1243
  %175 = load i32 (%struct.acpi_walk_state*)*, i32 (%struct.acpi_walk_state*)** %ascending_callback247, align 8, !dbg !1243
  %cmp248 = icmp ne i32 (%struct.acpi_walk_state*)* %175, null, !dbg !1244
  br i1 %cmp248, label %if.then250, label %if.end278, !dbg !1245

if.then250:                                       ; preds = %if.end246
  %176 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1246
  %177 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1248
  %op251 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %177, i32 0, i32 40, !dbg !1249
  store %union.acpi_parse_object* %176, %union.acpi_parse_object** %op251, align 8, !dbg !1250
  %178 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1251
  %common252 = bitcast %union.acpi_parse_object* %178 to %struct.acpi_parse_obj_common*, !dbg !1252
  %aml_opcode253 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common252, i32 0, i32 3, !dbg !1253
  %179 = load i16, i16* %aml_opcode253, align 2, !dbg !1253
  %180 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1254
  %opcode254 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %180, i32 0, i32 3, !dbg !1255
  store i16 %179, i16* %opcode254, align 2, !dbg !1256
  %181 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1257
  %ascending_callback255 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %181, i32 0, i32 51, !dbg !1258
  %ascending_callback256 = bitcast {}** %ascending_callback255 to i32 (%struct.acpi_walk_state*)**, !dbg !1258
  %182 = load i32 (%struct.acpi_walk_state*)*, i32 (%struct.acpi_walk_state*)** %ascending_callback256, align 8, !dbg !1258
  %183 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1259
  %call257 = call i32 %182(%struct.acpi_walk_state* %183) #3, !dbg !1257
  store i32 %call257, i32* %status, align 4, !dbg !1260
  %184 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1261
  %185 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1262
  %186 = load i32, i32* %status, align 4, !dbg !1263
  %call258 = call i32 @acpi_ps_next_parse_state(%struct.acpi_walk_state* %184, %union.acpi_parse_object* %185, i32 %186) #3, !dbg !1264
  store i32 %call258, i32* %status, align 4, !dbg !1265
  %187 = load i32, i32* %status, align 4, !dbg !1266
  %cmp259 = icmp eq i32 %187, 16386, !dbg !1268
  br i1 %cmp259, label %if.then261, label %if.else262, !dbg !1269

if.then261:                                       ; preds = %if.then250
  store i32 0, i32* %status, align 4, !dbg !1270
  br label %if.end277, !dbg !1272

if.else262:                                       ; preds = %if.then250
  %188 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1273
  %parse_flags263 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %188, i32 0, i32 20, !dbg !1275
  %189 = load i32, i32* %parse_flags263, align 4, !dbg !1275
  %and264 = and i32 %189, 1024, !dbg !1276
  %tobool265 = icmp ne i32 %and264, 0, !dbg !1276
  br i1 %tobool265, label %land.lhs.true266, label %if.end276, !dbg !1277

land.lhs.true266:                                 ; preds = %if.else262
  %190 = load i32, i32* %status, align 4, !dbg !1278
  %and267 = and i32 %190, 12288, !dbg !1278
  %tobool268 = icmp ne i32 %and267, 0, !dbg !1278
  br i1 %tobool268, label %if.then275, label %lor.lhs.false269, !dbg !1279

lor.lhs.false269:                                 ; preds = %land.lhs.true266
  %191 = load i32, i32* %status, align 4, !dbg !1280
  %cmp270 = icmp eq i32 %191, 7, !dbg !1281
  br i1 %cmp270, label %if.then275, label %lor.lhs.false272, !dbg !1282

lor.lhs.false272:                                 ; preds = %lor.lhs.false269
  %192 = load i32, i32* %status, align 4, !dbg !1283
  %cmp273 = icmp eq i32 %192, 5, !dbg !1284
  br i1 %cmp273, label %if.then275, label %if.end276, !dbg !1285

if.then275:                                       ; preds = %lor.lhs.false272, %lor.lhs.false269, %land.lhs.true266
  store i32 0, i32* %status, align 4, !dbg !1286
  br label %if.end276, !dbg !1288

if.end276:                                        ; preds = %if.then275, %lor.lhs.false272, %if.else262
  br label %if.end277

if.end277:                                        ; preds = %if.end276, %if.then261
  br label %if.end278, !dbg !1289

if.end278:                                        ; preds = %if.end277, %if.end246
  %193 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1290
  %194 = load i32, i32* %status, align 4, !dbg !1291
  %call279 = call i32 @acpi_ps_complete_op(%struct.acpi_walk_state* %193, %union.acpi_parse_object** %op, i32 %194) #3, !dbg !1292
  store i32 %call279, i32* %status, align 4, !dbg !1293
  %195 = load i32, i32* %status, align 4, !dbg !1294
  %tobool280 = icmp ne i32 %195, 0, !dbg !1294
  br i1 %tobool280, label %if.then281, label %if.end282, !dbg !1296

if.then281:                                       ; preds = %if.end278
  %196 = load i32, i32* %status, align 4, !dbg !1297
  store i32 %196, i32* %retval, align 4, !dbg !1297
  br label %return, !dbg !1297

if.end282:                                        ; preds = %if.end278
  br label %while.cond, !dbg !919, !llvm.loop !963

while.end:                                        ; preds = %lor.end
  %197 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1299
  %198 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1300
  %199 = load i32, i32* %status, align 4, !dbg !1301
  %call283 = call i32 @acpi_ps_complete_final_op(%struct.acpi_walk_state* %197, %union.acpi_parse_object* %198, i32 %199) #3, !dbg !1302
  store i32 %call283, i32* %status, align 4, !dbg !1303
  %200 = load i32, i32* %status, align 4, !dbg !1304
  store i32 %200, i32* %retval, align 4, !dbg !1304
  br label %return, !dbg !1304

return:                                           ; preds = %while.end, %if.then281, %if.then186, %if.then130, %if.then86, %if.then82, %if.end41, %if.then
  %201 = load i32, i32* %retval, align 4, !dbg !1305
  ret i32 %201, !dbg !1305
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ps_has_completed_scope(%struct.acpi_parse_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_get_predicate_value(%struct.acpi_walk_state*, %union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_next_parse_state(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_pop_scope(%struct.acpi_parse_state*, %union.acpi_parse_object**, i32*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_create_op(%struct.acpi_walk_state*, i8*, %union.acpi_parse_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_complete_op(%struct.acpi_walk_state*, %union.acpi_parse_object**, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_opens_scope(i32) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_info(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ps_get_opcode_name(i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ps_get_next_package_end(%struct.acpi_parse_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_start_trace_opcode(%union.acpi_parse_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ps_get_arguments(%struct.acpi_walk_state* %walk_state, i8* %aml_op_start, %union.acpi_parse_object* %op) #0 !dbg !1306 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %aml_op_start.addr = alloca i8*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %arg = alloca %union.acpi_parse_object*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1309, metadata !DIExpression()), !dbg !1310
  store i8* %aml_op_start, i8** %aml_op_start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml_op_start.addr, metadata !1311, metadata !DIExpression()), !dbg !1312
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1313, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1315, metadata !DIExpression()), !dbg !1316
  store i32 0, i32* %status, align 4, !dbg !1316
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !1317, metadata !DIExpression()), !dbg !1318
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %arg, align 8, !dbg !1318
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1319
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !1320
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !1321
  %1 = load i16, i16* %aml_opcode, align 2, !dbg !1321
  %conv = zext i16 %1 to i32, !dbg !1319
  switch i32 %conv, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 14, label %sw.bb
    i32 13, label %sw.bb
    i32 45, label %sw.bb1
  ], !dbg !1322

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1323
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 21, !dbg !1325
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1326
  %arg_types = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 17, !dbg !1326
  %4 = load i32, i32* %arg_types, align 8, !dbg !1326
  %and = and i32 %4, 31, !dbg !1326
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1327
  call void @acpi_ps_get_next_simple_arg(%struct.acpi_parse_state* %parser_state, i32 %and, %union.acpi_parse_object* %5) #3, !dbg !1328
  br label %sw.epilog81, !dbg !1329

sw.bb1:                                           ; preds = %entry
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1330
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1331
  %parser_state2 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 21, !dbg !1332
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1333
  %call = call i32 @acpi_ps_get_next_namepath(%struct.acpi_walk_state* %6, %struct.acpi_parse_state* %parser_state2, %union.acpi_parse_object* %8, i8 zeroext 1) #3, !dbg !1334
  store i32 %call, i32* %status, align 4, !dbg !1335
  %9 = load i32, i32* %status, align 4, !dbg !1336
  %tobool = icmp ne i32 %9, 0, !dbg !1336
  br i1 %tobool, label %if.then, label %if.end, !dbg !1338

if.then:                                          ; preds = %sw.bb1
  %10 = load i32, i32* %status, align 4, !dbg !1339
  store i32 %10, i32* %retval, align 4, !dbg !1339
  br label %return, !dbg !1339

if.end:                                           ; preds = %sw.bb1
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1341
  %arg_types3 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 17, !dbg !1342
  store i32 0, i32* %arg_types3, align 8, !dbg !1343
  br label %sw.epilog81, !dbg !1344

sw.default:                                       ; preds = %entry
  br label %while.cond, !dbg !1345

while.cond:                                       ; preds = %if.end24, %sw.default
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1346
  %arg_types4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 17, !dbg !1346
  %13 = load i32, i32* %arg_types4, align 8, !dbg !1346
  %and5 = and i32 %13, 31, !dbg !1346
  %tobool6 = icmp ne i32 %and5, 0, !dbg !1346
  br i1 %tobool6, label %land.rhs, label %land.end, !dbg !1347

land.rhs:                                         ; preds = %while.cond
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1348
  %arg_count = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 23, !dbg !1349
  %15 = load i32, i32* %arg_count, align 4, !dbg !1349
  %tobool7 = icmp ne i32 %15, 0, !dbg !1350
  %lnot = xor i1 %tobool7, true, !dbg !1350
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !1351
  br i1 %16, label %while.body, label %while.end, !dbg !1345

while.body:                                       ; preds = %land.end
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1352
  %parser_state8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 21, !dbg !1354
  %aml = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state8, i32 0, i32 1, !dbg !1355
  %18 = load i8*, i8** %aml, align 8, !dbg !1355
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1356
  %aml9 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 16, !dbg !1357
  store i8* %18, i8** %aml9, align 8, !dbg !1358
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1359
  %common10 = bitcast %union.acpi_parse_object* %20 to %struct.acpi_parse_obj_common*, !dbg !1360
  %aml_opcode11 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common10, i32 0, i32 3, !dbg !1361
  %21 = load i16, i16* %aml_opcode11, align 2, !dbg !1361
  %conv12 = zext i16 %21 to i32, !dbg !1359
  switch i32 %conv12, label %sw.default14 [
    i32 20, label %sw.bb13
    i32 17, label %sw.bb13
    i32 18, label %sw.bb13
    i32 19, label %sw.bb13
    i32 162, label %sw.bb13
  ], !dbg !1362

sw.bb13:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  br label %sw.epilog, !dbg !1363

sw.default14:                                     ; preds = %while.body
  br label %sw.epilog, !dbg !1365

sw.epilog:                                        ; preds = %sw.default14, %sw.bb13
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1366
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1367
  %parser_state15 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 21, !dbg !1368
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1369
  %arg_types16 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 17, !dbg !1369
  %25 = load i32, i32* %arg_types16, align 8, !dbg !1369
  %and17 = and i32 %25, 31, !dbg !1369
  %call18 = call i32 @acpi_ps_get_next_arg(%struct.acpi_walk_state* %22, %struct.acpi_parse_state* %parser_state15, i32 %and17, %union.acpi_parse_object** %arg) #3, !dbg !1370
  store i32 %call18, i32* %status, align 4, !dbg !1371
  %26 = load i32, i32* %status, align 4, !dbg !1372
  %tobool19 = icmp ne i32 %26, 0, !dbg !1372
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1374

if.then20:                                        ; preds = %sw.epilog
  %27 = load i32, i32* %status, align 4, !dbg !1375
  store i32 %27, i32* %retval, align 4, !dbg !1375
  br label %return, !dbg !1375

if.end21:                                         ; preds = %sw.epilog
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1377
  %tobool22 = icmp ne %union.acpi_parse_object* %28, null, !dbg !1377
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !1379

if.then23:                                        ; preds = %if.end21
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1380
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1382
  call void @acpi_ps_append_arg(%union.acpi_parse_object* %29, %union.acpi_parse_object* %30) #3, !dbg !1383
  br label %if.end24, !dbg !1384

if.end24:                                         ; preds = %if.then23, %if.end21
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1385
  %arg_types25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %31, i32 0, i32 17, !dbg !1385
  %32 = load i32, i32* %arg_types25, align 8, !dbg !1385
  %shr = lshr i32 %32, 5, !dbg !1385
  store i32 %shr, i32* %arg_types25, align 8, !dbg !1385
  br label %while.cond, !dbg !1345, !llvm.loop !1386

while.end:                                        ; preds = %land.end
  %33 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1388
  %common26 = bitcast %union.acpi_parse_object* %33 to %struct.acpi_parse_obj_common*, !dbg !1389
  %aml_opcode27 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common26, i32 0, i32 3, !dbg !1390
  %34 = load i16, i16* %aml_opcode27, align 2, !dbg !1390
  %conv28 = zext i16 %34 to i32, !dbg !1388
  switch i32 %conv28, label %sw.default79 [
    i32 20, label %sw.bb29
    i32 17, label %sw.bb42
    i32 18, label %sw.bb42
    i32 19, label %sw.bb42
    i32 162, label %sw.bb72
  ], !dbg !1391

sw.bb29:                                          ; preds = %while.end
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1392
  %parser_state30 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 21, !dbg !1394
  %aml31 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state30, i32 0, i32 1, !dbg !1395
  %36 = load i8*, i8** %aml31, align 8, !dbg !1395
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1396
  %named = bitcast %union.acpi_parse_object* %37 to %struct.acpi_parse_obj_named*, !dbg !1397
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 10, !dbg !1398
  store i8* %36, i8** %data, align 8, !dbg !1399
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1400
  %parser_state32 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %38, i32 0, i32 21, !dbg !1401
  %pkg_end = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state32, i32 0, i32 4, !dbg !1402
  %39 = load i8*, i8** %pkg_end, align 8, !dbg !1402
  %40 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1403
  %parser_state33 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %40, i32 0, i32 21, !dbg !1404
  %aml34 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state33, i32 0, i32 1, !dbg !1405
  %41 = load i8*, i8** %aml34, align 8, !dbg !1405
  %sub.ptr.lhs.cast = ptrtoint i8* %39 to i64, !dbg !1406
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i64, !dbg !1406
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1406
  %conv35 = trunc i64 %sub.ptr.sub to i32, !dbg !1407
  %42 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1408
  %named36 = bitcast %union.acpi_parse_object* %42 to %struct.acpi_parse_obj_named*, !dbg !1409
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named36, i32 0, i32 11, !dbg !1410
  store i32 %conv35, i32* %length, align 8, !dbg !1411
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1412
  %parser_state37 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %43, i32 0, i32 21, !dbg !1413
  %pkg_end38 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state37, i32 0, i32 4, !dbg !1414
  %44 = load i8*, i8** %pkg_end38, align 8, !dbg !1414
  %45 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1415
  %parser_state39 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %45, i32 0, i32 21, !dbg !1416
  %aml40 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state39, i32 0, i32 1, !dbg !1417
  store i8* %44, i8** %aml40, align 8, !dbg !1418
  %46 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1419
  %arg_count41 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %46, i32 0, i32 23, !dbg !1420
  store i32 0, i32* %arg_count41, align 4, !dbg !1421
  br label %sw.epilog80, !dbg !1422

sw.bb42:                                          ; preds = %while.end, %while.end, %while.end
  %47 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1423
  %common43 = bitcast %union.acpi_parse_object* %47 to %struct.acpi_parse_obj_common*, !dbg !1425
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common43, i32 0, i32 0, !dbg !1426
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !1426
  %tobool44 = icmp ne %union.acpi_parse_object* %48, null, !dbg !1427
  br i1 %tobool44, label %land.lhs.true, label %if.end71, !dbg !1428

land.lhs.true:                                    ; preds = %sw.bb42
  %49 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1429
  %common45 = bitcast %union.acpi_parse_object* %49 to %struct.acpi_parse_obj_common*, !dbg !1430
  %parent46 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common45, i32 0, i32 0, !dbg !1431
  %50 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent46, align 8, !dbg !1431
  %common47 = bitcast %union.acpi_parse_object* %50 to %struct.acpi_parse_obj_common*, !dbg !1432
  %aml_opcode48 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common47, i32 0, i32 3, !dbg !1433
  %51 = load i16, i16* %aml_opcode48, align 2, !dbg !1433
  %conv49 = zext i16 %51 to i32, !dbg !1429
  %cmp = icmp eq i32 %conv49, 8, !dbg !1434
  br i1 %cmp, label %land.lhs.true51, label %if.end71, !dbg !1435

land.lhs.true51:                                  ; preds = %land.lhs.true
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1436
  %pass_number = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %52, i32 0, i32 12, !dbg !1437
  %53 = load i8, i8* %pass_number, align 2, !dbg !1437
  %conv52 = zext i8 %53 to i32, !dbg !1436
  %cmp53 = icmp sle i32 %conv52, 2, !dbg !1438
  br i1 %cmp53, label %if.then55, label %if.end71, !dbg !1439

if.then55:                                        ; preds = %land.lhs.true51
  %54 = load i8*, i8** %aml_op_start.addr, align 8, !dbg !1440
  %55 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1442
  %named56 = bitcast %union.acpi_parse_object* %55 to %struct.acpi_parse_obj_named*, !dbg !1443
  %data57 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named56, i32 0, i32 10, !dbg !1444
  store i8* %54, i8** %data57, align 8, !dbg !1445
  %56 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1446
  %parser_state58 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %56, i32 0, i32 21, !dbg !1447
  %pkg_end59 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state58, i32 0, i32 4, !dbg !1448
  %57 = load i8*, i8** %pkg_end59, align 8, !dbg !1448
  %58 = load i8*, i8** %aml_op_start.addr, align 8, !dbg !1449
  %sub.ptr.lhs.cast60 = ptrtoint i8* %57 to i64, !dbg !1450
  %sub.ptr.rhs.cast61 = ptrtoint i8* %58 to i64, !dbg !1450
  %sub.ptr.sub62 = sub i64 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61, !dbg !1450
  %conv63 = trunc i64 %sub.ptr.sub62 to i32, !dbg !1451
  %59 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1452
  %named64 = bitcast %union.acpi_parse_object* %59 to %struct.acpi_parse_obj_named*, !dbg !1453
  %length65 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named64, i32 0, i32 11, !dbg !1454
  store i32 %conv63, i32* %length65, align 8, !dbg !1455
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1456
  %parser_state66 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %60, i32 0, i32 21, !dbg !1457
  %pkg_end67 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state66, i32 0, i32 4, !dbg !1458
  %61 = load i8*, i8** %pkg_end67, align 8, !dbg !1458
  %62 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1459
  %parser_state68 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %62, i32 0, i32 21, !dbg !1460
  %aml69 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state68, i32 0, i32 1, !dbg !1461
  store i8* %61, i8** %aml69, align 8, !dbg !1462
  %63 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1463
  %arg_count70 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %63, i32 0, i32 23, !dbg !1464
  store i32 0, i32* %arg_count70, align 4, !dbg !1465
  br label %if.end71, !dbg !1466

if.end71:                                         ; preds = %if.then55, %land.lhs.true51, %land.lhs.true, %sw.bb42
  br label %sw.epilog80, !dbg !1467

sw.bb72:                                          ; preds = %while.end
  %64 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1468
  %control_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %64, i32 0, i32 32, !dbg !1470
  %65 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !1470
  %tobool73 = icmp ne %union.acpi_generic_state* %65, null, !dbg !1468
  br i1 %tobool73, label %if.then74, label %if.end78, !dbg !1471

if.then74:                                        ; preds = %sw.bb72
  %66 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1472
  %parser_state75 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %66, i32 0, i32 21, !dbg !1474
  %pkg_end76 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state75, i32 0, i32 4, !dbg !1475
  %67 = load i8*, i8** %pkg_end76, align 8, !dbg !1475
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1476
  %control_state77 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %68, i32 0, i32 32, !dbg !1477
  %69 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state77, align 8, !dbg !1477
  %control = bitcast %union.acpi_generic_state* %69 to %struct.acpi_control_state*, !dbg !1478
  %package_end = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control, i32 0, i32 8, !dbg !1479
  store i8* %67, i8** %package_end, align 8, !dbg !1480
  br label %if.end78, !dbg !1481

if.end78:                                         ; preds = %if.then74, %sw.bb72
  br label %sw.epilog80, !dbg !1482

sw.default79:                                     ; preds = %while.end
  br label %sw.epilog80, !dbg !1483

sw.epilog80:                                      ; preds = %sw.default79, %if.end78, %if.end71, %sw.bb29
  br label %sw.epilog81, !dbg !1484

sw.epilog81:                                      ; preds = %sw.epilog80, %if.end, %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !1485
  br label %return, !dbg !1485

return:                                           ; preds = %sw.epilog81, %if.then20, %if.then
  %70 = load i32, i32* %retval, align 4, !dbg !1486
  ret i32 %70, !dbg !1486
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1487 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1491, metadata !DIExpression()), !dbg !1492
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1493
  call void @kfree(i8* %0) #3, !dbg !1494
  ret void, !dbg !1495
}

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_push_scope(%struct.acpi_parse_state*, %union.acpi_parse_object*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_complete_final_op(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_get_next_simple_arg(%struct.acpi_parse_state*, i32, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_get_next_namepath(%struct.acpi_walk_state*, %struct.acpi_parse_state*, %union.acpi_parse_object*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_get_next_arg(%struct.acpi_walk_state*, %struct.acpi_parse_state*, i32, %union.acpi_parse_object**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_append_arg(%union.acpi_parse_object*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 28, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/psloop.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3, isUnsigned: true)
!12 = !{!13, !19, !20, !23, !15}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !14, line: 421, baseType: !15)
!14 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 21, baseType: !17)
!16 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !18, line: 27, baseType: !7)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !16, line: 19, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !18, line: 24, baseType: !22)
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !14, line: 127, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !16, line: 23, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !18, line: 31, baseType: !26)
!26 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !{!0}
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 56, elements: !31)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !{!32}
!32 = !DISubrange(count: 7)
!33 = !{i32 7, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"Code Model", i32 2}
!37 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!38 = distinct !DISubprogram(name: "acpi_ps_parse_loop", scope: !3, file: !3, line: 221, type: !39, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !796)
!39 = !DISubroutineType(types: !40)
!40 = !{!13, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !43, line: 37, size: 9024, elements: !44)
!43 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !46, !50, !51, !52, !53, !54, !55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !71, !745, !746, !747, !748, !749, !751, !753, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !780, !781, !782, !783, !784, !785, !786, !787, !788, !794}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !42, file: !43, line: 38, baseType: !41, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !42, file: !43, line: 39, baseType: !47, size: 8, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !16, line: 17, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !49)
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !42, file: !43, line: 40, baseType: !47, size: 8, offset: 72)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !42, file: !43, line: 41, baseType: !20, size: 16, offset: 80)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !42, file: !43, line: 42, baseType: !47, size: 8, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !42, file: !43, line: 43, baseType: !47, size: 8, offset: 104)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !42, file: !43, line: 44, baseType: !47, size: 8, offset: 112)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !42, file: !43, line: 45, baseType: !56, size: 16, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !14, line: 445, baseType: !20)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !42, file: !43, line: 46, baseType: !47, size: 8, offset: 144)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !42, file: !43, line: 47, baseType: !47, size: 8, offset: 152)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !42, file: !43, line: 48, baseType: !47, size: 8, offset: 160)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !42, file: !43, line: 49, baseType: !47, size: 8, offset: 168)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !42, file: !43, line: 50, baseType: !47, size: 8, offset: 176)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !42, file: !43, line: 51, baseType: !47, size: 8, offset: 184)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !42, file: !43, line: 52, baseType: !47, size: 8, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !42, file: !43, line: 53, baseType: !47, size: 8, offset: 200)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !42, file: !43, line: 54, baseType: !66, size: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !42, file: !43, line: 55, baseType: !15, size: 32, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !42, file: !43, line: 56, baseType: !15, size: 32, offset: 352)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !42, file: !43, line: 57, baseType: !15, size: 32, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !42, file: !43, line: 58, baseType: !15, size: 32, offset: 416)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !42, file: !43, line: 60, baseType: !72, size: 640, offset: 448)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !73)
!73 = !{!74, !75, !76, !77, !78, !79, !642, !643, !743, !744}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !72, file: !6, line: 894, baseType: !66, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !72, file: !6, line: 895, baseType: !66, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !72, file: !6, line: 896, baseType: !66, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !72, file: !6, line: 897, baseType: !66, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !72, file: !6, line: 898, baseType: !66, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !72, file: !6, line: 899, baseType: !80, size: 64, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !82)
!82 = !{!83, !585, !601}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !81, file: !6, line: 876, baseType: !84, size: 448)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !575, !584}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !84, file: !6, line: 829, baseType: !80, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !84, file: !6, line: 829, baseType: !47, size: 8, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !6, line: 829, baseType: !47, size: 8, offset: 72)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !84, file: !6, line: 829, baseType: !20, size: 16, offset: 80)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !84, file: !6, line: 829, baseType: !66, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !84, file: !6, line: 829, baseType: !80, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !84, file: !6, line: 829, baseType: !93, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !95)
!95 = !{!96, !559, !560, !561, !562, !571, !572, !573, !574}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !94, file: !6, line: 134, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !99, line: 367, size: 576, elements: !100)
!99 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !109, !122, !133, !146, !160, !169, !193, !222, !237, !250, !329, !341, !355, !365, !383, !405, !424, !443, !462, !479, !505, !522, !535, !549, !558}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !98, file: !99, line: 368, baseType: !102, size: 128)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !99, line: 73, size: 128, elements: !103)
!103 = !{!104, !105, !106, !107, !108}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !102, file: !99, line: 74, baseType: !97, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !99, line: 74, baseType: !47, size: 8, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !99, line: 74, baseType: !47, size: 8, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !102, file: !99, line: 74, baseType: !20, size: 16, offset: 80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !99, line: 74, baseType: !47, size: 8, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !98, file: !99, line: 369, baseType: !110, size: 192)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !99, line: 76, size: 192, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !121}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !110, file: !99, line: 77, baseType: !97, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !110, file: !99, line: 77, baseType: !47, size: 8, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !99, line: 77, baseType: !47, size: 8, offset: 72)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !110, file: !99, line: 77, baseType: !20, size: 16, offset: 80)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !99, line: 77, baseType: !47, size: 8, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !110, file: !99, line: 77, baseType: !118, size: 24, offset: 104)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 24, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 3)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !110, file: !99, line: 78, baseType: !24, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !98, file: !99, line: 370, baseType: !123, size: 256)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !99, line: 93, size: 256, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !132}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !99, line: 94, baseType: !97, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !99, line: 94, baseType: !47, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !99, line: 94, baseType: !47, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !99, line: 94, baseType: !20, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !99, line: 94, baseType: !47, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !123, file: !99, line: 94, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !123, file: !99, line: 94, baseType: !15, size: 32, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !98, file: !99, line: 371, baseType: !134, size: 384)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !99, line: 97, size: 384, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !134, file: !99, line: 98, baseType: !97, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !99, line: 98, baseType: !47, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !99, line: 98, baseType: !47, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !134, file: !99, line: 98, baseType: !20, size: 16, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !99, line: 98, baseType: !47, size: 8, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !134, file: !99, line: 98, baseType: !66, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !134, file: !99, line: 98, baseType: !15, size: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !134, file: !99, line: 99, baseType: !15, size: 32, offset: 224)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !134, file: !99, line: 100, baseType: !66, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !134, file: !99, line: 101, baseType: !93, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !98, file: !99, line: 372, baseType: !147, size: 384)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !99, line: 104, size: 384, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !157, !158, !159}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !147, file: !99, line: 105, baseType: !97, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !99, line: 105, baseType: !47, size: 8, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !99, line: 105, baseType: !47, size: 8, offset: 72)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !147, file: !99, line: 105, baseType: !20, size: 16, offset: 80)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !99, line: 105, baseType: !47, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !147, file: !99, line: 105, baseType: !93, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !147, file: !99, line: 106, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !147, file: !99, line: 107, baseType: !66, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !147, file: !99, line: 108, baseType: !15, size: 32, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !147, file: !99, line: 109, baseType: !15, size: 32, offset: 352)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !98, file: !99, line: 373, baseType: !161, size: 192)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !99, line: 118, size: 192, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !161, file: !99, line: 119, baseType: !97, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !161, file: !99, line: 119, baseType: !47, size: 8, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !161, file: !99, line: 119, baseType: !47, size: 8, offset: 72)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !161, file: !99, line: 119, baseType: !20, size: 16, offset: 80)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !99, line: 119, baseType: !47, size: 8, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !161, file: !99, line: 119, baseType: !19, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !98, file: !99, line: 374, baseType: !170, size: 448)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !99, line: 143, size: 448, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !190, !191, !192}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !170, file: !99, line: 144, baseType: !97, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !170, file: !99, line: 144, baseType: !47, size: 8, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !99, line: 144, baseType: !47, size: 8, offset: 72)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !170, file: !99, line: 144, baseType: !20, size: 16, offset: 80)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !170, file: !99, line: 144, baseType: !47, size: 8, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !170, file: !99, line: 144, baseType: !47, size: 8, offset: 104)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !170, file: !99, line: 145, baseType: !47, size: 8, offset: 112)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !170, file: !99, line: 146, baseType: !47, size: 8, offset: 120)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !170, file: !99, line: 147, baseType: !97, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !170, file: !99, line: 148, baseType: !97, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !170, file: !99, line: 149, baseType: !66, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !170, file: !99, line: 153, baseType: !184, size: 64, offset: 320)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !99, line: 150, size: 64, elements: !185)
!185 = !{!186, !189}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !184, file: !99, line: 151, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !184, file: !99, line: 152, baseType: !97, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !170, file: !99, line: 155, baseType: !15, size: 32, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !170, file: !99, line: 156, baseType: !56, size: 16, offset: 416)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !170, file: !99, line: 157, baseType: !47, size: 8, offset: 432)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !98, file: !99, line: 375, baseType: !194, size: 576)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !99, line: 122, size: 576, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !218, !219, !220, !221}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !194, file: !99, line: 123, baseType: !97, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !194, file: !99, line: 123, baseType: !47, size: 8, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !194, file: !99, line: 123, baseType: !47, size: 8, offset: 72)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !194, file: !99, line: 123, baseType: !20, size: 16, offset: 80)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !99, line: 123, baseType: !47, size: 8, offset: 96)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !194, file: !99, line: 123, baseType: !47, size: 8, offset: 104)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !194, file: !99, line: 124, baseType: !20, size: 16, offset: 112)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !194, file: !99, line: 125, baseType: !19, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !194, file: !99, line: 126, baseType: !24, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !194, file: !99, line: 127, baseType: !206, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !6, line: 621, baseType: !19, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !207, file: !6, line: 621, baseType: !47, size: 8, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !6, line: 621, baseType: !47, size: 8, offset: 72)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !207, file: !6, line: 621, baseType: !20, size: 16, offset: 80)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !207, file: !6, line: 621, baseType: !20, size: 16, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !207, file: !6, line: 621, baseType: !47, size: 8, offset: 112)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !207, file: !6, line: 622, baseType: !41, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !207, file: !6, line: 623, baseType: !97, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !207, file: !6, line: 624, baseType: !24, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !194, file: !99, line: 128, baseType: !97, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !99, line: 129, baseType: !97, size: 64, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !194, file: !99, line: 130, baseType: !93, size: 64, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !194, file: !99, line: 131, baseType: !47, size: 8, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !98, file: !99, line: 376, baseType: !223, size: 448)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !99, line: 134, size: 448, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !236}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !223, file: !99, line: 135, baseType: !97, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !223, file: !99, line: 135, baseType: !47, size: 8, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !223, file: !99, line: 135, baseType: !47, size: 8, offset: 72)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !223, file: !99, line: 135, baseType: !20, size: 16, offset: 80)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !223, file: !99, line: 135, baseType: !47, size: 8, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !223, file: !99, line: 135, baseType: !47, size: 8, offset: 104)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !223, file: !99, line: 136, baseType: !93, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !223, file: !99, line: 137, baseType: !97, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !99, line: 138, baseType: !97, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !223, file: !99, line: 139, baseType: !235, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !14, line: 129, baseType: !24)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !223, file: !99, line: 140, baseType: !15, size: 32, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !98, file: !99, line: 377, baseType: !238, size: 320)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !99, line: 184, size: 320, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !249}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !238, file: !99, line: 185, baseType: !97, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !238, file: !99, line: 185, baseType: !47, size: 8, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !238, file: !99, line: 185, baseType: !47, size: 8, offset: 72)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !238, file: !99, line: 185, baseType: !20, size: 16, offset: 80)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !99, line: 185, baseType: !47, size: 8, offset: 96)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !238, file: !99, line: 185, baseType: !246, size: 128, offset: 128)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 2)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !238, file: !99, line: 185, baseType: !97, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !98, file: !99, line: 378, baseType: !251, size: 384)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !99, line: 187, size: 384, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !251, file: !99, line: 188, baseType: !97, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !251, file: !99, line: 188, baseType: !47, size: 8, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !251, file: !99, line: 188, baseType: !47, size: 8, offset: 72)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !251, file: !99, line: 188, baseType: !20, size: 16, offset: 80)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !99, line: 188, baseType: !47, size: 8, offset: 96)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !251, file: !99, line: 189, baseType: !246, size: 128, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !251, file: !99, line: 189, baseType: !97, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !251, file: !99, line: 189, baseType: !261, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !263)
!263 = !{!264, !265, !266, !267, !275, !290, !323, !324, !325, !326, !327, !328}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !262, file: !6, line: 481, baseType: !93, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !262, file: !6, line: 482, baseType: !261, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !6, line: 483, baseType: !261, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !262, file: !6, line: 484, baseType: !268, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !270)
!270 = !{!271, !272, !273, !274}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !269, file: !6, line: 498, baseType: !268, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !6, line: 499, baseType: !268, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !269, file: !6, line: 500, baseType: !261, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !269, file: !6, line: 501, baseType: !15, size: 32, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !262, file: !6, line: 485, baseType: !276, size: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !278)
!278 = !{!279, !284, !285, !286, !287, !288, !289}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !277, file: !6, line: 467, baseType: !280, size: 128)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !280, file: !6, line: 460, baseType: !47, size: 8)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !280, file: !6, line: 461, baseType: !24, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !277, file: !6, line: 468, baseType: !280, size: 128, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !277, file: !6, line: 469, baseType: !20, size: 16, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !277, file: !6, line: 470, baseType: !47, size: 8, offset: 272)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !277, file: !6, line: 471, baseType: !47, size: 8, offset: 280)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !277, file: !6, line: 472, baseType: !47, size: 8, offset: 288)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !277, file: !6, line: 473, baseType: !47, size: 8, offset: 296)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !262, file: !6, line: 486, baseType: !291, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !293)
!293 = !{!294, !318, !319, !320, !321, !322}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !292, file: !6, line: 449, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !296)
!296 = !{!297, !298, !312}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !295, file: !6, line: 439, baseType: !93, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !295, file: !6, line: 440, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !301)
!301 = !{!302, !308, !309, !310, !311}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !300, file: !6, line: 420, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !14, line: 1049, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!15, !307, !15, !19}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !14, line: 424, baseType: !19)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !300, file: !6, line: 421, baseType: !19, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !300, file: !6, line: 422, baseType: !93, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !300, file: !6, line: 423, baseType: !47, size: 8, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !300, file: !6, line: 424, baseType: !47, size: 8, offset: 200)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !295, file: !6, line: 441, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !314, file: !6, line: 430, baseType: !93, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !6, line: 431, baseType: !313, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !292, file: !6, line: 450, baseType: !276, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !6, line: 451, baseType: !47, size: 8, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !292, file: !6, line: 452, baseType: !47, size: 8, offset: 136)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !292, file: !6, line: 453, baseType: !47, size: 8, offset: 144)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !292, file: !6, line: 454, baseType: !47, size: 8, offset: 152)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !262, file: !6, line: 487, baseType: !24, size: 64, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !262, file: !6, line: 488, baseType: !15, size: 32, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !262, file: !6, line: 489, baseType: !20, size: 16, offset: 480)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !262, file: !6, line: 490, baseType: !20, size: 16, offset: 496)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !262, file: !6, line: 491, baseType: !47, size: 8, offset: 512)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !262, file: !6, line: 492, baseType: !47, size: 8, offset: 520)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !98, file: !99, line: 379, baseType: !330, size: 384)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !99, line: 192, size: 384, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !330, file: !99, line: 193, baseType: !97, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !330, file: !99, line: 193, baseType: !47, size: 8, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !330, file: !99, line: 193, baseType: !47, size: 8, offset: 72)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !330, file: !99, line: 193, baseType: !20, size: 16, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !99, line: 193, baseType: !47, size: 8, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !330, file: !99, line: 193, baseType: !246, size: 128, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !330, file: !99, line: 193, baseType: !97, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !330, file: !99, line: 193, baseType: !15, size: 32, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !330, file: !99, line: 194, baseType: !15, size: 32, offset: 352)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !98, file: !99, line: 380, baseType: !342, size: 384)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !99, line: 197, size: 384, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !342, file: !99, line: 198, baseType: !97, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !342, file: !99, line: 198, baseType: !47, size: 8, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !342, file: !99, line: 198, baseType: !47, size: 8, offset: 72)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !342, file: !99, line: 198, baseType: !20, size: 16, offset: 80)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !99, line: 198, baseType: !47, size: 8, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !342, file: !99, line: 200, baseType: !47, size: 8, offset: 104)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !342, file: !99, line: 201, baseType: !47, size: 8, offset: 112)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !342, file: !99, line: 202, baseType: !246, size: 128, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !342, file: !99, line: 202, baseType: !97, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !342, file: !99, line: 202, baseType: !354, size: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !14, line: 128, baseType: !24)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !98, file: !99, line: 381, baseType: !356, size: 320)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !99, line: 205, size: 320, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !356, file: !99, line: 206, baseType: !97, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !356, file: !99, line: 206, baseType: !47, size: 8, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !356, file: !99, line: 206, baseType: !47, size: 8, offset: 72)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !356, file: !99, line: 206, baseType: !20, size: 16, offset: 80)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !99, line: 206, baseType: !47, size: 8, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !356, file: !99, line: 206, baseType: !246, size: 128, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !356, file: !99, line: 206, baseType: !97, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !98, file: !99, line: 382, baseType: !366, size: 384)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !99, line: 233, size: 384, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !366, file: !99, line: 234, baseType: !97, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !99, line: 234, baseType: !47, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !366, file: !99, line: 234, baseType: !47, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !366, file: !99, line: 234, baseType: !20, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !99, line: 234, baseType: !47, size: 8, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !366, file: !99, line: 234, baseType: !47, size: 8, offset: 104)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !366, file: !99, line: 234, baseType: !47, size: 8, offset: 112)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !366, file: !99, line: 234, baseType: !47, size: 8, offset: 120)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !366, file: !99, line: 234, baseType: !93, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !366, file: !99, line: 234, baseType: !15, size: 32, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !366, file: !99, line: 234, baseType: !15, size: 32, offset: 224)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !366, file: !99, line: 234, baseType: !15, size: 32, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !366, file: !99, line: 234, baseType: !47, size: 8, offset: 288)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !366, file: !99, line: 234, baseType: !47, size: 8, offset: 296)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !366, file: !99, line: 234, baseType: !97, size: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !98, file: !99, line: 383, baseType: !384, size: 576)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !99, line: 237, size: 576, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !384, file: !99, line: 238, baseType: !97, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !384, file: !99, line: 238, baseType: !47, size: 8, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !384, file: !99, line: 238, baseType: !47, size: 8, offset: 72)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !384, file: !99, line: 238, baseType: !20, size: 16, offset: 80)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !99, line: 238, baseType: !47, size: 8, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !384, file: !99, line: 238, baseType: !47, size: 8, offset: 104)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !384, file: !99, line: 238, baseType: !47, size: 8, offset: 112)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !384, file: !99, line: 238, baseType: !47, size: 8, offset: 120)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !384, file: !99, line: 238, baseType: !93, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !384, file: !99, line: 238, baseType: !15, size: 32, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !384, file: !99, line: 238, baseType: !15, size: 32, offset: 224)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !384, file: !99, line: 238, baseType: !15, size: 32, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !384, file: !99, line: 238, baseType: !47, size: 8, offset: 288)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !384, file: !99, line: 238, baseType: !47, size: 8, offset: 296)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !384, file: !99, line: 238, baseType: !20, size: 16, offset: 304)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !384, file: !99, line: 239, baseType: !97, size: 64, offset: 320)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !384, file: !99, line: 240, baseType: !66, size: 64, offset: 384)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !384, file: !99, line: 241, baseType: !20, size: 16, offset: 448)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !384, file: !99, line: 242, baseType: !66, size: 64, offset: 512)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !98, file: !99, line: 384, baseType: !406, size: 384)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !99, line: 262, size: 384, elements: !407)
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !406, file: !99, line: 263, baseType: !97, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !406, file: !99, line: 263, baseType: !47, size: 8, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !406, file: !99, line: 263, baseType: !47, size: 8, offset: 72)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !406, file: !99, line: 263, baseType: !20, size: 16, offset: 80)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !406, file: !99, line: 263, baseType: !47, size: 8, offset: 96)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !406, file: !99, line: 263, baseType: !47, size: 8, offset: 104)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !406, file: !99, line: 263, baseType: !47, size: 8, offset: 112)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !406, file: !99, line: 263, baseType: !47, size: 8, offset: 120)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !406, file: !99, line: 263, baseType: !93, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !406, file: !99, line: 263, baseType: !15, size: 32, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !406, file: !99, line: 263, baseType: !15, size: 32, offset: 224)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !406, file: !99, line: 263, baseType: !15, size: 32, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !406, file: !99, line: 263, baseType: !47, size: 8, offset: 288)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !406, file: !99, line: 263, baseType: !47, size: 8, offset: 296)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !406, file: !99, line: 263, baseType: !47, size: 8, offset: 304)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !406, file: !99, line: 264, baseType: !97, size: 64, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !98, file: !99, line: 385, baseType: !425, size: 448)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !99, line: 245, size: 448, elements: !426)
!426 = !{!427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !425, file: !99, line: 246, baseType: !97, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !425, file: !99, line: 246, baseType: !47, size: 8, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !425, file: !99, line: 246, baseType: !47, size: 8, offset: 72)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !425, file: !99, line: 246, baseType: !20, size: 16, offset: 80)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !425, file: !99, line: 246, baseType: !47, size: 8, offset: 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !425, file: !99, line: 246, baseType: !47, size: 8, offset: 104)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !425, file: !99, line: 246, baseType: !47, size: 8, offset: 112)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !425, file: !99, line: 246, baseType: !47, size: 8, offset: 120)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !425, file: !99, line: 246, baseType: !93, size: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !425, file: !99, line: 246, baseType: !15, size: 32, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !425, file: !99, line: 246, baseType: !15, size: 32, offset: 224)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !425, file: !99, line: 246, baseType: !15, size: 32, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !425, file: !99, line: 246, baseType: !47, size: 8, offset: 288)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !425, file: !99, line: 246, baseType: !47, size: 8, offset: 296)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !425, file: !99, line: 246, baseType: !97, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !425, file: !99, line: 247, baseType: !97, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !98, file: !99, line: 386, baseType: !444, size: 448)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !99, line: 250, size: 448, elements: !445)
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !444, file: !99, line: 251, baseType: !97, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !444, file: !99, line: 251, baseType: !47, size: 8, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !444, file: !99, line: 251, baseType: !47, size: 8, offset: 72)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !444, file: !99, line: 251, baseType: !20, size: 16, offset: 80)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !444, file: !99, line: 251, baseType: !47, size: 8, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !444, file: !99, line: 251, baseType: !47, size: 8, offset: 104)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !444, file: !99, line: 251, baseType: !47, size: 8, offset: 112)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !444, file: !99, line: 251, baseType: !47, size: 8, offset: 120)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !444, file: !99, line: 251, baseType: !93, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !444, file: !99, line: 251, baseType: !15, size: 32, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !444, file: !99, line: 251, baseType: !15, size: 32, offset: 224)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !444, file: !99, line: 251, baseType: !15, size: 32, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !444, file: !99, line: 251, baseType: !47, size: 8, offset: 288)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !444, file: !99, line: 251, baseType: !47, size: 8, offset: 296)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !444, file: !99, line: 256, baseType: !97, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !444, file: !99, line: 257, baseType: !97, size: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !98, file: !99, line: 387, baseType: !463, size: 512)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !99, line: 273, size: 512, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !477, !478}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !463, file: !99, line: 274, baseType: !97, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !463, file: !99, line: 274, baseType: !47, size: 8, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !463, file: !99, line: 274, baseType: !47, size: 8, offset: 72)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !463, file: !99, line: 274, baseType: !20, size: 16, offset: 80)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !99, line: 274, baseType: !47, size: 8, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !463, file: !99, line: 274, baseType: !93, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !463, file: !99, line: 275, baseType: !15, size: 32, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !463, file: !99, line: 276, baseType: !473, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !14, line: 1052, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !307, !15, !19}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !463, file: !99, line: 277, baseType: !19, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !99, line: 278, baseType: !246, size: 128, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !98, file: !99, line: 388, baseType: !480, size: 512)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !99, line: 281, size: 512, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !495, !496, !497, !503, !504}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !480, file: !99, line: 282, baseType: !97, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !480, file: !99, line: 282, baseType: !47, size: 8, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !99, line: 282, baseType: !47, size: 8, offset: 72)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !480, file: !99, line: 282, baseType: !20, size: 16, offset: 80)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !99, line: 282, baseType: !47, size: 8, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !480, file: !99, line: 282, baseType: !47, size: 8, offset: 104)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !480, file: !99, line: 283, baseType: !47, size: 8, offset: 112)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !480, file: !99, line: 284, baseType: !490, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !14, line: 1084, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!13, !15, !235, !15, !494, !19, !19}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !480, file: !99, line: 285, baseType: !93, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !480, file: !99, line: 286, baseType: !19, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !480, file: !99, line: 287, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !14, line: 1102, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!13, !307, !15, !19, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !480, file: !99, line: 288, baseType: !97, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !480, file: !99, line: 289, baseType: !97, size: 64, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !98, file: !99, line: 389, baseType: !506, size: 512)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !99, line: 307, size: 512, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !506, file: !99, line: 308, baseType: !97, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !506, file: !99, line: 308, baseType: !47, size: 8, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !506, file: !99, line: 308, baseType: !47, size: 8, offset: 72)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !506, file: !99, line: 308, baseType: !20, size: 16, offset: 80)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !99, line: 308, baseType: !47, size: 8, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !506, file: !99, line: 308, baseType: !47, size: 8, offset: 104)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !506, file: !99, line: 309, baseType: !47, size: 8, offset: 112)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !506, file: !99, line: 310, baseType: !47, size: 8, offset: 120)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !506, file: !99, line: 311, baseType: !19, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !506, file: !99, line: 312, baseType: !93, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !506, file: !99, line: 313, baseType: !156, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !506, file: !99, line: 314, baseType: !66, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !506, file: !99, line: 315, baseType: !66, size: 64, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !506, file: !99, line: 316, baseType: !15, size: 32, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !98, file: !99, line: 390, baseType: !523, size: 448)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !99, line: 340, size: 448, elements: !524)
!524 = !{!525, !526, !527, !528, !529, !530, !531, !532, !533, !534}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !523, file: !99, line: 341, baseType: !97, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !523, file: !99, line: 341, baseType: !47, size: 8, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !523, file: !99, line: 341, baseType: !47, size: 8, offset: 72)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !523, file: !99, line: 341, baseType: !20, size: 16, offset: 80)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !523, file: !99, line: 341, baseType: !47, size: 8, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !523, file: !99, line: 341, baseType: !93, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !523, file: !99, line: 342, baseType: !93, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !523, file: !99, line: 343, baseType: !19, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !523, file: !99, line: 344, baseType: !66, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !523, file: !99, line: 345, baseType: !15, size: 32, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !98, file: !99, line: 391, baseType: !536, size: 256)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !99, line: 350, size: 256, elements: !537)
!537 = !{!538, !539, !540, !541, !542, !543, !548}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !536, file: !99, line: 351, baseType: !97, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !536, file: !99, line: 351, baseType: !47, size: 8, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !536, file: !99, line: 351, baseType: !47, size: 8, offset: 72)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !536, file: !99, line: 351, baseType: !20, size: 16, offset: 80)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !536, file: !99, line: 351, baseType: !47, size: 8, offset: 96)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !536, file: !99, line: 351, baseType: !544, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !14, line: 1055, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !307, !19}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !536, file: !99, line: 352, baseType: !19, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !98, file: !99, line: 392, baseType: !550, size: 192)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !99, line: 357, size: 192, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !550, file: !99, line: 358, baseType: !97, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !550, file: !99, line: 358, baseType: !47, size: 8, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !550, file: !99, line: 358, baseType: !47, size: 8, offset: 72)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !550, file: !99, line: 358, baseType: !20, size: 16, offset: 80)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !550, file: !99, line: 358, baseType: !47, size: 8, offset: 96)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !550, file: !99, line: 358, baseType: !97, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !98, file: !99, line: 399, baseType: !94, size: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !6, line: 135, baseType: !47, size: 8, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !6, line: 136, baseType: !47, size: 8, offset: 72)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !6, line: 137, baseType: !20, size: 16, offset: 80)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !6, line: 138, baseType: !563, size: 32, offset: 96)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !564, line: 327, size: 32, elements: !565)
!564 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !563, file: !564, line: 328, baseType: !15, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !563, file: !564, line: 329, baseType: !568, size: 32)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 4)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !94, file: !6, line: 139, baseType: !93, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !94, file: !6, line: 140, baseType: !93, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !94, file: !6, line: 141, baseType: !93, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !94, file: !6, line: 142, baseType: !56, size: 16, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !84, file: !6, line: 829, baseType: !576, size: 64, offset: 320)
!576 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !576, file: !6, line: 717, baseType: !24, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !576, file: !6, line: 718, baseType: !15, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !576, file: !6, line: 719, baseType: !131, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !576, file: !6, line: 720, baseType: !66, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !576, file: !6, line: 721, baseType: !131, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !576, file: !6, line: 722, baseType: !80, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !84, file: !6, line: 829, baseType: !47, size: 8, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !81, file: !6, line: 877, baseType: !586, size: 640)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !586, file: !6, line: 836, baseType: !80, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !586, file: !6, line: 836, baseType: !47, size: 8, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !6, line: 836, baseType: !47, size: 8, offset: 72)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !586, file: !6, line: 836, baseType: !20, size: 16, offset: 80)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !586, file: !6, line: 836, baseType: !66, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !586, file: !6, line: 836, baseType: !80, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !586, file: !6, line: 836, baseType: !93, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !586, file: !6, line: 836, baseType: !576, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !586, file: !6, line: 836, baseType: !47, size: 8, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !586, file: !6, line: 836, baseType: !131, size: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !586, file: !6, line: 837, baseType: !66, size: 64, offset: 512)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !586, file: !6, line: 838, baseType: !15, size: 32, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !586, file: !6, line: 839, baseType: !15, size: 32, offset: 608)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !81, file: !6, line: 878, baseType: !602, size: 1600)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !602, file: !6, line: 847, baseType: !80, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !6, line: 847, baseType: !47, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !6, line: 847, baseType: !47, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !602, file: !6, line: 847, baseType: !20, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !602, file: !6, line: 847, baseType: !66, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !602, file: !6, line: 847, baseType: !80, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !602, file: !6, line: 847, baseType: !93, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !602, file: !6, line: 847, baseType: !576, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !602, file: !6, line: 847, baseType: !47, size: 8, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !602, file: !6, line: 847, baseType: !80, size: 64, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !602, file: !6, line: 848, baseType: !80, size: 64, offset: 512)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !602, file: !6, line: 849, baseType: !131, size: 64, offset: 576)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !602, file: !6, line: 850, baseType: !47, size: 8, offset: 640)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !602, file: !6, line: 851, baseType: !131, size: 64, offset: 704)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !602, file: !6, line: 852, baseType: !131, size: 64, offset: 768)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !602, file: !6, line: 853, baseType: !131, size: 64, offset: 832)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !602, file: !6, line: 854, baseType: !568, size: 32, offset: 896)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !602, file: !6, line: 855, baseType: !15, size: 32, offset: 928)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !602, file: !6, line: 856, baseType: !15, size: 32, offset: 960)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !602, file: !6, line: 857, baseType: !15, size: 32, offset: 992)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !602, file: !6, line: 858, baseType: !15, size: 32, offset: 1024)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !602, file: !6, line: 859, baseType: !15, size: 32, offset: 1056)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !602, file: !6, line: 860, baseType: !15, size: 32, offset: 1088)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !602, file: !6, line: 861, baseType: !15, size: 32, offset: 1120)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !602, file: !6, line: 862, baseType: !15, size: 32, offset: 1152)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !602, file: !6, line: 863, baseType: !15, size: 32, offset: 1184)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !602, file: !6, line: 864, baseType: !15, size: 32, offset: 1216)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !602, file: !6, line: 865, baseType: !15, size: 32, offset: 1248)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !602, file: !6, line: 866, baseType: !15, size: 32, offset: 1280)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !602, file: !6, line: 867, baseType: !15, size: 32, offset: 1312)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !602, file: !6, line: 868, baseType: !20, size: 16, offset: 1344)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !602, file: !6, line: 869, baseType: !47, size: 8, offset: 1360)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !602, file: !6, line: 870, baseType: !47, size: 8, offset: 1368)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !602, file: !6, line: 871, baseType: !47, size: 8, offset: 1376)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !602, file: !6, line: 872, baseType: !639, size: 160, offset: 1384)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 20)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !72, file: !6, line: 900, baseType: !93, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !72, file: !6, line: 901, baseType: !644, size: 64, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !646)
!646 = !{!647, !655, !668, !677, !686, !699, !713, !714, !726}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !645, file: !6, line: 664, baseType: !648, size: 128)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !649)
!649 = !{!650, !651, !652, !653, !654}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !648, file: !6, line: 568, baseType: !19, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !648, file: !6, line: 568, baseType: !47, size: 8, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !648, file: !6, line: 568, baseType: !47, size: 8, offset: 72)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !648, file: !6, line: 568, baseType: !20, size: 16, offset: 80)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !648, file: !6, line: 568, baseType: !20, size: 16, offset: 96)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !645, file: !6, line: 665, baseType: !656, size: 384)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !656, file: !6, line: 594, baseType: !19, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !656, file: !6, line: 594, baseType: !47, size: 8, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !6, line: 594, baseType: !47, size: 8, offset: 72)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !656, file: !6, line: 594, baseType: !20, size: 16, offset: 80)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !656, file: !6, line: 594, baseType: !20, size: 16, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !656, file: !6, line: 594, baseType: !20, size: 16, offset: 112)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !656, file: !6, line: 595, baseType: !80, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !656, file: !6, line: 596, baseType: !66, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !656, file: !6, line: 597, baseType: !66, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !656, file: !6, line: 598, baseType: !24, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !645, file: !6, line: 666, baseType: !669, size: 192)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !670)
!670 = !{!671, !672, !673, !674, !675, !676}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !669, file: !6, line: 574, baseType: !19, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !669, file: !6, line: 574, baseType: !47, size: 8, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !669, file: !6, line: 574, baseType: !47, size: 8, offset: 72)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !669, file: !6, line: 574, baseType: !20, size: 16, offset: 80)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !669, file: !6, line: 574, baseType: !20, size: 16, offset: 96)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !669, file: !6, line: 574, baseType: !97, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !645, file: !6, line: 667, baseType: !678, size: 192)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !679)
!679 = !{!680, !681, !682, !683, !684, !685}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !678, file: !6, line: 605, baseType: !19, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !678, file: !6, line: 605, baseType: !47, size: 8, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !678, file: !6, line: 605, baseType: !47, size: 8, offset: 72)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !678, file: !6, line: 605, baseType: !20, size: 16, offset: 80)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !678, file: !6, line: 605, baseType: !20, size: 16, offset: 96)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !678, file: !6, line: 605, baseType: !93, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !645, file: !6, line: 668, baseType: !687, size: 448)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !687, file: !6, line: 609, baseType: !19, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !687, file: !6, line: 609, baseType: !47, size: 8, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !6, line: 609, baseType: !47, size: 8, offset: 72)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !687, file: !6, line: 609, baseType: !20, size: 16, offset: 80)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !687, file: !6, line: 609, baseType: !20, size: 16, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !687, file: !6, line: 609, baseType: !15, size: 32, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !687, file: !6, line: 610, baseType: !80, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !687, file: !6, line: 611, baseType: !66, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !687, file: !6, line: 612, baseType: !66, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !687, file: !6, line: 613, baseType: !15, size: 32, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !645, file: !6, line: 669, baseType: !700, size: 512)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !6, line: 581, baseType: !19, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !700, file: !6, line: 581, baseType: !47, size: 8, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !6, line: 581, baseType: !47, size: 8, offset: 72)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !700, file: !6, line: 581, baseType: !20, size: 16, offset: 80)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !700, file: !6, line: 581, baseType: !20, size: 16, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !700, file: !6, line: 581, baseType: !15, size: 32, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !700, file: !6, line: 582, baseType: !97, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !700, file: !6, line: 583, baseType: !97, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !700, file: !6, line: 584, baseType: !41, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !700, file: !6, line: 585, baseType: !19, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !700, file: !6, line: 586, baseType: !15, size: 32, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !645, file: !6, line: 670, baseType: !207, size: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !645, file: !6, line: 671, baseType: !715, size: 640)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !715, file: !6, line: 632, baseType: !19, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !6, line: 632, baseType: !47, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !6, line: 632, baseType: !47, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !715, file: !6, line: 632, baseType: !20, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !715, file: !6, line: 632, baseType: !20, size: 16, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !715, file: !6, line: 633, baseType: !723, size: 512, offset: 128)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 512, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 8)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !645, file: !6, line: 672, baseType: !727, size: 320)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !727, file: !6, line: 655, baseType: !19, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !727, file: !6, line: 655, baseType: !47, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !6, line: 655, baseType: !47, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !727, file: !6, line: 655, baseType: !20, size: 16, offset: 80)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !727, file: !6, line: 655, baseType: !20, size: 16, offset: 96)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !727, file: !6, line: 655, baseType: !47, size: 8, offset: 112)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !727, file: !6, line: 656, baseType: !93, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !727, file: !6, line: 657, baseType: !97, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !727, file: !6, line: 658, baseType: !738, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !739, file: !6, line: 646, baseType: !473, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !739, file: !6, line: 647, baseType: !19, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !72, file: !6, line: 902, baseType: !80, size: 64, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !72, file: !6, line: 903, baseType: !15, size: 32, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !42, file: !43, line: 61, baseType: !15, size: 32, offset: 1088)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !42, file: !43, line: 62, baseType: !15, size: 32, offset: 1120)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !42, file: !43, line: 63, baseType: !20, size: 16, offset: 1152)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !42, file: !43, line: 64, baseType: !47, size: 8, offset: 1168)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !42, file: !43, line: 66, baseType: !750, size: 2688, offset: 1216)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2688, elements: !31)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !42, file: !43, line: 67, baseType: !752, size: 3072, offset: 3904)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3072, elements: !724)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !42, file: !43, line: 68, baseType: !754, size: 576, offset: 6976)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 576, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 9)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !42, file: !43, line: 69, baseType: !156, size: 64, offset: 7552)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !42, file: !43, line: 71, baseType: !66, size: 64, offset: 7616)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !42, file: !43, line: 72, baseType: !156, size: 64, offset: 7680)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !42, file: !43, line: 73, baseType: !644, size: 64, offset: 7744)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !42, file: !43, line: 74, baseType: !93, size: 64, offset: 7808)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !42, file: !43, line: 75, baseType: !97, size: 64, offset: 7872)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !42, file: !43, line: 76, baseType: !93, size: 64, offset: 7936)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !42, file: !43, line: 77, baseType: !80, size: 64, offset: 8000)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !42, file: !43, line: 78, baseType: !97, size: 64, offset: 8064)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !42, file: !43, line: 79, baseType: !93, size: 64, offset: 8128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !42, file: !43, line: 80, baseType: !131, size: 64, offset: 8192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !42, file: !43, line: 81, baseType: !80, size: 64, offset: 8256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !42, file: !43, line: 82, baseType: !770, size: 64, offset: 8320)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !772)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !772, file: !6, line: 706, baseType: !15, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !772, file: !6, line: 707, baseType: !15, size: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !6, line: 708, baseType: !20, size: 16, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !772, file: !6, line: 709, baseType: !47, size: 8, offset: 80)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !772, file: !6, line: 710, baseType: !47, size: 8, offset: 88)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !772, file: !6, line: 711, baseType: !47, size: 8, offset: 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !42, file: !43, line: 83, baseType: !80, size: 64, offset: 8384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !42, file: !43, line: 84, baseType: !97, size: 64, offset: 8448)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !42, file: !43, line: 85, baseType: !644, size: 64, offset: 8512)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !42, file: !43, line: 86, baseType: !97, size: 64, offset: 8576)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !42, file: !43, line: 87, baseType: !644, size: 64, offset: 8640)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !42, file: !43, line: 88, baseType: !80, size: 64, offset: 8704)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !42, file: !43, line: 89, baseType: !80, size: 64, offset: 8768)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !42, file: !43, line: 90, baseType: !206, size: 64, offset: 8832)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !42, file: !43, line: 91, baseType: !789, size: 64, offset: 8896)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!13, !41, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !42, file: !43, line: 92, baseType: !795, size: 64, offset: 8960)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !188)
!796 = !{}
!797 = !DILocalVariable(name: "walk_state", arg: 1, scope: !38, file: !3, line: 221, type: !41)
!798 = !DILocation(line: 221, column: 56, scope: !38)
!799 = !DILocalVariable(name: "status", scope: !38, file: !3, line: 223, type: !13)
!800 = !DILocation(line: 223, column: 14, scope: !38)
!801 = !DILocalVariable(name: "op", scope: !38, file: !3, line: 224, type: !80)
!802 = !DILocation(line: 224, column: 27, scope: !38)
!803 = !DILocalVariable(name: "parser_state", scope: !38, file: !3, line: 225, type: !804)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!805 = !DILocation(line: 225, column: 27, scope: !38)
!806 = !DILocalVariable(name: "aml_op_start", scope: !38, file: !3, line: 226, type: !66)
!807 = !DILocation(line: 226, column: 6, scope: !38)
!808 = !DILocalVariable(name: "opcode_length", scope: !38, file: !3, line: 227, type: !47)
!809 = !DILocation(line: 227, column: 5, scope: !38)
!810 = !DILocation(line: 231, column: 6, scope: !811)
!811 = distinct !DILexicalBlock(scope: !38, file: !3, line: 231, column: 6)
!812 = !DILocation(line: 231, column: 18, scope: !811)
!813 = !DILocation(line: 231, column: 38, scope: !811)
!814 = !DILocation(line: 231, column: 6, scope: !38)
!815 = !DILocation(line: 232, column: 3, scope: !816)
!816 = distinct !DILexicalBlock(scope: !811, file: !3, line: 231, column: 47)
!817 = !DILocation(line: 235, column: 18, scope: !38)
!818 = !DILocation(line: 235, column: 30, scope: !38)
!819 = !DILocation(line: 235, column: 15, scope: !38)
!820 = !DILocation(line: 236, column: 2, scope: !38)
!821 = !DILocation(line: 236, column: 14, scope: !38)
!822 = !DILocation(line: 236, column: 24, scope: !38)
!823 = !DILocation(line: 240, column: 6, scope: !824)
!824 = distinct !DILexicalBlock(scope: !38, file: !3, line: 240, column: 6)
!825 = !DILocation(line: 240, column: 18, scope: !824)
!826 = !DILocation(line: 240, column: 28, scope: !824)
!827 = !DILocation(line: 240, column: 6, scope: !38)
!828 = !DILocation(line: 244, column: 35, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 244, column: 7)
!830 = distinct !DILexicalBlock(scope: !824, file: !3, line: 240, column: 56)
!831 = !DILocation(line: 244, column: 7, scope: !829)
!832 = !DILocation(line: 244, column: 7, scope: !830)
!833 = !DILocation(line: 249, column: 9, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 249, column: 8)
!835 = distinct !DILexicalBlock(scope: !829, file: !3, line: 244, column: 50)
!836 = !DILocation(line: 249, column: 23, scope: !834)
!837 = !DILocation(line: 249, column: 30, scope: !834)
!838 = !DILocation(line: 249, column: 42, scope: !834)
!839 = !DILocation(line: 249, column: 8, scope: !834)
!840 = !DILocation(line: 249, column: 46, scope: !834)
!841 = !DILocation(line: 250, column: 10, scope: !834)
!842 = !DILocation(line: 250, column: 24, scope: !834)
!843 = !DILocation(line: 250, column: 31, scope: !834)
!844 = !DILocation(line: 250, column: 43, scope: !834)
!845 = !DILocation(line: 250, column: 47, scope: !834)
!846 = !DILocation(line: 251, column: 10, scope: !834)
!847 = !DILocation(line: 251, column: 21, scope: !834)
!848 = !DILocation(line: 252, column: 9, scope: !834)
!849 = !DILocation(line: 252, column: 13, scope: !834)
!850 = !DILocation(line: 252, column: 27, scope: !834)
!851 = !DILocation(line: 252, column: 34, scope: !834)
!852 = !DILocation(line: 252, column: 46, scope: !834)
!853 = !DILocation(line: 252, column: 50, scope: !834)
!854 = !DILocation(line: 253, column: 6, scope: !834)
!855 = !DILocation(line: 253, column: 17, scope: !834)
!856 = !DILocation(line: 254, column: 8, scope: !834)
!857 = !DILocation(line: 254, column: 12, scope: !834)
!858 = !DILocation(line: 254, column: 24, scope: !834)
!859 = !DILocation(line: 254, column: 11, scope: !834)
!860 = !DILocation(line: 255, column: 8, scope: !834)
!861 = !DILocation(line: 255, column: 12, scope: !834)
!862 = !DILocation(line: 255, column: 24, scope: !834)
!863 = !DILocation(line: 255, column: 39, scope: !834)
!864 = !DILocation(line: 255, column: 46, scope: !834)
!865 = !DILocation(line: 255, column: 52, scope: !834)
!866 = !DILocation(line: 249, column: 8, scope: !835)
!867 = !DILocation(line: 261, column: 5, scope: !868)
!868 = distinct !DILexicalBlock(scope: !834, file: !3, line: 256, column: 40)
!869 = !DILocation(line: 261, column: 17, scope: !868)
!870 = !DILocation(line: 261, column: 20, scope: !868)
!871 = !DILocation(line: 263, column: 37, scope: !868)
!872 = !DILocation(line: 263, column: 9, scope: !868)
!873 = !DILocation(line: 262, column: 12, scope: !868)
!874 = !DILocation(line: 266, column: 9, scope: !875)
!875 = distinct !DILexicalBlock(scope: !868, file: !3, line: 266, column: 9)
!876 = !DILocation(line: 267, column: 9, scope: !875)
!877 = !DILocation(line: 267, column: 14, scope: !875)
!878 = !DILocation(line: 267, column: 21, scope: !875)
!879 = !DILocation(line: 267, column: 37, scope: !875)
!880 = !DILocation(line: 266, column: 9, scope: !868)
!881 = !DILocation(line: 269, column: 10, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 269, column: 10)
!883 = distinct !DILexicalBlock(scope: !875, file: !3, line: 268, column: 24)
!884 = !DILocation(line: 269, column: 17, scope: !882)
!885 = !DILocation(line: 269, column: 10, scope: !883)
!886 = !DILocation(line: 270, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !882, file: !3, line: 269, column: 44)
!888 = !DILocation(line: 272, column: 6, scope: !887)
!889 = !DILocation(line: 274, column: 6, scope: !883)
!890 = !DILocation(line: 276, column: 6, scope: !883)
!891 = !DILocation(line: 280, column: 34, scope: !868)
!892 = !DILocation(line: 280, column: 46, scope: !868)
!893 = !DILocation(line: 281, column: 13, scope: !868)
!894 = !DILocation(line: 280, column: 9, scope: !868)
!895 = !DILocation(line: 279, column: 12, scope: !868)
!896 = !DILocation(line: 282, column: 4, scope: !868)
!897 = !DILocation(line: 284, column: 22, scope: !835)
!898 = !DILocation(line: 285, column: 9, scope: !835)
!899 = !DILocation(line: 285, column: 21, scope: !835)
!900 = !DILocation(line: 286, column: 9, scope: !835)
!901 = !DILocation(line: 286, column: 21, scope: !835)
!902 = !DILocation(line: 284, column: 4, scope: !835)
!903 = !DILocation(line: 289, column: 3, scope: !835)
!904 = !DILocation(line: 289, column: 14, scope: !905)
!905 = distinct !DILexicalBlock(scope: !829, file: !3, line: 289, column: 14)
!906 = !DILocation(line: 289, column: 26, scope: !905)
!907 = !DILocation(line: 289, column: 14, scope: !829)
!908 = !DILocation(line: 293, column: 9, scope: !909)
!909 = distinct !DILexicalBlock(scope: !905, file: !3, line: 289, column: 35)
!910 = !DILocation(line: 293, column: 21, scope: !909)
!911 = !DILocation(line: 293, column: 7, scope: !909)
!912 = !DILocation(line: 294, column: 28, scope: !909)
!913 = !DILocation(line: 294, column: 40, scope: !909)
!914 = !DILocation(line: 294, column: 4, scope: !909)
!915 = !DILocation(line: 294, column: 16, scope: !909)
!916 = !DILocation(line: 294, column: 26, scope: !909)
!917 = !DILocation(line: 295, column: 3, scope: !909)
!918 = !DILocation(line: 296, column: 2, scope: !830)
!919 = !DILocation(line: 301, column: 2, scope: !38)
!920 = !DILocation(line: 301, column: 10, scope: !38)
!921 = !DILocation(line: 301, column: 24, scope: !38)
!922 = !DILocation(line: 301, column: 30, scope: !38)
!923 = !DILocation(line: 301, column: 44, scope: !38)
!924 = !DILocation(line: 301, column: 28, scope: !38)
!925 = !DILocation(line: 301, column: 53, scope: !38)
!926 = !DILocation(line: 301, column: 57, scope: !38)
!927 = !DILocation(line: 304, column: 18, scope: !928)
!928 = distinct !DILexicalBlock(scope: !38, file: !3, line: 301, column: 62)
!929 = !DILocation(line: 304, column: 32, scope: !928)
!930 = !DILocation(line: 304, column: 16, scope: !928)
!931 = !DILocation(line: 305, column: 8, scope: !932)
!932 = distinct !DILexicalBlock(scope: !928, file: !3, line: 305, column: 7)
!933 = !DILocation(line: 305, column: 7, scope: !928)
!934 = !DILocation(line: 307, column: 26, scope: !935)
!935 = distinct !DILexicalBlock(scope: !932, file: !3, line: 305, column: 12)
!936 = !DILocation(line: 307, column: 38, scope: !935)
!937 = !DILocation(line: 307, column: 8, scope: !935)
!938 = !DILocation(line: 306, column: 11, scope: !935)
!939 = !DILocation(line: 308, column: 8, scope: !940)
!940 = distinct !DILexicalBlock(scope: !935, file: !3, line: 308, column: 8)
!941 = !DILocation(line: 308, column: 8, scope: !935)
!942 = !DILocation(line: 316, column: 10, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 316, column: 9)
!944 = distinct !DILexicalBlock(scope: !940, file: !3, line: 308, column: 30)
!945 = !DILocation(line: 317, column: 10, scope: !943)
!946 = !DILocation(line: 317, column: 22, scope: !943)
!947 = !DILocation(line: 318, column: 9, scope: !943)
!948 = !DILocation(line: 318, column: 14, scope: !943)
!949 = !DILocation(line: 318, column: 21, scope: !943)
!950 = !DILocation(line: 319, column: 6, scope: !943)
!951 = !DILocation(line: 319, column: 10, scope: !943)
!952 = !DILocation(line: 319, column: 17, scope: !943)
!953 = !DILocation(line: 316, column: 9, scope: !944)
!954 = !DILocation(line: 320, column: 13, scope: !955)
!955 = distinct !DILexicalBlock(scope: !943, file: !3, line: 319, column: 36)
!956 = !DILocation(line: 321, column: 5, scope: !955)
!957 = !DILocation(line: 322, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !944, file: !3, line: 322, column: 9)
!959 = !DILocation(line: 322, column: 16, scope: !958)
!960 = !DILocation(line: 322, column: 9, scope: !944)
!961 = !DILocation(line: 323, column: 6, scope: !962)
!962 = distinct !DILexicalBlock(scope: !958, file: !3, line: 322, column: 43)
!963 = distinct !{!963, !919, !964}
!964 = !DILocation(line: 558, column: 2, scope: !38)
!965 = !DILocation(line: 326, column: 9, scope: !966)
!966 = distinct !DILexicalBlock(scope: !944, file: !3, line: 326, column: 9)
!967 = !DILocation(line: 326, column: 16, scope: !966)
!968 = !DILocation(line: 326, column: 9, scope: !944)
!969 = !DILocation(line: 327, column: 13, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !3, line: 326, column: 42)
!971 = !DILocation(line: 328, column: 5, scope: !970)
!972 = !DILocation(line: 330, column: 9, scope: !973)
!973 = distinct !DILexicalBlock(scope: !944, file: !3, line: 330, column: 9)
!974 = !DILocation(line: 330, column: 16, scope: !973)
!975 = !DILocation(line: 330, column: 9, scope: !944)
!976 = !DILocation(line: 331, column: 6, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !3, line: 330, column: 38)
!978 = !DILocation(line: 335, column: 29, scope: !944)
!979 = !DILocation(line: 336, column: 8, scope: !944)
!980 = !DILocation(line: 335, column: 9, scope: !944)
!981 = !DILocation(line: 334, column: 12, scope: !944)
!982 = !DILocation(line: 337, column: 9, scope: !983)
!983 = distinct !DILexicalBlock(scope: !944, file: !3, line: 337, column: 9)
!984 = !DILocation(line: 337, column: 9, scope: !944)
!985 = !DILocation(line: 338, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !983, file: !3, line: 337, column: 31)
!987 = !DILocation(line: 342, column: 11, scope: !988)
!988 = distinct !DILexicalBlock(scope: !944, file: !3, line: 340, column: 9)
!989 = !DILocation(line: 342, column: 23, scope: !988)
!990 = !DILocation(line: 341, column: 10, scope: !988)
!991 = !DILocation(line: 342, column: 32, scope: !988)
!992 = !DILocation(line: 340, column: 9, scope: !988)
!993 = !DILocation(line: 340, column: 9, scope: !944)
!994 = !DILocation(line: 348, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !988, file: !3, line: 342, column: 46)
!996 = !DILocation(line: 354, column: 20, scope: !995)
!997 = !DILocation(line: 355, column: 11, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 355, column: 10)
!999 = !DILocation(line: 355, column: 23, scope: !998)
!1000 = !DILocation(line: 355, column: 30, scope: !998)
!1001 = !DILocation(line: 355, column: 40, scope: !998)
!1002 = !DILocation(line: 355, column: 10, scope: !995)
!1003 = !DILocation(line: 357, column: 21, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !998, file: !3, line: 356, column: 31)
!1005 = !DILocation(line: 358, column: 6, scope: !1004)
!1006 = !DILocation(line: 360, column: 10, scope: !995)
!1007 = !DILocation(line: 360, column: 22, scope: !995)
!1008 = !DILocation(line: 360, column: 28, scope: !995)
!1009 = !DILocation(line: 360, column: 26, scope: !995)
!1010 = !DILocation(line: 359, column: 6, scope: !995)
!1011 = !DILocation(line: 359, column: 18, scope: !995)
!1012 = !DILocation(line: 359, column: 31, scope: !995)
!1013 = !DILocation(line: 359, column: 35, scope: !995)
!1014 = !DILocation(line: 364, column: 12, scope: !995)
!1015 = !DILocation(line: 364, column: 24, scope: !995)
!1016 = !DILocation(line: 363, column: 10, scope: !995)
!1017 = !DILocation(line: 362, column: 6, scope: !995)
!1018 = !DILocation(line: 362, column: 18, scope: !995)
!1019 = !DILocation(line: 362, column: 31, scope: !995)
!1020 = !DILocation(line: 362, column: 35, scope: !995)
!1021 = !DILocation(line: 366, column: 10, scope: !995)
!1022 = !DILocation(line: 366, column: 22, scope: !995)
!1023 = !DILocation(line: 366, column: 35, scope: !995)
!1024 = !DILocation(line: 365, column: 6, scope: !995)
!1025 = !DILocation(line: 365, column: 18, scope: !995)
!1026 = !DILocation(line: 365, column: 22, scope: !995)
!1027 = !DILocation(line: 367, column: 5, scope: !995)
!1028 = !DILocation(line: 369, column: 5, scope: !944)
!1029 = !DILocation(line: 372, column: 31, scope: !935)
!1030 = !DILocation(line: 372, column: 35, scope: !935)
!1031 = !DILocation(line: 372, column: 4, scope: !935)
!1032 = !DILocation(line: 373, column: 3, scope: !935)
!1033 = !DILocation(line: 379, column: 3, scope: !928)
!1034 = !DILocation(line: 379, column: 15, scope: !928)
!1035 = !DILocation(line: 379, column: 25, scope: !928)
!1036 = !DILocation(line: 381, column: 11, scope: !928)
!1037 = !DILocation(line: 381, column: 15, scope: !928)
!1038 = !DILocation(line: 381, column: 22, scope: !928)
!1039 = !DILocation(line: 381, column: 3, scope: !928)
!1040 = !DILocation(line: 387, column: 4, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !928, file: !3, line: 381, column: 34)
!1042 = !DILocation(line: 392, column: 4, scope: !1041)
!1043 = !DILocation(line: 397, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !928, file: !3, line: 397, column: 7)
!1045 = !DILocation(line: 397, column: 19, scope: !1044)
!1046 = !DILocation(line: 397, column: 7, scope: !928)
!1047 = !DILocation(line: 402, column: 30, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 397, column: 30)
!1049 = !DILocation(line: 402, column: 42, scope: !1048)
!1050 = !DILocation(line: 402, column: 56, scope: !1048)
!1051 = !DILocation(line: 402, column: 8, scope: !1048)
!1052 = !DILocation(line: 401, column: 11, scope: !1048)
!1053 = !DILocation(line: 403, column: 8, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 403, column: 8)
!1055 = !DILocation(line: 403, column: 8, scope: !1048)
!1056 = !DILocation(line: 405, column: 29, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 403, column: 30)
!1058 = !DILocation(line: 406, column: 8, scope: !1057)
!1059 = !DILocation(line: 405, column: 9, scope: !1057)
!1060 = !DILocation(line: 404, column: 12, scope: !1057)
!1061 = !DILocation(line: 407, column: 9, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 407, column: 9)
!1063 = !DILocation(line: 407, column: 9, scope: !1057)
!1064 = !DILocation(line: 408, column: 6, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 407, column: 31)
!1066 = !DILocation(line: 410, column: 10, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 410, column: 9)
!1068 = !DILocation(line: 410, column: 22, scope: !1067)
!1069 = !DILocation(line: 410, column: 9, scope: !1067)
!1070 = !DILocation(line: 410, column: 37, scope: !1067)
!1071 = !DILocation(line: 411, column: 11, scope: !1067)
!1072 = !DILocation(line: 411, column: 23, scope: !1067)
!1073 = !DILocation(line: 411, column: 38, scope: !1067)
!1074 = !DILocation(line: 412, column: 11, scope: !1067)
!1075 = !DILocation(line: 412, column: 18, scope: !1067)
!1076 = !DILocation(line: 413, column: 10, scope: !1067)
!1077 = !DILocation(line: 413, column: 14, scope: !1067)
!1078 = !DILocation(line: 413, column: 26, scope: !1067)
!1079 = !DILocation(line: 413, column: 41, scope: !1067)
!1080 = !DILocation(line: 414, column: 7, scope: !1067)
!1081 = !DILocation(line: 414, column: 14, scope: !1067)
!1082 = !DILocation(line: 410, column: 9, scope: !1057)
!1083 = !DILocation(line: 420, column: 10, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 414, column: 33)
!1085 = !DILocation(line: 420, column: 22, scope: !1084)
!1086 = !DILocation(line: 420, column: 37, scope: !1084)
!1087 = !DILocation(line: 421, column: 10, scope: !1084)
!1088 = !DILocation(line: 421, column: 30, scope: !1084)
!1089 = !DILocation(line: 419, column: 6, scope: !1084)
!1090 = !DILocation(line: 419, column: 20, scope: !1084)
!1091 = !DILocation(line: 419, column: 24, scope: !1084)
!1092 = !DILocation(line: 424, column: 11, scope: !1084)
!1093 = !DILocation(line: 423, column: 10, scope: !1084)
!1094 = !DILocation(line: 422, column: 6, scope: !1084)
!1095 = !DILocation(line: 422, column: 20, scope: !1084)
!1096 = !DILocation(line: 422, column: 24, scope: !1084)
!1097 = !DILocation(line: 425, column: 24, scope: !1084)
!1098 = !DILocation(line: 425, column: 38, scope: !1084)
!1099 = !DILocation(line: 425, column: 6, scope: !1084)
!1100 = !DILocation(line: 425, column: 18, scope: !1084)
!1101 = !DILocation(line: 425, column: 22, scope: !1084)
!1102 = !DILocation(line: 427, column: 6, scope: !1084)
!1103 = !DILocation(line: 429, column: 11, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 429, column: 10)
!1105 = !DILocation(line: 429, column: 23, scope: !1104)
!1106 = !DILocation(line: 429, column: 10, scope: !1104)
!1107 = !DILocation(line: 429, column: 27, scope: !1104)
!1108 = !DILocation(line: 429, column: 10, scope: !1084)
!1109 = !DILocation(line: 430, column: 7, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 429, column: 43)
!1111 = !DILocation(line: 433, column: 11, scope: !1110)
!1112 = !DILocation(line: 433, column: 23, scope: !1110)
!1113 = !DILocation(line: 433, column: 27, scope: !1110)
!1114 = !DILocation(line: 432, column: 7, scope: !1110)
!1115 = !DILocation(line: 432, column: 19, scope: !1110)
!1116 = !DILocation(line: 432, column: 32, scope: !1110)
!1117 = !DILocation(line: 432, column: 36, scope: !1110)
!1118 = !DILocation(line: 436, column: 12, scope: !1110)
!1119 = !DILocation(line: 435, column: 11, scope: !1110)
!1120 = !DILocation(line: 434, column: 7, scope: !1110)
!1121 = !DILocation(line: 434, column: 19, scope: !1110)
!1122 = !DILocation(line: 434, column: 32, scope: !1110)
!1123 = !DILocation(line: 434, column: 36, scope: !1110)
!1124 = !DILocation(line: 438, column: 11, scope: !1110)
!1125 = !DILocation(line: 438, column: 25, scope: !1110)
!1126 = !DILocation(line: 437, column: 7, scope: !1110)
!1127 = !DILocation(line: 437, column: 19, scope: !1110)
!1128 = !DILocation(line: 437, column: 23, scope: !1110)
!1129 = !DILocation(line: 439, column: 6, scope: !1110)
!1130 = !DILocation(line: 440, column: 6, scope: !1084)
!1131 = !DILocation(line: 442, column: 5, scope: !1084)
!1132 = !DILocation(line: 443, column: 8, scope: !1057)
!1133 = !DILocation(line: 444, column: 5, scope: !1057)
!1134 = !DILocation(line: 446, column: 3, scope: !1048)
!1135 = !DILocation(line: 454, column: 7, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !928, file: !3, line: 454, column: 7)
!1137 = !DILocation(line: 454, column: 19, scope: !1136)
!1138 = !DILocation(line: 454, column: 7, scope: !928)
!1139 = !DILocation(line: 459, column: 32, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 454, column: 30)
!1141 = !DILocation(line: 459, column: 46, scope: !1140)
!1142 = !DILocation(line: 460, column: 11, scope: !1140)
!1143 = !DILocation(line: 460, column: 23, scope: !1140)
!1144 = !DILocation(line: 461, column: 11, scope: !1140)
!1145 = !DILocation(line: 461, column: 23, scope: !1140)
!1146 = !DILocation(line: 459, column: 13, scope: !1140)
!1147 = !DILocation(line: 459, column: 11, scope: !1140)
!1148 = !DILocation(line: 462, column: 8, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 462, column: 8)
!1150 = !DILocation(line: 462, column: 8, scope: !1140)
!1151 = !DILocation(line: 464, column: 29, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 462, column: 30)
!1153 = !DILocation(line: 465, column: 8, scope: !1152)
!1154 = !DILocation(line: 464, column: 9, scope: !1152)
!1155 = !DILocation(line: 463, column: 12, scope: !1152)
!1156 = !DILocation(line: 466, column: 9, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 466, column: 9)
!1158 = !DILocation(line: 466, column: 9, scope: !1152)
!1159 = !DILocation(line: 467, column: 6, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 466, column: 31)
!1161 = !DILocation(line: 470, column: 5, scope: !1152)
!1162 = !DILocation(line: 473, column: 7, scope: !1140)
!1163 = !DILocation(line: 474, column: 4, scope: !1140)
!1164 = !DILocation(line: 482, column: 31, scope: !928)
!1165 = !DILocation(line: 482, column: 35, scope: !928)
!1166 = !DILocation(line: 482, column: 42, scope: !928)
!1167 = !DILocation(line: 482, column: 7, scope: !928)
!1168 = !DILocation(line: 481, column: 3, scope: !928)
!1169 = !DILocation(line: 481, column: 15, scope: !928)
!1170 = !DILocation(line: 481, column: 23, scope: !928)
!1171 = !DILocation(line: 483, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !928, file: !3, line: 483, column: 7)
!1173 = !DILocation(line: 483, column: 19, scope: !1172)
!1174 = !DILocation(line: 483, column: 28, scope: !1172)
!1175 = !DILocation(line: 483, column: 34, scope: !1172)
!1176 = !DILocation(line: 483, column: 7, scope: !928)
!1177 = !DILocation(line: 484, column: 8, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 484, column: 8)
!1179 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 483, column: 47)
!1180 = !DILocation(line: 484, column: 12, scope: !1178)
!1181 = !DILocation(line: 484, column: 19, scope: !1178)
!1182 = !DILocation(line: 484, column: 30, scope: !1178)
!1183 = !DILocation(line: 484, column: 47, scope: !1178)
!1184 = !DILocation(line: 485, column: 8, scope: !1178)
!1185 = !DILocation(line: 485, column: 12, scope: !1178)
!1186 = !DILocation(line: 485, column: 19, scope: !1178)
!1187 = !DILocation(line: 485, column: 30, scope: !1178)
!1188 = !DILocation(line: 484, column: 8, scope: !1179)
!1189 = !DILocation(line: 495, column: 16, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 485, column: 53)
!1191 = !DILocation(line: 495, column: 30, scope: !1190)
!1192 = !DILocation(line: 495, column: 36, scope: !1190)
!1193 = !DILocation(line: 495, column: 40, scope: !1190)
!1194 = !DILocation(line: 495, column: 46, scope: !1190)
!1195 = !DILocation(line: 495, column: 34, scope: !1190)
!1196 = !DILocation(line: 495, column: 9, scope: !1190)
!1197 = !DILocation(line: 494, column: 5, scope: !1190)
!1198 = !DILocation(line: 494, column: 9, scope: !1190)
!1199 = !DILocation(line: 494, column: 15, scope: !1190)
!1200 = !DILocation(line: 494, column: 22, scope: !1190)
!1201 = !DILocation(line: 496, column: 4, scope: !1190)
!1202 = !DILocation(line: 497, column: 3, scope: !1179)
!1203 = !DILocation(line: 499, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !928, file: !3, line: 499, column: 7)
!1205 = !DILocation(line: 499, column: 19, scope: !1204)
!1206 = !DILocation(line: 499, column: 28, scope: !1204)
!1207 = !DILocation(line: 499, column: 34, scope: !1204)
!1208 = !DILocation(line: 499, column: 7, scope: !928)
!1209 = !DILocation(line: 507, column: 15, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 499, column: 48)
!1211 = !DILocation(line: 507, column: 29, scope: !1210)
!1212 = !DILocation(line: 507, column: 35, scope: !1210)
!1213 = !DILocation(line: 507, column: 39, scope: !1210)
!1214 = !DILocation(line: 507, column: 45, scope: !1210)
!1215 = !DILocation(line: 507, column: 33, scope: !1210)
!1216 = !DILocation(line: 507, column: 8, scope: !1210)
!1217 = !DILocation(line: 506, column: 4, scope: !1210)
!1218 = !DILocation(line: 506, column: 8, scope: !1210)
!1219 = !DILocation(line: 506, column: 14, scope: !1210)
!1220 = !DILocation(line: 506, column: 21, scope: !1210)
!1221 = !DILocation(line: 508, column: 3, scope: !1210)
!1222 = !DILocation(line: 510, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !928, file: !3, line: 510, column: 7)
!1224 = !DILocation(line: 510, column: 11, scope: !1223)
!1225 = !DILocation(line: 510, column: 18, scope: !1223)
!1226 = !DILocation(line: 510, column: 29, scope: !1223)
!1227 = !DILocation(line: 510, column: 7, scope: !928)
!1228 = !DILocation(line: 517, column: 15, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 510, column: 51)
!1230 = !DILocation(line: 517, column: 29, scope: !1229)
!1231 = !DILocation(line: 517, column: 35, scope: !1229)
!1232 = !DILocation(line: 517, column: 39, scope: !1229)
!1233 = !DILocation(line: 517, column: 45, scope: !1229)
!1234 = !DILocation(line: 517, column: 33, scope: !1229)
!1235 = !DILocation(line: 517, column: 8, scope: !1229)
!1236 = !DILocation(line: 516, column: 4, scope: !1229)
!1237 = !DILocation(line: 516, column: 8, scope: !1229)
!1238 = !DILocation(line: 516, column: 14, scope: !1229)
!1239 = !DILocation(line: 516, column: 21, scope: !1229)
!1240 = !DILocation(line: 518, column: 3, scope: !1229)
!1241 = !DILocation(line: 522, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !928, file: !3, line: 522, column: 7)
!1243 = !DILocation(line: 522, column: 19, scope: !1242)
!1244 = !DILocation(line: 522, column: 38, scope: !1242)
!1245 = !DILocation(line: 522, column: 7, scope: !928)
!1246 = !DILocation(line: 523, column: 21, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 522, column: 47)
!1248 = !DILocation(line: 523, column: 4, scope: !1247)
!1249 = !DILocation(line: 523, column: 16, scope: !1247)
!1250 = !DILocation(line: 523, column: 19, scope: !1247)
!1251 = !DILocation(line: 524, column: 25, scope: !1247)
!1252 = !DILocation(line: 524, column: 29, scope: !1247)
!1253 = !DILocation(line: 524, column: 36, scope: !1247)
!1254 = !DILocation(line: 524, column: 4, scope: !1247)
!1255 = !DILocation(line: 524, column: 16, scope: !1247)
!1256 = !DILocation(line: 524, column: 23, scope: !1247)
!1257 = !DILocation(line: 526, column: 13, scope: !1247)
!1258 = !DILocation(line: 526, column: 25, scope: !1247)
!1259 = !DILocation(line: 526, column: 44, scope: !1247)
!1260 = !DILocation(line: 526, column: 11, scope: !1247)
!1261 = !DILocation(line: 528, column: 33, scope: !1247)
!1262 = !DILocation(line: 528, column: 45, scope: !1247)
!1263 = !DILocation(line: 528, column: 49, scope: !1247)
!1264 = !DILocation(line: 528, column: 8, scope: !1247)
!1265 = !DILocation(line: 527, column: 11, scope: !1247)
!1266 = !DILocation(line: 529, column: 8, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 529, column: 8)
!1268 = !DILocation(line: 529, column: 15, scope: !1267)
!1269 = !DILocation(line: 529, column: 8, scope: !1247)
!1270 = !DILocation(line: 530, column: 12, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 529, column: 35)
!1272 = !DILocation(line: 531, column: 4, scope: !1271)
!1273 = !DILocation(line: 532, column: 13, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 532, column: 12)
!1275 = !DILocation(line: 533, column: 6, scope: !1274)
!1276 = !DILocation(line: 533, column: 18, scope: !1274)
!1277 = !DILocation(line: 534, column: 5, scope: !1274)
!1278 = !DILocation(line: 534, column: 9, scope: !1274)
!1279 = !DILocation(line: 535, column: 9, scope: !1274)
!1280 = !DILocation(line: 535, column: 12, scope: !1274)
!1281 = !DILocation(line: 535, column: 19, scope: !1274)
!1282 = !DILocation(line: 536, column: 9, scope: !1274)
!1283 = !DILocation(line: 536, column: 12, scope: !1274)
!1284 = !DILocation(line: 536, column: 19, scope: !1274)
!1285 = !DILocation(line: 532, column: 12, scope: !1267)
!1286 = !DILocation(line: 549, column: 12, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 536, column: 37)
!1288 = !DILocation(line: 550, column: 4, scope: !1287)
!1289 = !DILocation(line: 551, column: 3, scope: !1247)
!1290 = !DILocation(line: 553, column: 32, scope: !928)
!1291 = !DILocation(line: 553, column: 49, scope: !928)
!1292 = !DILocation(line: 553, column: 12, scope: !928)
!1293 = !DILocation(line: 553, column: 10, scope: !928)
!1294 = !DILocation(line: 554, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !928, file: !3, line: 554, column: 7)
!1296 = !DILocation(line: 554, column: 7, scope: !928)
!1297 = !DILocation(line: 555, column: 4, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 554, column: 29)
!1299 = !DILocation(line: 560, column: 37, scope: !38)
!1300 = !DILocation(line: 560, column: 49, scope: !38)
!1301 = !DILocation(line: 560, column: 53, scope: !38)
!1302 = !DILocation(line: 560, column: 11, scope: !38)
!1303 = !DILocation(line: 560, column: 9, scope: !38)
!1304 = !DILocation(line: 561, column: 2, scope: !38)
!1305 = !DILocation(line: 562, column: 1, scope: !38)
!1306 = distinct !DISubprogram(name: "acpi_ps_get_arguments", scope: !3, file: !3, line: 50, type: !1307, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !796)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!13, !41, !66, !80}
!1309 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1306, file: !3, line: 50, type: !41)
!1310 = !DILocation(line: 50, column: 47, scope: !1306)
!1311 = !DILocalVariable(name: "aml_op_start", arg: 2, scope: !1306, file: !3, line: 51, type: !66)
!1312 = !DILocation(line: 51, column: 14, scope: !1306)
!1313 = !DILocalVariable(name: "op", arg: 3, scope: !1306, file: !3, line: 51, type: !80)
!1314 = !DILocation(line: 51, column: 53, scope: !1306)
!1315 = !DILocalVariable(name: "status", scope: !1306, file: !3, line: 53, type: !13)
!1316 = !DILocation(line: 53, column: 14, scope: !1306)
!1317 = !DILocalVariable(name: "arg", scope: !1306, file: !3, line: 54, type: !80)
!1318 = !DILocation(line: 54, column: 27, scope: !1306)
!1319 = !DILocation(line: 62, column: 10, scope: !1306)
!1320 = !DILocation(line: 62, column: 14, scope: !1306)
!1321 = !DILocation(line: 62, column: 21, scope: !1306)
!1322 = !DILocation(line: 62, column: 2, scope: !1306)
!1323 = !DILocation(line: 71, column: 33, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 62, column: 33)
!1325 = !DILocation(line: 71, column: 45, scope: !1324)
!1326 = !DILocation(line: 72, column: 10, scope: !1324)
!1327 = !DILocation(line: 74, column: 10, scope: !1324)
!1328 = !DILocation(line: 71, column: 3, scope: !1324)
!1329 = !DILocation(line: 75, column: 3, scope: !1324)
!1330 = !DILocation(line: 79, column: 38, scope: !1324)
!1331 = !DILocation(line: 80, column: 12, scope: !1324)
!1332 = !DILocation(line: 80, column: 24, scope: !1324)
!1333 = !DILocation(line: 81, column: 10, scope: !1324)
!1334 = !DILocation(line: 79, column: 12, scope: !1324)
!1335 = !DILocation(line: 79, column: 10, scope: !1324)
!1336 = !DILocation(line: 83, column: 7, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 83, column: 7)
!1338 = !DILocation(line: 83, column: 7, scope: !1324)
!1339 = !DILocation(line: 84, column: 4, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 83, column: 29)
!1341 = !DILocation(line: 87, column: 3, scope: !1324)
!1342 = !DILocation(line: 87, column: 15, scope: !1324)
!1343 = !DILocation(line: 87, column: 25, scope: !1324)
!1344 = !DILocation(line: 88, column: 3, scope: !1324)
!1345 = !DILocation(line: 94, column: 3, scope: !1324)
!1346 = !DILocation(line: 94, column: 10, scope: !1324)
!1347 = !DILocation(line: 94, column: 54, scope: !1324)
!1348 = !DILocation(line: 95, column: 11, scope: !1324)
!1349 = !DILocation(line: 95, column: 23, scope: !1324)
!1350 = !DILocation(line: 95, column: 10, scope: !1324)
!1351 = !DILocation(line: 0, scope: !1324)
!1352 = !DILocation(line: 96, column: 22, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 95, column: 34)
!1354 = !DILocation(line: 96, column: 34, scope: !1353)
!1355 = !DILocation(line: 96, column: 47, scope: !1353)
!1356 = !DILocation(line: 96, column: 4, scope: !1353)
!1357 = !DILocation(line: 96, column: 16, scope: !1353)
!1358 = !DILocation(line: 96, column: 20, scope: !1353)
!1359 = !DILocation(line: 98, column: 12, scope: !1353)
!1360 = !DILocation(line: 98, column: 16, scope: !1353)
!1361 = !DILocation(line: 98, column: 23, scope: !1353)
!1362 = !DILocation(line: 98, column: 4, scope: !1353)
!1363 = !DILocation(line: 105, column: 5, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 98, column: 35)
!1365 = !DILocation(line: 110, column: 5, scope: !1364)
!1366 = !DILocation(line: 114, column: 29, scope: !1353)
!1367 = !DILocation(line: 115, column: 10, scope: !1353)
!1368 = !DILocation(line: 115, column: 22, scope: !1353)
!1369 = !DILocation(line: 116, column: 8, scope: !1353)
!1370 = !DILocation(line: 114, column: 8, scope: !1353)
!1371 = !DILocation(line: 113, column: 11, scope: !1353)
!1372 = !DILocation(line: 118, column: 8, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 118, column: 8)
!1374 = !DILocation(line: 118, column: 8, scope: !1353)
!1375 = !DILocation(line: 119, column: 5, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 118, column: 30)
!1377 = !DILocation(line: 122, column: 8, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 122, column: 8)
!1379 = !DILocation(line: 122, column: 8, scope: !1353)
!1380 = !DILocation(line: 123, column: 24, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 122, column: 13)
!1382 = !DILocation(line: 123, column: 28, scope: !1381)
!1383 = !DILocation(line: 123, column: 5, scope: !1381)
!1384 = !DILocation(line: 124, column: 4, scope: !1381)
!1385 = !DILocation(line: 126, column: 4, scope: !1353)
!1386 = distinct !{!1386, !1345, !1387}
!1387 = !DILocation(line: 127, column: 3, scope: !1324)
!1388 = !DILocation(line: 136, column: 11, scope: !1324)
!1389 = !DILocation(line: 136, column: 15, scope: !1324)
!1390 = !DILocation(line: 136, column: 22, scope: !1324)
!1391 = !DILocation(line: 136, column: 3, scope: !1324)
!1392 = !DILocation(line: 144, column: 21, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 136, column: 34)
!1394 = !DILocation(line: 144, column: 33, scope: !1393)
!1395 = !DILocation(line: 144, column: 46, scope: !1393)
!1396 = !DILocation(line: 144, column: 4, scope: !1393)
!1397 = !DILocation(line: 144, column: 8, scope: !1393)
!1398 = !DILocation(line: 144, column: 14, scope: !1393)
!1399 = !DILocation(line: 144, column: 19, scope: !1393)
!1400 = !DILocation(line: 146, column: 9, scope: !1393)
!1401 = !DILocation(line: 146, column: 21, scope: !1393)
!1402 = !DILocation(line: 146, column: 34, scope: !1393)
!1403 = !DILocation(line: 147, column: 9, scope: !1393)
!1404 = !DILocation(line: 147, column: 21, scope: !1393)
!1405 = !DILocation(line: 147, column: 34, scope: !1393)
!1406 = !DILocation(line: 146, column: 42, scope: !1393)
!1407 = !DILocation(line: 145, column: 23, scope: !1393)
!1408 = !DILocation(line: 145, column: 4, scope: !1393)
!1409 = !DILocation(line: 145, column: 8, scope: !1393)
!1410 = !DILocation(line: 145, column: 14, scope: !1393)
!1411 = !DILocation(line: 145, column: 21, scope: !1393)
!1412 = !DILocation(line: 152, column: 8, scope: !1393)
!1413 = !DILocation(line: 152, column: 20, scope: !1393)
!1414 = !DILocation(line: 152, column: 33, scope: !1393)
!1415 = !DILocation(line: 151, column: 4, scope: !1393)
!1416 = !DILocation(line: 151, column: 16, scope: !1393)
!1417 = !DILocation(line: 151, column: 29, scope: !1393)
!1418 = !DILocation(line: 151, column: 33, scope: !1393)
!1419 = !DILocation(line: 153, column: 4, scope: !1393)
!1420 = !DILocation(line: 153, column: 16, scope: !1393)
!1421 = !DILocation(line: 153, column: 26, scope: !1393)
!1422 = !DILocation(line: 154, column: 4, scope: !1393)
!1423 = !DILocation(line: 160, column: 9, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 160, column: 8)
!1425 = !DILocation(line: 160, column: 13, scope: !1424)
!1426 = !DILocation(line: 160, column: 20, scope: !1424)
!1427 = !DILocation(line: 160, column: 8, scope: !1424)
!1428 = !DILocation(line: 160, column: 28, scope: !1424)
!1429 = !DILocation(line: 161, column: 9, scope: !1424)
!1430 = !DILocation(line: 161, column: 13, scope: !1424)
!1431 = !DILocation(line: 161, column: 20, scope: !1424)
!1432 = !DILocation(line: 161, column: 28, scope: !1424)
!1433 = !DILocation(line: 161, column: 35, scope: !1424)
!1434 = !DILocation(line: 161, column: 46, scope: !1424)
!1435 = !DILocation(line: 163, column: 8, scope: !1424)
!1436 = !DILocation(line: 163, column: 12, scope: !1424)
!1437 = !DILocation(line: 163, column: 24, scope: !1424)
!1438 = !DILocation(line: 163, column: 36, scope: !1424)
!1439 = !DILocation(line: 160, column: 8, scope: !1393)
!1440 = !DILocation(line: 174, column: 22, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 164, column: 29)
!1442 = !DILocation(line: 174, column: 5, scope: !1441)
!1443 = !DILocation(line: 174, column: 9, scope: !1441)
!1444 = !DILocation(line: 174, column: 15, scope: !1441)
!1445 = !DILocation(line: 174, column: 20, scope: !1441)
!1446 = !DILocation(line: 176, column: 10, scope: !1441)
!1447 = !DILocation(line: 176, column: 22, scope: !1441)
!1448 = !DILocation(line: 176, column: 35, scope: !1441)
!1449 = !DILocation(line: 177, column: 10, scope: !1441)
!1450 = !DILocation(line: 176, column: 43, scope: !1441)
!1451 = !DILocation(line: 175, column: 24, scope: !1441)
!1452 = !DILocation(line: 175, column: 5, scope: !1441)
!1453 = !DILocation(line: 175, column: 9, scope: !1441)
!1454 = !DILocation(line: 175, column: 15, scope: !1441)
!1455 = !DILocation(line: 175, column: 22, scope: !1441)
!1456 = !DILocation(line: 182, column: 9, scope: !1441)
!1457 = !DILocation(line: 182, column: 21, scope: !1441)
!1458 = !DILocation(line: 182, column: 34, scope: !1441)
!1459 = !DILocation(line: 181, column: 5, scope: !1441)
!1460 = !DILocation(line: 181, column: 17, scope: !1441)
!1461 = !DILocation(line: 181, column: 30, scope: !1441)
!1462 = !DILocation(line: 181, column: 34, scope: !1441)
!1463 = !DILocation(line: 183, column: 5, scope: !1441)
!1464 = !DILocation(line: 183, column: 17, scope: !1441)
!1465 = !DILocation(line: 183, column: 27, scope: !1441)
!1466 = !DILocation(line: 184, column: 4, scope: !1441)
!1467 = !DILocation(line: 185, column: 4, scope: !1393)
!1468 = !DILocation(line: 189, column: 8, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 189, column: 8)
!1470 = !DILocation(line: 189, column: 20, scope: !1469)
!1471 = !DILocation(line: 189, column: 8, scope: !1393)
!1472 = !DILocation(line: 191, column: 9, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 189, column: 35)
!1474 = !DILocation(line: 191, column: 21, scope: !1473)
!1475 = !DILocation(line: 191, column: 34, scope: !1473)
!1476 = !DILocation(line: 190, column: 5, scope: !1473)
!1477 = !DILocation(line: 190, column: 17, scope: !1473)
!1478 = !DILocation(line: 190, column: 32, scope: !1473)
!1479 = !DILocation(line: 190, column: 40, scope: !1473)
!1480 = !DILocation(line: 190, column: 52, scope: !1473)
!1481 = !DILocation(line: 192, column: 4, scope: !1473)
!1482 = !DILocation(line: 193, column: 4, scope: !1393)
!1483 = !DILocation(line: 199, column: 4, scope: !1393)
!1484 = !DILocation(line: 202, column: 3, scope: !1324)
!1485 = !DILocation(line: 205, column: 2, scope: !1306)
!1486 = !DILocation(line: 206, column: 1, scope: !1306)
!1487 = distinct !DISubprogram(name: "acpi_os_free", scope: !1488, file: !1488, line: 60, type: !1489, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !796)
!1488 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1489 = !DISubroutineType(types: !1490)
!1490 = !{null, !19}
!1491 = !DILocalVariable(name: "memory", arg: 1, scope: !1487, file: !1488, line: 60, type: !19)
!1492 = !DILocation(line: 60, column: 39, scope: !1487)
!1493 = !DILocation(line: 62, column: 8, scope: !1487)
!1494 = !DILocation(line: 62, column: 2, scope: !1487)
!1495 = !DILocation(line: 63, column: 1, scope: !1487)
