; ModuleID = '../bcout/drivers/acpi/acpica/dsutils.llvm.bc'
source_filename = "drivers/acpi/acpica/dsutils.c"
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
%struct.acpi_control_state = type { i8*, i8, i8, i16, i16, i16, %union.acpi_parse_object*, i8*, i8*, i64 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }

@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@_acpi_module_name = internal constant [8 x i8] c"dsutils\00", align 1, !dbg !0
@.str = private unnamed_addr constant [8 x i8] c"Null Op\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown parent opcode Op=%p\00", align 1
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Missing or null operand\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"While creating Arg %u\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ds_clear_implicit_return(%struct.acpi_walk_state* %walk_state) #0 !dbg !795 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !799, metadata !DIExpression()), !dbg !800
  %0 = load i8, i8* @acpi_gbl_enable_interpreter_slack, align 1, !dbg !801
  %tobool = icmp ne i8 %0, 0, !dbg !801
  br i1 %tobool, label %if.end, label %if.then, !dbg !803

if.then:                                          ; preds = %entry
  br label %if.end5, !dbg !804

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !806
  %implicit_return_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 34, !dbg !808
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %implicit_return_obj, align 8, !dbg !808
  %tobool1 = icmp ne %union.acpi_operand_object* %2, null, !dbg !806
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !809

if.then2:                                         ; preds = %if.end
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !810
  %implicit_return_obj3 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 34, !dbg !812
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %implicit_return_obj3, align 8, !dbg !812
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %4) #3, !dbg !813
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !814
  %implicit_return_obj4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 34, !dbg !815
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %implicit_return_obj4, align 8, !dbg !816
  br label %if.end5, !dbg !817

if.end5:                                          ; preds = %if.then, %if.then2, %if.end
  ret void, !dbg !818
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ds_do_implicit_return(%union.acpi_operand_object* %return_desc, %struct.acpi_walk_state* %walk_state, i8 zeroext %add_reference) #0 !dbg !819 {
entry:
  %retval = alloca i8, align 1
  %return_desc.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %add_reference.addr = alloca i8, align 1
  store %union.acpi_operand_object* %return_desc, %union.acpi_operand_object** %return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc.addr, metadata !822, metadata !DIExpression()), !dbg !823
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !824, metadata !DIExpression()), !dbg !825
  store i8 %add_reference, i8* %add_reference.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %add_reference.addr, metadata !826, metadata !DIExpression()), !dbg !827
  %0 = load i8, i8* @acpi_gbl_enable_interpreter_slack, align 1, !dbg !828
  %tobool = icmp ne i8 %0, 0, !dbg !828
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !830

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc.addr, align 8, !dbg !831
  %tobool1 = icmp ne %union.acpi_operand_object* %1, null, !dbg !831
  br i1 %tobool1, label %if.end, label %if.then, !dbg !832

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 0, i8* %retval, align 1, !dbg !833
  br label %return, !dbg !833

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !835
  %implicit_return_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 34, !dbg !837
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %implicit_return_obj, align 8, !dbg !837
  %tobool2 = icmp ne %union.acpi_operand_object* %3, null, !dbg !835
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !838

if.then3:                                         ; preds = %if.end
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !839
  %implicit_return_obj4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 34, !dbg !842
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %implicit_return_obj4, align 8, !dbg !842
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc.addr, align 8, !dbg !843
  %cmp = icmp eq %union.acpi_operand_object* %5, %6, !dbg !844
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !845

if.then5:                                         ; preds = %if.then3
  store i8 1, i8* %retval, align 1, !dbg !846
  br label %return, !dbg !846

if.end6:                                          ; preds = %if.then3
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !848
  call void @acpi_ds_clear_implicit_return(%struct.acpi_walk_state* %7) #3, !dbg !849
  br label %if.end7, !dbg !850

if.end7:                                          ; preds = %if.end6, %if.end
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc.addr, align 8, !dbg !851
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !852
  %implicit_return_obj8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 34, !dbg !853
  store %union.acpi_operand_object* %8, %union.acpi_operand_object** %implicit_return_obj8, align 8, !dbg !854
  %10 = load i8, i8* %add_reference.addr, align 1, !dbg !855
  %tobool9 = icmp ne i8 %10, 0, !dbg !855
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !857

if.then10:                                        ; preds = %if.end7
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc.addr, align 8, !dbg !858
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %11) #3, !dbg !860
  br label %if.end11, !dbg !861

if.end11:                                         ; preds = %if.then10, %if.end7
  store i8 1, i8* %retval, align 1, !dbg !862
  br label %return, !dbg !862

return:                                           ; preds = %if.end11, %if.then5, %if.then
  %12 = load i8, i8* %retval, align 1, !dbg !863
  ret i8 %12, !dbg !863
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ds_is_result_used(%union.acpi_parse_object* %op, %struct.acpi_walk_state* %walk_state) #0 !dbg !864 {
entry:
  %retval = alloca i8, align 1
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %parent_info = alloca %struct.acpi_opcode_info*, align 8
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !867, metadata !DIExpression()), !dbg !868
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !869, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.declare(metadata %struct.acpi_opcode_info** %parent_info, metadata !871, metadata !DIExpression()), !dbg !872
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !873
  %tobool = icmp ne %union.acpi_parse_object* %0, null, !dbg !873
  br i1 %tobool, label %if.end, label %if.then, !dbg !875

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #3, !dbg !876
  store i8 1, i8* %retval, align 1, !dbg !878
  br label %return, !dbg !878

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !879
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 43, !dbg !880
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj, align 8, !dbg !880
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !881
  %call = call zeroext i8 @acpi_ds_do_implicit_return(%union.acpi_operand_object* %2, %struct.acpi_walk_state* %3, i8 zeroext 1) #3, !dbg !882
  %4 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !883
  %common = bitcast %union.acpi_parse_object* %4 to %struct.acpi_parse_obj_common*, !dbg !885
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 0, !dbg !886
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !886
  %tobool1 = icmp ne %union.acpi_parse_object* %5, null, !dbg !883
  br i1 %tobool1, label %lor.lhs.false, label %if.then6, !dbg !887

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !888
  %common2 = bitcast %union.acpi_parse_object* %6 to %struct.acpi_parse_obj_common*, !dbg !889
  %parent3 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 0, !dbg !890
  %7 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent3, align 8, !dbg !890
  %common4 = bitcast %union.acpi_parse_object* %7 to %struct.acpi_parse_obj_common*, !dbg !891
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common4, i32 0, i32 3, !dbg !892
  %8 = load i16, i16* %aml_opcode, align 2, !dbg !892
  %conv = zext i16 %8 to i32, !dbg !888
  %cmp = icmp eq i32 %conv, 16, !dbg !893
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !894

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i8 0, i8* %retval, align 1, !dbg !895
  br label %return, !dbg !895

if.end7:                                          ; preds = %lor.lhs.false
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !897
  %common8 = bitcast %union.acpi_parse_object* %9 to %struct.acpi_parse_obj_common*, !dbg !898
  %parent9 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common8, i32 0, i32 0, !dbg !899
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent9, align 8, !dbg !899
  %common10 = bitcast %union.acpi_parse_object* %10 to %struct.acpi_parse_obj_common*, !dbg !900
  %aml_opcode11 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common10, i32 0, i32 3, !dbg !901
  %11 = load i16, i16* %aml_opcode11, align 2, !dbg !901
  %call12 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %11) #3, !dbg !902
  store %struct.acpi_opcode_info* %call12, %struct.acpi_opcode_info** %parent_info, align 8, !dbg !903
  %12 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %parent_info, align 8, !dbg !904
  %class = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %12, i32 0, i32 4, !dbg !906
  %13 = load i8, i8* %class, align 1, !dbg !906
  %conv13 = zext i8 %13 to i32, !dbg !904
  %cmp14 = icmp eq i32 %conv13, 10, !dbg !907
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !908

if.then16:                                        ; preds = %if.end7
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !909
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 184, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %union.acpi_parse_object* %14) #3, !dbg !909
  store i8 0, i8* %retval, align 1, !dbg !911
  br label %return, !dbg !911

if.end17:                                         ; preds = %if.end7
  %15 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %parent_info, align 8, !dbg !912
  %class18 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %15, i32 0, i32 4, !dbg !913
  %16 = load i8, i8* %class18, align 1, !dbg !913
  %conv19 = zext i8 %16 to i32, !dbg !912
  switch i32 %conv19, label %sw.default95 [
    i32 4, label %sw.bb
    i32 1, label %sw.bb36
    i32 3, label %sw.bb37
  ], !dbg !914

sw.bb:                                            ; preds = %if.end17
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !915
  %common20 = bitcast %union.acpi_parse_object* %17 to %struct.acpi_parse_obj_common*, !dbg !917
  %parent21 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common20, i32 0, i32 0, !dbg !918
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent21, align 8, !dbg !918
  %common22 = bitcast %union.acpi_parse_object* %18 to %struct.acpi_parse_obj_common*, !dbg !919
  %aml_opcode23 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common22, i32 0, i32 3, !dbg !920
  %19 = load i16, i16* %aml_opcode23, align 2, !dbg !920
  %conv24 = zext i16 %19 to i32, !dbg !915
  switch i32 %conv24, label %sw.default [
    i32 164, label %sw.bb25
    i32 160, label %sw.bb26
    i32 162, label %sw.bb26
  ], !dbg !921

sw.bb25:                                          ; preds = %sw.bb
  br label %result_used, !dbg !922

sw.bb26:                                          ; preds = %sw.bb, %sw.bb
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !924
  %control_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 32, !dbg !926
  %21 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !926
  %common27 = bitcast %union.acpi_generic_state* %21 to %struct.acpi_common_state*, !dbg !927
  %state = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common27, i32 0, i32 4, !dbg !928
  %22 = load i16, i16* %state, align 4, !dbg !928
  %conv28 = zext i16 %22 to i32, !dbg !924
  %cmp29 = icmp eq i32 %conv28, 194, !dbg !929
  br i1 %cmp29, label %land.lhs.true, label %if.end35, !dbg !930

land.lhs.true:                                    ; preds = %sw.bb26
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !931
  %control_state31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 32, !dbg !932
  %24 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state31, align 8, !dbg !932
  %control = bitcast %union.acpi_generic_state* %24 to %struct.acpi_control_state*, !dbg !933
  %predicate_op = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control, i32 0, i32 6, !dbg !934
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %predicate_op, align 8, !dbg !934
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !935
  %cmp32 = icmp eq %union.acpi_parse_object* %25, %26, !dbg !936
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !937

if.then34:                                        ; preds = %land.lhs.true
  br label %result_used, !dbg !938

if.end35:                                         ; preds = %land.lhs.true, %sw.bb26
  br label %sw.epilog, !dbg !940

sw.default:                                       ; preds = %sw.bb
  br label %sw.epilog, !dbg !941

sw.epilog:                                        ; preds = %sw.default, %if.end35
  br label %result_not_used, !dbg !942

sw.bb36:                                          ; preds = %if.end17
  br label %result_used, !dbg !943

sw.bb37:                                          ; preds = %if.end17
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !944
  %common38 = bitcast %union.acpi_parse_object* %27 to %struct.acpi_parse_obj_common*, !dbg !946
  %parent39 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common38, i32 0, i32 0, !dbg !947
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent39, align 8, !dbg !947
  %common40 = bitcast %union.acpi_parse_object* %28 to %struct.acpi_parse_obj_common*, !dbg !948
  %aml_opcode41 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common40, i32 0, i32 3, !dbg !949
  %29 = load i16, i16* %aml_opcode41, align 2, !dbg !949
  %conv42 = zext i16 %29 to i32, !dbg !944
  %cmp43 = icmp eq i32 %conv42, 23424, !dbg !950
  br i1 %cmp43, label %if.then93, label %lor.lhs.false45, !dbg !951

lor.lhs.false45:                                  ; preds = %sw.bb37
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !952
  %common46 = bitcast %union.acpi_parse_object* %30 to %struct.acpi_parse_obj_common*, !dbg !953
  %parent47 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common46, i32 0, i32 0, !dbg !954
  %31 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent47, align 8, !dbg !954
  %common48 = bitcast %union.acpi_parse_object* %31 to %struct.acpi_parse_obj_common*, !dbg !955
  %aml_opcode49 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common48, i32 0, i32 3, !dbg !956
  %32 = load i16, i16* %aml_opcode49, align 2, !dbg !956
  %conv50 = zext i16 %32 to i32, !dbg !952
  %cmp51 = icmp eq i32 %conv50, 23432, !dbg !957
  br i1 %cmp51, label %if.then93, label %lor.lhs.false53, !dbg !958

lor.lhs.false53:                                  ; preds = %lor.lhs.false45
  %33 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !959
  %common54 = bitcast %union.acpi_parse_object* %33 to %struct.acpi_parse_obj_common*, !dbg !960
  %parent55 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common54, i32 0, i32 0, !dbg !961
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent55, align 8, !dbg !961
  %common56 = bitcast %union.acpi_parse_object* %34 to %struct.acpi_parse_obj_common*, !dbg !962
  %aml_opcode57 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common56, i32 0, i32 3, !dbg !963
  %35 = load i16, i16* %aml_opcode57, align 2, !dbg !963
  %conv58 = zext i16 %35 to i32, !dbg !959
  %cmp59 = icmp eq i32 %conv58, 18, !dbg !964
  br i1 %cmp59, label %if.then93, label %lor.lhs.false61, !dbg !965

lor.lhs.false61:                                  ; preds = %lor.lhs.false53
  %36 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !966
  %common62 = bitcast %union.acpi_parse_object* %36 to %struct.acpi_parse_obj_common*, !dbg !967
  %parent63 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common62, i32 0, i32 0, !dbg !968
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent63, align 8, !dbg !968
  %common64 = bitcast %union.acpi_parse_object* %37 to %struct.acpi_parse_obj_common*, !dbg !969
  %aml_opcode65 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common64, i32 0, i32 3, !dbg !970
  %38 = load i16, i16* %aml_opcode65, align 2, !dbg !970
  %conv66 = zext i16 %38 to i32, !dbg !966
  %cmp67 = icmp eq i32 %conv66, 17, !dbg !971
  br i1 %cmp67, label %if.then93, label %lor.lhs.false69, !dbg !972

lor.lhs.false69:                                  ; preds = %lor.lhs.false61
  %39 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !973
  %common70 = bitcast %union.acpi_parse_object* %39 to %struct.acpi_parse_obj_common*, !dbg !974
  %parent71 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common70, i32 0, i32 0, !dbg !975
  %40 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent71, align 8, !dbg !975
  %common72 = bitcast %union.acpi_parse_object* %40 to %struct.acpi_parse_obj_common*, !dbg !976
  %aml_opcode73 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common72, i32 0, i32 3, !dbg !977
  %41 = load i16, i16* %aml_opcode73, align 2, !dbg !977
  %conv74 = zext i16 %41 to i32, !dbg !973
  %cmp75 = icmp eq i32 %conv74, 19, !dbg !978
  br i1 %cmp75, label %if.then93, label %lor.lhs.false77, !dbg !979

lor.lhs.false77:                                  ; preds = %lor.lhs.false69
  %42 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !980
  %common78 = bitcast %union.acpi_parse_object* %42 to %struct.acpi_parse_obj_common*, !dbg !981
  %parent79 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common78, i32 0, i32 0, !dbg !982
  %43 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent79, align 8, !dbg !982
  %common80 = bitcast %union.acpi_parse_object* %43 to %struct.acpi_parse_obj_common*, !dbg !983
  %aml_opcode81 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common80, i32 0, i32 3, !dbg !984
  %44 = load i16, i16* %aml_opcode81, align 2, !dbg !984
  %conv82 = zext i16 %44 to i32, !dbg !980
  %cmp83 = icmp eq i32 %conv82, 55, !dbg !985
  br i1 %cmp83, label %if.then93, label %lor.lhs.false85, !dbg !986

lor.lhs.false85:                                  ; preds = %lor.lhs.false77
  %45 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !987
  %common86 = bitcast %union.acpi_parse_object* %45 to %struct.acpi_parse_obj_common*, !dbg !988
  %parent87 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common86, i32 0, i32 0, !dbg !989
  %46 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent87, align 8, !dbg !989
  %common88 = bitcast %union.acpi_parse_object* %46 to %struct.acpi_parse_obj_common*, !dbg !990
  %aml_opcode89 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common88, i32 0, i32 3, !dbg !991
  %47 = load i16, i16* %aml_opcode89, align 2, !dbg !991
  %conv90 = zext i16 %47 to i32, !dbg !987
  %cmp91 = icmp eq i32 %conv90, 23431, !dbg !992
  br i1 %cmp91, label %if.then93, label %if.end94, !dbg !993

if.then93:                                        ; preds = %lor.lhs.false85, %lor.lhs.false77, %lor.lhs.false69, %lor.lhs.false61, %lor.lhs.false53, %lor.lhs.false45, %sw.bb37
  br label %result_used, !dbg !994

if.end94:                                         ; preds = %lor.lhs.false85
  br label %result_not_used, !dbg !996

sw.default95:                                     ; preds = %if.end17
  br label %result_used, !dbg !997

result_used:                                      ; preds = %sw.default95, %if.then93, %sw.bb36, %if.then34, %sw.bb25
  call void @llvm.dbg.label(metadata !998), !dbg !999
  store i8 1, i8* %retval, align 1, !dbg !1000
  br label %return, !dbg !1000

result_not_used:                                  ; preds = %if.end94, %sw.epilog
  call void @llvm.dbg.label(metadata !1001), !dbg !1002
  store i8 0, i8* %retval, align 1, !dbg !1003
  br label %return, !dbg !1003

return:                                           ; preds = %result_not_used, %result_used, %if.then16, %if.then6, %if.then
  %48 = load i8, i8* %retval, align 1, !dbg !1004
  ret i8 %48, !dbg !1004
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ds_delete_result_if_not_used(%union.acpi_parse_object* %op, %union.acpi_operand_object* %result_obj, %struct.acpi_walk_state* %walk_state) #0 !dbg !1005 {
entry:
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %result_obj.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1008, metadata !DIExpression()), !dbg !1009
  store %union.acpi_operand_object* %result_obj, %union.acpi_operand_object** %result_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %result_obj.addr, metadata !1010, metadata !DIExpression()), !dbg !1011
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1012, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1014, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1016, metadata !DIExpression()), !dbg !1017
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1018
  %tobool = icmp ne %union.acpi_parse_object* %0, null, !dbg !1018
  br i1 %tobool, label %if.end, label %if.then, !dbg !1020

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 312, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #3, !dbg !1021
  br label %return, !dbg !1023

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj.addr, align 8, !dbg !1024
  %tobool1 = icmp ne %union.acpi_operand_object* %1, null, !dbg !1024
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1026

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1027

if.end3:                                          ; preds = %if.end
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1029
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1031
  %call = call zeroext i8 @acpi_ds_is_result_used(%union.acpi_parse_object* %2, %struct.acpi_walk_state* %3) #3, !dbg !1032
  %tobool4 = icmp ne i8 %call, 0, !dbg !1032
  br i1 %tobool4, label %if.end10, label %if.then5, !dbg !1033

if.then5:                                         ; preds = %if.end3
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1034
  %call6 = call i32 @acpi_ds_result_pop(%union.acpi_operand_object** %obj_desc, %struct.acpi_walk_state* %4) #3, !dbg !1036
  store i32 %call6, i32* %status, align 4, !dbg !1037
  %5 = load i32, i32* %status, align 4, !dbg !1038
  %tobool7 = icmp ne i32 %5, 0, !dbg !1038
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1040

if.then8:                                         ; preds = %if.then5
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj.addr, align 8, !dbg !1041
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %6) #3, !dbg !1043
  br label %if.end9, !dbg !1044

if.end9:                                          ; preds = %if.then8, %if.then5
  br label %if.end10, !dbg !1045

if.end10:                                         ; preds = %if.end9, %if.end3
  br label %return, !dbg !1046

return:                                           ; preds = %if.end10, %if.then2, %if.then
  ret void, !dbg !1047
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_result_pop(%union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_resolve_operands(%struct.acpi_walk_state* %walk_state) #0 !dbg !1048 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1049, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1051, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1053, metadata !DIExpression()), !dbg !1054
  store i32 0, i32* %status, align 4, !dbg !1054
  store i32 0, i32* %i, align 4, !dbg !1055
  br label %for.cond, !dbg !1057

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1058
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1060
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 5, !dbg !1061
  %2 = load i8, i8* %num_operands, align 1, !dbg !1061
  %conv = zext i8 %2 to i32, !dbg !1060
  %cmp = icmp ult i32 %0, %conv, !dbg !1062
  br i1 %cmp, label %for.body, label %for.end, !dbg !1063

for.body:                                         ; preds = %for.cond
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1064
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 28, !dbg !1066
  %4 = load i32, i32* %i, align 4, !dbg !1067
  %idxprom = zext i32 %4 to i64, !dbg !1064
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 %idxprom, !dbg !1064
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1068
  %call = call i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %arrayidx, %struct.acpi_walk_state* %5) #3, !dbg !1069
  store i32 %call, i32* %status, align 4, !dbg !1070
  %6 = load i32, i32* %status, align 4, !dbg !1071
  %tobool = icmp ne i32 %6, 0, !dbg !1071
  br i1 %tobool, label %if.then, label %if.end, !dbg !1073

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !1074

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1076

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !dbg !1077
  %inc = add i32 %7, 1, !dbg !1077
  store i32 %inc, i32* %i, align 4, !dbg !1077
  br label %for.cond, !dbg !1078, !llvm.loop !1079

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32, i32* %status, align 4, !dbg !1081
  ret i32 %8, !dbg !1081
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ds_clear_operands(%struct.acpi_walk_state* %walk_state) #0 !dbg !1082 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %i = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1083, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1085, metadata !DIExpression()), !dbg !1086
  store i32 0, i32* %i, align 4, !dbg !1087
  br label %for.cond, !dbg !1089

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1090
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1092
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 5, !dbg !1093
  %2 = load i8, i8* %num_operands, align 1, !dbg !1093
  %conv = zext i8 %2 to i32, !dbg !1092
  %cmp = icmp ult i32 %0, %conv, !dbg !1094
  br i1 %cmp, label %for.body, label %for.end, !dbg !1095

for.body:                                         ; preds = %for.cond
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1096
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 28, !dbg !1098
  %4 = load i32, i32* %i, align 4, !dbg !1099
  %idxprom = zext i32 %4 to i64, !dbg !1096
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 %idxprom, !dbg !1096
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !1096
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %5) #3, !dbg !1100
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1101
  %operands2 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 28, !dbg !1102
  %7 = load i32, i32* %i, align 4, !dbg !1103
  %idxprom3 = zext i32 %7 to i64, !dbg !1101
  %arrayidx4 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands2, i64 0, i64 %idxprom3, !dbg !1101
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx4, align 8, !dbg !1104
  br label %for.inc, !dbg !1105

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !1106
  %inc = add i32 %8, 1, !dbg !1106
  store i32 %inc, i32* %i, align 4, !dbg !1106
  br label %for.cond, !dbg !1107, !llvm.loop !1108

for.end:                                          ; preds = %for.cond
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1110
  %num_operands5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 5, !dbg !1111
  store i8 0, i8* %num_operands5, align 1, !dbg !1112
  ret void, !dbg !1113
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_create_operand(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %arg, i32 %arg_index) #0 !dbg !1114 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %arg.addr = alloca %union.acpi_parse_object*, align 8
  %arg_index.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %name_string = alloca i8*, align 8
  %name_length = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %parent_op = alloca %union.acpi_parse_object*, align 8
  %opcode = alloca i16, align 2
  %interpreter_mode = alloca i32, align 4
  %op_info = alloca %struct.acpi_opcode_info*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1117, metadata !DIExpression()), !dbg !1118
  store %union.acpi_parse_object* %arg, %union.acpi_parse_object** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg.addr, metadata !1119, metadata !DIExpression()), !dbg !1120
  store i32 %arg_index, i32* %arg_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %arg_index.addr, metadata !1121, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1123, metadata !DIExpression()), !dbg !1124
  store i32 0, i32* %status, align 4, !dbg !1124
  call void @llvm.dbg.declare(metadata i8** %name_string, metadata !1125, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.declare(metadata i32* %name_length, metadata !1127, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1129, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %parent_op, metadata !1131, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.declare(metadata i16* %opcode, metadata !1133, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.declare(metadata i32* %interpreter_mode, metadata !1135, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.declare(metadata %struct.acpi_opcode_info** %op_info, metadata !1138, metadata !DIExpression()), !dbg !1139
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1140
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !1142
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !1143
  %1 = load i16, i16* %aml_opcode, align 2, !dbg !1143
  %conv = zext i16 %1 to i32, !dbg !1140
  %cmp = icmp eq i32 %conv, 45, !dbg !1144
  br i1 %cmp, label %land.lhs.true, label %if.else88, !dbg !1145

land.lhs.true:                                    ; preds = %entry
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1146
  %common2 = bitcast %union.acpi_parse_object* %2 to %struct.acpi_parse_obj_common*, !dbg !1147
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 7, !dbg !1148
  %string = bitcast %union.acpi_parse_value* %value to i8**, !dbg !1149
  %3 = load i8*, i8** %string, align 8, !dbg !1149
  %tobool = icmp ne i8* %3, null, !dbg !1150
  br i1 %tobool, label %land.lhs.true3, label %if.else88, !dbg !1151

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1152
  %common4 = bitcast %union.acpi_parse_object* %4 to %struct.acpi_parse_obj_common*, !dbg !1153
  %flags = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common4, i32 0, i32 2, !dbg !1154
  %5 = load i8, i8* %flags, align 1, !dbg !1154
  %conv5 = zext i8 %5 to i32, !dbg !1152
  %and = and i32 %conv5, 16, !dbg !1155
  %tobool6 = icmp ne i32 %and, 0, !dbg !1155
  br i1 %tobool6, label %if.else88, label %if.then, !dbg !1156

if.then:                                          ; preds = %land.lhs.true3
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1157
  %common7 = bitcast %union.acpi_parse_object* %6 to %struct.acpi_parse_obj_common*, !dbg !1159
  %value8 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common7, i32 0, i32 7, !dbg !1160
  %buffer = bitcast %union.acpi_parse_value* %value8 to i8**, !dbg !1161
  %7 = load i8*, i8** %buffer, align 8, !dbg !1161
  %call = call i32 @acpi_ex_get_name_string(i32 0, i8* %7, i8** %name_string, i32* %name_length) #3, !dbg !1162
  store i32 %call, i32* %status, align 4, !dbg !1163
  %8 = load i32, i32* %status, align 4, !dbg !1164
  %tobool9 = icmp ne i32 %8, 0, !dbg !1164
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !1166

if.then10:                                        ; preds = %if.then
  %9 = load i32, i32* %status, align 4, !dbg !1167
  store i32 %9, i32* %retval, align 4, !dbg !1167
  br label %return, !dbg !1167

if.end:                                           ; preds = %if.then
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1169
  %deferred_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 33, !dbg !1171
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %deferred_node, align 8, !dbg !1171
  %tobool11 = icmp ne %struct.acpi_namespace_node* %11, null, !dbg !1172
  br i1 %tobool11, label %land.lhs.true12, label %if.else, !dbg !1173

land.lhs.true12:                                  ; preds = %if.end
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1174
  %deferred_node13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 33, !dbg !1175
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %deferred_node13, align 8, !dbg !1175
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %13, i32 0, i32 2, !dbg !1176
  %14 = load i8, i8* %type, align 1, !dbg !1176
  %conv14 = zext i8 %14 to i32, !dbg !1174
  %cmp15 = icmp eq i32 %conv14, 14, !dbg !1177
  br i1 %cmp15, label %land.lhs.true17, label %if.else, !dbg !1178

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %15 = load i32, i32* %arg_index.addr, align 4, !dbg !1179
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1180
  %opcode18 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 3, !dbg !1181
  %17 = load i16, i16* %opcode18, align 2, !dbg !1181
  %conv19 = zext i16 %17 to i32, !dbg !1180
  %cmp20 = icmp eq i32 %conv19, 23315, !dbg !1182
  %18 = zext i1 %cmp20 to i64, !dbg !1183
  %cond = select i1 %cmp20, i32 3, i32 2, !dbg !1183
  %cmp22 = icmp eq i32 %15, %cond, !dbg !1184
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !1185

if.then24:                                        ; preds = %land.lhs.true17
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1186
  %deferred_node25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 33, !dbg !1186
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %deferred_node25, align 8, !dbg !1186
  %21 = bitcast %struct.acpi_namespace_node* %20 to i8*, !dbg !1186
  %22 = bitcast i8* %21 to %union.acpi_operand_object*, !dbg !1186
  store %union.acpi_operand_object* %22, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1188
  store i32 0, i32* %status, align 4, !dbg !1189
  br label %if.end80, !dbg !1190

if.else:                                          ; preds = %land.lhs.true17, %land.lhs.true12, %if.end
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1191
  %common26 = bitcast %union.acpi_parse_object* %23 to %struct.acpi_parse_obj_common*, !dbg !1193
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common26, i32 0, i32 0, !dbg !1194
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !1194
  store %union.acpi_parse_object* %24, %union.acpi_parse_object** %parent_op, align 8, !dbg !1195
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent_op, align 8, !dbg !1196
  %common27 = bitcast %union.acpi_parse_object* %25 to %struct.acpi_parse_obj_common*, !dbg !1197
  %aml_opcode28 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common27, i32 0, i32 3, !dbg !1198
  %26 = load i16, i16* %aml_opcode28, align 2, !dbg !1198
  %call29 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %26) #3, !dbg !1199
  store %struct.acpi_opcode_info* %call29, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1200
  %27 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1201
  %flags30 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %27, i32 0, i32 2, !dbg !1203
  %28 = load i16, i16* %flags30, align 4, !dbg !1203
  %conv31 = zext i16 %28 to i32, !dbg !1201
  %and32 = and i32 %conv31, 128, !dbg !1204
  %tobool33 = icmp ne i32 %and32, 0, !dbg !1204
  br i1 %tobool33, label %land.lhs.true34, label %if.else53, !dbg !1205

land.lhs.true34:                                  ; preds = %if.else
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent_op, align 8, !dbg !1206
  %common35 = bitcast %union.acpi_parse_object* %29 to %struct.acpi_parse_obj_common*, !dbg !1207
  %aml_opcode36 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common35, i32 0, i32 3, !dbg !1208
  %30 = load i16, i16* %aml_opcode36, align 2, !dbg !1208
  %conv37 = zext i16 %30 to i32, !dbg !1206
  %cmp38 = icmp ne i32 %conv37, 53, !dbg !1209
  br i1 %cmp38, label %land.lhs.true40, label %if.else53, !dbg !1210

land.lhs.true40:                                  ; preds = %land.lhs.true34
  %31 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent_op, align 8, !dbg !1211
  %common41 = bitcast %union.acpi_parse_object* %31 to %struct.acpi_parse_obj_common*, !dbg !1212
  %aml_opcode42 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common41, i32 0, i32 3, !dbg !1213
  %32 = load i16, i16* %aml_opcode42, align 2, !dbg !1213
  %conv43 = zext i16 %32 to i32, !dbg !1211
  %cmp44 = icmp ne i32 %conv43, 23424, !dbg !1214
  br i1 %cmp44, label %land.lhs.true46, label %if.else53, !dbg !1215

land.lhs.true46:                                  ; preds = %land.lhs.true40
  %33 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent_op, align 8, !dbg !1216
  %common47 = bitcast %union.acpi_parse_object* %33 to %struct.acpi_parse_obj_common*, !dbg !1217
  %aml_opcode48 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common47, i32 0, i32 3, !dbg !1218
  %34 = load i16, i16* %aml_opcode48, align 2, !dbg !1218
  %conv49 = zext i16 %34 to i32, !dbg !1216
  %cmp50 = icmp ne i32 %conv49, 45, !dbg !1219
  br i1 %cmp50, label %if.then52, label %if.else53, !dbg !1220

if.then52:                                        ; preds = %land.lhs.true46
  store i32 2, i32* %interpreter_mode, align 4, !dbg !1221
  br label %if.end54, !dbg !1223

if.else53:                                        ; preds = %land.lhs.true46, %land.lhs.true40, %land.lhs.true34, %if.else
  store i32 3, i32* %interpreter_mode, align 4, !dbg !1224
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.then52
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1226
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 46, !dbg !1227
  %36 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !1227
  %37 = load i8*, i8** %name_string, align 8, !dbg !1228
  %38 = load i32, i32* %interpreter_mode, align 4, !dbg !1229
  %39 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1230
  %40 = bitcast %union.acpi_operand_object** %obj_desc to i8*, !dbg !1231
  %41 = bitcast i8* %40 to %struct.acpi_namespace_node**, !dbg !1231
  %call55 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %36, i8* %37, i32 0, i32 %38, i32 3, %struct.acpi_walk_state* %39, %struct.acpi_namespace_node** %41) #3, !dbg !1232
  store i32 %call55, i32* %status, align 4, !dbg !1233
  %42 = load i32, i32* %status, align 4, !dbg !1234
  %cmp56 = icmp eq i32 %42, 5, !dbg !1236
  br i1 %cmp56, label %if.then58, label %if.end75, !dbg !1237

if.then58:                                        ; preds = %if.end54
  %43 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent_op, align 8, !dbg !1238
  %common59 = bitcast %union.acpi_parse_object* %43 to %struct.acpi_parse_obj_common*, !dbg !1241
  %aml_opcode60 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common59, i32 0, i32 3, !dbg !1242
  %44 = load i16, i16* %aml_opcode60, align 2, !dbg !1242
  %conv61 = zext i16 %44 to i32, !dbg !1238
  %cmp62 = icmp eq i32 %conv61, 23314, !dbg !1243
  br i1 %cmp62, label %if.then64, label %if.else65, !dbg !1244

if.then64:                                        ; preds = %if.then58
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1245
  %46 = bitcast %struct.acpi_namespace_node* %45 to i8*, !dbg !1245
  %47 = bitcast i8* %46 to %union.acpi_operand_object*, !dbg !1245
  store %union.acpi_operand_object* %47, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1247
  store i32 0, i32* %status, align 4, !dbg !1248
  br label %if.end74, !dbg !1249

if.else65:                                        ; preds = %if.then58
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent_op, align 8, !dbg !1250
  %common66 = bitcast %union.acpi_parse_object* %48 to %struct.acpi_parse_obj_common*, !dbg !1252
  %aml_opcode67 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common66, i32 0, i32 3, !dbg !1253
  %49 = load i16, i16* %aml_opcode67, align 2, !dbg !1253
  %conv68 = zext i16 %49 to i32, !dbg !1250
  %cmp69 = icmp eq i32 %conv68, 21, !dbg !1254
  br i1 %cmp69, label %if.then71, label %if.else72, !dbg !1255

if.then71:                                        ; preds = %if.else65
  store i32 12289, i32* %status, align 4, !dbg !1256
  br label %if.end73, !dbg !1258

if.else72:                                        ; preds = %if.else65
  store i32 12302, i32* %status, align 4, !dbg !1259
  br label %if.end73

if.end73:                                         ; preds = %if.else72, %if.then71
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then64
  br label %if.end75, !dbg !1261

if.end75:                                         ; preds = %if.end74, %if.end54
  %50 = load i32, i32* %status, align 4, !dbg !1262
  %tobool76 = icmp ne i32 %50, 0, !dbg !1262
  br i1 %tobool76, label %if.then77, label %if.end79, !dbg !1264

if.then77:                                        ; preds = %if.end75
  %51 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1265
  %scope_info78 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %51, i32 0, i32 46, !dbg !1265
  %52 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info78, align 8, !dbg !1265
  %53 = load i8*, i8** %name_string, align 8, !dbg !1265
  %54 = load i32, i32* %status, align 4, !dbg !1265
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 549, %union.acpi_generic_state* %52, i8* %53, i32 %54) #3, !dbg !1265
  br label %if.end79, !dbg !1267

if.end79:                                         ; preds = %if.then77, %if.end75
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then24
  %55 = load i8*, i8** %name_string, align 8, !dbg !1268
  call void @acpi_os_free(i8* %55) #3, !dbg !1268
  %56 = load i32, i32* %status, align 4, !dbg !1269
  %tobool81 = icmp ne i32 %56, 0, !dbg !1269
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !1271

if.then82:                                        ; preds = %if.end80
  %57 = load i32, i32* %status, align 4, !dbg !1272
  store i32 %57, i32* %retval, align 4, !dbg !1272
  br label %return, !dbg !1272

if.end83:                                         ; preds = %if.end80
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1274
  %59 = bitcast %union.acpi_operand_object* %58 to i8*, !dbg !1274
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1275
  %call84 = call i32 @acpi_ds_obj_stack_push(i8* %59, %struct.acpi_walk_state* %60) #3, !dbg !1276
  store i32 %call84, i32* %status, align 4, !dbg !1277
  %61 = load i32, i32* %status, align 4, !dbg !1278
  %tobool85 = icmp ne i32 %61, 0, !dbg !1278
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !1280

if.then86:                                        ; preds = %if.end83
  %62 = load i32, i32* %status, align 4, !dbg !1281
  store i32 %62, i32* %retval, align 4, !dbg !1281
  br label %return, !dbg !1281

if.end87:                                         ; preds = %if.end83
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1283
  %64 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1284
  call void @acpi_db_display_argument_object(%union.acpi_operand_object* %63, %struct.acpi_walk_state* %64) #3, !dbg !1285
  br label %if.end141, !dbg !1286

if.else88:                                        ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %65 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1287
  %common89 = bitcast %union.acpi_parse_object* %65 to %struct.acpi_parse_obj_common*, !dbg !1290
  %aml_opcode90 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common89, i32 0, i32 3, !dbg !1291
  %66 = load i16, i16* %aml_opcode90, align 2, !dbg !1291
  %conv91 = zext i16 %66 to i32, !dbg !1287
  %cmp92 = icmp eq i32 %conv91, 45, !dbg !1292
  br i1 %cmp92, label %land.lhs.true94, label %if.else101, !dbg !1293

land.lhs.true94:                                  ; preds = %if.else88
  %67 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1294
  %common95 = bitcast %union.acpi_parse_object* %67 to %struct.acpi_parse_obj_common*, !dbg !1295
  %flags96 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common95, i32 0, i32 2, !dbg !1296
  %68 = load i8, i8* %flags96, align 1, !dbg !1296
  %conv97 = zext i8 %68 to i32, !dbg !1294
  %and98 = and i32 %conv97, 16, !dbg !1297
  %tobool99 = icmp ne i32 %and98, 0, !dbg !1297
  br i1 %tobool99, label %if.else101, label %if.then100, !dbg !1298

if.then100:                                       ; preds = %land.lhs.true94
  store i16 0, i16* %opcode, align 2, !dbg !1299
  br label %if.end104, !dbg !1301

if.else101:                                       ; preds = %land.lhs.true94, %if.else88
  %69 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1302
  %common102 = bitcast %union.acpi_parse_object* %69 to %struct.acpi_parse_obj_common*, !dbg !1304
  %aml_opcode103 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common102, i32 0, i32 3, !dbg !1305
  %70 = load i16, i16* %aml_opcode103, align 2, !dbg !1305
  store i16 %70, i16* %opcode, align 2, !dbg !1306
  br label %if.end104

if.end104:                                        ; preds = %if.else101, %if.then100
  %71 = load i16, i16* %opcode, align 2, !dbg !1307
  %call105 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %71) #3, !dbg !1308
  store %struct.acpi_opcode_info* %call105, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1309
  %72 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1310
  %object_type = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %72, i32 0, i32 3, !dbg !1312
  %73 = load i8, i8* %object_type, align 2, !dbg !1312
  %conv106 = zext i8 %73 to i32, !dbg !1310
  %cmp107 = icmp eq i32 %conv106, 30, !dbg !1313
  br i1 %cmp107, label %if.then109, label %if.end110, !dbg !1314

if.then109:                                       ; preds = %if.end104
  store i32 14, i32* %retval, align 4, !dbg !1315
  br label %return, !dbg !1315

if.end110:                                        ; preds = %if.end104
  %74 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1317
  %flags111 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %74, i32 0, i32 2, !dbg !1319
  %75 = load i16, i16* %flags111, align 4, !dbg !1319
  %conv112 = zext i16 %75 to i32, !dbg !1317
  %and113 = and i32 %conv112, 1024, !dbg !1320
  %tobool114 = icmp ne i32 %and113, 0, !dbg !1320
  br i1 %tobool114, label %if.then120, label %lor.lhs.false, !dbg !1321

lor.lhs.false:                                    ; preds = %if.end110
  %76 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1322
  %common115 = bitcast %union.acpi_parse_object* %76 to %struct.acpi_parse_obj_common*, !dbg !1323
  %flags116 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common115, i32 0, i32 2, !dbg !1324
  %77 = load i8, i8* %flags116, align 1, !dbg !1324
  %conv117 = zext i8 %77 to i32, !dbg !1322
  %and118 = and i32 %conv117, 16, !dbg !1325
  %tobool119 = icmp ne i32 %and118, 0, !dbg !1325
  br i1 %tobool119, label %if.then120, label %if.else125, !dbg !1326

if.then120:                                       ; preds = %lor.lhs.false, %if.end110
  %78 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1327
  %call121 = call i32 @acpi_ds_result_pop(%union.acpi_operand_object** %obj_desc, %struct.acpi_walk_state* %78) #3, !dbg !1329
  store i32 %call121, i32* %status, align 4, !dbg !1330
  %79 = load i32, i32* %status, align 4, !dbg !1331
  %tobool122 = icmp ne i32 %79, 0, !dbg !1331
  br i1 %tobool122, label %if.then123, label %if.end124, !dbg !1333

if.then123:                                       ; preds = %if.then120
  %80 = load i32, i32* %status, align 4, !dbg !1334
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 609, i32 %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !1334
  %81 = load i32, i32* %status, align 4, !dbg !1336
  store i32 %81, i32* %retval, align 4, !dbg !1336
  br label %return, !dbg !1336

if.end124:                                        ; preds = %if.then120
  br label %if.end136, !dbg !1337

if.else125:                                       ; preds = %lor.lhs.false
  %82 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1338
  %object_type126 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %82, i32 0, i32 3, !dbg !1338
  %83 = load i8, i8* %object_type126, align 2, !dbg !1338
  %conv127 = zext i8 %83 to i32, !dbg !1338
  %call128 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 618, i32 64, i32 %conv127) #3, !dbg !1338
  store %union.acpi_operand_object* %call128, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1340
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1341
  %tobool129 = icmp ne %union.acpi_operand_object* %84, null, !dbg !1341
  br i1 %tobool129, label %if.end131, label %if.then130, !dbg !1343

if.then130:                                       ; preds = %if.else125
  store i32 4, i32* %retval, align 4, !dbg !1344
  br label %return, !dbg !1344

if.end131:                                        ; preds = %if.else125
  %85 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1346
  %86 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1347
  %87 = load i16, i16* %opcode, align 2, !dbg !1348
  %call132 = call i32 @acpi_ds_init_object_from_op(%struct.acpi_walk_state* %85, %union.acpi_parse_object* %86, i16 zeroext %87, %union.acpi_operand_object** %obj_desc) #3, !dbg !1349
  store i32 %call132, i32* %status, align 4, !dbg !1350
  %88 = load i32, i32* %status, align 4, !dbg !1351
  %tobool133 = icmp ne i32 %88, 0, !dbg !1351
  br i1 %tobool133, label %if.then134, label %if.end135, !dbg !1353

if.then134:                                       ; preds = %if.end131
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1354
  call void @acpi_ut_delete_object_desc(%union.acpi_operand_object* %89) #3, !dbg !1356
  %90 = load i32, i32* %status, align 4, !dbg !1357
  store i32 %90, i32* %retval, align 4, !dbg !1357
  br label %return, !dbg !1357

if.end135:                                        ; preds = %if.end131
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end124
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1358
  %92 = bitcast %union.acpi_operand_object* %91 to i8*, !dbg !1358
  %93 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1359
  %call137 = call i32 @acpi_ds_obj_stack_push(i8* %92, %struct.acpi_walk_state* %93) #3, !dbg !1360
  store i32 %call137, i32* %status, align 4, !dbg !1361
  %94 = load i32, i32* %status, align 4, !dbg !1362
  %tobool138 = icmp ne i32 %94, 0, !dbg !1362
  br i1 %tobool138, label %if.then139, label %if.end140, !dbg !1364

if.then139:                                       ; preds = %if.end136
  %95 = load i32, i32* %status, align 4, !dbg !1365
  store i32 %95, i32* %retval, align 4, !dbg !1365
  br label %return, !dbg !1365

if.end140:                                        ; preds = %if.end136
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1367
  %97 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1368
  call void @acpi_db_display_argument_object(%union.acpi_operand_object* %96, %struct.acpi_walk_state* %97) #3, !dbg !1369
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.end87
  store i32 0, i32* %retval, align 4, !dbg !1370
  br label %return, !dbg !1370

return:                                           ; preds = %if.end141, %if.then139, %if.then134, %if.then130, %if.then123, %if.then109, %if.then86, %if.then82, %if.then10
  %98 = load i32, i32* %retval, align 4, !dbg !1371
  ret i32 %98, !dbg !1371
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_get_name_string(i32, i8*, i8**, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_lookup(%union.acpi_generic_state*, i8*, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_prefixed_namespace_error(i8*, i32, %union.acpi_generic_state*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1372 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1376, metadata !DIExpression()), !dbg !1377
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1378
  call void @kfree(i8* %0) #3, !dbg !1379
  ret void, !dbg !1380
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_obj_stack_push(i8*, %struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_db_display_argument_object(%union.acpi_operand_object* %obj_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !1381 {
entry:
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1385, metadata !DIExpression()), !dbg !1386
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1387, metadata !DIExpression()), !dbg !1386
  ret void, !dbg !1386
}

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_init_object_from_op(%struct.acpi_walk_state*, %union.acpi_parse_object*, i16 zeroext, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_object_desc(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %first_arg) #0 !dbg !1388 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %first_arg.addr = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %arg = alloca %union.acpi_parse_object*, align 8
  %arguments = alloca [8 x %union.acpi_parse_object*], align 16
  %arg_count = alloca i32, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1391, metadata !DIExpression()), !dbg !1392
  store %union.acpi_parse_object* %first_arg, %union.acpi_parse_object** %first_arg.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %first_arg.addr, metadata !1393, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1395, metadata !DIExpression()), !dbg !1396
  store i32 0, i32* %status, align 4, !dbg !1396
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !1397, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.declare(metadata [8 x %union.acpi_parse_object*]* %arguments, metadata !1399, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.declare(metadata i32* %arg_count, metadata !1402, metadata !DIExpression()), !dbg !1403
  store i32 0, i32* %arg_count, align 4, !dbg !1403
  call void @llvm.dbg.declare(metadata i32* %index, metadata !1404, metadata !DIExpression()), !dbg !1405
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1406
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 5, !dbg !1407
  %1 = load i8, i8* %num_operands, align 1, !dbg !1407
  %conv = zext i8 %1 to i32, !dbg !1406
  store i32 %conv, i32* %index, align 4, !dbg !1405
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1408, metadata !DIExpression()), !dbg !1409
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %first_arg.addr, align 8, !dbg !1410
  store %union.acpi_parse_object* %2, %union.acpi_parse_object** %arg, align 8, !dbg !1411
  br label %while.cond, !dbg !1412

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1413
  %tobool = icmp ne %union.acpi_parse_object* %3, null, !dbg !1412
  br i1 %tobool, label %while.body, label %while.end, !dbg !1412

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %index, align 4, !dbg !1414
  %cmp = icmp uge i32 %4, 8, !dbg !1417
  br i1 %cmp, label %if.then, label %if.end, !dbg !1418

if.then:                                          ; preds = %while.body
  store i32 4100, i32* %retval, align 4, !dbg !1419
  br label %return, !dbg !1419

if.end:                                           ; preds = %while.body
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1421
  %6 = load i32, i32* %index, align 4, !dbg !1422
  %idxprom = zext i32 %6 to i64, !dbg !1423
  %arrayidx = getelementptr [8 x %union.acpi_parse_object*], [8 x %union.acpi_parse_object*]* %arguments, i64 0, i64 %idxprom, !dbg !1423
  store %union.acpi_parse_object* %5, %union.acpi_parse_object** %arrayidx, align 8, !dbg !1424
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1425
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 28, !dbg !1426
  %8 = load i32, i32* %index, align 4, !dbg !1427
  %idxprom2 = zext i32 %8 to i64, !dbg !1425
  %arrayidx3 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 %idxprom2, !dbg !1425
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx3, align 8, !dbg !1428
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1429
  %common = bitcast %union.acpi_parse_object* %9 to %struct.acpi_parse_obj_common*, !dbg !1430
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 5, !dbg !1431
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !1431
  store %union.acpi_parse_object* %10, %union.acpi_parse_object** %arg, align 8, !dbg !1432
  %11 = load i32, i32* %arg_count, align 4, !dbg !1433
  %inc = add i32 %11, 1, !dbg !1433
  store i32 %inc, i32* %arg_count, align 4, !dbg !1433
  %12 = load i32, i32* %index, align 4, !dbg !1434
  %inc4 = add i32 %12, 1, !dbg !1434
  store i32 %inc4, i32* %index, align 4, !dbg !1434
  br label %while.cond, !dbg !1412, !llvm.loop !1435

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* %index, align 4, !dbg !1437
  %dec = add i32 %13, -1, !dbg !1437
  store i32 %dec, i32* %index, align 4, !dbg !1437
  store i32 0, i32* %i, align 4, !dbg !1438
  br label %for.cond, !dbg !1440

for.cond:                                         ; preds = %for.inc, %while.end
  %14 = load i32, i32* %i, align 4, !dbg !1441
  %15 = load i32, i32* %arg_count, align 4, !dbg !1443
  %cmp5 = icmp ult i32 %14, %15, !dbg !1444
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1445

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %index, align 4, !dbg !1446
  %idxprom7 = zext i32 %16 to i64, !dbg !1448
  %arrayidx8 = getelementptr [8 x %union.acpi_parse_object*], [8 x %union.acpi_parse_object*]* %arguments, i64 0, i64 %idxprom7, !dbg !1448
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arrayidx8, align 8, !dbg !1448
  store %union.acpi_parse_object* %17, %union.acpi_parse_object** %arg, align 8, !dbg !1449
  %18 = load i32, i32* %index, align 4, !dbg !1450
  %conv9 = trunc i32 %18 to i8, !dbg !1451
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1452
  %operand_index = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 6, !dbg !1453
  store i8 %conv9, i8* %operand_index, align 2, !dbg !1454
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1455
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1456
  %22 = load i32, i32* %index, align 4, !dbg !1457
  %call = call i32 @acpi_ds_create_operand(%struct.acpi_walk_state* %20, %union.acpi_parse_object* %21, i32 %22) #3, !dbg !1458
  store i32 %call, i32* %status, align 4, !dbg !1459
  %23 = load i32, i32* %status, align 4, !dbg !1460
  %tobool10 = icmp ne i32 %23, 0, !dbg !1460
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !1462

if.then11:                                        ; preds = %for.body
  br label %cleanup, !dbg !1463

if.end12:                                         ; preds = %for.body
  %24 = load i32, i32* %index, align 4, !dbg !1465
  %dec13 = add i32 %24, -1, !dbg !1465
  store i32 %dec13, i32* %index, align 4, !dbg !1465
  br label %for.inc, !dbg !1466

for.inc:                                          ; preds = %if.end12
  %25 = load i32, i32* %i, align 4, !dbg !1467
  %inc14 = add i32 %25, 1, !dbg !1467
  store i32 %inc14, i32* %i, align 4, !dbg !1467
  br label %for.cond, !dbg !1468, !llvm.loop !1469

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %status, align 4, !dbg !1471
  store i32 %26, i32* %retval, align 4, !dbg !1471
  br label %return, !dbg !1471

cleanup:                                          ; preds = %if.then11
  call void @llvm.dbg.label(metadata !1472), !dbg !1473
  %27 = load i32, i32* %arg_count, align 4, !dbg !1474
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1475
  call void @acpi_ds_obj_stack_pop_and_delete(i32 %27, %struct.acpi_walk_state* %28) #3, !dbg !1476
  %29 = load i32, i32* %status, align 4, !dbg !1477
  %30 = load i32, i32* %index, align 4, !dbg !1477
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 725, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %30) #3, !dbg !1477
  %31 = load i32, i32* %status, align 4, !dbg !1478
  store i32 %31, i32* %retval, align 4, !dbg !1478
  br label %return, !dbg !1478

return:                                           ; preds = %cleanup, %for.end, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !1479
  ret i32 %32, !dbg !1479
}

; Function Attrs: noredzone
declare dso_local void @acpi_ds_obj_stack_pop_and_delete(i32, %struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_evaluate_name_path(%struct.acpi_walk_state* %walk_state) #0 !dbg !1480 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %op = alloca %union.acpi_parse_object*, align 8
  %operand = alloca %union.acpi_operand_object**, align 8
  %new_obj_desc = alloca %union.acpi_operand_object*, align 8
  %type = alloca i8, align 1
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1481, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1483, metadata !DIExpression()), !dbg !1484
  store i32 0, i32* %status, align 4, !dbg !1484
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op, metadata !1485, metadata !DIExpression()), !dbg !1486
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1487
  %op1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 40, !dbg !1488
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op1, align 8, !dbg !1488
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %op, align 8, !dbg !1486
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !1489, metadata !DIExpression()), !dbg !1490
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1491
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 28, !dbg !1492
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !1491
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !1490
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %new_obj_desc, metadata !1493, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.declare(metadata i8* %type, metadata !1495, metadata !DIExpression()), !dbg !1496
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1497
  %common = bitcast %union.acpi_parse_object* %3 to %struct.acpi_parse_obj_common*, !dbg !1499
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 0, !dbg !1500
  %4 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !1500
  %tobool = icmp ne %union.acpi_parse_object* %4, null, !dbg !1497
  br i1 %tobool, label %if.end, label %if.then, !dbg !1501

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1502

if.end:                                           ; preds = %entry
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1504
  %common2 = bitcast %union.acpi_parse_object* %5 to %struct.acpi_parse_obj_common*, !dbg !1506
  %parent3 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 0, !dbg !1507
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent3, align 8, !dbg !1507
  %common4 = bitcast %union.acpi_parse_object* %6 to %struct.acpi_parse_obj_common*, !dbg !1508
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common4, i32 0, i32 3, !dbg !1509
  %7 = load i16, i16* %aml_opcode, align 2, !dbg !1509
  %conv = zext i16 %7 to i32, !dbg !1504
  %cmp = icmp eq i32 %conv, 18, !dbg !1510
  br i1 %cmp, label %if.then21, label %lor.lhs.false, !dbg !1511

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1512
  %common6 = bitcast %union.acpi_parse_object* %8 to %struct.acpi_parse_obj_common*, !dbg !1513
  %parent7 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common6, i32 0, i32 0, !dbg !1514
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent7, align 8, !dbg !1514
  %common8 = bitcast %union.acpi_parse_object* %9 to %struct.acpi_parse_obj_common*, !dbg !1515
  %aml_opcode9 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common8, i32 0, i32 3, !dbg !1516
  %10 = load i16, i16* %aml_opcode9, align 2, !dbg !1516
  %conv10 = zext i16 %10 to i32, !dbg !1512
  %cmp11 = icmp eq i32 %conv10, 19, !dbg !1517
  br i1 %cmp11, label %if.then21, label %lor.lhs.false13, !dbg !1518

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1519
  %common14 = bitcast %union.acpi_parse_object* %11 to %struct.acpi_parse_obj_common*, !dbg !1520
  %parent15 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common14, i32 0, i32 0, !dbg !1521
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent15, align 8, !dbg !1521
  %common16 = bitcast %union.acpi_parse_object* %12 to %struct.acpi_parse_obj_common*, !dbg !1522
  %aml_opcode17 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common16, i32 0, i32 3, !dbg !1523
  %13 = load i16, i16* %aml_opcode17, align 2, !dbg !1523
  %conv18 = zext i16 %13 to i32, !dbg !1519
  %cmp19 = icmp eq i32 %conv18, 113, !dbg !1524
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !1525

if.then21:                                        ; preds = %lor.lhs.false13, %lor.lhs.false, %if.end
  br label %exit, !dbg !1526

if.end22:                                         ; preds = %lor.lhs.false13
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1528
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1529
  %call = call i32 @acpi_ds_create_operand(%struct.acpi_walk_state* %14, %union.acpi_parse_object* %15, i32 0) #3, !dbg !1530
  store i32 %call, i32* %status, align 4, !dbg !1531
  %16 = load i32, i32* %status, align 4, !dbg !1532
  %tobool23 = icmp ne i32 %16, 0, !dbg !1532
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1534

if.then24:                                        ; preds = %if.end22
  br label %exit, !dbg !1535

if.end25:                                         ; preds = %if.end22
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1537
  %common26 = bitcast %union.acpi_parse_object* %17 to %struct.acpi_parse_obj_common*, !dbg !1539
  %flags = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common26, i32 0, i32 2, !dbg !1540
  %18 = load i8, i8* %flags, align 1, !dbg !1540
  %conv27 = zext i8 %18 to i32, !dbg !1537
  %and = and i32 %conv27, 32, !dbg !1541
  %tobool28 = icmp ne i32 %and, 0, !dbg !1541
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1542

if.then29:                                        ; preds = %if.end25
  %19 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1543
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %19, align 8, !dbg !1545
  store %union.acpi_operand_object* %20, %union.acpi_operand_object** %new_obj_desc, align 8, !dbg !1546
  br label %push_result, !dbg !1547

if.end30:                                         ; preds = %if.end25
  %21 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1548
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %21, align 8, !dbg !1549
  %common31 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_common*, !dbg !1550
  %type32 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common31, i32 0, i32 2, !dbg !1551
  %23 = load i8, i8* %type32, align 1, !dbg !1551
  store i8 %23, i8* %type, align 1, !dbg !1552
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1553
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1554
  %call33 = call i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %24, %struct.acpi_walk_state* %25) #3, !dbg !1555
  store i32 %call33, i32* %status, align 4, !dbg !1556
  %26 = load i32, i32* %status, align 4, !dbg !1557
  %tobool34 = icmp ne i32 %26, 0, !dbg !1557
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !1559

if.then35:                                        ; preds = %if.end30
  br label %exit, !dbg !1560

if.end36:                                         ; preds = %if.end30
  %27 = load i8, i8* %type, align 1, !dbg !1562
  %conv37 = zext i8 %27 to i32, !dbg !1562
  %cmp38 = icmp eq i32 %conv37, 1, !dbg !1564
  br i1 %cmp38, label %if.then40, label %if.else, !dbg !1565

if.then40:                                        ; preds = %if.end36
  %28 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1566
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %28, align 8, !dbg !1568
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %29) #3, !dbg !1569
  %30 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1570
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %30, align 8, !dbg !1571
  %32 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1572
  %call41 = call i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %31, %union.acpi_operand_object** %new_obj_desc, %struct.acpi_walk_state* %32) #3, !dbg !1573
  store i32 %call41, i32* %status, align 4, !dbg !1574
  %33 = load i32, i32* %status, align 4, !dbg !1575
  %tobool42 = icmp ne i32 %33, 0, !dbg !1575
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !1577

if.then43:                                        ; preds = %if.then40
  br label %exit, !dbg !1578

if.end44:                                         ; preds = %if.then40
  br label %if.end45, !dbg !1580

if.else:                                          ; preds = %if.end36
  %34 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1581
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %34, align 8, !dbg !1583
  store %union.acpi_operand_object* %35, %union.acpi_operand_object** %new_obj_desc, align 8, !dbg !1584
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.end44
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1585
  %call46 = call i32 @acpi_ds_obj_stack_pop(i32 1, %struct.acpi_walk_state* %36) #3, !dbg !1586
  store i32 %call46, i32* %status, align 4, !dbg !1587
  %37 = load i32, i32* %status, align 4, !dbg !1588
  %tobool47 = icmp ne i32 %37, 0, !dbg !1588
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !1590

if.then48:                                        ; preds = %if.end45
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_obj_desc, align 8, !dbg !1591
  %39 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1593
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %39, i32 0, i32 43, !dbg !1594
  store %union.acpi_operand_object* %38, %union.acpi_operand_object** %result_obj, align 8, !dbg !1595
  br label %exit, !dbg !1596

if.end49:                                         ; preds = %if.end45
  br label %push_result, !dbg !1588

push_result:                                      ; preds = %if.end49, %if.then29
  call void @llvm.dbg.label(metadata !1597), !dbg !1598
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_obj_desc, align 8, !dbg !1599
  %41 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1600
  %result_obj50 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %41, i32 0, i32 43, !dbg !1601
  store %union.acpi_operand_object* %40, %union.acpi_operand_object** %result_obj50, align 8, !dbg !1602
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1603
  %result_obj51 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %42, i32 0, i32 43, !dbg !1604
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj51, align 8, !dbg !1604
  %44 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1605
  %call52 = call i32 @acpi_ds_result_push(%union.acpi_operand_object* %43, %struct.acpi_walk_state* %44) #3, !dbg !1606
  store i32 %call52, i32* %status, align 4, !dbg !1607
  %45 = load i32, i32* %status, align 4, !dbg !1608
  %tobool53 = icmp ne i32 %45, 0, !dbg !1608
  br i1 %tobool53, label %if.end59, label %if.then54, !dbg !1610

if.then54:                                        ; preds = %push_result
  %46 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1611
  %common55 = bitcast %union.acpi_parse_object* %46 to %struct.acpi_parse_obj_common*, !dbg !1613
  %flags56 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common55, i32 0, i32 2, !dbg !1614
  %47 = load i8, i8* %flags56, align 1, !dbg !1615
  %conv57 = zext i8 %47 to i32, !dbg !1615
  %or = or i32 %conv57, 16, !dbg !1615
  %conv58 = trunc i32 %or to i8, !dbg !1615
  store i8 %conv58, i8* %flags56, align 1, !dbg !1615
  br label %if.end59, !dbg !1616

if.end59:                                         ; preds = %if.then54, %push_result
  br label %exit, !dbg !1608

exit:                                             ; preds = %if.end59, %if.then48, %if.then43, %if.then35, %if.then24, %if.then21, %if.then
  call void @llvm.dbg.label(metadata !1617), !dbg !1618
  %48 = load i32, i32* %status, align 4, !dbg !1619
  ret i32 %48, !dbg !1619
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_obj_stack_pop(i32, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_result_push(%union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!790, !791, !792, !793}
!llvm.ident = !{!794}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !788, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !787, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsutils.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3, isUnsigned: true)
!12 = !{!13, !18, !20, !22, !123, !786, !31}
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
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !24, line: 367, size: 576, elements: !25)
!24 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !37, !53, !65, !100, !114, !124, !437, !454, !469, !482, !560, !572, !586, !596, !614, !636, !655, !674, !693, !706, !732, !749, !762, !776, !785}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !23, file: !24, line: 368, baseType: !27, size: 128)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !24, line: 73, size: 128, elements: !28)
!28 = !{!29, !30, !34, !35, !36}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !27, file: !24, line: 74, baseType: !22, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !27, file: !24, line: 74, baseType: !31, size: 8, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !33)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !24, line: 74, baseType: !31, size: 8, offset: 72)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !27, file: !24, line: 74, baseType: !13, size: 16, offset: 80)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !27, file: !24, line: 74, baseType: !31, size: 8, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !23, file: !24, line: 369, baseType: !38, size: 192)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !24, line: 76, size: 192, elements: !39)
!39 = !{!40, !41, !42, !43, !44, !45, !49}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !38, file: !24, line: 77, baseType: !22, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !38, file: !24, line: 77, baseType: !31, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !24, line: 77, baseType: !31, size: 8, offset: 72)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !38, file: !24, line: 77, baseType: !13, size: 16, offset: 80)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !24, line: 77, baseType: !31, size: 8, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !38, file: !24, line: 77, baseType: !46, size: 24, offset: 104)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 3)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !38, file: !24, line: 78, baseType: !50, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !14, line: 23, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !52)
!52 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !23, file: !24, line: 370, baseType: !54, size: 256)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !24, line: 93, size: 256, elements: !55)
!55 = !{!56, !57, !58, !59, !60, !61, !64}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !54, file: !24, line: 94, baseType: !22, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !54, file: !24, line: 94, baseType: !31, size: 8, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !24, line: 94, baseType: !31, size: 8, offset: 72)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !54, file: !24, line: 94, baseType: !13, size: 16, offset: 80)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !24, line: 94, baseType: !31, size: 8, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !54, file: !24, line: 94, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !54, file: !24, line: 94, baseType: !20, size: 32, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !23, file: !24, line: 371, baseType: !66, size: 384)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !24, line: 97, size: 384, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !75, !76, !77, !78}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !24, line: 98, baseType: !22, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !24, line: 98, baseType: !31, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !24, line: 98, baseType: !31, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !24, line: 98, baseType: !13, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !24, line: 98, baseType: !31, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !66, file: !24, line: 98, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !66, file: !24, line: 98, baseType: !20, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !66, file: !24, line: 99, baseType: !20, size: 32, offset: 224)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !66, file: !24, line: 100, baseType: !74, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !66, file: !24, line: 101, baseType: !79, size: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !95, !96, !97, !98}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !80, file: !6, line: 134, baseType: !22, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !6, line: 135, baseType: !31, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !6, line: 136, baseType: !31, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !6, line: 137, baseType: !13, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !6, line: 138, baseType: !87, size: 32, offset: 96)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !88, line: 327, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !87, file: !88, line: 328, baseType: !20, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !87, file: !88, line: 329, baseType: !92, size: 32)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 32, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 4)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !80, file: !6, line: 139, baseType: !79, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !80, file: !6, line: 140, baseType: !79, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !80, file: !6, line: 141, baseType: !79, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !80, file: !6, line: 142, baseType: !99, size: 16, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !13)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !23, file: !24, line: 372, baseType: !101, size: 384)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !24, line: 104, size: 384, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !111, !112, !113}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !101, file: !24, line: 105, baseType: !22, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !101, file: !24, line: 105, baseType: !31, size: 8, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !24, line: 105, baseType: !31, size: 8, offset: 72)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !101, file: !24, line: 105, baseType: !13, size: 16, offset: 80)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !24, line: 105, baseType: !31, size: 8, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !101, file: !24, line: 105, baseType: !79, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !101, file: !24, line: 106, baseType: !110, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !101, file: !24, line: 107, baseType: !74, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !101, file: !24, line: 108, baseType: !20, size: 32, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !101, file: !24, line: 109, baseType: !20, size: 32, offset: 352)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !23, file: !24, line: 373, baseType: !115, size: 192)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !24, line: 118, size: 192, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !115, file: !24, line: 119, baseType: !22, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !115, file: !24, line: 119, baseType: !31, size: 8, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !24, line: 119, baseType: !31, size: 8, offset: 72)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !115, file: !24, line: 119, baseType: !13, size: 16, offset: 80)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !24, line: 119, baseType: !31, size: 8, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !115, file: !24, line: 119, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !23, file: !24, line: 374, baseType: !125, size: 448)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !24, line: 143, size: 448, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !434, !435, !436}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !125, file: !24, line: 144, baseType: !22, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !24, line: 144, baseType: !31, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !24, line: 144, baseType: !31, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !125, file: !24, line: 144, baseType: !13, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !24, line: 144, baseType: !31, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !125, file: !24, line: 144, baseType: !31, size: 8, offset: 104)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !125, file: !24, line: 145, baseType: !31, size: 8, offset: 112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !125, file: !24, line: 146, baseType: !31, size: 8, offset: 120)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !125, file: !24, line: 147, baseType: !22, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !125, file: !24, line: 148, baseType: !22, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !125, file: !24, line: 149, baseType: !74, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !125, file: !24, line: 153, baseType: !139, size: 64, offset: 320)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !24, line: 150, size: 64, elements: !140)
!140 = !{!141, !433}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !139, file: !24, line: 151, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!18, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !148, line: 37, size: 9024, elements: !149)
!148 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !379, !380, !381, !382, !383, !387, !389, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !416, !417, !418, !419, !420, !421, !422, !423, !425, !431}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !148, line: 38, baseType: !146, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !148, line: 39, baseType: !31, size: 8, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !147, file: !148, line: 40, baseType: !31, size: 8, offset: 72)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !147, file: !148, line: 41, baseType: !13, size: 16, offset: 80)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !147, file: !148, line: 42, baseType: !31, size: 8, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !147, file: !148, line: 43, baseType: !31, size: 8, offset: 104)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !147, file: !148, line: 44, baseType: !31, size: 8, offset: 112)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !147, file: !148, line: 45, baseType: !99, size: 16, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !147, file: !148, line: 46, baseType: !31, size: 8, offset: 144)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !147, file: !148, line: 47, baseType: !31, size: 8, offset: 152)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !147, file: !148, line: 48, baseType: !31, size: 8, offset: 160)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !147, file: !148, line: 49, baseType: !31, size: 8, offset: 168)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !147, file: !148, line: 50, baseType: !31, size: 8, offset: 176)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !147, file: !148, line: 51, baseType: !31, size: 8, offset: 184)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !147, file: !148, line: 52, baseType: !31, size: 8, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !147, file: !148, line: 53, baseType: !31, size: 8, offset: 200)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !147, file: !148, line: 54, baseType: !74, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !147, file: !148, line: 55, baseType: !20, size: 32, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !147, file: !148, line: 56, baseType: !20, size: 32, offset: 352)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !147, file: !148, line: 57, baseType: !20, size: 32, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !147, file: !148, line: 58, baseType: !20, size: 32, offset: 416)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !147, file: !148, line: 60, baseType: !172, size: 640, offset: 448)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179, !260, !261, !377, !378}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !172, file: !6, line: 894, baseType: !74, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !172, file: !6, line: 895, baseType: !74, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !172, file: !6, line: 896, baseType: !74, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !172, file: !6, line: 897, baseType: !74, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !172, file: !6, line: 898, baseType: !74, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !172, file: !6, line: 899, baseType: !180, size: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !182)
!182 = !{!183, !203, !219}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !181, file: !6, line: 876, baseType: !184, size: 448)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !202}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !184, file: !6, line: 829, baseType: !180, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !184, file: !6, line: 829, baseType: !31, size: 8, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !184, file: !6, line: 829, baseType: !31, size: 8, offset: 72)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !184, file: !6, line: 829, baseType: !13, size: 16, offset: 80)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !184, file: !6, line: 829, baseType: !74, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !6, line: 829, baseType: !180, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !184, file: !6, line: 829, baseType: !79, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !184, file: !6, line: 829, baseType: !194, size: 64, offset: 320)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !194, file: !6, line: 717, baseType: !50, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !194, file: !6, line: 718, baseType: !20, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !194, file: !6, line: 719, baseType: !62, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !194, file: !6, line: 720, baseType: !74, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !194, file: !6, line: 721, baseType: !62, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !194, file: !6, line: 722, baseType: !180, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !184, file: !6, line: 829, baseType: !31, size: 8, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !181, file: !6, line: 877, baseType: !204, size: 640)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !204, file: !6, line: 836, baseType: !180, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !204, file: !6, line: 836, baseType: !31, size: 8, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !6, line: 836, baseType: !31, size: 8, offset: 72)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !204, file: !6, line: 836, baseType: !13, size: 16, offset: 80)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !204, file: !6, line: 836, baseType: !74, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !204, file: !6, line: 836, baseType: !180, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !204, file: !6, line: 836, baseType: !79, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !204, file: !6, line: 836, baseType: !194, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !204, file: !6, line: 836, baseType: !31, size: 8, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !204, file: !6, line: 836, baseType: !62, size: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !204, file: !6, line: 837, baseType: !74, size: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !204, file: !6, line: 838, baseType: !20, size: 32, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !6, line: 839, baseType: !20, size: 32, offset: 608)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !181, file: !6, line: 878, baseType: !220, size: 1600)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !220, file: !6, line: 847, baseType: !180, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !220, file: !6, line: 847, baseType: !31, size: 8, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !220, file: !6, line: 847, baseType: !31, size: 8, offset: 72)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !220, file: !6, line: 847, baseType: !13, size: 16, offset: 80)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !220, file: !6, line: 847, baseType: !74, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !6, line: 847, baseType: !180, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !220, file: !6, line: 847, baseType: !79, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !220, file: !6, line: 847, baseType: !194, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !220, file: !6, line: 847, baseType: !31, size: 8, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !220, file: !6, line: 847, baseType: !180, size: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !220, file: !6, line: 848, baseType: !180, size: 64, offset: 512)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !220, file: !6, line: 849, baseType: !62, size: 64, offset: 576)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !220, file: !6, line: 850, baseType: !31, size: 8, offset: 640)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !220, file: !6, line: 851, baseType: !62, size: 64, offset: 704)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !220, file: !6, line: 852, baseType: !62, size: 64, offset: 768)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !220, file: !6, line: 853, baseType: !62, size: 64, offset: 832)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !220, file: !6, line: 854, baseType: !92, size: 32, offset: 896)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !220, file: !6, line: 855, baseType: !20, size: 32, offset: 928)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !220, file: !6, line: 856, baseType: !20, size: 32, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !220, file: !6, line: 857, baseType: !20, size: 32, offset: 992)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !220, file: !6, line: 858, baseType: !20, size: 32, offset: 1024)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !220, file: !6, line: 859, baseType: !20, size: 32, offset: 1056)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !220, file: !6, line: 860, baseType: !20, size: 32, offset: 1088)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !220, file: !6, line: 861, baseType: !20, size: 32, offset: 1120)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !220, file: !6, line: 862, baseType: !20, size: 32, offset: 1152)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !220, file: !6, line: 863, baseType: !20, size: 32, offset: 1184)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !220, file: !6, line: 864, baseType: !20, size: 32, offset: 1216)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !220, file: !6, line: 865, baseType: !20, size: 32, offset: 1248)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !220, file: !6, line: 866, baseType: !20, size: 32, offset: 1280)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !220, file: !6, line: 867, baseType: !20, size: 32, offset: 1312)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !220, file: !6, line: 868, baseType: !13, size: 16, offset: 1344)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !220, file: !6, line: 869, baseType: !31, size: 8, offset: 1360)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !220, file: !6, line: 870, baseType: !31, size: 8, offset: 1368)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !220, file: !6, line: 871, baseType: !31, size: 8, offset: 1376)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !220, file: !6, line: 872, baseType: !257, size: 160, offset: 1384)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 160, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 20)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !172, file: !6, line: 900, baseType: !79, size: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !172, file: !6, line: 901, baseType: !262, size: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !264)
!264 = !{!265, !273, !286, !295, !304, !317, !331, !343, !355}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !263, file: !6, line: 664, baseType: !266, size: 128)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !267)
!267 = !{!268, !269, !270, !271, !272}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !6, line: 568, baseType: !123, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !266, file: !6, line: 568, baseType: !31, size: 8, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !6, line: 568, baseType: !31, size: 8, offset: 72)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !266, file: !6, line: 568, baseType: !13, size: 16, offset: 80)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !266, file: !6, line: 568, baseType: !13, size: 16, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !263, file: !6, line: 665, baseType: !274, size: 384)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !6, line: 594, baseType: !123, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !274, file: !6, line: 594, baseType: !31, size: 8, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !6, line: 594, baseType: !31, size: 8, offset: 72)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !274, file: !6, line: 594, baseType: !13, size: 16, offset: 80)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !274, file: !6, line: 594, baseType: !13, size: 16, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !274, file: !6, line: 594, baseType: !13, size: 16, offset: 112)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !274, file: !6, line: 595, baseType: !180, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !274, file: !6, line: 596, baseType: !74, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !274, file: !6, line: 597, baseType: !74, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !274, file: !6, line: 598, baseType: !50, size: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !263, file: !6, line: 666, baseType: !287, size: 192)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !6, line: 574, baseType: !123, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !6, line: 574, baseType: !31, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !6, line: 574, baseType: !31, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !6, line: 574, baseType: !13, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !6, line: 574, baseType: !13, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !287, file: !6, line: 574, baseType: !22, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !263, file: !6, line: 667, baseType: !296, size: 192)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !6, line: 605, baseType: !123, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !6, line: 605, baseType: !31, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !6, line: 605, baseType: !31, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !6, line: 605, baseType: !13, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !6, line: 605, baseType: !13, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !296, file: !6, line: 605, baseType: !79, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !263, file: !6, line: 668, baseType: !305, size: 448)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !6, line: 609, baseType: !123, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !6, line: 609, baseType: !31, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !6, line: 609, baseType: !31, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !6, line: 609, baseType: !13, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !6, line: 609, baseType: !13, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !305, file: !6, line: 609, baseType: !20, size: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !305, file: !6, line: 610, baseType: !180, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !305, file: !6, line: 611, baseType: !74, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !305, file: !6, line: 612, baseType: !74, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !305, file: !6, line: 613, baseType: !20, size: 32, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !263, file: !6, line: 669, baseType: !318, size: 512)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !6, line: 581, baseType: !123, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !6, line: 581, baseType: !31, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !6, line: 581, baseType: !31, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !6, line: 581, baseType: !13, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !318, file: !6, line: 581, baseType: !13, size: 16, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !318, file: !6, line: 581, baseType: !20, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !318, file: !6, line: 582, baseType: !22, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !318, file: !6, line: 583, baseType: !22, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !318, file: !6, line: 584, baseType: !146, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !318, file: !6, line: 585, baseType: !123, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !318, file: !6, line: 586, baseType: !20, size: 32, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !263, file: !6, line: 670, baseType: !332, size: 320)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !6, line: 621, baseType: !123, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !6, line: 621, baseType: !31, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !6, line: 621, baseType: !31, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !6, line: 621, baseType: !13, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !6, line: 621, baseType: !13, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !332, file: !6, line: 621, baseType: !31, size: 8, offset: 112)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !332, file: !6, line: 622, baseType: !146, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !332, file: !6, line: 623, baseType: !22, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !332, file: !6, line: 624, baseType: !50, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !263, file: !6, line: 671, baseType: !344, size: 640)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !6, line: 632, baseType: !123, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !344, file: !6, line: 632, baseType: !31, size: 8, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !6, line: 632, baseType: !31, size: 8, offset: 72)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !344, file: !6, line: 632, baseType: !13, size: 16, offset: 80)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !344, file: !6, line: 632, baseType: !13, size: 16, offset: 96)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !344, file: !6, line: 633, baseType: !352, size: 512, offset: 128)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 8)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !263, file: !6, line: 672, baseType: !356, size: 320)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !6, line: 655, baseType: !123, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !356, file: !6, line: 655, baseType: !31, size: 8, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !6, line: 655, baseType: !31, size: 8, offset: 72)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !356, file: !6, line: 655, baseType: !13, size: 16, offset: 80)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !356, file: !6, line: 655, baseType: !13, size: 16, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !356, file: !6, line: 655, baseType: !31, size: 8, offset: 112)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !356, file: !6, line: 656, baseType: !79, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !356, file: !6, line: 657, baseType: !22, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !356, file: !6, line: 658, baseType: !367, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !369)
!369 = !{!370, !376}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !368, file: !6, line: 646, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1052, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375, !20, !123}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !123)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !368, file: !6, line: 647, baseType: !123, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !172, file: !6, line: 902, baseType: !180, size: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !172, file: !6, line: 903, baseType: !20, size: 32, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !147, file: !148, line: 61, baseType: !20, size: 32, offset: 1088)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !147, file: !148, line: 62, baseType: !20, size: 32, offset: 1120)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !147, file: !148, line: 63, baseType: !13, size: 16, offset: 1152)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !147, file: !148, line: 64, baseType: !31, size: 8, offset: 1168)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !147, file: !148, line: 66, baseType: !384, size: 2688, offset: 1216)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 2688, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 7)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !147, file: !148, line: 67, baseType: !388, size: 3072, offset: 3904)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 3072, elements: !353)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !147, file: !148, line: 68, baseType: !390, size: 576, offset: 6976)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 576, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 9)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !147, file: !148, line: 69, baseType: !110, size: 64, offset: 7552)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !147, file: !148, line: 71, baseType: !74, size: 64, offset: 7616)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !147, file: !148, line: 72, baseType: !110, size: 64, offset: 7680)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !147, file: !148, line: 73, baseType: !262, size: 64, offset: 7744)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !147, file: !148, line: 74, baseType: !79, size: 64, offset: 7808)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !147, file: !148, line: 75, baseType: !22, size: 64, offset: 7872)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !147, file: !148, line: 76, baseType: !79, size: 64, offset: 7936)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !147, file: !148, line: 77, baseType: !180, size: 64, offset: 8000)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !147, file: !148, line: 78, baseType: !22, size: 64, offset: 8064)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !147, file: !148, line: 79, baseType: !79, size: 64, offset: 8128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !147, file: !148, line: 80, baseType: !62, size: 64, offset: 8192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !147, file: !148, line: 81, baseType: !180, size: 64, offset: 8256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !147, file: !148, line: 82, baseType: !406, size: 64, offset: 8320)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !415}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !408, file: !6, line: 706, baseType: !20, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !408, file: !6, line: 707, baseType: !20, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !6, line: 708, baseType: !13, size: 16, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !408, file: !6, line: 709, baseType: !31, size: 8, offset: 80)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !408, file: !6, line: 710, baseType: !31, size: 8, offset: 88)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !408, file: !6, line: 711, baseType: !31, size: 8, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !147, file: !148, line: 83, baseType: !180, size: 64, offset: 8384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !147, file: !148, line: 84, baseType: !22, size: 64, offset: 8448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !147, file: !148, line: 85, baseType: !262, size: 64, offset: 8512)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !147, file: !148, line: 86, baseType: !22, size: 64, offset: 8576)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !147, file: !148, line: 87, baseType: !262, size: 64, offset: 8640)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !147, file: !148, line: 88, baseType: !180, size: 64, offset: 8704)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !147, file: !148, line: 89, baseType: !180, size: 64, offset: 8768)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !147, file: !148, line: 90, baseType: !424, size: 64, offset: 8832)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !147, file: !148, line: 91, baseType: !426, size: 64, offset: 8896)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!18, !146, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !147, file: !148, line: 92, baseType: !432, size: 64, offset: 8960)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !143)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !139, file: !24, line: 152, baseType: !22, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !125, file: !24, line: 155, baseType: !20, size: 32, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !125, file: !24, line: 156, baseType: !99, size: 16, offset: 416)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !125, file: !24, line: 157, baseType: !31, size: 8, offset: 432)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !23, file: !24, line: 375, baseType: !438, size: 576)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !24, line: 122, size: 576, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !438, file: !24, line: 123, baseType: !22, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !438, file: !24, line: 123, baseType: !31, size: 8, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !438, file: !24, line: 123, baseType: !31, size: 8, offset: 72)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !438, file: !24, line: 123, baseType: !13, size: 16, offset: 80)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !438, file: !24, line: 123, baseType: !31, size: 8, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !438, file: !24, line: 123, baseType: !31, size: 8, offset: 104)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !438, file: !24, line: 124, baseType: !13, size: 16, offset: 112)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !438, file: !24, line: 125, baseType: !123, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !438, file: !24, line: 126, baseType: !50, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !438, file: !24, line: 127, baseType: !424, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !438, file: !24, line: 128, baseType: !22, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !438, file: !24, line: 129, baseType: !22, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !438, file: !24, line: 130, baseType: !79, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !438, file: !24, line: 131, baseType: !31, size: 8, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !23, file: !24, line: 376, baseType: !455, size: 448)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !24, line: 134, size: 448, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !468}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !455, file: !24, line: 135, baseType: !22, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !455, file: !24, line: 135, baseType: !31, size: 8, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !455, file: !24, line: 135, baseType: !31, size: 8, offset: 72)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !455, file: !24, line: 135, baseType: !13, size: 16, offset: 80)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !24, line: 135, baseType: !31, size: 8, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !455, file: !24, line: 135, baseType: !31, size: 8, offset: 104)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !455, file: !24, line: 136, baseType: !79, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !455, file: !24, line: 137, baseType: !22, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !24, line: 138, baseType: !22, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !455, file: !24, line: 139, baseType: !467, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !50)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !455, file: !24, line: 140, baseType: !20, size: 32, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !23, file: !24, line: 377, baseType: !470, size: 320)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !24, line: 184, size: 320, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !481}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !470, file: !24, line: 185, baseType: !22, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !470, file: !24, line: 185, baseType: !31, size: 8, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !24, line: 185, baseType: !31, size: 8, offset: 72)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !470, file: !24, line: 185, baseType: !13, size: 16, offset: 80)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !24, line: 185, baseType: !31, size: 8, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !470, file: !24, line: 185, baseType: !478, size: 128, offset: 128)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 2)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !470, file: !24, line: 185, baseType: !22, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !23, file: !24, line: 378, baseType: !483, size: 384)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !24, line: 187, size: 384, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !491, !492}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !483, file: !24, line: 188, baseType: !22, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !483, file: !24, line: 188, baseType: !31, size: 8, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !483, file: !24, line: 188, baseType: !31, size: 8, offset: 72)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !483, file: !24, line: 188, baseType: !13, size: 16, offset: 80)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !24, line: 188, baseType: !31, size: 8, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !483, file: !24, line: 189, baseType: !478, size: 128, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !483, file: !24, line: 189, baseType: !22, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !483, file: !24, line: 189, baseType: !493, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !495)
!495 = !{!496, !497, !498, !499, !507, !522, !554, !555, !556, !557, !558, !559}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !494, file: !6, line: 481, baseType: !79, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !494, file: !6, line: 482, baseType: !493, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !6, line: 483, baseType: !493, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !494, file: !6, line: 484, baseType: !500, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !502)
!502 = !{!503, !504, !505, !506}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !501, file: !6, line: 498, baseType: !500, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !501, file: !6, line: 499, baseType: !500, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !501, file: !6, line: 500, baseType: !493, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !501, file: !6, line: 501, baseType: !20, size: 32, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !494, file: !6, line: 485, baseType: !508, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !510)
!510 = !{!511, !516, !517, !518, !519, !520, !521}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !509, file: !6, line: 467, baseType: !512, size: 128)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !512, file: !6, line: 460, baseType: !31, size: 8)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !512, file: !6, line: 461, baseType: !50, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !509, file: !6, line: 468, baseType: !512, size: 128, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !509, file: !6, line: 469, baseType: !13, size: 16, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !509, file: !6, line: 470, baseType: !31, size: 8, offset: 272)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !509, file: !6, line: 471, baseType: !31, size: 8, offset: 280)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !509, file: !6, line: 472, baseType: !31, size: 8, offset: 288)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !509, file: !6, line: 473, baseType: !31, size: 8, offset: 296)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !494, file: !6, line: 486, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !525)
!525 = !{!526, !549, !550, !551, !552, !553}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !524, file: !6, line: 449, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !528)
!528 = !{!529, !530, !543}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !527, file: !6, line: 439, baseType: !79, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !527, file: !6, line: 440, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !533)
!533 = !{!534, !539, !540, !541, !542}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !532, file: !6, line: 420, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1049, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!20, !375, !20, !123}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !532, file: !6, line: 421, baseType: !123, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !532, file: !6, line: 422, baseType: !79, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !532, file: !6, line: 423, baseType: !31, size: 8, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !532, file: !6, line: 424, baseType: !31, size: 8, offset: 200)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !527, file: !6, line: 441, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !545, file: !6, line: 430, baseType: !79, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !545, file: !6, line: 431, baseType: !544, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !524, file: !6, line: 450, baseType: !508, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !524, file: !6, line: 451, baseType: !31, size: 8, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !524, file: !6, line: 452, baseType: !31, size: 8, offset: 136)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !524, file: !6, line: 453, baseType: !31, size: 8, offset: 144)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !524, file: !6, line: 454, baseType: !31, size: 8, offset: 152)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !494, file: !6, line: 487, baseType: !50, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !494, file: !6, line: 488, baseType: !20, size: 32, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !494, file: !6, line: 489, baseType: !13, size: 16, offset: 480)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !494, file: !6, line: 490, baseType: !13, size: 16, offset: 496)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !494, file: !6, line: 491, baseType: !31, size: 8, offset: 512)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !494, file: !6, line: 492, baseType: !31, size: 8, offset: 520)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !23, file: !24, line: 379, baseType: !561, size: 384)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !24, line: 192, size: 384, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !561, file: !24, line: 193, baseType: !22, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !561, file: !24, line: 193, baseType: !31, size: 8, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !561, file: !24, line: 193, baseType: !31, size: 8, offset: 72)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !561, file: !24, line: 193, baseType: !13, size: 16, offset: 80)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !24, line: 193, baseType: !31, size: 8, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !561, file: !24, line: 193, baseType: !478, size: 128, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !561, file: !24, line: 193, baseType: !22, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !561, file: !24, line: 193, baseType: !20, size: 32, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !561, file: !24, line: 194, baseType: !20, size: 32, offset: 352)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !23, file: !24, line: 380, baseType: !573, size: 384)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !24, line: 197, size: 384, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !583, !584}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !573, file: !24, line: 198, baseType: !22, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !573, file: !24, line: 198, baseType: !31, size: 8, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !573, file: !24, line: 198, baseType: !31, size: 8, offset: 72)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !573, file: !24, line: 198, baseType: !13, size: 16, offset: 80)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !24, line: 198, baseType: !31, size: 8, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !573, file: !24, line: 200, baseType: !31, size: 8, offset: 104)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !573, file: !24, line: 201, baseType: !31, size: 8, offset: 112)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !573, file: !24, line: 202, baseType: !478, size: 128, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !573, file: !24, line: 202, baseType: !22, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !573, file: !24, line: 202, baseType: !585, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !50)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !23, file: !24, line: 381, baseType: !587, size: 320)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !24, line: 205, size: 320, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !24, line: 206, baseType: !22, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !24, line: 206, baseType: !31, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !24, line: 206, baseType: !31, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !24, line: 206, baseType: !13, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !24, line: 206, baseType: !31, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !587, file: !24, line: 206, baseType: !478, size: 128, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !587, file: !24, line: 206, baseType: !22, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !23, file: !24, line: 382, baseType: !597, size: 384)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !24, line: 233, size: 384, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !24, line: 234, baseType: !22, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !24, line: 234, baseType: !31, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !24, line: 234, baseType: !31, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !24, line: 234, baseType: !13, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !24, line: 234, baseType: !31, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !597, file: !24, line: 234, baseType: !31, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !597, file: !24, line: 234, baseType: !31, size: 8, offset: 112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !597, file: !24, line: 234, baseType: !31, size: 8, offset: 120)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !24, line: 234, baseType: !79, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !597, file: !24, line: 234, baseType: !20, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !597, file: !24, line: 234, baseType: !20, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !24, line: 234, baseType: !20, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !597, file: !24, line: 234, baseType: !31, size: 8, offset: 288)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !597, file: !24, line: 234, baseType: !31, size: 8, offset: 296)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !597, file: !24, line: 234, baseType: !22, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !23, file: !24, line: 383, baseType: !615, size: 576)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !24, line: 237, size: 576, elements: !616)
!616 = !{!617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !615, file: !24, line: 238, baseType: !22, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !615, file: !24, line: 238, baseType: !31, size: 8, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !615, file: !24, line: 238, baseType: !31, size: 8, offset: 72)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !615, file: !24, line: 238, baseType: !13, size: 16, offset: 80)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !615, file: !24, line: 238, baseType: !31, size: 8, offset: 96)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !615, file: !24, line: 238, baseType: !31, size: 8, offset: 104)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !615, file: !24, line: 238, baseType: !31, size: 8, offset: 112)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !615, file: !24, line: 238, baseType: !31, size: 8, offset: 120)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !615, file: !24, line: 238, baseType: !79, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !615, file: !24, line: 238, baseType: !20, size: 32, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !615, file: !24, line: 238, baseType: !20, size: 32, offset: 224)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !615, file: !24, line: 238, baseType: !20, size: 32, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !615, file: !24, line: 238, baseType: !31, size: 8, offset: 288)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !615, file: !24, line: 238, baseType: !31, size: 8, offset: 296)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !615, file: !24, line: 238, baseType: !13, size: 16, offset: 304)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !615, file: !24, line: 239, baseType: !22, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !615, file: !24, line: 240, baseType: !74, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !615, file: !24, line: 241, baseType: !13, size: 16, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !615, file: !24, line: 242, baseType: !74, size: 64, offset: 512)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !23, file: !24, line: 384, baseType: !637, size: 384)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !24, line: 262, size: 384, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !637, file: !24, line: 263, baseType: !22, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !637, file: !24, line: 263, baseType: !31, size: 8, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !637, file: !24, line: 263, baseType: !31, size: 8, offset: 72)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !637, file: !24, line: 263, baseType: !13, size: 16, offset: 80)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !637, file: !24, line: 263, baseType: !31, size: 8, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !637, file: !24, line: 263, baseType: !31, size: 8, offset: 104)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !637, file: !24, line: 263, baseType: !31, size: 8, offset: 112)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !637, file: !24, line: 263, baseType: !31, size: 8, offset: 120)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !637, file: !24, line: 263, baseType: !79, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !637, file: !24, line: 263, baseType: !20, size: 32, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !637, file: !24, line: 263, baseType: !20, size: 32, offset: 224)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !637, file: !24, line: 263, baseType: !20, size: 32, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !637, file: !24, line: 263, baseType: !31, size: 8, offset: 288)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !637, file: !24, line: 263, baseType: !31, size: 8, offset: 296)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !637, file: !24, line: 263, baseType: !31, size: 8, offset: 304)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !637, file: !24, line: 264, baseType: !22, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !23, file: !24, line: 385, baseType: !656, size: 448)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !24, line: 245, size: 448, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !656, file: !24, line: 246, baseType: !22, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !656, file: !24, line: 246, baseType: !31, size: 8, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !24, line: 246, baseType: !31, size: 8, offset: 72)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !656, file: !24, line: 246, baseType: !13, size: 16, offset: 80)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !24, line: 246, baseType: !31, size: 8, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !656, file: !24, line: 246, baseType: !31, size: 8, offset: 104)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !656, file: !24, line: 246, baseType: !31, size: 8, offset: 112)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !656, file: !24, line: 246, baseType: !31, size: 8, offset: 120)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !656, file: !24, line: 246, baseType: !79, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !656, file: !24, line: 246, baseType: !20, size: 32, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !656, file: !24, line: 246, baseType: !20, size: 32, offset: 224)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !656, file: !24, line: 246, baseType: !20, size: 32, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !656, file: !24, line: 246, baseType: !31, size: 8, offset: 288)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !656, file: !24, line: 246, baseType: !31, size: 8, offset: 296)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !656, file: !24, line: 246, baseType: !22, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !656, file: !24, line: 247, baseType: !22, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !23, file: !24, line: 386, baseType: !675, size: 448)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !24, line: 250, size: 448, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !675, file: !24, line: 251, baseType: !22, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !675, file: !24, line: 251, baseType: !31, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !24, line: 251, baseType: !31, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !675, file: !24, line: 251, baseType: !13, size: 16, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !24, line: 251, baseType: !31, size: 8, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !675, file: !24, line: 251, baseType: !31, size: 8, offset: 104)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !675, file: !24, line: 251, baseType: !31, size: 8, offset: 112)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !675, file: !24, line: 251, baseType: !31, size: 8, offset: 120)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !675, file: !24, line: 251, baseType: !79, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !675, file: !24, line: 251, baseType: !20, size: 32, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !675, file: !24, line: 251, baseType: !20, size: 32, offset: 224)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !675, file: !24, line: 251, baseType: !20, size: 32, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !675, file: !24, line: 251, baseType: !31, size: 8, offset: 288)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !675, file: !24, line: 251, baseType: !31, size: 8, offset: 296)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !675, file: !24, line: 256, baseType: !22, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !675, file: !24, line: 257, baseType: !22, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !23, file: !24, line: 387, baseType: !694, size: 512)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !24, line: 273, size: 512, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !694, file: !24, line: 274, baseType: !22, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !694, file: !24, line: 274, baseType: !31, size: 8, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !24, line: 274, baseType: !31, size: 8, offset: 72)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !694, file: !24, line: 274, baseType: !13, size: 16, offset: 80)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !24, line: 274, baseType: !31, size: 8, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !694, file: !24, line: 274, baseType: !79, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !694, file: !24, line: 275, baseType: !20, size: 32, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !694, file: !24, line: 276, baseType: !371, size: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !694, file: !24, line: 277, baseType: !123, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !24, line: 278, baseType: !478, size: 128, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !23, file: !24, line: 388, baseType: !707, size: 512)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !24, line: 281, size: 512, elements: !708)
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !722, !723, !724, !730, !731}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !707, file: !24, line: 282, baseType: !22, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !707, file: !24, line: 282, baseType: !31, size: 8, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !707, file: !24, line: 282, baseType: !31, size: 8, offset: 72)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !707, file: !24, line: 282, baseType: !13, size: 16, offset: 80)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !24, line: 282, baseType: !31, size: 8, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !707, file: !24, line: 282, baseType: !31, size: 8, offset: 104)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !707, file: !24, line: 283, baseType: !31, size: 8, offset: 112)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !707, file: !24, line: 284, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1084, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!18, !20, !467, !20, !721, !123, !123}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !707, file: !24, line: 285, baseType: !79, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !707, file: !24, line: 286, baseType: !123, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !707, file: !24, line: 287, baseType: !725, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1102, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!18, !375, !20, !123, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !707, file: !24, line: 288, baseType: !22, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !707, file: !24, line: 289, baseType: !22, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !23, file: !24, line: 389, baseType: !733, size: 512)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !24, line: 307, size: 512, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !733, file: !24, line: 308, baseType: !22, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !733, file: !24, line: 308, baseType: !31, size: 8, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !733, file: !24, line: 308, baseType: !31, size: 8, offset: 72)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !733, file: !24, line: 308, baseType: !13, size: 16, offset: 80)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !24, line: 308, baseType: !31, size: 8, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !733, file: !24, line: 308, baseType: !31, size: 8, offset: 104)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !733, file: !24, line: 309, baseType: !31, size: 8, offset: 112)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !733, file: !24, line: 310, baseType: !31, size: 8, offset: 120)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !733, file: !24, line: 311, baseType: !123, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !733, file: !24, line: 312, baseType: !79, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !733, file: !24, line: 313, baseType: !110, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !733, file: !24, line: 314, baseType: !74, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !733, file: !24, line: 315, baseType: !74, size: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !733, file: !24, line: 316, baseType: !20, size: 32, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !23, file: !24, line: 390, baseType: !750, size: 448)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !24, line: 340, size: 448, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !760, !761}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !750, file: !24, line: 341, baseType: !22, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !750, file: !24, line: 341, baseType: !31, size: 8, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !750, file: !24, line: 341, baseType: !31, size: 8, offset: 72)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !750, file: !24, line: 341, baseType: !13, size: 16, offset: 80)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !24, line: 341, baseType: !31, size: 8, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !750, file: !24, line: 341, baseType: !79, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !750, file: !24, line: 342, baseType: !79, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !750, file: !24, line: 343, baseType: !123, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !750, file: !24, line: 344, baseType: !74, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !750, file: !24, line: 345, baseType: !20, size: 32, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !23, file: !24, line: 391, baseType: !763, size: 256)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !24, line: 350, size: 256, elements: !764)
!764 = !{!765, !766, !767, !768, !769, !770, !775}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !763, file: !24, line: 351, baseType: !22, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !763, file: !24, line: 351, baseType: !31, size: 8, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !763, file: !24, line: 351, baseType: !31, size: 8, offset: 72)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !763, file: !24, line: 351, baseType: !13, size: 16, offset: 80)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !763, file: !24, line: 351, baseType: !31, size: 8, offset: 96)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !763, file: !24, line: 351, baseType: !771, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1055, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !375, !123}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !763, file: !24, line: 352, baseType: !123, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !23, file: !24, line: 392, baseType: !777, size: 192)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !24, line: 357, size: 192, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !777, file: !24, line: 358, baseType: !22, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !777, file: !24, line: 358, baseType: !31, size: 8, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !777, file: !24, line: 358, baseType: !31, size: 8, offset: 72)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !777, file: !24, line: 358, baseType: !13, size: 16, offset: 80)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !24, line: 358, baseType: !31, size: 8, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !24, line: 358, baseType: !22, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !23, file: !24, line: 399, baseType: !80, size: 384)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!787 = !{!0}
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 64, elements: !353)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!790 = !{i32 7, !"Dwarf Version", i32 4}
!791 = !{i32 2, !"Debug Info Version", i32 3}
!792 = !{i32 1, !"wchar_size", i32 2}
!793 = !{i32 1, !"Code Model", i32 2}
!794 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!795 = distinct !DISubprogram(name: "acpi_ds_clear_implicit_return", scope: !3, file: !3, line: 34, type: !796, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !798)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !146}
!798 = !{}
!799 = !DILocalVariable(name: "walk_state", arg: 1, scope: !795, file: !3, line: 34, type: !146)
!800 = !DILocation(line: 34, column: 60, scope: !795)
!801 = !DILocation(line: 41, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !795, file: !3, line: 41, column: 6)
!803 = !DILocation(line: 41, column: 6, scope: !795)
!804 = !DILocation(line: 42, column: 3, scope: !805)
!805 = distinct !DILexicalBlock(scope: !802, file: !3, line: 41, column: 42)
!806 = !DILocation(line: 45, column: 6, scope: !807)
!807 = distinct !DILexicalBlock(scope: !795, file: !3, line: 45, column: 6)
!808 = !DILocation(line: 45, column: 18, scope: !807)
!809 = !DILocation(line: 45, column: 6, scope: !795)
!810 = !DILocation(line: 55, column: 28, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !3, line: 45, column: 39)
!812 = !DILocation(line: 55, column: 40, scope: !811)
!813 = !DILocation(line: 55, column: 3, scope: !811)
!814 = !DILocation(line: 56, column: 3, scope: !811)
!815 = !DILocation(line: 56, column: 15, scope: !811)
!816 = !DILocation(line: 56, column: 35, scope: !811)
!817 = !DILocation(line: 57, column: 2, scope: !811)
!818 = !DILocation(line: 58, column: 1, scope: !795)
!819 = distinct !DISubprogram(name: "acpi_ds_do_implicit_return", scope: !3, file: !3, line: 79, type: !820, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !798)
!820 = !DISubroutineType(types: !821)
!821 = !{!31, !22, !146, !31}
!822 = !DILocalVariable(name: "return_desc", arg: 1, scope: !819, file: !3, line: 79, type: !22)
!823 = !DILocation(line: 79, column: 55, scope: !819)
!824 = !DILocalVariable(name: "walk_state", arg: 2, scope: !819, file: !3, line: 80, type: !146)
!825 = !DILocation(line: 80, column: 31, scope: !819)
!826 = !DILocalVariable(name: "add_reference", arg: 3, scope: !819, file: !3, line: 80, type: !31)
!827 = !DILocation(line: 80, column: 46, scope: !819)
!828 = !DILocation(line: 88, column: 8, scope: !829)
!829 = distinct !DILexicalBlock(scope: !819, file: !3, line: 88, column: 6)
!830 = !DILocation(line: 88, column: 43, scope: !829)
!831 = !DILocation(line: 88, column: 48, scope: !829)
!832 = !DILocation(line: 88, column: 6, scope: !819)
!833 = !DILocation(line: 89, column: 3, scope: !834)
!834 = distinct !DILexicalBlock(scope: !829, file: !3, line: 88, column: 62)
!835 = !DILocation(line: 102, column: 6, scope: !836)
!836 = distinct !DILexicalBlock(scope: !819, file: !3, line: 102, column: 6)
!837 = !DILocation(line: 102, column: 18, scope: !836)
!838 = !DILocation(line: 102, column: 6, scope: !819)
!839 = !DILocation(line: 103, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 103, column: 7)
!841 = distinct !DILexicalBlock(scope: !836, file: !3, line: 102, column: 39)
!842 = !DILocation(line: 103, column: 19, scope: !840)
!843 = !DILocation(line: 103, column: 42, scope: !840)
!844 = !DILocation(line: 103, column: 39, scope: !840)
!845 = !DILocation(line: 103, column: 7, scope: !841)
!846 = !DILocation(line: 104, column: 4, scope: !847)
!847 = distinct !DILexicalBlock(scope: !840, file: !3, line: 103, column: 55)
!848 = !DILocation(line: 106, column: 33, scope: !841)
!849 = !DILocation(line: 106, column: 3, scope: !841)
!850 = !DILocation(line: 107, column: 2, scope: !841)
!851 = !DILocation(line: 111, column: 36, scope: !819)
!852 = !DILocation(line: 111, column: 2, scope: !819)
!853 = !DILocation(line: 111, column: 14, scope: !819)
!854 = !DILocation(line: 111, column: 34, scope: !819)
!855 = !DILocation(line: 112, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !819, file: !3, line: 112, column: 6)
!857 = !DILocation(line: 112, column: 6, scope: !819)
!858 = !DILocation(line: 113, column: 25, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !3, line: 112, column: 21)
!860 = !DILocation(line: 113, column: 3, scope: !859)
!861 = !DILocation(line: 114, column: 2, scope: !859)
!862 = !DILocation(line: 116, column: 2, scope: !819)
!863 = !DILocation(line: 117, column: 1, scope: !819)
!864 = distinct !DISubprogram(name: "acpi_ds_is_result_used", scope: !3, file: !3, line: 133, type: !865, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !798)
!865 = !DISubroutineType(types: !866)
!866 = !{!31, !180, !146}
!867 = !DILocalVariable(name: "op", arg: 1, scope: !864, file: !3, line: 133, type: !180)
!868 = !DILocation(line: 133, column: 50, scope: !864)
!869 = !DILocalVariable(name: "walk_state", arg: 2, scope: !864, file: !3, line: 134, type: !146)
!870 = !DILocation(line: 134, column: 35, scope: !864)
!871 = !DILocalVariable(name: "parent_info", scope: !864, file: !3, line: 136, type: !406)
!872 = !DILocation(line: 136, column: 33, scope: !864)
!873 = !DILocation(line: 142, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !864, file: !3, line: 142, column: 6)
!875 = !DILocation(line: 142, column: 6, scope: !864)
!876 = !DILocation(line: 143, column: 3, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !3, line: 142, column: 11)
!878 = !DILocation(line: 144, column: 3, scope: !877)
!879 = !DILocation(line: 156, column: 35, scope: !864)
!880 = !DILocation(line: 156, column: 47, scope: !864)
!881 = !DILocation(line: 156, column: 59, scope: !864)
!882 = !DILocation(line: 156, column: 8, scope: !864)
!883 = !DILocation(line: 167, column: 8, scope: !884)
!884 = distinct !DILexicalBlock(scope: !864, file: !3, line: 167, column: 6)
!885 = !DILocation(line: 167, column: 12, scope: !884)
!886 = !DILocation(line: 167, column: 19, scope: !884)
!887 = !DILocation(line: 167, column: 27, scope: !884)
!888 = !DILocation(line: 168, column: 7, scope: !884)
!889 = !DILocation(line: 168, column: 11, scope: !884)
!890 = !DILocation(line: 168, column: 18, scope: !884)
!891 = !DILocation(line: 168, column: 26, scope: !884)
!892 = !DILocation(line: 168, column: 33, scope: !884)
!893 = !DILocation(line: 168, column: 44, scope: !884)
!894 = !DILocation(line: 167, column: 6, scope: !864)
!895 = !DILocation(line: 176, column: 3, scope: !896)
!896 = distinct !DILexicalBlock(scope: !884, file: !3, line: 168, column: 62)
!897 = !DILocation(line: 182, column: 30, scope: !864)
!898 = !DILocation(line: 182, column: 34, scope: !864)
!899 = !DILocation(line: 182, column: 41, scope: !864)
!900 = !DILocation(line: 182, column: 49, scope: !864)
!901 = !DILocation(line: 182, column: 56, scope: !864)
!902 = !DILocation(line: 182, column: 6, scope: !864)
!903 = !DILocation(line: 181, column: 14, scope: !864)
!904 = !DILocation(line: 183, column: 6, scope: !905)
!905 = distinct !DILexicalBlock(scope: !864, file: !3, line: 183, column: 6)
!906 = !DILocation(line: 183, column: 19, scope: !905)
!907 = !DILocation(line: 183, column: 25, scope: !905)
!908 = !DILocation(line: 183, column: 6, scope: !864)
!909 = !DILocation(line: 184, column: 3, scope: !910)
!910 = distinct !DILexicalBlock(scope: !905, file: !3, line: 183, column: 47)
!911 = !DILocation(line: 185, column: 3, scope: !910)
!912 = !DILocation(line: 194, column: 10, scope: !864)
!913 = !DILocation(line: 194, column: 23, scope: !864)
!914 = !DILocation(line: 194, column: 2, scope: !864)
!915 = !DILocation(line: 197, column: 11, scope: !916)
!916 = distinct !DILexicalBlock(scope: !864, file: !3, line: 194, column: 30)
!917 = !DILocation(line: 197, column: 15, scope: !916)
!918 = !DILocation(line: 197, column: 22, scope: !916)
!919 = !DILocation(line: 197, column: 30, scope: !916)
!920 = !DILocation(line: 197, column: 37, scope: !916)
!921 = !DILocation(line: 197, column: 3, scope: !916)
!922 = !DILocation(line: 202, column: 4, scope: !923)
!923 = distinct !DILexicalBlock(scope: !916, file: !3, line: 197, column: 49)
!924 = !DILocation(line: 210, column: 9, scope: !925)
!925 = distinct !DILexicalBlock(scope: !923, file: !3, line: 210, column: 8)
!926 = !DILocation(line: 210, column: 21, scope: !925)
!927 = !DILocation(line: 210, column: 36, scope: !925)
!928 = !DILocation(line: 210, column: 43, scope: !925)
!929 = !DILocation(line: 210, column: 49, scope: !925)
!930 = !DILocation(line: 211, column: 43, scope: !925)
!931 = !DILocation(line: 212, column: 9, scope: !925)
!932 = !DILocation(line: 212, column: 21, scope: !925)
!933 = !DILocation(line: 212, column: 36, scope: !925)
!934 = !DILocation(line: 212, column: 44, scope: !925)
!935 = !DILocation(line: 213, column: 9, scope: !925)
!936 = !DILocation(line: 212, column: 57, scope: !925)
!937 = !DILocation(line: 210, column: 8, scope: !923)
!938 = !DILocation(line: 214, column: 5, scope: !939)
!939 = distinct !DILexicalBlock(scope: !925, file: !3, line: 213, column: 14)
!940 = !DILocation(line: 216, column: 4, scope: !923)
!941 = !DILocation(line: 222, column: 4, scope: !923)
!942 = !DILocation(line: 227, column: 3, scope: !916)
!943 = !DILocation(line: 234, column: 3, scope: !916)
!944 = !DILocation(line: 238, column: 8, scope: !945)
!945 = distinct !DILexicalBlock(scope: !916, file: !3, line: 238, column: 7)
!946 = !DILocation(line: 238, column: 12, scope: !945)
!947 = !DILocation(line: 238, column: 19, scope: !945)
!948 = !DILocation(line: 238, column: 27, scope: !945)
!949 = !DILocation(line: 238, column: 34, scope: !945)
!950 = !DILocation(line: 238, column: 45, scope: !945)
!951 = !DILocation(line: 238, column: 63, scope: !945)
!952 = !DILocation(line: 239, column: 8, scope: !945)
!953 = !DILocation(line: 239, column: 12, scope: !945)
!954 = !DILocation(line: 239, column: 19, scope: !945)
!955 = !DILocation(line: 239, column: 27, scope: !945)
!956 = !DILocation(line: 239, column: 34, scope: !945)
!957 = !DILocation(line: 239, column: 45, scope: !945)
!958 = !DILocation(line: 240, column: 7, scope: !945)
!959 = !DILocation(line: 240, column: 11, scope: !945)
!960 = !DILocation(line: 240, column: 15, scope: !945)
!961 = !DILocation(line: 240, column: 22, scope: !945)
!962 = !DILocation(line: 240, column: 30, scope: !945)
!963 = !DILocation(line: 240, column: 37, scope: !945)
!964 = !DILocation(line: 240, column: 48, scope: !945)
!965 = !DILocation(line: 241, column: 7, scope: !945)
!966 = !DILocation(line: 241, column: 11, scope: !945)
!967 = !DILocation(line: 241, column: 15, scope: !945)
!968 = !DILocation(line: 241, column: 22, scope: !945)
!969 = !DILocation(line: 241, column: 30, scope: !945)
!970 = !DILocation(line: 241, column: 37, scope: !945)
!971 = !DILocation(line: 241, column: 48, scope: !945)
!972 = !DILocation(line: 242, column: 7, scope: !945)
!973 = !DILocation(line: 242, column: 11, scope: !945)
!974 = !DILocation(line: 242, column: 15, scope: !945)
!975 = !DILocation(line: 242, column: 22, scope: !945)
!976 = !DILocation(line: 242, column: 30, scope: !945)
!977 = !DILocation(line: 242, column: 37, scope: !945)
!978 = !DILocation(line: 242, column: 48, scope: !945)
!979 = !DILocation(line: 244, column: 7, scope: !945)
!980 = !DILocation(line: 244, column: 11, scope: !945)
!981 = !DILocation(line: 244, column: 15, scope: !945)
!982 = !DILocation(line: 244, column: 22, scope: !945)
!983 = !DILocation(line: 244, column: 30, scope: !945)
!984 = !DILocation(line: 244, column: 37, scope: !945)
!985 = !DILocation(line: 244, column: 48, scope: !945)
!986 = !DILocation(line: 246, column: 7, scope: !945)
!987 = !DILocation(line: 246, column: 11, scope: !945)
!988 = !DILocation(line: 246, column: 15, scope: !945)
!989 = !DILocation(line: 246, column: 22, scope: !945)
!990 = !DILocation(line: 246, column: 30, scope: !945)
!991 = !DILocation(line: 246, column: 37, scope: !945)
!992 = !DILocation(line: 246, column: 48, scope: !945)
!993 = !DILocation(line: 238, column: 7, scope: !916)
!994 = !DILocation(line: 252, column: 4, scope: !995)
!995 = distinct !DILexicalBlock(scope: !945, file: !3, line: 247, column: 24)
!996 = !DILocation(line: 255, column: 3, scope: !916)
!997 = !DILocation(line: 262, column: 3, scope: !916)
!998 = !DILabel(scope: !864, name: "result_used", file: !3, line: 265)
!999 = !DILocation(line: 265, column: 1, scope: !864)
!1000 = !DILocation(line: 272, column: 2, scope: !864)
!1001 = !DILabel(scope: !864, name: "result_not_used", file: !3, line: 274)
!1002 = !DILocation(line: 274, column: 1, scope: !864)
!1003 = !DILocation(line: 281, column: 2, scope: !864)
!1004 = !DILocation(line: 282, column: 1, scope: !864)
!1005 = distinct !DISubprogram(name: "acpi_ds_delete_result_if_not_used", scope: !3, file: !3, line: 302, type: !1006, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !798)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{null, !180, !22, !146}
!1008 = !DILocalVariable(name: "op", arg: 1, scope: !1005, file: !3, line: 302, type: !180)
!1009 = !DILocation(line: 302, column: 60, scope: !1005)
!1010 = !DILocalVariable(name: "result_obj", arg: 2, scope: !1005, file: !3, line: 303, type: !22)
!1011 = !DILocation(line: 303, column: 34, scope: !1005)
!1012 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1005, file: !3, line: 304, type: !146)
!1013 = !DILocation(line: 304, column: 31, scope: !1005)
!1014 = !DILocalVariable(name: "obj_desc", scope: !1005, file: !3, line: 306, type: !22)
!1015 = !DILocation(line: 306, column: 29, scope: !1005)
!1016 = !DILocalVariable(name: "status", scope: !1005, file: !3, line: 307, type: !18)
!1017 = !DILocation(line: 307, column: 14, scope: !1005)
!1018 = !DILocation(line: 311, column: 7, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 311, column: 6)
!1020 = !DILocation(line: 311, column: 6, scope: !1005)
!1021 = !DILocation(line: 312, column: 3, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 311, column: 11)
!1023 = !DILocation(line: 313, column: 3, scope: !1022)
!1024 = !DILocation(line: 316, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 316, column: 6)
!1026 = !DILocation(line: 316, column: 6, scope: !1005)
!1027 = !DILocation(line: 317, column: 3, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 316, column: 19)
!1029 = !DILocation(line: 320, column: 30, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 320, column: 6)
!1031 = !DILocation(line: 320, column: 34, scope: !1030)
!1032 = !DILocation(line: 320, column: 7, scope: !1030)
!1033 = !DILocation(line: 320, column: 6, scope: !1005)
!1034 = !DILocation(line: 324, column: 42, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 320, column: 47)
!1036 = !DILocation(line: 324, column: 12, scope: !1035)
!1037 = !DILocation(line: 324, column: 10, scope: !1035)
!1038 = !DILocation(line: 325, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 325, column: 7)
!1040 = !DILocation(line: 325, column: 7, scope: !1035)
!1041 = !DILocation(line: 326, column: 29, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 325, column: 29)
!1043 = !DILocation(line: 326, column: 4, scope: !1042)
!1044 = !DILocation(line: 327, column: 3, scope: !1042)
!1045 = !DILocation(line: 328, column: 2, scope: !1035)
!1046 = !DILocation(line: 330, column: 2, scope: !1005)
!1047 = !DILocation(line: 331, column: 1, scope: !1005)
!1048 = distinct !DISubprogram(name: "acpi_ds_resolve_operands", scope: !3, file: !3, line: 347, type: !144, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !798)
!1049 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1048, file: !3, line: 347, type: !146)
!1050 = !DILocation(line: 347, column: 62, scope: !1048)
!1051 = !DILocalVariable(name: "i", scope: !1048, file: !3, line: 349, type: !20)
!1052 = !DILocation(line: 349, column: 6, scope: !1048)
!1053 = !DILocalVariable(name: "status", scope: !1048, file: !3, line: 350, type: !18)
!1054 = !DILocation(line: 350, column: 14, scope: !1048)
!1055 = !DILocation(line: 359, column: 9, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 359, column: 2)
!1057 = !DILocation(line: 359, column: 7, scope: !1056)
!1058 = !DILocation(line: 359, column: 14, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 359, column: 2)
!1060 = !DILocation(line: 359, column: 18, scope: !1059)
!1061 = !DILocation(line: 359, column: 30, scope: !1059)
!1062 = !DILocation(line: 359, column: 16, scope: !1059)
!1063 = !DILocation(line: 359, column: 2, scope: !1056)
!1064 = !DILocation(line: 361, column: 33, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 359, column: 49)
!1066 = !DILocation(line: 361, column: 45, scope: !1065)
!1067 = !DILocation(line: 361, column: 54, scope: !1065)
!1068 = !DILocation(line: 362, column: 11, scope: !1065)
!1069 = !DILocation(line: 361, column: 7, scope: !1065)
!1070 = !DILocation(line: 360, column: 10, scope: !1065)
!1071 = !DILocation(line: 363, column: 7, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 363, column: 7)
!1073 = !DILocation(line: 363, column: 7, scope: !1065)
!1074 = !DILocation(line: 364, column: 4, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 363, column: 29)
!1076 = !DILocation(line: 366, column: 2, scope: !1065)
!1077 = !DILocation(line: 359, column: 45, scope: !1059)
!1078 = !DILocation(line: 359, column: 2, scope: !1059)
!1079 = distinct !{!1079, !1063, !1080}
!1080 = !DILocation(line: 366, column: 2, scope: !1056)
!1081 = !DILocation(line: 368, column: 2, scope: !1048)
!1082 = distinct !DISubprogram(name: "acpi_ds_clear_operands", scope: !3, file: !3, line: 383, type: !796, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !798)
!1083 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1082, file: !3, line: 383, type: !146)
!1084 = !DILocation(line: 383, column: 53, scope: !1082)
!1085 = !DILocalVariable(name: "i", scope: !1082, file: !3, line: 385, type: !20)
!1086 = !DILocation(line: 385, column: 6, scope: !1082)
!1087 = !DILocation(line: 391, column: 9, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 391, column: 2)
!1089 = !DILocation(line: 391, column: 7, scope: !1088)
!1090 = !DILocation(line: 391, column: 14, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 391, column: 2)
!1092 = !DILocation(line: 391, column: 18, scope: !1091)
!1093 = !DILocation(line: 391, column: 30, scope: !1091)
!1094 = !DILocation(line: 391, column: 16, scope: !1091)
!1095 = !DILocation(line: 391, column: 2, scope: !1088)
!1096 = !DILocation(line: 396, column: 28, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 391, column: 49)
!1098 = !DILocation(line: 396, column: 40, scope: !1097)
!1099 = !DILocation(line: 396, column: 49, scope: !1097)
!1100 = !DILocation(line: 396, column: 3, scope: !1097)
!1101 = !DILocation(line: 397, column: 3, scope: !1097)
!1102 = !DILocation(line: 397, column: 15, scope: !1097)
!1103 = !DILocation(line: 397, column: 24, scope: !1097)
!1104 = !DILocation(line: 397, column: 27, scope: !1097)
!1105 = !DILocation(line: 398, column: 2, scope: !1097)
!1106 = !DILocation(line: 391, column: 45, scope: !1091)
!1107 = !DILocation(line: 391, column: 2, scope: !1091)
!1108 = distinct !{!1108, !1095, !1109}
!1109 = !DILocation(line: 398, column: 2, scope: !1088)
!1110 = !DILocation(line: 400, column: 2, scope: !1082)
!1111 = !DILocation(line: 400, column: 14, scope: !1082)
!1112 = !DILocation(line: 400, column: 27, scope: !1082)
!1113 = !DILocation(line: 401, column: 2, scope: !1082)
!1114 = distinct !DISubprogram(name: "acpi_ds_create_operand", scope: !3, file: !3, line: 422, type: !1115, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !798)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!18, !146, !180, !20}
!1117 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1114, file: !3, line: 422, type: !146)
!1118 = !DILocation(line: 422, column: 48, scope: !1114)
!1119 = !DILocalVariable(name: "arg", arg: 2, scope: !1114, file: !3, line: 423, type: !180)
!1120 = !DILocation(line: 423, column: 35, scope: !1114)
!1121 = !DILocalVariable(name: "arg_index", arg: 3, scope: !1114, file: !3, line: 423, type: !20)
!1122 = !DILocation(line: 423, column: 44, scope: !1114)
!1123 = !DILocalVariable(name: "status", scope: !1114, file: !3, line: 425, type: !18)
!1124 = !DILocation(line: 425, column: 14, scope: !1114)
!1125 = !DILocalVariable(name: "name_string", scope: !1114, file: !3, line: 426, type: !62)
!1126 = !DILocation(line: 426, column: 8, scope: !1114)
!1127 = !DILocalVariable(name: "name_length", scope: !1114, file: !3, line: 427, type: !20)
!1128 = !DILocation(line: 427, column: 6, scope: !1114)
!1129 = !DILocalVariable(name: "obj_desc", scope: !1114, file: !3, line: 428, type: !22)
!1130 = !DILocation(line: 428, column: 29, scope: !1114)
!1131 = !DILocalVariable(name: "parent_op", scope: !1114, file: !3, line: 429, type: !180)
!1132 = !DILocation(line: 429, column: 27, scope: !1114)
!1133 = !DILocalVariable(name: "opcode", scope: !1114, file: !3, line: 430, type: !13)
!1134 = !DILocation(line: 430, column: 6, scope: !1114)
!1135 = !DILocalVariable(name: "interpreter_mode", scope: !1114, file: !3, line: 431, type: !1136)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !6, line: 120, baseType: !5)
!1137 = !DILocation(line: 431, column: 24, scope: !1114)
!1138 = !DILocalVariable(name: "op_info", scope: !1114, file: !3, line: 432, type: !406)
!1139 = !DILocation(line: 432, column: 33, scope: !1114)
!1140 = !DILocation(line: 438, column: 7, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 438, column: 6)
!1142 = !DILocation(line: 438, column: 12, scope: !1141)
!1143 = !DILocation(line: 438, column: 19, scope: !1141)
!1144 = !DILocation(line: 438, column: 30, scope: !1141)
!1145 = !DILocation(line: 438, column: 54, scope: !1141)
!1146 = !DILocation(line: 439, column: 7, scope: !1141)
!1147 = !DILocation(line: 439, column: 12, scope: !1141)
!1148 = !DILocation(line: 439, column: 19, scope: !1141)
!1149 = !DILocation(line: 439, column: 25, scope: !1141)
!1150 = !DILocation(line: 439, column: 6, scope: !1141)
!1151 = !DILocation(line: 439, column: 33, scope: !1141)
!1152 = !DILocation(line: 440, column: 8, scope: !1141)
!1153 = !DILocation(line: 440, column: 13, scope: !1141)
!1154 = !DILocation(line: 440, column: 20, scope: !1141)
!1155 = !DILocation(line: 440, column: 26, scope: !1141)
!1156 = !DILocation(line: 438, column: 6, scope: !1114)
!1157 = !DILocation(line: 447, column: 8, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 440, column: 52)
!1159 = !DILocation(line: 447, column: 13, scope: !1158)
!1160 = !DILocation(line: 447, column: 20, scope: !1158)
!1161 = !DILocation(line: 447, column: 26, scope: !1158)
!1162 = !DILocation(line: 446, column: 12, scope: !1158)
!1163 = !DILocation(line: 446, column: 10, scope: !1158)
!1164 = !DILocation(line: 450, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 450, column: 7)
!1166 = !DILocation(line: 450, column: 7, scope: !1158)
!1167 = !DILocation(line: 451, column: 4, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 450, column: 29)
!1169 = !DILocation(line: 465, column: 8, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 465, column: 7)
!1171 = !DILocation(line: 465, column: 20, scope: !1170)
!1172 = !DILocation(line: 465, column: 7, scope: !1170)
!1173 = !DILocation(line: 465, column: 35, scope: !1170)
!1174 = !DILocation(line: 466, column: 8, scope: !1170)
!1175 = !DILocation(line: 466, column: 20, scope: !1170)
!1176 = !DILocation(line: 466, column: 35, scope: !1170)
!1177 = !DILocation(line: 466, column: 40, scope: !1170)
!1178 = !DILocation(line: 467, column: 7, scope: !1170)
!1179 = !DILocation(line: 467, column: 11, scope: !1170)
!1180 = !DILocation(line: 468, column: 6, scope: !1170)
!1181 = !DILocation(line: 468, column: 18, scope: !1170)
!1182 = !DILocation(line: 468, column: 25, scope: !1170)
!1183 = !DILocation(line: 468, column: 5, scope: !1170)
!1184 = !DILocation(line: 467, column: 21, scope: !1170)
!1185 = !DILocation(line: 465, column: 7, scope: !1158)
!1186 = !DILocation(line: 470, column: 8, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 468, column: 60)
!1188 = !DILocation(line: 469, column: 13, scope: !1187)
!1189 = !DILocation(line: 472, column: 11, scope: !1187)
!1190 = !DILocation(line: 473, column: 3, scope: !1187)
!1191 = !DILocation(line: 481, column: 16, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 473, column: 10)
!1193 = !DILocation(line: 481, column: 21, scope: !1192)
!1194 = !DILocation(line: 481, column: 28, scope: !1192)
!1195 = !DILocation(line: 481, column: 14, scope: !1192)
!1196 = !DILocation(line: 483, column: 32, scope: !1192)
!1197 = !DILocation(line: 483, column: 43, scope: !1192)
!1198 = !DILocation(line: 484, column: 11, scope: !1192)
!1199 = !DILocation(line: 483, column: 8, scope: !1192)
!1200 = !DILocation(line: 482, column: 12, scope: !1192)
!1201 = !DILocation(line: 486, column: 9, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 486, column: 8)
!1203 = !DILocation(line: 486, column: 18, scope: !1202)
!1204 = !DILocation(line: 486, column: 24, scope: !1202)
!1205 = !DILocation(line: 486, column: 38, scope: !1202)
!1206 = !DILocation(line: 487, column: 9, scope: !1202)
!1207 = !DILocation(line: 487, column: 20, scope: !1202)
!1208 = !DILocation(line: 487, column: 27, scope: !1202)
!1209 = !DILocation(line: 487, column: 38, scope: !1202)
!1210 = !DILocation(line: 489, column: 8, scope: !1202)
!1211 = !DILocation(line: 489, column: 12, scope: !1202)
!1212 = !DILocation(line: 489, column: 23, scope: !1202)
!1213 = !DILocation(line: 489, column: 30, scope: !1202)
!1214 = !DILocation(line: 489, column: 41, scope: !1202)
!1215 = !DILocation(line: 490, column: 8, scope: !1202)
!1216 = !DILocation(line: 490, column: 12, scope: !1202)
!1217 = !DILocation(line: 490, column: 23, scope: !1202)
!1218 = !DILocation(line: 490, column: 30, scope: !1202)
!1219 = !DILocation(line: 490, column: 41, scope: !1202)
!1220 = !DILocation(line: 486, column: 8, scope: !1192)
!1221 = !DILocation(line: 495, column: 22, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 491, column: 27)
!1223 = !DILocation(line: 496, column: 4, scope: !1222)
!1224 = !DILocation(line: 499, column: 22, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 496, column: 11)
!1226 = !DILocation(line: 503, column: 23, scope: !1192)
!1227 = !DILocation(line: 503, column: 35, scope: !1192)
!1228 = !DILocation(line: 503, column: 47, scope: !1192)
!1229 = !DILocation(line: 504, column: 24, scope: !1192)
!1230 = !DILocation(line: 506, column: 34, scope: !1192)
!1231 = !DILocation(line: 507, column: 9, scope: !1192)
!1232 = !DILocation(line: 503, column: 8, scope: !1192)
!1233 = !DILocation(line: 502, column: 11, scope: !1192)
!1234 = !DILocation(line: 514, column: 8, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 514, column: 8)
!1236 = !DILocation(line: 514, column: 15, scope: !1235)
!1237 = !DILocation(line: 514, column: 8, scope: !1192)
!1238 = !DILocation(line: 515, column: 9, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 515, column: 9)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 514, column: 32)
!1241 = !DILocation(line: 515, column: 20, scope: !1239)
!1242 = !DILocation(line: 515, column: 27, scope: !1239)
!1243 = !DILocation(line: 515, column: 38, scope: !1239)
!1244 = !DILocation(line: 515, column: 9, scope: !1240)
!1245 = !DILocation(line: 524, column: 10, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 516, column: 36)
!1247 = !DILocation(line: 523, column: 15, scope: !1246)
!1248 = !DILocation(line: 527, column: 13, scope: !1246)
!1249 = !DILocation(line: 528, column: 5, scope: !1246)
!1250 = !DILocation(line: 528, column: 16, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 528, column: 16)
!1252 = !DILocation(line: 528, column: 27, scope: !1251)
!1253 = !DILocation(line: 528, column: 34, scope: !1251)
!1254 = !DILocation(line: 528, column: 45, scope: !1251)
!1255 = !DILocation(line: 528, column: 16, scope: !1239)
!1256 = !DILocation(line: 537, column: 13, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 529, column: 26)
!1258 = !DILocation(line: 538, column: 5, scope: !1257)
!1259 = !DILocation(line: 543, column: 13, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 538, column: 12)
!1261 = !DILocation(line: 545, column: 4, scope: !1240)
!1262 = !DILocation(line: 547, column: 8, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 547, column: 8)
!1264 = !DILocation(line: 547, column: 8, scope: !1192)
!1265 = !DILocation(line: 548, column: 5, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 547, column: 30)
!1267 = !DILocation(line: 550, column: 4, scope: !1266)
!1268 = !DILocation(line: 555, column: 3, scope: !1158)
!1269 = !DILocation(line: 559, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 559, column: 7)
!1271 = !DILocation(line: 559, column: 7, scope: !1158)
!1272 = !DILocation(line: 560, column: 4, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 559, column: 29)
!1274 = !DILocation(line: 565, column: 35, scope: !1158)
!1275 = !DILocation(line: 565, column: 45, scope: !1158)
!1276 = !DILocation(line: 565, column: 12, scope: !1158)
!1277 = !DILocation(line: 565, column: 10, scope: !1158)
!1278 = !DILocation(line: 566, column: 7, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 566, column: 7)
!1280 = !DILocation(line: 566, column: 7, scope: !1158)
!1281 = !DILocation(line: 567, column: 4, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 566, column: 29)
!1283 = !DILocation(line: 570, column: 35, scope: !1158)
!1284 = !DILocation(line: 570, column: 45, scope: !1158)
!1285 = !DILocation(line: 570, column: 3, scope: !1158)
!1286 = !DILocation(line: 571, column: 2, scope: !1158)
!1287 = !DILocation(line: 574, column: 8, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 574, column: 7)
!1289 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 571, column: 9)
!1290 = !DILocation(line: 574, column: 13, scope: !1288)
!1291 = !DILocation(line: 574, column: 20, scope: !1288)
!1292 = !DILocation(line: 574, column: 31, scope: !1288)
!1293 = !DILocation(line: 574, column: 55, scope: !1288)
!1294 = !DILocation(line: 575, column: 9, scope: !1288)
!1295 = !DILocation(line: 575, column: 14, scope: !1288)
!1296 = !DILocation(line: 575, column: 21, scope: !1288)
!1297 = !DILocation(line: 575, column: 27, scope: !1288)
!1298 = !DILocation(line: 574, column: 7, scope: !1289)
!1299 = !DILocation(line: 582, column: 11, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 575, column: 53)
!1301 = !DILocation(line: 586, column: 3, scope: !1300)
!1302 = !DILocation(line: 587, column: 13, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 586, column: 10)
!1304 = !DILocation(line: 587, column: 18, scope: !1303)
!1305 = !DILocation(line: 587, column: 25, scope: !1303)
!1306 = !DILocation(line: 587, column: 11, scope: !1303)
!1307 = !DILocation(line: 592, column: 37, scope: !1289)
!1308 = !DILocation(line: 592, column: 13, scope: !1289)
!1309 = !DILocation(line: 592, column: 11, scope: !1289)
!1310 = !DILocation(line: 593, column: 7, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 593, column: 7)
!1312 = !DILocation(line: 593, column: 16, scope: !1311)
!1313 = !DILocation(line: 593, column: 28, scope: !1311)
!1314 = !DILocation(line: 593, column: 7, scope: !1289)
!1315 = !DILocation(line: 594, column: 4, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 593, column: 50)
!1317 = !DILocation(line: 597, column: 8, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 597, column: 7)
!1319 = !DILocation(line: 597, column: 17, scope: !1318)
!1320 = !DILocation(line: 597, column: 23, scope: !1318)
!1321 = !DILocation(line: 597, column: 41, scope: !1318)
!1322 = !DILocation(line: 598, column: 8, scope: !1318)
!1323 = !DILocation(line: 598, column: 13, scope: !1318)
!1324 = !DILocation(line: 598, column: 20, scope: !1318)
!1325 = !DILocation(line: 598, column: 26, scope: !1318)
!1326 = !DILocation(line: 597, column: 7, scope: !1289)
!1327 = !DILocation(line: 603, column: 43, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 598, column: 52)
!1329 = !DILocation(line: 603, column: 13, scope: !1328)
!1330 = !DILocation(line: 603, column: 11, scope: !1328)
!1331 = !DILocation(line: 604, column: 8, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 604, column: 8)
!1333 = !DILocation(line: 604, column: 8, scope: !1328)
!1334 = !DILocation(line: 609, column: 5, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 604, column: 30)
!1336 = !DILocation(line: 611, column: 5, scope: !1335)
!1337 = !DILocation(line: 613, column: 3, scope: !1328)
!1338 = !DILocation(line: 617, column: 8, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 613, column: 10)
!1340 = !DILocation(line: 616, column: 13, scope: !1339)
!1341 = !DILocation(line: 619, column: 9, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 619, column: 8)
!1343 = !DILocation(line: 619, column: 8, scope: !1339)
!1344 = !DILocation(line: 620, column: 5, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 619, column: 19)
!1346 = !DILocation(line: 626, column: 36, scope: !1339)
!1347 = !DILocation(line: 626, column: 48, scope: !1339)
!1348 = !DILocation(line: 626, column: 53, scope: !1339)
!1349 = !DILocation(line: 626, column: 8, scope: !1339)
!1350 = !DILocation(line: 625, column: 11, scope: !1339)
!1351 = !DILocation(line: 628, column: 8, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 628, column: 8)
!1353 = !DILocation(line: 628, column: 8, scope: !1339)
!1354 = !DILocation(line: 629, column: 32, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 628, column: 30)
!1356 = !DILocation(line: 629, column: 5, scope: !1355)
!1357 = !DILocation(line: 630, column: 5, scope: !1355)
!1358 = !DILocation(line: 636, column: 35, scope: !1289)
!1359 = !DILocation(line: 636, column: 45, scope: !1289)
!1360 = !DILocation(line: 636, column: 12, scope: !1289)
!1361 = !DILocation(line: 636, column: 10, scope: !1289)
!1362 = !DILocation(line: 637, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 637, column: 7)
!1364 = !DILocation(line: 637, column: 7, scope: !1289)
!1365 = !DILocation(line: 638, column: 4, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 637, column: 29)
!1367 = !DILocation(line: 641, column: 35, scope: !1289)
!1368 = !DILocation(line: 641, column: 45, scope: !1289)
!1369 = !DILocation(line: 641, column: 3, scope: !1289)
!1370 = !DILocation(line: 644, column: 2, scope: !1114)
!1371 = !DILocation(line: 645, column: 1, scope: !1114)
!1372 = distinct !DISubprogram(name: "acpi_os_free", scope: !1373, file: !1373, line: 60, type: !1374, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !798)
!1373 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !123}
!1376 = !DILocalVariable(name: "memory", arg: 1, scope: !1372, file: !1373, line: 60, type: !123)
!1377 = !DILocation(line: 60, column: 39, scope: !1372)
!1378 = !DILocation(line: 62, column: 8, scope: !1372)
!1379 = !DILocation(line: 62, column: 2, scope: !1372)
!1380 = !DILocation(line: 63, column: 1, scope: !1372)
!1381 = distinct !DISubprogram(name: "acpi_db_display_argument_object", scope: !1382, file: !1382, line: 184, type: !1383, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !798)
!1382 = !DIFile(filename: "drivers/acpi/acpica/acdebug.h", directory: "/home/lizy2001/genbc/linux")
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !22, !146}
!1385 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1381, file: !1382, line: 184, type: !22)
!1386 = !DILocation(line: 184, column: 1, scope: !1381)
!1387 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1381, file: !1382, line: 184, type: !146)
!1388 = distinct !DISubprogram(name: "acpi_ds_create_operands", scope: !3, file: !3, line: 663, type: !1389, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !798)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!18, !146, !180}
!1391 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1388, file: !3, line: 663, type: !146)
!1392 = !DILocation(line: 663, column: 49, scope: !1388)
!1393 = !DILocalVariable(name: "first_arg", arg: 2, scope: !1388, file: !3, line: 664, type: !180)
!1394 = !DILocation(line: 664, column: 29, scope: !1388)
!1395 = !DILocalVariable(name: "status", scope: !1388, file: !3, line: 666, type: !18)
!1396 = !DILocation(line: 666, column: 14, scope: !1388)
!1397 = !DILocalVariable(name: "arg", scope: !1388, file: !3, line: 667, type: !180)
!1398 = !DILocation(line: 667, column: 27, scope: !1388)
!1399 = !DILocalVariable(name: "arguments", scope: !1388, file: !3, line: 668, type: !1400)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 512, elements: !353)
!1401 = !DILocation(line: 668, column: 27, scope: !1388)
!1402 = !DILocalVariable(name: "arg_count", scope: !1388, file: !3, line: 669, type: !20)
!1403 = !DILocation(line: 669, column: 6, scope: !1388)
!1404 = !DILocalVariable(name: "index", scope: !1388, file: !3, line: 670, type: !20)
!1405 = !DILocation(line: 670, column: 6, scope: !1388)
!1406 = !DILocation(line: 670, column: 14, scope: !1388)
!1407 = !DILocation(line: 670, column: 26, scope: !1388)
!1408 = !DILocalVariable(name: "i", scope: !1388, file: !3, line: 671, type: !20)
!1409 = !DILocation(line: 671, column: 6, scope: !1388)
!1410 = !DILocation(line: 677, column: 8, scope: !1388)
!1411 = !DILocation(line: 677, column: 6, scope: !1388)
!1412 = !DILocation(line: 678, column: 2, scope: !1388)
!1413 = !DILocation(line: 678, column: 9, scope: !1388)
!1414 = !DILocation(line: 679, column: 7, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 679, column: 7)
!1416 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 678, column: 14)
!1417 = !DILocation(line: 679, column: 13, scope: !1415)
!1418 = !DILocation(line: 679, column: 7, scope: !1416)
!1419 = !DILocation(line: 680, column: 4, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 679, column: 39)
!1421 = !DILocation(line: 683, column: 22, scope: !1416)
!1422 = !DILocation(line: 683, column: 13, scope: !1416)
!1423 = !DILocation(line: 683, column: 3, scope: !1416)
!1424 = !DILocation(line: 683, column: 20, scope: !1416)
!1425 = !DILocation(line: 684, column: 3, scope: !1416)
!1426 = !DILocation(line: 684, column: 15, scope: !1416)
!1427 = !DILocation(line: 684, column: 24, scope: !1416)
!1428 = !DILocation(line: 684, column: 31, scope: !1416)
!1429 = !DILocation(line: 688, column: 9, scope: !1416)
!1430 = !DILocation(line: 688, column: 14, scope: !1416)
!1431 = !DILocation(line: 688, column: 21, scope: !1416)
!1432 = !DILocation(line: 688, column: 7, scope: !1416)
!1433 = !DILocation(line: 689, column: 12, scope: !1416)
!1434 = !DILocation(line: 690, column: 8, scope: !1416)
!1435 = distinct !{!1435, !1412, !1436}
!1436 = !DILocation(line: 691, column: 2, scope: !1388)
!1437 = !DILocation(line: 699, column: 7, scope: !1388)
!1438 = !DILocation(line: 700, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 700, column: 2)
!1440 = !DILocation(line: 700, column: 7, scope: !1439)
!1441 = !DILocation(line: 700, column: 14, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 700, column: 2)
!1443 = !DILocation(line: 700, column: 18, scope: !1442)
!1444 = !DILocation(line: 700, column: 16, scope: !1442)
!1445 = !DILocation(line: 700, column: 2, scope: !1439)
!1446 = !DILocation(line: 701, column: 19, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 700, column: 34)
!1448 = !DILocation(line: 701, column: 9, scope: !1447)
!1449 = !DILocation(line: 701, column: 7, scope: !1447)
!1450 = !DILocation(line: 702, column: 35, scope: !1447)
!1451 = !DILocation(line: 702, column: 31, scope: !1447)
!1452 = !DILocation(line: 702, column: 3, scope: !1447)
!1453 = !DILocation(line: 702, column: 15, scope: !1447)
!1454 = !DILocation(line: 702, column: 29, scope: !1447)
!1455 = !DILocation(line: 704, column: 35, scope: !1447)
!1456 = !DILocation(line: 704, column: 47, scope: !1447)
!1457 = !DILocation(line: 704, column: 52, scope: !1447)
!1458 = !DILocation(line: 704, column: 12, scope: !1447)
!1459 = !DILocation(line: 704, column: 10, scope: !1447)
!1460 = !DILocation(line: 705, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 705, column: 7)
!1462 = !DILocation(line: 705, column: 7, scope: !1447)
!1463 = !DILocation(line: 706, column: 4, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 705, column: 29)
!1465 = !DILocation(line: 712, column: 8, scope: !1447)
!1466 = !DILocation(line: 713, column: 2, scope: !1447)
!1467 = !DILocation(line: 700, column: 30, scope: !1442)
!1468 = !DILocation(line: 700, column: 2, scope: !1442)
!1469 = distinct !{!1469, !1445, !1470}
!1470 = !DILocation(line: 713, column: 2, scope: !1439)
!1471 = !DILocation(line: 715, column: 2, scope: !1388)
!1472 = !DILabel(scope: !1388, name: "cleanup", file: !3, line: 717)
!1473 = !DILocation(line: 717, column: 1, scope: !1388)
!1474 = !DILocation(line: 723, column: 35, scope: !1388)
!1475 = !DILocation(line: 723, column: 46, scope: !1388)
!1476 = !DILocation(line: 723, column: 2, scope: !1388)
!1477 = !DILocation(line: 725, column: 2, scope: !1388)
!1478 = !DILocation(line: 726, column: 2, scope: !1388)
!1479 = !DILocation(line: 727, column: 1, scope: !1388)
!1480 = distinct !DISubprogram(name: "acpi_ds_evaluate_name_path", scope: !3, file: !3, line: 745, type: !144, scopeLine: 746, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !798)
!1481 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1480, file: !3, line: 745, type: !146)
!1482 = !DILocation(line: 745, column: 64, scope: !1480)
!1483 = !DILocalVariable(name: "status", scope: !1480, file: !3, line: 747, type: !18)
!1484 = !DILocation(line: 747, column: 14, scope: !1480)
!1485 = !DILocalVariable(name: "op", scope: !1480, file: !3, line: 748, type: !180)
!1486 = !DILocation(line: 748, column: 27, scope: !1480)
!1487 = !DILocation(line: 748, column: 32, scope: !1480)
!1488 = !DILocation(line: 748, column: 44, scope: !1480)
!1489 = !DILocalVariable(name: "operand", scope: !1480, file: !3, line: 749, type: !110)
!1490 = !DILocation(line: 749, column: 30, scope: !1480)
!1491 = !DILocation(line: 749, column: 41, scope: !1480)
!1492 = !DILocation(line: 749, column: 53, scope: !1480)
!1493 = !DILocalVariable(name: "new_obj_desc", scope: !1480, file: !3, line: 750, type: !22)
!1494 = !DILocation(line: 750, column: 29, scope: !1480)
!1495 = !DILocalVariable(name: "type", scope: !1480, file: !3, line: 751, type: !31)
!1496 = !DILocation(line: 751, column: 5, scope: !1480)
!1497 = !DILocation(line: 755, column: 7, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 755, column: 6)
!1499 = !DILocation(line: 755, column: 11, scope: !1498)
!1500 = !DILocation(line: 755, column: 18, scope: !1498)
!1501 = !DILocation(line: 755, column: 6, scope: !1480)
!1502 = !DILocation(line: 759, column: 3, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 755, column: 26)
!1504 = !DILocation(line: 762, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 762, column: 6)
!1506 = !DILocation(line: 762, column: 11, scope: !1505)
!1507 = !DILocation(line: 762, column: 18, scope: !1505)
!1508 = !DILocation(line: 762, column: 26, scope: !1505)
!1509 = !DILocation(line: 762, column: 33, scope: !1505)
!1510 = !DILocation(line: 762, column: 44, scope: !1505)
!1511 = !DILocation(line: 762, column: 63, scope: !1505)
!1512 = !DILocation(line: 763, column: 7, scope: !1505)
!1513 = !DILocation(line: 763, column: 11, scope: !1505)
!1514 = !DILocation(line: 763, column: 18, scope: !1505)
!1515 = !DILocation(line: 763, column: 26, scope: !1505)
!1516 = !DILocation(line: 763, column: 33, scope: !1505)
!1517 = !DILocation(line: 763, column: 44, scope: !1505)
!1518 = !DILocation(line: 763, column: 72, scope: !1505)
!1519 = !DILocation(line: 764, column: 7, scope: !1505)
!1520 = !DILocation(line: 764, column: 11, scope: !1505)
!1521 = !DILocation(line: 764, column: 18, scope: !1505)
!1522 = !DILocation(line: 764, column: 26, scope: !1505)
!1523 = !DILocation(line: 764, column: 33, scope: !1505)
!1524 = !DILocation(line: 764, column: 44, scope: !1505)
!1525 = !DILocation(line: 762, column: 6, scope: !1480)
!1526 = !DILocation(line: 768, column: 3, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 764, column: 63)
!1528 = !DILocation(line: 771, column: 34, scope: !1480)
!1529 = !DILocation(line: 771, column: 46, scope: !1480)
!1530 = !DILocation(line: 771, column: 11, scope: !1480)
!1531 = !DILocation(line: 771, column: 9, scope: !1480)
!1532 = !DILocation(line: 772, column: 6, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 772, column: 6)
!1534 = !DILocation(line: 772, column: 6, scope: !1480)
!1535 = !DILocation(line: 773, column: 3, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 772, column: 28)
!1537 = !DILocation(line: 776, column: 6, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 776, column: 6)
!1539 = !DILocation(line: 776, column: 10, scope: !1538)
!1540 = !DILocation(line: 776, column: 17, scope: !1538)
!1541 = !DILocation(line: 776, column: 23, scope: !1538)
!1542 = !DILocation(line: 776, column: 6, scope: !1480)
!1543 = !DILocation(line: 777, column: 19, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 776, column: 46)
!1545 = !DILocation(line: 777, column: 18, scope: !1544)
!1546 = !DILocation(line: 777, column: 16, scope: !1544)
!1547 = !DILocation(line: 778, column: 3, scope: !1544)
!1548 = !DILocation(line: 781, column: 11, scope: !1480)
!1549 = !DILocation(line: 781, column: 10, scope: !1480)
!1550 = !DILocation(line: 781, column: 21, scope: !1480)
!1551 = !DILocation(line: 781, column: 28, scope: !1480)
!1552 = !DILocation(line: 781, column: 7, scope: !1480)
!1553 = !DILocation(line: 783, column: 36, scope: !1480)
!1554 = !DILocation(line: 783, column: 45, scope: !1480)
!1555 = !DILocation(line: 783, column: 11, scope: !1480)
!1556 = !DILocation(line: 783, column: 9, scope: !1480)
!1557 = !DILocation(line: 784, column: 6, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 784, column: 6)
!1559 = !DILocation(line: 784, column: 6, scope: !1480)
!1560 = !DILocation(line: 785, column: 3, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 784, column: 28)
!1562 = !DILocation(line: 788, column: 6, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 788, column: 6)
!1564 = !DILocation(line: 788, column: 11, scope: !1563)
!1565 = !DILocation(line: 788, column: 6, scope: !1480)
!1566 = !DILocation(line: 792, column: 29, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 788, column: 33)
!1568 = !DILocation(line: 792, column: 28, scope: !1567)
!1569 = !DILocation(line: 792, column: 3, scope: !1567)
!1570 = !DILocation(line: 795, column: 40, scope: !1567)
!1571 = !DILocation(line: 795, column: 39, scope: !1567)
!1572 = !DILocation(line: 796, column: 11, scope: !1567)
!1573 = !DILocation(line: 795, column: 7, scope: !1567)
!1574 = !DILocation(line: 794, column: 10, scope: !1567)
!1575 = !DILocation(line: 797, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 797, column: 7)
!1577 = !DILocation(line: 797, column: 7, scope: !1567)
!1578 = !DILocation(line: 798, column: 4, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 797, column: 29)
!1580 = !DILocation(line: 800, column: 2, scope: !1567)
!1581 = !DILocation(line: 805, column: 19, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 800, column: 9)
!1583 = !DILocation(line: 805, column: 18, scope: !1582)
!1584 = !DILocation(line: 805, column: 16, scope: !1582)
!1585 = !DILocation(line: 810, column: 36, scope: !1480)
!1586 = !DILocation(line: 810, column: 11, scope: !1480)
!1587 = !DILocation(line: 810, column: 9, scope: !1480)
!1588 = !DILocation(line: 811, column: 6, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 811, column: 6)
!1590 = !DILocation(line: 811, column: 6, scope: !1480)
!1591 = !DILocation(line: 812, column: 28, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 811, column: 28)
!1593 = !DILocation(line: 812, column: 3, scope: !1592)
!1594 = !DILocation(line: 812, column: 15, scope: !1592)
!1595 = !DILocation(line: 812, column: 26, scope: !1592)
!1596 = !DILocation(line: 813, column: 3, scope: !1592)
!1597 = !DILabel(scope: !1480, name: "push_result", file: !3, line: 816)
!1598 = !DILocation(line: 816, column: 1, scope: !1480)
!1599 = !DILocation(line: 818, column: 27, scope: !1480)
!1600 = !DILocation(line: 818, column: 2, scope: !1480)
!1601 = !DILocation(line: 818, column: 14, scope: !1480)
!1602 = !DILocation(line: 818, column: 25, scope: !1480)
!1603 = !DILocation(line: 820, column: 31, scope: !1480)
!1604 = !DILocation(line: 820, column: 43, scope: !1480)
!1605 = !DILocation(line: 820, column: 55, scope: !1480)
!1606 = !DILocation(line: 820, column: 11, scope: !1480)
!1607 = !DILocation(line: 820, column: 9, scope: !1480)
!1608 = !DILocation(line: 821, column: 6, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 821, column: 6)
!1610 = !DILocation(line: 821, column: 6, scope: !1480)
!1611 = !DILocation(line: 825, column: 3, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 821, column: 28)
!1613 = !DILocation(line: 825, column: 7, scope: !1612)
!1614 = !DILocation(line: 825, column: 14, scope: !1612)
!1615 = !DILocation(line: 825, column: 20, scope: !1612)
!1616 = !DILocation(line: 826, column: 2, scope: !1612)
!1617 = !DILabel(scope: !1480, name: "exit", file: !3, line: 828)
!1618 = !DILocation(line: 828, column: 1, scope: !1480)
!1619 = !DILocation(line: 830, column: 2, scope: !1480)
