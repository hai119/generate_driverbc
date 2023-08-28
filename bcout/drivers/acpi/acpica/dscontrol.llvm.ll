; ModuleID = '../bcout/drivers/acpi/acpica/dscontrol.llvm.bc'
source_filename = "drivers/acpi/acpica/dscontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*)* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }
%struct.acpi_control_state = type { i8*, i8, i8, i16, i16, i16, %union.acpi_parse_object*, i8*, i8*, i64 }
%struct.acpi_common_state = type { i8*, i8, i8, i16, i16 }
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }

@acpi_gbl_max_loop_iterations = external dso_local global i32, align 4
@.str = private unnamed_addr constant [31 x i8] c"Executed AML Breakpoint opcode\00", align 1
@_acpi_module_name = internal constant [10 x i8] c"dscontrol\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [34 x i8] c"Unknown control opcode=0x%X Op=%p\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_exec_begin_control_op(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op) #0 !dbg !815 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %control_state = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !819, metadata !DIExpression()), !dbg !820
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !821, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.declare(metadata i32* %status, metadata !823, metadata !DIExpression()), !dbg !824
  store i32 0, i32* %status, align 4, !dbg !824
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %control_state, metadata !825, metadata !DIExpression()), !dbg !826
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !827
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !828
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !829
  %1 = load i16, i16* %aml_opcode, align 2, !dbg !829
  %conv = zext i16 %1 to i32, !dbg !827
  switch i32 %conv, label %sw.default [
    i32 162, label %sw.bb
    i32 160, label %sw.bb8
    i32 161, label %sw.bb26
    i32 164, label %sw.bb30
  ], !dbg !830

sw.bb:                                            ; preds = %entry
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !831
  %control_state1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 32, !dbg !834
  %3 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state1, align 8, !dbg !834
  %tobool = icmp ne %union.acpi_generic_state* %3, null, !dbg !831
  br i1 %tobool, label %if.then, label %if.end7, !dbg !835

if.then:                                          ; preds = %sw.bb
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !836
  %control_state2 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 32, !dbg !839
  %5 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state2, align 8, !dbg !839
  %control = bitcast %union.acpi_generic_state* %5 to %struct.acpi_control_state*, !dbg !840
  %aml_predicate_start = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control, i32 0, i32 7, !dbg !841
  %6 = load i8*, i8** %aml_predicate_start, align 8, !dbg !841
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !842
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 21, !dbg !843
  %aml = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state, i32 0, i32 1, !dbg !844
  %8 = load i8*, i8** %aml, align 8, !dbg !844
  %add.ptr = getelementptr i8, i8* %8, i64 -1, !dbg !845
  %cmp = icmp eq i8* %6, %add.ptr, !dbg !846
  br i1 %cmp, label %if.then4, label %if.end, !dbg !847

if.then4:                                         ; preds = %if.then
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !848
  %control_state5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 32, !dbg !850
  %10 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state5, align 8, !dbg !850
  %common6 = bitcast %union.acpi_generic_state* %10 to %struct.acpi_common_state*, !dbg !851
  %state = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common6, i32 0, i32 4, !dbg !852
  store i16 193, i16* %state, align 4, !dbg !853
  br label %sw.epilog, !dbg !854

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !855

if.end7:                                          ; preds = %if.end, %sw.bb
  br label %sw.bb8, !dbg !834

sw.bb8:                                           ; preds = %entry, %if.end7
  %call = call %union.acpi_generic_state* @acpi_ut_create_control_state() #3, !dbg !856
  store %union.acpi_generic_state* %call, %union.acpi_generic_state** %control_state, align 8, !dbg !857
  %11 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !858
  %tobool9 = icmp ne %union.acpi_generic_state* %11, null, !dbg !858
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !860

if.then10:                                        ; preds = %sw.bb8
  store i32 4, i32* %status, align 4, !dbg !861
  br label %sw.epilog, !dbg !863

if.end11:                                         ; preds = %sw.bb8
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !864
  %parser_state12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 21, !dbg !865
  %aml13 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state12, i32 0, i32 1, !dbg !866
  %13 = load i8*, i8** %aml13, align 8, !dbg !866
  %add.ptr14 = getelementptr i8, i8* %13, i64 -1, !dbg !867
  %14 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !868
  %control15 = bitcast %union.acpi_generic_state* %14 to %struct.acpi_control_state*, !dbg !869
  %aml_predicate_start16 = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control15, i32 0, i32 7, !dbg !870
  store i8* %add.ptr14, i8** %aml_predicate_start16, align 8, !dbg !871
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !872
  %parser_state17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 21, !dbg !873
  %pkg_end = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state17, i32 0, i32 4, !dbg !874
  %16 = load i8*, i8** %pkg_end, align 8, !dbg !874
  %17 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !875
  %control18 = bitcast %union.acpi_generic_state* %17 to %struct.acpi_control_state*, !dbg !876
  %package_end = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control18, i32 0, i32 8, !dbg !877
  store i8* %16, i8** %package_end, align 8, !dbg !878
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !879
  %common19 = bitcast %union.acpi_parse_object* %18 to %struct.acpi_parse_obj_common*, !dbg !880
  %aml_opcode20 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common19, i32 0, i32 3, !dbg !881
  %19 = load i16, i16* %aml_opcode20, align 2, !dbg !881
  %20 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !882
  %control21 = bitcast %union.acpi_generic_state* %20 to %struct.acpi_control_state*, !dbg !883
  %opcode = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control21, i32 0, i32 5, !dbg !884
  store i16 %19, i16* %opcode, align 2, !dbg !885
  %call22 = call i64 @acpi_os_get_timer() #3, !dbg !886
  %21 = load i32, i32* @acpi_gbl_max_loop_iterations, align 4, !dbg !887
  %conv23 = zext i32 %21 to i64, !dbg !888
  %mul = mul i64 %conv23, 10000000, !dbg !889
  %add = add i64 %call22, %mul, !dbg !890
  %22 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !891
  %control24 = bitcast %union.acpi_generic_state* %22 to %struct.acpi_control_state*, !dbg !892
  %loop_timeout = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control24, i32 0, i32 9, !dbg !893
  store i64 %add, i64* %loop_timeout, align 8, !dbg !894
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !895
  %control_state25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 32, !dbg !896
  %24 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !897
  call void @acpi_ut_push_generic_state(%union.acpi_generic_state** %control_state25, %union.acpi_generic_state* %24) #3, !dbg !898
  br label %sw.epilog, !dbg !899

sw.bb26:                                          ; preds = %entry
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !900
  %last_predicate = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %25, i32 0, i32 8, !dbg !902
  %26 = load i8, i8* %last_predicate, align 2, !dbg !902
  %tobool27 = icmp ne i8 %26, 0, !dbg !900
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !903

if.then28:                                        ; preds = %sw.bb26
  store i32 16388, i32* %status, align 4, !dbg !904
  br label %if.end29, !dbg !906

if.end29:                                         ; preds = %if.then28, %sw.bb26
  br label %sw.epilog, !dbg !907

sw.bb30:                                          ; preds = %entry
  br label %sw.epilog, !dbg !908

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !909

sw.epilog:                                        ; preds = %sw.default, %sw.bb30, %if.end29, %if.end11, %if.then10, %if.then4
  %27 = load i32, i32* %status, align 4, !dbg !910
  ret i32 %27, !dbg !911
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_create_control_state() #2

; Function Attrs: noredzone
declare dso_local i64 @acpi_os_get_timer() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_push_generic_state(%union.acpi_generic_state**, %union.acpi_generic_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_exec_end_control_op(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op) #0 !dbg !912 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %control_state = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !913, metadata !DIExpression()), !dbg !914
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !915, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.declare(metadata i32* %status, metadata !917, metadata !DIExpression()), !dbg !918
  store i32 0, i32* %status, align 4, !dbg !918
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %control_state, metadata !919, metadata !DIExpression()), !dbg !920
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !921
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !922
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !923
  %1 = load i16, i16* %aml_opcode, align 2, !dbg !923
  %conv = zext i16 %1 to i32, !dbg !921
  switch i32 %conv, label %sw.default [
    i32 160, label %sw.bb
    i32 161, label %sw.bb5
    i32 162, label %sw.bb6
    i32 164, label %sw.bb17
    i32 163, label %sw.bb86
    i32 204, label %sw.bb87
    i32 165, label %sw.bb89
    i32 159, label %sw.bb89
  ], !dbg !924

sw.bb:                                            ; preds = %entry
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !925
  %control_state1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 32, !dbg !927
  %3 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state1, align 8, !dbg !927
  %common2 = bitcast %union.acpi_generic_state* %3 to %struct.acpi_common_state*, !dbg !928
  %value = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common2, i32 0, i32 3, !dbg !929
  %4 = load i16, i16* %value, align 2, !dbg !929
  %conv3 = trunc i16 %4 to i8, !dbg !930
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !931
  %last_predicate = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 8, !dbg !932
  store i8 %conv3, i8* %last_predicate, align 2, !dbg !933
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !934
  %control_state4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 32, !dbg !935
  %call = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %control_state4) #3, !dbg !936
  store %union.acpi_generic_state* %call, %union.acpi_generic_state** %control_state, align 8, !dbg !937
  %7 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !938
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %7) #3, !dbg !939
  br label %sw.epilog, !dbg !940

sw.bb5:                                           ; preds = %entry
  br label %sw.epilog, !dbg !941

sw.bb6:                                           ; preds = %entry
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !942
  %control_state7 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 32, !dbg !943
  %9 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state7, align 8, !dbg !943
  store %union.acpi_generic_state* %9, %union.acpi_generic_state** %control_state, align 8, !dbg !944
  %10 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !945
  %common8 = bitcast %union.acpi_generic_state* %10 to %struct.acpi_common_state*, !dbg !947
  %value9 = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common8, i32 0, i32 3, !dbg !948
  %11 = load i16, i16* %value9, align 2, !dbg !948
  %tobool = icmp ne i16 %11, 0, !dbg !945
  br i1 %tobool, label %if.then, label %if.end14, !dbg !949

if.then:                                          ; preds = %sw.bb6
  %12 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !950
  %control = bitcast %union.acpi_generic_state* %12 to %struct.acpi_control_state*, !dbg !950
  %loop_timeout = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control, i32 0, i32 9, !dbg !950
  %13 = load i64, i64* %loop_timeout, align 8, !dbg !950
  %call10 = call i64 @acpi_os_get_timer() #3, !dbg !950
  %sub = sub i64 %13, %call10, !dbg !950
  %cmp = icmp slt i64 %sub, 0, !dbg !950
  br i1 %cmp, label %if.then12, label %if.end, !dbg !953

if.then12:                                        ; preds = %if.then
  store i32 12321, i32* %status, align 4, !dbg !954
  br label %sw.epilog, !dbg !956

if.end:                                           ; preds = %if.then
  store i32 16386, i32* %status, align 4, !dbg !957
  %14 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !958
  %control13 = bitcast %union.acpi_generic_state* %14 to %struct.acpi_control_state*, !dbg !959
  %aml_predicate_start = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control13, i32 0, i32 7, !dbg !960
  %15 = load i8*, i8** %aml_predicate_start, align 8, !dbg !960
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !961
  %aml_last_while = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 30, !dbg !962
  store i8* %15, i8** %aml_last_while, align 8, !dbg !963
  br label %sw.epilog, !dbg !964

if.end14:                                         ; preds = %sw.bb6
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !965
  %control_state15 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 32, !dbg !966
  %call16 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %control_state15) #3, !dbg !967
  store %union.acpi_generic_state* %call16, %union.acpi_generic_state** %control_state, align 8, !dbg !968
  %18 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !969
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %18) #3, !dbg !970
  br label %sw.epilog, !dbg !971

sw.bb17:                                          ; preds = %entry
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !972
  %common18 = bitcast %union.acpi_parse_object* %19 to %struct.acpi_parse_obj_common*, !dbg !974
  %value19 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common18, i32 0, i32 7, !dbg !975
  %arg = bitcast %union.acpi_parse_value* %value19 to %union.acpi_parse_object**, !dbg !976
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !976
  %tobool20 = icmp ne %union.acpi_parse_object* %20, null, !dbg !972
  br i1 %tobool20, label %if.then21, label %if.else, !dbg !977

if.then21:                                        ; preds = %sw.bb17
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !978
  call void @acpi_ds_clear_implicit_return(%struct.acpi_walk_state* %21) #3, !dbg !980
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !981
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !982
  %common22 = bitcast %union.acpi_parse_object* %23 to %struct.acpi_parse_obj_common*, !dbg !983
  %value23 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common22, i32 0, i32 7, !dbg !984
  %arg24 = bitcast %union.acpi_parse_value* %value23 to %union.acpi_parse_object**, !dbg !985
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg24, align 8, !dbg !985
  %call25 = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %22, %union.acpi_parse_object* %24) #3, !dbg !986
  store i32 %call25, i32* %status, align 4, !dbg !987
  %25 = load i32, i32* %status, align 4, !dbg !988
  %tobool26 = icmp ne i32 %25, 0, !dbg !988
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !990

if.then27:                                        ; preds = %if.then21
  %26 = load i32, i32* %status, align 4, !dbg !991
  store i32 %26, i32* %retval, align 4, !dbg !993
  br label %return, !dbg !993

if.end28:                                         ; preds = %if.then21
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !994
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %27, i32 0, i32 28, !dbg !995
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !994
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !996
  %call29 = call i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %arrayidx, %struct.acpi_walk_state* %28) #3, !dbg !997
  store i32 %call29, i32* %status, align 4, !dbg !998
  %29 = load i32, i32* %status, align 4, !dbg !999
  %tobool30 = icmp ne i32 %29, 0, !dbg !999
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !1001

if.then31:                                        ; preds = %if.end28
  %30 = load i32, i32* %status, align 4, !dbg !1002
  store i32 %30, i32* %retval, align 4, !dbg !1004
  br label %return, !dbg !1004

if.end32:                                         ; preds = %if.end28
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1005
  %operands33 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %31, i32 0, i32 28, !dbg !1006
  %arrayidx34 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands33, i64 0, i64 0, !dbg !1005
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx34, align 8, !dbg !1005
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1007
  %return_desc = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %33, i32 0, i32 45, !dbg !1008
  store %union.acpi_operand_object* %32, %union.acpi_operand_object** %return_desc, align 8, !dbg !1009
  br label %if.end85, !dbg !1010

if.else:                                          ; preds = %sw.bb17
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1011
  %result_count = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %34, i32 0, i32 15, !dbg !1013
  %35 = load i8, i8* %result_count, align 1, !dbg !1013
  %tobool35 = icmp ne i8 %35, 0, !dbg !1011
  br i1 %tobool35, label %if.then36, label %if.else74, !dbg !1014

if.then36:                                        ; preds = %if.else
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1015
  call void @acpi_ds_clear_implicit_return(%struct.acpi_walk_state* %36) #3, !dbg !1017
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1018
  %results = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %37, i32 0, i32 44, !dbg !1018
  %38 = load %union.acpi_generic_state*, %union.acpi_generic_state** %results, align 8, !dbg !1018
  %results37 = bitcast %union.acpi_generic_state* %38 to %struct.acpi_result_values*, !dbg !1018
  %obj_desc = getelementptr inbounds %struct.acpi_result_values, %struct.acpi_result_values* %results37, i32 0, i32 5, !dbg !1018
  %arrayidx38 = getelementptr [8 x %union.acpi_operand_object*], [8 x %union.acpi_operand_object*]* %obj_desc, i64 0, i64 0, !dbg !1018
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx38, align 8, !dbg !1018
  %40 = bitcast %union.acpi_operand_object* %39 to i8*, !dbg !1018
  %41 = bitcast i8* %40 to %union.acpi_descriptor*, !dbg !1018
  %common39 = bitcast %union.acpi_descriptor* %41 to %struct.acpi_common_descriptor*, !dbg !1018
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common39, i32 0, i32 1, !dbg !1018
  %42 = load i8, i8* %descriptor_type, align 8, !dbg !1018
  %conv40 = zext i8 %42 to i32, !dbg !1018
  %cmp41 = icmp eq i32 %conv40, 14, !dbg !1020
  br i1 %cmp41, label %land.lhs.true, label %if.end68, !dbg !1021

land.lhs.true:                                    ; preds = %if.then36
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1022
  %results43 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %43, i32 0, i32 44, !dbg !1023
  %44 = load %union.acpi_generic_state*, %union.acpi_generic_state** %results43, align 8, !dbg !1023
  %results44 = bitcast %union.acpi_generic_state* %44 to %struct.acpi_result_values*, !dbg !1024
  %obj_desc45 = getelementptr inbounds %struct.acpi_result_values, %struct.acpi_result_values* %results44, i32 0, i32 5, !dbg !1025
  %arrayidx46 = getelementptr [8 x %union.acpi_operand_object*], [8 x %union.acpi_operand_object*]* %obj_desc45, i64 0, i64 0, !dbg !1022
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx46, align 8, !dbg !1022
  %common47 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_common*, !dbg !1026
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common47, i32 0, i32 2, !dbg !1027
  %46 = load i8, i8* %type, align 1, !dbg !1027
  %conv48 = zext i8 %46 to i32, !dbg !1028
  %cmp49 = icmp eq i32 %conv48, 20, !dbg !1029
  br i1 %cmp49, label %land.lhs.true51, label %if.end68, !dbg !1030

land.lhs.true51:                                  ; preds = %land.lhs.true
  %47 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1031
  %results52 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %47, i32 0, i32 44, !dbg !1032
  %48 = load %union.acpi_generic_state*, %union.acpi_generic_state** %results52, align 8, !dbg !1032
  %results53 = bitcast %union.acpi_generic_state* %48 to %struct.acpi_result_values*, !dbg !1033
  %obj_desc54 = getelementptr inbounds %struct.acpi_result_values, %struct.acpi_result_values* %results53, i32 0, i32 5, !dbg !1034
  %arrayidx55 = getelementptr [8 x %union.acpi_operand_object*], [8 x %union.acpi_operand_object*]* %obj_desc54, i64 0, i64 0, !dbg !1031
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx55, align 8, !dbg !1031
  %reference = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_reference*, !dbg !1035
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1036
  %50 = load i8, i8* %class, align 1, !dbg !1036
  %conv56 = zext i8 %50 to i32, !dbg !1037
  %cmp57 = icmp ne i32 %conv56, 3, !dbg !1038
  br i1 %cmp57, label %if.then59, label %if.end68, !dbg !1039

if.then59:                                        ; preds = %land.lhs.true51
  %51 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1040
  %results60 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %51, i32 0, i32 44, !dbg !1042
  %52 = load %union.acpi_generic_state*, %union.acpi_generic_state** %results60, align 8, !dbg !1042
  %results61 = bitcast %union.acpi_generic_state* %52 to %struct.acpi_result_values*, !dbg !1043
  %obj_desc62 = getelementptr inbounds %struct.acpi_result_values, %struct.acpi_result_values* %results61, i32 0, i32 5, !dbg !1044
  %arrayidx63 = getelementptr [8 x %union.acpi_operand_object*], [8 x %union.acpi_operand_object*]* %obj_desc62, i64 0, i64 0, !dbg !1040
  %53 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1045
  %call64 = call i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %arrayidx63, %struct.acpi_walk_state* %53) #3, !dbg !1046
  store i32 %call64, i32* %status, align 4, !dbg !1047
  %54 = load i32, i32* %status, align 4, !dbg !1048
  %tobool65 = icmp ne i32 %54, 0, !dbg !1048
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !1050

if.then66:                                        ; preds = %if.then59
  %55 = load i32, i32* %status, align 4, !dbg !1051
  store i32 %55, i32* %retval, align 4, !dbg !1053
  br label %return, !dbg !1053

if.end67:                                         ; preds = %if.then59
  br label %if.end68, !dbg !1054

if.end68:                                         ; preds = %if.end67, %land.lhs.true51, %land.lhs.true, %if.then36
  %56 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1055
  %results69 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %56, i32 0, i32 44, !dbg !1056
  %57 = load %union.acpi_generic_state*, %union.acpi_generic_state** %results69, align 8, !dbg !1056
  %results70 = bitcast %union.acpi_generic_state* %57 to %struct.acpi_result_values*, !dbg !1057
  %obj_desc71 = getelementptr inbounds %struct.acpi_result_values, %struct.acpi_result_values* %results70, i32 0, i32 5, !dbg !1058
  %arrayidx72 = getelementptr [8 x %union.acpi_operand_object*], [8 x %union.acpi_operand_object*]* %obj_desc71, i64 0, i64 0, !dbg !1055
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx72, align 8, !dbg !1055
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1059
  %return_desc73 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %59, i32 0, i32 45, !dbg !1060
  store %union.acpi_operand_object* %58, %union.acpi_operand_object** %return_desc73, align 8, !dbg !1061
  br label %if.end84, !dbg !1062

if.else74:                                        ; preds = %if.else
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1063
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %60, i32 0, i32 5, !dbg !1066
  %61 = load i8, i8* %num_operands, align 1, !dbg !1066
  %tobool75 = icmp ne i8 %61, 0, !dbg !1063
  br i1 %tobool75, label %if.then76, label %if.end79, !dbg !1067

if.then76:                                        ; preds = %if.else74
  %62 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1068
  %operands77 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %62, i32 0, i32 28, !dbg !1070
  %arrayidx78 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands77, i64 0, i64 0, !dbg !1068
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx78, align 8, !dbg !1068
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %63) #3, !dbg !1071
  br label %if.end79, !dbg !1072

if.end79:                                         ; preds = %if.then76, %if.else74
  %64 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1073
  %operands80 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %64, i32 0, i32 28, !dbg !1074
  %arrayidx81 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands80, i64 0, i64 0, !dbg !1073
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx81, align 8, !dbg !1075
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1076
  %num_operands82 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %65, i32 0, i32 5, !dbg !1077
  store i8 0, i8* %num_operands82, align 1, !dbg !1078
  %66 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1079
  %return_desc83 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %66, i32 0, i32 45, !dbg !1080
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_desc83, align 8, !dbg !1081
  br label %if.end84

if.end84:                                         ; preds = %if.end79, %if.end68
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end32
  store i32 16387, i32* %status, align 4, !dbg !1082
  br label %sw.epilog, !dbg !1083

sw.bb86:                                          ; preds = %entry
  br label %sw.epilog, !dbg !1084

sw.bb87:                                          ; preds = %entry
  %67 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1085
  call void @acpi_db_signal_break_point(%struct.acpi_walk_state* %67) #3, !dbg !1086
  %call88 = call i32 @acpi_os_signal(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0)) #3, !dbg !1087
  store i32 %call88, i32* %status, align 4, !dbg !1088
  br label %sw.epilog, !dbg !1089

sw.bb89:                                          ; preds = %entry, %entry
  br label %while.cond, !dbg !1090

while.cond:                                       ; preds = %while.body, %sw.bb89
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1091
  %control_state90 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %68, i32 0, i32 32, !dbg !1092
  %69 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state90, align 8, !dbg !1092
  %tobool91 = icmp ne %union.acpi_generic_state* %69, null, !dbg !1091
  br i1 %tobool91, label %land.rhs, label %land.end, !dbg !1093

land.rhs:                                         ; preds = %while.cond
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1094
  %control_state92 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %70, i32 0, i32 32, !dbg !1095
  %71 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state92, align 8, !dbg !1095
  %control93 = bitcast %union.acpi_generic_state* %71 to %struct.acpi_control_state*, !dbg !1096
  %opcode = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control93, i32 0, i32 5, !dbg !1097
  %72 = load i16, i16* %opcode, align 2, !dbg !1097
  %conv94 = zext i16 %72 to i32, !dbg !1094
  %cmp95 = icmp ne i32 %conv94, 162, !dbg !1098
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %73 = phi i1 [ false, %while.cond ], [ %cmp95, %land.rhs ], !dbg !1099
  br i1 %73, label %while.body, label %while.end, !dbg !1090

while.body:                                       ; preds = %land.end
  %74 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1100
  %control_state97 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %74, i32 0, i32 32, !dbg !1102
  %call98 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %control_state97) #3, !dbg !1103
  store %union.acpi_generic_state* %call98, %union.acpi_generic_state** %control_state, align 8, !dbg !1104
  %75 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !1105
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %75) #3, !dbg !1106
  br label %while.cond, !dbg !1090, !llvm.loop !1107

while.end:                                        ; preds = %land.end
  %76 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1109
  %control_state99 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %76, i32 0, i32 32, !dbg !1111
  %77 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state99, align 8, !dbg !1111
  %tobool100 = icmp ne %union.acpi_generic_state* %77, null, !dbg !1109
  br i1 %tobool100, label %if.end102, label %if.then101, !dbg !1112

if.then101:                                       ; preds = %while.end
  store i32 12314, i32* %retval, align 4, !dbg !1113
  br label %return, !dbg !1113

if.end102:                                        ; preds = %while.end
  %78 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1115
  %control_state103 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %78, i32 0, i32 32, !dbg !1116
  %79 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state103, align 8, !dbg !1116
  %control104 = bitcast %union.acpi_generic_state* %79 to %struct.acpi_control_state*, !dbg !1117
  %package_end = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control104, i32 0, i32 8, !dbg !1118
  %80 = load i8*, i8** %package_end, align 8, !dbg !1118
  %81 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1119
  %aml_last_while105 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %81, i32 0, i32 30, !dbg !1120
  store i8* %80, i8** %aml_last_while105, align 8, !dbg !1121
  %82 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1122
  %common106 = bitcast %union.acpi_parse_object* %82 to %struct.acpi_parse_obj_common*, !dbg !1124
  %aml_opcode107 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common106, i32 0, i32 3, !dbg !1125
  %83 = load i16, i16* %aml_opcode107, align 2, !dbg !1125
  %conv108 = zext i16 %83 to i32, !dbg !1122
  %cmp109 = icmp eq i32 %conv108, 165, !dbg !1126
  br i1 %cmp109, label %if.then111, label %if.else112, !dbg !1127

if.then111:                                       ; preds = %if.end102
  store i32 16393, i32* %status, align 4, !dbg !1128
  br label %if.end113, !dbg !1130

if.else112:                                       ; preds = %if.end102
  store i32 16394, i32* %status, align 4, !dbg !1131
  br label %if.end113

if.end113:                                        ; preds = %if.else112, %if.then111
  br label %sw.epilog, !dbg !1133

sw.default:                                       ; preds = %entry
  %84 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1134
  %common114 = bitcast %union.acpi_parse_object* %84 to %struct.acpi_parse_obj_common*, !dbg !1134
  %aml_opcode115 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common114, i32 0, i32 3, !dbg !1134
  %85 = load i16, i16* %aml_opcode115, align 2, !dbg !1134
  %conv116 = zext i16 %85 to i32, !dbg !1134
  %86 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1134
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 364, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %conv116, %union.acpi_parse_object* %86) #3, !dbg !1134
  store i32 12289, i32* %status, align 4, !dbg !1135
  br label %sw.epilog, !dbg !1136

sw.epilog:                                        ; preds = %sw.default, %if.end113, %sw.bb87, %sw.bb86, %if.end85, %if.end14, %if.end, %if.then12, %sw.bb5, %sw.bb
  %87 = load i32, i32* %status, align 4, !dbg !1137
  store i32 %87, i32* %retval, align 4, !dbg !1138
  br label %return, !dbg !1138

return:                                           ; preds = %sw.epilog, %if.then101, %if.then66, %if.then31, %if.then27
  %88 = load i32, i32* %retval, align 4, !dbg !1139
  ret i32 %88, !dbg !1139
}

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_clear_implicit_return(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_create_operands(%struct.acpi_walk_state*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_db_signal_break_point(%struct.acpi_walk_state* %walk_state) #0 !dbg !1140 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1144, metadata !DIExpression()), !dbg !1145
  ret void, !dbg !1145
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_signal(i32, i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!810, !811, !812, !813}
!llvm.ident = !{!814}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !806, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !805, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dscontrol.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 321, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6, isUnsigned: true)
!17 = !{!18, !24, !27, !30, !33, !40, !53}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !26)
!26 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !29)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !21, line: 22, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !23, line: 30, baseType: !32)
!32 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 432, size: 1600, elements: !35)
!35 = !{!36, !42, !803, !804}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !34, file: !6, line: 433, baseType: !37, size: 128)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 427, size: 128, elements: !38)
!38 = !{!39, !41}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !37, file: !6, line: 428, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !37, file: !6, line: 429, baseType: !27, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !34, file: !6, line: 434, baseType: !43, size: 576)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 367, size: 576, elements: !44)
!44 = !{!45, !57, !70, !82, !118, !132, !141, !454, !471, !486, !499, !577, !589, !603, !613, !631, !653, !672, !691, !710, !723, !749, !766, !779, !793, !802}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !43, file: !6, line: 368, baseType: !46, size: 128)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !47)
!47 = !{!48, !50, !51, !52, !56}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !46, file: !6, line: 74, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !46, file: !6, line: 74, baseType: !27, size: 8, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !6, line: 74, baseType: !27, size: 8, offset: 72)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !46, file: !6, line: 74, baseType: !53, size: 16, offset: 80)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !55)
!55 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !6, line: 74, baseType: !27, size: 8, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !43, file: !6, line: 369, baseType: !58, size: 192)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !59)
!59 = !{!60, !61, !62, !63, !64, !65, !69}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !58, file: !6, line: 77, baseType: !49, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !58, file: !6, line: 77, baseType: !27, size: 8, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !6, line: 77, baseType: !27, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !58, file: !6, line: 77, baseType: !53, size: 16, offset: 80)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !6, line: 77, baseType: !27, size: 8, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !58, file: !6, line: 77, baseType: !66, size: 24, offset: 104)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !58, file: !6, line: 78, baseType: !24, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !43, file: !6, line: 370, baseType: !71, size: 256)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !81}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !71, file: !6, line: 94, baseType: !49, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !71, file: !6, line: 94, baseType: !27, size: 8, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !71, file: !6, line: 94, baseType: !27, size: 8, offset: 72)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !71, file: !6, line: 94, baseType: !53, size: 16, offset: 80)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !71, file: !6, line: 94, baseType: !27, size: 8, offset: 96)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !71, file: !6, line: 94, baseType: !79, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !71, file: !6, line: 94, baseType: !20, size: 32, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !43, file: !6, line: 371, baseType: !83, size: 384)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !92, !93, !94, !95}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !83, file: !6, line: 98, baseType: !49, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !83, file: !6, line: 98, baseType: !27, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !6, line: 98, baseType: !27, size: 8, offset: 72)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !83, file: !6, line: 98, baseType: !53, size: 16, offset: 80)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !6, line: 98, baseType: !27, size: 8, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !83, file: !6, line: 98, baseType: !91, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !83, file: !6, line: 98, baseType: !20, size: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !83, file: !6, line: 99, baseType: !20, size: 32, offset: 224)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !83, file: !6, line: 100, baseType: !91, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !83, file: !6, line: 101, baseType: !96, size: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !98, line: 133, size: 384, elements: !99)
!98 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !101, !102, !103, !104, !113, !114, !115, !116}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !97, file: !98, line: 134, baseType: !49, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !97, file: !98, line: 135, baseType: !27, size: 8, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !98, line: 136, baseType: !27, size: 8, offset: 72)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !98, line: 137, baseType: !53, size: 16, offset: 80)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !98, line: 138, baseType: !105, size: 32, offset: 96)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !106, line: 327, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !105, file: !106, line: 328, baseType: !20, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !105, file: !106, line: 329, baseType: !110, size: 32)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 32, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 4)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !97, file: !98, line: 139, baseType: !96, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !97, file: !98, line: 140, baseType: !96, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !97, file: !98, line: 141, baseType: !96, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !97, file: !98, line: 142, baseType: !117, size: 16, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !53)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !43, file: !6, line: 372, baseType: !119, size: 384)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !129, !130, !131}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !119, file: !6, line: 105, baseType: !49, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !119, file: !6, line: 105, baseType: !27, size: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !6, line: 105, baseType: !27, size: 8, offset: 72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !119, file: !6, line: 105, baseType: !53, size: 16, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !6, line: 105, baseType: !27, size: 8, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !119, file: !6, line: 105, baseType: !96, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !119, file: !6, line: 106, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !119, file: !6, line: 107, baseType: !91, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !119, file: !6, line: 108, baseType: !20, size: 32, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !119, file: !6, line: 109, baseType: !20, size: 32, offset: 352)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !43, file: !6, line: 373, baseType: !133, size: 192)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !133, file: !6, line: 119, baseType: !49, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !133, file: !6, line: 119, baseType: !27, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !6, line: 119, baseType: !27, size: 8, offset: 72)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !133, file: !6, line: 119, baseType: !53, size: 16, offset: 80)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !6, line: 119, baseType: !27, size: 8, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !133, file: !6, line: 119, baseType: !40, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !43, file: !6, line: 374, baseType: !142, size: 448)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 143, size: 448, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !451, !452, !453}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !142, file: !6, line: 144, baseType: !49, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !142, file: !6, line: 144, baseType: !27, size: 8, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !6, line: 144, baseType: !27, size: 8, offset: 72)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !142, file: !6, line: 144, baseType: !53, size: 16, offset: 80)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !142, file: !6, line: 144, baseType: !27, size: 8, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !142, file: !6, line: 144, baseType: !27, size: 8, offset: 104)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !142, file: !6, line: 145, baseType: !27, size: 8, offset: 112)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !142, file: !6, line: 146, baseType: !27, size: 8, offset: 120)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !142, file: !6, line: 147, baseType: !49, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !142, file: !6, line: 148, baseType: !49, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !142, file: !6, line: 149, baseType: !91, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !142, file: !6, line: 153, baseType: !156, size: 64, offset: 320)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !142, file: !6, line: 150, size: 64, elements: !157)
!157 = !{!158, !450}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !156, file: !6, line: 151, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !98, line: 248, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!18, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !165, line: 37, size: 9024, elements: !166)
!165 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !396, !397, !398, !399, !400, !404, !406, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !433, !434, !435, !436, !437, !438, !439, !440, !442, !448}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !165, line: 38, baseType: !163, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !164, file: !165, line: 39, baseType: !27, size: 8, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !164, file: !165, line: 40, baseType: !27, size: 8, offset: 72)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !164, file: !165, line: 41, baseType: !53, size: 16, offset: 80)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !164, file: !165, line: 42, baseType: !27, size: 8, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !164, file: !165, line: 43, baseType: !27, size: 8, offset: 104)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !164, file: !165, line: 44, baseType: !27, size: 8, offset: 112)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !164, file: !165, line: 45, baseType: !117, size: 16, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !164, file: !165, line: 46, baseType: !27, size: 8, offset: 144)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !164, file: !165, line: 47, baseType: !27, size: 8, offset: 152)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !164, file: !165, line: 48, baseType: !27, size: 8, offset: 160)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !164, file: !165, line: 49, baseType: !27, size: 8, offset: 168)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !164, file: !165, line: 50, baseType: !27, size: 8, offset: 176)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !164, file: !165, line: 51, baseType: !27, size: 8, offset: 184)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !164, file: !165, line: 52, baseType: !27, size: 8, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !164, file: !165, line: 53, baseType: !27, size: 8, offset: 200)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !164, file: !165, line: 54, baseType: !91, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !164, file: !165, line: 55, baseType: !20, size: 32, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !164, file: !165, line: 56, baseType: !20, size: 32, offset: 352)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !164, file: !165, line: 57, baseType: !20, size: 32, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !164, file: !165, line: 58, baseType: !20, size: 32, offset: 416)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !164, file: !165, line: 60, baseType: !189, size: 640, offset: 448)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !98, line: 893, size: 640, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !277, !278, !394, !395}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !189, file: !98, line: 894, baseType: !91, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !189, file: !98, line: 895, baseType: !91, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !189, file: !98, line: 896, baseType: !91, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !189, file: !98, line: 897, baseType: !91, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !189, file: !98, line: 898, baseType: !91, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !189, file: !98, line: 899, baseType: !197, size: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !98, line: 875, size: 1600, elements: !199)
!199 = !{!200, !220, !236}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !198, file: !98, line: 876, baseType: !201, size: 448)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !98, line: 828, size: 448, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !219}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !201, file: !98, line: 829, baseType: !197, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !201, file: !98, line: 829, baseType: !27, size: 8, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !201, file: !98, line: 829, baseType: !27, size: 8, offset: 72)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !201, file: !98, line: 829, baseType: !53, size: 16, offset: 80)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !201, file: !98, line: 829, baseType: !91, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !98, line: 829, baseType: !197, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !201, file: !98, line: 829, baseType: !96, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !201, file: !98, line: 829, baseType: !211, size: 64, offset: 320)
!211 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !98, line: 716, size: 64, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !211, file: !98, line: 717, baseType: !24, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !211, file: !98, line: 718, baseType: !20, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !211, file: !98, line: 719, baseType: !79, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !211, file: !98, line: 720, baseType: !91, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !211, file: !98, line: 721, baseType: !79, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !211, file: !98, line: 722, baseType: !197, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !201, file: !98, line: 829, baseType: !27, size: 8, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !198, file: !98, line: 877, baseType: !221, size: 640)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !98, line: 835, size: 640, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !221, file: !98, line: 836, baseType: !197, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !221, file: !98, line: 836, baseType: !27, size: 8, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !221, file: !98, line: 836, baseType: !27, size: 8, offset: 72)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !221, file: !98, line: 836, baseType: !53, size: 16, offset: 80)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !221, file: !98, line: 836, baseType: !91, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !98, line: 836, baseType: !197, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !221, file: !98, line: 836, baseType: !96, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !221, file: !98, line: 836, baseType: !211, size: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !221, file: !98, line: 836, baseType: !27, size: 8, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !221, file: !98, line: 836, baseType: !79, size: 64, offset: 448)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !221, file: !98, line: 837, baseType: !91, size: 64, offset: 512)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !221, file: !98, line: 838, baseType: !20, size: 32, offset: 576)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !98, line: 839, baseType: !20, size: 32, offset: 608)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !198, file: !98, line: 878, baseType: !237, size: 1600)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !98, line: 846, size: 1600, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !237, file: !98, line: 847, baseType: !197, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !237, file: !98, line: 847, baseType: !27, size: 8, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !237, file: !98, line: 847, baseType: !27, size: 8, offset: 72)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !237, file: !98, line: 847, baseType: !53, size: 16, offset: 80)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !237, file: !98, line: 847, baseType: !91, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !237, file: !98, line: 847, baseType: !197, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !237, file: !98, line: 847, baseType: !96, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !237, file: !98, line: 847, baseType: !211, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !237, file: !98, line: 847, baseType: !27, size: 8, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !237, file: !98, line: 847, baseType: !197, size: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !237, file: !98, line: 848, baseType: !197, size: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !237, file: !98, line: 849, baseType: !79, size: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !237, file: !98, line: 850, baseType: !27, size: 8, offset: 640)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !237, file: !98, line: 851, baseType: !79, size: 64, offset: 704)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !237, file: !98, line: 852, baseType: !79, size: 64, offset: 768)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !237, file: !98, line: 853, baseType: !79, size: 64, offset: 832)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !237, file: !98, line: 854, baseType: !110, size: 32, offset: 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !237, file: !98, line: 855, baseType: !20, size: 32, offset: 928)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !237, file: !98, line: 856, baseType: !20, size: 32, offset: 960)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !237, file: !98, line: 857, baseType: !20, size: 32, offset: 992)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !237, file: !98, line: 858, baseType: !20, size: 32, offset: 1024)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !237, file: !98, line: 859, baseType: !20, size: 32, offset: 1056)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !237, file: !98, line: 860, baseType: !20, size: 32, offset: 1088)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !237, file: !98, line: 861, baseType: !20, size: 32, offset: 1120)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !237, file: !98, line: 862, baseType: !20, size: 32, offset: 1152)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !237, file: !98, line: 863, baseType: !20, size: 32, offset: 1184)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !237, file: !98, line: 864, baseType: !20, size: 32, offset: 1216)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !237, file: !98, line: 865, baseType: !20, size: 32, offset: 1248)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !237, file: !98, line: 866, baseType: !20, size: 32, offset: 1280)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !237, file: !98, line: 867, baseType: !20, size: 32, offset: 1312)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !237, file: !98, line: 868, baseType: !53, size: 16, offset: 1344)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !237, file: !98, line: 869, baseType: !27, size: 8, offset: 1360)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !237, file: !98, line: 870, baseType: !27, size: 8, offset: 1368)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !237, file: !98, line: 871, baseType: !27, size: 8, offset: 1376)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !237, file: !98, line: 872, baseType: !274, size: 160, offset: 1384)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 160, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 20)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !189, file: !98, line: 900, baseType: !96, size: 64, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !189, file: !98, line: 901, baseType: !279, size: 64, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !98, line: 663, size: 640, elements: !281)
!281 = !{!282, !290, !303, !312, !321, !334, !348, !360, !372}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !280, file: !98, line: 664, baseType: !283, size: 128)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !98, line: 567, size: 128, elements: !284)
!284 = !{!285, !286, !287, !288, !289}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !98, line: 568, baseType: !40, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !283, file: !98, line: 568, baseType: !27, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !98, line: 568, baseType: !27, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !283, file: !98, line: 568, baseType: !53, size: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !283, file: !98, line: 568, baseType: !53, size: 16, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !280, file: !98, line: 665, baseType: !291, size: 384)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !98, line: 593, size: 384, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !98, line: 594, baseType: !40, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !291, file: !98, line: 594, baseType: !27, size: 8, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !98, line: 594, baseType: !27, size: 8, offset: 72)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !291, file: !98, line: 594, baseType: !53, size: 16, offset: 80)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !98, line: 594, baseType: !53, size: 16, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !291, file: !98, line: 594, baseType: !53, size: 16, offset: 112)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !291, file: !98, line: 595, baseType: !197, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !291, file: !98, line: 596, baseType: !91, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !291, file: !98, line: 597, baseType: !91, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !291, file: !98, line: 598, baseType: !24, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !280, file: !98, line: 666, baseType: !304, size: 192)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !98, line: 573, size: 192, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !98, line: 574, baseType: !40, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !304, file: !98, line: 574, baseType: !27, size: 8, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !98, line: 574, baseType: !27, size: 8, offset: 72)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !304, file: !98, line: 574, baseType: !53, size: 16, offset: 80)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !304, file: !98, line: 574, baseType: !53, size: 16, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !304, file: !98, line: 574, baseType: !49, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !280, file: !98, line: 667, baseType: !313, size: 192)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !98, line: 604, size: 192, elements: !314)
!314 = !{!315, !316, !317, !318, !319, !320}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !98, line: 605, baseType: !40, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !313, file: !98, line: 605, baseType: !27, size: 8, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !98, line: 605, baseType: !27, size: 8, offset: 72)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !313, file: !98, line: 605, baseType: !53, size: 16, offset: 80)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !313, file: !98, line: 605, baseType: !53, size: 16, offset: 96)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !313, file: !98, line: 605, baseType: !96, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !280, file: !98, line: 668, baseType: !322, size: 448)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !98, line: 608, size: 448, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !98, line: 609, baseType: !40, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !322, file: !98, line: 609, baseType: !27, size: 8, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !98, line: 609, baseType: !27, size: 8, offset: 72)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !322, file: !98, line: 609, baseType: !53, size: 16, offset: 80)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !322, file: !98, line: 609, baseType: !53, size: 16, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !322, file: !98, line: 609, baseType: !20, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !322, file: !98, line: 610, baseType: !197, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !322, file: !98, line: 611, baseType: !91, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !322, file: !98, line: 612, baseType: !91, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !322, file: !98, line: 613, baseType: !20, size: 32, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !280, file: !98, line: 669, baseType: !335, size: 512)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !98, line: 580, size: 512, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !98, line: 581, baseType: !40, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !335, file: !98, line: 581, baseType: !27, size: 8, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !98, line: 581, baseType: !27, size: 8, offset: 72)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !335, file: !98, line: 581, baseType: !53, size: 16, offset: 80)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !335, file: !98, line: 581, baseType: !53, size: 16, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !335, file: !98, line: 581, baseType: !20, size: 32, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !335, file: !98, line: 582, baseType: !49, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !335, file: !98, line: 583, baseType: !49, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !335, file: !98, line: 584, baseType: !163, size: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !335, file: !98, line: 585, baseType: !40, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !335, file: !98, line: 586, baseType: !20, size: 32, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !280, file: !98, line: 670, baseType: !349, size: 320)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !98, line: 620, size: 320, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356, !357, !358, !359}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !349, file: !98, line: 621, baseType: !40, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !349, file: !98, line: 621, baseType: !27, size: 8, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !349, file: !98, line: 621, baseType: !27, size: 8, offset: 72)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !349, file: !98, line: 621, baseType: !53, size: 16, offset: 80)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !349, file: !98, line: 621, baseType: !53, size: 16, offset: 96)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !349, file: !98, line: 621, baseType: !27, size: 8, offset: 112)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !349, file: !98, line: 622, baseType: !163, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !349, file: !98, line: 623, baseType: !49, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !349, file: !98, line: 624, baseType: !24, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !280, file: !98, line: 671, baseType: !361, size: 640)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !98, line: 631, size: 640, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !98, line: 632, baseType: !40, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !361, file: !98, line: 632, baseType: !27, size: 8, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !98, line: 632, baseType: !27, size: 8, offset: 72)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !361, file: !98, line: 632, baseType: !53, size: 16, offset: 80)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !361, file: !98, line: 632, baseType: !53, size: 16, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !361, file: !98, line: 633, baseType: !369, size: 512, offset: 128)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 512, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 8)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !280, file: !98, line: 672, baseType: !373, size: 320)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !98, line: 654, size: 320, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !373, file: !98, line: 655, baseType: !40, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !373, file: !98, line: 655, baseType: !27, size: 8, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !373, file: !98, line: 655, baseType: !27, size: 8, offset: 72)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !373, file: !98, line: 655, baseType: !53, size: 16, offset: 80)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !373, file: !98, line: 655, baseType: !53, size: 16, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !373, file: !98, line: 655, baseType: !27, size: 8, offset: 112)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !373, file: !98, line: 656, baseType: !96, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !373, file: !98, line: 657, baseType: !49, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !373, file: !98, line: 658, baseType: !384, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !98, line: 645, size: 128, elements: !386)
!386 = !{!387, !393}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !385, file: !98, line: 646, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1052, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !392, !20, !40}
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !40)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !385, file: !98, line: 647, baseType: !40, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !189, file: !98, line: 902, baseType: !197, size: 64, offset: 512)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !189, file: !98, line: 903, baseType: !20, size: 32, offset: 576)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !164, file: !165, line: 61, baseType: !20, size: 32, offset: 1088)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !164, file: !165, line: 62, baseType: !20, size: 32, offset: 1120)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !164, file: !165, line: 63, baseType: !53, size: 16, offset: 1152)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !164, file: !165, line: 64, baseType: !27, size: 8, offset: 1168)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !164, file: !165, line: 66, baseType: !401, size: 2688, offset: 1216)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 2688, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 7)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !164, file: !165, line: 67, baseType: !405, size: 3072, offset: 3904)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 3072, elements: !370)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !164, file: !165, line: 68, baseType: !407, size: 576, offset: 6976)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 576, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 9)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !164, file: !165, line: 69, baseType: !128, size: 64, offset: 7552)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !164, file: !165, line: 71, baseType: !91, size: 64, offset: 7616)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !164, file: !165, line: 72, baseType: !128, size: 64, offset: 7680)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !164, file: !165, line: 73, baseType: !279, size: 64, offset: 7744)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !164, file: !165, line: 74, baseType: !96, size: 64, offset: 7808)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !164, file: !165, line: 75, baseType: !49, size: 64, offset: 7872)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !164, file: !165, line: 76, baseType: !96, size: 64, offset: 7936)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !164, file: !165, line: 77, baseType: !197, size: 64, offset: 8000)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !164, file: !165, line: 78, baseType: !49, size: 64, offset: 8064)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !164, file: !165, line: 79, baseType: !96, size: 64, offset: 8128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !164, file: !165, line: 80, baseType: !79, size: 64, offset: 8192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !164, file: !165, line: 81, baseType: !197, size: 64, offset: 8256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !164, file: !165, line: 82, baseType: !423, size: 64, offset: 8320)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !98, line: 702, size: 128, elements: !426)
!426 = !{!427, !428, !429, !430, !431, !432}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !425, file: !98, line: 706, baseType: !20, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !425, file: !98, line: 707, baseType: !20, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !425, file: !98, line: 708, baseType: !53, size: 16, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !425, file: !98, line: 709, baseType: !27, size: 8, offset: 80)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !425, file: !98, line: 710, baseType: !27, size: 8, offset: 88)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !425, file: !98, line: 711, baseType: !27, size: 8, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !164, file: !165, line: 83, baseType: !197, size: 64, offset: 8384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !164, file: !165, line: 84, baseType: !49, size: 64, offset: 8448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !164, file: !165, line: 85, baseType: !279, size: 64, offset: 8512)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !164, file: !165, line: 86, baseType: !49, size: 64, offset: 8576)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !164, file: !165, line: 87, baseType: !279, size: 64, offset: 8640)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !164, file: !165, line: 88, baseType: !197, size: 64, offset: 8704)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !164, file: !165, line: 89, baseType: !197, size: 64, offset: 8768)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !164, file: !165, line: 90, baseType: !441, size: 64, offset: 8832)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !164, file: !165, line: 91, baseType: !443, size: 64, offset: 8896)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !98, line: 637, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!18, !163, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !164, file: !165, line: 92, baseType: !449, size: 64, offset: 8960)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !98, line: 641, baseType: !160)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !156, file: !6, line: 152, baseType: !49, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !142, file: !6, line: 155, baseType: !20, size: 32, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !142, file: !6, line: 156, baseType: !117, size: 16, offset: 416)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !142, file: !6, line: 157, baseType: !27, size: 8, offset: 432)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !43, file: !6, line: 375, baseType: !455, size: 576)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !455, file: !6, line: 123, baseType: !49, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !455, file: !6, line: 123, baseType: !27, size: 8, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !455, file: !6, line: 123, baseType: !27, size: 8, offset: 72)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !455, file: !6, line: 123, baseType: !53, size: 16, offset: 80)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !6, line: 123, baseType: !27, size: 8, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !455, file: !6, line: 123, baseType: !27, size: 8, offset: 104)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !455, file: !6, line: 124, baseType: !53, size: 16, offset: 112)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !455, file: !6, line: 125, baseType: !40, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !455, file: !6, line: 126, baseType: !24, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !455, file: !6, line: 127, baseType: !441, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !455, file: !6, line: 128, baseType: !49, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !6, line: 129, baseType: !49, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !455, file: !6, line: 130, baseType: !96, size: 64, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !455, file: !6, line: 131, baseType: !27, size: 8, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !43, file: !6, line: 376, baseType: !472, size: 448)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 448, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !485}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !472, file: !6, line: 135, baseType: !49, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !472, file: !6, line: 135, baseType: !27, size: 8, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !6, line: 135, baseType: !27, size: 8, offset: 72)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !472, file: !6, line: 135, baseType: !53, size: 16, offset: 80)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !6, line: 135, baseType: !27, size: 8, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !472, file: !6, line: 135, baseType: !27, size: 8, offset: 104)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !472, file: !6, line: 136, baseType: !96, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !472, file: !6, line: 137, baseType: !49, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !472, file: !6, line: 138, baseType: !49, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !472, file: !6, line: 139, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !24)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !472, file: !6, line: 140, baseType: !20, size: 32, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !43, file: !6, line: 377, baseType: !487, size: 320)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 184, size: 320, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !498}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !487, file: !6, line: 185, baseType: !49, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !487, file: !6, line: 185, baseType: !27, size: 8, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !487, file: !6, line: 185, baseType: !27, size: 8, offset: 72)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !487, file: !6, line: 185, baseType: !53, size: 16, offset: 80)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !6, line: 185, baseType: !27, size: 8, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !487, file: !6, line: 185, baseType: !495, size: 128, offset: 128)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 128, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 2)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !487, file: !6, line: 185, baseType: !49, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !43, file: !6, line: 378, baseType: !500, size: 384)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 187, size: 384, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !500, file: !6, line: 188, baseType: !49, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !500, file: !6, line: 188, baseType: !27, size: 8, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !6, line: 188, baseType: !27, size: 8, offset: 72)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !500, file: !6, line: 188, baseType: !53, size: 16, offset: 80)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !6, line: 188, baseType: !27, size: 8, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !500, file: !6, line: 189, baseType: !495, size: 128, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !500, file: !6, line: 189, baseType: !49, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !500, file: !6, line: 189, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !98, line: 480, size: 576, elements: !512)
!512 = !{!513, !514, !515, !516, !524, !539, !571, !572, !573, !574, !575, !576}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !511, file: !98, line: 481, baseType: !96, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !511, file: !98, line: 482, baseType: !510, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !511, file: !98, line: 483, baseType: !510, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !511, file: !98, line: 484, baseType: !517, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !98, line: 497, size: 256, elements: !519)
!519 = !{!520, !521, !522, !523}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !518, file: !98, line: 498, baseType: !517, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !518, file: !98, line: 499, baseType: !517, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !518, file: !98, line: 500, baseType: !510, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !518, file: !98, line: 501, baseType: !20, size: 32, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !511, file: !98, line: 485, baseType: !525, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !98, line: 466, size: 320, elements: !527)
!527 = !{!528, !533, !534, !535, !536, !537, !538}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !526, file: !98, line: 467, baseType: !529, size: 128)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !98, line: 459, size: 128, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !529, file: !98, line: 460, baseType: !27, size: 8)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !529, file: !98, line: 461, baseType: !24, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !526, file: !98, line: 468, baseType: !529, size: 128, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !526, file: !98, line: 469, baseType: !53, size: 16, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !526, file: !98, line: 470, baseType: !27, size: 8, offset: 272)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !526, file: !98, line: 471, baseType: !27, size: 8, offset: 280)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !526, file: !98, line: 472, baseType: !27, size: 8, offset: 288)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !526, file: !98, line: 473, baseType: !27, size: 8, offset: 296)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !511, file: !98, line: 486, baseType: !540, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !98, line: 448, size: 192, elements: !542)
!542 = !{!543, !566, !567, !568, !569, !570}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !541, file: !98, line: 449, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !98, line: 438, size: 64, elements: !545)
!545 = !{!546, !547, !560}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !544, file: !98, line: 439, baseType: !96, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !544, file: !98, line: 440, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !98, line: 419, size: 256, elements: !550)
!550 = !{!551, !556, !557, !558, !559}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !549, file: !98, line: 420, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1049, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!20, !392, !20, !40}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !549, file: !98, line: 421, baseType: !40, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !549, file: !98, line: 422, baseType: !96, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !549, file: !98, line: 423, baseType: !27, size: 8, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !549, file: !98, line: 424, baseType: !27, size: 8, offset: 200)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !544, file: !98, line: 441, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !98, line: 429, size: 128, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !562, file: !98, line: 430, baseType: !96, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !562, file: !98, line: 431, baseType: !561, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !541, file: !98, line: 450, baseType: !525, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !541, file: !98, line: 451, baseType: !27, size: 8, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !541, file: !98, line: 452, baseType: !27, size: 8, offset: 136)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !541, file: !98, line: 453, baseType: !27, size: 8, offset: 144)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !541, file: !98, line: 454, baseType: !27, size: 8, offset: 152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !511, file: !98, line: 487, baseType: !24, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !511, file: !98, line: 488, baseType: !20, size: 32, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !511, file: !98, line: 489, baseType: !53, size: 16, offset: 480)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !511, file: !98, line: 490, baseType: !53, size: 16, offset: 496)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !511, file: !98, line: 491, baseType: !27, size: 8, offset: 512)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !511, file: !98, line: 492, baseType: !27, size: 8, offset: 520)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !43, file: !6, line: 379, baseType: !578, size: 384)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 192, size: 384, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !578, file: !6, line: 193, baseType: !49, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !578, file: !6, line: 193, baseType: !27, size: 8, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !578, file: !6, line: 193, baseType: !27, size: 8, offset: 72)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !578, file: !6, line: 193, baseType: !53, size: 16, offset: 80)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !6, line: 193, baseType: !27, size: 8, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !578, file: !6, line: 193, baseType: !495, size: 128, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !578, file: !6, line: 193, baseType: !49, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !578, file: !6, line: 193, baseType: !20, size: 32, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !578, file: !6, line: 194, baseType: !20, size: 32, offset: 352)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !43, file: !6, line: 380, baseType: !590, size: 384)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 197, size: 384, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !598, !599, !600, !601}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !590, file: !6, line: 198, baseType: !49, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !590, file: !6, line: 198, baseType: !27, size: 8, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !590, file: !6, line: 198, baseType: !27, size: 8, offset: 72)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !590, file: !6, line: 198, baseType: !53, size: 16, offset: 80)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !590, file: !6, line: 198, baseType: !27, size: 8, offset: 96)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !590, file: !6, line: 200, baseType: !27, size: 8, offset: 104)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !590, file: !6, line: 201, baseType: !27, size: 8, offset: 112)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !590, file: !6, line: 202, baseType: !495, size: 128, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !590, file: !6, line: 202, baseType: !49, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !590, file: !6, line: 202, baseType: !602, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !24)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !43, file: !6, line: 381, baseType: !604, size: 320)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 205, size: 320, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !612}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !604, file: !6, line: 206, baseType: !49, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !604, file: !6, line: 206, baseType: !27, size: 8, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !604, file: !6, line: 206, baseType: !27, size: 8, offset: 72)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !604, file: !6, line: 206, baseType: !53, size: 16, offset: 80)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !6, line: 206, baseType: !27, size: 8, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !604, file: !6, line: 206, baseType: !495, size: 128, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !604, file: !6, line: 206, baseType: !49, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !43, file: !6, line: 382, baseType: !614, size: 384)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 233, size: 384, elements: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !614, file: !6, line: 234, baseType: !49, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !614, file: !6, line: 234, baseType: !27, size: 8, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !614, file: !6, line: 234, baseType: !27, size: 8, offset: 72)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !614, file: !6, line: 234, baseType: !53, size: 16, offset: 80)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !614, file: !6, line: 234, baseType: !27, size: 8, offset: 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !614, file: !6, line: 234, baseType: !27, size: 8, offset: 104)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !614, file: !6, line: 234, baseType: !27, size: 8, offset: 112)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !614, file: !6, line: 234, baseType: !27, size: 8, offset: 120)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !614, file: !6, line: 234, baseType: !96, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !614, file: !6, line: 234, baseType: !20, size: 32, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !614, file: !6, line: 234, baseType: !20, size: 32, offset: 224)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !614, file: !6, line: 234, baseType: !20, size: 32, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !614, file: !6, line: 234, baseType: !27, size: 8, offset: 288)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !614, file: !6, line: 234, baseType: !27, size: 8, offset: 296)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !614, file: !6, line: 234, baseType: !49, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !43, file: !6, line: 383, baseType: !632, size: 576)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 237, size: 576, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !632, file: !6, line: 238, baseType: !49, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !632, file: !6, line: 238, baseType: !27, size: 8, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !632, file: !6, line: 238, baseType: !27, size: 8, offset: 72)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !632, file: !6, line: 238, baseType: !53, size: 16, offset: 80)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !6, line: 238, baseType: !27, size: 8, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !632, file: !6, line: 238, baseType: !27, size: 8, offset: 104)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !632, file: !6, line: 238, baseType: !27, size: 8, offset: 112)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !632, file: !6, line: 238, baseType: !27, size: 8, offset: 120)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !632, file: !6, line: 238, baseType: !96, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !632, file: !6, line: 238, baseType: !20, size: 32, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !632, file: !6, line: 238, baseType: !20, size: 32, offset: 224)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !632, file: !6, line: 238, baseType: !20, size: 32, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !632, file: !6, line: 238, baseType: !27, size: 8, offset: 288)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !632, file: !6, line: 238, baseType: !27, size: 8, offset: 296)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !632, file: !6, line: 238, baseType: !53, size: 16, offset: 304)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !632, file: !6, line: 239, baseType: !49, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !632, file: !6, line: 240, baseType: !91, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !632, file: !6, line: 241, baseType: !53, size: 16, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !632, file: !6, line: 242, baseType: !91, size: 64, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !43, file: !6, line: 384, baseType: !654, size: 384)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 262, size: 384, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !654, file: !6, line: 263, baseType: !49, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !654, file: !6, line: 263, baseType: !27, size: 8, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !654, file: !6, line: 263, baseType: !27, size: 8, offset: 72)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !654, file: !6, line: 263, baseType: !53, size: 16, offset: 80)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !6, line: 263, baseType: !27, size: 8, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !654, file: !6, line: 263, baseType: !27, size: 8, offset: 104)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !654, file: !6, line: 263, baseType: !27, size: 8, offset: 112)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !654, file: !6, line: 263, baseType: !27, size: 8, offset: 120)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !654, file: !6, line: 263, baseType: !96, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !654, file: !6, line: 263, baseType: !20, size: 32, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !654, file: !6, line: 263, baseType: !20, size: 32, offset: 224)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !654, file: !6, line: 263, baseType: !20, size: 32, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !654, file: !6, line: 263, baseType: !27, size: 8, offset: 288)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !654, file: !6, line: 263, baseType: !27, size: 8, offset: 296)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !654, file: !6, line: 263, baseType: !27, size: 8, offset: 304)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !654, file: !6, line: 264, baseType: !49, size: 64, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !43, file: !6, line: 385, baseType: !673, size: 448)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 245, size: 448, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !673, file: !6, line: 246, baseType: !49, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !673, file: !6, line: 246, baseType: !27, size: 8, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !673, file: !6, line: 246, baseType: !27, size: 8, offset: 72)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !673, file: !6, line: 246, baseType: !53, size: 16, offset: 80)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !673, file: !6, line: 246, baseType: !27, size: 8, offset: 96)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !673, file: !6, line: 246, baseType: !27, size: 8, offset: 104)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !673, file: !6, line: 246, baseType: !27, size: 8, offset: 112)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !673, file: !6, line: 246, baseType: !27, size: 8, offset: 120)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !673, file: !6, line: 246, baseType: !96, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !673, file: !6, line: 246, baseType: !20, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !673, file: !6, line: 246, baseType: !20, size: 32, offset: 224)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !673, file: !6, line: 246, baseType: !20, size: 32, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !673, file: !6, line: 246, baseType: !27, size: 8, offset: 288)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !673, file: !6, line: 246, baseType: !27, size: 8, offset: 296)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !673, file: !6, line: 246, baseType: !49, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !673, file: !6, line: 247, baseType: !49, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !43, file: !6, line: 386, baseType: !692, size: 448)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 250, size: 448, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !692, file: !6, line: 251, baseType: !49, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !692, file: !6, line: 251, baseType: !27, size: 8, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !692, file: !6, line: 251, baseType: !27, size: 8, offset: 72)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !692, file: !6, line: 251, baseType: !53, size: 16, offset: 80)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !6, line: 251, baseType: !27, size: 8, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !692, file: !6, line: 251, baseType: !27, size: 8, offset: 104)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !692, file: !6, line: 251, baseType: !27, size: 8, offset: 112)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !692, file: !6, line: 251, baseType: !27, size: 8, offset: 120)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !692, file: !6, line: 251, baseType: !96, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !692, file: !6, line: 251, baseType: !20, size: 32, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !692, file: !6, line: 251, baseType: !20, size: 32, offset: 224)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !692, file: !6, line: 251, baseType: !20, size: 32, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !692, file: !6, line: 251, baseType: !27, size: 8, offset: 288)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !692, file: !6, line: 251, baseType: !27, size: 8, offset: 296)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !692, file: !6, line: 256, baseType: !49, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !692, file: !6, line: 257, baseType: !49, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !43, file: !6, line: 387, baseType: !711, size: 512)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 273, size: 512, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !721, !722}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !711, file: !6, line: 274, baseType: !49, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !6, line: 274, baseType: !27, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !711, file: !6, line: 274, baseType: !27, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !711, file: !6, line: 274, baseType: !53, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !6, line: 274, baseType: !27, size: 8, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !711, file: !6, line: 274, baseType: !96, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !711, file: !6, line: 275, baseType: !20, size: 32, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !711, file: !6, line: 276, baseType: !388, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !711, file: !6, line: 277, baseType: !40, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !6, line: 278, baseType: !495, size: 128, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !43, file: !6, line: 388, baseType: !724, size: 512)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 281, size: 512, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !739, !740, !741, !747, !748}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !724, file: !6, line: 282, baseType: !49, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !724, file: !6, line: 282, baseType: !27, size: 8, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !724, file: !6, line: 282, baseType: !27, size: 8, offset: 72)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !724, file: !6, line: 282, baseType: !53, size: 16, offset: 80)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !6, line: 282, baseType: !27, size: 8, offset: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !724, file: !6, line: 282, baseType: !27, size: 8, offset: 104)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !724, file: !6, line: 283, baseType: !27, size: 8, offset: 112)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !724, file: !6, line: 284, baseType: !734, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1084, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!18, !20, !484, !20, !738, !40, !40}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !724, file: !6, line: 285, baseType: !96, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !724, file: !6, line: 286, baseType: !40, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !724, file: !6, line: 287, baseType: !742, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1102, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!18, !392, !20, !40, !746}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !724, file: !6, line: 288, baseType: !49, size: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !724, file: !6, line: 289, baseType: !49, size: 64, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !43, file: !6, line: 389, baseType: !750, size: 512)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 307, size: 512, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !750, file: !6, line: 308, baseType: !49, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !750, file: !6, line: 308, baseType: !27, size: 8, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !750, file: !6, line: 308, baseType: !27, size: 8, offset: 72)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !750, file: !6, line: 308, baseType: !53, size: 16, offset: 80)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !6, line: 308, baseType: !27, size: 8, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !750, file: !6, line: 308, baseType: !27, size: 8, offset: 104)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !750, file: !6, line: 309, baseType: !27, size: 8, offset: 112)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !750, file: !6, line: 310, baseType: !27, size: 8, offset: 120)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !750, file: !6, line: 311, baseType: !40, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !750, file: !6, line: 312, baseType: !96, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !750, file: !6, line: 313, baseType: !128, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !750, file: !6, line: 314, baseType: !91, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !750, file: !6, line: 315, baseType: !91, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !750, file: !6, line: 316, baseType: !20, size: 32, offset: 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !43, file: !6, line: 390, baseType: !767, size: 448)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 340, size: 448, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777, !778}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !767, file: !6, line: 341, baseType: !49, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !767, file: !6, line: 341, baseType: !27, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !6, line: 341, baseType: !27, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !767, file: !6, line: 341, baseType: !53, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !6, line: 341, baseType: !27, size: 8, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !767, file: !6, line: 341, baseType: !96, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !767, file: !6, line: 342, baseType: !96, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !767, file: !6, line: 343, baseType: !40, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !767, file: !6, line: 344, baseType: !91, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !767, file: !6, line: 345, baseType: !20, size: 32, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !43, file: !6, line: 391, baseType: !780, size: 256)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 350, size: 256, elements: !781)
!781 = !{!782, !783, !784, !785, !786, !787, !792}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !780, file: !6, line: 351, baseType: !49, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !780, file: !6, line: 351, baseType: !27, size: 8, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !780, file: !6, line: 351, baseType: !27, size: 8, offset: 72)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !780, file: !6, line: 351, baseType: !53, size: 16, offset: 80)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !6, line: 351, baseType: !27, size: 8, offset: 96)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !780, file: !6, line: 351, baseType: !788, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1055, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !392, !40}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !780, file: !6, line: 352, baseType: !40, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !43, file: !6, line: 392, baseType: !794, size: 192)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 357, size: 192, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !794, file: !6, line: 358, baseType: !49, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !794, file: !6, line: 358, baseType: !27, size: 8, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !794, file: !6, line: 358, baseType: !27, size: 8, offset: 72)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !794, file: !6, line: 358, baseType: !53, size: 16, offset: 80)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !6, line: 358, baseType: !27, size: 8, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !794, file: !6, line: 358, baseType: !49, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !43, file: !6, line: 399, baseType: !97, size: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !34, file: !6, line: 435, baseType: !97, size: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !34, file: !6, line: 436, baseType: !198, size: 1600)
!805 = !{!0}
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 80, elements: !808)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!808 = !{!809}
!809 = !DISubrange(count: 10)
!810 = !{i32 7, !"Dwarf Version", i32 4}
!811 = !{i32 2, !"Debug Info Version", i32 3}
!812 = !{i32 1, !"wchar_size", i32 2}
!813 = !{i32 1, !"Code Model", i32 2}
!814 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!815 = distinct !DISubprogram(name: "acpi_ds_exec_begin_control_op", scope: !3, file: !3, line: 35, type: !816, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !818)
!816 = !DISubroutineType(types: !817)
!817 = !{!18, !163, !197}
!818 = !{}
!819 = !DILocalVariable(name: "walk_state", arg: 1, scope: !815, file: !3, line: 35, type: !163)
!820 = !DILocation(line: 35, column: 55, scope: !815)
!821 = !DILocalVariable(name: "op", arg: 2, scope: !815, file: !3, line: 36, type: !197)
!822 = !DILocation(line: 36, column: 35, scope: !815)
!823 = !DILocalVariable(name: "status", scope: !815, file: !3, line: 38, type: !18)
!824 = !DILocation(line: 38, column: 14, scope: !815)
!825 = !DILocalVariable(name: "control_state", scope: !815, file: !3, line: 39, type: !279)
!826 = !DILocation(line: 39, column: 28, scope: !815)
!827 = !DILocation(line: 46, column: 10, scope: !815)
!828 = !DILocation(line: 46, column: 14, scope: !815)
!829 = !DILocation(line: 46, column: 21, scope: !815)
!830 = !DILocation(line: 46, column: 2, scope: !815)
!831 = !DILocation(line: 52, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 52, column: 7)
!833 = distinct !DILexicalBlock(scope: !815, file: !3, line: 46, column: 33)
!834 = !DILocation(line: 52, column: 19, scope: !832)
!835 = !DILocation(line: 52, column: 7, scope: !833)
!836 = !DILocation(line: 53, column: 8, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !3, line: 53, column: 8)
!838 = distinct !DILexicalBlock(scope: !832, file: !3, line: 52, column: 34)
!839 = !DILocation(line: 53, column: 20, scope: !837)
!840 = !DILocation(line: 53, column: 35, scope: !837)
!841 = !DILocation(line: 54, column: 8, scope: !837)
!842 = !DILocation(line: 55, column: 9, scope: !837)
!843 = !DILocation(line: 55, column: 21, scope: !837)
!844 = !DILocation(line: 55, column: 34, scope: !837)
!845 = !DILocation(line: 55, column: 38, scope: !837)
!846 = !DILocation(line: 54, column: 28, scope: !837)
!847 = !DILocation(line: 53, column: 8, scope: !838)
!848 = !DILocation(line: 59, column: 5, scope: !849)
!849 = distinct !DILexicalBlock(scope: !837, file: !3, line: 55, column: 44)
!850 = !DILocation(line: 59, column: 17, scope: !849)
!851 = !DILocation(line: 59, column: 32, scope: !849)
!852 = !DILocation(line: 59, column: 39, scope: !849)
!853 = !DILocation(line: 59, column: 45, scope: !849)
!854 = !DILocation(line: 61, column: 5, scope: !849)
!855 = !DILocation(line: 63, column: 3, scope: !838)
!856 = !DILocation(line: 73, column: 19, scope: !833)
!857 = !DILocation(line: 73, column: 17, scope: !833)
!858 = !DILocation(line: 74, column: 8, scope: !859)
!859 = distinct !DILexicalBlock(scope: !833, file: !3, line: 74, column: 7)
!860 = !DILocation(line: 74, column: 7, scope: !833)
!861 = !DILocation(line: 75, column: 11, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !3, line: 74, column: 23)
!863 = !DILocation(line: 76, column: 4, scope: !862)
!864 = !DILocation(line: 83, column: 7, scope: !833)
!865 = !DILocation(line: 83, column: 19, scope: !833)
!866 = !DILocation(line: 83, column: 32, scope: !833)
!867 = !DILocation(line: 83, column: 36, scope: !833)
!868 = !DILocation(line: 82, column: 3, scope: !833)
!869 = !DILocation(line: 82, column: 18, scope: !833)
!870 = !DILocation(line: 82, column: 26, scope: !833)
!871 = !DILocation(line: 82, column: 46, scope: !833)
!872 = !DILocation(line: 85, column: 7, scope: !833)
!873 = !DILocation(line: 85, column: 19, scope: !833)
!874 = !DILocation(line: 85, column: 32, scope: !833)
!875 = !DILocation(line: 84, column: 3, scope: !833)
!876 = !DILocation(line: 84, column: 18, scope: !833)
!877 = !DILocation(line: 84, column: 26, scope: !833)
!878 = !DILocation(line: 84, column: 38, scope: !833)
!879 = !DILocation(line: 86, column: 35, scope: !833)
!880 = !DILocation(line: 86, column: 39, scope: !833)
!881 = !DILocation(line: 86, column: 46, scope: !833)
!882 = !DILocation(line: 86, column: 3, scope: !833)
!883 = !DILocation(line: 86, column: 18, scope: !833)
!884 = !DILocation(line: 86, column: 26, scope: !833)
!885 = !DILocation(line: 86, column: 33, scope: !833)
!886 = !DILocation(line: 87, column: 41, scope: !833)
!887 = !DILocation(line: 88, column: 13, scope: !833)
!888 = !DILocation(line: 88, column: 8, scope: !833)
!889 = !DILocation(line: 88, column: 42, scope: !833)
!890 = !DILocation(line: 87, column: 61, scope: !833)
!891 = !DILocation(line: 87, column: 3, scope: !833)
!892 = !DILocation(line: 87, column: 18, scope: !833)
!893 = !DILocation(line: 87, column: 26, scope: !833)
!894 = !DILocation(line: 87, column: 39, scope: !833)
!895 = !DILocation(line: 92, column: 31, scope: !833)
!896 = !DILocation(line: 92, column: 43, scope: !833)
!897 = !DILocation(line: 93, column: 9, scope: !833)
!898 = !DILocation(line: 92, column: 3, scope: !833)
!899 = !DILocation(line: 94, column: 3, scope: !833)
!900 = !DILocation(line: 101, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !833, file: !3, line: 101, column: 7)
!902 = !DILocation(line: 101, column: 19, scope: !901)
!903 = !DILocation(line: 101, column: 7, scope: !833)
!904 = !DILocation(line: 102, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !901, file: !3, line: 101, column: 35)
!906 = !DILocation(line: 103, column: 3, scope: !905)
!907 = !DILocation(line: 105, column: 3, scope: !833)
!908 = !DILocation(line: 109, column: 3, scope: !833)
!909 = !DILocation(line: 113, column: 3, scope: !833)
!910 = !DILocation(line: 116, column: 10, scope: !815)
!911 = !DILocation(line: 116, column: 2, scope: !815)
!912 = distinct !DISubprogram(name: "acpi_ds_exec_end_control_op", scope: !3, file: !3, line: 134, type: !816, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !818)
!913 = !DILocalVariable(name: "walk_state", arg: 1, scope: !912, file: !3, line: 134, type: !163)
!914 = !DILocation(line: 134, column: 53, scope: !912)
!915 = !DILocalVariable(name: "op", arg: 2, scope: !912, file: !3, line: 135, type: !197)
!916 = !DILocation(line: 135, column: 33, scope: !912)
!917 = !DILocalVariable(name: "status", scope: !912, file: !3, line: 137, type: !18)
!918 = !DILocation(line: 137, column: 14, scope: !912)
!919 = !DILocalVariable(name: "control_state", scope: !912, file: !3, line: 138, type: !279)
!920 = !DILocation(line: 138, column: 28, scope: !912)
!921 = !DILocation(line: 142, column: 10, scope: !912)
!922 = !DILocation(line: 142, column: 14, scope: !912)
!923 = !DILocation(line: 142, column: 21, scope: !912)
!924 = !DILocation(line: 142, column: 2, scope: !912)
!925 = !DILocation(line: 152, column: 11, scope: !926)
!926 = distinct !DILexicalBlock(scope: !912, file: !3, line: 142, column: 33)
!927 = !DILocation(line: 152, column: 23, scope: !926)
!928 = !DILocation(line: 152, column: 38, scope: !926)
!929 = !DILocation(line: 152, column: 45, scope: !926)
!930 = !DILocation(line: 152, column: 7, scope: !926)
!931 = !DILocation(line: 151, column: 3, scope: !926)
!932 = !DILocation(line: 151, column: 15, scope: !926)
!933 = !DILocation(line: 151, column: 30, scope: !926)
!934 = !DILocation(line: 159, column: 34, scope: !926)
!935 = !DILocation(line: 159, column: 46, scope: !926)
!936 = !DILocation(line: 159, column: 7, scope: !926)
!937 = !DILocation(line: 158, column: 17, scope: !926)
!938 = !DILocation(line: 160, column: 32, scope: !926)
!939 = !DILocation(line: 160, column: 3, scope: !926)
!940 = !DILocation(line: 161, column: 3, scope: !926)
!941 = !DILocation(line: 165, column: 3, scope: !926)
!942 = !DILocation(line: 171, column: 19, scope: !926)
!943 = !DILocation(line: 171, column: 31, scope: !926)
!944 = !DILocation(line: 171, column: 17, scope: !926)
!945 = !DILocation(line: 172, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !926, file: !3, line: 172, column: 7)
!947 = !DILocation(line: 172, column: 22, scope: !946)
!948 = !DILocation(line: 172, column: 29, scope: !946)
!949 = !DILocation(line: 172, column: 7, scope: !926)
!950 = !DILocation(line: 182, column: 8, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 182, column: 8)
!952 = distinct !DILexicalBlock(scope: !946, file: !3, line: 172, column: 36)
!953 = !DILocation(line: 182, column: 8, scope: !952)
!954 = !DILocation(line: 185, column: 12, scope: !955)
!955 = distinct !DILexicalBlock(scope: !951, file: !3, line: 184, column: 25)
!956 = !DILocation(line: 186, column: 5, scope: !955)
!957 = !DILocation(line: 193, column: 11, scope: !952)
!958 = !DILocation(line: 195, column: 8, scope: !952)
!959 = !DILocation(line: 195, column: 23, scope: !952)
!960 = !DILocation(line: 195, column: 31, scope: !952)
!961 = !DILocation(line: 194, column: 4, scope: !952)
!962 = !DILocation(line: 194, column: 16, scope: !952)
!963 = !DILocation(line: 194, column: 31, scope: !952)
!964 = !DILocation(line: 196, column: 4, scope: !952)
!965 = !DILocation(line: 207, column: 34, scope: !926)
!966 = !DILocation(line: 207, column: 46, scope: !926)
!967 = !DILocation(line: 207, column: 7, scope: !926)
!968 = !DILocation(line: 206, column: 17, scope: !926)
!969 = !DILocation(line: 208, column: 32, scope: !926)
!970 = !DILocation(line: 208, column: 3, scope: !926)
!971 = !DILocation(line: 209, column: 3, scope: !926)
!972 = !DILocation(line: 222, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !926, file: !3, line: 222, column: 7)
!974 = !DILocation(line: 222, column: 11, scope: !973)
!975 = !DILocation(line: 222, column: 18, scope: !973)
!976 = !DILocation(line: 222, column: 24, scope: !973)
!977 = !DILocation(line: 222, column: 7, scope: !926)
!978 = !DILocation(line: 226, column: 34, scope: !979)
!979 = distinct !DILexicalBlock(scope: !973, file: !3, line: 222, column: 29)
!980 = !DILocation(line: 226, column: 4, scope: !979)
!981 = !DILocation(line: 231, column: 32, scope: !979)
!982 = !DILocation(line: 232, column: 11, scope: !979)
!983 = !DILocation(line: 232, column: 15, scope: !979)
!984 = !DILocation(line: 232, column: 22, scope: !979)
!985 = !DILocation(line: 232, column: 28, scope: !979)
!986 = !DILocation(line: 231, column: 8, scope: !979)
!987 = !DILocation(line: 230, column: 11, scope: !979)
!988 = !DILocation(line: 233, column: 8, scope: !989)
!989 = distinct !DILexicalBlock(scope: !979, file: !3, line: 233, column: 8)
!990 = !DILocation(line: 233, column: 8, scope: !979)
!991 = !DILocation(line: 234, column: 13, scope: !992)
!992 = distinct !DILexicalBlock(scope: !989, file: !3, line: 233, column: 30)
!993 = !DILocation(line: 234, column: 5, scope: !992)
!994 = !DILocation(line: 243, column: 34, scope: !979)
!995 = !DILocation(line: 243, column: 46, scope: !979)
!996 = !DILocation(line: 244, column: 12, scope: !979)
!997 = !DILocation(line: 243, column: 8, scope: !979)
!998 = !DILocation(line: 242, column: 11, scope: !979)
!999 = !DILocation(line: 245, column: 8, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !979, file: !3, line: 245, column: 8)
!1001 = !DILocation(line: 245, column: 8, scope: !979)
!1002 = !DILocation(line: 246, column: 13, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 245, column: 30)
!1004 = !DILocation(line: 246, column: 5, scope: !1003)
!1005 = !DILocation(line: 254, column: 30, scope: !979)
!1006 = !DILocation(line: 254, column: 42, scope: !979)
!1007 = !DILocation(line: 254, column: 4, scope: !979)
!1008 = !DILocation(line: 254, column: 16, scope: !979)
!1009 = !DILocation(line: 254, column: 28, scope: !979)
!1010 = !DILocation(line: 255, column: 3, scope: !979)
!1011 = !DILocation(line: 255, column: 14, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !973, file: !3, line: 255, column: 14)
!1013 = !DILocation(line: 255, column: 26, scope: !1012)
!1014 = !DILocation(line: 255, column: 14, scope: !973)
!1015 = !DILocation(line: 259, column: 34, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 255, column: 40)
!1017 = !DILocation(line: 259, column: 4, scope: !1016)
!1018 = !DILocation(line: 271, column: 9, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 271, column: 8)
!1020 = !DILocation(line: 272, column: 52, scope: !1019)
!1021 = !DILocation(line: 274, column: 8, scope: !1019)
!1022 = !DILocation(line: 274, column: 13, scope: !1019)
!1023 = !DILocation(line: 274, column: 25, scope: !1019)
!1024 = !DILocation(line: 274, column: 34, scope: !1019)
!1025 = !DILocation(line: 274, column: 42, scope: !1019)
!1026 = !DILocation(line: 275, column: 5, scope: !1019)
!1027 = !DILocation(line: 275, column: 12, scope: !1019)
!1028 = !DILocation(line: 274, column: 12, scope: !1019)
!1029 = !DILocation(line: 275, column: 17, scope: !1019)
!1030 = !DILocation(line: 276, column: 8, scope: !1019)
!1031 = !DILocation(line: 276, column: 13, scope: !1019)
!1032 = !DILocation(line: 276, column: 25, scope: !1019)
!1033 = !DILocation(line: 276, column: 34, scope: !1019)
!1034 = !DILocation(line: 276, column: 42, scope: !1019)
!1035 = !DILocation(line: 277, column: 5, scope: !1019)
!1036 = !DILocation(line: 277, column: 15, scope: !1019)
!1037 = !DILocation(line: 276, column: 12, scope: !1019)
!1038 = !DILocation(line: 277, column: 21, scope: !1019)
!1039 = !DILocation(line: 271, column: 8, scope: !1016)
!1040 = !DILocation(line: 279, column: 35, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 277, column: 46)
!1042 = !DILocation(line: 280, column: 13, scope: !1041)
!1043 = !DILocation(line: 280, column: 22, scope: !1041)
!1044 = !DILocation(line: 281, column: 13, scope: !1041)
!1045 = !DILocation(line: 282, column: 13, scope: !1041)
!1046 = !DILocation(line: 279, column: 9, scope: !1041)
!1047 = !DILocation(line: 278, column: 12, scope: !1041)
!1048 = !DILocation(line: 283, column: 9, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 283, column: 9)
!1050 = !DILocation(line: 283, column: 9, scope: !1041)
!1051 = !DILocation(line: 284, column: 14, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 283, column: 31)
!1053 = !DILocation(line: 284, column: 6, scope: !1052)
!1054 = !DILocation(line: 286, column: 4, scope: !1041)
!1055 = !DILocation(line: 289, column: 8, scope: !1016)
!1056 = !DILocation(line: 289, column: 20, scope: !1016)
!1057 = !DILocation(line: 289, column: 29, scope: !1016)
!1058 = !DILocation(line: 289, column: 37, scope: !1016)
!1059 = !DILocation(line: 288, column: 4, scope: !1016)
!1060 = !DILocation(line: 288, column: 16, scope: !1016)
!1061 = !DILocation(line: 288, column: 28, scope: !1016)
!1062 = !DILocation(line: 290, column: 3, scope: !1016)
!1063 = !DILocation(line: 293, column: 8, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 293, column: 8)
!1065 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 290, column: 10)
!1066 = !DILocation(line: 293, column: 20, scope: !1064)
!1067 = !DILocation(line: 293, column: 8, scope: !1065)
!1068 = !DILocation(line: 294, column: 30, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 293, column: 34)
!1070 = !DILocation(line: 295, column: 9, scope: !1069)
!1071 = !DILocation(line: 294, column: 5, scope: !1069)
!1072 = !DILocation(line: 296, column: 4, scope: !1069)
!1073 = !DILocation(line: 298, column: 4, scope: !1065)
!1074 = !DILocation(line: 298, column: 16, scope: !1065)
!1075 = !DILocation(line: 298, column: 28, scope: !1065)
!1076 = !DILocation(line: 299, column: 4, scope: !1065)
!1077 = !DILocation(line: 299, column: 16, scope: !1065)
!1078 = !DILocation(line: 299, column: 29, scope: !1065)
!1079 = !DILocation(line: 300, column: 4, scope: !1065)
!1080 = !DILocation(line: 300, column: 16, scope: !1065)
!1081 = !DILocation(line: 300, column: 28, scope: !1065)
!1082 = !DILocation(line: 309, column: 10, scope: !926)
!1083 = !DILocation(line: 310, column: 3, scope: !926)
!1084 = !DILocation(line: 316, column: 3, scope: !926)
!1085 = !DILocation(line: 320, column: 30, scope: !926)
!1086 = !DILocation(line: 320, column: 3, scope: !926)
!1087 = !DILocation(line: 324, column: 12, scope: !926)
!1088 = !DILocation(line: 324, column: 10, scope: !926)
!1089 = !DILocation(line: 326, column: 3, scope: !926)
!1090 = !DILocation(line: 333, column: 3, scope: !926)
!1091 = !DILocation(line: 333, column: 10, scope: !926)
!1092 = !DILocation(line: 333, column: 22, scope: !926)
!1093 = !DILocation(line: 333, column: 36, scope: !926)
!1094 = !DILocation(line: 334, column: 11, scope: !926)
!1095 = !DILocation(line: 334, column: 23, scope: !926)
!1096 = !DILocation(line: 334, column: 38, scope: !926)
!1097 = !DILocation(line: 334, column: 46, scope: !926)
!1098 = !DILocation(line: 334, column: 53, scope: !926)
!1099 = !DILocation(line: 0, scope: !926)
!1100 = !DILocation(line: 337, column: 35, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !926, file: !3, line: 335, column: 19)
!1102 = !DILocation(line: 338, column: 13, scope: !1101)
!1103 = !DILocation(line: 337, column: 8, scope: !1101)
!1104 = !DILocation(line: 336, column: 18, scope: !1101)
!1105 = !DILocation(line: 339, column: 33, scope: !1101)
!1106 = !DILocation(line: 339, column: 4, scope: !1101)
!1107 = distinct !{!1107, !1090, !1108}
!1108 = !DILocation(line: 340, column: 3, scope: !926)
!1109 = !DILocation(line: 344, column: 8, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !926, file: !3, line: 344, column: 7)
!1111 = !DILocation(line: 344, column: 20, scope: !1110)
!1112 = !DILocation(line: 344, column: 7, scope: !926)
!1113 = !DILocation(line: 345, column: 4, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 344, column: 35)
!1115 = !DILocation(line: 351, column: 7, scope: !926)
!1116 = !DILocation(line: 351, column: 19, scope: !926)
!1117 = !DILocation(line: 351, column: 34, scope: !926)
!1118 = !DILocation(line: 351, column: 42, scope: !926)
!1119 = !DILocation(line: 350, column: 3, scope: !926)
!1120 = !DILocation(line: 350, column: 15, scope: !926)
!1121 = !DILocation(line: 350, column: 30, scope: !926)
!1122 = !DILocation(line: 355, column: 7, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !926, file: !3, line: 355, column: 7)
!1124 = !DILocation(line: 355, column: 11, scope: !1123)
!1125 = !DILocation(line: 355, column: 18, scope: !1123)
!1126 = !DILocation(line: 355, column: 29, scope: !1123)
!1127 = !DILocation(line: 355, column: 7, scope: !926)
!1128 = !DILocation(line: 356, column: 11, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 355, column: 46)
!1130 = !DILocation(line: 357, column: 3, scope: !1129)
!1131 = !DILocation(line: 358, column: 11, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 357, column: 10)
!1133 = !DILocation(line: 360, column: 3, scope: !926)
!1134 = !DILocation(line: 364, column: 3, scope: !926)
!1135 = !DILocation(line: 367, column: 10, scope: !926)
!1136 = !DILocation(line: 368, column: 3, scope: !926)
!1137 = !DILocation(line: 371, column: 10, scope: !912)
!1138 = !DILocation(line: 371, column: 2, scope: !912)
!1139 = !DILocation(line: 372, column: 1, scope: !912)
!1140 = distinct !DISubprogram(name: "acpi_db_signal_break_point", scope: !1141, file: !1141, line: 57, type: !1142, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !818)
!1141 = !DIFile(filename: "drivers/acpi/acpica/acdebug.h", directory: "/home/lizy2001/genbc/linux")
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !163}
!1144 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1140, file: !1141, line: 57, type: !163)
!1145 = !DILocation(line: 57, column: 2, scope: !1140)
