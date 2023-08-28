; ModuleID = '../bcout/drivers/acpi/acpica/psscope.llvm.bc'
source_filename = "drivers/acpi/acpica/psscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_name_union = type { i32 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_pscope_state = type { i8*, i8, i8, i16, i16, i32, %union.acpi_parse_object*, i8*, i8*, i32 }
%struct.acpi_common_state = type { i8*, i8, i8, i16, i16 }

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_parse_object* @acpi_ps_get_parent_scope(%struct.acpi_parse_state* %parser_state) #0 !dbg !24 {
entry:
  %parser_state.addr = alloca %struct.acpi_parse_state*, align 8
  store %struct.acpi_parse_state* %parser_state, %struct.acpi_parse_state** %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state.addr, metadata !789, metadata !DIExpression()), !dbg !790
  %0 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !791
  %scope = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %0, i32 0, i32 7, !dbg !792
  %1 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !792
  %parse_scope = bitcast %union.acpi_generic_state* %1 to %struct.acpi_pscope_state*, !dbg !793
  %op = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope, i32 0, i32 6, !dbg !794
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !794
  ret %union.acpi_parse_object* %2, !dbg !795
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ps_has_completed_scope(%struct.acpi_parse_state* %parser_state) #0 !dbg !796 {
entry:
  %parser_state.addr = alloca %struct.acpi_parse_state*, align 8
  store %struct.acpi_parse_state* %parser_state, %struct.acpi_parse_state** %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state.addr, metadata !799, metadata !DIExpression()), !dbg !800
  %0 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !801
  %aml = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %0, i32 0, i32 1, !dbg !802
  %1 = load i8*, i8** %aml, align 8, !dbg !802
  %2 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !803
  %scope = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %2, i32 0, i32 7, !dbg !804
  %3 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !804
  %parse_scope = bitcast %union.acpi_generic_state* %3 to %struct.acpi_pscope_state*, !dbg !805
  %arg_end = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope, i32 0, i32 7, !dbg !806
  %4 = load i8*, i8** %arg_end, align 8, !dbg !806
  %cmp = icmp uge i8* %1, %4, !dbg !807
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !808

lor.rhs:                                          ; preds = %entry
  %5 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !809
  %scope1 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %5, i32 0, i32 7, !dbg !810
  %6 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope1, align 8, !dbg !810
  %parse_scope2 = bitcast %union.acpi_generic_state* %6 to %struct.acpi_pscope_state*, !dbg !811
  %arg_count = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope2, i32 0, i32 5, !dbg !812
  %7 = load i32, i32* %arg_count, align 8, !dbg !812
  %tobool = icmp ne i32 %7, 0, !dbg !813
  %lnot = xor i1 %tobool, true, !dbg !813
  br label %lor.end, !dbg !808

lor.end:                                          ; preds = %lor.rhs, %entry
  %8 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32, !dbg !808
  %conv = trunc i32 %lor.ext to i8, !dbg !814
  ret i8 %conv, !dbg !815
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_init_scope(%struct.acpi_parse_state* %parser_state, %union.acpi_parse_object* %root_op) #0 !dbg !816 {
entry:
  %retval = alloca i32, align 4
  %parser_state.addr = alloca %struct.acpi_parse_state*, align 8
  %root_op.addr = alloca %union.acpi_parse_object*, align 8
  %scope = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_parse_state* %parser_state, %struct.acpi_parse_state** %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state.addr, metadata !819, metadata !DIExpression()), !dbg !820
  store %union.acpi_parse_object* %root_op, %union.acpi_parse_object** %root_op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %root_op.addr, metadata !821, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %scope, metadata !823, metadata !DIExpression()), !dbg !824
  %call = call %union.acpi_generic_state* @acpi_ut_create_generic_state() #3, !dbg !825
  store %union.acpi_generic_state* %call, %union.acpi_generic_state** %scope, align 8, !dbg !826
  %0 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !827
  %tobool = icmp ne %union.acpi_generic_state* %0, null, !dbg !827
  br i1 %tobool, label %if.end, label %if.then, !dbg !829

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !830
  br label %return, !dbg !830

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !832
  %common = bitcast %union.acpi_generic_state* %1 to %struct.acpi_common_state*, !dbg !833
  %descriptor_type = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common, i32 0, i32 1, !dbg !834
  store i8 6, i8* %descriptor_type, align 8, !dbg !835
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %root_op.addr, align 8, !dbg !836
  %3 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !837
  %parse_scope = bitcast %union.acpi_generic_state* %3 to %struct.acpi_pscope_state*, !dbg !838
  %op = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope, i32 0, i32 6, !dbg !839
  store %union.acpi_parse_object* %2, %union.acpi_parse_object** %op, align 8, !dbg !840
  %4 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !841
  %parse_scope1 = bitcast %union.acpi_generic_state* %4 to %struct.acpi_pscope_state*, !dbg !842
  %arg_count = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope1, i32 0, i32 5, !dbg !843
  store i32 -1, i32* %arg_count, align 8, !dbg !844
  %5 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !845
  %aml_end = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %5, i32 0, i32 2, !dbg !846
  %6 = load i8*, i8** %aml_end, align 8, !dbg !846
  %7 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !847
  %parse_scope2 = bitcast %union.acpi_generic_state* %7 to %struct.acpi_pscope_state*, !dbg !848
  %arg_end = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope2, i32 0, i32 7, !dbg !849
  store i8* %6, i8** %arg_end, align 8, !dbg !850
  %8 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !851
  %aml_end3 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %8, i32 0, i32 2, !dbg !852
  %9 = load i8*, i8** %aml_end3, align 8, !dbg !852
  %10 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !853
  %parse_scope4 = bitcast %union.acpi_generic_state* %10 to %struct.acpi_pscope_state*, !dbg !854
  %pkg_end = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope4, i32 0, i32 8, !dbg !855
  store i8* %9, i8** %pkg_end, align 8, !dbg !856
  %11 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !857
  %12 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !858
  %scope5 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %12, i32 0, i32 7, !dbg !859
  store %union.acpi_generic_state* %11, %union.acpi_generic_state** %scope5, align 8, !dbg !860
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %root_op.addr, align 8, !dbg !861
  %14 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !862
  %start_op = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %14, i32 0, i32 5, !dbg !863
  store %union.acpi_parse_object* %13, %union.acpi_parse_object** %start_op, align 8, !dbg !864
  store i32 0, i32* %retval, align 4, !dbg !865
  br label %return, !dbg !865

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !866
  ret i32 %15, !dbg !866
}

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_push_scope(%struct.acpi_parse_state* %parser_state, %union.acpi_parse_object* %op, i32 %remaining_args, i32 %arg_count) #0 !dbg !867 {
entry:
  %retval = alloca i32, align 4
  %parser_state.addr = alloca %struct.acpi_parse_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %remaining_args.addr = alloca i32, align 4
  %arg_count.addr = alloca i32, align 4
  %scope = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_parse_state* %parser_state, %struct.acpi_parse_state** %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state.addr, metadata !870, metadata !DIExpression()), !dbg !871
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !872, metadata !DIExpression()), !dbg !873
  store i32 %remaining_args, i32* %remaining_args.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %remaining_args.addr, metadata !874, metadata !DIExpression()), !dbg !875
  store i32 %arg_count, i32* %arg_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %arg_count.addr, metadata !876, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %scope, metadata !878, metadata !DIExpression()), !dbg !879
  %call = call %union.acpi_generic_state* @acpi_ut_create_generic_state() #3, !dbg !880
  store %union.acpi_generic_state* %call, %union.acpi_generic_state** %scope, align 8, !dbg !881
  %0 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !882
  %tobool = icmp ne %union.acpi_generic_state* %0, null, !dbg !882
  br i1 %tobool, label %if.end, label %if.then, !dbg !884

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !885
  br label %return, !dbg !885

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !887
  %common = bitcast %union.acpi_generic_state* %1 to %struct.acpi_common_state*, !dbg !888
  %descriptor_type = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common, i32 0, i32 1, !dbg !889
  store i8 7, i8* %descriptor_type, align 8, !dbg !890
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !891
  %3 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !892
  %parse_scope = bitcast %union.acpi_generic_state* %3 to %struct.acpi_pscope_state*, !dbg !893
  %op1 = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope, i32 0, i32 6, !dbg !894
  store %union.acpi_parse_object* %2, %union.acpi_parse_object** %op1, align 8, !dbg !895
  %4 = load i32, i32* %remaining_args.addr, align 4, !dbg !896
  %5 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !897
  %parse_scope2 = bitcast %union.acpi_generic_state* %5 to %struct.acpi_pscope_state*, !dbg !898
  %arg_list = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope2, i32 0, i32 9, !dbg !899
  store i32 %4, i32* %arg_list, align 8, !dbg !900
  %6 = load i32, i32* %arg_count.addr, align 4, !dbg !901
  %7 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !902
  %parse_scope3 = bitcast %union.acpi_generic_state* %7 to %struct.acpi_pscope_state*, !dbg !903
  %arg_count4 = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope3, i32 0, i32 5, !dbg !904
  store i32 %6, i32* %arg_count4, align 8, !dbg !905
  %8 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !906
  %pkg_end = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %8, i32 0, i32 4, !dbg !907
  %9 = load i8*, i8** %pkg_end, align 8, !dbg !907
  %10 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !908
  %parse_scope5 = bitcast %union.acpi_generic_state* %10 to %struct.acpi_pscope_state*, !dbg !909
  %pkg_end6 = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope5, i32 0, i32 8, !dbg !910
  store i8* %9, i8** %pkg_end6, align 8, !dbg !911
  %11 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !912
  %scope7 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %11, i32 0, i32 7, !dbg !913
  %12 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !914
  call void @acpi_ut_push_generic_state(%union.acpi_generic_state** %scope7, %union.acpi_generic_state* %12) #3, !dbg !915
  %13 = load i32, i32* %arg_count.addr, align 4, !dbg !916
  %cmp = icmp eq i32 %13, -1, !dbg !918
  br i1 %cmp, label %if.then8, label %if.else, !dbg !919

if.then8:                                         ; preds = %if.end
  %14 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !920
  %pkg_end9 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %14, i32 0, i32 4, !dbg !922
  %15 = load i8*, i8** %pkg_end9, align 8, !dbg !922
  %16 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !923
  %parse_scope10 = bitcast %union.acpi_generic_state* %16 to %struct.acpi_pscope_state*, !dbg !924
  %arg_end = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope10, i32 0, i32 7, !dbg !925
  store i8* %15, i8** %arg_end, align 8, !dbg !926
  br label %if.end13, !dbg !927

if.else:                                          ; preds = %if.end
  %17 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !928
  %parse_scope11 = bitcast %union.acpi_generic_state* %17 to %struct.acpi_pscope_state*, !dbg !930
  %arg_end12 = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope11, i32 0, i32 7, !dbg !931
  store i8* inttoptr (i64 -1 to i8*), i8** %arg_end12, align 8, !dbg !932
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  store i32 0, i32* %retval, align 4, !dbg !933
  br label %return, !dbg !933

return:                                           ; preds = %if.end13, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !934
  ret i32 %18, !dbg !934
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_push_generic_state(%union.acpi_generic_state**, %union.acpi_generic_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ps_pop_scope(%struct.acpi_parse_state* %parser_state, %union.acpi_parse_object** %op, i32* %arg_list, i32* %arg_count) #0 !dbg !935 {
entry:
  %parser_state.addr = alloca %struct.acpi_parse_state*, align 8
  %op.addr = alloca %union.acpi_parse_object**, align 8
  %arg_list.addr = alloca i32*, align 8
  %arg_count.addr = alloca i32*, align 8
  %scope = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_parse_state* %parser_state, %struct.acpi_parse_state** %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state.addr, metadata !939, metadata !DIExpression()), !dbg !940
  store %union.acpi_parse_object** %op, %union.acpi_parse_object*** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object*** %op.addr, metadata !941, metadata !DIExpression()), !dbg !942
  store i32* %arg_list, i32** %arg_list.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg_list.addr, metadata !943, metadata !DIExpression()), !dbg !944
  store i32* %arg_count, i32** %arg_count.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg_count.addr, metadata !945, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %scope, metadata !947, metadata !DIExpression()), !dbg !948
  %0 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !949
  %scope1 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %0, i32 0, i32 7, !dbg !950
  %1 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope1, align 8, !dbg !950
  store %union.acpi_generic_state* %1, %union.acpi_generic_state** %scope, align 8, !dbg !948
  %2 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !951
  %common = bitcast %union.acpi_generic_state* %2 to %struct.acpi_common_state*, !dbg !953
  %next = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common, i32 0, i32 0, !dbg !954
  %3 = load i8*, i8** %next, align 8, !dbg !954
  %tobool = icmp ne i8* %3, null, !dbg !951
  br i1 %tobool, label %if.then, label %if.else, !dbg !955

if.then:                                          ; preds = %entry
  %4 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !956
  %scope2 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %4, i32 0, i32 7, !dbg !958
  %call = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %scope2) #3, !dbg !959
  store %union.acpi_generic_state* %call, %union.acpi_generic_state** %scope, align 8, !dbg !960
  %5 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !961
  %parse_scope = bitcast %union.acpi_generic_state* %5 to %struct.acpi_pscope_state*, !dbg !962
  %op3 = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope, i32 0, i32 6, !dbg !963
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op3, align 8, !dbg !963
  %7 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !964
  store %union.acpi_parse_object* %6, %union.acpi_parse_object** %7, align 8, !dbg !965
  %8 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !966
  %parse_scope4 = bitcast %union.acpi_generic_state* %8 to %struct.acpi_pscope_state*, !dbg !967
  %arg_list5 = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope4, i32 0, i32 9, !dbg !968
  %9 = load i32, i32* %arg_list5, align 8, !dbg !968
  %10 = load i32*, i32** %arg_list.addr, align 8, !dbg !969
  store i32 %9, i32* %10, align 4, !dbg !970
  %11 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !971
  %parse_scope6 = bitcast %union.acpi_generic_state* %11 to %struct.acpi_pscope_state*, !dbg !972
  %arg_count7 = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope6, i32 0, i32 5, !dbg !973
  %12 = load i32, i32* %arg_count7, align 8, !dbg !973
  %13 = load i32*, i32** %arg_count.addr, align 8, !dbg !974
  store i32 %12, i32* %13, align 4, !dbg !975
  %14 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !976
  %parse_scope8 = bitcast %union.acpi_generic_state* %14 to %struct.acpi_pscope_state*, !dbg !977
  %pkg_end = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope8, i32 0, i32 8, !dbg !978
  %15 = load i8*, i8** %pkg_end, align 8, !dbg !978
  %16 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !979
  %pkg_end9 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %16, i32 0, i32 4, !dbg !980
  store i8* %15, i8** %pkg_end9, align 8, !dbg !981
  %17 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !982
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %17) #3, !dbg !983
  br label %if.end, !dbg !984

if.else:                                          ; preds = %entry
  %18 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !985
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %18, align 8, !dbg !987
  %19 = load i32*, i32** %arg_list.addr, align 8, !dbg !988
  store i32 0, i32* %19, align 4, !dbg !989
  %20 = load i32*, i32** %arg_count.addr, align 8, !dbg !990
  store i32 0, i32* %20, align 4, !dbg !991
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !992
}

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ps_cleanup_scope(%struct.acpi_parse_state* %parser_state) #0 !dbg !993 {
entry:
  %parser_state.addr = alloca %struct.acpi_parse_state*, align 8
  %scope = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_parse_state* %parser_state, %struct.acpi_parse_state** %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state.addr, metadata !996, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %scope, metadata !998, metadata !DIExpression()), !dbg !999
  %0 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1000
  %tobool = icmp ne %struct.acpi_parse_state* %0, null, !dbg !1000
  br i1 %tobool, label %if.end, label %if.then, !dbg !1002

if.then:                                          ; preds = %entry
  br label %return, !dbg !1003

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !1005

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1006
  %scope1 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %1, i32 0, i32 7, !dbg !1007
  %2 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope1, align 8, !dbg !1007
  %tobool2 = icmp ne %union.acpi_generic_state* %2, null, !dbg !1005
  br i1 %tobool2, label %while.body, label %while.end, !dbg !1005

while.body:                                       ; preds = %while.cond
  %3 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1008
  %scope3 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %3, i32 0, i32 7, !dbg !1010
  %call = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %scope3) #3, !dbg !1011
  store %union.acpi_generic_state* %call, %union.acpi_generic_state** %scope, align 8, !dbg !1012
  %4 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !1013
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %4) #3, !dbg !1014
  br label %while.cond, !dbg !1005, !llvm.loop !1015

while.end:                                        ; preds = %while.cond
  br label %return, !dbg !1017

return:                                           ; preds = %while.end, %if.then
  ret void, !dbg !1018
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/psscope.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !9, !11, !14, !15, !16}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !5, line: 17, baseType: !6)
!5 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !10, line: 421, baseType: !11)
!10 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !5, line: 21, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !7, line: 27, baseType: !13)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !10, line: 127, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !5, line: 23, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !7, line: 31, baseType: !18)
!18 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"Code Model", i32 2}
!23 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!24 = distinct !DISubprogram(name: "acpi_ps_get_parent_scope", scope: !1, file: !1, line: 28, type: !25, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !788}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !29, line: 875, size: 1600, elements: !30)
!29 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !731, !747}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !28, file: !29, line: 876, baseType: !32, size: 448)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !29, line: 828, size: 448, elements: !33)
!33 = !{!34, !35, !36, !37, !41, !43, !44, !721, !730}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !32, file: !29, line: 829, baseType: !27, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !32, file: !29, line: 829, baseType: !4, size: 8, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !32, file: !29, line: 829, baseType: !4, size: 8, offset: 72)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !32, file: !29, line: 829, baseType: !38, size: 16, offset: 80)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !5, line: 19, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !7, line: 24, baseType: !40)
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !32, file: !29, line: 829, baseType: !42, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !32, file: !29, line: 829, baseType: !27, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !32, file: !29, line: 829, baseType: !45, size: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !29, line: 133, size: 384, elements: !47)
!47 = !{!48, !705, !706, !707, !708, !717, !718, !719, !720}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !46, file: !29, line: 134, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !51, line: 367, size: 576, elements: !52)
!51 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !61, !74, !86, !99, !113, !122, !356, !373, !388, !401, !479, !491, !505, !515, !533, !555, !574, !593, !612, !625, !651, !668, !681, !695, !704}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !50, file: !51, line: 368, baseType: !54, size: 128)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !51, line: 73, size: 128, elements: !55)
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !54, file: !51, line: 74, baseType: !49, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !54, file: !51, line: 74, baseType: !4, size: 8, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !51, line: 74, baseType: !4, size: 8, offset: 72)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !54, file: !51, line: 74, baseType: !38, size: 16, offset: 80)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !51, line: 74, baseType: !4, size: 8, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !50, file: !51, line: 369, baseType: !62, size: 192)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !51, line: 76, size: 192, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69, !73}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !62, file: !51, line: 77, baseType: !49, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !62, file: !51, line: 77, baseType: !4, size: 8, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !51, line: 77, baseType: !4, size: 8, offset: 72)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !62, file: !51, line: 77, baseType: !38, size: 16, offset: 80)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !51, line: 77, baseType: !4, size: 8, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !62, file: !51, line: 77, baseType: !70, size: 24, offset: 104)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !62, file: !51, line: 78, baseType: !16, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !50, file: !51, line: 370, baseType: !75, size: 256)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !51, line: 93, size: 256, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !85}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !75, file: !51, line: 94, baseType: !49, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !51, line: 94, baseType: !4, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !51, line: 94, baseType: !4, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !75, file: !51, line: 94, baseType: !38, size: 16, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !51, line: 94, baseType: !4, size: 8, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !75, file: !51, line: 94, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !75, file: !51, line: 94, baseType: !11, size: 32, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !50, file: !51, line: 371, baseType: !87, size: 384)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !51, line: 97, size: 384, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !87, file: !51, line: 98, baseType: !49, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !87, file: !51, line: 98, baseType: !4, size: 8, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !51, line: 98, baseType: !4, size: 8, offset: 72)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !87, file: !51, line: 98, baseType: !38, size: 16, offset: 80)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !51, line: 98, baseType: !4, size: 8, offset: 96)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !87, file: !51, line: 98, baseType: !42, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !87, file: !51, line: 98, baseType: !11, size: 32, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !87, file: !51, line: 99, baseType: !11, size: 32, offset: 224)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !87, file: !51, line: 100, baseType: !42, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !87, file: !51, line: 101, baseType: !45, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !50, file: !51, line: 372, baseType: !100, size: 384)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !51, line: 104, size: 384, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !110, !111, !112}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !100, file: !51, line: 105, baseType: !49, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !100, file: !51, line: 105, baseType: !4, size: 8, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !51, line: 105, baseType: !4, size: 8, offset: 72)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !100, file: !51, line: 105, baseType: !38, size: 16, offset: 80)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !51, line: 105, baseType: !4, size: 8, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !100, file: !51, line: 105, baseType: !45, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !100, file: !51, line: 106, baseType: !109, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !100, file: !51, line: 107, baseType: !42, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !100, file: !51, line: 108, baseType: !11, size: 32, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !100, file: !51, line: 109, baseType: !11, size: 32, offset: 352)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !50, file: !51, line: 373, baseType: !114, size: 192)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !51, line: 118, size: 192, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !114, file: !51, line: 119, baseType: !49, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !114, file: !51, line: 119, baseType: !4, size: 8, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !51, line: 119, baseType: !4, size: 8, offset: 72)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !114, file: !51, line: 119, baseType: !38, size: 16, offset: 80)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !51, line: 119, baseType: !4, size: 8, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !114, file: !51, line: 119, baseType: !14, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !50, file: !51, line: 374, baseType: !123, size: 448)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !51, line: 143, size: 448, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !353, !354, !355}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !51, line: 144, baseType: !49, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !51, line: 144, baseType: !4, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !51, line: 144, baseType: !4, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !51, line: 144, baseType: !38, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !51, line: 144, baseType: !4, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !123, file: !51, line: 144, baseType: !4, size: 8, offset: 104)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !123, file: !51, line: 145, baseType: !4, size: 8, offset: 112)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !123, file: !51, line: 146, baseType: !4, size: 8, offset: 120)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !123, file: !51, line: 147, baseType: !49, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !123, file: !51, line: 148, baseType: !49, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !123, file: !51, line: 149, baseType: !42, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !123, file: !51, line: 153, baseType: !137, size: 64, offset: 320)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !123, file: !51, line: 150, size: 64, elements: !138)
!138 = !{!139, !352}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !137, file: !51, line: 151, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !29, line: 248, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!9, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !146, line: 37, size: 9024, elements: !147)
!146 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !298, !299, !300, !301, !302, !306, !308, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !335, !336, !337, !338, !339, !340, !341, !342, !344, !350}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !146, line: 38, baseType: !144, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !145, file: !146, line: 39, baseType: !4, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !145, file: !146, line: 40, baseType: !4, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !145, file: !146, line: 41, baseType: !38, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !145, file: !146, line: 42, baseType: !4, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !145, file: !146, line: 43, baseType: !4, size: 8, offset: 104)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !145, file: !146, line: 44, baseType: !4, size: 8, offset: 112)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !145, file: !146, line: 45, baseType: !156, size: 16, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !10, line: 445, baseType: !38)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !145, file: !146, line: 46, baseType: !4, size: 8, offset: 144)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !145, file: !146, line: 47, baseType: !4, size: 8, offset: 152)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !145, file: !146, line: 48, baseType: !4, size: 8, offset: 160)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !145, file: !146, line: 49, baseType: !4, size: 8, offset: 168)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !145, file: !146, line: 50, baseType: !4, size: 8, offset: 176)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !145, file: !146, line: 51, baseType: !4, size: 8, offset: 184)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !145, file: !146, line: 52, baseType: !4, size: 8, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !145, file: !146, line: 53, baseType: !4, size: 8, offset: 200)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !145, file: !146, line: 54, baseType: !42, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !145, file: !146, line: 55, baseType: !11, size: 32, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !145, file: !146, line: 56, baseType: !11, size: 32, offset: 352)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !145, file: !146, line: 57, baseType: !11, size: 32, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !145, file: !146, line: 58, baseType: !11, size: 32, offset: 416)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !145, file: !146, line: 60, baseType: !171, size: 640, offset: 448)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !29, line: 893, size: 640, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !296, !297}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !171, file: !29, line: 894, baseType: !42, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !171, file: !29, line: 895, baseType: !42, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !171, file: !29, line: 896, baseType: !42, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !171, file: !29, line: 897, baseType: !42, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !171, file: !29, line: 898, baseType: !42, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !171, file: !29, line: 899, baseType: !27, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !171, file: !29, line: 900, baseType: !45, size: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !171, file: !29, line: 901, baseType: !181, size: 64, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !29, line: 663, size: 640, elements: !183)
!183 = !{!184, !192, !205, !214, !223, !236, !250, !262, !274}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !182, file: !29, line: 664, baseType: !185, size: 128)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !29, line: 567, size: 128, elements: !186)
!186 = !{!187, !188, !189, !190, !191}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !29, line: 568, baseType: !14, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !185, file: !29, line: 568, baseType: !4, size: 8, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !29, line: 568, baseType: !4, size: 8, offset: 72)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !185, file: !29, line: 568, baseType: !38, size: 16, offset: 80)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !185, file: !29, line: 568, baseType: !38, size: 16, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !182, file: !29, line: 665, baseType: !193, size: 384)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !29, line: 593, size: 384, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !29, line: 594, baseType: !14, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !193, file: !29, line: 594, baseType: !4, size: 8, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !29, line: 594, baseType: !4, size: 8, offset: 72)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !193, file: !29, line: 594, baseType: !38, size: 16, offset: 80)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !193, file: !29, line: 594, baseType: !38, size: 16, offset: 96)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !193, file: !29, line: 594, baseType: !38, size: 16, offset: 112)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !193, file: !29, line: 595, baseType: !27, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !193, file: !29, line: 596, baseType: !42, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !193, file: !29, line: 597, baseType: !42, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !193, file: !29, line: 598, baseType: !16, size: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !182, file: !29, line: 666, baseType: !206, size: 192)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !29, line: 573, size: 192, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !29, line: 574, baseType: !14, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !206, file: !29, line: 574, baseType: !4, size: 8, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !29, line: 574, baseType: !4, size: 8, offset: 72)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !206, file: !29, line: 574, baseType: !38, size: 16, offset: 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !206, file: !29, line: 574, baseType: !38, size: 16, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !206, file: !29, line: 574, baseType: !49, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !182, file: !29, line: 667, baseType: !215, size: 192)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !29, line: 604, size: 192, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !29, line: 605, baseType: !14, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !215, file: !29, line: 605, baseType: !4, size: 8, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !29, line: 605, baseType: !4, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !215, file: !29, line: 605, baseType: !38, size: 16, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !215, file: !29, line: 605, baseType: !38, size: 16, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !215, file: !29, line: 605, baseType: !45, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !182, file: !29, line: 668, baseType: !224, size: 448)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !29, line: 608, size: 448, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !224, file: !29, line: 609, baseType: !14, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !224, file: !29, line: 609, baseType: !4, size: 8, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !224, file: !29, line: 609, baseType: !4, size: 8, offset: 72)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !224, file: !29, line: 609, baseType: !38, size: 16, offset: 80)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !224, file: !29, line: 609, baseType: !38, size: 16, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !224, file: !29, line: 609, baseType: !11, size: 32, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !224, file: !29, line: 610, baseType: !27, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !224, file: !29, line: 611, baseType: !42, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !224, file: !29, line: 612, baseType: !42, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !224, file: !29, line: 613, baseType: !11, size: 32, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !182, file: !29, line: 669, baseType: !237, size: 512)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !29, line: 580, size: 512, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !237, file: !29, line: 581, baseType: !14, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !237, file: !29, line: 581, baseType: !4, size: 8, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !237, file: !29, line: 581, baseType: !4, size: 8, offset: 72)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !237, file: !29, line: 581, baseType: !38, size: 16, offset: 80)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !237, file: !29, line: 581, baseType: !38, size: 16, offset: 96)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !237, file: !29, line: 581, baseType: !11, size: 32, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !237, file: !29, line: 582, baseType: !49, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !237, file: !29, line: 583, baseType: !49, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !237, file: !29, line: 584, baseType: !144, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !237, file: !29, line: 585, baseType: !14, size: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !237, file: !29, line: 586, baseType: !11, size: 32, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !182, file: !29, line: 670, baseType: !251, size: 320)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !29, line: 620, size: 320, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !251, file: !29, line: 621, baseType: !14, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !251, file: !29, line: 621, baseType: !4, size: 8, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !29, line: 621, baseType: !4, size: 8, offset: 72)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !251, file: !29, line: 621, baseType: !38, size: 16, offset: 80)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !251, file: !29, line: 621, baseType: !38, size: 16, offset: 96)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !251, file: !29, line: 621, baseType: !4, size: 8, offset: 112)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !251, file: !29, line: 622, baseType: !144, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !251, file: !29, line: 623, baseType: !49, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !251, file: !29, line: 624, baseType: !16, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !182, file: !29, line: 671, baseType: !263, size: 640)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !29, line: 631, size: 640, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !29, line: 632, baseType: !14, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !263, file: !29, line: 632, baseType: !4, size: 8, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !263, file: !29, line: 632, baseType: !4, size: 8, offset: 72)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !263, file: !29, line: 632, baseType: !38, size: 16, offset: 80)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !263, file: !29, line: 632, baseType: !38, size: 16, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !263, file: !29, line: 633, baseType: !271, size: 512, offset: 128)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 512, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 8)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !182, file: !29, line: 672, baseType: !275, size: 320)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !29, line: 654, size: 320, elements: !276)
!276 = !{!277, !278, !279, !280, !281, !282, !283, !284, !285}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !29, line: 655, baseType: !14, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !275, file: !29, line: 655, baseType: !4, size: 8, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !275, file: !29, line: 655, baseType: !4, size: 8, offset: 72)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !275, file: !29, line: 655, baseType: !38, size: 16, offset: 80)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !275, file: !29, line: 655, baseType: !38, size: 16, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !275, file: !29, line: 655, baseType: !4, size: 8, offset: 112)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !275, file: !29, line: 656, baseType: !45, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !275, file: !29, line: 657, baseType: !49, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !275, file: !29, line: 658, baseType: !286, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !29, line: 645, size: 128, elements: !288)
!288 = !{!289, !295}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !287, file: !29, line: 646, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !10, line: 1052, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294, !11, !14}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !10, line: 424, baseType: !14)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !287, file: !29, line: 647, baseType: !14, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !171, file: !29, line: 902, baseType: !27, size: 64, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !171, file: !29, line: 903, baseType: !11, size: 32, offset: 576)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !145, file: !146, line: 61, baseType: !11, size: 32, offset: 1088)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !145, file: !146, line: 62, baseType: !11, size: 32, offset: 1120)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !145, file: !146, line: 63, baseType: !38, size: 16, offset: 1152)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !145, file: !146, line: 64, baseType: !4, size: 8, offset: 1168)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !145, file: !146, line: 66, baseType: !303, size: 2688, offset: 1216)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2688, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 7)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !145, file: !146, line: 67, baseType: !307, size: 3072, offset: 3904)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 3072, elements: !272)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !145, file: !146, line: 68, baseType: !309, size: 576, offset: 6976)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 576, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 9)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !145, file: !146, line: 69, baseType: !109, size: 64, offset: 7552)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !145, file: !146, line: 71, baseType: !42, size: 64, offset: 7616)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !145, file: !146, line: 72, baseType: !109, size: 64, offset: 7680)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !145, file: !146, line: 73, baseType: !181, size: 64, offset: 7744)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !145, file: !146, line: 74, baseType: !45, size: 64, offset: 7808)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !145, file: !146, line: 75, baseType: !49, size: 64, offset: 7872)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !145, file: !146, line: 76, baseType: !45, size: 64, offset: 7936)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !145, file: !146, line: 77, baseType: !27, size: 64, offset: 8000)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !145, file: !146, line: 78, baseType: !49, size: 64, offset: 8064)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !145, file: !146, line: 79, baseType: !45, size: 64, offset: 8128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !145, file: !146, line: 80, baseType: !83, size: 64, offset: 8192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !145, file: !146, line: 81, baseType: !27, size: 64, offset: 8256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !145, file: !146, line: 82, baseType: !325, size: 64, offset: 8320)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !29, line: 702, size: 128, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !327, file: !29, line: 706, baseType: !11, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !327, file: !29, line: 707, baseType: !11, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !29, line: 708, baseType: !38, size: 16, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !327, file: !29, line: 709, baseType: !4, size: 8, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !327, file: !29, line: 710, baseType: !4, size: 8, offset: 88)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !327, file: !29, line: 711, baseType: !4, size: 8, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !145, file: !146, line: 83, baseType: !27, size: 64, offset: 8384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !145, file: !146, line: 84, baseType: !49, size: 64, offset: 8448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !145, file: !146, line: 85, baseType: !181, size: 64, offset: 8512)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !145, file: !146, line: 86, baseType: !49, size: 64, offset: 8576)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !145, file: !146, line: 87, baseType: !181, size: 64, offset: 8640)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !145, file: !146, line: 88, baseType: !27, size: 64, offset: 8704)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !145, file: !146, line: 89, baseType: !27, size: 64, offset: 8768)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !145, file: !146, line: 90, baseType: !343, size: 64, offset: 8832)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !145, file: !146, line: 91, baseType: !345, size: 64, offset: 8896)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !29, line: 637, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!9, !144, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !145, file: !146, line: 92, baseType: !351, size: 64, offset: 8960)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !29, line: 641, baseType: !141)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !137, file: !51, line: 152, baseType: !49, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !123, file: !51, line: 155, baseType: !11, size: 32, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !123, file: !51, line: 156, baseType: !156, size: 16, offset: 416)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !123, file: !51, line: 157, baseType: !4, size: 8, offset: 432)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !50, file: !51, line: 375, baseType: !357, size: 576)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !51, line: 122, size: 576, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !357, file: !51, line: 123, baseType: !49, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !357, file: !51, line: 123, baseType: !4, size: 8, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !357, file: !51, line: 123, baseType: !4, size: 8, offset: 72)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !357, file: !51, line: 123, baseType: !38, size: 16, offset: 80)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !51, line: 123, baseType: !4, size: 8, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !357, file: !51, line: 123, baseType: !4, size: 8, offset: 104)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !357, file: !51, line: 124, baseType: !38, size: 16, offset: 112)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !357, file: !51, line: 125, baseType: !14, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !357, file: !51, line: 126, baseType: !16, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !357, file: !51, line: 127, baseType: !343, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !357, file: !51, line: 128, baseType: !49, size: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !51, line: 129, baseType: !49, size: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !357, file: !51, line: 130, baseType: !45, size: 64, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !357, file: !51, line: 131, baseType: !4, size: 8, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !50, file: !51, line: 376, baseType: !374, size: 448)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !51, line: 134, size: 448, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !387}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !374, file: !51, line: 135, baseType: !49, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !374, file: !51, line: 135, baseType: !4, size: 8, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !374, file: !51, line: 135, baseType: !4, size: 8, offset: 72)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !374, file: !51, line: 135, baseType: !38, size: 16, offset: 80)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !374, file: !51, line: 135, baseType: !4, size: 8, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !374, file: !51, line: 135, baseType: !4, size: 8, offset: 104)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !374, file: !51, line: 136, baseType: !45, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !374, file: !51, line: 137, baseType: !49, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !51, line: 138, baseType: !49, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !374, file: !51, line: 139, baseType: !386, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !10, line: 129, baseType: !16)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !374, file: !51, line: 140, baseType: !11, size: 32, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !50, file: !51, line: 377, baseType: !389, size: 320)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !51, line: 184, size: 320, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !400}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !389, file: !51, line: 185, baseType: !49, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !389, file: !51, line: 185, baseType: !4, size: 8, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !389, file: !51, line: 185, baseType: !4, size: 8, offset: 72)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !389, file: !51, line: 185, baseType: !38, size: 16, offset: 80)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !51, line: 185, baseType: !4, size: 8, offset: 96)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !389, file: !51, line: 185, baseType: !397, size: 128, offset: 128)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 128, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 2)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !389, file: !51, line: 185, baseType: !49, size: 64, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !50, file: !51, line: 378, baseType: !402, size: 384)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !51, line: 187, size: 384, elements: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !402, file: !51, line: 188, baseType: !49, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !402, file: !51, line: 188, baseType: !4, size: 8, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !402, file: !51, line: 188, baseType: !4, size: 8, offset: 72)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !402, file: !51, line: 188, baseType: !38, size: 16, offset: 80)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !402, file: !51, line: 188, baseType: !4, size: 8, offset: 96)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !402, file: !51, line: 189, baseType: !397, size: 128, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !402, file: !51, line: 189, baseType: !49, size: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !402, file: !51, line: 189, baseType: !412, size: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !29, line: 480, size: 576, elements: !414)
!414 = !{!415, !416, !417, !418, !426, !441, !473, !474, !475, !476, !477, !478}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !413, file: !29, line: 481, baseType: !45, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !413, file: !29, line: 482, baseType: !412, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !413, file: !29, line: 483, baseType: !412, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !413, file: !29, line: 484, baseType: !419, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !29, line: 497, size: 256, elements: !421)
!421 = !{!422, !423, !424, !425}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !420, file: !29, line: 498, baseType: !419, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !420, file: !29, line: 499, baseType: !419, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !420, file: !29, line: 500, baseType: !412, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !420, file: !29, line: 501, baseType: !11, size: 32, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !413, file: !29, line: 485, baseType: !427, size: 64, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !29, line: 466, size: 320, elements: !429)
!429 = !{!430, !435, !436, !437, !438, !439, !440}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !428, file: !29, line: 467, baseType: !431, size: 128)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !29, line: 459, size: 128, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !431, file: !29, line: 460, baseType: !4, size: 8)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !431, file: !29, line: 461, baseType: !16, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !428, file: !29, line: 468, baseType: !431, size: 128, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !428, file: !29, line: 469, baseType: !38, size: 16, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !428, file: !29, line: 470, baseType: !4, size: 8, offset: 272)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !428, file: !29, line: 471, baseType: !4, size: 8, offset: 280)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !428, file: !29, line: 472, baseType: !4, size: 8, offset: 288)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !428, file: !29, line: 473, baseType: !4, size: 8, offset: 296)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !413, file: !29, line: 486, baseType: !442, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !29, line: 448, size: 192, elements: !444)
!444 = !{!445, !468, !469, !470, !471, !472}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !443, file: !29, line: 449, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !29, line: 438, size: 64, elements: !447)
!447 = !{!448, !449, !462}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !446, file: !29, line: 439, baseType: !45, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !446, file: !29, line: 440, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !29, line: 419, size: 256, elements: !452)
!452 = !{!453, !458, !459, !460, !461}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !451, file: !29, line: 420, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !10, line: 1049, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!11, !294, !11, !14}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !451, file: !29, line: 421, baseType: !14, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !451, file: !29, line: 422, baseType: !45, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !451, file: !29, line: 423, baseType: !4, size: 8, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !451, file: !29, line: 424, baseType: !4, size: 8, offset: 200)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !446, file: !29, line: 441, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !29, line: 429, size: 128, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !464, file: !29, line: 430, baseType: !45, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !464, file: !29, line: 431, baseType: !463, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !443, file: !29, line: 450, baseType: !427, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !443, file: !29, line: 451, baseType: !4, size: 8, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !443, file: !29, line: 452, baseType: !4, size: 8, offset: 136)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !443, file: !29, line: 453, baseType: !4, size: 8, offset: 144)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !443, file: !29, line: 454, baseType: !4, size: 8, offset: 152)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !413, file: !29, line: 487, baseType: !16, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !413, file: !29, line: 488, baseType: !11, size: 32, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !413, file: !29, line: 489, baseType: !38, size: 16, offset: 480)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !413, file: !29, line: 490, baseType: !38, size: 16, offset: 496)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !413, file: !29, line: 491, baseType: !4, size: 8, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !413, file: !29, line: 492, baseType: !4, size: 8, offset: 520)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !50, file: !51, line: 379, baseType: !480, size: 384)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !51, line: 192, size: 384, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !480, file: !51, line: 193, baseType: !49, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !480, file: !51, line: 193, baseType: !4, size: 8, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !51, line: 193, baseType: !4, size: 8, offset: 72)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !480, file: !51, line: 193, baseType: !38, size: 16, offset: 80)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !51, line: 193, baseType: !4, size: 8, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !480, file: !51, line: 193, baseType: !397, size: 128, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !480, file: !51, line: 193, baseType: !49, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !480, file: !51, line: 193, baseType: !11, size: 32, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !480, file: !51, line: 194, baseType: !11, size: 32, offset: 352)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !50, file: !51, line: 380, baseType: !492, size: 384)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !51, line: 197, size: 384, elements: !493)
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502, !503}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !492, file: !51, line: 198, baseType: !49, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !492, file: !51, line: 198, baseType: !4, size: 8, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !492, file: !51, line: 198, baseType: !4, size: 8, offset: 72)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !492, file: !51, line: 198, baseType: !38, size: 16, offset: 80)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !492, file: !51, line: 198, baseType: !4, size: 8, offset: 96)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !492, file: !51, line: 200, baseType: !4, size: 8, offset: 104)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !492, file: !51, line: 201, baseType: !4, size: 8, offset: 112)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !492, file: !51, line: 202, baseType: !397, size: 128, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !492, file: !51, line: 202, baseType: !49, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !492, file: !51, line: 202, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !10, line: 128, baseType: !16)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !50, file: !51, line: 381, baseType: !506, size: 320)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !51, line: 205, size: 320, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !506, file: !51, line: 206, baseType: !49, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !506, file: !51, line: 206, baseType: !4, size: 8, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !506, file: !51, line: 206, baseType: !4, size: 8, offset: 72)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !506, file: !51, line: 206, baseType: !38, size: 16, offset: 80)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !51, line: 206, baseType: !4, size: 8, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !506, file: !51, line: 206, baseType: !397, size: 128, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !506, file: !51, line: 206, baseType: !49, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !50, file: !51, line: 382, baseType: !516, size: 384)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !51, line: 233, size: 384, elements: !517)
!517 = !{!518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !516, file: !51, line: 234, baseType: !49, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !516, file: !51, line: 234, baseType: !4, size: 8, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !516, file: !51, line: 234, baseType: !4, size: 8, offset: 72)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !516, file: !51, line: 234, baseType: !38, size: 16, offset: 80)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !516, file: !51, line: 234, baseType: !4, size: 8, offset: 96)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !516, file: !51, line: 234, baseType: !4, size: 8, offset: 104)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !516, file: !51, line: 234, baseType: !4, size: 8, offset: 112)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !516, file: !51, line: 234, baseType: !4, size: 8, offset: 120)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !516, file: !51, line: 234, baseType: !45, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !516, file: !51, line: 234, baseType: !11, size: 32, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !516, file: !51, line: 234, baseType: !11, size: 32, offset: 224)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !516, file: !51, line: 234, baseType: !11, size: 32, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !516, file: !51, line: 234, baseType: !4, size: 8, offset: 288)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !516, file: !51, line: 234, baseType: !4, size: 8, offset: 296)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !516, file: !51, line: 234, baseType: !49, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !50, file: !51, line: 383, baseType: !534, size: 576)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !51, line: 237, size: 576, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !534, file: !51, line: 238, baseType: !49, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !534, file: !51, line: 238, baseType: !4, size: 8, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !534, file: !51, line: 238, baseType: !4, size: 8, offset: 72)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !534, file: !51, line: 238, baseType: !38, size: 16, offset: 80)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !534, file: !51, line: 238, baseType: !4, size: 8, offset: 96)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !534, file: !51, line: 238, baseType: !4, size: 8, offset: 104)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !534, file: !51, line: 238, baseType: !4, size: 8, offset: 112)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !534, file: !51, line: 238, baseType: !4, size: 8, offset: 120)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !534, file: !51, line: 238, baseType: !45, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !534, file: !51, line: 238, baseType: !11, size: 32, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !534, file: !51, line: 238, baseType: !11, size: 32, offset: 224)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !534, file: !51, line: 238, baseType: !11, size: 32, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !534, file: !51, line: 238, baseType: !4, size: 8, offset: 288)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !534, file: !51, line: 238, baseType: !4, size: 8, offset: 296)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !534, file: !51, line: 238, baseType: !38, size: 16, offset: 304)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !534, file: !51, line: 239, baseType: !49, size: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !534, file: !51, line: 240, baseType: !42, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !534, file: !51, line: 241, baseType: !38, size: 16, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !534, file: !51, line: 242, baseType: !42, size: 64, offset: 512)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !50, file: !51, line: 384, baseType: !556, size: 384)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !51, line: 262, size: 384, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !556, file: !51, line: 263, baseType: !49, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !556, file: !51, line: 263, baseType: !4, size: 8, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !556, file: !51, line: 263, baseType: !4, size: 8, offset: 72)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !556, file: !51, line: 263, baseType: !38, size: 16, offset: 80)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !556, file: !51, line: 263, baseType: !4, size: 8, offset: 96)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !556, file: !51, line: 263, baseType: !4, size: 8, offset: 104)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !556, file: !51, line: 263, baseType: !4, size: 8, offset: 112)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !556, file: !51, line: 263, baseType: !4, size: 8, offset: 120)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !556, file: !51, line: 263, baseType: !45, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !556, file: !51, line: 263, baseType: !11, size: 32, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !556, file: !51, line: 263, baseType: !11, size: 32, offset: 224)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !556, file: !51, line: 263, baseType: !11, size: 32, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !556, file: !51, line: 263, baseType: !4, size: 8, offset: 288)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !556, file: !51, line: 263, baseType: !4, size: 8, offset: 296)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !556, file: !51, line: 263, baseType: !4, size: 8, offset: 304)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !556, file: !51, line: 264, baseType: !49, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !50, file: !51, line: 385, baseType: !575, size: 448)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !51, line: 245, size: 448, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !575, file: !51, line: 246, baseType: !49, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !575, file: !51, line: 246, baseType: !4, size: 8, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !51, line: 246, baseType: !4, size: 8, offset: 72)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !575, file: !51, line: 246, baseType: !38, size: 16, offset: 80)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !51, line: 246, baseType: !4, size: 8, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !575, file: !51, line: 246, baseType: !4, size: 8, offset: 104)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !575, file: !51, line: 246, baseType: !4, size: 8, offset: 112)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !575, file: !51, line: 246, baseType: !4, size: 8, offset: 120)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !575, file: !51, line: 246, baseType: !45, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !575, file: !51, line: 246, baseType: !11, size: 32, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !575, file: !51, line: 246, baseType: !11, size: 32, offset: 224)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !575, file: !51, line: 246, baseType: !11, size: 32, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !575, file: !51, line: 246, baseType: !4, size: 8, offset: 288)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !575, file: !51, line: 246, baseType: !4, size: 8, offset: 296)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !575, file: !51, line: 246, baseType: !49, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !575, file: !51, line: 247, baseType: !49, size: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !50, file: !51, line: 386, baseType: !594, size: 448)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !51, line: 250, size: 448, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !594, file: !51, line: 251, baseType: !49, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !594, file: !51, line: 251, baseType: !4, size: 8, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !594, file: !51, line: 251, baseType: !4, size: 8, offset: 72)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !594, file: !51, line: 251, baseType: !38, size: 16, offset: 80)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !594, file: !51, line: 251, baseType: !4, size: 8, offset: 96)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !594, file: !51, line: 251, baseType: !4, size: 8, offset: 104)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !594, file: !51, line: 251, baseType: !4, size: 8, offset: 112)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !594, file: !51, line: 251, baseType: !4, size: 8, offset: 120)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !594, file: !51, line: 251, baseType: !45, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !594, file: !51, line: 251, baseType: !11, size: 32, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !594, file: !51, line: 251, baseType: !11, size: 32, offset: 224)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !594, file: !51, line: 251, baseType: !11, size: 32, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !594, file: !51, line: 251, baseType: !4, size: 8, offset: 288)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !594, file: !51, line: 251, baseType: !4, size: 8, offset: 296)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !594, file: !51, line: 256, baseType: !49, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !594, file: !51, line: 257, baseType: !49, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !50, file: !51, line: 387, baseType: !613, size: 512)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !51, line: 273, size: 512, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !613, file: !51, line: 274, baseType: !49, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !51, line: 274, baseType: !4, size: 8, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !51, line: 274, baseType: !4, size: 8, offset: 72)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !613, file: !51, line: 274, baseType: !38, size: 16, offset: 80)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !51, line: 274, baseType: !4, size: 8, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !613, file: !51, line: 274, baseType: !45, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !613, file: !51, line: 275, baseType: !11, size: 32, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !613, file: !51, line: 276, baseType: !290, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !613, file: !51, line: 277, baseType: !14, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !613, file: !51, line: 278, baseType: !397, size: 128, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !50, file: !51, line: 388, baseType: !626, size: 512)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !51, line: 281, size: 512, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !641, !642, !643, !649, !650}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !626, file: !51, line: 282, baseType: !49, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !626, file: !51, line: 282, baseType: !4, size: 8, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !626, file: !51, line: 282, baseType: !4, size: 8, offset: 72)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !626, file: !51, line: 282, baseType: !38, size: 16, offset: 80)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !626, file: !51, line: 282, baseType: !4, size: 8, offset: 96)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !626, file: !51, line: 282, baseType: !4, size: 8, offset: 104)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !626, file: !51, line: 283, baseType: !4, size: 8, offset: 112)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !626, file: !51, line: 284, baseType: !636, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !10, line: 1084, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!9, !11, !386, !11, !640, !14, !14}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !626, file: !51, line: 285, baseType: !45, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !626, file: !51, line: 286, baseType: !14, size: 64, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !626, file: !51, line: 287, baseType: !644, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !10, line: 1102, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!9, !294, !11, !14, !648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !626, file: !51, line: 288, baseType: !49, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !626, file: !51, line: 289, baseType: !49, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !50, file: !51, line: 389, baseType: !652, size: 512)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !51, line: 307, size: 512, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !51, line: 308, baseType: !49, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !51, line: 308, baseType: !4, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !51, line: 308, baseType: !4, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !51, line: 308, baseType: !38, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !51, line: 308, baseType: !4, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !652, file: !51, line: 308, baseType: !4, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !652, file: !51, line: 309, baseType: !4, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !652, file: !51, line: 310, baseType: !4, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !652, file: !51, line: 311, baseType: !14, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !51, line: 312, baseType: !45, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !652, file: !51, line: 313, baseType: !109, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !652, file: !51, line: 314, baseType: !42, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !652, file: !51, line: 315, baseType: !42, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !51, line: 316, baseType: !11, size: 32, offset: 448)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !50, file: !51, line: 390, baseType: !669, size: 448)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !51, line: 340, size: 448, elements: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !669, file: !51, line: 341, baseType: !49, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !669, file: !51, line: 341, baseType: !4, size: 8, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !669, file: !51, line: 341, baseType: !4, size: 8, offset: 72)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !669, file: !51, line: 341, baseType: !38, size: 16, offset: 80)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !669, file: !51, line: 341, baseType: !4, size: 8, offset: 96)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !669, file: !51, line: 341, baseType: !45, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !669, file: !51, line: 342, baseType: !45, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !669, file: !51, line: 343, baseType: !14, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !669, file: !51, line: 344, baseType: !42, size: 64, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !669, file: !51, line: 345, baseType: !11, size: 32, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !50, file: !51, line: 391, baseType: !682, size: 256)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !51, line: 350, size: 256, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !694}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !682, file: !51, line: 351, baseType: !49, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !682, file: !51, line: 351, baseType: !4, size: 8, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !682, file: !51, line: 351, baseType: !4, size: 8, offset: 72)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !682, file: !51, line: 351, baseType: !38, size: 16, offset: 80)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !51, line: 351, baseType: !4, size: 8, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !682, file: !51, line: 351, baseType: !690, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !10, line: 1055, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !294, !14}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !682, file: !51, line: 352, baseType: !14, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !50, file: !51, line: 392, baseType: !696, size: 192)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !51, line: 357, size: 192, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !51, line: 358, baseType: !49, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !51, line: 358, baseType: !4, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !51, line: 358, baseType: !4, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !51, line: 358, baseType: !38, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !51, line: 358, baseType: !4, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !696, file: !51, line: 358, baseType: !49, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !50, file: !51, line: 399, baseType: !46, size: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !46, file: !29, line: 135, baseType: !4, size: 8, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !29, line: 136, baseType: !4, size: 8, offset: 72)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !29, line: 137, baseType: !38, size: 16, offset: 80)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !46, file: !29, line: 138, baseType: !709, size: 32, offset: 96)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !710, line: 327, size: 32, elements: !711)
!710 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !709, file: !710, line: 328, baseType: !11, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !709, file: !710, line: 329, baseType: !714, size: 32)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 32, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 4)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !46, file: !29, line: 139, baseType: !45, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !46, file: !29, line: 140, baseType: !45, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !46, file: !29, line: 141, baseType: !45, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !46, file: !29, line: 142, baseType: !156, size: 16, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !32, file: !29, line: 829, baseType: !722, size: 64, offset: 320)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !29, line: 716, size: 64, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !722, file: !29, line: 717, baseType: !16, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !722, file: !29, line: 718, baseType: !11, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !722, file: !29, line: 719, baseType: !83, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !722, file: !29, line: 720, baseType: !42, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !722, file: !29, line: 721, baseType: !83, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !722, file: !29, line: 722, baseType: !27, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !32, file: !29, line: 829, baseType: !4, size: 8, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !28, file: !29, line: 877, baseType: !732, size: 640)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !29, line: 835, size: 640, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !732, file: !29, line: 836, baseType: !27, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !29, line: 836, baseType: !4, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !29, line: 836, baseType: !4, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !732, file: !29, line: 836, baseType: !38, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !732, file: !29, line: 836, baseType: !42, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !732, file: !29, line: 836, baseType: !27, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !732, file: !29, line: 836, baseType: !45, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !732, file: !29, line: 836, baseType: !722, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !732, file: !29, line: 836, baseType: !4, size: 8, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !732, file: !29, line: 836, baseType: !83, size: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !732, file: !29, line: 837, baseType: !42, size: 64, offset: 512)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !732, file: !29, line: 838, baseType: !11, size: 32, offset: 576)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !732, file: !29, line: 839, baseType: !11, size: 32, offset: 608)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !28, file: !29, line: 878, baseType: !748, size: 1600)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !29, line: 846, size: 1600, elements: !749)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !748, file: !29, line: 847, baseType: !27, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !748, file: !29, line: 847, baseType: !4, size: 8, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !29, line: 847, baseType: !4, size: 8, offset: 72)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !748, file: !29, line: 847, baseType: !38, size: 16, offset: 80)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !748, file: !29, line: 847, baseType: !42, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !748, file: !29, line: 847, baseType: !27, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !748, file: !29, line: 847, baseType: !45, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !748, file: !29, line: 847, baseType: !722, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !748, file: !29, line: 847, baseType: !4, size: 8, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !748, file: !29, line: 847, baseType: !27, size: 64, offset: 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !748, file: !29, line: 848, baseType: !27, size: 64, offset: 512)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !748, file: !29, line: 849, baseType: !83, size: 64, offset: 576)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !748, file: !29, line: 850, baseType: !4, size: 8, offset: 640)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !748, file: !29, line: 851, baseType: !83, size: 64, offset: 704)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !748, file: !29, line: 852, baseType: !83, size: 64, offset: 768)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !748, file: !29, line: 853, baseType: !83, size: 64, offset: 832)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !748, file: !29, line: 854, baseType: !714, size: 32, offset: 896)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !748, file: !29, line: 855, baseType: !11, size: 32, offset: 928)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !748, file: !29, line: 856, baseType: !11, size: 32, offset: 960)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !748, file: !29, line: 857, baseType: !11, size: 32, offset: 992)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !748, file: !29, line: 858, baseType: !11, size: 32, offset: 1024)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !748, file: !29, line: 859, baseType: !11, size: 32, offset: 1056)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !748, file: !29, line: 860, baseType: !11, size: 32, offset: 1088)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !748, file: !29, line: 861, baseType: !11, size: 32, offset: 1120)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !748, file: !29, line: 862, baseType: !11, size: 32, offset: 1152)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !748, file: !29, line: 863, baseType: !11, size: 32, offset: 1184)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !748, file: !29, line: 864, baseType: !11, size: 32, offset: 1216)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !748, file: !29, line: 865, baseType: !11, size: 32, offset: 1248)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !748, file: !29, line: 866, baseType: !11, size: 32, offset: 1280)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !748, file: !29, line: 867, baseType: !11, size: 32, offset: 1312)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !748, file: !29, line: 868, baseType: !38, size: 16, offset: 1344)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !748, file: !29, line: 869, baseType: !4, size: 8, offset: 1360)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !748, file: !29, line: 870, baseType: !4, size: 8, offset: 1368)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !748, file: !29, line: 871, baseType: !4, size: 8, offset: 1376)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !748, file: !29, line: 872, baseType: !785, size: 160, offset: 1384)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 160, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 20)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!789 = !DILocalVariable(name: "parser_state", arg: 1, scope: !24, file: !1, line: 29, type: !788)
!790 = !DILocation(line: 29, column: 10, scope: !24)
!791 = !DILocation(line: 32, column: 10, scope: !24)
!792 = !DILocation(line: 32, column: 24, scope: !24)
!793 = !DILocation(line: 32, column: 31, scope: !24)
!794 = !DILocation(line: 32, column: 43, scope: !24)
!795 = !DILocation(line: 32, column: 2, scope: !24)
!796 = distinct !DISubprogram(name: "acpi_ps_has_completed_scope", scope: !1, file: !1, line: 49, type: !797, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!797 = !DISubroutineType(types: !798)
!798 = !{!4, !788}
!799 = !DILocalVariable(name: "parser_state", arg: 1, scope: !796, file: !1, line: 49, type: !788)
!800 = !DILocation(line: 49, column: 58, scope: !796)
!801 = !DILocation(line: 53, column: 5, scope: !796)
!802 = !DILocation(line: 53, column: 19, scope: !796)
!803 = !DILocation(line: 53, column: 26, scope: !796)
!804 = !DILocation(line: 53, column: 40, scope: !796)
!805 = !DILocation(line: 53, column: 47, scope: !796)
!806 = !DILocation(line: 53, column: 59, scope: !796)
!807 = !DILocation(line: 53, column: 23, scope: !796)
!808 = !DILocation(line: 54, column: 5, scope: !796)
!809 = !DILocation(line: 54, column: 9, scope: !796)
!810 = !DILocation(line: 54, column: 23, scope: !796)
!811 = !DILocation(line: 54, column: 30, scope: !796)
!812 = !DILocation(line: 54, column: 42, scope: !796)
!813 = !DILocation(line: 54, column: 8, scope: !796)
!814 = !DILocation(line: 52, column: 10, scope: !796)
!815 = !DILocation(line: 52, column: 2, scope: !796)
!816 = distinct !DISubprogram(name: "acpi_ps_init_scope", scope: !1, file: !1, line: 71, type: !817, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!817 = !DISubroutineType(types: !818)
!818 = !{!9, !788, !27}
!819 = !DILocalVariable(name: "parser_state", arg: 1, scope: !816, file: !1, line: 71, type: !788)
!820 = !DILocation(line: 71, column: 46, scope: !816)
!821 = !DILocalVariable(name: "root_op", arg: 2, scope: !816, file: !1, line: 72, type: !27)
!822 = !DILocation(line: 72, column: 32, scope: !816)
!823 = !DILocalVariable(name: "scope", scope: !816, file: !1, line: 74, type: !181)
!824 = !DILocation(line: 74, column: 28, scope: !816)
!825 = !DILocation(line: 78, column: 10, scope: !816)
!826 = !DILocation(line: 78, column: 8, scope: !816)
!827 = !DILocation(line: 79, column: 7, scope: !828)
!828 = distinct !DILexicalBlock(scope: !816, file: !1, line: 79, column: 6)
!829 = !DILocation(line: 79, column: 6, scope: !816)
!830 = !DILocation(line: 80, column: 3, scope: !831)
!831 = distinct !DILexicalBlock(scope: !828, file: !1, line: 79, column: 14)
!832 = !DILocation(line: 83, column: 2, scope: !816)
!833 = !DILocation(line: 83, column: 9, scope: !816)
!834 = !DILocation(line: 83, column: 16, scope: !816)
!835 = !DILocation(line: 83, column: 32, scope: !816)
!836 = !DILocation(line: 84, column: 26, scope: !816)
!837 = !DILocation(line: 84, column: 2, scope: !816)
!838 = !DILocation(line: 84, column: 9, scope: !816)
!839 = !DILocation(line: 84, column: 21, scope: !816)
!840 = !DILocation(line: 84, column: 24, scope: !816)
!841 = !DILocation(line: 85, column: 2, scope: !816)
!842 = !DILocation(line: 85, column: 9, scope: !816)
!843 = !DILocation(line: 85, column: 21, scope: !816)
!844 = !DILocation(line: 85, column: 31, scope: !816)
!845 = !DILocation(line: 86, column: 31, scope: !816)
!846 = !DILocation(line: 86, column: 45, scope: !816)
!847 = !DILocation(line: 86, column: 2, scope: !816)
!848 = !DILocation(line: 86, column: 9, scope: !816)
!849 = !DILocation(line: 86, column: 21, scope: !816)
!850 = !DILocation(line: 86, column: 29, scope: !816)
!851 = !DILocation(line: 87, column: 31, scope: !816)
!852 = !DILocation(line: 87, column: 45, scope: !816)
!853 = !DILocation(line: 87, column: 2, scope: !816)
!854 = !DILocation(line: 87, column: 9, scope: !816)
!855 = !DILocation(line: 87, column: 21, scope: !816)
!856 = !DILocation(line: 87, column: 29, scope: !816)
!857 = !DILocation(line: 89, column: 24, scope: !816)
!858 = !DILocation(line: 89, column: 2, scope: !816)
!859 = !DILocation(line: 89, column: 16, scope: !816)
!860 = !DILocation(line: 89, column: 22, scope: !816)
!861 = !DILocation(line: 90, column: 27, scope: !816)
!862 = !DILocation(line: 90, column: 2, scope: !816)
!863 = !DILocation(line: 90, column: 16, scope: !816)
!864 = !DILocation(line: 90, column: 25, scope: !816)
!865 = !DILocation(line: 92, column: 2, scope: !816)
!866 = !DILocation(line: 93, column: 1, scope: !816)
!867 = distinct !DISubprogram(name: "acpi_ps_push_scope", scope: !1, file: !1, line: 111, type: !868, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!868 = !DISubroutineType(types: !869)
!869 = !{!9, !788, !27, !11, !11}
!870 = !DILocalVariable(name: "parser_state", arg: 1, scope: !867, file: !1, line: 111, type: !788)
!871 = !DILocation(line: 111, column: 45, scope: !867)
!872 = !DILocalVariable(name: "op", arg: 2, scope: !867, file: !1, line: 112, type: !27)
!873 = !DILocation(line: 112, column: 31, scope: !867)
!874 = !DILocalVariable(name: "remaining_args", arg: 3, scope: !867, file: !1, line: 113, type: !11)
!875 = !DILocation(line: 113, column: 10, scope: !867)
!876 = !DILocalVariable(name: "arg_count", arg: 4, scope: !867, file: !1, line: 113, type: !11)
!877 = !DILocation(line: 113, column: 30, scope: !867)
!878 = !DILocalVariable(name: "scope", scope: !867, file: !1, line: 115, type: !181)
!879 = !DILocation(line: 115, column: 28, scope: !867)
!880 = !DILocation(line: 119, column: 10, scope: !867)
!881 = !DILocation(line: 119, column: 8, scope: !867)
!882 = !DILocation(line: 120, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !867, file: !1, line: 120, column: 6)
!884 = !DILocation(line: 120, column: 6, scope: !867)
!885 = !DILocation(line: 121, column: 3, scope: !886)
!886 = distinct !DILexicalBlock(scope: !883, file: !1, line: 120, column: 14)
!887 = !DILocation(line: 124, column: 2, scope: !867)
!888 = !DILocation(line: 124, column: 9, scope: !867)
!889 = !DILocation(line: 124, column: 16, scope: !867)
!890 = !DILocation(line: 124, column: 32, scope: !867)
!891 = !DILocation(line: 125, column: 26, scope: !867)
!892 = !DILocation(line: 125, column: 2, scope: !867)
!893 = !DILocation(line: 125, column: 9, scope: !867)
!894 = !DILocation(line: 125, column: 21, scope: !867)
!895 = !DILocation(line: 125, column: 24, scope: !867)
!896 = !DILocation(line: 126, column: 32, scope: !867)
!897 = !DILocation(line: 126, column: 2, scope: !867)
!898 = !DILocation(line: 126, column: 9, scope: !867)
!899 = !DILocation(line: 126, column: 21, scope: !867)
!900 = !DILocation(line: 126, column: 30, scope: !867)
!901 = !DILocation(line: 127, column: 33, scope: !867)
!902 = !DILocation(line: 127, column: 2, scope: !867)
!903 = !DILocation(line: 127, column: 9, scope: !867)
!904 = !DILocation(line: 127, column: 21, scope: !867)
!905 = !DILocation(line: 127, column: 31, scope: !867)
!906 = !DILocation(line: 128, column: 31, scope: !867)
!907 = !DILocation(line: 128, column: 45, scope: !867)
!908 = !DILocation(line: 128, column: 2, scope: !867)
!909 = !DILocation(line: 128, column: 9, scope: !867)
!910 = !DILocation(line: 128, column: 21, scope: !867)
!911 = !DILocation(line: 128, column: 29, scope: !867)
!912 = !DILocation(line: 132, column: 30, scope: !867)
!913 = !DILocation(line: 132, column: 44, scope: !867)
!914 = !DILocation(line: 132, column: 51, scope: !867)
!915 = !DILocation(line: 132, column: 2, scope: !867)
!916 = !DILocation(line: 134, column: 6, scope: !917)
!917 = distinct !DILexicalBlock(scope: !867, file: !1, line: 134, column: 6)
!918 = !DILocation(line: 134, column: 16, scope: !917)
!919 = !DILocation(line: 134, column: 6, scope: !867)
!920 = !DILocation(line: 138, column: 32, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !1, line: 134, column: 34)
!922 = !DILocation(line: 138, column: 46, scope: !921)
!923 = !DILocation(line: 138, column: 3, scope: !921)
!924 = !DILocation(line: 138, column: 10, scope: !921)
!925 = !DILocation(line: 138, column: 22, scope: !921)
!926 = !DILocation(line: 138, column: 30, scope: !921)
!927 = !DILocation(line: 139, column: 2, scope: !921)
!928 = !DILocation(line: 142, column: 3, scope: !929)
!929 = distinct !DILexicalBlock(scope: !917, file: !1, line: 139, column: 9)
!930 = !DILocation(line: 142, column: 10, scope: !929)
!931 = !DILocation(line: 142, column: 22, scope: !929)
!932 = !DILocation(line: 142, column: 30, scope: !929)
!933 = !DILocation(line: 145, column: 2, scope: !867)
!934 = !DILocation(line: 146, column: 1, scope: !867)
!935 = distinct !DISubprogram(name: "acpi_ps_pop_scope", scope: !1, file: !1, line: 165, type: !936, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !788, !349, !938, !938}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!939 = !DILocalVariable(name: "parser_state", arg: 1, scope: !935, file: !1, line: 165, type: !788)
!940 = !DILocation(line: 165, column: 44, scope: !935)
!941 = !DILocalVariable(name: "op", arg: 2, scope: !935, file: !1, line: 166, type: !349)
!942 = !DILocation(line: 166, column: 31, scope: !935)
!943 = !DILocalVariable(name: "arg_list", arg: 3, scope: !935, file: !1, line: 166, type: !938)
!944 = !DILocation(line: 166, column: 41, scope: !935)
!945 = !DILocalVariable(name: "arg_count", arg: 4, scope: !935, file: !1, line: 166, type: !938)
!946 = !DILocation(line: 166, column: 57, scope: !935)
!947 = !DILocalVariable(name: "scope", scope: !935, file: !1, line: 168, type: !181)
!948 = !DILocation(line: 168, column: 28, scope: !935)
!949 = !DILocation(line: 168, column: 36, scope: !935)
!950 = !DILocation(line: 168, column: 50, scope: !935)
!951 = !DILocation(line: 174, column: 6, scope: !952)
!952 = distinct !DILexicalBlock(scope: !935, file: !1, line: 174, column: 6)
!953 = !DILocation(line: 174, column: 13, scope: !952)
!954 = !DILocation(line: 174, column: 20, scope: !952)
!955 = !DILocation(line: 174, column: 6, scope: !935)
!956 = !DILocation(line: 175, column: 38, scope: !957)
!957 = distinct !DILexicalBlock(scope: !952, file: !1, line: 174, column: 26)
!958 = !DILocation(line: 175, column: 52, scope: !957)
!959 = !DILocation(line: 175, column: 11, scope: !957)
!960 = !DILocation(line: 175, column: 9, scope: !957)
!961 = !DILocation(line: 179, column: 9, scope: !957)
!962 = !DILocation(line: 179, column: 16, scope: !957)
!963 = !DILocation(line: 179, column: 28, scope: !957)
!964 = !DILocation(line: 179, column: 4, scope: !957)
!965 = !DILocation(line: 179, column: 7, scope: !957)
!966 = !DILocation(line: 180, column: 15, scope: !957)
!967 = !DILocation(line: 180, column: 22, scope: !957)
!968 = !DILocation(line: 180, column: 34, scope: !957)
!969 = !DILocation(line: 180, column: 4, scope: !957)
!970 = !DILocation(line: 180, column: 13, scope: !957)
!971 = !DILocation(line: 181, column: 16, scope: !957)
!972 = !DILocation(line: 181, column: 23, scope: !957)
!973 = !DILocation(line: 181, column: 35, scope: !957)
!974 = !DILocation(line: 181, column: 4, scope: !957)
!975 = !DILocation(line: 181, column: 14, scope: !957)
!976 = !DILocation(line: 182, column: 27, scope: !957)
!977 = !DILocation(line: 182, column: 34, scope: !957)
!978 = !DILocation(line: 182, column: 46, scope: !957)
!979 = !DILocation(line: 182, column: 3, scope: !957)
!980 = !DILocation(line: 182, column: 17, scope: !957)
!981 = !DILocation(line: 182, column: 25, scope: !957)
!982 = !DILocation(line: 186, column: 32, scope: !957)
!983 = !DILocation(line: 186, column: 3, scope: !957)
!984 = !DILocation(line: 187, column: 2, scope: !957)
!985 = !DILocation(line: 190, column: 4, scope: !986)
!986 = distinct !DILexicalBlock(scope: !952, file: !1, line: 187, column: 9)
!987 = !DILocation(line: 190, column: 7, scope: !986)
!988 = !DILocation(line: 191, column: 4, scope: !986)
!989 = !DILocation(line: 191, column: 13, scope: !986)
!990 = !DILocation(line: 192, column: 4, scope: !986)
!991 = !DILocation(line: 192, column: 14, scope: !986)
!992 = !DILocation(line: 197, column: 2, scope: !935)
!993 = distinct !DISubprogram(name: "acpi_ps_cleanup_scope", scope: !1, file: !1, line: 213, type: !994, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !788}
!996 = !DILocalVariable(name: "parser_state", arg: 1, scope: !993, file: !1, line: 213, type: !788)
!997 = !DILocation(line: 213, column: 53, scope: !993)
!998 = !DILocalVariable(name: "scope", scope: !993, file: !1, line: 215, type: !181)
!999 = !DILocation(line: 215, column: 28, scope: !993)
!1000 = !DILocation(line: 219, column: 7, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !993, file: !1, line: 219, column: 6)
!1002 = !DILocation(line: 219, column: 6, scope: !993)
!1003 = !DILocation(line: 220, column: 3, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 219, column: 21)
!1005 = !DILocation(line: 225, column: 2, scope: !993)
!1006 = !DILocation(line: 225, column: 9, scope: !993)
!1007 = !DILocation(line: 225, column: 23, scope: !993)
!1008 = !DILocation(line: 226, column: 38, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !993, file: !1, line: 225, column: 30)
!1010 = !DILocation(line: 226, column: 52, scope: !1009)
!1011 = !DILocation(line: 226, column: 11, scope: !1009)
!1012 = !DILocation(line: 226, column: 9, scope: !1009)
!1013 = !DILocation(line: 227, column: 32, scope: !1009)
!1014 = !DILocation(line: 227, column: 3, scope: !1009)
!1015 = distinct !{!1015, !1005, !1016}
!1016 = !DILocation(line: 228, column: 2, scope: !993)
!1017 = !DILocation(line: 230, column: 2, scope: !993)
!1018 = !DILocation(line: 231, column: 1, scope: !993)
