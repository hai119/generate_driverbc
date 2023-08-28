; ModuleID = '../bcout/drivers/acpi/acpica/psparse.llvm.bc'
source_filename = "drivers/acpi/acpica/psparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*)* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }
%struct.acpi_parse_obj_named = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, i8*, i8*, i32, i32 }
%struct.acpi_common_state = type { i8*, i8, i8, i16, i16 }
%struct.acpi_pscope_state = type { i8*, i8, i8, i16, i16, i32, %union.acpi_parse_object*, i8*, i8*, i32 }
%struct.acpi_object_method = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*, %union.anon, i32, i16, i8 }
%union.anon = type { i32 (%struct.acpi_walk_state*)* }

@acpi_gbl_current_walk_list = external dso_local global %struct.acpi_thread_state*, align 8
@.str = private unnamed_addr constant [16 x i8] c"Aborting method\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_acpi_module_name = internal constant [8 x i8] c"psparse\00", align 1, !dbg !0
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_get_opcode_size(i32 %opcode) #0 !dbg !794 {
entry:
  %retval = alloca i32, align 4
  %opcode.addr = alloca i32, align 4
  store i32 %opcode, i32* %opcode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %opcode.addr, metadata !798, metadata !DIExpression()), !dbg !799
  %0 = load i32, i32* %opcode.addr, align 4, !dbg !800
  %cmp = icmp ugt i32 %0, 255, !dbg !802
  br i1 %cmp, label %if.then, label %if.end, !dbg !803

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval, align 4, !dbg !804
  br label %return, !dbg !804

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !806
  br label %return, !dbg !806

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4, !dbg !807
  ret i32 %1, !dbg !807
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i16 @acpi_ps_peek_opcode(%struct.acpi_parse_state* %parser_state) #0 !dbg !808 {
entry:
  %parser_state.addr = alloca %struct.acpi_parse_state*, align 8
  %aml = alloca i8*, align 8
  %opcode = alloca i16, align 2
  store %struct.acpi_parse_state* %parser_state, %struct.acpi_parse_state** %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state.addr, metadata !812, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.declare(metadata i8** %aml, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata i16* %opcode, metadata !816, metadata !DIExpression()), !dbg !817
  %0 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !818
  %aml1 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %0, i32 0, i32 1, !dbg !819
  %1 = load i8*, i8** %aml1, align 8, !dbg !819
  store i8* %1, i8** %aml, align 8, !dbg !820
  %2 = load i8*, i8** %aml, align 8, !dbg !821
  %3 = load i8, i8* %2, align 1, !dbg !821
  %conv = zext i8 %3 to i16, !dbg !822
  store i16 %conv, i16* %opcode, align 2, !dbg !823
  %4 = load i16, i16* %opcode, align 2, !dbg !824
  %conv2 = zext i16 %4 to i32, !dbg !824
  %cmp = icmp eq i32 %conv2, 91, !dbg !826
  br i1 %cmp, label %if.then, label %if.end, !dbg !827

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %aml, align 8, !dbg !828
  %incdec.ptr = getelementptr i8, i8* %5, i32 1, !dbg !828
  store i8* %incdec.ptr, i8** %aml, align 8, !dbg !828
  %6 = load i16, i16* %opcode, align 2, !dbg !830
  %conv4 = zext i16 %6 to i32, !dbg !830
  %shl = shl i32 %conv4, 8, !dbg !831
  %7 = load i8*, i8** %aml, align 8, !dbg !832
  %8 = load i8, i8* %7, align 1, !dbg !832
  %conv5 = zext i8 %8 to i32, !dbg !832
  %or = or i32 %shl, %conv5, !dbg !833
  %conv6 = trunc i32 %or to i16, !dbg !834
  store i16 %conv6, i16* %opcode, align 2, !dbg !835
  br label %if.end, !dbg !836

if.end:                                           ; preds = %if.then, %entry
  %9 = load i16, i16* %opcode, align 2, !dbg !837
  ret i16 %9, !dbg !838
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_complete_this_op(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op) #0 !dbg !839 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %prev = alloca %union.acpi_parse_object*, align 8
  %next = alloca %union.acpi_parse_object*, align 8
  %parent_info = alloca %struct.acpi_opcode_info*, align 8
  %replacement_op = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !842, metadata !DIExpression()), !dbg !843
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !844, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %prev, metadata !846, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %next, metadata !848, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.declare(metadata %struct.acpi_opcode_info** %parent_info, metadata !850, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %replacement_op, metadata !852, metadata !DIExpression()), !dbg !853
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %replacement_op, align 8, !dbg !853
  call void @llvm.dbg.declare(metadata i32* %status, metadata !854, metadata !DIExpression()), !dbg !855
  store i32 0, i32* %status, align 4, !dbg !855
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !856
  %tobool = icmp ne %union.acpi_parse_object* %0, null, !dbg !856
  br i1 %tobool, label %if.end, label %if.then, !dbg !858

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !859
  br label %return, !dbg !859

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !861
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !862
  call void @acpi_ex_stop_trace_opcode(%union.acpi_parse_object* %1, %struct.acpi_walk_state* %2) #3, !dbg !863
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !864
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 20, !dbg !866
  %4 = load i32, i32* %parse_flags, align 4, !dbg !866
  %and = and i32 %4, 1, !dbg !867
  %cmp = icmp ne i32 %and, 1, !dbg !868
  br i1 %cmp, label %if.then3, label %lor.lhs.false, !dbg !869

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !870
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 41, !dbg !871
  %6 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !871
  %class = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %6, i32 0, i32 4, !dbg !872
  %7 = load i8, i8* %class, align 1, !dbg !872
  %conv = zext i8 %7 to i32, !dbg !870
  %cmp1 = icmp eq i32 %conv, 2, !dbg !873
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !874

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval, align 4, !dbg !875
  br label %return, !dbg !875

if.end4:                                          ; preds = %lor.lhs.false
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !877
  %common = bitcast %union.acpi_parse_object* %8 to %struct.acpi_parse_obj_common*, !dbg !879
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 0, !dbg !880
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !880
  %tobool5 = icmp ne %union.acpi_parse_object* %9, null, !dbg !877
  br i1 %tobool5, label %if.then6, label %if.end198, !dbg !881

if.then6:                                         ; preds = %if.end4
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !882
  %common7 = bitcast %union.acpi_parse_object* %10 to %struct.acpi_parse_obj_common*, !dbg !884
  %parent8 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common7, i32 0, i32 0, !dbg !885
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent8, align 8, !dbg !885
  %common9 = bitcast %union.acpi_parse_object* %11 to %struct.acpi_parse_obj_common*, !dbg !886
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common9, i32 0, i32 7, !dbg !887
  %arg = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !888
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !888
  store %union.acpi_parse_object* %12, %union.acpi_parse_object** %prev, align 8, !dbg !889
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %prev, align 8, !dbg !890
  %tobool10 = icmp ne %union.acpi_parse_object* %13, null, !dbg !890
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !892

if.then11:                                        ; preds = %if.then6
  br label %cleanup, !dbg !893

if.end12:                                         ; preds = %if.then6
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !895
  %common13 = bitcast %union.acpi_parse_object* %14 to %struct.acpi_parse_obj_common*, !dbg !896
  %parent14 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common13, i32 0, i32 0, !dbg !897
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent14, align 8, !dbg !897
  %common15 = bitcast %union.acpi_parse_object* %15 to %struct.acpi_parse_obj_common*, !dbg !898
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common15, i32 0, i32 3, !dbg !899
  %16 = load i16, i16* %aml_opcode, align 2, !dbg !899
  %call = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %16) #3, !dbg !900
  store %struct.acpi_opcode_info* %call, %struct.acpi_opcode_info** %parent_info, align 8, !dbg !901
  %17 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %parent_info, align 8, !dbg !902
  %class16 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %17, i32 0, i32 4, !dbg !903
  %18 = load i8, i8* %class16, align 1, !dbg !903
  %conv17 = zext i8 %18 to i32, !dbg !902
  switch i32 %conv17, label %sw.default [
    i32 4, label %sw.bb
    i32 1, label %sw.bb18
    i32 3, label %sw.bb24
  ], !dbg !904

sw.bb:                                            ; preds = %if.end12
  br label %sw.epilog, !dbg !905

sw.bb18:                                          ; preds = %if.end12
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !907
  %common19 = bitcast %union.acpi_parse_object* %19 to %struct.acpi_parse_obj_common*, !dbg !908
  %aml = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common19, i32 0, i32 4, !dbg !909
  %20 = load i8*, i8** %aml, align 8, !dbg !909
  %call20 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext 54, i8* %20) #3, !dbg !910
  store %union.acpi_parse_object* %call20, %union.acpi_parse_object** %replacement_op, align 8, !dbg !911
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !912
  %tobool21 = icmp ne %union.acpi_parse_object* %21, null, !dbg !912
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !914

if.then22:                                        ; preds = %sw.bb18
  store i32 4, i32* %status, align 4, !dbg !915
  br label %if.end23, !dbg !917

if.end23:                                         ; preds = %if.then22, %sw.bb18
  br label %sw.epilog, !dbg !918

sw.bb24:                                          ; preds = %if.end12
  %22 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !919
  %common25 = bitcast %union.acpi_parse_object* %22 to %struct.acpi_parse_obj_common*, !dbg !921
  %parent26 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common25, i32 0, i32 0, !dbg !922
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent26, align 8, !dbg !922
  %common27 = bitcast %union.acpi_parse_object* %23 to %struct.acpi_parse_obj_common*, !dbg !923
  %aml_opcode28 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common27, i32 0, i32 3, !dbg !924
  %24 = load i16, i16* %aml_opcode28, align 2, !dbg !924
  %conv29 = zext i16 %24 to i32, !dbg !919
  %cmp30 = icmp eq i32 %conv29, 23424, !dbg !925
  br i1 %cmp30, label %if.then72, label %lor.lhs.false32, !dbg !926

lor.lhs.false32:                                  ; preds = %sw.bb24
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !927
  %common33 = bitcast %union.acpi_parse_object* %25 to %struct.acpi_parse_obj_common*, !dbg !928
  %parent34 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common33, i32 0, i32 0, !dbg !929
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent34, align 8, !dbg !929
  %common35 = bitcast %union.acpi_parse_object* %26 to %struct.acpi_parse_obj_common*, !dbg !930
  %aml_opcode36 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common35, i32 0, i32 3, !dbg !931
  %27 = load i16, i16* %aml_opcode36, align 2, !dbg !931
  %conv37 = zext i16 %27 to i32, !dbg !927
  %cmp38 = icmp eq i32 %conv37, 23432, !dbg !932
  br i1 %cmp38, label %if.then72, label %lor.lhs.false40, !dbg !933

lor.lhs.false40:                                  ; preds = %lor.lhs.false32
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !934
  %common41 = bitcast %union.acpi_parse_object* %28 to %struct.acpi_parse_obj_common*, !dbg !935
  %parent42 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common41, i32 0, i32 0, !dbg !936
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent42, align 8, !dbg !936
  %common43 = bitcast %union.acpi_parse_object* %29 to %struct.acpi_parse_obj_common*, !dbg !937
  %aml_opcode44 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common43, i32 0, i32 3, !dbg !938
  %30 = load i16, i16* %aml_opcode44, align 2, !dbg !938
  %conv45 = zext i16 %30 to i32, !dbg !934
  %cmp46 = icmp eq i32 %conv45, 17, !dbg !939
  br i1 %cmp46, label %if.then72, label %lor.lhs.false48, !dbg !940

lor.lhs.false48:                                  ; preds = %lor.lhs.false40
  %31 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !941
  %common49 = bitcast %union.acpi_parse_object* %31 to %struct.acpi_parse_obj_common*, !dbg !942
  %parent50 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common49, i32 0, i32 0, !dbg !943
  %32 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent50, align 8, !dbg !943
  %common51 = bitcast %union.acpi_parse_object* %32 to %struct.acpi_parse_obj_common*, !dbg !944
  %aml_opcode52 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common51, i32 0, i32 3, !dbg !945
  %33 = load i16, i16* %aml_opcode52, align 2, !dbg !945
  %conv53 = zext i16 %33 to i32, !dbg !941
  %cmp54 = icmp eq i32 %conv53, 18, !dbg !946
  br i1 %cmp54, label %if.then72, label %lor.lhs.false56, !dbg !947

lor.lhs.false56:                                  ; preds = %lor.lhs.false48
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !948
  %common57 = bitcast %union.acpi_parse_object* %34 to %struct.acpi_parse_obj_common*, !dbg !949
  %parent58 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common57, i32 0, i32 0, !dbg !950
  %35 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent58, align 8, !dbg !950
  %common59 = bitcast %union.acpi_parse_object* %35 to %struct.acpi_parse_obj_common*, !dbg !951
  %aml_opcode60 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common59, i32 0, i32 3, !dbg !952
  %36 = load i16, i16* %aml_opcode60, align 2, !dbg !952
  %conv61 = zext i16 %36 to i32, !dbg !948
  %cmp62 = icmp eq i32 %conv61, 23431, !dbg !953
  br i1 %cmp62, label %if.then72, label %lor.lhs.false64, !dbg !954

lor.lhs.false64:                                  ; preds = %lor.lhs.false56
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !955
  %common65 = bitcast %union.acpi_parse_object* %37 to %struct.acpi_parse_obj_common*, !dbg !956
  %parent66 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common65, i32 0, i32 0, !dbg !957
  %38 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent66, align 8, !dbg !957
  %common67 = bitcast %union.acpi_parse_object* %38 to %struct.acpi_parse_obj_common*, !dbg !958
  %aml_opcode68 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common67, i32 0, i32 3, !dbg !959
  %39 = load i16, i16* %aml_opcode68, align 2, !dbg !959
  %conv69 = zext i16 %39 to i32, !dbg !955
  %cmp70 = icmp eq i32 %conv69, 19, !dbg !960
  br i1 %cmp70, label %if.then72, label %if.else, !dbg !961

if.then72:                                        ; preds = %lor.lhs.false64, %lor.lhs.false56, %lor.lhs.false48, %lor.lhs.false40, %lor.lhs.false32, %sw.bb24
  %40 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !962
  %common73 = bitcast %union.acpi_parse_object* %40 to %struct.acpi_parse_obj_common*, !dbg !964
  %aml74 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common73, i32 0, i32 4, !dbg !965
  %41 = load i8*, i8** %aml74, align 8, !dbg !965
  %call75 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext 54, i8* %41) #3, !dbg !966
  store %union.acpi_parse_object* %call75, %union.acpi_parse_object** %replacement_op, align 8, !dbg !967
  %42 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !968
  %tobool76 = icmp ne %union.acpi_parse_object* %42, null, !dbg !968
  br i1 %tobool76, label %if.end78, label %if.then77, !dbg !970

if.then77:                                        ; preds = %if.then72
  store i32 4, i32* %status, align 4, !dbg !971
  br label %if.end78, !dbg !973

if.end78:                                         ; preds = %if.then77, %if.then72
  br label %if.end124, !dbg !974

if.else:                                          ; preds = %lor.lhs.false64
  %43 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !975
  %common79 = bitcast %union.acpi_parse_object* %43 to %struct.acpi_parse_obj_common*, !dbg !977
  %parent80 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common79, i32 0, i32 0, !dbg !978
  %44 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent80, align 8, !dbg !978
  %common81 = bitcast %union.acpi_parse_object* %44 to %struct.acpi_parse_obj_common*, !dbg !979
  %aml_opcode82 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common81, i32 0, i32 3, !dbg !980
  %45 = load i16, i16* %aml_opcode82, align 2, !dbg !980
  %conv83 = zext i16 %45 to i32, !dbg !975
  %cmp84 = icmp eq i32 %conv83, 8, !dbg !981
  br i1 %cmp84, label %land.lhs.true, label %if.end123, !dbg !982

land.lhs.true:                                    ; preds = %if.else
  %46 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !983
  %pass_number = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %46, i32 0, i32 12, !dbg !984
  %47 = load i8, i8* %pass_number, align 2, !dbg !984
  %conv86 = zext i8 %47 to i32, !dbg !983
  %cmp87 = icmp sle i32 %conv86, 2, !dbg !985
  br i1 %cmp87, label %if.then89, label %if.end123, !dbg !986

if.then89:                                        ; preds = %land.lhs.true
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !987
  %common90 = bitcast %union.acpi_parse_object* %48 to %struct.acpi_parse_obj_common*, !dbg !990
  %aml_opcode91 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common90, i32 0, i32 3, !dbg !991
  %49 = load i16, i16* %aml_opcode91, align 2, !dbg !991
  %conv92 = zext i16 %49 to i32, !dbg !987
  %cmp93 = icmp eq i32 %conv92, 17, !dbg !992
  br i1 %cmp93, label %if.then107, label %lor.lhs.false95, !dbg !993

lor.lhs.false95:                                  ; preds = %if.then89
  %50 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !994
  %common96 = bitcast %union.acpi_parse_object* %50 to %struct.acpi_parse_obj_common*, !dbg !995
  %aml_opcode97 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common96, i32 0, i32 3, !dbg !996
  %51 = load i16, i16* %aml_opcode97, align 2, !dbg !996
  %conv98 = zext i16 %51 to i32, !dbg !994
  %cmp99 = icmp eq i32 %conv98, 18, !dbg !997
  br i1 %cmp99, label %if.then107, label %lor.lhs.false101, !dbg !998

lor.lhs.false101:                                 ; preds = %lor.lhs.false95
  %52 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !999
  %common102 = bitcast %union.acpi_parse_object* %52 to %struct.acpi_parse_obj_common*, !dbg !1000
  %aml_opcode103 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common102, i32 0, i32 3, !dbg !1001
  %53 = load i16, i16* %aml_opcode103, align 2, !dbg !1001
  %conv104 = zext i16 %53 to i32, !dbg !999
  %cmp105 = icmp eq i32 %conv104, 19, !dbg !1002
  br i1 %cmp105, label %if.then107, label %if.end122, !dbg !1003

if.then107:                                       ; preds = %lor.lhs.false101, %lor.lhs.false95, %if.then89
  %54 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1004
  %common108 = bitcast %union.acpi_parse_object* %54 to %struct.acpi_parse_obj_common*, !dbg !1006
  %aml_opcode109 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common108, i32 0, i32 3, !dbg !1007
  %55 = load i16, i16* %aml_opcode109, align 2, !dbg !1007
  %56 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1008
  %common110 = bitcast %union.acpi_parse_object* %56 to %struct.acpi_parse_obj_common*, !dbg !1009
  %aml111 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common110, i32 0, i32 4, !dbg !1010
  %57 = load i8*, i8** %aml111, align 8, !dbg !1010
  %call112 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext %55, i8* %57) #3, !dbg !1011
  store %union.acpi_parse_object* %call112, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1012
  %58 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1013
  %tobool113 = icmp ne %union.acpi_parse_object* %58, null, !dbg !1013
  br i1 %tobool113, label %if.else115, label %if.then114, !dbg !1015

if.then114:                                       ; preds = %if.then107
  store i32 4, i32* %status, align 4, !dbg !1016
  br label %if.end121, !dbg !1018

if.else115:                                       ; preds = %if.then107
  %59 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1019
  %named = bitcast %union.acpi_parse_object* %59 to %struct.acpi_parse_obj_named*, !dbg !1021
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 10, !dbg !1022
  %60 = load i8*, i8** %data, align 8, !dbg !1022
  %61 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1023
  %named116 = bitcast %union.acpi_parse_object* %61 to %struct.acpi_parse_obj_named*, !dbg !1024
  %data117 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named116, i32 0, i32 10, !dbg !1025
  store i8* %60, i8** %data117, align 8, !dbg !1026
  %62 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1027
  %named118 = bitcast %union.acpi_parse_object* %62 to %struct.acpi_parse_obj_named*, !dbg !1028
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named118, i32 0, i32 11, !dbg !1029
  %63 = load i32, i32* %length, align 8, !dbg !1029
  %64 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1030
  %named119 = bitcast %union.acpi_parse_object* %64 to %struct.acpi_parse_obj_named*, !dbg !1031
  %length120 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named119, i32 0, i32 11, !dbg !1032
  store i32 %63, i32* %length120, align 8, !dbg !1033
  br label %if.end121

if.end121:                                        ; preds = %if.else115, %if.then114
  br label %if.end122, !dbg !1034

if.end122:                                        ; preds = %if.end121, %lor.lhs.false101
  br label %if.end123, !dbg !1035

if.end123:                                        ; preds = %if.end122, %land.lhs.true, %if.else
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.end78
  br label %sw.epilog, !dbg !1036

sw.default:                                       ; preds = %if.end12
  %65 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1037
  %common125 = bitcast %union.acpi_parse_object* %65 to %struct.acpi_parse_obj_common*, !dbg !1038
  %aml126 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common125, i32 0, i32 4, !dbg !1039
  %66 = load i8*, i8** %aml126, align 8, !dbg !1039
  %call127 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext 54, i8* %66) #3, !dbg !1040
  store %union.acpi_parse_object* %call127, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1041
  %67 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1042
  %tobool128 = icmp ne %union.acpi_parse_object* %67, null, !dbg !1042
  br i1 %tobool128, label %if.end130, label %if.then129, !dbg !1044

if.then129:                                       ; preds = %sw.default
  store i32 4, i32* %status, align 4, !dbg !1045
  br label %if.end130, !dbg !1047

if.end130:                                        ; preds = %if.then129, %sw.default
  br label %sw.epilog, !dbg !1048

sw.epilog:                                        ; preds = %if.end130, %if.end124, %if.end23, %sw.bb
  %68 = load %union.acpi_parse_object*, %union.acpi_parse_object** %prev, align 8, !dbg !1049
  %69 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1051
  %cmp131 = icmp eq %union.acpi_parse_object* %68, %69, !dbg !1052
  br i1 %cmp131, label %if.then133, label %if.else164, !dbg !1053

if.then133:                                       ; preds = %sw.epilog
  %70 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1054
  %tobool134 = icmp ne %union.acpi_parse_object* %70, null, !dbg !1054
  br i1 %tobool134, label %if.then135, label %if.else155, !dbg !1057

if.then135:                                       ; preds = %if.then133
  %71 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1058
  %common136 = bitcast %union.acpi_parse_object* %71 to %struct.acpi_parse_obj_common*, !dbg !1060
  %parent137 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common136, i32 0, i32 0, !dbg !1061
  %72 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent137, align 8, !dbg !1061
  %73 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1062
  %common138 = bitcast %union.acpi_parse_object* %73 to %struct.acpi_parse_obj_common*, !dbg !1063
  %parent139 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common138, i32 0, i32 0, !dbg !1064
  store %union.acpi_parse_object* %72, %union.acpi_parse_object** %parent139, align 8, !dbg !1065
  %74 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1066
  %common140 = bitcast %union.acpi_parse_object* %74 to %struct.acpi_parse_obj_common*, !dbg !1067
  %value141 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common140, i32 0, i32 7, !dbg !1068
  %arg142 = bitcast %union.acpi_parse_value* %value141 to %union.acpi_parse_object**, !dbg !1069
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %arg142, align 8, !dbg !1070
  %75 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1071
  %common143 = bitcast %union.acpi_parse_object* %75 to %struct.acpi_parse_obj_common*, !dbg !1072
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common143, i32 0, i32 6, !dbg !1073
  %76 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1073
  %77 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1074
  %common144 = bitcast %union.acpi_parse_object* %77 to %struct.acpi_parse_obj_common*, !dbg !1075
  %node145 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common144, i32 0, i32 6, !dbg !1076
  store %struct.acpi_namespace_node* %76, %struct.acpi_namespace_node** %node145, align 8, !dbg !1077
  %78 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1078
  %79 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1079
  %common146 = bitcast %union.acpi_parse_object* %79 to %struct.acpi_parse_obj_common*, !dbg !1080
  %parent147 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common146, i32 0, i32 0, !dbg !1081
  %80 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent147, align 8, !dbg !1081
  %common148 = bitcast %union.acpi_parse_object* %80 to %struct.acpi_parse_obj_common*, !dbg !1082
  %value149 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common148, i32 0, i32 7, !dbg !1083
  %arg150 = bitcast %union.acpi_parse_value* %value149 to %union.acpi_parse_object**, !dbg !1084
  store %union.acpi_parse_object* %78, %union.acpi_parse_object** %arg150, align 8, !dbg !1085
  %81 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1086
  %common151 = bitcast %union.acpi_parse_object* %81 to %struct.acpi_parse_obj_common*, !dbg !1087
  %next152 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common151, i32 0, i32 5, !dbg !1088
  %82 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next152, align 8, !dbg !1088
  %83 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1089
  %common153 = bitcast %union.acpi_parse_object* %83 to %struct.acpi_parse_obj_common*, !dbg !1090
  %next154 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common153, i32 0, i32 5, !dbg !1091
  store %union.acpi_parse_object* %82, %union.acpi_parse_object** %next154, align 8, !dbg !1092
  br label %if.end163, !dbg !1093

if.else155:                                       ; preds = %if.then133
  %84 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1094
  %common156 = bitcast %union.acpi_parse_object* %84 to %struct.acpi_parse_obj_common*, !dbg !1096
  %next157 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common156, i32 0, i32 5, !dbg !1097
  %85 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next157, align 8, !dbg !1097
  %86 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1098
  %common158 = bitcast %union.acpi_parse_object* %86 to %struct.acpi_parse_obj_common*, !dbg !1099
  %parent159 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common158, i32 0, i32 0, !dbg !1100
  %87 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent159, align 8, !dbg !1100
  %common160 = bitcast %union.acpi_parse_object* %87 to %struct.acpi_parse_obj_common*, !dbg !1101
  %value161 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common160, i32 0, i32 7, !dbg !1102
  %arg162 = bitcast %union.acpi_parse_value* %value161 to %union.acpi_parse_object**, !dbg !1103
  store %union.acpi_parse_object* %85, %union.acpi_parse_object** %arg162, align 8, !dbg !1104
  br label %if.end163

if.end163:                                        ; preds = %if.else155, %if.then135
  br label %if.end197, !dbg !1105

if.else164:                                       ; preds = %sw.epilog
  br label %while.cond, !dbg !1106

while.cond:                                       ; preds = %if.end196, %if.else164
  %88 = load %union.acpi_parse_object*, %union.acpi_parse_object** %prev, align 8, !dbg !1107
  %tobool165 = icmp ne %union.acpi_parse_object* %88, null, !dbg !1106
  br i1 %tobool165, label %while.body, label %while.end, !dbg !1106

while.body:                                       ; preds = %while.cond
  %89 = load %union.acpi_parse_object*, %union.acpi_parse_object** %prev, align 8, !dbg !1108
  %common166 = bitcast %union.acpi_parse_object* %89 to %struct.acpi_parse_obj_common*, !dbg !1110
  %next167 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common166, i32 0, i32 5, !dbg !1111
  %90 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next167, align 8, !dbg !1111
  store %union.acpi_parse_object* %90, %union.acpi_parse_object** %next, align 8, !dbg !1112
  %91 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !1113
  %92 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1115
  %cmp168 = icmp eq %union.acpi_parse_object* %91, %92, !dbg !1116
  br i1 %cmp168, label %if.then170, label %if.end196, !dbg !1117

if.then170:                                       ; preds = %while.body
  %93 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1118
  %tobool171 = icmp ne %union.acpi_parse_object* %93, null, !dbg !1118
  br i1 %tobool171, label %if.then172, label %if.else190, !dbg !1121

if.then172:                                       ; preds = %if.then170
  %94 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1122
  %common173 = bitcast %union.acpi_parse_object* %94 to %struct.acpi_parse_obj_common*, !dbg !1124
  %parent174 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common173, i32 0, i32 0, !dbg !1125
  %95 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent174, align 8, !dbg !1125
  %96 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1126
  %common175 = bitcast %union.acpi_parse_object* %96 to %struct.acpi_parse_obj_common*, !dbg !1127
  %parent176 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common175, i32 0, i32 0, !dbg !1128
  store %union.acpi_parse_object* %95, %union.acpi_parse_object** %parent176, align 8, !dbg !1129
  %97 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1130
  %common177 = bitcast %union.acpi_parse_object* %97 to %struct.acpi_parse_obj_common*, !dbg !1131
  %value178 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common177, i32 0, i32 7, !dbg !1132
  %arg179 = bitcast %union.acpi_parse_value* %value178 to %union.acpi_parse_object**, !dbg !1133
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %arg179, align 8, !dbg !1134
  %98 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1135
  %common180 = bitcast %union.acpi_parse_object* %98 to %struct.acpi_parse_obj_common*, !dbg !1136
  %node181 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common180, i32 0, i32 6, !dbg !1137
  %99 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node181, align 8, !dbg !1137
  %100 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1138
  %common182 = bitcast %union.acpi_parse_object* %100 to %struct.acpi_parse_obj_common*, !dbg !1139
  %node183 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common182, i32 0, i32 6, !dbg !1140
  store %struct.acpi_namespace_node* %99, %struct.acpi_namespace_node** %node183, align 8, !dbg !1141
  %101 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1142
  %102 = load %union.acpi_parse_object*, %union.acpi_parse_object** %prev, align 8, !dbg !1143
  %common184 = bitcast %union.acpi_parse_object* %102 to %struct.acpi_parse_obj_common*, !dbg !1144
  %next185 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common184, i32 0, i32 5, !dbg !1145
  store %union.acpi_parse_object* %101, %union.acpi_parse_object** %next185, align 8, !dbg !1146
  %103 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1147
  %common186 = bitcast %union.acpi_parse_object* %103 to %struct.acpi_parse_obj_common*, !dbg !1148
  %next187 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common186, i32 0, i32 5, !dbg !1149
  %104 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next187, align 8, !dbg !1149
  %105 = load %union.acpi_parse_object*, %union.acpi_parse_object** %replacement_op, align 8, !dbg !1150
  %common188 = bitcast %union.acpi_parse_object* %105 to %struct.acpi_parse_obj_common*, !dbg !1151
  %next189 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common188, i32 0, i32 5, !dbg !1152
  store %union.acpi_parse_object* %104, %union.acpi_parse_object** %next189, align 8, !dbg !1153
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %next, align 8, !dbg !1154
  br label %if.end195, !dbg !1155

if.else190:                                       ; preds = %if.then170
  %106 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1156
  %common191 = bitcast %union.acpi_parse_object* %106 to %struct.acpi_parse_obj_common*, !dbg !1158
  %next192 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common191, i32 0, i32 5, !dbg !1159
  %107 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next192, align 8, !dbg !1159
  %108 = load %union.acpi_parse_object*, %union.acpi_parse_object** %prev, align 8, !dbg !1160
  %common193 = bitcast %union.acpi_parse_object* %108 to %struct.acpi_parse_obj_common*, !dbg !1161
  %next194 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common193, i32 0, i32 5, !dbg !1162
  store %union.acpi_parse_object* %107, %union.acpi_parse_object** %next194, align 8, !dbg !1163
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %next, align 8, !dbg !1164
  br label %if.end195

if.end195:                                        ; preds = %if.else190, %if.then172
  br label %if.end196, !dbg !1165

if.end196:                                        ; preds = %if.end195, %while.body
  %109 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !1166
  store %union.acpi_parse_object* %109, %union.acpi_parse_object** %prev, align 8, !dbg !1167
  br label %while.cond, !dbg !1106, !llvm.loop !1168

while.end:                                        ; preds = %while.cond
  br label %if.end197

if.end197:                                        ; preds = %while.end, %if.end163
  br label %if.end198, !dbg !1170

if.end198:                                        ; preds = %if.end197, %if.end4
  br label %cleanup, !dbg !880

cleanup:                                          ; preds = %if.end198, %if.then11
  call void @llvm.dbg.label(metadata !1171), !dbg !1172
  %110 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1173
  call void @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %110) #3, !dbg !1174
  %111 = load i32, i32* %status, align 4, !dbg !1175
  store i32 %111, i32* %retval, align 4, !dbg !1175
  br label %return, !dbg !1175

return:                                           ; preds = %cleanup, %if.then3, %if.then
  %112 = load i32, i32* %retval, align 4, !dbg !1176
  ret i32 %112, !dbg !1176
}

; Function Attrs: noredzone
declare dso_local void @acpi_ex_stop_trace_opcode(%union.acpi_parse_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext, i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ps_delete_parse_tree(%union.acpi_parse_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_next_parse_state(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op, i32 %callback_status) #0 !dbg !1177 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %callback_status.addr = alloca i32, align 4
  %parser_state = alloca %struct.acpi_parse_state*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1180, metadata !DIExpression()), !dbg !1181
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  store i32 %callback_status, i32* %callback_status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %callback_status.addr, metadata !1184, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state, metadata !1186, metadata !DIExpression()), !dbg !1187
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1188
  %parser_state1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 21, !dbg !1189
  store %struct.acpi_parse_state* %parser_state1, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1187
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1190, metadata !DIExpression()), !dbg !1191
  store i32 16386, i32* %status, align 4, !dbg !1191
  %1 = load i32, i32* %callback_status.addr, align 4, !dbg !1192
  switch i32 %1, label %sw.default [
    i32 16387, label %sw.bb
    i32 16393, label %sw.bb2
    i32 16394, label %sw.bb4
    i32 16386, label %sw.bb7
    i32 16388, label %sw.bb10
    i32 16389, label %sw.bb12
    i32 16392, label %sw.bb17
  ], !dbg !1193

sw.bb:                                            ; preds = %entry
  %2 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1194
  %aml_end = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %2, i32 0, i32 2, !dbg !1196
  %3 = load i8*, i8** %aml_end, align 8, !dbg !1196
  %4 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1197
  %aml = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %4, i32 0, i32 1, !dbg !1198
  store i8* %3, i8** %aml, align 8, !dbg !1199
  store i32 16387, i32* %status, align 4, !dbg !1200
  br label %sw.epilog, !dbg !1201

sw.bb2:                                           ; preds = %entry
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1202
  %aml_last_while = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 30, !dbg !1203
  %6 = load i8*, i8** %aml_last_while, align 8, !dbg !1203
  %7 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1204
  %aml3 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %7, i32 0, i32 1, !dbg !1205
  store i8* %6, i8** %aml3, align 8, !dbg !1206
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1207
  %control_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 32, !dbg !1208
  %9 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !1208
  %common = bitcast %union.acpi_generic_state* %9 to %struct.acpi_common_state*, !dbg !1209
  %value = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common, i32 0, i32 3, !dbg !1210
  store i16 0, i16* %value, align 2, !dbg !1211
  store i32 16393, i32* %status, align 4, !dbg !1212
  br label %sw.epilog, !dbg !1213

sw.bb4:                                           ; preds = %entry
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1214
  %aml_last_while5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 30, !dbg !1215
  %11 = load i8*, i8** %aml_last_while5, align 8, !dbg !1215
  %12 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1216
  %aml6 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %12, i32 0, i32 1, !dbg !1217
  store i8* %11, i8** %aml6, align 8, !dbg !1218
  store i32 16394, i32* %status, align 4, !dbg !1219
  br label %sw.epilog, !dbg !1220

sw.bb7:                                           ; preds = %entry
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1221
  %aml_last_while8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 30, !dbg !1222
  %14 = load i8*, i8** %aml_last_while8, align 8, !dbg !1222
  %15 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1223
  %aml9 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %15, i32 0, i32 1, !dbg !1224
  store i8* %14, i8** %aml9, align 8, !dbg !1225
  br label %sw.epilog, !dbg !1226

sw.bb10:                                          ; preds = %entry
  %16 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1227
  %call = call i8* @acpi_ps_get_next_package_end(%struct.acpi_parse_state* %16) #3, !dbg !1228
  %17 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1229
  %aml11 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %17, i32 0, i32 1, !dbg !1230
  store i8* %call, i8** %aml11, align 8, !dbg !1231
  store i32 16386, i32* %status, align 4, !dbg !1232
  br label %sw.epilog, !dbg !1233

sw.bb12:                                          ; preds = %entry
  %18 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1234
  %scope = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %18, i32 0, i32 7, !dbg !1235
  %19 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !1235
  %parse_scope = bitcast %union.acpi_generic_state* %19 to %struct.acpi_pscope_state*, !dbg !1236
  %pkg_end = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope, i32 0, i32 8, !dbg !1237
  %20 = load i8*, i8** %pkg_end, align 8, !dbg !1237
  %21 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1238
  %aml13 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %21, i32 0, i32 1, !dbg !1239
  store i8* %20, i8** %aml13, align 8, !dbg !1240
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1241
  %control_state14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 32, !dbg !1242
  %23 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state14, align 8, !dbg !1242
  %common15 = bitcast %union.acpi_generic_state* %23 to %struct.acpi_common_state*, !dbg !1243
  %value16 = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common15, i32 0, i32 3, !dbg !1244
  store i16 0, i16* %value16, align 2, !dbg !1245
  store i32 16391, i32* %status, align 4, !dbg !1246
  br label %sw.epilog, !dbg !1247

sw.bb17:                                          ; preds = %entry
  store i32 16392, i32* %status, align 4, !dbg !1248
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1249
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1250
  %prev_op = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %25, i32 0, i32 47, !dbg !1251
  store %union.acpi_parse_object* %24, %union.acpi_parse_object** %prev_op, align 8, !dbg !1252
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1253
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1254
  %method_call_op = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %27, i32 0, i32 36, !dbg !1255
  store %union.acpi_parse_object* %26, %union.acpi_parse_object** %method_call_op, align 8, !dbg !1256
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1257
  %common18 = bitcast %union.acpi_parse_object* %28 to %struct.acpi_parse_obj_common*, !dbg !1258
  %value19 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common18, i32 0, i32 7, !dbg !1259
  %arg = bitcast %union.acpi_parse_value* %value19 to %union.acpi_parse_object**, !dbg !1260
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1260
  %common20 = bitcast %union.acpi_parse_object* %29 to %struct.acpi_parse_obj_common*, !dbg !1261
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common20, i32 0, i32 6, !dbg !1262
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1262
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1263
  %method_call_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %31, i32 0, i32 35, !dbg !1264
  store %struct.acpi_namespace_node* %30, %struct.acpi_namespace_node** %method_call_node, align 8, !dbg !1265
  %32 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1266
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1267
  %call21 = call zeroext i8 @acpi_ds_is_result_used(%union.acpi_parse_object* %32, %struct.acpi_walk_state* %33) #3, !dbg !1268
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1269
  %return_used = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %34, i32 0, i32 10, !dbg !1270
  store i8 %call21, i8* %return_used, align 4, !dbg !1271
  br label %sw.epilog, !dbg !1272

sw.default:                                       ; preds = %entry
  %35 = load i32, i32* %callback_status.addr, align 4, !dbg !1273
  store i32 %35, i32* %status, align 4, !dbg !1274
  %36 = load i32, i32* %callback_status.addr, align 4, !dbg !1275
  %and = and i32 %36, 61440, !dbg !1277
  %cmp = icmp eq i32 %and, 16384, !dbg !1278
  br i1 %cmp, label %if.then, label %if.end, !dbg !1279

if.then:                                          ; preds = %sw.default
  store i32 0, i32* %status, align 4, !dbg !1280
  br label %if.end, !dbg !1282

if.end:                                           ; preds = %if.then, %sw.default
  br label %sw.epilog, !dbg !1283

sw.epilog:                                        ; preds = %if.end, %sw.bb17, %sw.bb12, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb2, %sw.bb
  %37 = load i32, i32* %status, align 4, !dbg !1284
  ret i32 %37, !dbg !1284
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_ps_get_next_package_end(%struct.acpi_parse_state*) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ds_is_result_used(%union.acpi_parse_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %walk_state) #0 !dbg !1285 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %thread = alloca %struct.acpi_thread_state*, align 8
  %prev_walk_list = alloca %struct.acpi_thread_state*, align 8
  %previous_walk_state = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1286, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1288, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.declare(metadata %struct.acpi_thread_state** %thread, metadata !1290, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.declare(metadata %struct.acpi_thread_state** %prev_walk_list, metadata !1292, metadata !DIExpression()), !dbg !1293
  %0 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** @acpi_gbl_current_walk_list, align 8, !dbg !1294
  store %struct.acpi_thread_state* %0, %struct.acpi_thread_state** %prev_walk_list, align 8, !dbg !1293
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %previous_walk_state, metadata !1295, metadata !DIExpression()), !dbg !1296
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1297
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 21, !dbg !1299
  %aml = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state, i32 0, i32 1, !dbg !1300
  %2 = load i8*, i8** %aml, align 8, !dbg !1300
  %tobool = icmp ne i8* %2, null, !dbg !1297
  br i1 %tobool, label %if.end, label %if.then, !dbg !1301

if.then:                                          ; preds = %entry
  store i32 4105, i32* %retval, align 4, !dbg !1302
  br label %return, !dbg !1302

if.end:                                           ; preds = %entry
  %call = call %struct.acpi_thread_state* @acpi_ut_create_thread_state() #3, !dbg !1304
  store %struct.acpi_thread_state* %call, %struct.acpi_thread_state** %thread, align 8, !dbg !1305
  %3 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !1306
  %tobool1 = icmp ne %struct.acpi_thread_state* %3, null, !dbg !1306
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !1308

if.then2:                                         ; preds = %if.end
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1309
  %method_desc = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 37, !dbg !1312
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc, align 8, !dbg !1312
  %tobool3 = icmp ne %union.acpi_operand_object* %5, null, !dbg !1309
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !1313

if.then4:                                         ; preds = %if.then2
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1314
  %method_desc5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 37, !dbg !1316
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc5, align 8, !dbg !1316
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1317
  call void @acpi_ds_terminate_control_method(%union.acpi_operand_object* %7, %struct.acpi_walk_state* %8) #3, !dbg !1318
  br label %if.end6, !dbg !1319

if.end6:                                          ; preds = %if.then4, %if.then2
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1320
  call void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %9) #3, !dbg !1321
  store i32 4, i32* %retval, align 4, !dbg !1322
  br label %return, !dbg !1322

if.end7:                                          ; preds = %if.end
  %10 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !1323
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1324
  %thread8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 49, !dbg !1325
  store %struct.acpi_thread_state* %10, %struct.acpi_thread_state** %thread8, align 8, !dbg !1326
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1327
  %method_desc9 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 37, !dbg !1329
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc9, align 8, !dbg !1329
  %tobool10 = icmp ne %union.acpi_operand_object* %13, null, !dbg !1327
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !1330

if.then11:                                        ; preds = %if.end7
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1331
  %method_desc12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 37, !dbg !1333
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc12, align 8, !dbg !1333
  %method = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_method*, !dbg !1334
  %sync_level = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 7, !dbg !1335
  %16 = load i8, i8* %sync_level, align 1, !dbg !1335
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1336
  %thread13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 49, !dbg !1337
  %18 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread13, align 8, !dbg !1337
  %current_sync_level = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %18, i32 0, i32 5, !dbg !1338
  store i8 %16, i8* %current_sync_level, align 2, !dbg !1339
  br label %if.end14, !dbg !1340

if.end14:                                         ; preds = %if.then11, %if.end7
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1341
  %20 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !1342
  call void @acpi_ds_push_walk_state(%struct.acpi_walk_state* %19, %struct.acpi_thread_state* %20) #3, !dbg !1343
  %21 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !1344
  store %struct.acpi_thread_state* %21, %struct.acpi_thread_state** @acpi_gbl_current_walk_list, align 8, !dbg !1345
  store i32 0, i32* %status, align 4, !dbg !1346
  br label %while.cond, !dbg !1347

while.cond:                                       ; preds = %if.end138, %if.end32, %if.end14
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1348
  %tobool15 = icmp ne %struct.acpi_walk_state* %22, null, !dbg !1347
  br i1 %tobool15, label %while.body, label %while.end, !dbg !1347

while.body:                                       ; preds = %while.cond
  %23 = load i32, i32* %status, align 4, !dbg !1349
  %tobool16 = icmp ne i32 %23, 0, !dbg !1349
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !1352

if.then17:                                        ; preds = %while.body
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1353
  %call18 = call i32 @acpi_ps_parse_loop(%struct.acpi_walk_state* %24) #3, !dbg !1355
  store i32 %call18, i32* %status, align 4, !dbg !1356
  br label %if.end19, !dbg !1357

if.end19:                                         ; preds = %if.then17, %while.body
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1358
  %method_pathname = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %25, i32 0, i32 39, !dbg !1360
  %26 = load i8*, i8** %method_pathname, align 8, !dbg !1360
  %tobool20 = icmp ne i8* %26, null, !dbg !1358
  br i1 %tobool20, label %land.lhs.true, label %if.end25, !dbg !1361

land.lhs.true:                                    ; preds = %if.end19
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1362
  %method_is_nested = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %27, i32 0, i32 25, !dbg !1363
  %28 = load i8, i8* %method_is_nested, align 2, !dbg !1363
  %conv = zext i8 %28 to i32, !dbg !1362
  %tobool21 = icmp ne i32 %conv, 0, !dbg !1362
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !1364

if.then22:                                        ; preds = %land.lhs.true
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1365
  %method_pathname23 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %29, i32 0, i32 39, !dbg !1365
  %30 = load i8*, i8** %method_pathname23, align 8, !dbg !1365
  call void @acpi_os_free(i8* %30) #3, !dbg !1365
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1367
  %method_is_nested24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %31, i32 0, i32 25, !dbg !1368
  store i8 0, i8* %method_is_nested24, align 2, !dbg !1369
  br label %if.end25, !dbg !1370

if.end25:                                         ; preds = %if.then22, %land.lhs.true, %if.end19
  %32 = load i32, i32* %status, align 4, !dbg !1371
  %cmp = icmp eq i32 %32, 16392, !dbg !1373
  br i1 %cmp, label %if.then27, label %if.else, !dbg !1374

if.then27:                                        ; preds = %if.end25
  %33 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !1375
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1377
  %call28 = call i32 @acpi_ds_call_control_method(%struct.acpi_thread_state* %33, %struct.acpi_walk_state* %34, %union.acpi_parse_object* null) #3, !dbg !1378
  store i32 %call28, i32* %status, align 4, !dbg !1379
  %35 = load i32, i32* %status, align 4, !dbg !1380
  %tobool29 = icmp ne i32 %35, 0, !dbg !1380
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !1382

if.then30:                                        ; preds = %if.then27
  %36 = load i32, i32* %status, align 4, !dbg !1383
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1385
  %call31 = call i32 @acpi_ds_method_error(i32 %36, %struct.acpi_walk_state* %37) #3, !dbg !1386
  store i32 %call31, i32* %status, align 4, !dbg !1387
  br label %if.end32, !dbg !1388

if.end32:                                         ; preds = %if.then30, %if.then27
  %38 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !1389
  %call33 = call %struct.acpi_walk_state* @acpi_ds_get_current_walk_state(%struct.acpi_thread_state* %38) #3, !dbg !1390
  store %struct.acpi_walk_state* %call33, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1391
  br label %while.cond, !dbg !1392, !llvm.loop !1393

if.else:                                          ; preds = %if.end25
  %39 = load i32, i32* %status, align 4, !dbg !1395
  %cmp34 = icmp eq i32 %39, 16387, !dbg !1397
  br i1 %cmp34, label %if.then36, label %if.else37, !dbg !1398

if.then36:                                        ; preds = %if.else
  store i32 0, i32* %status, align 4, !dbg !1399
  br label %if.end65, !dbg !1401

if.else37:                                        ; preds = %if.else
  %40 = load i32, i32* %status, align 4, !dbg !1402
  %cmp38 = icmp ne i32 %40, 0, !dbg !1404
  br i1 %cmp38, label %land.lhs.true40, label %if.end64, !dbg !1405

land.lhs.true40:                                  ; preds = %if.else37
  %41 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1406
  %method_desc41 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %41, i32 0, i32 37, !dbg !1407
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc41, align 8, !dbg !1407
  %tobool42 = icmp ne %union.acpi_operand_object* %42, null, !dbg !1408
  br i1 %tobool42, label %if.then43, label %if.end64, !dbg !1409

if.then43:                                        ; preds = %land.lhs.true40
  call void @acpi_ex_exit_interpreter() #3, !dbg !1410
  %43 = load i32, i32* %status, align 4, !dbg !1412
  %cmp44 = icmp eq i32 %43, 24, !dbg !1414
  br i1 %cmp44, label %if.then46, label %if.else47, !dbg !1415

if.then46:                                        ; preds = %if.then43
  %44 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1416
  %method_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %44, i32 0, i32 38, !dbg !1418
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !1418
  call void @acpi_ns_print_node_pathname(%struct.acpi_namespace_node* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #3, !dbg !1419
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !1420
  br label %if.end49, !dbg !1421

if.else47:                                        ; preds = %if.then43
  %46 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1422
  %method_node48 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %46, i32 0, i32 38, !dbg !1422
  %47 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node48, align 8, !dbg !1422
  %48 = load i32, i32* %status, align 4, !dbg !1422
  call void @acpi_ut_method_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 531, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.acpi_namespace_node* %47, i8* null, i32 %48) #3, !dbg !1422
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then46
  call void @acpi_ex_enter_interpreter() #3, !dbg !1424
  %49 = load i32, i32* %status, align 4, !dbg !1425
  %cmp50 = icmp eq i32 %49, 7, !dbg !1427
  br i1 %cmp50, label %land.lhs.true52, label %if.end63, !dbg !1428

land.lhs.true52:                                  ; preds = %if.end49
  %50 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1429
  %method_desc53 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %50, i32 0, i32 37, !dbg !1430
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc53, align 8, !dbg !1430
  %method54 = bitcast %union.acpi_operand_object* %51 to %struct.acpi_object_method*, !dbg !1431
  %info_flags = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method54, i32 0, i32 5, !dbg !1432
  %52 = load i8, i8* %info_flags, align 1, !dbg !1432
  %conv55 = zext i8 %52 to i32, !dbg !1429
  %and = and i32 %conv55, 4, !dbg !1433
  %tobool56 = icmp ne i32 %and, 0, !dbg !1433
  br i1 %tobool56, label %if.end63, label %if.then57, !dbg !1434

if.then57:                                        ; preds = %land.lhs.true52
  %53 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1435
  %method_desc58 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %53, i32 0, i32 37, !dbg !1437
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc58, align 8, !dbg !1437
  %method59 = bitcast %union.acpi_operand_object* %54 to %struct.acpi_object_method*, !dbg !1438
  %info_flags60 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method59, i32 0, i32 5, !dbg !1439
  %55 = load i8, i8* %info_flags60, align 1, !dbg !1440
  %conv61 = zext i8 %55 to i32, !dbg !1440
  %or = or i32 %conv61, 8, !dbg !1440
  %conv62 = trunc i32 %or to i8, !dbg !1440
  store i8 %conv62, i8* %info_flags60, align 1, !dbg !1440
  br label %if.end63, !dbg !1441

if.end63:                                         ; preds = %if.then57, %land.lhs.true52, %if.end49
  br label %if.end64, !dbg !1442

if.end64:                                         ; preds = %if.end63, %land.lhs.true40, %if.else37
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then36
  br label %if.end66

if.end66:                                         ; preds = %if.end65
  %56 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !1443
  %call67 = call %struct.acpi_walk_state* @acpi_ds_pop_walk_state(%struct.acpi_thread_state* %56) #3, !dbg !1444
  store %struct.acpi_walk_state* %call67, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1445
  %57 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1446
  call void @acpi_ds_scope_stack_clear(%struct.acpi_walk_state* %57) #3, !dbg !1447
  %58 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1448
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %58, i32 0, i32 20, !dbg !1450
  %59 = load i32, i32* %parse_flags, align 4, !dbg !1450
  %and68 = and i32 %59, 48, !dbg !1451
  %cmp69 = icmp eq i32 %and68, 48, !dbg !1452
  br i1 %cmp69, label %land.lhs.true71, label %lor.lhs.false, !dbg !1453

land.lhs.true71:                                  ; preds = %if.end66
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1454
  %parse_flags72 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %60, i32 0, i32 20, !dbg !1455
  %61 = load i32, i32* %parse_flags72, align 4, !dbg !1455
  %and73 = and i32 %61, 1024, !dbg !1456
  %tobool74 = icmp ne i32 %and73, 0, !dbg !1456
  br i1 %tobool74, label %lor.lhs.false, label %if.then76, !dbg !1457

lor.lhs.false:                                    ; preds = %land.lhs.true71, %if.end66
  %62 = load i32, i32* %status, align 4, !dbg !1458
  %tobool75 = icmp ne i32 %62, 0, !dbg !1459
  br i1 %tobool75, label %if.then76, label %if.end78, !dbg !1460

if.then76:                                        ; preds = %lor.lhs.false, %land.lhs.true71
  %63 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1461
  %method_desc77 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %63, i32 0, i32 37, !dbg !1463
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc77, align 8, !dbg !1463
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1464
  call void @acpi_ds_terminate_control_method(%union.acpi_operand_object* %64, %struct.acpi_walk_state* %65) #3, !dbg !1465
  br label %if.end78, !dbg !1466

if.end78:                                         ; preds = %if.then76, %lor.lhs.false
  %66 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1467
  %parser_state79 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %66, i32 0, i32 21, !dbg !1468
  call void @acpi_ps_cleanup_scope(%struct.acpi_parse_state* %parser_state79) #3, !dbg !1469
  %67 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1470
  store %struct.acpi_walk_state* %67, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1471
  %68 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !1472
  %call80 = call %struct.acpi_walk_state* @acpi_ds_get_current_walk_state(%struct.acpi_thread_state* %68) #3, !dbg !1473
  store %struct.acpi_walk_state* %call80, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1474
  %69 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1475
  %tobool81 = icmp ne %struct.acpi_walk_state* %69, null, !dbg !1475
  br i1 %tobool81, label %if.then82, label %if.else114, !dbg !1477

if.then82:                                        ; preds = %if.end78
  %70 = load i32, i32* %status, align 4, !dbg !1478
  %tobool83 = icmp ne i32 %70, 0, !dbg !1478
  br i1 %tobool83, label %if.else111, label %if.then84, !dbg !1481

if.then84:                                        ; preds = %if.then82
  %71 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1482
  %return_desc = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %71, i32 0, i32 45, !dbg !1485
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1485
  %tobool85 = icmp ne %union.acpi_operand_object* %72, null, !dbg !1482
  br i1 %tobool85, label %if.else101, label %if.then86, !dbg !1486

if.then86:                                        ; preds = %if.then84
  %73 = load i8, i8* @acpi_gbl_enable_interpreter_slack, align 1, !dbg !1487
  %conv87 = zext i8 %73 to i32, !dbg !1487
  %tobool88 = icmp ne i32 %conv87, 0, !dbg !1487
  br i1 %tobool88, label %land.lhs.true89, label %if.end98, !dbg !1490

land.lhs.true89:                                  ; preds = %if.then86
  %74 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1491
  %implicit_return_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %74, i32 0, i32 34, !dbg !1492
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %implicit_return_obj, align 8, !dbg !1492
  %tobool90 = icmp ne %union.acpi_operand_object* %75, null, !dbg !1491
  br i1 %tobool90, label %if.end98, label %if.then91, !dbg !1493

if.then91:                                        ; preds = %land.lhs.true89
  %call92 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 0) #3, !dbg !1494
  %76 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1496
  %implicit_return_obj93 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %76, i32 0, i32 34, !dbg !1497
  store %union.acpi_operand_object* %call92, %union.acpi_operand_object** %implicit_return_obj93, align 8, !dbg !1498
  %77 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1499
  %implicit_return_obj94 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %77, i32 0, i32 34, !dbg !1501
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %implicit_return_obj94, align 8, !dbg !1501
  %tobool95 = icmp ne %union.acpi_operand_object* %78, null, !dbg !1499
  br i1 %tobool95, label %if.end97, label %if.then96, !dbg !1502

if.then96:                                        ; preds = %if.then91
  store i32 4, i32* %retval, align 4, !dbg !1503
  br label %return, !dbg !1503

if.end97:                                         ; preds = %if.then91
  br label %if.end98, !dbg !1505

if.end98:                                         ; preds = %if.end97, %land.lhs.true89, %if.then86
  %79 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1506
  %80 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1507
  %implicit_return_obj99 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %80, i32 0, i32 34, !dbg !1508
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %implicit_return_obj99, align 8, !dbg !1508
  %call100 = call i32 @acpi_ds_restart_control_method(%struct.acpi_walk_state* %79, %union.acpi_operand_object* %81) #3, !dbg !1509
  store i32 %call100, i32* %status, align 4, !dbg !1510
  br label %if.end104, !dbg !1511

if.else101:                                       ; preds = %if.then84
  %82 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1512
  call void @acpi_ds_clear_implicit_return(%struct.acpi_walk_state* %82) #3, !dbg !1514
  %83 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1515
  %84 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1516
  %return_desc102 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %84, i32 0, i32 45, !dbg !1517
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc102, align 8, !dbg !1517
  %call103 = call i32 @acpi_ds_restart_control_method(%struct.acpi_walk_state* %83, %union.acpi_operand_object* %85) #3, !dbg !1518
  store i32 %call103, i32* %status, align 4, !dbg !1519
  br label %if.end104

if.end104:                                        ; preds = %if.else101, %if.end98
  %86 = load i32, i32* %status, align 4, !dbg !1520
  %tobool105 = icmp ne i32 %86, 0, !dbg !1520
  br i1 %tobool105, label %if.end110, label %if.then106, !dbg !1522

if.then106:                                       ; preds = %if.end104
  %87 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1523
  %walk_type = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %87, i32 0, i32 2, !dbg !1525
  %88 = load i8, i8* %walk_type, align 1, !dbg !1526
  %conv107 = zext i8 %88 to i32, !dbg !1526
  %or108 = or i32 %conv107, 2, !dbg !1526
  %conv109 = trunc i32 %or108 to i8, !dbg !1526
  store i8 %conv109, i8* %walk_type, align 1, !dbg !1526
  br label %if.end110, !dbg !1527

if.end110:                                        ; preds = %if.then106, %if.end104
  br label %if.end113, !dbg !1528

if.else111:                                       ; preds = %if.then82
  %89 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1529
  %return_desc112 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %89, i32 0, i32 45, !dbg !1531
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc112, align 8, !dbg !1531
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %90) #3, !dbg !1532
  %91 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1533
  call void @acpi_ds_clear_implicit_return(%struct.acpi_walk_state* %91) #3, !dbg !1534
  br label %if.end113

if.end113:                                        ; preds = %if.else111, %if.end110
  br label %if.end138, !dbg !1535

if.else114:                                       ; preds = %if.end78
  %92 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1536
  %caller_return_desc = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %92, i32 0, i32 31, !dbg !1538
  %93 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %caller_return_desc, align 8, !dbg !1538
  %tobool115 = icmp ne %union.acpi_operand_object** %93, null, !dbg !1536
  br i1 %tobool115, label %if.then116, label %if.else126, !dbg !1539

if.then116:                                       ; preds = %if.else114
  %94 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1540
  %implicit_return_obj117 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %94, i32 0, i32 34, !dbg !1543
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %implicit_return_obj117, align 8, !dbg !1543
  %tobool118 = icmp ne %union.acpi_operand_object* %95, null, !dbg !1540
  br i1 %tobool118, label %if.then119, label %if.else122, !dbg !1544

if.then119:                                       ; preds = %if.then116
  %96 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1545
  %implicit_return_obj120 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %96, i32 0, i32 34, !dbg !1547
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %implicit_return_obj120, align 8, !dbg !1547
  %98 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1548
  %caller_return_desc121 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %98, i32 0, i32 31, !dbg !1549
  %99 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %caller_return_desc121, align 8, !dbg !1549
  store %union.acpi_operand_object* %97, %union.acpi_operand_object** %99, align 8, !dbg !1550
  br label %if.end125, !dbg !1551

if.else122:                                       ; preds = %if.then116
  %100 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1552
  %return_desc123 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %100, i32 0, i32 45, !dbg !1554
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc123, align 8, !dbg !1554
  %102 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1555
  %caller_return_desc124 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %102, i32 0, i32 31, !dbg !1556
  %103 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %caller_return_desc124, align 8, !dbg !1556
  store %union.acpi_operand_object* %101, %union.acpi_operand_object** %103, align 8, !dbg !1557
  br label %if.end125

if.end125:                                        ; preds = %if.else122, %if.then119
  br label %if.end137, !dbg !1558

if.else126:                                       ; preds = %if.else114
  %104 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1559
  %return_desc127 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %104, i32 0, i32 45, !dbg !1562
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc127, align 8, !dbg !1562
  %tobool128 = icmp ne %union.acpi_operand_object* %105, null, !dbg !1559
  br i1 %tobool128, label %if.then129, label %if.end131, !dbg !1563

if.then129:                                       ; preds = %if.else126
  %106 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1564
  %return_desc130 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %106, i32 0, i32 45, !dbg !1566
  %107 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc130, align 8, !dbg !1566
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %107) #3, !dbg !1567
  br label %if.end131, !dbg !1568

if.end131:                                        ; preds = %if.then129, %if.else126
  %108 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1569
  %implicit_return_obj132 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %108, i32 0, i32 34, !dbg !1571
  %109 = load %union.acpi_operand_object*, %union.acpi_operand_object** %implicit_return_obj132, align 8, !dbg !1571
  %tobool133 = icmp ne %union.acpi_operand_object* %109, null, !dbg !1569
  br i1 %tobool133, label %if.then134, label %if.end136, !dbg !1572

if.then134:                                       ; preds = %if.end131
  %110 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1573
  %implicit_return_obj135 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %110, i32 0, i32 34, !dbg !1575
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %implicit_return_obj135, align 8, !dbg !1575
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %111) #3, !dbg !1576
  br label %if.end136, !dbg !1577

if.end136:                                        ; preds = %if.then134, %if.end131
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end125
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end113
  %112 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %previous_walk_state, align 8, !dbg !1578
  call void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %112) #3, !dbg !1579
  br label %while.cond, !dbg !1347, !llvm.loop !1393

while.end:                                        ; preds = %while.cond
  %113 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !1580
  call void @acpi_ex_release_all_mutexes(%struct.acpi_thread_state* %113) #3, !dbg !1581
  %114 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !1582
  %115 = bitcast %struct.acpi_thread_state* %114 to i8*, !dbg !1582
  %116 = bitcast i8* %115 to %union.acpi_generic_state*, !dbg !1582
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %116) #3, !dbg !1583
  %117 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %prev_walk_list, align 8, !dbg !1584
  store %struct.acpi_thread_state* %117, %struct.acpi_thread_state** @acpi_gbl_current_walk_list, align 8, !dbg !1585
  %118 = load i32, i32* %status, align 4, !dbg !1586
  store i32 %118, i32* %retval, align 4, !dbg !1586
  br label %return, !dbg !1586

return:                                           ; preds = %while.end, %if.then96, %if.end6, %if.then
  %119 = load i32, i32* %retval, align 4, !dbg !1587
  ret i32 %119, !dbg !1587
}

; Function Attrs: noredzone
declare dso_local %struct.acpi_thread_state* @acpi_ut_create_thread_state() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_terminate_control_method(%union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_delete_walk_state(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_push_walk_state(%struct.acpi_walk_state*, %struct.acpi_thread_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_parse_loop(%struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1588 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1592, metadata !DIExpression()), !dbg !1593
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1594
  call void @kfree(i8* %0) #3, !dbg !1595
  ret void, !dbg !1596
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_call_control_method(%struct.acpi_thread_state*, %struct.acpi_walk_state*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_method_error(i32, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_walk_state* @acpi_ds_get_current_walk_state(%struct.acpi_thread_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_exit_interpreter() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ns_print_node_pathname(%struct.acpi_namespace_node*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_printf(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_method_error(i8*, i32, i8*, %struct.acpi_namespace_node*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_enter_interpreter() #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_walk_state* @acpi_ds_pop_walk_state(%struct.acpi_thread_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_scope_stack_clear(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_cleanup_scope(%struct.acpi_parse_state*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_restart_control_method(%struct.acpi_walk_state*, %union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_clear_implicit_return(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_release_all_mutexes(%struct.acpi_thread_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!789, !790, !791, !792}
!llvm.ident = !{!793}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 28, type: !787, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !786, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/psparse.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3, isUnsigned: true)
!12 = !{!13, !18, !22, !23, !27, !30}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !17)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !21)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !24, line: 421, baseType: !25)
!24 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !7)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !14, line: 23, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !29)
!29 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !32)
!32 = !{!33, !41, !713, !722, !731, !744, !758, !759, !769}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !31, file: !6, line: 664, baseType: !34, size: 128)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !35)
!35 = !{!36, !37, !38, !39, !40}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !6, line: 568, baseType: !22, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !34, file: !6, line: 568, baseType: !19, size: 8, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !34, file: !6, line: 568, baseType: !19, size: 8, offset: 72)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !34, file: !6, line: 568, baseType: !13, size: 16, offset: 80)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !34, file: !6, line: 568, baseType: !13, size: 16, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !31, file: !6, line: 665, baseType: !42, size: 384)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !710, !711, !712}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !42, file: !6, line: 594, baseType: !22, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !42, file: !6, line: 594, baseType: !19, size: 8, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !42, file: !6, line: 594, baseType: !19, size: 8, offset: 72)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !42, file: !6, line: 594, baseType: !13, size: 16, offset: 80)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !42, file: !6, line: 594, baseType: !13, size: 16, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !42, file: !6, line: 594, baseType: !13, size: 16, offset: 112)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !42, file: !6, line: 595, baseType: !51, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !53)
!53 = !{!54, !653, !669}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !52, file: !6, line: 876, baseType: !55, size: 448)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !56)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !643, !652}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !55, file: !6, line: 829, baseType: !51, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !55, file: !6, line: 829, baseType: !19, size: 8, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !6, line: 829, baseType: !19, size: 8, offset: 72)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !55, file: !6, line: 829, baseType: !13, size: 16, offset: 80)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !55, file: !6, line: 829, baseType: !18, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !55, file: !6, line: 829, baseType: !51, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !55, file: !6, line: 829, baseType: !64, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !66)
!66 = !{!67, !627, !628, !629, !630, !639, !640, !641, !642}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !65, file: !6, line: 134, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !70, line: 367, size: 576, elements: !71)
!70 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !80, !93, !105, !118, !132, !141, !273, !290, !305, !318, !397, !409, !423, !433, !451, !473, !492, !511, !530, !547, !573, !590, !603, !617, !626}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !69, file: !70, line: 368, baseType: !73, size: 128)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !70, line: 73, size: 128, elements: !74)
!74 = !{!75, !76, !77, !78, !79}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !73, file: !70, line: 74, baseType: !68, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !73, file: !70, line: 74, baseType: !19, size: 8, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !73, file: !70, line: 74, baseType: !19, size: 8, offset: 72)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !73, file: !70, line: 74, baseType: !13, size: 16, offset: 80)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !70, line: 74, baseType: !19, size: 8, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !69, file: !70, line: 369, baseType: !81, size: 192)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !70, line: 76, size: 192, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !92}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !81, file: !70, line: 77, baseType: !68, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !81, file: !70, line: 77, baseType: !19, size: 8, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !70, line: 77, baseType: !19, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !81, file: !70, line: 77, baseType: !13, size: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !70, line: 77, baseType: !19, size: 8, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !81, file: !70, line: 77, baseType: !89, size: 24, offset: 104)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 3)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !81, file: !70, line: 78, baseType: !27, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !69, file: !70, line: 370, baseType: !94, size: 256)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !70, line: 93, size: 256, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !104}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !94, file: !70, line: 94, baseType: !68, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !70, line: 94, baseType: !19, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !70, line: 94, baseType: !19, size: 8, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !94, file: !70, line: 94, baseType: !13, size: 16, offset: 80)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !70, line: 94, baseType: !19, size: 8, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !94, file: !70, line: 94, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !94, file: !70, line: 94, baseType: !25, size: 32, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !69, file: !70, line: 371, baseType: !106, size: 384)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !70, line: 97, size: 384, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !106, file: !70, line: 98, baseType: !68, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !106, file: !70, line: 98, baseType: !19, size: 8, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !70, line: 98, baseType: !19, size: 8, offset: 72)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !106, file: !70, line: 98, baseType: !13, size: 16, offset: 80)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !70, line: 98, baseType: !19, size: 8, offset: 96)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !106, file: !70, line: 98, baseType: !18, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !106, file: !70, line: 98, baseType: !25, size: 32, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !106, file: !70, line: 99, baseType: !25, size: 32, offset: 224)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !106, file: !70, line: 100, baseType: !18, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !106, file: !70, line: 101, baseType: !64, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !69, file: !70, line: 372, baseType: !119, size: 384)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !70, line: 104, size: 384, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !129, !130, !131}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !119, file: !70, line: 105, baseType: !68, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !119, file: !70, line: 105, baseType: !19, size: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !70, line: 105, baseType: !19, size: 8, offset: 72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !119, file: !70, line: 105, baseType: !13, size: 16, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !70, line: 105, baseType: !19, size: 8, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !119, file: !70, line: 105, baseType: !64, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !119, file: !70, line: 106, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !119, file: !70, line: 107, baseType: !18, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !119, file: !70, line: 108, baseType: !25, size: 32, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !119, file: !70, line: 109, baseType: !25, size: 32, offset: 352)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !69, file: !70, line: 373, baseType: !133, size: 192)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !70, line: 118, size: 192, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !133, file: !70, line: 119, baseType: !68, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !133, file: !70, line: 119, baseType: !19, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !70, line: 119, baseType: !19, size: 8, offset: 72)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !133, file: !70, line: 119, baseType: !13, size: 16, offset: 80)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !70, line: 119, baseType: !19, size: 8, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !133, file: !70, line: 119, baseType: !22, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !69, file: !70, line: 374, baseType: !142, size: 448)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !70, line: 143, size: 448, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !270, !271, !272}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !142, file: !70, line: 144, baseType: !68, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !142, file: !70, line: 144, baseType: !19, size: 8, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !70, line: 144, baseType: !19, size: 8, offset: 72)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !142, file: !70, line: 144, baseType: !13, size: 16, offset: 80)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !142, file: !70, line: 144, baseType: !19, size: 8, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !142, file: !70, line: 144, baseType: !19, size: 8, offset: 104)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !142, file: !70, line: 145, baseType: !19, size: 8, offset: 112)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !142, file: !70, line: 146, baseType: !19, size: 8, offset: 120)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !142, file: !70, line: 147, baseType: !68, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !142, file: !70, line: 148, baseType: !68, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !142, file: !70, line: 149, baseType: !18, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !142, file: !70, line: 153, baseType: !156, size: 64, offset: 320)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !142, file: !70, line: 150, size: 64, elements: !157)
!157 = !{!158, !269}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !156, file: !70, line: 151, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!23, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !165, line: 37, size: 9024, elements: !166)
!165 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !202, !203, !204, !205, !206, !210, !214, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !241, !242, !243, !244, !245, !246, !247, !248, !261, !267}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !165, line: 38, baseType: !163, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !164, file: !165, line: 39, baseType: !19, size: 8, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !164, file: !165, line: 40, baseType: !19, size: 8, offset: 72)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !164, file: !165, line: 41, baseType: !13, size: 16, offset: 80)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !164, file: !165, line: 42, baseType: !19, size: 8, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !164, file: !165, line: 43, baseType: !19, size: 8, offset: 104)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !164, file: !165, line: 44, baseType: !19, size: 8, offset: 112)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !164, file: !165, line: 45, baseType: !175, size: 16, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !24, line: 445, baseType: !13)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !164, file: !165, line: 46, baseType: !19, size: 8, offset: 144)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !164, file: !165, line: 47, baseType: !19, size: 8, offset: 152)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !164, file: !165, line: 48, baseType: !19, size: 8, offset: 160)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !164, file: !165, line: 49, baseType: !19, size: 8, offset: 168)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !164, file: !165, line: 50, baseType: !19, size: 8, offset: 176)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !164, file: !165, line: 51, baseType: !19, size: 8, offset: 184)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !164, file: !165, line: 52, baseType: !19, size: 8, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !164, file: !165, line: 53, baseType: !19, size: 8, offset: 200)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !164, file: !165, line: 54, baseType: !18, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !164, file: !165, line: 55, baseType: !25, size: 32, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !164, file: !165, line: 56, baseType: !25, size: 32, offset: 352)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !164, file: !165, line: 57, baseType: !25, size: 32, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !164, file: !165, line: 58, baseType: !25, size: 32, offset: 416)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !164, file: !165, line: 60, baseType: !190, size: 640, offset: 448)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !190, file: !6, line: 894, baseType: !18, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !190, file: !6, line: 895, baseType: !18, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !190, file: !6, line: 896, baseType: !18, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !190, file: !6, line: 897, baseType: !18, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !190, file: !6, line: 898, baseType: !18, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !190, file: !6, line: 899, baseType: !51, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !190, file: !6, line: 900, baseType: !64, size: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !190, file: !6, line: 901, baseType: !30, size: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !190, file: !6, line: 902, baseType: !51, size: 64, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !190, file: !6, line: 903, baseType: !25, size: 32, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !164, file: !165, line: 61, baseType: !25, size: 32, offset: 1088)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !164, file: !165, line: 62, baseType: !25, size: 32, offset: 1120)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !164, file: !165, line: 63, baseType: !13, size: 16, offset: 1152)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !164, file: !165, line: 64, baseType: !19, size: 8, offset: 1168)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !164, file: !165, line: 66, baseType: !207, size: 2688, offset: 1216)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 2688, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 7)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !164, file: !165, line: 67, baseType: !211, size: 3072, offset: 3904)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 3072, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 8)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !164, file: !165, line: 68, baseType: !215, size: 576, offset: 6976)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 576, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 9)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !164, file: !165, line: 69, baseType: !128, size: 64, offset: 7552)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !164, file: !165, line: 71, baseType: !18, size: 64, offset: 7616)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !164, file: !165, line: 72, baseType: !128, size: 64, offset: 7680)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !164, file: !165, line: 73, baseType: !30, size: 64, offset: 7744)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !164, file: !165, line: 74, baseType: !64, size: 64, offset: 7808)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !164, file: !165, line: 75, baseType: !68, size: 64, offset: 7872)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !164, file: !165, line: 76, baseType: !64, size: 64, offset: 7936)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !164, file: !165, line: 77, baseType: !51, size: 64, offset: 8000)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !164, file: !165, line: 78, baseType: !68, size: 64, offset: 8064)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !164, file: !165, line: 79, baseType: !64, size: 64, offset: 8128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !164, file: !165, line: 80, baseType: !102, size: 64, offset: 8192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !164, file: !165, line: 81, baseType: !51, size: 64, offset: 8256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !164, file: !165, line: 82, baseType: !231, size: 64, offset: 8320)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !233, file: !6, line: 706, baseType: !25, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !233, file: !6, line: 707, baseType: !25, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !233, file: !6, line: 708, baseType: !13, size: 16, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !233, file: !6, line: 709, baseType: !19, size: 8, offset: 80)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !233, file: !6, line: 710, baseType: !19, size: 8, offset: 88)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !233, file: !6, line: 711, baseType: !19, size: 8, offset: 96)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !164, file: !165, line: 83, baseType: !51, size: 64, offset: 8384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !164, file: !165, line: 84, baseType: !68, size: 64, offset: 8448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !164, file: !165, line: 85, baseType: !30, size: 64, offset: 8512)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !164, file: !165, line: 86, baseType: !68, size: 64, offset: 8576)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !164, file: !165, line: 87, baseType: !30, size: 64, offset: 8640)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !164, file: !165, line: 88, baseType: !51, size: 64, offset: 8704)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !164, file: !165, line: 89, baseType: !51, size: 64, offset: 8768)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !164, file: !165, line: 90, baseType: !249, size: 64, offset: 8832)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !6, line: 621, baseType: !22, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !250, file: !6, line: 621, baseType: !19, size: 8, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !250, file: !6, line: 621, baseType: !19, size: 8, offset: 72)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !250, file: !6, line: 621, baseType: !13, size: 16, offset: 80)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !250, file: !6, line: 621, baseType: !13, size: 16, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !250, file: !6, line: 621, baseType: !19, size: 8, offset: 112)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !250, file: !6, line: 622, baseType: !163, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !250, file: !6, line: 623, baseType: !68, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !250, file: !6, line: 624, baseType: !27, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !164, file: !165, line: 91, baseType: !262, size: 64, offset: 8896)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!23, !163, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !164, file: !165, line: 92, baseType: !268, size: 64, offset: 8960)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !160)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !156, file: !70, line: 152, baseType: !68, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !142, file: !70, line: 155, baseType: !25, size: 32, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !142, file: !70, line: 156, baseType: !175, size: 16, offset: 416)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !142, file: !70, line: 157, baseType: !19, size: 8, offset: 432)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !69, file: !70, line: 375, baseType: !274, size: 576)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !70, line: 122, size: 576, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !274, file: !70, line: 123, baseType: !68, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !274, file: !70, line: 123, baseType: !19, size: 8, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !274, file: !70, line: 123, baseType: !19, size: 8, offset: 72)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !274, file: !70, line: 123, baseType: !13, size: 16, offset: 80)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !70, line: 123, baseType: !19, size: 8, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !274, file: !70, line: 123, baseType: !19, size: 8, offset: 104)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !274, file: !70, line: 124, baseType: !13, size: 16, offset: 112)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !274, file: !70, line: 125, baseType: !22, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !274, file: !70, line: 126, baseType: !27, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !274, file: !70, line: 127, baseType: !249, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !274, file: !70, line: 128, baseType: !68, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !70, line: 129, baseType: !68, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !274, file: !70, line: 130, baseType: !64, size: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !274, file: !70, line: 131, baseType: !19, size: 8, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !69, file: !70, line: 376, baseType: !291, size: 448)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !70, line: 134, size: 448, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !304}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !291, file: !70, line: 135, baseType: !68, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !291, file: !70, line: 135, baseType: !19, size: 8, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !291, file: !70, line: 135, baseType: !19, size: 8, offset: 72)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !291, file: !70, line: 135, baseType: !13, size: 16, offset: 80)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !70, line: 135, baseType: !19, size: 8, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !291, file: !70, line: 135, baseType: !19, size: 8, offset: 104)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !291, file: !70, line: 136, baseType: !64, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !291, file: !70, line: 137, baseType: !68, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !70, line: 138, baseType: !68, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !291, file: !70, line: 139, baseType: !303, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !24, line: 129, baseType: !27)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !291, file: !70, line: 140, baseType: !25, size: 32, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !69, file: !70, line: 377, baseType: !306, size: 320)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !70, line: 184, size: 320, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313, !317}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !306, file: !70, line: 185, baseType: !68, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !306, file: !70, line: 185, baseType: !19, size: 8, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !306, file: !70, line: 185, baseType: !19, size: 8, offset: 72)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !306, file: !70, line: 185, baseType: !13, size: 16, offset: 80)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !70, line: 185, baseType: !19, size: 8, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !306, file: !70, line: 185, baseType: !314, size: 128, offset: 128)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 128, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 2)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !306, file: !70, line: 185, baseType: !68, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !69, file: !70, line: 378, baseType: !319, size: 384)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !70, line: 187, size: 384, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !319, file: !70, line: 188, baseType: !68, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !70, line: 188, baseType: !19, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !319, file: !70, line: 188, baseType: !19, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !319, file: !70, line: 188, baseType: !13, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !70, line: 188, baseType: !19, size: 8, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !319, file: !70, line: 189, baseType: !314, size: 128, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !319, file: !70, line: 189, baseType: !68, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !319, file: !70, line: 189, baseType: !329, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !331)
!331 = !{!332, !333, !334, !335, !343, !358, !391, !392, !393, !394, !395, !396}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !330, file: !6, line: 481, baseType: !64, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !330, file: !6, line: 482, baseType: !329, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !6, line: 483, baseType: !329, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !330, file: !6, line: 484, baseType: !336, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !338)
!338 = !{!339, !340, !341, !342}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !337, file: !6, line: 498, baseType: !336, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !6, line: 499, baseType: !336, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !337, file: !6, line: 500, baseType: !329, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !337, file: !6, line: 501, baseType: !25, size: 32, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !330, file: !6, line: 485, baseType: !344, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !346)
!346 = !{!347, !352, !353, !354, !355, !356, !357}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !345, file: !6, line: 467, baseType: !348, size: 128)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !348, file: !6, line: 460, baseType: !19, size: 8)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !348, file: !6, line: 461, baseType: !27, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !345, file: !6, line: 468, baseType: !348, size: 128, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !345, file: !6, line: 469, baseType: !13, size: 16, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !345, file: !6, line: 470, baseType: !19, size: 8, offset: 272)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !345, file: !6, line: 471, baseType: !19, size: 8, offset: 280)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !345, file: !6, line: 472, baseType: !19, size: 8, offset: 288)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !345, file: !6, line: 473, baseType: !19, size: 8, offset: 296)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !330, file: !6, line: 486, baseType: !359, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !361)
!361 = !{!362, !386, !387, !388, !389, !390}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !360, file: !6, line: 449, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !364)
!364 = !{!365, !366, !380}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !363, file: !6, line: 439, baseType: !64, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !363, file: !6, line: 440, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !369)
!369 = !{!370, !376, !377, !378, !379}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !368, file: !6, line: 420, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !24, line: 1049, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!25, !375, !25, !22}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !24, line: 424, baseType: !22)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !368, file: !6, line: 421, baseType: !22, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !368, file: !6, line: 422, baseType: !64, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !368, file: !6, line: 423, baseType: !19, size: 8, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !368, file: !6, line: 424, baseType: !19, size: 8, offset: 200)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !363, file: !6, line: 441, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !382, file: !6, line: 430, baseType: !64, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !6, line: 431, baseType: !381, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !360, file: !6, line: 450, baseType: !344, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !6, line: 451, baseType: !19, size: 8, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !360, file: !6, line: 452, baseType: !19, size: 8, offset: 136)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !360, file: !6, line: 453, baseType: !19, size: 8, offset: 144)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !360, file: !6, line: 454, baseType: !19, size: 8, offset: 152)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !330, file: !6, line: 487, baseType: !27, size: 64, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !330, file: !6, line: 488, baseType: !25, size: 32, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !330, file: !6, line: 489, baseType: !13, size: 16, offset: 480)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !330, file: !6, line: 490, baseType: !13, size: 16, offset: 496)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !330, file: !6, line: 491, baseType: !19, size: 8, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !330, file: !6, line: 492, baseType: !19, size: 8, offset: 520)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !69, file: !70, line: 379, baseType: !398, size: 384)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !70, line: 192, size: 384, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !398, file: !70, line: 193, baseType: !68, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !398, file: !70, line: 193, baseType: !19, size: 8, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !398, file: !70, line: 193, baseType: !19, size: 8, offset: 72)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !398, file: !70, line: 193, baseType: !13, size: 16, offset: 80)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !398, file: !70, line: 193, baseType: !19, size: 8, offset: 96)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !398, file: !70, line: 193, baseType: !314, size: 128, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !398, file: !70, line: 193, baseType: !68, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !398, file: !70, line: 193, baseType: !25, size: 32, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !398, file: !70, line: 194, baseType: !25, size: 32, offset: 352)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !69, file: !70, line: 380, baseType: !410, size: 384)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !70, line: 197, size: 384, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420, !421}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !410, file: !70, line: 198, baseType: !68, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !410, file: !70, line: 198, baseType: !19, size: 8, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !410, file: !70, line: 198, baseType: !19, size: 8, offset: 72)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !410, file: !70, line: 198, baseType: !13, size: 16, offset: 80)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !70, line: 198, baseType: !19, size: 8, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !410, file: !70, line: 200, baseType: !19, size: 8, offset: 104)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !410, file: !70, line: 201, baseType: !19, size: 8, offset: 112)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !410, file: !70, line: 202, baseType: !314, size: 128, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !410, file: !70, line: 202, baseType: !68, size: 64, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !410, file: !70, line: 202, baseType: !422, size: 64, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !24, line: 128, baseType: !27)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !69, file: !70, line: 381, baseType: !424, size: 320)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !70, line: 205, size: 320, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431, !432}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !424, file: !70, line: 206, baseType: !68, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !424, file: !70, line: 206, baseType: !19, size: 8, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !424, file: !70, line: 206, baseType: !19, size: 8, offset: 72)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !424, file: !70, line: 206, baseType: !13, size: 16, offset: 80)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !424, file: !70, line: 206, baseType: !19, size: 8, offset: 96)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !424, file: !70, line: 206, baseType: !314, size: 128, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !424, file: !70, line: 206, baseType: !68, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !69, file: !70, line: 382, baseType: !434, size: 384)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !70, line: 233, size: 384, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !434, file: !70, line: 234, baseType: !68, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !434, file: !70, line: 234, baseType: !19, size: 8, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !434, file: !70, line: 234, baseType: !19, size: 8, offset: 72)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !434, file: !70, line: 234, baseType: !13, size: 16, offset: 80)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !434, file: !70, line: 234, baseType: !19, size: 8, offset: 96)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !434, file: !70, line: 234, baseType: !19, size: 8, offset: 104)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !434, file: !70, line: 234, baseType: !19, size: 8, offset: 112)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !434, file: !70, line: 234, baseType: !19, size: 8, offset: 120)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !434, file: !70, line: 234, baseType: !64, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !434, file: !70, line: 234, baseType: !25, size: 32, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !434, file: !70, line: 234, baseType: !25, size: 32, offset: 224)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !434, file: !70, line: 234, baseType: !25, size: 32, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !434, file: !70, line: 234, baseType: !19, size: 8, offset: 288)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !434, file: !70, line: 234, baseType: !19, size: 8, offset: 296)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !434, file: !70, line: 234, baseType: !68, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !69, file: !70, line: 383, baseType: !452, size: 576)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !70, line: 237, size: 576, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !70, line: 238, baseType: !68, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !70, line: 238, baseType: !19, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !70, line: 238, baseType: !19, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !70, line: 238, baseType: !13, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !70, line: 238, baseType: !19, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !452, file: !70, line: 238, baseType: !19, size: 8, offset: 104)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !452, file: !70, line: 238, baseType: !19, size: 8, offset: 112)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !452, file: !70, line: 238, baseType: !19, size: 8, offset: 120)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !452, file: !70, line: 238, baseType: !64, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !452, file: !70, line: 238, baseType: !25, size: 32, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !452, file: !70, line: 238, baseType: !25, size: 32, offset: 224)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !452, file: !70, line: 238, baseType: !25, size: 32, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !452, file: !70, line: 238, baseType: !19, size: 8, offset: 288)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !452, file: !70, line: 238, baseType: !19, size: 8, offset: 296)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !452, file: !70, line: 238, baseType: !13, size: 16, offset: 304)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !452, file: !70, line: 239, baseType: !68, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !452, file: !70, line: 240, baseType: !18, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !452, file: !70, line: 241, baseType: !13, size: 16, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !452, file: !70, line: 242, baseType: !18, size: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !69, file: !70, line: 384, baseType: !474, size: 384)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !70, line: 262, size: 384, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !474, file: !70, line: 263, baseType: !68, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !474, file: !70, line: 263, baseType: !19, size: 8, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !70, line: 263, baseType: !19, size: 8, offset: 72)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !70, line: 263, baseType: !13, size: 16, offset: 80)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !70, line: 263, baseType: !19, size: 8, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !474, file: !70, line: 263, baseType: !19, size: 8, offset: 104)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !474, file: !70, line: 263, baseType: !19, size: 8, offset: 112)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !474, file: !70, line: 263, baseType: !19, size: 8, offset: 120)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !474, file: !70, line: 263, baseType: !64, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !474, file: !70, line: 263, baseType: !25, size: 32, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !474, file: !70, line: 263, baseType: !25, size: 32, offset: 224)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !474, file: !70, line: 263, baseType: !25, size: 32, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !474, file: !70, line: 263, baseType: !19, size: 8, offset: 288)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !474, file: !70, line: 263, baseType: !19, size: 8, offset: 296)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !474, file: !70, line: 263, baseType: !19, size: 8, offset: 304)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !474, file: !70, line: 264, baseType: !68, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !69, file: !70, line: 385, baseType: !493, size: 448)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !70, line: 245, size: 448, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !493, file: !70, line: 246, baseType: !68, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !493, file: !70, line: 246, baseType: !19, size: 8, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !70, line: 246, baseType: !19, size: 8, offset: 72)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !493, file: !70, line: 246, baseType: !13, size: 16, offset: 80)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !70, line: 246, baseType: !19, size: 8, offset: 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !493, file: !70, line: 246, baseType: !19, size: 8, offset: 104)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !493, file: !70, line: 246, baseType: !19, size: 8, offset: 112)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !493, file: !70, line: 246, baseType: !19, size: 8, offset: 120)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !493, file: !70, line: 246, baseType: !64, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !493, file: !70, line: 246, baseType: !25, size: 32, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !493, file: !70, line: 246, baseType: !25, size: 32, offset: 224)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !493, file: !70, line: 246, baseType: !25, size: 32, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !493, file: !70, line: 246, baseType: !19, size: 8, offset: 288)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !493, file: !70, line: 246, baseType: !19, size: 8, offset: 296)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !493, file: !70, line: 246, baseType: !68, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !493, file: !70, line: 247, baseType: !68, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !69, file: !70, line: 386, baseType: !512, size: 448)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !70, line: 250, size: 448, elements: !513)
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !512, file: !70, line: 251, baseType: !68, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !512, file: !70, line: 251, baseType: !19, size: 8, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !512, file: !70, line: 251, baseType: !19, size: 8, offset: 72)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !512, file: !70, line: 251, baseType: !13, size: 16, offset: 80)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !512, file: !70, line: 251, baseType: !19, size: 8, offset: 96)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !512, file: !70, line: 251, baseType: !19, size: 8, offset: 104)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !512, file: !70, line: 251, baseType: !19, size: 8, offset: 112)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !512, file: !70, line: 251, baseType: !19, size: 8, offset: 120)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !512, file: !70, line: 251, baseType: !64, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !512, file: !70, line: 251, baseType: !25, size: 32, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !512, file: !70, line: 251, baseType: !25, size: 32, offset: 224)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !512, file: !70, line: 251, baseType: !25, size: 32, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !512, file: !70, line: 251, baseType: !19, size: 8, offset: 288)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !512, file: !70, line: 251, baseType: !19, size: 8, offset: 296)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !512, file: !70, line: 256, baseType: !68, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !512, file: !70, line: 257, baseType: !68, size: 64, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !69, file: !70, line: 387, baseType: !531, size: 512)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !70, line: 273, size: 512, elements: !532)
!532 = !{!533, !534, !535, !536, !537, !538, !539, !540, !545, !546}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !531, file: !70, line: 274, baseType: !68, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !531, file: !70, line: 274, baseType: !19, size: 8, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !531, file: !70, line: 274, baseType: !19, size: 8, offset: 72)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !531, file: !70, line: 274, baseType: !13, size: 16, offset: 80)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !531, file: !70, line: 274, baseType: !19, size: 8, offset: 96)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !531, file: !70, line: 274, baseType: !64, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !531, file: !70, line: 275, baseType: !25, size: 32, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !531, file: !70, line: 276, baseType: !541, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !24, line: 1052, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !375, !25, !22}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !531, file: !70, line: 277, baseType: !22, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !70, line: 278, baseType: !314, size: 128, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !69, file: !70, line: 388, baseType: !548, size: 512)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !70, line: 281, size: 512, elements: !549)
!549 = !{!550, !551, !552, !553, !554, !555, !556, !557, !563, !564, !565, !571, !572}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !548, file: !70, line: 282, baseType: !68, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !548, file: !70, line: 282, baseType: !19, size: 8, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !548, file: !70, line: 282, baseType: !19, size: 8, offset: 72)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !548, file: !70, line: 282, baseType: !13, size: 16, offset: 80)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !548, file: !70, line: 282, baseType: !19, size: 8, offset: 96)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !548, file: !70, line: 282, baseType: !19, size: 8, offset: 104)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !548, file: !70, line: 283, baseType: !19, size: 8, offset: 112)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !548, file: !70, line: 284, baseType: !558, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !24, line: 1084, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!23, !25, !303, !25, !562, !22, !22}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !548, file: !70, line: 285, baseType: !64, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !548, file: !70, line: 286, baseType: !22, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !548, file: !70, line: 287, baseType: !566, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !24, line: 1102, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!23, !375, !25, !22, !570}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !548, file: !70, line: 288, baseType: !68, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !548, file: !70, line: 289, baseType: !68, size: 64, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !69, file: !70, line: 389, baseType: !574, size: 512)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !70, line: 307, size: 512, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !574, file: !70, line: 308, baseType: !68, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !574, file: !70, line: 308, baseType: !19, size: 8, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !574, file: !70, line: 308, baseType: !19, size: 8, offset: 72)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !574, file: !70, line: 308, baseType: !13, size: 16, offset: 80)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !70, line: 308, baseType: !19, size: 8, offset: 96)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !574, file: !70, line: 308, baseType: !19, size: 8, offset: 104)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !574, file: !70, line: 309, baseType: !19, size: 8, offset: 112)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !574, file: !70, line: 310, baseType: !19, size: 8, offset: 120)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !574, file: !70, line: 311, baseType: !22, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !574, file: !70, line: 312, baseType: !64, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !574, file: !70, line: 313, baseType: !128, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !574, file: !70, line: 314, baseType: !18, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !574, file: !70, line: 315, baseType: !18, size: 64, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !574, file: !70, line: 316, baseType: !25, size: 32, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !69, file: !70, line: 390, baseType: !591, size: 448)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !70, line: 340, size: 448, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !591, file: !70, line: 341, baseType: !68, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !591, file: !70, line: 341, baseType: !19, size: 8, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !591, file: !70, line: 341, baseType: !19, size: 8, offset: 72)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !591, file: !70, line: 341, baseType: !13, size: 16, offset: 80)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !70, line: 341, baseType: !19, size: 8, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !591, file: !70, line: 341, baseType: !64, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !591, file: !70, line: 342, baseType: !64, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !591, file: !70, line: 343, baseType: !22, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !591, file: !70, line: 344, baseType: !18, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !591, file: !70, line: 345, baseType: !25, size: 32, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !69, file: !70, line: 391, baseType: !604, size: 256)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !70, line: 350, size: 256, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !616}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !604, file: !70, line: 351, baseType: !68, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !604, file: !70, line: 351, baseType: !19, size: 8, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !604, file: !70, line: 351, baseType: !19, size: 8, offset: 72)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !604, file: !70, line: 351, baseType: !13, size: 16, offset: 80)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !70, line: 351, baseType: !19, size: 8, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !604, file: !70, line: 351, baseType: !612, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !24, line: 1055, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !375, !22}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !604, file: !70, line: 352, baseType: !22, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !69, file: !70, line: 392, baseType: !618, size: 192)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !70, line: 357, size: 192, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !618, file: !70, line: 358, baseType: !68, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !618, file: !70, line: 358, baseType: !19, size: 8, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !70, line: 358, baseType: !19, size: 8, offset: 72)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !618, file: !70, line: 358, baseType: !13, size: 16, offset: 80)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !70, line: 358, baseType: !19, size: 8, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !618, file: !70, line: 358, baseType: !68, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !69, file: !70, line: 399, baseType: !65, size: 384)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !65, file: !6, line: 135, baseType: !19, size: 8, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !6, line: 136, baseType: !19, size: 8, offset: 72)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !6, line: 137, baseType: !13, size: 16, offset: 80)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !65, file: !6, line: 138, baseType: !631, size: 32, offset: 96)
!631 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !632, line: 327, size: 32, elements: !633)
!632 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !631, file: !632, line: 328, baseType: !25, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !631, file: !632, line: 329, baseType: !636, size: 32)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 32, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 4)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !65, file: !6, line: 139, baseType: !64, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !65, file: !6, line: 140, baseType: !64, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !65, file: !6, line: 141, baseType: !64, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !65, file: !6, line: 142, baseType: !175, size: 16, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !55, file: !6, line: 829, baseType: !644, size: 64, offset: 320)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !644, file: !6, line: 717, baseType: !27, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !644, file: !6, line: 718, baseType: !25, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !644, file: !6, line: 719, baseType: !102, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !644, file: !6, line: 720, baseType: !18, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !644, file: !6, line: 721, baseType: !102, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !644, file: !6, line: 722, baseType: !51, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !55, file: !6, line: 829, baseType: !19, size: 8, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !52, file: !6, line: 877, baseType: !654, size: 640)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !654, file: !6, line: 836, baseType: !51, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !654, file: !6, line: 836, baseType: !19, size: 8, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !6, line: 836, baseType: !19, size: 8, offset: 72)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !654, file: !6, line: 836, baseType: !13, size: 16, offset: 80)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !654, file: !6, line: 836, baseType: !18, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !654, file: !6, line: 836, baseType: !51, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !654, file: !6, line: 836, baseType: !64, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !654, file: !6, line: 836, baseType: !644, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !654, file: !6, line: 836, baseType: !19, size: 8, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !654, file: !6, line: 836, baseType: !102, size: 64, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !654, file: !6, line: 837, baseType: !18, size: 64, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !654, file: !6, line: 838, baseType: !25, size: 32, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !654, file: !6, line: 839, baseType: !25, size: 32, offset: 608)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !52, file: !6, line: 878, baseType: !670, size: 1600)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !670, file: !6, line: 847, baseType: !51, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !670, file: !6, line: 847, baseType: !19, size: 8, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !6, line: 847, baseType: !19, size: 8, offset: 72)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !670, file: !6, line: 847, baseType: !13, size: 16, offset: 80)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !670, file: !6, line: 847, baseType: !18, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !670, file: !6, line: 847, baseType: !51, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !670, file: !6, line: 847, baseType: !64, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !670, file: !6, line: 847, baseType: !644, size: 64, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !670, file: !6, line: 847, baseType: !19, size: 8, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !670, file: !6, line: 847, baseType: !51, size: 64, offset: 448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !670, file: !6, line: 848, baseType: !51, size: 64, offset: 512)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !670, file: !6, line: 849, baseType: !102, size: 64, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !670, file: !6, line: 850, baseType: !19, size: 8, offset: 640)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !670, file: !6, line: 851, baseType: !102, size: 64, offset: 704)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !670, file: !6, line: 852, baseType: !102, size: 64, offset: 768)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !670, file: !6, line: 853, baseType: !102, size: 64, offset: 832)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !670, file: !6, line: 854, baseType: !636, size: 32, offset: 896)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !670, file: !6, line: 855, baseType: !25, size: 32, offset: 928)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !670, file: !6, line: 856, baseType: !25, size: 32, offset: 960)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !670, file: !6, line: 857, baseType: !25, size: 32, offset: 992)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !670, file: !6, line: 858, baseType: !25, size: 32, offset: 1024)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !670, file: !6, line: 859, baseType: !25, size: 32, offset: 1056)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !670, file: !6, line: 860, baseType: !25, size: 32, offset: 1088)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !670, file: !6, line: 861, baseType: !25, size: 32, offset: 1120)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !670, file: !6, line: 862, baseType: !25, size: 32, offset: 1152)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !670, file: !6, line: 863, baseType: !25, size: 32, offset: 1184)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !670, file: !6, line: 864, baseType: !25, size: 32, offset: 1216)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !670, file: !6, line: 865, baseType: !25, size: 32, offset: 1248)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !670, file: !6, line: 866, baseType: !25, size: 32, offset: 1280)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !670, file: !6, line: 867, baseType: !25, size: 32, offset: 1312)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !670, file: !6, line: 868, baseType: !13, size: 16, offset: 1344)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !670, file: !6, line: 869, baseType: !19, size: 8, offset: 1360)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !670, file: !6, line: 870, baseType: !19, size: 8, offset: 1368)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !670, file: !6, line: 871, baseType: !19, size: 8, offset: 1376)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !670, file: !6, line: 872, baseType: !707, size: 160, offset: 1384)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 160, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 20)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !42, file: !6, line: 596, baseType: !18, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !42, file: !6, line: 597, baseType: !18, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !42, file: !6, line: 598, baseType: !27, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !31, file: !6, line: 666, baseType: !714, size: 192)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !715)
!715 = !{!716, !717, !718, !719, !720, !721}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !6, line: 574, baseType: !22, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !714, file: !6, line: 574, baseType: !19, size: 8, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !714, file: !6, line: 574, baseType: !19, size: 8, offset: 72)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !714, file: !6, line: 574, baseType: !13, size: 16, offset: 80)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !714, file: !6, line: 574, baseType: !13, size: 16, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !714, file: !6, line: 574, baseType: !68, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !31, file: !6, line: 667, baseType: !723, size: 192)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !723, file: !6, line: 605, baseType: !22, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !723, file: !6, line: 605, baseType: !19, size: 8, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !6, line: 605, baseType: !19, size: 8, offset: 72)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !723, file: !6, line: 605, baseType: !13, size: 16, offset: 80)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !723, file: !6, line: 605, baseType: !13, size: 16, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !723, file: !6, line: 605, baseType: !64, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !31, file: !6, line: 668, baseType: !732, size: 448)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !732, file: !6, line: 609, baseType: !22, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !6, line: 609, baseType: !19, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !6, line: 609, baseType: !19, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !732, file: !6, line: 609, baseType: !13, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !732, file: !6, line: 609, baseType: !13, size: 16, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !732, file: !6, line: 609, baseType: !25, size: 32, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !732, file: !6, line: 610, baseType: !51, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !732, file: !6, line: 611, baseType: !18, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !732, file: !6, line: 612, baseType: !18, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !732, file: !6, line: 613, baseType: !25, size: 32, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !31, file: !6, line: 669, baseType: !745, size: 512)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !745, file: !6, line: 581, baseType: !22, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !6, line: 581, baseType: !19, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !6, line: 581, baseType: !19, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !745, file: !6, line: 581, baseType: !13, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !745, file: !6, line: 581, baseType: !13, size: 16, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !745, file: !6, line: 581, baseType: !25, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !745, file: !6, line: 582, baseType: !68, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !745, file: !6, line: 583, baseType: !68, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !745, file: !6, line: 584, baseType: !163, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !745, file: !6, line: 585, baseType: !22, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !745, file: !6, line: 586, baseType: !25, size: 32, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !31, file: !6, line: 670, baseType: !250, size: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !31, file: !6, line: 671, baseType: !760, size: 640)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !760, file: !6, line: 632, baseType: !22, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !760, file: !6, line: 632, baseType: !19, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !6, line: 632, baseType: !19, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !760, file: !6, line: 632, baseType: !13, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !760, file: !6, line: 632, baseType: !13, size: 16, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !760, file: !6, line: 633, baseType: !768, size: 512, offset: 128)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 512, elements: !212)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !31, file: !6, line: 672, baseType: !770, size: 320)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !771)
!771 = !{!772, !773, !774, !775, !776, !777, !778, !779, !780}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !770, file: !6, line: 655, baseType: !22, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !770, file: !6, line: 655, baseType: !19, size: 8, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !6, line: 655, baseType: !19, size: 8, offset: 72)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !770, file: !6, line: 655, baseType: !13, size: 16, offset: 80)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !770, file: !6, line: 655, baseType: !13, size: 16, offset: 96)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !770, file: !6, line: 655, baseType: !19, size: 8, offset: 112)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !770, file: !6, line: 656, baseType: !64, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !770, file: !6, line: 657, baseType: !68, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !770, file: !6, line: 658, baseType: !781, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !782, file: !6, line: 646, baseType: !541, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !782, file: !6, line: 647, baseType: !22, size: 64, offset: 64)
!786 = !{!0}
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 64, elements: !212)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!789 = !{i32 7, !"Dwarf Version", i32 4}
!790 = !{i32 2, !"Debug Info Version", i32 3}
!791 = !{i32 1, !"wchar_size", i32 2}
!792 = !{i32 1, !"Code Model", i32 2}
!793 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!794 = distinct !DISubprogram(name: "acpi_ps_get_opcode_size", scope: !3, file: !3, line: 41, type: !795, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{!25, !25}
!797 = !{}
!798 = !DILocalVariable(name: "opcode", arg: 1, scope: !794, file: !3, line: 41, type: !25)
!799 = !DILocation(line: 41, column: 33, scope: !794)
!800 = !DILocation(line: 46, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !794, file: !3, line: 46, column: 6)
!802 = !DILocation(line: 46, column: 13, scope: !801)
!803 = !DILocation(line: 46, column: 6, scope: !794)
!804 = !DILocation(line: 47, column: 3, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !3, line: 46, column: 23)
!806 = !DILocation(line: 52, column: 2, scope: !794)
!807 = !DILocation(line: 53, column: 1, scope: !794)
!808 = distinct !DISubprogram(name: "acpi_ps_peek_opcode", scope: !3, file: !3, line: 67, type: !809, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !797)
!809 = !DISubroutineType(types: !810)
!810 = !{!13, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!812 = !DILocalVariable(name: "parser_state", arg: 1, scope: !808, file: !3, line: 67, type: !811)
!813 = !DILocation(line: 67, column: 51, scope: !808)
!814 = !DILocalVariable(name: "aml", scope: !808, file: !3, line: 69, type: !18)
!815 = !DILocation(line: 69, column: 6, scope: !808)
!816 = !DILocalVariable(name: "opcode", scope: !808, file: !3, line: 70, type: !13)
!817 = !DILocation(line: 70, column: 6, scope: !808)
!818 = !DILocation(line: 72, column: 8, scope: !808)
!819 = !DILocation(line: 72, column: 22, scope: !808)
!820 = !DILocation(line: 72, column: 6, scope: !808)
!821 = !DILocation(line: 73, column: 17, scope: !808)
!822 = !DILocation(line: 73, column: 11, scope: !808)
!823 = !DILocation(line: 73, column: 9, scope: !808)
!824 = !DILocation(line: 75, column: 6, scope: !825)
!825 = distinct !DILexicalBlock(scope: !808, file: !3, line: 75, column: 6)
!826 = !DILocation(line: 75, column: 13, scope: !825)
!827 = !DILocation(line: 75, column: 6, scope: !808)
!828 = !DILocation(line: 79, column: 6, scope: !829)
!829 = distinct !DILexicalBlock(scope: !825, file: !3, line: 75, column: 37)
!830 = !DILocation(line: 80, column: 20, scope: !829)
!831 = !DILocation(line: 80, column: 27, scope: !829)
!832 = !DILocation(line: 80, column: 35, scope: !829)
!833 = !DILocation(line: 80, column: 33, scope: !829)
!834 = !DILocation(line: 80, column: 12, scope: !829)
!835 = !DILocation(line: 80, column: 10, scope: !829)
!836 = !DILocation(line: 81, column: 2, scope: !829)
!837 = !DILocation(line: 83, column: 10, scope: !808)
!838 = !DILocation(line: 83, column: 2, scope: !808)
!839 = distinct !DISubprogram(name: "acpi_ps_complete_this_op", scope: !3, file: !3, line: 100, type: !840, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !797)
!840 = !DISubroutineType(types: !841)
!841 = !{!23, !163, !51}
!842 = !DILocalVariable(name: "walk_state", arg: 1, scope: !839, file: !3, line: 100, type: !163)
!843 = !DILocation(line: 100, column: 50, scope: !839)
!844 = !DILocalVariable(name: "op", arg: 2, scope: !839, file: !3, line: 101, type: !51)
!845 = !DILocation(line: 101, column: 30, scope: !839)
!846 = !DILocalVariable(name: "prev", scope: !839, file: !3, line: 103, type: !51)
!847 = !DILocation(line: 103, column: 27, scope: !839)
!848 = !DILocalVariable(name: "next", scope: !839, file: !3, line: 104, type: !51)
!849 = !DILocation(line: 104, column: 27, scope: !839)
!850 = !DILocalVariable(name: "parent_info", scope: !839, file: !3, line: 105, type: !231)
!851 = !DILocation(line: 105, column: 33, scope: !839)
!852 = !DILocalVariable(name: "replacement_op", scope: !839, file: !3, line: 106, type: !51)
!853 = !DILocation(line: 106, column: 27, scope: !839)
!854 = !DILocalVariable(name: "status", scope: !839, file: !3, line: 107, type: !23)
!855 = !DILocation(line: 107, column: 14, scope: !839)
!856 = !DILocation(line: 113, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !839, file: !3, line: 113, column: 6)
!858 = !DILocation(line: 113, column: 6, scope: !839)
!859 = !DILocation(line: 114, column: 3, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !3, line: 113, column: 11)
!861 = !DILocation(line: 117, column: 28, scope: !839)
!862 = !DILocation(line: 117, column: 32, scope: !839)
!863 = !DILocation(line: 117, column: 2, scope: !839)
!864 = !DILocation(line: 121, column: 8, scope: !865)
!865 = distinct !DILexicalBlock(scope: !839, file: !3, line: 121, column: 6)
!866 = !DILocation(line: 121, column: 20, scope: !865)
!867 = !DILocation(line: 121, column: 32, scope: !865)
!868 = !DILocation(line: 121, column: 56, scope: !865)
!869 = !DILocation(line: 123, column: 6, scope: !865)
!870 = !DILocation(line: 123, column: 10, scope: !865)
!871 = !DILocation(line: 123, column: 22, scope: !865)
!872 = !DILocation(line: 123, column: 31, scope: !865)
!873 = !DILocation(line: 123, column: 37, scope: !865)
!874 = !DILocation(line: 121, column: 6, scope: !839)
!875 = !DILocation(line: 124, column: 3, scope: !876)
!876 = distinct !DILexicalBlock(scope: !865, file: !3, line: 123, column: 61)
!877 = !DILocation(line: 129, column: 6, scope: !878)
!878 = distinct !DILexicalBlock(scope: !839, file: !3, line: 129, column: 6)
!879 = !DILocation(line: 129, column: 10, scope: !878)
!880 = !DILocation(line: 129, column: 17, scope: !878)
!881 = !DILocation(line: 129, column: 6, scope: !839)
!882 = !DILocation(line: 130, column: 10, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !3, line: 129, column: 25)
!884 = !DILocation(line: 130, column: 14, scope: !883)
!885 = !DILocation(line: 130, column: 21, scope: !883)
!886 = !DILocation(line: 130, column: 29, scope: !883)
!887 = !DILocation(line: 130, column: 36, scope: !883)
!888 = !DILocation(line: 130, column: 42, scope: !883)
!889 = !DILocation(line: 130, column: 8, scope: !883)
!890 = !DILocation(line: 131, column: 8, scope: !891)
!891 = distinct !DILexicalBlock(scope: !883, file: !3, line: 131, column: 7)
!892 = !DILocation(line: 131, column: 7, scope: !883)
!893 = !DILocation(line: 135, column: 4, scope: !894)
!894 = distinct !DILexicalBlock(scope: !891, file: !3, line: 131, column: 14)
!895 = !DILocation(line: 143, column: 31, scope: !883)
!896 = !DILocation(line: 143, column: 35, scope: !883)
!897 = !DILocation(line: 143, column: 42, scope: !883)
!898 = !DILocation(line: 143, column: 50, scope: !883)
!899 = !DILocation(line: 144, column: 10, scope: !883)
!900 = !DILocation(line: 143, column: 7, scope: !883)
!901 = !DILocation(line: 142, column: 15, scope: !883)
!902 = !DILocation(line: 146, column: 11, scope: !883)
!903 = !DILocation(line: 146, column: 24, scope: !883)
!904 = !DILocation(line: 146, column: 3, scope: !883)
!905 = !DILocation(line: 149, column: 4, scope: !906)
!906 = distinct !DILexicalBlock(scope: !883, file: !3, line: 146, column: 31)
!907 = !DILocation(line: 158, column: 11, scope: !906)
!908 = !DILocation(line: 158, column: 15, scope: !906)
!909 = !DILocation(line: 158, column: 22, scope: !906)
!910 = !DILocation(line: 157, column: 8, scope: !906)
!911 = !DILocation(line: 156, column: 19, scope: !906)
!912 = !DILocation(line: 159, column: 9, scope: !913)
!913 = distinct !DILexicalBlock(scope: !906, file: !3, line: 159, column: 8)
!914 = !DILocation(line: 159, column: 8, scope: !906)
!915 = !DILocation(line: 160, column: 12, scope: !916)
!916 = distinct !DILexicalBlock(scope: !913, file: !3, line: 159, column: 25)
!917 = !DILocation(line: 161, column: 4, scope: !916)
!918 = !DILocation(line: 162, column: 4, scope: !906)
!919 = !DILocation(line: 169, column: 9, scope: !920)
!920 = distinct !DILexicalBlock(scope: !906, file: !3, line: 169, column: 8)
!921 = !DILocation(line: 169, column: 13, scope: !920)
!922 = !DILocation(line: 169, column: 20, scope: !920)
!923 = !DILocation(line: 169, column: 28, scope: !920)
!924 = !DILocation(line: 169, column: 35, scope: !920)
!925 = !DILocation(line: 169, column: 46, scope: !920)
!926 = !DILocation(line: 171, column: 8, scope: !920)
!927 = !DILocation(line: 171, column: 12, scope: !920)
!928 = !DILocation(line: 171, column: 16, scope: !920)
!929 = !DILocation(line: 171, column: 23, scope: !920)
!930 = !DILocation(line: 171, column: 31, scope: !920)
!931 = !DILocation(line: 171, column: 38, scope: !920)
!932 = !DILocation(line: 171, column: 49, scope: !920)
!933 = !DILocation(line: 173, column: 8, scope: !920)
!934 = !DILocation(line: 173, column: 12, scope: !920)
!935 = !DILocation(line: 173, column: 16, scope: !920)
!936 = !DILocation(line: 173, column: 23, scope: !920)
!937 = !DILocation(line: 173, column: 31, scope: !920)
!938 = !DILocation(line: 173, column: 38, scope: !920)
!939 = !DILocation(line: 173, column: 49, scope: !920)
!940 = !DILocation(line: 175, column: 8, scope: !920)
!941 = !DILocation(line: 175, column: 12, scope: !920)
!942 = !DILocation(line: 175, column: 16, scope: !920)
!943 = !DILocation(line: 175, column: 23, scope: !920)
!944 = !DILocation(line: 175, column: 31, scope: !920)
!945 = !DILocation(line: 175, column: 38, scope: !920)
!946 = !DILocation(line: 175, column: 49, scope: !920)
!947 = !DILocation(line: 177, column: 8, scope: !920)
!948 = !DILocation(line: 177, column: 12, scope: !920)
!949 = !DILocation(line: 177, column: 16, scope: !920)
!950 = !DILocation(line: 177, column: 23, scope: !920)
!951 = !DILocation(line: 177, column: 31, scope: !920)
!952 = !DILocation(line: 177, column: 38, scope: !920)
!953 = !DILocation(line: 177, column: 49, scope: !920)
!954 = !DILocation(line: 179, column: 8, scope: !920)
!955 = !DILocation(line: 179, column: 12, scope: !920)
!956 = !DILocation(line: 179, column: 16, scope: !920)
!957 = !DILocation(line: 179, column: 23, scope: !920)
!958 = !DILocation(line: 179, column: 31, scope: !920)
!959 = !DILocation(line: 179, column: 38, scope: !920)
!960 = !DILocation(line: 179, column: 49, scope: !920)
!961 = !DILocation(line: 169, column: 8, scope: !906)
!962 = !DILocation(line: 183, column: 12, scope: !963)
!963 = distinct !DILexicalBlock(scope: !920, file: !3, line: 180, column: 31)
!964 = !DILocation(line: 183, column: 16, scope: !963)
!965 = !DILocation(line: 183, column: 23, scope: !963)
!966 = !DILocation(line: 182, column: 9, scope: !963)
!967 = !DILocation(line: 181, column: 20, scope: !963)
!968 = !DILocation(line: 184, column: 10, scope: !969)
!969 = distinct !DILexicalBlock(scope: !963, file: !3, line: 184, column: 9)
!970 = !DILocation(line: 184, column: 9, scope: !963)
!971 = !DILocation(line: 185, column: 13, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !3, line: 184, column: 26)
!973 = !DILocation(line: 186, column: 5, scope: !972)
!974 = !DILocation(line: 187, column: 4, scope: !963)
!975 = !DILocation(line: 188, column: 13, scope: !976)
!976 = distinct !DILexicalBlock(scope: !920, file: !3, line: 188, column: 12)
!977 = !DILocation(line: 188, column: 17, scope: !976)
!978 = !DILocation(line: 188, column: 24, scope: !976)
!979 = !DILocation(line: 188, column: 32, scope: !976)
!980 = !DILocation(line: 188, column: 39, scope: !976)
!981 = !DILocation(line: 188, column: 50, scope: !976)
!982 = !DILocation(line: 190, column: 5, scope: !976)
!983 = !DILocation(line: 190, column: 9, scope: !976)
!984 = !DILocation(line: 190, column: 21, scope: !976)
!985 = !DILocation(line: 190, column: 33, scope: !976)
!986 = !DILocation(line: 188, column: 12, scope: !920)
!987 = !DILocation(line: 192, column: 10, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 192, column: 9)
!989 = distinct !DILexicalBlock(scope: !976, file: !3, line: 191, column: 33)
!990 = !DILocation(line: 192, column: 14, scope: !988)
!991 = !DILocation(line: 192, column: 21, scope: !988)
!992 = !DILocation(line: 192, column: 32, scope: !988)
!993 = !DILocation(line: 193, column: 9, scope: !988)
!994 = !DILocation(line: 193, column: 13, scope: !988)
!995 = !DILocation(line: 193, column: 17, scope: !988)
!996 = !DILocation(line: 193, column: 24, scope: !988)
!997 = !DILocation(line: 193, column: 35, scope: !988)
!998 = !DILocation(line: 194, column: 9, scope: !988)
!999 = !DILocation(line: 194, column: 13, scope: !988)
!1000 = !DILocation(line: 194, column: 17, scope: !988)
!1001 = !DILocation(line: 194, column: 24, scope: !988)
!1002 = !DILocation(line: 194, column: 35, scope: !988)
!1003 = !DILocation(line: 192, column: 9, scope: !989)
!1004 = !DILocation(line: 197, column: 27, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !988, file: !3, line: 195, column: 32)
!1006 = !DILocation(line: 197, column: 31, scope: !1005)
!1007 = !DILocation(line: 198, column: 13, scope: !1005)
!1008 = !DILocation(line: 199, column: 13, scope: !1005)
!1009 = !DILocation(line: 199, column: 17, scope: !1005)
!1010 = !DILocation(line: 199, column: 24, scope: !1005)
!1011 = !DILocation(line: 197, column: 10, scope: !1005)
!1012 = !DILocation(line: 196, column: 21, scope: !1005)
!1013 = !DILocation(line: 200, column: 11, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 200, column: 10)
!1015 = !DILocation(line: 200, column: 10, scope: !1005)
!1016 = !DILocation(line: 201, column: 14, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 200, column: 27)
!1018 = !DILocation(line: 202, column: 6, scope: !1017)
!1019 = !DILocation(line: 204, column: 11, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 202, column: 13)
!1021 = !DILocation(line: 204, column: 15, scope: !1020)
!1022 = !DILocation(line: 204, column: 21, scope: !1020)
!1023 = !DILocation(line: 203, column: 7, scope: !1020)
!1024 = !DILocation(line: 203, column: 23, scope: !1020)
!1025 = !DILocation(line: 203, column: 29, scope: !1020)
!1026 = !DILocation(line: 203, column: 34, scope: !1020)
!1027 = !DILocation(line: 206, column: 11, scope: !1020)
!1028 = !DILocation(line: 206, column: 15, scope: !1020)
!1029 = !DILocation(line: 206, column: 21, scope: !1020)
!1030 = !DILocation(line: 205, column: 7, scope: !1020)
!1031 = !DILocation(line: 205, column: 23, scope: !1020)
!1032 = !DILocation(line: 205, column: 29, scope: !1020)
!1033 = !DILocation(line: 205, column: 36, scope: !1020)
!1034 = !DILocation(line: 208, column: 5, scope: !1005)
!1035 = !DILocation(line: 209, column: 4, scope: !989)
!1036 = !DILocation(line: 210, column: 4, scope: !906)
!1037 = !DILocation(line: 216, column: 11, scope: !906)
!1038 = !DILocation(line: 216, column: 15, scope: !906)
!1039 = !DILocation(line: 216, column: 22, scope: !906)
!1040 = !DILocation(line: 215, column: 8, scope: !906)
!1041 = !DILocation(line: 214, column: 19, scope: !906)
!1042 = !DILocation(line: 217, column: 9, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !906, file: !3, line: 217, column: 8)
!1044 = !DILocation(line: 217, column: 8, scope: !906)
!1045 = !DILocation(line: 218, column: 12, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 217, column: 25)
!1047 = !DILocation(line: 219, column: 4, scope: !1046)
!1048 = !DILocation(line: 220, column: 3, scope: !906)
!1049 = !DILocation(line: 224, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !883, file: !3, line: 224, column: 7)
!1051 = !DILocation(line: 224, column: 15, scope: !1050)
!1052 = !DILocation(line: 224, column: 12, scope: !1050)
!1053 = !DILocation(line: 224, column: 7, scope: !883)
!1054 = !DILocation(line: 228, column: 8, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 228, column: 8)
!1056 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 224, column: 19)
!1057 = !DILocation(line: 228, column: 8, scope: !1056)
!1058 = !DILocation(line: 230, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 228, column: 24)
!1060 = !DILocation(line: 230, column: 13, scope: !1059)
!1061 = !DILocation(line: 230, column: 20, scope: !1059)
!1062 = !DILocation(line: 229, column: 5, scope: !1059)
!1063 = !DILocation(line: 229, column: 21, scope: !1059)
!1064 = !DILocation(line: 229, column: 28, scope: !1059)
!1065 = !DILocation(line: 229, column: 35, scope: !1059)
!1066 = !DILocation(line: 231, column: 5, scope: !1059)
!1067 = !DILocation(line: 231, column: 21, scope: !1059)
!1068 = !DILocation(line: 231, column: 28, scope: !1059)
!1069 = !DILocation(line: 231, column: 34, scope: !1059)
!1070 = !DILocation(line: 231, column: 38, scope: !1059)
!1071 = !DILocation(line: 232, column: 35, scope: !1059)
!1072 = !DILocation(line: 232, column: 39, scope: !1059)
!1073 = !DILocation(line: 232, column: 46, scope: !1059)
!1074 = !DILocation(line: 232, column: 5, scope: !1059)
!1075 = !DILocation(line: 232, column: 21, scope: !1059)
!1076 = !DILocation(line: 232, column: 28, scope: !1059)
!1077 = !DILocation(line: 232, column: 33, scope: !1059)
!1078 = !DILocation(line: 234, column: 9, scope: !1059)
!1079 = !DILocation(line: 233, column: 5, scope: !1059)
!1080 = !DILocation(line: 233, column: 9, scope: !1059)
!1081 = !DILocation(line: 233, column: 16, scope: !1059)
!1082 = !DILocation(line: 233, column: 24, scope: !1059)
!1083 = !DILocation(line: 233, column: 31, scope: !1059)
!1084 = !DILocation(line: 233, column: 37, scope: !1059)
!1085 = !DILocation(line: 233, column: 41, scope: !1059)
!1086 = !DILocation(line: 235, column: 35, scope: !1059)
!1087 = !DILocation(line: 235, column: 39, scope: !1059)
!1088 = !DILocation(line: 235, column: 46, scope: !1059)
!1089 = !DILocation(line: 235, column: 5, scope: !1059)
!1090 = !DILocation(line: 235, column: 21, scope: !1059)
!1091 = !DILocation(line: 235, column: 28, scope: !1059)
!1092 = !DILocation(line: 235, column: 33, scope: !1059)
!1093 = !DILocation(line: 236, column: 4, scope: !1059)
!1094 = !DILocation(line: 238, column: 9, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 236, column: 11)
!1096 = !DILocation(line: 238, column: 13, scope: !1095)
!1097 = !DILocation(line: 238, column: 20, scope: !1095)
!1098 = !DILocation(line: 237, column: 5, scope: !1095)
!1099 = !DILocation(line: 237, column: 9, scope: !1095)
!1100 = !DILocation(line: 237, column: 16, scope: !1095)
!1101 = !DILocation(line: 237, column: 24, scope: !1095)
!1102 = !DILocation(line: 237, column: 31, scope: !1095)
!1103 = !DILocation(line: 237, column: 37, scope: !1095)
!1104 = !DILocation(line: 237, column: 41, scope: !1095)
!1105 = !DILocation(line: 240, column: 3, scope: !1056)
!1106 = !DILocation(line: 245, column: 4, scope: !1050)
!1107 = !DILocation(line: 245, column: 11, scope: !1050)
!1108 = !DILocation(line: 249, column: 12, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 245, column: 17)
!1110 = !DILocation(line: 249, column: 18, scope: !1109)
!1111 = !DILocation(line: 249, column: 25, scope: !1109)
!1112 = !DILocation(line: 249, column: 10, scope: !1109)
!1113 = !DILocation(line: 250, column: 9, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 250, column: 9)
!1115 = !DILocation(line: 250, column: 17, scope: !1114)
!1116 = !DILocation(line: 250, column: 14, scope: !1114)
!1117 = !DILocation(line: 250, column: 9, scope: !1109)
!1118 = !DILocation(line: 251, column: 10, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 251, column: 10)
!1120 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 250, column: 21)
!1121 = !DILocation(line: 251, column: 10, scope: !1120)
!1122 = !DILocation(line: 253, column: 11, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 251, column: 26)
!1124 = !DILocation(line: 253, column: 15, scope: !1123)
!1125 = !DILocation(line: 253, column: 22, scope: !1123)
!1126 = !DILocation(line: 252, column: 7, scope: !1123)
!1127 = !DILocation(line: 252, column: 23, scope: !1123)
!1128 = !DILocation(line: 252, column: 30, scope: !1123)
!1129 = !DILocation(line: 252, column: 37, scope: !1123)
!1130 = !DILocation(line: 254, column: 7, scope: !1123)
!1131 = !DILocation(line: 254, column: 23, scope: !1123)
!1132 = !DILocation(line: 254, column: 30, scope: !1123)
!1133 = !DILocation(line: 255, column: 11, scope: !1123)
!1134 = !DILocation(line: 255, column: 15, scope: !1123)
!1135 = !DILocation(line: 257, column: 11, scope: !1123)
!1136 = !DILocation(line: 257, column: 15, scope: !1123)
!1137 = !DILocation(line: 257, column: 22, scope: !1123)
!1138 = !DILocation(line: 256, column: 7, scope: !1123)
!1139 = !DILocation(line: 256, column: 23, scope: !1123)
!1140 = !DILocation(line: 256, column: 30, scope: !1123)
!1141 = !DILocation(line: 256, column: 35, scope: !1123)
!1142 = !DILocation(line: 259, column: 11, scope: !1123)
!1143 = !DILocation(line: 258, column: 7, scope: !1123)
!1144 = !DILocation(line: 258, column: 13, scope: !1123)
!1145 = !DILocation(line: 258, column: 20, scope: !1123)
!1146 = !DILocation(line: 258, column: 25, scope: !1123)
!1147 = !DILocation(line: 261, column: 11, scope: !1123)
!1148 = !DILocation(line: 261, column: 15, scope: !1123)
!1149 = !DILocation(line: 261, column: 22, scope: !1123)
!1150 = !DILocation(line: 260, column: 7, scope: !1123)
!1151 = !DILocation(line: 260, column: 23, scope: !1123)
!1152 = !DILocation(line: 260, column: 30, scope: !1123)
!1153 = !DILocation(line: 260, column: 35, scope: !1123)
!1154 = !DILocation(line: 262, column: 12, scope: !1123)
!1155 = !DILocation(line: 263, column: 6, scope: !1123)
!1156 = !DILocation(line: 265, column: 11, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 263, column: 13)
!1158 = !DILocation(line: 265, column: 15, scope: !1157)
!1159 = !DILocation(line: 265, column: 22, scope: !1157)
!1160 = !DILocation(line: 264, column: 7, scope: !1157)
!1161 = !DILocation(line: 264, column: 13, scope: !1157)
!1162 = !DILocation(line: 264, column: 20, scope: !1157)
!1163 = !DILocation(line: 264, column: 25, scope: !1157)
!1164 = !DILocation(line: 266, column: 12, scope: !1157)
!1165 = !DILocation(line: 268, column: 5, scope: !1120)
!1166 = !DILocation(line: 269, column: 12, scope: !1109)
!1167 = !DILocation(line: 269, column: 10, scope: !1109)
!1168 = distinct !{!1168, !1106, !1169}
!1169 = !DILocation(line: 270, column: 4, scope: !1050)
!1170 = !DILocation(line: 271, column: 2, scope: !883)
!1171 = !DILabel(scope: !839, name: "cleanup", file: !3, line: 273)
!1172 = !DILocation(line: 273, column: 1, scope: !839)
!1173 = !DILocation(line: 277, column: 28, scope: !839)
!1174 = !DILocation(line: 277, column: 2, scope: !839)
!1175 = !DILocation(line: 278, column: 2, scope: !839)
!1176 = !DILocation(line: 279, column: 1, scope: !839)
!1177 = distinct !DISubprogram(name: "acpi_ps_next_parse_state", scope: !3, file: !3, line: 297, type: !1178, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !797)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!23, !163, !51, !23}
!1180 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1177, file: !3, line: 297, type: !163)
!1181 = !DILocation(line: 297, column: 50, scope: !1177)
!1182 = !DILocalVariable(name: "op", arg: 2, scope: !1177, file: !3, line: 298, type: !51)
!1183 = !DILocation(line: 298, column: 30, scope: !1177)
!1184 = !DILocalVariable(name: "callback_status", arg: 3, scope: !1177, file: !3, line: 299, type: !23)
!1185 = !DILocation(line: 299, column: 17, scope: !1177)
!1186 = !DILocalVariable(name: "parser_state", scope: !1177, file: !3, line: 301, type: !811)
!1187 = !DILocation(line: 301, column: 27, scope: !1177)
!1188 = !DILocation(line: 301, column: 43, scope: !1177)
!1189 = !DILocation(line: 301, column: 55, scope: !1177)
!1190 = !DILocalVariable(name: "status", scope: !1177, file: !3, line: 302, type: !23)
!1191 = !DILocation(line: 302, column: 14, scope: !1177)
!1192 = !DILocation(line: 306, column: 10, scope: !1177)
!1193 = !DILocation(line: 306, column: 2, scope: !1177)
!1194 = !DILocation(line: 312, column: 23, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 306, column: 27)
!1196 = !DILocation(line: 312, column: 37, scope: !1195)
!1197 = !DILocation(line: 312, column: 3, scope: !1195)
!1198 = !DILocation(line: 312, column: 17, scope: !1195)
!1199 = !DILocation(line: 312, column: 21, scope: !1195)
!1200 = !DILocation(line: 313, column: 10, scope: !1195)
!1201 = !DILocation(line: 314, column: 3, scope: !1195)
!1202 = !DILocation(line: 318, column: 23, scope: !1195)
!1203 = !DILocation(line: 318, column: 35, scope: !1195)
!1204 = !DILocation(line: 318, column: 3, scope: !1195)
!1205 = !DILocation(line: 318, column: 17, scope: !1195)
!1206 = !DILocation(line: 318, column: 21, scope: !1195)
!1207 = !DILocation(line: 319, column: 3, scope: !1195)
!1208 = !DILocation(line: 319, column: 15, scope: !1195)
!1209 = !DILocation(line: 319, column: 30, scope: !1195)
!1210 = !DILocation(line: 319, column: 37, scope: !1195)
!1211 = !DILocation(line: 319, column: 43, scope: !1195)
!1212 = !DILocation(line: 320, column: 10, scope: !1195)
!1213 = !DILocation(line: 321, column: 3, scope: !1195)
!1214 = !DILocation(line: 325, column: 23, scope: !1195)
!1215 = !DILocation(line: 325, column: 35, scope: !1195)
!1216 = !DILocation(line: 325, column: 3, scope: !1195)
!1217 = !DILocation(line: 325, column: 17, scope: !1195)
!1218 = !DILocation(line: 325, column: 21, scope: !1195)
!1219 = !DILocation(line: 326, column: 10, scope: !1195)
!1220 = !DILocation(line: 327, column: 3, scope: !1195)
!1221 = !DILocation(line: 331, column: 23, scope: !1195)
!1222 = !DILocation(line: 331, column: 35, scope: !1195)
!1223 = !DILocation(line: 331, column: 3, scope: !1195)
!1224 = !DILocation(line: 331, column: 17, scope: !1195)
!1225 = !DILocation(line: 331, column: 21, scope: !1195)
!1226 = !DILocation(line: 332, column: 3, scope: !1195)
!1227 = !DILocation(line: 347, column: 52, scope: !1195)
!1228 = !DILocation(line: 347, column: 23, scope: !1195)
!1229 = !DILocation(line: 347, column: 3, scope: !1195)
!1230 = !DILocation(line: 347, column: 17, scope: !1195)
!1231 = !DILocation(line: 347, column: 21, scope: !1195)
!1232 = !DILocation(line: 348, column: 10, scope: !1195)
!1233 = !DILocation(line: 349, column: 3, scope: !1195)
!1234 = !DILocation(line: 359, column: 23, scope: !1195)
!1235 = !DILocation(line: 359, column: 37, scope: !1195)
!1236 = !DILocation(line: 359, column: 44, scope: !1195)
!1237 = !DILocation(line: 359, column: 56, scope: !1195)
!1238 = !DILocation(line: 359, column: 3, scope: !1195)
!1239 = !DILocation(line: 359, column: 17, scope: !1195)
!1240 = !DILocation(line: 359, column: 21, scope: !1195)
!1241 = !DILocation(line: 363, column: 3, scope: !1195)
!1242 = !DILocation(line: 363, column: 15, scope: !1195)
!1243 = !DILocation(line: 363, column: 30, scope: !1195)
!1244 = !DILocation(line: 363, column: 37, scope: !1195)
!1245 = !DILocation(line: 363, column: 43, scope: !1195)
!1246 = !DILocation(line: 364, column: 10, scope: !1195)
!1247 = !DILocation(line: 365, column: 3, scope: !1195)
!1248 = !DILocation(line: 371, column: 10, scope: !1195)
!1249 = !DILocation(line: 372, column: 25, scope: !1195)
!1250 = !DILocation(line: 372, column: 3, scope: !1195)
!1251 = !DILocation(line: 372, column: 15, scope: !1195)
!1252 = !DILocation(line: 372, column: 23, scope: !1195)
!1253 = !DILocation(line: 373, column: 32, scope: !1195)
!1254 = !DILocation(line: 373, column: 3, scope: !1195)
!1255 = !DILocation(line: 373, column: 15, scope: !1195)
!1256 = !DILocation(line: 373, column: 30, scope: !1195)
!1257 = !DILocation(line: 375, column: 8, scope: !1195)
!1258 = !DILocation(line: 375, column: 12, scope: !1195)
!1259 = !DILocation(line: 375, column: 19, scope: !1195)
!1260 = !DILocation(line: 375, column: 25, scope: !1195)
!1261 = !DILocation(line: 375, column: 31, scope: !1195)
!1262 = !DILocation(line: 375, column: 38, scope: !1195)
!1263 = !DILocation(line: 374, column: 3, scope: !1195)
!1264 = !DILocation(line: 374, column: 15, scope: !1195)
!1265 = !DILocation(line: 374, column: 32, scope: !1195)
!1266 = !DILocation(line: 380, column: 30, scope: !1195)
!1267 = !DILocation(line: 380, column: 34, scope: !1195)
!1268 = !DILocation(line: 380, column: 7, scope: !1195)
!1269 = !DILocation(line: 379, column: 3, scope: !1195)
!1270 = !DILocation(line: 379, column: 15, scope: !1195)
!1271 = !DILocation(line: 379, column: 27, scope: !1195)
!1272 = !DILocation(line: 381, column: 3, scope: !1195)
!1273 = !DILocation(line: 385, column: 12, scope: !1195)
!1274 = !DILocation(line: 385, column: 10, scope: !1195)
!1275 = !DILocation(line: 386, column: 8, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 386, column: 7)
!1277 = !DILocation(line: 386, column: 24, scope: !1276)
!1278 = !DILocation(line: 386, column: 40, scope: !1276)
!1279 = !DILocation(line: 386, column: 7, scope: !1195)
!1280 = !DILocation(line: 387, column: 11, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 386, column: 60)
!1282 = !DILocation(line: 388, column: 3, scope: !1281)
!1283 = !DILocation(line: 389, column: 3, scope: !1195)
!1284 = !DILocation(line: 392, column: 2, scope: !1177)
!1285 = distinct !DISubprogram(name: "acpi_ps_parse_aml", scope: !3, file: !3, line: 408, type: !161, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !797)
!1286 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1285, file: !3, line: 408, type: !163)
!1287 = !DILocation(line: 408, column: 55, scope: !1285)
!1288 = !DILocalVariable(name: "status", scope: !1285, file: !3, line: 410, type: !23)
!1289 = !DILocation(line: 410, column: 14, scope: !1285)
!1290 = !DILocalVariable(name: "thread", scope: !1285, file: !3, line: 411, type: !249)
!1291 = !DILocation(line: 411, column: 28, scope: !1285)
!1292 = !DILocalVariable(name: "prev_walk_list", scope: !1285, file: !3, line: 412, type: !249)
!1293 = !DILocation(line: 412, column: 28, scope: !1285)
!1294 = !DILocation(line: 412, column: 45, scope: !1285)
!1295 = !DILocalVariable(name: "previous_walk_state", scope: !1285, file: !3, line: 413, type: !163)
!1296 = !DILocation(line: 413, column: 26, scope: !1285)
!1297 = !DILocation(line: 422, column: 7, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 422, column: 6)
!1299 = !DILocation(line: 422, column: 19, scope: !1298)
!1300 = !DILocation(line: 422, column: 32, scope: !1298)
!1301 = !DILocation(line: 422, column: 6, scope: !1285)
!1302 = !DILocation(line: 423, column: 3, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 422, column: 37)
!1304 = !DILocation(line: 428, column: 11, scope: !1285)
!1305 = !DILocation(line: 428, column: 9, scope: !1285)
!1306 = !DILocation(line: 429, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 429, column: 6)
!1308 = !DILocation(line: 429, column: 6, scope: !1285)
!1309 = !DILocation(line: 430, column: 7, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 430, column: 7)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 429, column: 15)
!1312 = !DILocation(line: 430, column: 19, scope: !1310)
!1313 = !DILocation(line: 430, column: 7, scope: !1311)
!1314 = !DILocation(line: 434, column: 37, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 430, column: 32)
!1316 = !DILocation(line: 435, column: 9, scope: !1315)
!1317 = !DILocation(line: 436, column: 9, scope: !1315)
!1318 = !DILocation(line: 434, column: 4, scope: !1315)
!1319 = !DILocation(line: 437, column: 3, scope: !1315)
!1320 = !DILocation(line: 439, column: 29, scope: !1311)
!1321 = !DILocation(line: 439, column: 3, scope: !1311)
!1322 = !DILocation(line: 440, column: 3, scope: !1311)
!1323 = !DILocation(line: 443, column: 23, scope: !1285)
!1324 = !DILocation(line: 443, column: 2, scope: !1285)
!1325 = !DILocation(line: 443, column: 14, scope: !1285)
!1326 = !DILocation(line: 443, column: 21, scope: !1285)
!1327 = !DILocation(line: 449, column: 6, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 449, column: 6)
!1329 = !DILocation(line: 449, column: 18, scope: !1328)
!1330 = !DILocation(line: 449, column: 6, scope: !1285)
!1331 = !DILocation(line: 451, column: 7, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 449, column: 31)
!1333 = !DILocation(line: 451, column: 19, scope: !1332)
!1334 = !DILocation(line: 451, column: 32, scope: !1332)
!1335 = !DILocation(line: 451, column: 39, scope: !1332)
!1336 = !DILocation(line: 450, column: 3, scope: !1332)
!1337 = !DILocation(line: 450, column: 15, scope: !1332)
!1338 = !DILocation(line: 450, column: 23, scope: !1332)
!1339 = !DILocation(line: 450, column: 42, scope: !1332)
!1340 = !DILocation(line: 452, column: 2, scope: !1332)
!1341 = !DILocation(line: 454, column: 26, scope: !1285)
!1342 = !DILocation(line: 454, column: 38, scope: !1285)
!1343 = !DILocation(line: 454, column: 2, scope: !1285)
!1344 = !DILocation(line: 460, column: 31, scope: !1285)
!1345 = !DILocation(line: 460, column: 29, scope: !1285)
!1346 = !DILocation(line: 468, column: 9, scope: !1285)
!1347 = !DILocation(line: 469, column: 2, scope: !1285)
!1348 = !DILocation(line: 469, column: 9, scope: !1285)
!1349 = !DILocation(line: 470, column: 7, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 470, column: 7)
!1351 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 469, column: 21)
!1352 = !DILocation(line: 470, column: 7, scope: !1351)
!1353 = !DILocation(line: 475, column: 32, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 470, column: 29)
!1355 = !DILocation(line: 475, column: 13, scope: !1354)
!1356 = !DILocation(line: 475, column: 11, scope: !1354)
!1357 = !DILocation(line: 476, column: 3, scope: !1354)
!1358 = !DILocation(line: 482, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 482, column: 7)
!1360 = !DILocation(line: 482, column: 19, scope: !1359)
!1361 = !DILocation(line: 482, column: 35, scope: !1359)
!1362 = !DILocation(line: 482, column: 38, scope: !1359)
!1363 = !DILocation(line: 482, column: 50, scope: !1359)
!1364 = !DILocation(line: 482, column: 7, scope: !1351)
!1365 = !DILocation(line: 494, column: 4, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 482, column: 68)
!1367 = !DILocation(line: 495, column: 4, scope: !1366)
!1368 = !DILocation(line: 495, column: 16, scope: !1366)
!1369 = !DILocation(line: 495, column: 33, scope: !1366)
!1370 = !DILocation(line: 496, column: 3, scope: !1366)
!1371 = !DILocation(line: 497, column: 7, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 497, column: 7)
!1373 = !DILocation(line: 497, column: 14, scope: !1372)
!1374 = !DILocation(line: 497, column: 7, scope: !1351)
!1375 = !DILocation(line: 503, column: 36, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 497, column: 35)
!1377 = !DILocation(line: 503, column: 44, scope: !1376)
!1378 = !DILocation(line: 503, column: 8, scope: !1376)
!1379 = !DILocation(line: 502, column: 11, scope: !1376)
!1380 = !DILocation(line: 505, column: 8, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 505, column: 8)
!1382 = !DILocation(line: 505, column: 8, scope: !1376)
!1383 = !DILocation(line: 507, column: 30, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 505, column: 30)
!1385 = !DILocation(line: 507, column: 38, scope: !1384)
!1386 = !DILocation(line: 507, column: 9, scope: !1384)
!1387 = !DILocation(line: 506, column: 12, scope: !1384)
!1388 = !DILocation(line: 508, column: 4, scope: !1384)
!1389 = !DILocation(line: 514, column: 48, scope: !1376)
!1390 = !DILocation(line: 514, column: 17, scope: !1376)
!1391 = !DILocation(line: 514, column: 15, scope: !1376)
!1392 = !DILocation(line: 515, column: 4, scope: !1376)
!1393 = distinct !{!1393, !1347, !1394}
!1394 = !DILocation(line: 678, column: 2, scope: !1285)
!1395 = !DILocation(line: 516, column: 14, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 516, column: 14)
!1397 = !DILocation(line: 516, column: 21, scope: !1396)
!1398 = !DILocation(line: 516, column: 14, scope: !1372)
!1399 = !DILocation(line: 517, column: 11, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 516, column: 43)
!1401 = !DILocation(line: 518, column: 3, scope: !1400)
!1402 = !DILocation(line: 518, column: 15, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 518, column: 14)
!1404 = !DILocation(line: 518, column: 22, scope: !1403)
!1405 = !DILocation(line: 518, column: 32, scope: !1403)
!1406 = !DILocation(line: 518, column: 36, scope: !1403)
!1407 = !DILocation(line: 518, column: 48, scope: !1403)
!1408 = !DILocation(line: 518, column: 35, scope: !1403)
!1409 = !DILocation(line: 518, column: 14, scope: !1396)
!1410 = !DILocation(line: 522, column: 4, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 518, column: 62)
!1412 = !DILocation(line: 523, column: 8, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 523, column: 8)
!1414 = !DILocation(line: 523, column: 15, scope: !1413)
!1415 = !DILocation(line: 523, column: 8, scope: !1411)
!1416 = !DILocation(line: 524, column: 33, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 523, column: 35)
!1418 = !DILocation(line: 525, column: 12, scope: !1417)
!1419 = !DILocation(line: 524, column: 5, scope: !1417)
!1420 = !DILocation(line: 527, column: 5, scope: !1417)
!1421 = !DILocation(line: 528, column: 4, scope: !1417)
!1422 = !DILocation(line: 529, column: 5, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 528, column: 11)
!1424 = !DILocation(line: 533, column: 4, scope: !1411)
!1425 = !DILocation(line: 537, column: 9, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 537, column: 8)
!1427 = !DILocation(line: 537, column: 16, scope: !1426)
!1428 = !DILocation(line: 537, column: 38, scope: !1426)
!1429 = !DILocation(line: 538, column: 11, scope: !1426)
!1430 = !DILocation(line: 538, column: 23, scope: !1426)
!1431 = !DILocation(line: 538, column: 36, scope: !1426)
!1432 = !DILocation(line: 538, column: 43, scope: !1426)
!1433 = !DILocation(line: 538, column: 54, scope: !1426)
!1434 = !DILocation(line: 537, column: 8, scope: !1411)
!1435 = !DILocation(line: 546, column: 5, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 539, column: 37)
!1437 = !DILocation(line: 546, column: 17, scope: !1436)
!1438 = !DILocation(line: 546, column: 30, scope: !1436)
!1439 = !DILocation(line: 546, column: 37, scope: !1436)
!1440 = !DILocation(line: 546, column: 48, scope: !1436)
!1441 = !DILocation(line: 548, column: 4, scope: !1436)
!1442 = !DILocation(line: 549, column: 3, scope: !1411)
!1443 = !DILocation(line: 553, column: 39, scope: !1351)
!1444 = !DILocation(line: 553, column: 16, scope: !1351)
!1445 = !DILocation(line: 553, column: 14, scope: !1351)
!1446 = !DILocation(line: 557, column: 29, scope: !1351)
!1447 = !DILocation(line: 557, column: 3, scope: !1351)
!1448 = !DILocation(line: 564, column: 9, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 564, column: 7)
!1450 = !DILocation(line: 564, column: 21, scope: !1449)
!1451 = !DILocation(line: 564, column: 33, scope: !1449)
!1452 = !DILocation(line: 564, column: 57, scope: !1449)
!1453 = !DILocation(line: 565, column: 27, scope: !1449)
!1454 = !DILocation(line: 566, column: 10, scope: !1449)
!1455 = !DILocation(line: 566, column: 22, scope: !1449)
!1456 = !DILocation(line: 566, column: 34, scope: !1449)
!1457 = !DILocation(line: 566, column: 62, scope: !1449)
!1458 = !DILocation(line: 567, column: 8, scope: !1449)
!1459 = !DILocation(line: 567, column: 7, scope: !1449)
!1460 = !DILocation(line: 564, column: 7, scope: !1351)
!1461 = !DILocation(line: 568, column: 37, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 567, column: 31)
!1463 = !DILocation(line: 569, column: 9, scope: !1462)
!1464 = !DILocation(line: 570, column: 9, scope: !1462)
!1465 = !DILocation(line: 568, column: 4, scope: !1462)
!1466 = !DILocation(line: 571, column: 3, scope: !1462)
!1467 = !DILocation(line: 575, column: 26, scope: !1351)
!1468 = !DILocation(line: 575, column: 38, scope: !1351)
!1469 = !DILocation(line: 575, column: 3, scope: !1351)
!1470 = !DILocation(line: 576, column: 25, scope: !1351)
!1471 = !DILocation(line: 576, column: 23, scope: !1351)
!1472 = !DILocation(line: 585, column: 47, scope: !1351)
!1473 = !DILocation(line: 585, column: 16, scope: !1351)
!1474 = !DILocation(line: 585, column: 14, scope: !1351)
!1475 = !DILocation(line: 586, column: 7, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 586, column: 7)
!1477 = !DILocation(line: 586, column: 7, scope: !1351)
!1478 = !DILocation(line: 587, column: 8, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 587, column: 8)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 586, column: 19)
!1481 = !DILocation(line: 587, column: 8, scope: !1480)
!1482 = !DILocation(line: 593, column: 10, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 593, column: 9)
!1484 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 587, column: 30)
!1485 = !DILocation(line: 593, column: 31, scope: !1483)
!1486 = !DILocation(line: 593, column: 9, scope: !1484)
!1487 = !DILocation(line: 598, column: 10, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 598, column: 10)
!1489 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 593, column: 44)
!1490 = !DILocation(line: 598, column: 44, scope: !1488)
!1491 = !DILocation(line: 599, column: 11, scope: !1488)
!1492 = !DILocation(line: 600, column: 10, scope: !1488)
!1493 = !DILocation(line: 598, column: 10, scope: !1489)
!1494 = !DILocation(line: 603, column: 11, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 600, column: 31)
!1496 = !DILocation(line: 601, column: 7, scope: !1495)
!1497 = !DILocation(line: 602, column: 11, scope: !1495)
!1498 = !DILocation(line: 602, column: 31, scope: !1495)
!1499 = !DILocation(line: 605, column: 12, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 605, column: 11)
!1501 = !DILocation(line: 606, column: 11, scope: !1500)
!1502 = !DILocation(line: 605, column: 11, scope: !1495)
!1503 = !DILocation(line: 607, column: 8, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 606, column: 32)
!1505 = !DILocation(line: 610, column: 6, scope: !1495)
!1506 = !DILocation(line: 616, column: 11, scope: !1489)
!1507 = !DILocation(line: 617, column: 11, scope: !1489)
!1508 = !DILocation(line: 618, column: 11, scope: !1489)
!1509 = !DILocation(line: 615, column: 10, scope: !1489)
!1510 = !DILocation(line: 614, column: 13, scope: !1489)
!1511 = !DILocation(line: 619, column: 5, scope: !1489)
!1512 = !DILocation(line: 625, column: 11, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 619, column: 12)
!1514 = !DILocation(line: 624, column: 6, scope: !1513)
!1515 = !DILocation(line: 629, column: 11, scope: !1513)
!1516 = !DILocation(line: 630, column: 11, scope: !1513)
!1517 = !DILocation(line: 630, column: 32, scope: !1513)
!1518 = !DILocation(line: 628, column: 10, scope: !1513)
!1519 = !DILocation(line: 627, column: 13, scope: !1513)
!1520 = !DILocation(line: 632, column: 9, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 632, column: 9)
!1522 = !DILocation(line: 632, column: 9, scope: !1484)
!1523 = !DILocation(line: 633, column: 6, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 632, column: 31)
!1525 = !DILocation(line: 633, column: 18, scope: !1524)
!1526 = !DILocation(line: 633, column: 28, scope: !1524)
!1527 = !DILocation(line: 635, column: 5, scope: !1524)
!1528 = !DILocation(line: 636, column: 4, scope: !1484)
!1529 = !DILocation(line: 639, column: 30, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 636, column: 11)
!1531 = !DILocation(line: 640, column: 9, scope: !1530)
!1532 = !DILocation(line: 639, column: 5, scope: !1530)
!1533 = !DILocation(line: 642, column: 10, scope: !1530)
!1534 = !DILocation(line: 641, column: 5, scope: !1530)
!1535 = !DILocation(line: 644, column: 3, scope: !1480)
!1536 = !DILocation(line: 650, column: 12, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 650, column: 12)
!1538 = !DILocation(line: 650, column: 33, scope: !1537)
!1539 = !DILocation(line: 650, column: 12, scope: !1476)
!1540 = !DILocation(line: 651, column: 8, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 651, column: 8)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 650, column: 53)
!1543 = !DILocation(line: 651, column: 29, scope: !1541)
!1544 = !DILocation(line: 651, column: 8, scope: !1542)
!1545 = !DILocation(line: 653, column: 9, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 651, column: 50)
!1547 = !DILocation(line: 653, column: 30, scope: !1546)
!1548 = !DILocation(line: 652, column: 7, scope: !1546)
!1549 = !DILocation(line: 652, column: 28, scope: !1546)
!1550 = !DILocation(line: 652, column: 48, scope: !1546)
!1551 = !DILocation(line: 654, column: 4, scope: !1546)
!1552 = !DILocation(line: 658, column: 9, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 654, column: 11)
!1554 = !DILocation(line: 658, column: 30, scope: !1553)
!1555 = !DILocation(line: 657, column: 7, scope: !1553)
!1556 = !DILocation(line: 657, column: 28, scope: !1553)
!1557 = !DILocation(line: 657, column: 48, scope: !1553)
!1558 = !DILocation(line: 660, column: 3, scope: !1542)
!1559 = !DILocation(line: 661, column: 8, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 661, column: 8)
!1561 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 660, column: 10)
!1562 = !DILocation(line: 661, column: 29, scope: !1560)
!1563 = !DILocation(line: 661, column: 8, scope: !1561)
!1564 = !DILocation(line: 665, column: 30, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 661, column: 42)
!1566 = !DILocation(line: 666, column: 9, scope: !1565)
!1567 = !DILocation(line: 665, column: 5, scope: !1565)
!1568 = !DILocation(line: 667, column: 4, scope: !1565)
!1569 = !DILocation(line: 668, column: 8, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 668, column: 8)
!1571 = !DILocation(line: 668, column: 29, scope: !1570)
!1572 = !DILocation(line: 668, column: 8, scope: !1561)
!1573 = !DILocation(line: 672, column: 30, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 668, column: 50)
!1575 = !DILocation(line: 673, column: 9, scope: !1574)
!1576 = !DILocation(line: 672, column: 5, scope: !1574)
!1577 = !DILocation(line: 674, column: 4, scope: !1574)
!1578 = !DILocation(line: 677, column: 29, scope: !1351)
!1579 = !DILocation(line: 677, column: 3, scope: !1351)
!1580 = !DILocation(line: 682, column: 30, scope: !1285)
!1581 = !DILocation(line: 682, column: 2, scope: !1285)
!1582 = !DILocation(line: 683, column: 31, scope: !1285)
!1583 = !DILocation(line: 683, column: 2, scope: !1285)
!1584 = !DILocation(line: 685, column: 31, scope: !1285)
!1585 = !DILocation(line: 685, column: 29, scope: !1285)
!1586 = !DILocation(line: 686, column: 2, scope: !1285)
!1587 = !DILocation(line: 687, column: 1, scope: !1285)
!1588 = distinct !DISubprogram(name: "acpi_os_free", scope: !1589, file: !1589, line: 60, type: !1590, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !797)
!1589 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !22}
!1592 = !DILocalVariable(name: "memory", arg: 1, scope: !1588, file: !1589, line: 60, type: !22)
!1593 = !DILocation(line: 60, column: 39, scope: !1588)
!1594 = !DILocation(line: 62, column: 8, scope: !1588)
!1595 = !DILocation(line: 62, column: 2, scope: !1588)
!1596 = !DILocation(line: 63, column: 1, scope: !1588)
