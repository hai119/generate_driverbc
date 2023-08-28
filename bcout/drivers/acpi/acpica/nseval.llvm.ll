; ModuleID = '../bcout/drivers/acpi/acpica/nseval.llvm.bc'
source_filename = "drivers/acpi/acpica/nseval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
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

@_acpi_module_name = internal constant [7 x i8] c"nseval\00", align 1, !dbg !0
@.str = private unnamed_addr constant [38 x i8] c"Excess arguments (%u) - using only %u\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"%s: This object type [%s] never contains data and cannot be evaluated\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: Method has no attached sub-object\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info* %info) #0 !dbg !790 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !858, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.declare(metadata i32* %status, metadata !860, metadata !DIExpression()), !dbg !861
  %0 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !862
  %tobool = icmp ne %struct.acpi_evaluate_info* %0, null, !dbg !862
  br i1 %tobool, label %if.end, label %if.then, !dbg !864

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !865
  br label %return, !dbg !865

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !867
  %node = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %1, i32 0, i32 3, !dbg !869
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !869
  %tobool1 = icmp ne %struct.acpi_namespace_node* %2, null, !dbg !867
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !870

if.then2:                                         ; preds = %if.end
  %3 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !871
  %prefix_node = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %3, i32 0, i32 0, !dbg !873
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !873
  %5 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !874
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %5, i32 0, i32 1, !dbg !875
  %6 = load i8*, i8** %relative_pathname, align 8, !dbg !875
  %7 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !876
  %node3 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %7, i32 0, i32 3, !dbg !877
  %call = call i32 @acpi_ns_get_node(%struct.acpi_namespace_node* %4, i8* %6, i32 0, %struct.acpi_namespace_node** %node3) #3, !dbg !878
  store i32 %call, i32* %status, align 4, !dbg !879
  %8 = load i32, i32* %status, align 4, !dbg !880
  %tobool4 = icmp ne i32 %8, 0, !dbg !880
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !882

if.then5:                                         ; preds = %if.then2
  %9 = load i32, i32* %status, align 4, !dbg !883
  store i32 %9, i32* %retval, align 4, !dbg !883
  br label %return, !dbg !883

if.end6:                                          ; preds = %if.then2
  br label %if.end7, !dbg !885

if.end7:                                          ; preds = %if.end6, %if.end
  %10 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !886
  %node8 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %10, i32 0, i32 3, !dbg !888
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node8, align 8, !dbg !888
  %call9 = call i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %11) #3, !dbg !889
  %cmp = icmp eq i32 %call9, 22, !dbg !890
  br i1 %cmp, label %if.then10, label %if.end13, !dbg !891

if.then10:                                        ; preds = %if.end7
  %12 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !892
  %node11 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %12, i32 0, i32 3, !dbg !892
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node11, align 8, !dbg !892
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %13, i32 0, i32 0, !dbg !892
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !892
  %15 = bitcast %union.acpi_operand_object* %14 to i8*, !dbg !892
  %16 = bitcast i8* %15 to %struct.acpi_namespace_node*, !dbg !892
  %17 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !894
  %node12 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %17, i32 0, i32 3, !dbg !895
  store %struct.acpi_namespace_node* %16, %struct.acpi_namespace_node** %node12, align 8, !dbg !896
  br label %if.end13, !dbg !897

if.end13:                                         ; preds = %if.then10, %if.end7
  %18 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !898
  %return_object = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %18, i32 0, i32 7, !dbg !899
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_object, align 8, !dbg !900
  %19 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !901
  %node14 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %19, i32 0, i32 3, !dbg !902
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node14, align 8, !dbg !902
  %flags = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %20, i32 0, i32 3, !dbg !903
  %21 = load i16, i16* %flags, align 2, !dbg !903
  %22 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !904
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %22, i32 0, i32 12, !dbg !905
  store i16 %21, i16* %node_flags, align 2, !dbg !906
  %23 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !907
  %node15 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %23, i32 0, i32 3, !dbg !908
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node15, align 8, !dbg !908
  %call16 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %24) #3, !dbg !909
  %25 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !910
  %obj_desc = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %25, i32 0, i32 4, !dbg !911
  store %union.acpi_operand_object* %call16, %union.acpi_operand_object** %obj_desc, align 8, !dbg !912
  %26 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !913
  %node17 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %26, i32 0, i32 3, !dbg !914
  %27 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node17, align 8, !dbg !914
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %27, i32 0, i32 4, !dbg !915
  %ascii = bitcast %union.acpi_name_union* %name to [4 x i8]*, !dbg !916
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !913
  %call18 = call %union.acpi_predefined_info* @acpi_ut_match_predefined_method(i8* %arraydecay) #3, !dbg !917
  %28 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !918
  %predefined = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %28, i32 0, i32 6, !dbg !919
  store %union.acpi_predefined_info* %call18, %union.acpi_predefined_info** %predefined, align 8, !dbg !920
  %29 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !921
  %node19 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %29, i32 0, i32 3, !dbg !922
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node19, align 8, !dbg !922
  %call20 = call i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node* %30, i8 zeroext 1) #3, !dbg !923
  %31 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !924
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %31, i32 0, i32 5, !dbg !925
  store i8* %call20, i8** %full_pathname, align 8, !dbg !926
  %32 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !927
  %full_pathname21 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %32, i32 0, i32 5, !dbg !929
  %33 = load i8*, i8** %full_pathname21, align 8, !dbg !929
  %tobool22 = icmp ne i8* %33, null, !dbg !927
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !930

if.then23:                                        ; preds = %if.end13
  store i32 4, i32* %retval, align 4, !dbg !931
  br label %return, !dbg !931

if.end24:                                         ; preds = %if.end13
  %34 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !933
  %param_count = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %34, i32 0, i32 11, !dbg !934
  store i16 0, i16* %param_count, align 8, !dbg !935
  %35 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !936
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %35, i32 0, i32 2, !dbg !938
  %36 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %parameters, align 8, !dbg !938
  %tobool25 = icmp ne %union.acpi_operand_object** %36, null, !dbg !936
  br i1 %tobool25, label %if.then26, label %if.end40, !dbg !939

if.then26:                                        ; preds = %if.end24
  br label %while.cond, !dbg !940

while.cond:                                       ; preds = %while.body, %if.then26
  %37 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !942
  %parameters27 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %37, i32 0, i32 2, !dbg !943
  %38 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %parameters27, align 8, !dbg !943
  %39 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !944
  %param_count28 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %39, i32 0, i32 11, !dbg !945
  %40 = load i16, i16* %param_count28, align 8, !dbg !945
  %idxprom = zext i16 %40 to i64, !dbg !942
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %38, i64 %idxprom, !dbg !942
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !942
  %tobool29 = icmp ne %union.acpi_operand_object* %41, null, !dbg !940
  br i1 %tobool29, label %while.body, label %while.end, !dbg !940

while.body:                                       ; preds = %while.cond
  %42 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !946
  %param_count30 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %42, i32 0, i32 11, !dbg !948
  %43 = load i16, i16* %param_count30, align 8, !dbg !949
  %inc = add i16 %43, 1, !dbg !949
  store i16 %inc, i16* %param_count30, align 8, !dbg !949
  br label %while.cond, !dbg !940, !llvm.loop !950

while.end:                                        ; preds = %while.cond
  %44 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !952
  %param_count31 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %44, i32 0, i32 11, !dbg !954
  %45 = load i16, i16* %param_count31, align 8, !dbg !954
  %conv = zext i16 %45 to i32, !dbg !952
  %cmp32 = icmp sgt i32 %conv, 7, !dbg !955
  br i1 %cmp32, label %if.then34, label %if.end39, !dbg !956

if.then34:                                        ; preds = %while.end
  %46 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !957
  %full_pathname35 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %46, i32 0, i32 5, !dbg !957
  %47 = load i8*, i8** %full_pathname35, align 8, !dbg !957
  %48 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !957
  %param_count36 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %48, i32 0, i32 11, !dbg !957
  %49 = load i16, i16* %param_count36, align 8, !dbg !957
  %conv37 = zext i16 %49 to i32, !dbg !957
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 119, i8* %47, i16 zeroext 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %conv37, i32 7) #3, !dbg !957
  %50 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !959
  %param_count38 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %50, i32 0, i32 11, !dbg !960
  store i16 7, i16* %param_count38, align 8, !dbg !961
  br label %if.end39, !dbg !962

if.end39:                                         ; preds = %if.then34, %while.end
  br label %if.end40, !dbg !963

if.end40:                                         ; preds = %if.end39, %if.end24
  %51 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !964
  %full_pathname41 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %51, i32 0, i32 5, !dbg !965
  %52 = load i8*, i8** %full_pathname41, align 8, !dbg !965
  %53 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !966
  %node42 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %53, i32 0, i32 3, !dbg !967
  %54 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node42, align 8, !dbg !967
  %55 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !968
  %predefined43 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %55, i32 0, i32 6, !dbg !969
  %56 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined43, align 8, !dbg !969
  call void @acpi_ns_check_acpi_compliance(i8* %52, %struct.acpi_namespace_node* %54, %union.acpi_predefined_info* %56) #3, !dbg !970
  %57 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !971
  %full_pathname44 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %57, i32 0, i32 5, !dbg !972
  %58 = load i8*, i8** %full_pathname44, align 8, !dbg !972
  %59 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !973
  %node45 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %59, i32 0, i32 3, !dbg !974
  %60 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node45, align 8, !dbg !974
  %61 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !975
  %param_count46 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %61, i32 0, i32 11, !dbg !976
  %62 = load i16, i16* %param_count46, align 8, !dbg !976
  %conv47 = zext i16 %62 to i32, !dbg !975
  %63 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !977
  %predefined48 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %63, i32 0, i32 6, !dbg !978
  %64 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined48, align 8, !dbg !978
  call void @acpi_ns_check_argument_count(i8* %58, %struct.acpi_namespace_node* %60, i32 %conv47, %union.acpi_predefined_info* %64) #3, !dbg !979
  %65 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !980
  call void @acpi_ns_check_argument_types(%struct.acpi_evaluate_info* %65) #3, !dbg !981
  %66 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !982
  %node49 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %66, i32 0, i32 3, !dbg !983
  %67 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node49, align 8, !dbg !983
  %call50 = call i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %67) #3, !dbg !984
  switch i32 %call50, label %sw.default [
    i32 0, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 27, label %sw.bb
    i32 8, label %sw.bb55
  ], !dbg !985

sw.bb:                                            ; preds = %if.end40, %if.end40, %if.end40, %if.end40, %if.end40, %if.end40, %if.end40
  %68 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !986
  %full_pathname51 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %68, i32 0, i32 5, !dbg !986
  %69 = load i8*, i8** %full_pathname51, align 8, !dbg !986
  %70 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !986
  %node52 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %70, i32 0, i32 3, !dbg !986
  %71 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node52, align 8, !dbg !986
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %71, i32 0, i32 2, !dbg !986
  %72 = load i8, i8* %type, align 1, !dbg !986
  %conv53 = zext i8 %72 to i32, !dbg !986
  %call54 = call i8* @acpi_ut_get_type_name(i32 %conv53) #3, !dbg !986
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 166, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i8* %69, i8* %call54) #3, !dbg !986
  store i32 8, i32* %status, align 4, !dbg !988
  br label %cleanup, !dbg !989

sw.bb55:                                          ; preds = %if.end40
  %73 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !990
  %obj_desc56 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %73, i32 0, i32 4, !dbg !992
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc56, align 8, !dbg !992
  %tobool57 = icmp ne %union.acpi_operand_object* %74, null, !dbg !990
  br i1 %tobool57, label %if.end60, label %if.then58, !dbg !993

if.then58:                                        ; preds = %sw.bb55
  %75 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !994
  %full_pathname59 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %75, i32 0, i32 5, !dbg !994
  %76 = load i8*, i8** %full_pathname59, align 8, !dbg !994
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 183, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %76) #3, !dbg !994
  store i32 9, i32* %status, align 4, !dbg !996
  br label %cleanup, !dbg !997

if.end60:                                         ; preds = %sw.bb55
  call void @acpi_ex_enter_interpreter() #3, !dbg !998
  %77 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !999
  %call61 = call i32 @acpi_ps_execute_method(%struct.acpi_evaluate_info* %77) #3, !dbg !1000
  store i32 %call61, i32* %status, align 4, !dbg !1001
  call void @acpi_ex_exit_interpreter() #3, !dbg !1002
  br label %sw.epilog, !dbg !1003

sw.default:                                       ; preds = %if.end40
  call void @acpi_ex_enter_interpreter() #3, !dbg !1004
  %78 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1005
  %node62 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %78, i32 0, i32 3, !dbg !1005
  %79 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node62, align 8, !dbg !1005
  %80 = bitcast %struct.acpi_namespace_node* %79 to i8*, !dbg !1005
  %81 = bitcast i8* %80 to %union.acpi_operand_object*, !dbg !1005
  %82 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1006
  %return_object63 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %82, i32 0, i32 7, !dbg !1007
  store %union.acpi_operand_object* %81, %union.acpi_operand_object** %return_object63, align 8, !dbg !1008
  %83 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1009
  %return_object64 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %83, i32 0, i32 7, !dbg !1009
  %84 = bitcast %union.acpi_operand_object** %return_object64 to i8*, !dbg !1009
  %85 = bitcast i8* %84 to %struct.acpi_namespace_node**, !dbg !1009
  %call65 = call i32 @acpi_ex_resolve_node_to_value(%struct.acpi_namespace_node** %85, %struct.acpi_walk_state* null) #3, !dbg !1010
  store i32 %call65, i32* %status, align 4, !dbg !1011
  call void @acpi_ex_exit_interpreter() #3, !dbg !1012
  %86 = load i32, i32* %status, align 4, !dbg !1013
  %tobool66 = icmp ne i32 %86, 0, !dbg !1013
  br i1 %tobool66, label %if.then67, label %if.end69, !dbg !1015

if.then67:                                        ; preds = %sw.default
  %87 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1016
  %return_object68 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %87, i32 0, i32 7, !dbg !1018
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_object68, align 8, !dbg !1019
  br label %cleanup, !dbg !1020

if.end69:                                         ; preds = %sw.default
  store i32 16385, i32* %status, align 4, !dbg !1021
  br label %sw.epilog, !dbg !1022

sw.epilog:                                        ; preds = %if.end69, %if.end60
  %88 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1023
  %node70 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %88, i32 0, i32 3, !dbg !1024
  %89 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node70, align 8, !dbg !1024
  %90 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1025
  %91 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1026
  %param_count71 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %91, i32 0, i32 11, !dbg !1027
  %92 = load i16, i16* %param_count71, align 8, !dbg !1027
  %conv72 = zext i16 %92 to i32, !dbg !1026
  %93 = load i32, i32* %status, align 4, !dbg !1028
  %94 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1029
  %return_object73 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %94, i32 0, i32 7, !dbg !1030
  %call74 = call i32 @acpi_ns_check_return_value(%struct.acpi_namespace_node* %89, %struct.acpi_evaluate_info* %90, i32 %conv72, i32 %93, %union.acpi_operand_object** %return_object73) #3, !dbg !1031
  %95 = load i32, i32* %status, align 4, !dbg !1032
  %cmp75 = icmp eq i32 %95, 16385, !dbg !1034
  br i1 %cmp75, label %if.then77, label %if.else, !dbg !1035

if.then77:                                        ; preds = %sw.epilog
  %96 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1036
  %flags78 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %96, i32 0, i32 15, !dbg !1039
  %97 = load i8, i8* %flags78, align 2, !dbg !1039
  %conv79 = zext i8 %97 to i32, !dbg !1036
  %and = and i32 %conv79, 1, !dbg !1040
  %tobool80 = icmp ne i32 %and, 0, !dbg !1040
  br i1 %tobool80, label %if.then81, label %if.end84, !dbg !1041

if.then81:                                        ; preds = %if.then77
  %98 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1042
  %return_object82 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %98, i32 0, i32 7, !dbg !1044
  %99 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object82, align 8, !dbg !1044
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %99) #3, !dbg !1045
  %100 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1046
  %return_object83 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %100, i32 0, i32 7, !dbg !1047
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_object83, align 8, !dbg !1048
  br label %if.end84, !dbg !1049

if.end84:                                         ; preds = %if.then81, %if.then77
  store i32 0, i32* %status, align 4, !dbg !1050
  br label %if.end94, !dbg !1051

if.else:                                          ; preds = %sw.epilog
  %101 = load i32, i32* %status, align 4, !dbg !1052
  %tobool85 = icmp ne i32 %101, 0, !dbg !1052
  br i1 %tobool85, label %if.then86, label %if.end93, !dbg !1054

if.then86:                                        ; preds = %if.else
  %102 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1055
  %return_object87 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %102, i32 0, i32 7, !dbg !1058
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object87, align 8, !dbg !1058
  %tobool88 = icmp ne %union.acpi_operand_object* %103, null, !dbg !1055
  br i1 %tobool88, label %if.then89, label %if.end92, !dbg !1059

if.then89:                                        ; preds = %if.then86
  %104 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1060
  %return_object90 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %104, i32 0, i32 7, !dbg !1062
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object90, align 8, !dbg !1062
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %105) #3, !dbg !1063
  %106 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1064
  %return_object91 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %106, i32 0, i32 7, !dbg !1065
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_object91, align 8, !dbg !1066
  br label %if.end92, !dbg !1067

if.end92:                                         ; preds = %if.then89, %if.then86
  br label %if.end93, !dbg !1068

if.end93:                                         ; preds = %if.end92, %if.else
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end84
  br label %cleanup, !dbg !1069

cleanup:                                          ; preds = %if.end94, %if.then67, %if.then58, %sw.bb
  call void @llvm.dbg.label(metadata !1070), !dbg !1071
  %107 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1072
  %full_pathname95 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %107, i32 0, i32 5, !dbg !1072
  %108 = load i8*, i8** %full_pathname95, align 8, !dbg !1072
  call void @acpi_os_free(i8* %108) #3, !dbg !1072
  %109 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1073
  %full_pathname96 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %109, i32 0, i32 5, !dbg !1074
  store i8* null, i8** %full_pathname96, align 8, !dbg !1075
  %110 = load i32, i32* %status, align 4, !dbg !1076
  store i32 %110, i32* %retval, align 4, !dbg !1076
  br label %return, !dbg !1076

return:                                           ; preds = %cleanup, %if.then23, %if.then5, %if.then
  %111 = load i32, i32* %retval, align 4, !dbg !1077
  ret i32 %111, !dbg !1077
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_node(%struct.acpi_namespace_node*, i8*, i32, %struct.acpi_namespace_node**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_type(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_predefined_info* @acpi_ut_match_predefined_method(i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_predefined_warning(i8*, i32, i8*, i16 zeroext, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ns_check_acpi_compliance(i8*, %struct.acpi_namespace_node*, %union.acpi_predefined_info*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ns_check_argument_count(i8*, %struct.acpi_namespace_node*, i32, %union.acpi_predefined_info*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ns_check_argument_types(%struct.acpi_evaluate_info*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_enter_interpreter() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_execute_method(%struct.acpi_evaluate_info*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_exit_interpreter() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_node_to_value(%struct.acpi_namespace_node**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_check_return_value(%struct.acpi_namespace_node*, %struct.acpi_evaluate_info*, i32, i32, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1078 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1082, metadata !DIExpression()), !dbg !1083
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1084
  call void @kfree(i8* %0) #3, !dbg !1085
  ret void, !dbg !1086
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!785, !786, !787, !788}
!llvm.ident = !{!789}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !783, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !782, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nseval.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !101, !18, !781}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !15, line: 133, size: 384, elements: !16)
!15 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!16 = !{!17, !768, !769, !770, !771, !777, !778, !779, !780}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !14, file: !15, line: 134, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !20, line: 367, size: 576, elements: !21)
!20 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !36, !52, !64, !78, !92, !102, !419, !436, !451, !464, !542, !554, !568, !578, !596, !618, !637, !656, !675, !688, !714, !731, !744, !758, !767}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !19, file: !20, line: 368, baseType: !23, size: 128)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !20, line: 73, size: 128, elements: !24)
!24 = !{!25, !26, !30, !31, !35}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !23, file: !20, line: 74, baseType: !18, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !23, file: !20, line: 74, baseType: !27, size: 8, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !29)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !23, file: !20, line: 74, baseType: !27, size: 8, offset: 72)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !23, file: !20, line: 74, baseType: !32, size: 16, offset: 80)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !34)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !20, line: 74, baseType: !27, size: 8, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !19, file: !20, line: 369, baseType: !37, size: 192)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !20, line: 76, size: 192, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !48}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !37, file: !20, line: 77, baseType: !18, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !37, file: !20, line: 77, baseType: !27, size: 8, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !37, file: !20, line: 77, baseType: !27, size: 8, offset: 72)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !37, file: !20, line: 77, baseType: !32, size: 16, offset: 80)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !37, file: !20, line: 77, baseType: !27, size: 8, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !37, file: !20, line: 77, baseType: !45, size: 24, offset: 104)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 3)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !37, file: !20, line: 78, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !51)
!51 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !19, file: !20, line: 370, baseType: !53, size: 256)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !20, line: 93, size: 256, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !63}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !53, file: !20, line: 94, baseType: !18, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !53, file: !20, line: 94, baseType: !27, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !20, line: 94, baseType: !27, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !53, file: !20, line: 94, baseType: !32, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !20, line: 94, baseType: !27, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !53, file: !20, line: 94, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !53, file: !20, line: 94, baseType: !8, size: 32, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !19, file: !20, line: 371, baseType: !65, size: 384)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !20, line: 97, size: 384, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !74, !75, !76, !77}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !65, file: !20, line: 98, baseType: !18, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !65, file: !20, line: 98, baseType: !27, size: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !20, line: 98, baseType: !27, size: 8, offset: 72)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !65, file: !20, line: 98, baseType: !32, size: 16, offset: 80)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !20, line: 98, baseType: !27, size: 8, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !65, file: !20, line: 98, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !65, file: !20, line: 98, baseType: !8, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !65, file: !20, line: 99, baseType: !8, size: 32, offset: 224)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !65, file: !20, line: 100, baseType: !73, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !65, file: !20, line: 101, baseType: !13, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !19, file: !20, line: 372, baseType: !79, size: 384)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !20, line: 104, size: 384, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !89, !90, !91}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !79, file: !20, line: 105, baseType: !18, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !20, line: 105, baseType: !27, size: 8, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !20, line: 105, baseType: !27, size: 8, offset: 72)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !79, file: !20, line: 105, baseType: !32, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !20, line: 105, baseType: !27, size: 8, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !79, file: !20, line: 105, baseType: !13, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !79, file: !20, line: 106, baseType: !88, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !79, file: !20, line: 107, baseType: !73, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !79, file: !20, line: 108, baseType: !8, size: 32, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !79, file: !20, line: 109, baseType: !8, size: 32, offset: 352)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !19, file: !20, line: 373, baseType: !93, size: 192)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !20, line: 118, size: 192, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !93, file: !20, line: 119, baseType: !18, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !20, line: 119, baseType: !27, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !20, line: 119, baseType: !27, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !93, file: !20, line: 119, baseType: !32, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !20, line: 119, baseType: !27, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !93, file: !20, line: 119, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !19, file: !20, line: 374, baseType: !103, size: 448)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !20, line: 143, size: 448, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !416, !417, !418}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !20, line: 144, baseType: !18, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !20, line: 144, baseType: !27, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !20, line: 144, baseType: !27, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !20, line: 144, baseType: !32, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !20, line: 144, baseType: !27, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !103, file: !20, line: 144, baseType: !27, size: 8, offset: 104)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !103, file: !20, line: 145, baseType: !27, size: 8, offset: 112)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !103, file: !20, line: 146, baseType: !27, size: 8, offset: 120)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !103, file: !20, line: 147, baseType: !18, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !103, file: !20, line: 148, baseType: !18, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !103, file: !20, line: 149, baseType: !73, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !103, file: !20, line: 153, baseType: !117, size: 64, offset: 320)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !20, line: 150, size: 64, elements: !118)
!118 = !{!119, !415}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !117, file: !20, line: 151, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !15, line: 248, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!6, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !126, line: 37, size: 9024, elements: !127)
!126 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !361, !362, !363, !364, !365, !369, !371, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !398, !399, !400, !401, !402, !403, !404, !405, !407, !413}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !126, line: 38, baseType: !124, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !126, line: 39, baseType: !27, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !125, file: !126, line: 40, baseType: !27, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !125, file: !126, line: 41, baseType: !32, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !125, file: !126, line: 42, baseType: !27, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !125, file: !126, line: 43, baseType: !27, size: 8, offset: 104)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !125, file: !126, line: 44, baseType: !27, size: 8, offset: 112)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !125, file: !126, line: 45, baseType: !136, size: 16, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !125, file: !126, line: 46, baseType: !27, size: 8, offset: 144)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !125, file: !126, line: 47, baseType: !27, size: 8, offset: 152)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !125, file: !126, line: 48, baseType: !27, size: 8, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !125, file: !126, line: 49, baseType: !27, size: 8, offset: 168)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !125, file: !126, line: 50, baseType: !27, size: 8, offset: 176)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !125, file: !126, line: 51, baseType: !27, size: 8, offset: 184)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !125, file: !126, line: 52, baseType: !27, size: 8, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !125, file: !126, line: 53, baseType: !27, size: 8, offset: 200)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !125, file: !126, line: 54, baseType: !73, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !125, file: !126, line: 55, baseType: !8, size: 32, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !125, file: !126, line: 56, baseType: !8, size: 32, offset: 352)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !125, file: !126, line: 57, baseType: !8, size: 32, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !125, file: !126, line: 58, baseType: !8, size: 32, offset: 416)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !125, file: !126, line: 60, baseType: !151, size: 640, offset: 448)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !15, line: 893, size: 640, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !242, !243, !359, !360}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !151, file: !15, line: 894, baseType: !73, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !151, file: !15, line: 895, baseType: !73, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !151, file: !15, line: 896, baseType: !73, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !151, file: !15, line: 897, baseType: !73, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !151, file: !15, line: 898, baseType: !73, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !151, file: !15, line: 899, baseType: !159, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !15, line: 875, size: 1600, elements: !161)
!161 = !{!162, !182, !198}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !160, file: !15, line: 876, baseType: !163, size: 448)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !15, line: 828, size: 448, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !181}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !163, file: !15, line: 829, baseType: !159, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !163, file: !15, line: 829, baseType: !27, size: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !15, line: 829, baseType: !27, size: 8, offset: 72)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !163, file: !15, line: 829, baseType: !32, size: 16, offset: 80)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !163, file: !15, line: 829, baseType: !73, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !15, line: 829, baseType: !159, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !163, file: !15, line: 829, baseType: !13, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !163, file: !15, line: 829, baseType: !173, size: 64, offset: 320)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !15, line: 716, size: 64, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !173, file: !15, line: 717, baseType: !49, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !173, file: !15, line: 718, baseType: !8, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !173, file: !15, line: 719, baseType: !61, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !173, file: !15, line: 720, baseType: !73, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !15, line: 721, baseType: !61, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !173, file: !15, line: 722, baseType: !159, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !163, file: !15, line: 829, baseType: !27, size: 8, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !160, file: !15, line: 877, baseType: !183, size: 640)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !15, line: 835, size: 640, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !15, line: 836, baseType: !159, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !183, file: !15, line: 836, baseType: !27, size: 8, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !15, line: 836, baseType: !27, size: 8, offset: 72)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !183, file: !15, line: 836, baseType: !32, size: 16, offset: 80)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !183, file: !15, line: 836, baseType: !73, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !15, line: 836, baseType: !159, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !183, file: !15, line: 836, baseType: !13, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !183, file: !15, line: 836, baseType: !173, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !183, file: !15, line: 836, baseType: !27, size: 8, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !183, file: !15, line: 836, baseType: !61, size: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !183, file: !15, line: 837, baseType: !73, size: 64, offset: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !183, file: !15, line: 838, baseType: !8, size: 32, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !15, line: 839, baseType: !8, size: 32, offset: 608)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !160, file: !15, line: 878, baseType: !199, size: 1600)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !15, line: 846, size: 1600, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !15, line: 847, baseType: !159, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !15, line: 847, baseType: !27, size: 8, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !15, line: 847, baseType: !27, size: 8, offset: 72)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !199, file: !15, line: 847, baseType: !32, size: 16, offset: 80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !199, file: !15, line: 847, baseType: !73, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !15, line: 847, baseType: !159, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !15, line: 847, baseType: !13, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !15, line: 847, baseType: !173, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !199, file: !15, line: 847, baseType: !27, size: 8, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !199, file: !15, line: 847, baseType: !159, size: 64, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !199, file: !15, line: 848, baseType: !159, size: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !199, file: !15, line: 849, baseType: !61, size: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !199, file: !15, line: 850, baseType: !27, size: 8, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !199, file: !15, line: 851, baseType: !61, size: 64, offset: 704)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !199, file: !15, line: 852, baseType: !61, size: 64, offset: 768)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !199, file: !15, line: 853, baseType: !61, size: 64, offset: 832)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !199, file: !15, line: 854, baseType: !218, size: 32, offset: 896)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 4)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !199, file: !15, line: 855, baseType: !8, size: 32, offset: 928)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !199, file: !15, line: 856, baseType: !8, size: 32, offset: 960)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !199, file: !15, line: 857, baseType: !8, size: 32, offset: 992)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !199, file: !15, line: 858, baseType: !8, size: 32, offset: 1024)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !199, file: !15, line: 859, baseType: !8, size: 32, offset: 1056)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !199, file: !15, line: 860, baseType: !8, size: 32, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !199, file: !15, line: 861, baseType: !8, size: 32, offset: 1120)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !199, file: !15, line: 862, baseType: !8, size: 32, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !199, file: !15, line: 863, baseType: !8, size: 32, offset: 1184)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !199, file: !15, line: 864, baseType: !8, size: 32, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !199, file: !15, line: 865, baseType: !8, size: 32, offset: 1248)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !199, file: !15, line: 866, baseType: !8, size: 32, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !199, file: !15, line: 867, baseType: !8, size: 32, offset: 1312)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !199, file: !15, line: 868, baseType: !32, size: 16, offset: 1344)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !199, file: !15, line: 869, baseType: !27, size: 8, offset: 1360)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !199, file: !15, line: 870, baseType: !27, size: 8, offset: 1368)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !199, file: !15, line: 871, baseType: !27, size: 8, offset: 1376)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !199, file: !15, line: 872, baseType: !239, size: 160, offset: 1384)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 160, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 20)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !151, file: !15, line: 900, baseType: !13, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !151, file: !15, line: 901, baseType: !244, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !15, line: 663, size: 640, elements: !246)
!246 = !{!247, !255, !268, !277, !286, !299, !313, !325, !337}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !245, file: !15, line: 664, baseType: !248, size: 128)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !15, line: 567, size: 128, elements: !249)
!249 = !{!250, !251, !252, !253, !254}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !15, line: 568, baseType: !101, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !248, file: !15, line: 568, baseType: !27, size: 8, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !15, line: 568, baseType: !27, size: 8, offset: 72)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !248, file: !15, line: 568, baseType: !32, size: 16, offset: 80)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !248, file: !15, line: 568, baseType: !32, size: 16, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !245, file: !15, line: 665, baseType: !256, size: 384)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !15, line: 593, size: 384, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !15, line: 594, baseType: !101, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !256, file: !15, line: 594, baseType: !27, size: 8, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !256, file: !15, line: 594, baseType: !27, size: 8, offset: 72)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !256, file: !15, line: 594, baseType: !32, size: 16, offset: 80)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !256, file: !15, line: 594, baseType: !32, size: 16, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !256, file: !15, line: 594, baseType: !32, size: 16, offset: 112)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !256, file: !15, line: 595, baseType: !159, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !256, file: !15, line: 596, baseType: !73, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !256, file: !15, line: 597, baseType: !73, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !256, file: !15, line: 598, baseType: !49, size: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !245, file: !15, line: 666, baseType: !269, size: 192)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !15, line: 573, size: 192, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !15, line: 574, baseType: !101, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !269, file: !15, line: 574, baseType: !27, size: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !15, line: 574, baseType: !27, size: 8, offset: 72)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !269, file: !15, line: 574, baseType: !32, size: 16, offset: 80)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !15, line: 574, baseType: !32, size: 16, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !269, file: !15, line: 574, baseType: !18, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !245, file: !15, line: 667, baseType: !278, size: 192)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !15, line: 604, size: 192, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !15, line: 605, baseType: !101, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !15, line: 605, baseType: !27, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !15, line: 605, baseType: !27, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !15, line: 605, baseType: !32, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !15, line: 605, baseType: !32, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !278, file: !15, line: 605, baseType: !13, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !245, file: !15, line: 668, baseType: !287, size: 448)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !15, line: 608, size: 448, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !15, line: 609, baseType: !101, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !15, line: 609, baseType: !27, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !15, line: 609, baseType: !27, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !15, line: 609, baseType: !32, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !15, line: 609, baseType: !32, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !287, file: !15, line: 609, baseType: !8, size: 32, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !287, file: !15, line: 610, baseType: !159, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !287, file: !15, line: 611, baseType: !73, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !287, file: !15, line: 612, baseType: !73, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !287, file: !15, line: 613, baseType: !8, size: 32, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !245, file: !15, line: 669, baseType: !300, size: 512)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !15, line: 580, size: 512, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !15, line: 581, baseType: !101, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !15, line: 581, baseType: !27, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !15, line: 581, baseType: !27, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !15, line: 581, baseType: !32, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !15, line: 581, baseType: !32, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !300, file: !15, line: 581, baseType: !8, size: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !300, file: !15, line: 582, baseType: !18, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !300, file: !15, line: 583, baseType: !18, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !300, file: !15, line: 584, baseType: !124, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !300, file: !15, line: 585, baseType: !101, size: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !300, file: !15, line: 586, baseType: !8, size: 32, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !245, file: !15, line: 670, baseType: !314, size: 320)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !15, line: 620, size: 320, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !15, line: 621, baseType: !101, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !15, line: 621, baseType: !27, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !15, line: 621, baseType: !27, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !15, line: 621, baseType: !32, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !15, line: 621, baseType: !32, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !314, file: !15, line: 621, baseType: !27, size: 8, offset: 112)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !314, file: !15, line: 622, baseType: !124, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !314, file: !15, line: 623, baseType: !18, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !314, file: !15, line: 624, baseType: !49, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !245, file: !15, line: 671, baseType: !326, size: 640)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !15, line: 631, size: 640, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !15, line: 632, baseType: !101, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !326, file: !15, line: 632, baseType: !27, size: 8, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !15, line: 632, baseType: !27, size: 8, offset: 72)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !326, file: !15, line: 632, baseType: !32, size: 16, offset: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !326, file: !15, line: 632, baseType: !32, size: 16, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !326, file: !15, line: 633, baseType: !334, size: 512, offset: 128)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 8)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !245, file: !15, line: 672, baseType: !338, size: 320)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !15, line: 654, size: 320, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !338, file: !15, line: 655, baseType: !101, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !338, file: !15, line: 655, baseType: !27, size: 8, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !15, line: 655, baseType: !27, size: 8, offset: 72)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !338, file: !15, line: 655, baseType: !32, size: 16, offset: 80)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !338, file: !15, line: 655, baseType: !32, size: 16, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !338, file: !15, line: 655, baseType: !27, size: 8, offset: 112)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !338, file: !15, line: 656, baseType: !13, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !338, file: !15, line: 657, baseType: !18, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !338, file: !15, line: 658, baseType: !349, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !15, line: 645, size: 128, elements: !351)
!351 = !{!352, !358}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !350, file: !15, line: 646, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357, !8, !101}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !101)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !350, file: !15, line: 647, baseType: !101, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !151, file: !15, line: 902, baseType: !159, size: 64, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !151, file: !15, line: 903, baseType: !8, size: 32, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !125, file: !126, line: 61, baseType: !8, size: 32, offset: 1088)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !125, file: !126, line: 62, baseType: !8, size: 32, offset: 1120)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !125, file: !126, line: 63, baseType: !32, size: 16, offset: 1152)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !125, file: !126, line: 64, baseType: !27, size: 8, offset: 1168)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !125, file: !126, line: 66, baseType: !366, size: 2688, offset: 1216)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2688, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 7)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !125, file: !126, line: 67, baseType: !370, size: 3072, offset: 3904)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 3072, elements: !335)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !125, file: !126, line: 68, baseType: !372, size: 576, offset: 6976)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 576, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 9)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !125, file: !126, line: 69, baseType: !88, size: 64, offset: 7552)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !125, file: !126, line: 71, baseType: !73, size: 64, offset: 7616)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !125, file: !126, line: 72, baseType: !88, size: 64, offset: 7680)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !125, file: !126, line: 73, baseType: !244, size: 64, offset: 7744)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !125, file: !126, line: 74, baseType: !13, size: 64, offset: 7808)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !125, file: !126, line: 75, baseType: !18, size: 64, offset: 7872)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !125, file: !126, line: 76, baseType: !13, size: 64, offset: 7936)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !125, file: !126, line: 77, baseType: !159, size: 64, offset: 8000)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !125, file: !126, line: 78, baseType: !18, size: 64, offset: 8064)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !125, file: !126, line: 79, baseType: !13, size: 64, offset: 8128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !125, file: !126, line: 80, baseType: !61, size: 64, offset: 8192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !125, file: !126, line: 81, baseType: !159, size: 64, offset: 8256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !125, file: !126, line: 82, baseType: !388, size: 64, offset: 8320)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !15, line: 702, size: 128, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !390, file: !15, line: 706, baseType: !8, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !390, file: !15, line: 707, baseType: !8, size: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !15, line: 708, baseType: !32, size: 16, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !390, file: !15, line: 709, baseType: !27, size: 8, offset: 80)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !390, file: !15, line: 710, baseType: !27, size: 8, offset: 88)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !15, line: 711, baseType: !27, size: 8, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !125, file: !126, line: 83, baseType: !159, size: 64, offset: 8384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !125, file: !126, line: 84, baseType: !18, size: 64, offset: 8448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !125, file: !126, line: 85, baseType: !244, size: 64, offset: 8512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !125, file: !126, line: 86, baseType: !18, size: 64, offset: 8576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !125, file: !126, line: 87, baseType: !244, size: 64, offset: 8640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !125, file: !126, line: 88, baseType: !159, size: 64, offset: 8704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !125, file: !126, line: 89, baseType: !159, size: 64, offset: 8768)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !125, file: !126, line: 90, baseType: !406, size: 64, offset: 8832)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !125, file: !126, line: 91, baseType: !408, size: 64, offset: 8896)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !15, line: 637, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!6, !124, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !125, file: !126, line: 92, baseType: !414, size: 64, offset: 8960)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !15, line: 641, baseType: !121)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !117, file: !20, line: 152, baseType: !18, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !103, file: !20, line: 155, baseType: !8, size: 32, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !103, file: !20, line: 156, baseType: !136, size: 16, offset: 416)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !103, file: !20, line: 157, baseType: !27, size: 8, offset: 432)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !19, file: !20, line: 375, baseType: !420, size: 576)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !20, line: 122, size: 576, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !420, file: !20, line: 123, baseType: !18, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !420, file: !20, line: 123, baseType: !27, size: 8, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !420, file: !20, line: 123, baseType: !27, size: 8, offset: 72)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !420, file: !20, line: 123, baseType: !32, size: 16, offset: 80)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !20, line: 123, baseType: !27, size: 8, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !420, file: !20, line: 123, baseType: !27, size: 8, offset: 104)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !420, file: !20, line: 124, baseType: !32, size: 16, offset: 112)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !420, file: !20, line: 125, baseType: !101, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !420, file: !20, line: 126, baseType: !49, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !420, file: !20, line: 127, baseType: !406, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !420, file: !20, line: 128, baseType: !18, size: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !420, file: !20, line: 129, baseType: !18, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !420, file: !20, line: 130, baseType: !13, size: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !420, file: !20, line: 131, baseType: !27, size: 8, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !19, file: !20, line: 376, baseType: !437, size: 448)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !20, line: 134, size: 448, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !450}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !437, file: !20, line: 135, baseType: !18, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !437, file: !20, line: 135, baseType: !27, size: 8, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !437, file: !20, line: 135, baseType: !27, size: 8, offset: 72)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !437, file: !20, line: 135, baseType: !32, size: 16, offset: 80)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !437, file: !20, line: 135, baseType: !27, size: 8, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !437, file: !20, line: 135, baseType: !27, size: 8, offset: 104)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !437, file: !20, line: 136, baseType: !13, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !437, file: !20, line: 137, baseType: !18, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !20, line: 138, baseType: !18, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !437, file: !20, line: 139, baseType: !449, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !49)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !437, file: !20, line: 140, baseType: !8, size: 32, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !19, file: !20, line: 377, baseType: !452, size: 320)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !20, line: 184, size: 320, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !463}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !20, line: 185, baseType: !18, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !20, line: 185, baseType: !27, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !20, line: 185, baseType: !27, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !20, line: 185, baseType: !32, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !20, line: 185, baseType: !27, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !452, file: !20, line: 185, baseType: !460, size: 128, offset: 128)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 2)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !452, file: !20, line: 185, baseType: !18, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !19, file: !20, line: 378, baseType: !465, size: 384)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !20, line: 187, size: 384, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !465, file: !20, line: 188, baseType: !18, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !465, file: !20, line: 188, baseType: !27, size: 8, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !465, file: !20, line: 188, baseType: !27, size: 8, offset: 72)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !465, file: !20, line: 188, baseType: !32, size: 16, offset: 80)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !20, line: 188, baseType: !27, size: 8, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !465, file: !20, line: 189, baseType: !460, size: 128, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !465, file: !20, line: 189, baseType: !18, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !465, file: !20, line: 189, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !15, line: 480, size: 576, elements: !477)
!477 = !{!478, !479, !480, !481, !489, !504, !536, !537, !538, !539, !540, !541}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !476, file: !15, line: 481, baseType: !13, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !476, file: !15, line: 482, baseType: !475, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !15, line: 483, baseType: !475, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !476, file: !15, line: 484, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !15, line: 497, size: 256, elements: !484)
!484 = !{!485, !486, !487, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !483, file: !15, line: 498, baseType: !482, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !483, file: !15, line: 499, baseType: !482, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !483, file: !15, line: 500, baseType: !475, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !483, file: !15, line: 501, baseType: !8, size: 32, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !476, file: !15, line: 485, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !15, line: 466, size: 320, elements: !492)
!492 = !{!493, !498, !499, !500, !501, !502, !503}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !491, file: !15, line: 467, baseType: !494, size: 128)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !15, line: 459, size: 128, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !494, file: !15, line: 460, baseType: !27, size: 8)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !494, file: !15, line: 461, baseType: !49, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !491, file: !15, line: 468, baseType: !494, size: 128, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !491, file: !15, line: 469, baseType: !32, size: 16, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !491, file: !15, line: 470, baseType: !27, size: 8, offset: 272)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !491, file: !15, line: 471, baseType: !27, size: 8, offset: 280)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !491, file: !15, line: 472, baseType: !27, size: 8, offset: 288)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !491, file: !15, line: 473, baseType: !27, size: 8, offset: 296)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !476, file: !15, line: 486, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !15, line: 448, size: 192, elements: !507)
!507 = !{!508, !531, !532, !533, !534, !535}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !506, file: !15, line: 449, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !15, line: 438, size: 64, elements: !510)
!510 = !{!511, !512, !525}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !509, file: !15, line: 439, baseType: !13, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !509, file: !15, line: 440, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !15, line: 419, size: 256, elements: !515)
!515 = !{!516, !521, !522, !523, !524}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !15, line: 420, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!8, !357, !8, !101}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !514, file: !15, line: 421, baseType: !101, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !514, file: !15, line: 422, baseType: !13, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !514, file: !15, line: 423, baseType: !27, size: 8, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !514, file: !15, line: 424, baseType: !27, size: 8, offset: 200)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !509, file: !15, line: 441, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !15, line: 429, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !527, file: !15, line: 430, baseType: !13, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !15, line: 431, baseType: !526, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !506, file: !15, line: 450, baseType: !490, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !15, line: 451, baseType: !27, size: 8, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !506, file: !15, line: 452, baseType: !27, size: 8, offset: 136)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !506, file: !15, line: 453, baseType: !27, size: 8, offset: 144)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !506, file: !15, line: 454, baseType: !27, size: 8, offset: 152)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !476, file: !15, line: 487, baseType: !49, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !476, file: !15, line: 488, baseType: !8, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !476, file: !15, line: 489, baseType: !32, size: 16, offset: 480)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !476, file: !15, line: 490, baseType: !32, size: 16, offset: 496)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !476, file: !15, line: 491, baseType: !27, size: 8, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !476, file: !15, line: 492, baseType: !27, size: 8, offset: 520)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !19, file: !20, line: 379, baseType: !543, size: 384)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !20, line: 192, size: 384, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !543, file: !20, line: 193, baseType: !18, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !543, file: !20, line: 193, baseType: !27, size: 8, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !543, file: !20, line: 193, baseType: !27, size: 8, offset: 72)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !543, file: !20, line: 193, baseType: !32, size: 16, offset: 80)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !20, line: 193, baseType: !27, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !543, file: !20, line: 193, baseType: !460, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !20, line: 193, baseType: !18, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !543, file: !20, line: 193, baseType: !8, size: 32, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !543, file: !20, line: 194, baseType: !8, size: 32, offset: 352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !19, file: !20, line: 380, baseType: !555, size: 384)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !20, line: 197, size: 384, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !555, file: !20, line: 198, baseType: !18, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !555, file: !20, line: 198, baseType: !27, size: 8, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !20, line: 198, baseType: !27, size: 8, offset: 72)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !555, file: !20, line: 198, baseType: !32, size: 16, offset: 80)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !20, line: 198, baseType: !27, size: 8, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !555, file: !20, line: 200, baseType: !27, size: 8, offset: 104)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !555, file: !20, line: 201, baseType: !27, size: 8, offset: 112)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !555, file: !20, line: 202, baseType: !460, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !555, file: !20, line: 202, baseType: !18, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !555, file: !20, line: 202, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !49)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !19, file: !20, line: 381, baseType: !569, size: 320)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !20, line: 205, size: 320, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !20, line: 206, baseType: !18, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !20, line: 206, baseType: !27, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !20, line: 206, baseType: !27, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !20, line: 206, baseType: !32, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !20, line: 206, baseType: !27, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !20, line: 206, baseType: !460, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !20, line: 206, baseType: !18, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !19, file: !20, line: 382, baseType: !579, size: 384)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !20, line: 233, size: 384, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !20, line: 234, baseType: !18, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !20, line: 234, baseType: !32, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 104)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 112)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 120)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !579, file: !20, line: 234, baseType: !13, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !579, file: !20, line: 234, baseType: !8, size: 32, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !579, file: !20, line: 234, baseType: !8, size: 32, offset: 224)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !579, file: !20, line: 234, baseType: !8, size: 32, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 288)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 296)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !579, file: !20, line: 234, baseType: !18, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !19, file: !20, line: 383, baseType: !597, size: 576)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !20, line: 237, size: 576, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !20, line: 238, baseType: !18, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !20, line: 238, baseType: !32, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 120)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !20, line: 238, baseType: !13, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !597, file: !20, line: 238, baseType: !8, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !597, file: !20, line: 238, baseType: !8, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !20, line: 238, baseType: !8, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 288)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 296)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !597, file: !20, line: 238, baseType: !32, size: 16, offset: 304)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !597, file: !20, line: 239, baseType: !18, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !597, file: !20, line: 240, baseType: !73, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !597, file: !20, line: 241, baseType: !32, size: 16, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !597, file: !20, line: 242, baseType: !73, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !19, file: !20, line: 384, baseType: !619, size: 384)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !20, line: 262, size: 384, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !20, line: 263, baseType: !18, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !20, line: 263, baseType: !32, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 120)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !20, line: 263, baseType: !13, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !619, file: !20, line: 263, baseType: !8, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !619, file: !20, line: 263, baseType: !8, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !20, line: 263, baseType: !8, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !619, file: !20, line: 264, baseType: !18, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !19, file: !20, line: 385, baseType: !638, size: 448)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !20, line: 245, size: 448, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !20, line: 246, baseType: !18, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !20, line: 246, baseType: !32, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !20, line: 246, baseType: !13, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !20, line: 246, baseType: !8, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !20, line: 246, baseType: !8, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !20, line: 246, baseType: !8, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !638, file: !20, line: 246, baseType: !18, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !638, file: !20, line: 247, baseType: !18, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !19, file: !20, line: 386, baseType: !657, size: 448)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !20, line: 250, size: 448, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !657, file: !20, line: 251, baseType: !18, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 72)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !657, file: !20, line: 251, baseType: !32, size: 16, offset: 80)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 104)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 120)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !20, line: 251, baseType: !13, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !657, file: !20, line: 251, baseType: !8, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !657, file: !20, line: 251, baseType: !8, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !657, file: !20, line: 251, baseType: !8, size: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 296)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !657, file: !20, line: 256, baseType: !18, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !657, file: !20, line: 257, baseType: !18, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !19, file: !20, line: 387, baseType: !676, size: 512)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !20, line: 273, size: 512, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !676, file: !20, line: 274, baseType: !18, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !20, line: 274, baseType: !27, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !20, line: 274, baseType: !27, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !20, line: 274, baseType: !32, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !20, line: 274, baseType: !27, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !676, file: !20, line: 274, baseType: !13, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !676, file: !20, line: 275, baseType: !8, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !676, file: !20, line: 276, baseType: !353, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !676, file: !20, line: 277, baseType: !101, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !20, line: 278, baseType: !460, size: 128, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !19, file: !20, line: 388, baseType: !689, size: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !20, line: 281, size: 512, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !704, !705, !706, !712, !713}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !20, line: 282, baseType: !18, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !20, line: 282, baseType: !27, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !20, line: 282, baseType: !27, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !20, line: 282, baseType: !32, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !20, line: 282, baseType: !27, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !689, file: !20, line: 282, baseType: !27, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !689, file: !20, line: 283, baseType: !27, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !689, file: !20, line: 284, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!6, !8, !449, !8, !703, !101, !101}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !20, line: 285, baseType: !13, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !689, file: !20, line: 286, baseType: !101, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !689, file: !20, line: 287, baseType: !707, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!6, !357, !8, !101, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !689, file: !20, line: 288, baseType: !18, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !20, line: 289, baseType: !18, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !19, file: !20, line: 389, baseType: !715, size: 512)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !20, line: 307, size: 512, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !20, line: 308, baseType: !18, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !20, line: 308, baseType: !27, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !20, line: 308, baseType: !27, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !20, line: 308, baseType: !32, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !20, line: 308, baseType: !27, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !715, file: !20, line: 308, baseType: !27, size: 8, offset: 104)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !715, file: !20, line: 309, baseType: !27, size: 8, offset: 112)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !715, file: !20, line: 310, baseType: !27, size: 8, offset: 120)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !715, file: !20, line: 311, baseType: !101, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !20, line: 312, baseType: !13, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !715, file: !20, line: 313, baseType: !88, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !715, file: !20, line: 314, baseType: !73, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !715, file: !20, line: 315, baseType: !73, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !715, file: !20, line: 316, baseType: !8, size: 32, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !19, file: !20, line: 390, baseType: !732, size: 448)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !20, line: 340, size: 448, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !732, file: !20, line: 341, baseType: !18, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !20, line: 341, baseType: !27, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !20, line: 341, baseType: !27, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !732, file: !20, line: 341, baseType: !32, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !20, line: 341, baseType: !27, size: 8, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !732, file: !20, line: 341, baseType: !13, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !732, file: !20, line: 342, baseType: !13, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !732, file: !20, line: 343, baseType: !101, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !732, file: !20, line: 344, baseType: !73, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !732, file: !20, line: 345, baseType: !8, size: 32, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !19, file: !20, line: 391, baseType: !745, size: 256)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !20, line: 350, size: 256, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !757}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !745, file: !20, line: 351, baseType: !18, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !20, line: 351, baseType: !27, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !20, line: 351, baseType: !27, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !745, file: !20, line: 351, baseType: !32, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !20, line: 351, baseType: !27, size: 8, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !745, file: !20, line: 351, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !357, !101}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !745, file: !20, line: 352, baseType: !101, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !19, file: !20, line: 392, baseType: !759, size: 192)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !20, line: 357, size: 192, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !759, file: !20, line: 358, baseType: !18, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !759, file: !20, line: 358, baseType: !27, size: 8, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !759, file: !20, line: 358, baseType: !27, size: 8, offset: 72)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !759, file: !20, line: 358, baseType: !32, size: 16, offset: 80)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !20, line: 358, baseType: !27, size: 8, offset: 96)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !759, file: !20, line: 358, baseType: !18, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !19, file: !20, line: 399, baseType: !14, size: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !14, file: !15, line: 135, baseType: !27, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !15, line: 136, baseType: !27, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !14, file: !15, line: 137, baseType: !32, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !15, line: 138, baseType: !772, size: 32, offset: 96)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !773, line: 327, size: 32, elements: !774)
!773 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !772, file: !773, line: 328, baseType: !8, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !772, file: !773, line: 329, baseType: !218, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !14, file: !15, line: 139, baseType: !13, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !14, file: !15, line: 140, baseType: !13, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !14, file: !15, line: 141, baseType: !13, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !14, file: !15, line: 142, baseType: !136, size: 16, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!782 = !{!0}
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 56, elements: !367)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!785 = !{i32 7, !"Dwarf Version", i32 4}
!786 = !{i32 2, !"Debug Info Version", i32 3}
!787 = !{i32 1, !"wchar_size", i32 2}
!788 = !{i32 1, !"Code Model", i32 2}
!789 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!790 = distinct !DISubprogram(name: "acpi_ns_evaluate", scope: !3, file: !3, line: 42, type: !791, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!791 = !DISubroutineType(types: !792)
!792 = !{!6, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !126, line: 152, size: 704, elements: !795)
!795 = !{!796, !797, !799, !800, !801, !802, !803, !849, !850, !851, !852, !853, !854, !855, !856, !857}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !794, file: !126, line: 155, baseType: !13, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !794, file: !126, line: 156, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !794, file: !126, line: 157, baseType: !88, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !794, file: !126, line: 159, baseType: !13, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !794, file: !126, line: 160, baseType: !18, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !794, file: !126, line: 161, baseType: !61, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !794, file: !126, line: 163, baseType: !804, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !15, line: 351, size: 56, elements: !807)
!807 = !{!808, !814, !823, !831, !840}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !806, file: !15, line: 352, baseType: !809, size: 56)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !15, line: 295, size: 56, elements: !810)
!810 = !{!811, !812, !813}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !809, file: !15, line: 296, baseType: !218, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !809, file: !15, line: 297, baseType: !32, size: 16, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !809, file: !15, line: 298, baseType: !27, size: 8, offset: 48)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !806, file: !15, line: 353, baseType: !815, size: 56)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !15, line: 314, size: 56, elements: !816)
!816 = !{!817, !818, !819, !820, !821, !822}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !815, file: !15, line: 315, baseType: !27, size: 8)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !815, file: !15, line: 316, baseType: !27, size: 8, offset: 8)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !815, file: !15, line: 317, baseType: !27, size: 8, offset: 16)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !815, file: !15, line: 318, baseType: !27, size: 8, offset: 24)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !815, file: !15, line: 319, baseType: !27, size: 8, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !815, file: !15, line: 320, baseType: !32, size: 16, offset: 40)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !806, file: !15, line: 354, baseType: !824, size: 56)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !15, line: 325, size: 56, elements: !825)
!825 = !{!826, !827, !828, !830}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !824, file: !15, line: 326, baseType: !27, size: 8)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !824, file: !15, line: 327, baseType: !27, size: 8, offset: 8)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !824, file: !15, line: 328, baseType: !829, size: 32, offset: 16)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !219)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !824, file: !15, line: 329, baseType: !27, size: 8, offset: 48)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !806, file: !15, line: 355, baseType: !832, size: 56)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !15, line: 334, size: 56, elements: !833)
!833 = !{!834, !835, !836, !838, !839}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !832, file: !15, line: 335, baseType: !27, size: 8)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !832, file: !15, line: 336, baseType: !27, size: 8, offset: 8)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !832, file: !15, line: 337, baseType: !837, size: 16, offset: 16)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 16, elements: !461)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !832, file: !15, line: 338, baseType: !27, size: 8, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !832, file: !15, line: 339, baseType: !32, size: 16, offset: 40)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !806, file: !15, line: 356, baseType: !841, size: 56)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !15, line: 342, size: 56, elements: !842)
!842 = !{!843, !844, !845, !846, !847, !848}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !841, file: !15, line: 343, baseType: !27, size: 8)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !841, file: !15, line: 344, baseType: !27, size: 8, offset: 8)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !841, file: !15, line: 345, baseType: !27, size: 8, offset: 16)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !841, file: !15, line: 346, baseType: !27, size: 8, offset: 24)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !841, file: !15, line: 347, baseType: !27, size: 8, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !841, file: !15, line: 348, baseType: !32, size: 16, offset: 40)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !794, file: !126, line: 164, baseType: !18, size: 64, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !794, file: !126, line: 165, baseType: !18, size: 64, offset: 512)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !794, file: !126, line: 167, baseType: !8, size: 32, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !794, file: !126, line: 168, baseType: !8, size: 32, offset: 608)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !794, file: !126, line: 169, baseType: !32, size: 16, offset: 640)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !794, file: !126, line: 170, baseType: !32, size: 16, offset: 656)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !794, file: !126, line: 171, baseType: !27, size: 8, offset: 672)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !794, file: !126, line: 172, baseType: !27, size: 8, offset: 680)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !126, line: 173, baseType: !27, size: 8, offset: 688)
!858 = !DILocalVariable(name: "info", arg: 1, scope: !790, file: !3, line: 42, type: !793)
!859 = !DILocation(line: 42, column: 57, scope: !790)
!860 = !DILocalVariable(name: "status", scope: !790, file: !3, line: 44, type: !6)
!861 = !DILocation(line: 44, column: 14, scope: !790)
!862 = !DILocation(line: 48, column: 7, scope: !863)
!863 = distinct !DILexicalBlock(scope: !790, file: !3, line: 48, column: 6)
!864 = !DILocation(line: 48, column: 6, scope: !790)
!865 = !DILocation(line: 49, column: 3, scope: !866)
!866 = distinct !DILexicalBlock(scope: !863, file: !3, line: 48, column: 13)
!867 = !DILocation(line: 52, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !790, file: !3, line: 52, column: 6)
!869 = !DILocation(line: 52, column: 13, scope: !868)
!870 = !DILocation(line: 52, column: 6, scope: !790)
!871 = !DILocation(line: 62, column: 24, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !3, line: 52, column: 19)
!873 = !DILocation(line: 62, column: 30, scope: !872)
!874 = !DILocation(line: 62, column: 43, scope: !872)
!875 = !DILocation(line: 62, column: 49, scope: !872)
!876 = !DILocation(line: 63, column: 32, scope: !872)
!877 = !DILocation(line: 63, column: 38, scope: !872)
!878 = !DILocation(line: 62, column: 7, scope: !872)
!879 = !DILocation(line: 61, column: 10, scope: !872)
!880 = !DILocation(line: 64, column: 7, scope: !881)
!881 = distinct !DILexicalBlock(scope: !872, file: !3, line: 64, column: 7)
!882 = !DILocation(line: 64, column: 7, scope: !872)
!883 = !DILocation(line: 65, column: 4, scope: !884)
!884 = distinct !DILexicalBlock(scope: !881, file: !3, line: 64, column: 29)
!885 = !DILocation(line: 67, column: 2, scope: !872)
!886 = !DILocation(line: 73, column: 23, scope: !887)
!887 = distinct !DILexicalBlock(scope: !790, file: !3, line: 73, column: 6)
!888 = !DILocation(line: 73, column: 29, scope: !887)
!889 = !DILocation(line: 73, column: 6, scope: !887)
!890 = !DILocation(line: 73, column: 35, scope: !887)
!891 = !DILocation(line: 73, column: 6, scope: !790)
!892 = !DILocation(line: 75, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !887, file: !3, line: 73, column: 68)
!894 = !DILocation(line: 74, column: 3, scope: !893)
!895 = !DILocation(line: 74, column: 9, scope: !893)
!896 = !DILocation(line: 74, column: 14, scope: !893)
!897 = !DILocation(line: 77, column: 2, scope: !893)
!898 = !DILocation(line: 81, column: 2, scope: !790)
!899 = !DILocation(line: 81, column: 8, scope: !790)
!900 = !DILocation(line: 81, column: 22, scope: !790)
!901 = !DILocation(line: 82, column: 21, scope: !790)
!902 = !DILocation(line: 82, column: 27, scope: !790)
!903 = !DILocation(line: 82, column: 33, scope: !790)
!904 = !DILocation(line: 82, column: 2, scope: !790)
!905 = !DILocation(line: 82, column: 8, scope: !790)
!906 = !DILocation(line: 82, column: 19, scope: !790)
!907 = !DILocation(line: 83, column: 47, scope: !790)
!908 = !DILocation(line: 83, column: 53, scope: !790)
!909 = !DILocation(line: 83, column: 19, scope: !790)
!910 = !DILocation(line: 83, column: 2, scope: !790)
!911 = !DILocation(line: 83, column: 8, scope: !790)
!912 = !DILocation(line: 83, column: 17, scope: !790)
!913 = !DILocation(line: 92, column: 38, scope: !790)
!914 = !DILocation(line: 92, column: 44, scope: !790)
!915 = !DILocation(line: 92, column: 50, scope: !790)
!916 = !DILocation(line: 92, column: 55, scope: !790)
!917 = !DILocation(line: 92, column: 6, scope: !790)
!918 = !DILocation(line: 91, column: 2, scope: !790)
!919 = !DILocation(line: 91, column: 8, scope: !790)
!920 = !DILocation(line: 91, column: 19, scope: !790)
!921 = !DILocation(line: 96, column: 56, scope: !790)
!922 = !DILocation(line: 96, column: 62, scope: !790)
!923 = !DILocation(line: 96, column: 24, scope: !790)
!924 = !DILocation(line: 96, column: 2, scope: !790)
!925 = !DILocation(line: 96, column: 8, scope: !790)
!926 = !DILocation(line: 96, column: 22, scope: !790)
!927 = !DILocation(line: 97, column: 7, scope: !928)
!928 = distinct !DILexicalBlock(scope: !790, file: !3, line: 97, column: 6)
!929 = !DILocation(line: 97, column: 13, scope: !928)
!930 = !DILocation(line: 97, column: 6, scope: !790)
!931 = !DILocation(line: 98, column: 3, scope: !932)
!932 = distinct !DILexicalBlock(scope: !928, file: !3, line: 97, column: 28)
!933 = !DILocation(line: 110, column: 2, scope: !790)
!934 = !DILocation(line: 110, column: 8, scope: !790)
!935 = !DILocation(line: 110, column: 20, scope: !790)
!936 = !DILocation(line: 111, column: 6, scope: !937)
!937 = distinct !DILexicalBlock(scope: !790, file: !3, line: 111, column: 6)
!938 = !DILocation(line: 111, column: 12, scope: !937)
!939 = !DILocation(line: 111, column: 6, scope: !790)
!940 = !DILocation(line: 112, column: 3, scope: !941)
!941 = distinct !DILexicalBlock(scope: !937, file: !3, line: 111, column: 24)
!942 = !DILocation(line: 112, column: 10, scope: !941)
!943 = !DILocation(line: 112, column: 16, scope: !941)
!944 = !DILocation(line: 112, column: 27, scope: !941)
!945 = !DILocation(line: 112, column: 33, scope: !941)
!946 = !DILocation(line: 113, column: 4, scope: !947)
!947 = distinct !DILexicalBlock(scope: !941, file: !3, line: 112, column: 47)
!948 = !DILocation(line: 113, column: 10, scope: !947)
!949 = !DILocation(line: 113, column: 21, scope: !947)
!950 = distinct !{!950, !940, !951}
!951 = !DILocation(line: 114, column: 3, scope: !941)
!952 = !DILocation(line: 118, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !941, file: !3, line: 118, column: 7)
!954 = !DILocation(line: 118, column: 13, scope: !953)
!955 = !DILocation(line: 118, column: 25, scope: !953)
!956 = !DILocation(line: 118, column: 7, scope: !941)
!957 = !DILocation(line: 119, column: 4, scope: !958)
!958 = distinct !DILexicalBlock(scope: !953, file: !3, line: 118, column: 49)
!959 = !DILocation(line: 125, column: 4, scope: !958)
!960 = !DILocation(line: 125, column: 10, scope: !958)
!961 = !DILocation(line: 125, column: 22, scope: !958)
!962 = !DILocation(line: 126, column: 3, scope: !958)
!963 = !DILocation(line: 127, column: 2, scope: !941)
!964 = !DILocation(line: 133, column: 32, scope: !790)
!965 = !DILocation(line: 133, column: 38, scope: !790)
!966 = !DILocation(line: 133, column: 53, scope: !790)
!967 = !DILocation(line: 133, column: 59, scope: !790)
!968 = !DILocation(line: 134, column: 11, scope: !790)
!969 = !DILocation(line: 134, column: 17, scope: !790)
!970 = !DILocation(line: 133, column: 2, scope: !790)
!971 = !DILocation(line: 140, column: 31, scope: !790)
!972 = !DILocation(line: 140, column: 37, scope: !790)
!973 = !DILocation(line: 140, column: 52, scope: !790)
!974 = !DILocation(line: 140, column: 58, scope: !790)
!975 = !DILocation(line: 141, column: 10, scope: !790)
!976 = !DILocation(line: 141, column: 16, scope: !790)
!977 = !DILocation(line: 141, column: 29, scope: !790)
!978 = !DILocation(line: 141, column: 35, scope: !790)
!979 = !DILocation(line: 140, column: 2, scope: !790)
!980 = !DILocation(line: 145, column: 31, scope: !790)
!981 = !DILocation(line: 145, column: 2, scope: !790)
!982 = !DILocation(line: 154, column: 27, scope: !790)
!983 = !DILocation(line: 154, column: 33, scope: !790)
!984 = !DILocation(line: 154, column: 10, scope: !790)
!985 = !DILocation(line: 154, column: 2, scope: !790)
!986 = !DILocation(line: 166, column: 3, scope: !987)
!987 = distinct !DILexicalBlock(scope: !790, file: !3, line: 154, column: 40)
!988 = !DILocation(line: 172, column: 10, scope: !987)
!989 = !DILocation(line: 173, column: 3, scope: !987)
!990 = !DILocation(line: 182, column: 8, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !3, line: 182, column: 7)
!992 = !DILocation(line: 182, column: 14, scope: !991)
!993 = !DILocation(line: 182, column: 7, scope: !987)
!994 = !DILocation(line: 183, column: 4, scope: !995)
!995 = distinct !DILexicalBlock(scope: !991, file: !3, line: 182, column: 24)
!996 = !DILocation(line: 186, column: 11, scope: !995)
!997 = !DILocation(line: 187, column: 4, scope: !995)
!998 = !DILocation(line: 204, column: 3, scope: !987)
!999 = !DILocation(line: 205, column: 35, scope: !987)
!1000 = !DILocation(line: 205, column: 12, scope: !987)
!1001 = !DILocation(line: 205, column: 10, scope: !987)
!1002 = !DILocation(line: 206, column: 3, scope: !987)
!1003 = !DILocation(line: 207, column: 3, scope: !987)
!1004 = !DILocation(line: 230, column: 3, scope: !987)
!1005 = !DILocation(line: 235, column: 7, scope: !987)
!1006 = !DILocation(line: 234, column: 3, scope: !987)
!1007 = !DILocation(line: 234, column: 9, scope: !987)
!1008 = !DILocation(line: 234, column: 23, scope: !987)
!1009 = !DILocation(line: 238, column: 37, scope: !987)
!1010 = !DILocation(line: 238, column: 7, scope: !987)
!1011 = !DILocation(line: 237, column: 10, scope: !987)
!1012 = !DILocation(line: 241, column: 3, scope: !987)
!1013 = !DILocation(line: 243, column: 7, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !987, file: !3, line: 243, column: 7)
!1015 = !DILocation(line: 243, column: 7, scope: !987)
!1016 = !DILocation(line: 244, column: 4, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 243, column: 29)
!1018 = !DILocation(line: 244, column: 10, scope: !1017)
!1019 = !DILocation(line: 244, column: 24, scope: !1017)
!1020 = !DILocation(line: 245, column: 4, scope: !1017)
!1021 = !DILocation(line: 253, column: 10, scope: !987)
!1022 = !DILocation(line: 254, column: 3, scope: !987)
!1023 = !DILocation(line: 261, column: 35, scope: !790)
!1024 = !DILocation(line: 261, column: 41, scope: !790)
!1025 = !DILocation(line: 261, column: 47, scope: !790)
!1026 = !DILocation(line: 261, column: 53, scope: !790)
!1027 = !DILocation(line: 261, column: 59, scope: !790)
!1028 = !DILocation(line: 262, column: 7, scope: !790)
!1029 = !DILocation(line: 262, column: 16, scope: !790)
!1030 = !DILocation(line: 262, column: 22, scope: !790)
!1031 = !DILocation(line: 261, column: 8, scope: !790)
!1032 = !DILocation(line: 266, column: 6, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !790, file: !3, line: 266, column: 6)
!1034 = !DILocation(line: 266, column: 13, scope: !1033)
!1035 = !DILocation(line: 266, column: 6, scope: !790)
!1036 = !DILocation(line: 270, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 270, column: 7)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 266, column: 38)
!1039 = !DILocation(line: 270, column: 13, scope: !1037)
!1040 = !DILocation(line: 270, column: 19, scope: !1037)
!1041 = !DILocation(line: 270, column: 7, scope: !1038)
!1042 = !DILocation(line: 271, column: 29, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 270, column: 47)
!1044 = !DILocation(line: 271, column: 35, scope: !1043)
!1045 = !DILocation(line: 271, column: 4, scope: !1043)
!1046 = !DILocation(line: 272, column: 4, scope: !1043)
!1047 = !DILocation(line: 272, column: 10, scope: !1043)
!1048 = !DILocation(line: 272, column: 24, scope: !1043)
!1049 = !DILocation(line: 273, column: 3, scope: !1043)
!1050 = !DILocation(line: 277, column: 10, scope: !1038)
!1051 = !DILocation(line: 278, column: 2, scope: !1038)
!1052 = !DILocation(line: 278, column: 13, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 278, column: 13)
!1054 = !DILocation(line: 278, column: 13, scope: !1033)
!1055 = !DILocation(line: 282, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 282, column: 7)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 278, column: 35)
!1058 = !DILocation(line: 282, column: 13, scope: !1056)
!1059 = !DILocation(line: 282, column: 7, scope: !1057)
!1060 = !DILocation(line: 283, column: 29, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 282, column: 28)
!1062 = !DILocation(line: 283, column: 35, scope: !1061)
!1063 = !DILocation(line: 283, column: 4, scope: !1061)
!1064 = !DILocation(line: 284, column: 4, scope: !1061)
!1065 = !DILocation(line: 284, column: 10, scope: !1061)
!1066 = !DILocation(line: 284, column: 24, scope: !1061)
!1067 = !DILocation(line: 285, column: 3, scope: !1061)
!1068 = !DILocation(line: 286, column: 2, scope: !1057)
!1069 = !DILocation(line: 266, column: 16, scope: !1033)
!1070 = !DILabel(scope: !790, name: "cleanup", file: !3, line: 292)
!1071 = !DILocation(line: 292, column: 1, scope: !790)
!1072 = !DILocation(line: 303, column: 2, scope: !790)
!1073 = !DILocation(line: 304, column: 2, scope: !790)
!1074 = !DILocation(line: 304, column: 8, scope: !790)
!1075 = !DILocation(line: 304, column: 22, scope: !790)
!1076 = !DILocation(line: 305, column: 2, scope: !790)
!1077 = !DILocation(line: 306, column: 1, scope: !790)
!1078 = distinct !DISubprogram(name: "acpi_os_free", scope: !1079, file: !1079, line: 60, type: !1080, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1079 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !101}
!1082 = !DILocalVariable(name: "memory", arg: 1, scope: !1078, file: !1079, line: 60, type: !101)
!1083 = !DILocation(line: 60, column: 39, scope: !1078)
!1084 = !DILocation(line: 62, column: 8, scope: !1078)
!1085 = !DILocation(line: 62, column: 2, scope: !1078)
!1086 = !DILocation(line: 63, column: 1, scope: !1078)
