; ModuleID = '../bcout/drivers/acpi/acpica/nsarguments.llvm.bc'
source_filename = "drivers/acpi/acpica/nsarguments.c"
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
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_method = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*, %union.anon, i32, i16, i8 }
%union.anon = type { i32 (%struct.acpi_walk_state*)* }

@_acpi_module_name = internal constant [12 x i8] c"nsarguments\00", align 1, !dbg !0
@.str = private unnamed_addr constant [60 x i8] c"Argument #%u type mismatch - Found [%s], ACPI requires [%s]\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Object (%s) must be a control method with %u arguments\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"Object (%s) must be a control method with no arguments and no return value\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Insufficient arguments - ASL declared %u, ACPI requires %u\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Excess arguments - ASL declared %u, ACPI requires %u\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"%u arguments were passed to a non-method ACPI object (%s)\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Insufficient arguments - Caller passed %u, method requires %u\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Excess arguments - Caller passed %u, method requires %u\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Insufficient arguments - Caller passed %u, ACPI requires %u\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Excess arguments - Caller passed %u, ACPI requires %u\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_check_argument_types(%struct.acpi_evaluate_info* %info) #0 !dbg !16 {
entry:
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %arg_type_list = alloca i16, align 2
  %arg_count = alloca i8, align 1
  %arg_type = alloca i8, align 1
  %user_arg_type = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !858, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.declare(metadata i16* %arg_type_list, metadata !860, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.declare(metadata i8* %arg_count, metadata !862, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.declare(metadata i8* %arg_type, metadata !864, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.declare(metadata i8* %user_arg_type, metadata !866, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.declare(metadata i32* %i, metadata !868, metadata !DIExpression()), !dbg !869
  %0 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !870
  %predefined = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %0, i32 0, i32 6, !dbg !872
  %1 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined, align 8, !dbg !872
  %tobool = icmp ne %union.acpi_predefined_info* %1, null, !dbg !870
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !873

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !874
  %node = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %2, i32 0, i32 3, !dbg !875
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !875
  %flags = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %3, i32 0, i32 3, !dbg !876
  %4 = load i16, i16* %flags, align 2, !dbg !876
  %conv = zext i16 %4 to i32, !dbg !874
  %and = and i32 %conv, 32, !dbg !877
  %tobool1 = icmp ne i32 %and, 0, !dbg !877
  br i1 %tobool1, label %if.then, label %if.end, !dbg !878

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %for.end, !dbg !879

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !881
  %predefined2 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %5, i32 0, i32 6, !dbg !882
  %6 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined2, align 8, !dbg !882
  %info3 = bitcast %union.acpi_predefined_info* %6 to %struct.acpi_name_info*, !dbg !883
  %argument_list = getelementptr inbounds %struct.acpi_name_info, %struct.acpi_name_info* %info3, i32 0, i32 1, !dbg !884
  %7 = load i16, i16* %argument_list, align 1, !dbg !884
  store i16 %7, i16* %arg_type_list, align 2, !dbg !885
  %8 = load i16, i16* %arg_type_list, align 2, !dbg !886
  %conv4 = zext i16 %8 to i32, !dbg !886
  %and5 = and i32 %conv4, 7, !dbg !886
  %conv6 = trunc i32 %and5 to i8, !dbg !886
  store i8 %conv6, i8* %arg_count, align 1, !dbg !887
  store i32 0, i32* %i, align 4, !dbg !888
  br label %for.cond, !dbg !890

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !dbg !891
  %10 = load i8, i8* %arg_count, align 1, !dbg !893
  %conv7 = zext i8 %10 to i32, !dbg !893
  %cmp = icmp ult i32 %9, %conv7, !dbg !894
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !895

land.rhs:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !dbg !896
  %12 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !897
  %param_count = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %12, i32 0, i32 11, !dbg !898
  %13 = load i16, i16* %param_count, align 8, !dbg !898
  %conv9 = zext i16 %13 to i32, !dbg !897
  %cmp10 = icmp ult i32 %11, %conv9, !dbg !899
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp10, %land.rhs ], !dbg !900
  br i1 %14, label %for.body, label %for.end, !dbg !901

for.body:                                         ; preds = %land.end
  %15 = load i16, i16* %arg_type_list, align 2, !dbg !902
  %conv12 = zext i16 %15 to i32, !dbg !902
  %shr = ashr i32 %conv12, 3, !dbg !902
  %conv13 = trunc i32 %shr to i16, !dbg !902
  store i16 %conv13, i16* %arg_type_list, align 2, !dbg !902
  %conv14 = zext i16 %conv13 to i32, !dbg !902
  %and15 = and i32 %conv14, 7, !dbg !902
  %conv16 = trunc i32 %and15 to i8, !dbg !902
  store i8 %conv16, i8* %arg_type, align 1, !dbg !904
  %16 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !905
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %16, i32 0, i32 2, !dbg !906
  %17 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %parameters, align 8, !dbg !906
  %18 = load i32, i32* %i, align 4, !dbg !907
  %idxprom = zext i32 %18 to i64, !dbg !905
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %17, i64 %idxprom, !dbg !905
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !905
  %common = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_common*, !dbg !908
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !909
  %20 = load i8, i8* %type, align 1, !dbg !909
  store i8 %20, i8* %user_arg_type, align 1, !dbg !910
  %21 = load i8, i8* %user_arg_type, align 1, !dbg !911
  %conv17 = zext i8 %21 to i32, !dbg !911
  %22 = load i8, i8* %arg_type, align 1, !dbg !913
  %conv18 = zext i8 %22 to i32, !dbg !913
  %cmp19 = icmp ne i32 %conv17, %conv18, !dbg !914
  br i1 %cmp19, label %land.lhs.true, label %if.end32, !dbg !915

land.lhs.true:                                    ; preds = %for.body
  %23 = load i8, i8* %arg_type, align 1, !dbg !916
  %conv21 = zext i8 %23 to i32, !dbg !916
  %cmp22 = icmp ne i32 %conv21, 0, !dbg !917
  br i1 %cmp22, label %if.then24, label %if.end32, !dbg !918

if.then24:                                        ; preds = %land.lhs.true
  %24 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !919
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %24, i32 0, i32 5, !dbg !919
  %25 = load i8*, i8** %full_pathname, align 8, !dbg !919
  %26 = load i32, i32* %i, align 4, !dbg !919
  %add = add i32 %26, 1, !dbg !919
  %27 = load i8, i8* %user_arg_type, align 1, !dbg !919
  %conv25 = zext i8 %27 to i32, !dbg !919
  %call = call i8* @acpi_ut_get_type_name(i32 %conv25) #3, !dbg !919
  %28 = load i8, i8* %arg_type, align 1, !dbg !919
  %conv26 = zext i8 %28 to i32, !dbg !919
  %call27 = call i8* @acpi_ut_get_type_name(i32 %conv26) #3, !dbg !919
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_acpi_module_name, i64 0, i64 0), i32 61, i8* %25, i16 zeroext 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %add, i8* %call, i8* %call27) #3, !dbg !919
  %29 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !921
  %node28 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %29, i32 0, i32 3, !dbg !922
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node28, align 8, !dbg !922
  %flags29 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %30, i32 0, i32 3, !dbg !923
  %31 = load i16, i16* %flags29, align 2, !dbg !924
  %conv30 = zext i16 %31 to i32, !dbg !924
  %or = or i32 %conv30, 32, !dbg !924
  %conv31 = trunc i32 %or to i16, !dbg !924
  store i16 %conv31, i16* %flags29, align 2, !dbg !924
  br label %if.end32, !dbg !925

if.end32:                                         ; preds = %if.then24, %land.lhs.true, %for.body
  br label %for.inc, !dbg !926

for.inc:                                          ; preds = %if.end32
  %32 = load i32, i32* %i, align 4, !dbg !927
  %inc = add i32 %32, 1, !dbg !927
  store i32 %inc, i32* %i, align 4, !dbg !927
  br label %for.cond, !dbg !928, !llvm.loop !929

for.end:                                          ; preds = %if.then, %land.end
  ret void, !dbg !931
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_predefined_warning(i8*, i32, i8*, i16 zeroext, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_check_acpi_compliance(i8* %pathname, %struct.acpi_namespace_node* %node, %union.acpi_predefined_info* %predefined) #0 !dbg !932 {
entry:
  %pathname.addr = alloca i8*, align 8
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %predefined.addr = alloca %union.acpi_predefined_info*, align 8
  %aml_param_count = alloca i32, align 4
  %required_param_count = alloca i32, align 4
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !935, metadata !DIExpression()), !dbg !936
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !937, metadata !DIExpression()), !dbg !938
  store %union.acpi_predefined_info* %predefined, %union.acpi_predefined_info** %predefined.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_predefined_info** %predefined.addr, metadata !939, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.declare(metadata i32* %aml_param_count, metadata !941, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.declare(metadata i32* %required_param_count, metadata !943, metadata !DIExpression()), !dbg !944
  %0 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined.addr, align 8, !dbg !945
  %tobool = icmp ne %union.acpi_predefined_info* %0, null, !dbg !945
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !947

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !948
  %flags = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %1, i32 0, i32 3, !dbg !949
  %2 = load i16, i16* %flags, align 2, !dbg !949
  %conv = zext i16 %2 to i32, !dbg !948
  %and = and i32 %conv, 32, !dbg !950
  %tobool1 = icmp ne i32 %and, 0, !dbg !950
  br i1 %tobool1, label %if.then, label %if.end, !dbg !951

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end37, !dbg !952

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined.addr, align 8, !dbg !954
  %info = bitcast %union.acpi_predefined_info* %3 to %struct.acpi_name_info*, !dbg !954
  %argument_list = getelementptr inbounds %struct.acpi_name_info, %struct.acpi_name_info* %info, i32 0, i32 1, !dbg !954
  %4 = load i16, i16* %argument_list, align 1, !dbg !954
  %conv2 = zext i16 %4 to i32, !dbg !954
  %and3 = and i32 %conv2, 7, !dbg !954
  store i32 %and3, i32* %required_param_count, align 4, !dbg !955
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !956
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %5, i32 0, i32 2, !dbg !958
  %6 = load i8, i8* %type, align 1, !dbg !958
  %conv4 = zext i8 %6 to i32, !dbg !956
  %cmp = icmp ne i32 %conv4, 8, !dbg !959
  br i1 %cmp, label %if.then6, label %if.end21, !dbg !960

if.then6:                                         ; preds = %if.end
  %7 = load i32, i32* %required_param_count, align 4, !dbg !961
  %cmp7 = icmp ugt i32 %7, 0, !dbg !964
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !965

if.then9:                                         ; preds = %if.then6
  %8 = load i8*, i8** %pathname.addr, align 8, !dbg !966
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !966
  %type10 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %9, i32 0, i32 2, !dbg !966
  %10 = load i8, i8* %type10, align 1, !dbg !966
  %conv11 = zext i8 %10 to i32, !dbg !966
  %call = call i8* @acpi_ut_get_type_name(i32 %conv11) #3, !dbg !966
  %11 = load i32, i32* %required_param_count, align 4, !dbg !966
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_bios_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_acpi_module_name, i64 0, i64 0), i32 119, i8* %8, i16 zeroext 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %call, i32 %11) #3, !dbg !966
  br label %if.end20, !dbg !968

if.else:                                          ; preds = %if.then6
  %12 = load i32, i32* %required_param_count, align 4, !dbg !969
  %tobool12 = icmp ne i32 %12, 0, !dbg !969
  br i1 %tobool12, label %if.end19, label %land.lhs.true, !dbg !971

land.lhs.true:                                    ; preds = %if.else
  %13 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined.addr, align 8, !dbg !972
  %info13 = bitcast %union.acpi_predefined_info* %13 to %struct.acpi_name_info*, !dbg !973
  %expected_btypes = getelementptr inbounds %struct.acpi_name_info, %struct.acpi_name_info* %info13, i32 0, i32 2, !dbg !974
  %14 = load i8, i8* %expected_btypes, align 1, !dbg !974
  %tobool14 = icmp ne i8 %14, 0, !dbg !972
  br i1 %tobool14, label %if.end19, label %if.then15, !dbg !975

if.then15:                                        ; preds = %land.lhs.true
  %15 = load i8*, i8** %pathname.addr, align 8, !dbg !976
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !976
  %type16 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %16, i32 0, i32 2, !dbg !976
  %17 = load i8, i8* %type16, align 1, !dbg !976
  %conv17 = zext i8 %17 to i32, !dbg !976
  %call18 = call i8* @acpi_ut_get_type_name(i32 %conv17) #3, !dbg !976
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_bios_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_acpi_module_name, i64 0, i64 0), i32 130, i8* %15, i16 zeroext 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i8* %call18) #3, !dbg !976
  br label %if.end19, !dbg !978

if.end19:                                         ; preds = %if.then15, %land.lhs.true, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then9
  br label %if.end37, !dbg !979

if.end21:                                         ; preds = %if.end
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !980
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %18, i32 0, i32 0, !dbg !981
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !981
  %method = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_method*, !dbg !982
  %param_count = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 6, !dbg !983
  %20 = load i8, i8* %param_count, align 2, !dbg !983
  %conv22 = zext i8 %20 to i32, !dbg !980
  store i32 %conv22, i32* %aml_param_count, align 4, !dbg !984
  %21 = load i32, i32* %aml_param_count, align 4, !dbg !985
  %22 = load i32, i32* %required_param_count, align 4, !dbg !987
  %cmp23 = icmp ult i32 %21, %22, !dbg !988
  br i1 %cmp23, label %if.then25, label %if.else26, !dbg !989

if.then25:                                        ; preds = %if.end21
  %23 = load i8*, i8** %pathname.addr, align 8, !dbg !990
  %24 = load i32, i32* %aml_param_count, align 4, !dbg !990
  %25 = load i32, i32* %required_param_count, align 4, !dbg !990
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_bios_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_acpi_module_name, i64 0, i64 0), i32 154, i8* %23, i16 zeroext 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %25) #3, !dbg !990
  br label %if.end37, !dbg !992

if.else26:                                        ; preds = %if.end21
  %26 = load i32, i32* %aml_param_count, align 4, !dbg !993
  %27 = load i32, i32* %required_param_count, align 4, !dbg !995
  %cmp27 = icmp ugt i32 %26, %27, !dbg !996
  br i1 %cmp27, label %land.lhs.true29, label %if.end36, !dbg !997

land.lhs.true29:                                  ; preds = %if.else26
  %28 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined.addr, align 8, !dbg !998
  %info30 = bitcast %union.acpi_predefined_info* %28 to %struct.acpi_name_info*, !dbg !999
  %argument_list31 = getelementptr inbounds %struct.acpi_name_info, %struct.acpi_name_info* %info30, i32 0, i32 1, !dbg !1000
  %29 = load i16, i16* %argument_list31, align 1, !dbg !1000
  %conv32 = zext i16 %29 to i32, !dbg !998
  %and33 = and i32 %conv32, 32768, !dbg !1001
  %tobool34 = icmp ne i32 %and33, 0, !dbg !1001
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !1002

if.then35:                                        ; preds = %land.lhs.true29
  %30 = load i8*, i8** %pathname.addr, align 8, !dbg !1003
  %31 = load i32, i32* %aml_param_count, align 4, !dbg !1003
  %32 = load i32, i32* %required_param_count, align 4, !dbg !1003
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_bios_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_acpi_module_name, i64 0, i64 0), i32 162, i8* %30, i16 zeroext 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 %32) #3, !dbg !1003
  br label %if.end36, !dbg !1005

if.end36:                                         ; preds = %if.then35, %land.lhs.true29, %if.else26
  br label %if.end37

if.end37:                                         ; preds = %if.then, %if.end20, %if.end36, %if.then25
  ret void, !dbg !1006
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_predefined_bios_error(i8*, i32, i8*, i16 zeroext, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_check_argument_count(i8* %pathname, %struct.acpi_namespace_node* %node, i32 %user_param_count, %union.acpi_predefined_info* %predefined) #0 !dbg !1007 {
entry:
  %pathname.addr = alloca i8*, align 8
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %user_param_count.addr = alloca i32, align 4
  %predefined.addr = alloca %union.acpi_predefined_info*, align 8
  %aml_param_count = alloca i32, align 4
  %required_param_count = alloca i32, align 4
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !1010, metadata !DIExpression()), !dbg !1011
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1012, metadata !DIExpression()), !dbg !1013
  store i32 %user_param_count, i32* %user_param_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %user_param_count.addr, metadata !1014, metadata !DIExpression()), !dbg !1015
  store %union.acpi_predefined_info* %predefined, %union.acpi_predefined_info** %predefined.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_predefined_info** %predefined.addr, metadata !1016, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.declare(metadata i32* %aml_param_count, metadata !1018, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.declare(metadata i32* %required_param_count, metadata !1020, metadata !DIExpression()), !dbg !1021
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1022
  %flags = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %0, i32 0, i32 3, !dbg !1024
  %1 = load i16, i16* %flags, align 2, !dbg !1024
  %conv = zext i16 %1 to i32, !dbg !1022
  %and = and i32 %conv, 32, !dbg !1025
  %tobool = icmp ne i32 %and, 0, !dbg !1025
  br i1 %tobool, label %if.then, label %if.end, !dbg !1026

if.then:                                          ; preds = %entry
  br label %if.end37, !dbg !1027

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined.addr, align 8, !dbg !1029
  %tobool1 = icmp ne %union.acpi_predefined_info* %2, null, !dbg !1029
  br i1 %tobool1, label %if.end21, label %if.then2, !dbg !1031

if.then2:                                         ; preds = %if.end
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1032
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %3, i32 0, i32 2, !dbg !1035
  %4 = load i8, i8* %type, align 1, !dbg !1035
  %conv3 = zext i8 %4 to i32, !dbg !1032
  %cmp = icmp ne i32 %conv3, 8, !dbg !1036
  br i1 %cmp, label %if.then5, label %if.end11, !dbg !1037

if.then5:                                         ; preds = %if.then2
  %5 = load i32, i32* %user_param_count.addr, align 4, !dbg !1038
  %tobool6 = icmp ne i32 %5, 0, !dbg !1038
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !1041

if.then7:                                         ; preds = %if.then5
  %6 = load i8*, i8** %pathname.addr, align 8, !dbg !1042
  %7 = load i32, i32* %user_param_count.addr, align 4, !dbg !1042
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1042
  %type8 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %8, i32 0, i32 2, !dbg !1042
  %9 = load i8, i8* %type8, align 1, !dbg !1042
  %conv9 = zext i8 %9 to i32, !dbg !1042
  %call = call i8* @acpi_ut_get_type_name(i32 %conv9) #3, !dbg !1042
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_acpi_module_name, i64 0, i64 0), i32 206, i8* %6, i16 zeroext 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %7, i8* %call) #3, !dbg !1042
  br label %if.end10, !dbg !1044

if.end10:                                         ; preds = %if.then7, %if.then5
  br label %if.end37, !dbg !1045

if.end11:                                         ; preds = %if.then2
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1046
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 0, !dbg !1047
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1047
  %method = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_method*, !dbg !1048
  %param_count = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 6, !dbg !1049
  %12 = load i8, i8* %param_count, align 2, !dbg !1049
  %conv12 = zext i8 %12 to i32, !dbg !1046
  store i32 %conv12, i32* %aml_param_count, align 4, !dbg !1050
  %13 = load i32, i32* %user_param_count.addr, align 4, !dbg !1051
  %14 = load i32, i32* %aml_param_count, align 4, !dbg !1053
  %cmp13 = icmp ult i32 %13, %14, !dbg !1054
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !1055

if.then15:                                        ; preds = %if.end11
  %15 = load i8*, i8** %pathname.addr, align 8, !dbg !1056
  %16 = load i32, i32* %user_param_count.addr, align 4, !dbg !1056
  %17 = load i32, i32* %aml_param_count, align 4, !dbg !1056
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_acpi_module_name, i64 0, i64 0), i32 232, i8* %15, i16 zeroext 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32 %16, i32 %17) #3, !dbg !1056
  br label %if.end20, !dbg !1058

if.else:                                          ; preds = %if.end11
  %18 = load i32, i32* %user_param_count.addr, align 4, !dbg !1059
  %19 = load i32, i32* %aml_param_count, align 4, !dbg !1061
  %cmp16 = icmp ugt i32 %18, %19, !dbg !1062
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !1063

if.then18:                                        ; preds = %if.else
  %20 = load i8*, i8** %pathname.addr, align 8, !dbg !1064
  %21 = load i32, i32* %user_param_count.addr, align 4, !dbg !1064
  %22 = load i32, i32* %aml_param_count, align 4, !dbg !1064
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_acpi_module_name, i64 0, i64 0), i32 239, i8* %20, i16 zeroext 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %21, i32 %22) #3, !dbg !1064
  br label %if.end19, !dbg !1066

if.end19:                                         ; preds = %if.then18, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then15
  br label %if.end37, !dbg !1067

if.end21:                                         ; preds = %if.end
  %23 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined.addr, align 8, !dbg !1068
  %info = bitcast %union.acpi_predefined_info* %23 to %struct.acpi_name_info*, !dbg !1068
  %argument_list = getelementptr inbounds %struct.acpi_name_info, %struct.acpi_name_info* %info, i32 0, i32 1, !dbg !1068
  %24 = load i16, i16* %argument_list, align 1, !dbg !1068
  %conv22 = zext i16 %24 to i32, !dbg !1068
  %and23 = and i32 %conv22, 7, !dbg !1068
  store i32 %and23, i32* %required_param_count, align 4, !dbg !1069
  %25 = load i32, i32* %user_param_count.addr, align 4, !dbg !1070
  %26 = load i32, i32* %required_param_count, align 4, !dbg !1072
  %cmp24 = icmp ult i32 %25, %26, !dbg !1073
  br i1 %cmp24, label %if.then26, label %if.else27, !dbg !1074

if.then26:                                        ; preds = %if.end21
  %27 = load i8*, i8** %pathname.addr, align 8, !dbg !1075
  %28 = load i32, i32* %user_param_count.addr, align 4, !dbg !1075
  %29 = load i32, i32* %required_param_count, align 4, !dbg !1075
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_acpi_module_name, i64 0, i64 0), i32 264, i8* %27, i16 zeroext 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i32 %28, i32 %29) #3, !dbg !1075
  br label %if.end37, !dbg !1077

if.else27:                                        ; preds = %if.end21
  %30 = load i32, i32* %user_param_count.addr, align 4, !dbg !1078
  %31 = load i32, i32* %required_param_count, align 4, !dbg !1080
  %cmp28 = icmp ugt i32 %30, %31, !dbg !1081
  br i1 %cmp28, label %land.lhs.true, label %if.end36, !dbg !1082

land.lhs.true:                                    ; preds = %if.else27
  %32 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined.addr, align 8, !dbg !1083
  %info30 = bitcast %union.acpi_predefined_info* %32 to %struct.acpi_name_info*, !dbg !1084
  %argument_list31 = getelementptr inbounds %struct.acpi_name_info, %struct.acpi_name_info* %info30, i32 0, i32 1, !dbg !1085
  %33 = load i16, i16* %argument_list31, align 1, !dbg !1085
  %conv32 = zext i16 %33 to i32, !dbg !1083
  %and33 = and i32 %conv32, 32768, !dbg !1086
  %tobool34 = icmp ne i32 %and33, 0, !dbg !1086
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !1087

if.then35:                                        ; preds = %land.lhs.true
  %34 = load i8*, i8** %pathname.addr, align 8, !dbg !1088
  %35 = load i32, i32* %user_param_count.addr, align 4, !dbg !1088
  %36 = load i32, i32* %required_param_count, align 4, !dbg !1088
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_acpi_module_name, i64 0, i64 0), i32 270, i8* %34, i16 zeroext 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 %35, i32 %36) #3, !dbg !1088
  br label %if.end36, !dbg !1090

if.end36:                                         ; preds = %if.then35, %land.lhs.true, %if.else27
  br label %if.end37

if.end37:                                         ; preds = %if.then, %if.end10, %if.end20, %if.end36, %if.then26
  ret void, !dbg !1091
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_predefined_info(i8*, i32, i8*, i16 zeroext, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsarguments.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !9)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{!10}
!10 = !DISubrange(count: 12)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"Code Model", i32 2}
!15 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!16 = distinct !DISubprogram(name: "acpi_ns_check_argument_types", scope: !3, file: !3, line: 30, type: !17, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !21, line: 152, size: 704, elements: !22)
!21 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!22 = !{!23, !797, !799, !800, !801, !802, !803, !849, !850, !851, !852, !853, !854, !855, !856, !857}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !20, file: !21, line: 155, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !26, line: 133, size: 384, elements: !27)
!26 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !784, !785, !786, !787, !793, !794, !795, !796}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !25, file: !26, line: 134, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !31, line: 367, size: 576, elements: !32)
!31 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !49, !65, !79, !93, !107, !117, !435, !452, !467, !480, !558, !570, !584, !594, !612, !634, !653, !672, !691, !704, !730, !747, !760, !774, !783}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !30, file: !31, line: 368, baseType: !34, size: 128)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !31, line: 73, size: 128, elements: !35)
!35 = !{!36, !37, !43, !44, !48}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !34, file: !31, line: 74, baseType: !29, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !34, file: !31, line: 74, baseType: !38, size: 8, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !39, line: 17, baseType: !40)
!39 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !41, line: 21, baseType: !42)
!41 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !31, line: 74, baseType: !38, size: 8, offset: 72)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !34, file: !31, line: 74, baseType: !45, size: 16, offset: 80)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !39, line: 19, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !41, line: 24, baseType: !47)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !34, file: !31, line: 74, baseType: !38, size: 8, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !30, file: !31, line: 369, baseType: !50, size: 192)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !31, line: 76, size: 192, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !57, !61}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !50, file: !31, line: 77, baseType: !29, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !50, file: !31, line: 77, baseType: !38, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !31, line: 77, baseType: !38, size: 8, offset: 72)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !50, file: !31, line: 77, baseType: !45, size: 16, offset: 80)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !31, line: 77, baseType: !38, size: 8, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !50, file: !31, line: 77, baseType: !58, size: 24, offset: 104)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 24, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 3)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !50, file: !31, line: 78, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !39, line: 23, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !41, line: 31, baseType: !64)
!64 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !30, file: !31, line: 370, baseType: !66, size: 256)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !31, line: 93, size: 256, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !75}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !31, line: 94, baseType: !29, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !31, line: 94, baseType: !38, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !31, line: 94, baseType: !38, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !31, line: 94, baseType: !45, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !31, line: 94, baseType: !38, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !66, file: !31, line: 94, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !66, file: !31, line: 94, baseType: !76, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !39, line: 21, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !41, line: 27, baseType: !78)
!78 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !30, file: !31, line: 371, baseType: !80, size: 384)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !31, line: 97, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !89, !90, !91, !92}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !31, line: 98, baseType: !29, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !31, line: 98, baseType: !38, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !31, line: 98, baseType: !38, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !31, line: 98, baseType: !45, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !31, line: 98, baseType: !38, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !80, file: !31, line: 98, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !31, line: 98, baseType: !76, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !80, file: !31, line: 99, baseType: !76, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !80, file: !31, line: 100, baseType: !88, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !31, line: 101, baseType: !24, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !30, file: !31, line: 372, baseType: !94, size: 384)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !31, line: 104, size: 384, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !102, !104, !105, !106}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !94, file: !31, line: 105, baseType: !29, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !31, line: 105, baseType: !38, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !31, line: 105, baseType: !38, size: 8, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !94, file: !31, line: 105, baseType: !45, size: 16, offset: 80)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !31, line: 105, baseType: !38, size: 8, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !94, file: !31, line: 105, baseType: !24, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !94, file: !31, line: 106, baseType: !103, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !94, file: !31, line: 107, baseType: !88, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !94, file: !31, line: 108, baseType: !76, size: 32, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !94, file: !31, line: 109, baseType: !76, size: 32, offset: 352)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !30, file: !31, line: 373, baseType: !108, size: 192)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !31, line: 118, size: 192, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !108, file: !31, line: 119, baseType: !29, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !108, file: !31, line: 119, baseType: !38, size: 8, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !31, line: 119, baseType: !38, size: 8, offset: 72)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !108, file: !31, line: 119, baseType: !45, size: 16, offset: 80)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !31, line: 119, baseType: !38, size: 8, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !108, file: !31, line: 119, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !30, file: !31, line: 374, baseType: !118, size: 448)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !31, line: 143, size: 448, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !432, !433, !434}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !118, file: !31, line: 144, baseType: !29, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !118, file: !31, line: 144, baseType: !38, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !31, line: 144, baseType: !38, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !118, file: !31, line: 144, baseType: !45, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !31, line: 144, baseType: !38, size: 8, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !118, file: !31, line: 144, baseType: !38, size: 8, offset: 104)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !118, file: !31, line: 145, baseType: !38, size: 8, offset: 112)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !118, file: !31, line: 146, baseType: !38, size: 8, offset: 120)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !118, file: !31, line: 147, baseType: !29, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !118, file: !31, line: 148, baseType: !29, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !118, file: !31, line: 149, baseType: !88, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !118, file: !31, line: 153, baseType: !132, size: 64, offset: 320)
!132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !31, line: 150, size: 64, elements: !133)
!133 = !{!134, !431}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !132, file: !31, line: 151, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !26, line: 248, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!139, !141}
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !140, line: 421, baseType: !76)
!140 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !21, line: 37, size: 9024, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !377, !378, !379, !380, !381, !385, !387, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !414, !415, !416, !417, !418, !419, !420, !421, !423, !429}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !21, line: 38, baseType: !141, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !142, file: !21, line: 39, baseType: !38, size: 8, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !142, file: !21, line: 40, baseType: !38, size: 8, offset: 72)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !142, file: !21, line: 41, baseType: !45, size: 16, offset: 80)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !142, file: !21, line: 42, baseType: !38, size: 8, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !142, file: !21, line: 43, baseType: !38, size: 8, offset: 104)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !142, file: !21, line: 44, baseType: !38, size: 8, offset: 112)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !142, file: !21, line: 45, baseType: !152, size: 16, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !140, line: 445, baseType: !45)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !142, file: !21, line: 46, baseType: !38, size: 8, offset: 144)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !142, file: !21, line: 47, baseType: !38, size: 8, offset: 152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !142, file: !21, line: 48, baseType: !38, size: 8, offset: 160)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !142, file: !21, line: 49, baseType: !38, size: 8, offset: 168)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !142, file: !21, line: 50, baseType: !38, size: 8, offset: 176)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !142, file: !21, line: 51, baseType: !38, size: 8, offset: 184)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !142, file: !21, line: 52, baseType: !38, size: 8, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !142, file: !21, line: 53, baseType: !38, size: 8, offset: 200)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !142, file: !21, line: 54, baseType: !88, size: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !142, file: !21, line: 55, baseType: !76, size: 32, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !142, file: !21, line: 56, baseType: !76, size: 32, offset: 352)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !142, file: !21, line: 57, baseType: !76, size: 32, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !142, file: !21, line: 58, baseType: !76, size: 32, offset: 416)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !142, file: !21, line: 60, baseType: !167, size: 640, offset: 448)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !26, line: 893, size: 640, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !258, !259, !375, !376}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !167, file: !26, line: 894, baseType: !88, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !167, file: !26, line: 895, baseType: !88, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !167, file: !26, line: 896, baseType: !88, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !167, file: !26, line: 897, baseType: !88, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !167, file: !26, line: 898, baseType: !88, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !167, file: !26, line: 899, baseType: !175, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !26, line: 875, size: 1600, elements: !177)
!177 = !{!178, !198, !214}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !176, file: !26, line: 876, baseType: !179, size: 448)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !26, line: 828, size: 448, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !197}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !179, file: !26, line: 829, baseType: !175, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !179, file: !26, line: 829, baseType: !38, size: 8, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !26, line: 829, baseType: !38, size: 8, offset: 72)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !179, file: !26, line: 829, baseType: !45, size: 16, offset: 80)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !179, file: !26, line: 829, baseType: !88, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !179, file: !26, line: 829, baseType: !175, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !179, file: !26, line: 829, baseType: !24, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !179, file: !26, line: 829, baseType: !189, size: 64, offset: 320)
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !26, line: 716, size: 64, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !189, file: !26, line: 717, baseType: !62, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !189, file: !26, line: 718, baseType: !76, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !189, file: !26, line: 719, baseType: !74, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !189, file: !26, line: 720, baseType: !88, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !26, line: 721, baseType: !74, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !189, file: !26, line: 722, baseType: !175, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !179, file: !26, line: 829, baseType: !38, size: 8, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !176, file: !26, line: 877, baseType: !199, size: 640)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !26, line: 835, size: 640, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !26, line: 836, baseType: !175, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !26, line: 836, baseType: !38, size: 8, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !26, line: 836, baseType: !38, size: 8, offset: 72)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !199, file: !26, line: 836, baseType: !45, size: 16, offset: 80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !199, file: !26, line: 836, baseType: !88, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !26, line: 836, baseType: !175, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !26, line: 836, baseType: !24, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !26, line: 836, baseType: !189, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !199, file: !26, line: 836, baseType: !38, size: 8, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !199, file: !26, line: 836, baseType: !74, size: 64, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !199, file: !26, line: 837, baseType: !88, size: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !199, file: !26, line: 838, baseType: !76, size: 32, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !199, file: !26, line: 839, baseType: !76, size: 32, offset: 608)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !176, file: !26, line: 878, baseType: !215, size: 1600)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !26, line: 846, size: 1600, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !215, file: !26, line: 847, baseType: !175, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !215, file: !26, line: 847, baseType: !38, size: 8, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !26, line: 847, baseType: !38, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !215, file: !26, line: 847, baseType: !45, size: 16, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !215, file: !26, line: 847, baseType: !88, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !26, line: 847, baseType: !175, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !215, file: !26, line: 847, baseType: !24, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !215, file: !26, line: 847, baseType: !189, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !215, file: !26, line: 847, baseType: !38, size: 8, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !215, file: !26, line: 847, baseType: !175, size: 64, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !215, file: !26, line: 848, baseType: !175, size: 64, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !215, file: !26, line: 849, baseType: !74, size: 64, offset: 576)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !215, file: !26, line: 850, baseType: !38, size: 8, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !215, file: !26, line: 851, baseType: !74, size: 64, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !215, file: !26, line: 852, baseType: !74, size: 64, offset: 768)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !215, file: !26, line: 853, baseType: !74, size: 64, offset: 832)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !215, file: !26, line: 854, baseType: !234, size: 32, offset: 896)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 4)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !215, file: !26, line: 855, baseType: !76, size: 32, offset: 928)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !215, file: !26, line: 856, baseType: !76, size: 32, offset: 960)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !215, file: !26, line: 857, baseType: !76, size: 32, offset: 992)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !215, file: !26, line: 858, baseType: !76, size: 32, offset: 1024)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !215, file: !26, line: 859, baseType: !76, size: 32, offset: 1056)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !215, file: !26, line: 860, baseType: !76, size: 32, offset: 1088)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !215, file: !26, line: 861, baseType: !76, size: 32, offset: 1120)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !215, file: !26, line: 862, baseType: !76, size: 32, offset: 1152)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !215, file: !26, line: 863, baseType: !76, size: 32, offset: 1184)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !215, file: !26, line: 864, baseType: !76, size: 32, offset: 1216)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !215, file: !26, line: 865, baseType: !76, size: 32, offset: 1248)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !215, file: !26, line: 866, baseType: !76, size: 32, offset: 1280)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !215, file: !26, line: 867, baseType: !76, size: 32, offset: 1312)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !215, file: !26, line: 868, baseType: !45, size: 16, offset: 1344)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !215, file: !26, line: 869, baseType: !38, size: 8, offset: 1360)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !215, file: !26, line: 870, baseType: !38, size: 8, offset: 1368)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !215, file: !26, line: 871, baseType: !38, size: 8, offset: 1376)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !215, file: !26, line: 872, baseType: !255, size: 160, offset: 1384)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 20)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !167, file: !26, line: 900, baseType: !24, size: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !167, file: !26, line: 901, baseType: !260, size: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !26, line: 663, size: 640, elements: !262)
!262 = !{!263, !271, !284, !293, !302, !315, !329, !341, !353}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !261, file: !26, line: 664, baseType: !264, size: 128)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !26, line: 567, size: 128, elements: !265)
!265 = !{!266, !267, !268, !269, !270}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !26, line: 568, baseType: !116, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !264, file: !26, line: 568, baseType: !38, size: 8, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !264, file: !26, line: 568, baseType: !38, size: 8, offset: 72)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !264, file: !26, line: 568, baseType: !45, size: 16, offset: 80)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !264, file: !26, line: 568, baseType: !45, size: 16, offset: 96)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !261, file: !26, line: 665, baseType: !272, size: 384)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !26, line: 593, size: 384, elements: !273)
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !26, line: 594, baseType: !116, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !272, file: !26, line: 594, baseType: !38, size: 8, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !272, file: !26, line: 594, baseType: !38, size: 8, offset: 72)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !272, file: !26, line: 594, baseType: !45, size: 16, offset: 80)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !272, file: !26, line: 594, baseType: !45, size: 16, offset: 96)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !272, file: !26, line: 594, baseType: !45, size: 16, offset: 112)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !272, file: !26, line: 595, baseType: !175, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !272, file: !26, line: 596, baseType: !88, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !272, file: !26, line: 597, baseType: !88, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !272, file: !26, line: 598, baseType: !62, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !261, file: !26, line: 666, baseType: !285, size: 192)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !26, line: 573, size: 192, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !285, file: !26, line: 574, baseType: !116, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !285, file: !26, line: 574, baseType: !38, size: 8, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !285, file: !26, line: 574, baseType: !38, size: 8, offset: 72)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !285, file: !26, line: 574, baseType: !45, size: 16, offset: 80)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !285, file: !26, line: 574, baseType: !45, size: 16, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !285, file: !26, line: 574, baseType: !29, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !261, file: !26, line: 667, baseType: !294, size: 192)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !26, line: 604, size: 192, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !26, line: 605, baseType: !116, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !294, file: !26, line: 605, baseType: !38, size: 8, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !26, line: 605, baseType: !38, size: 8, offset: 72)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !294, file: !26, line: 605, baseType: !45, size: 16, offset: 80)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !294, file: !26, line: 605, baseType: !45, size: 16, offset: 96)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !294, file: !26, line: 605, baseType: !24, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !261, file: !26, line: 668, baseType: !303, size: 448)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !26, line: 608, size: 448, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !26, line: 609, baseType: !116, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !303, file: !26, line: 609, baseType: !38, size: 8, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !26, line: 609, baseType: !38, size: 8, offset: 72)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !26, line: 609, baseType: !45, size: 16, offset: 80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !303, file: !26, line: 609, baseType: !45, size: 16, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !303, file: !26, line: 609, baseType: !76, size: 32, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !303, file: !26, line: 610, baseType: !175, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !303, file: !26, line: 611, baseType: !88, size: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !303, file: !26, line: 612, baseType: !88, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !303, file: !26, line: 613, baseType: !76, size: 32, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !261, file: !26, line: 669, baseType: !316, size: 512)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !26, line: 580, size: 512, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !26, line: 581, baseType: !116, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !316, file: !26, line: 581, baseType: !38, size: 8, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !26, line: 581, baseType: !38, size: 8, offset: 72)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !316, file: !26, line: 581, baseType: !45, size: 16, offset: 80)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !316, file: !26, line: 581, baseType: !45, size: 16, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !316, file: !26, line: 581, baseType: !76, size: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !316, file: !26, line: 582, baseType: !29, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !316, file: !26, line: 583, baseType: !29, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !316, file: !26, line: 584, baseType: !141, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !316, file: !26, line: 585, baseType: !116, size: 64, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !316, file: !26, line: 586, baseType: !76, size: 32, offset: 448)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !261, file: !26, line: 670, baseType: !330, size: 320)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !26, line: 620, size: 320, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !26, line: 621, baseType: !116, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !330, file: !26, line: 621, baseType: !38, size: 8, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !26, line: 621, baseType: !38, size: 8, offset: 72)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !330, file: !26, line: 621, baseType: !45, size: 16, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !330, file: !26, line: 621, baseType: !45, size: 16, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !330, file: !26, line: 621, baseType: !38, size: 8, offset: 112)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !330, file: !26, line: 622, baseType: !141, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !330, file: !26, line: 623, baseType: !29, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !330, file: !26, line: 624, baseType: !62, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !261, file: !26, line: 671, baseType: !342, size: 640)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !26, line: 631, size: 640, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !26, line: 632, baseType: !116, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !342, file: !26, line: 632, baseType: !38, size: 8, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !26, line: 632, baseType: !38, size: 8, offset: 72)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !342, file: !26, line: 632, baseType: !45, size: 16, offset: 80)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !342, file: !26, line: 632, baseType: !45, size: 16, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !342, file: !26, line: 633, baseType: !350, size: 512, offset: 128)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 512, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 8)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !261, file: !26, line: 672, baseType: !354, size: 320)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !26, line: 654, size: 320, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !26, line: 655, baseType: !116, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !354, file: !26, line: 655, baseType: !38, size: 8, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !26, line: 655, baseType: !38, size: 8, offset: 72)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !354, file: !26, line: 655, baseType: !45, size: 16, offset: 80)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !354, file: !26, line: 655, baseType: !45, size: 16, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !354, file: !26, line: 655, baseType: !38, size: 8, offset: 112)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !354, file: !26, line: 656, baseType: !24, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !354, file: !26, line: 657, baseType: !29, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !354, file: !26, line: 658, baseType: !365, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !26, line: 645, size: 128, elements: !367)
!367 = !{!368, !374}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !366, file: !26, line: 646, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !140, line: 1052, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !373, !76, !116}
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !140, line: 424, baseType: !116)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !366, file: !26, line: 647, baseType: !116, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !167, file: !26, line: 902, baseType: !175, size: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !167, file: !26, line: 903, baseType: !76, size: 32, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !142, file: !21, line: 61, baseType: !76, size: 32, offset: 1088)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !142, file: !21, line: 62, baseType: !76, size: 32, offset: 1120)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !142, file: !21, line: 63, baseType: !45, size: 16, offset: 1152)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !142, file: !21, line: 64, baseType: !38, size: 8, offset: 1168)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !142, file: !21, line: 66, baseType: !382, size: 2688, offset: 1216)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2688, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 7)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !142, file: !21, line: 67, baseType: !386, size: 3072, offset: 3904)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 3072, elements: !351)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !142, file: !21, line: 68, baseType: !388, size: 576, offset: 6976)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 576, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 9)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !142, file: !21, line: 69, baseType: !103, size: 64, offset: 7552)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !142, file: !21, line: 71, baseType: !88, size: 64, offset: 7616)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !142, file: !21, line: 72, baseType: !103, size: 64, offset: 7680)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !142, file: !21, line: 73, baseType: !260, size: 64, offset: 7744)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !142, file: !21, line: 74, baseType: !24, size: 64, offset: 7808)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !142, file: !21, line: 75, baseType: !29, size: 64, offset: 7872)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !142, file: !21, line: 76, baseType: !24, size: 64, offset: 7936)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !142, file: !21, line: 77, baseType: !175, size: 64, offset: 8000)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !142, file: !21, line: 78, baseType: !29, size: 64, offset: 8064)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !142, file: !21, line: 79, baseType: !24, size: 64, offset: 8128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !142, file: !21, line: 80, baseType: !74, size: 64, offset: 8192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !142, file: !21, line: 81, baseType: !175, size: 64, offset: 8256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !142, file: !21, line: 82, baseType: !404, size: 64, offset: 8320)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !26, line: 702, size: 128, elements: !407)
!407 = !{!408, !409, !410, !411, !412, !413}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !406, file: !26, line: 706, baseType: !76, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !406, file: !26, line: 707, baseType: !76, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !406, file: !26, line: 708, baseType: !45, size: 16, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !406, file: !26, line: 709, baseType: !38, size: 8, offset: 80)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !406, file: !26, line: 710, baseType: !38, size: 8, offset: 88)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !406, file: !26, line: 711, baseType: !38, size: 8, offset: 96)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !142, file: !21, line: 83, baseType: !175, size: 64, offset: 8384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !142, file: !21, line: 84, baseType: !29, size: 64, offset: 8448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !142, file: !21, line: 85, baseType: !260, size: 64, offset: 8512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !142, file: !21, line: 86, baseType: !29, size: 64, offset: 8576)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !142, file: !21, line: 87, baseType: !260, size: 64, offset: 8640)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !142, file: !21, line: 88, baseType: !175, size: 64, offset: 8704)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !142, file: !21, line: 89, baseType: !175, size: 64, offset: 8768)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !142, file: !21, line: 90, baseType: !422, size: 64, offset: 8832)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !142, file: !21, line: 91, baseType: !424, size: 64, offset: 8896)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !26, line: 637, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!139, !141, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !142, file: !21, line: 92, baseType: !430, size: 64, offset: 8960)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !26, line: 641, baseType: !136)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !132, file: !31, line: 152, baseType: !29, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !118, file: !31, line: 155, baseType: !76, size: 32, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !118, file: !31, line: 156, baseType: !152, size: 16, offset: 416)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !118, file: !31, line: 157, baseType: !38, size: 8, offset: 432)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !30, file: !31, line: 375, baseType: !436, size: 576)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !31, line: 122, size: 576, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !436, file: !31, line: 123, baseType: !29, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !436, file: !31, line: 123, baseType: !38, size: 8, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !436, file: !31, line: 123, baseType: !38, size: 8, offset: 72)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !436, file: !31, line: 123, baseType: !45, size: 16, offset: 80)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !31, line: 123, baseType: !38, size: 8, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !436, file: !31, line: 123, baseType: !38, size: 8, offset: 104)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !436, file: !31, line: 124, baseType: !45, size: 16, offset: 112)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !436, file: !31, line: 125, baseType: !116, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !436, file: !31, line: 126, baseType: !62, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !436, file: !31, line: 127, baseType: !422, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !436, file: !31, line: 128, baseType: !29, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !31, line: 129, baseType: !29, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !436, file: !31, line: 130, baseType: !24, size: 64, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !436, file: !31, line: 131, baseType: !38, size: 8, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !30, file: !31, line: 376, baseType: !453, size: 448)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !31, line: 134, size: 448, elements: !454)
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !466}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !453, file: !31, line: 135, baseType: !29, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !453, file: !31, line: 135, baseType: !38, size: 8, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !453, file: !31, line: 135, baseType: !38, size: 8, offset: 72)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !453, file: !31, line: 135, baseType: !45, size: 16, offset: 80)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !31, line: 135, baseType: !38, size: 8, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !453, file: !31, line: 135, baseType: !38, size: 8, offset: 104)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !453, file: !31, line: 136, baseType: !24, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !453, file: !31, line: 137, baseType: !29, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !31, line: 138, baseType: !29, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !453, file: !31, line: 139, baseType: !465, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !140, line: 129, baseType: !62)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !453, file: !31, line: 140, baseType: !76, size: 32, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !30, file: !31, line: 377, baseType: !468, size: 320)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !31, line: 184, size: 320, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475, !479}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !468, file: !31, line: 185, baseType: !29, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !468, file: !31, line: 185, baseType: !38, size: 8, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !468, file: !31, line: 185, baseType: !38, size: 8, offset: 72)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !468, file: !31, line: 185, baseType: !45, size: 16, offset: 80)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !31, line: 185, baseType: !38, size: 8, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !468, file: !31, line: 185, baseType: !476, size: 128, offset: 128)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 2)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !468, file: !31, line: 185, baseType: !29, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !30, file: !31, line: 378, baseType: !481, size: 384)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !31, line: 187, size: 384, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !481, file: !31, line: 188, baseType: !29, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !481, file: !31, line: 188, baseType: !38, size: 8, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !481, file: !31, line: 188, baseType: !38, size: 8, offset: 72)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !481, file: !31, line: 188, baseType: !45, size: 16, offset: 80)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !481, file: !31, line: 188, baseType: !38, size: 8, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !481, file: !31, line: 189, baseType: !476, size: 128, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !481, file: !31, line: 189, baseType: !29, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !481, file: !31, line: 189, baseType: !491, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !26, line: 480, size: 576, elements: !493)
!493 = !{!494, !495, !496, !497, !505, !520, !552, !553, !554, !555, !556, !557}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !492, file: !26, line: 481, baseType: !24, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !492, file: !26, line: 482, baseType: !491, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !492, file: !26, line: 483, baseType: !491, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !492, file: !26, line: 484, baseType: !498, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !26, line: 497, size: 256, elements: !500)
!500 = !{!501, !502, !503, !504}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !499, file: !26, line: 498, baseType: !498, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !26, line: 499, baseType: !498, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !499, file: !26, line: 500, baseType: !491, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !499, file: !26, line: 501, baseType: !76, size: 32, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !492, file: !26, line: 485, baseType: !506, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !26, line: 466, size: 320, elements: !508)
!508 = !{!509, !514, !515, !516, !517, !518, !519}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !507, file: !26, line: 467, baseType: !510, size: 128)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !26, line: 459, size: 128, elements: !511)
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !510, file: !26, line: 460, baseType: !38, size: 8)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !510, file: !26, line: 461, baseType: !62, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !507, file: !26, line: 468, baseType: !510, size: 128, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !507, file: !26, line: 469, baseType: !45, size: 16, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !507, file: !26, line: 470, baseType: !38, size: 8, offset: 272)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !507, file: !26, line: 471, baseType: !38, size: 8, offset: 280)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !507, file: !26, line: 472, baseType: !38, size: 8, offset: 288)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !507, file: !26, line: 473, baseType: !38, size: 8, offset: 296)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !492, file: !26, line: 486, baseType: !521, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !26, line: 448, size: 192, elements: !523)
!523 = !{!524, !547, !548, !549, !550, !551}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !522, file: !26, line: 449, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !26, line: 438, size: 64, elements: !526)
!526 = !{!527, !528, !541}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !525, file: !26, line: 439, baseType: !24, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !525, file: !26, line: 440, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !26, line: 419, size: 256, elements: !531)
!531 = !{!532, !537, !538, !539, !540}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !530, file: !26, line: 420, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !140, line: 1049, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!76, !373, !76, !116}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !530, file: !26, line: 421, baseType: !116, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !530, file: !26, line: 422, baseType: !24, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !530, file: !26, line: 423, baseType: !38, size: 8, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !530, file: !26, line: 424, baseType: !38, size: 8, offset: 200)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !525, file: !26, line: 441, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !26, line: 429, size: 128, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !543, file: !26, line: 430, baseType: !24, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !543, file: !26, line: 431, baseType: !542, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !522, file: !26, line: 450, baseType: !506, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !522, file: !26, line: 451, baseType: !38, size: 8, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !522, file: !26, line: 452, baseType: !38, size: 8, offset: 136)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !522, file: !26, line: 453, baseType: !38, size: 8, offset: 144)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !522, file: !26, line: 454, baseType: !38, size: 8, offset: 152)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !492, file: !26, line: 487, baseType: !62, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !492, file: !26, line: 488, baseType: !76, size: 32, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !492, file: !26, line: 489, baseType: !45, size: 16, offset: 480)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !492, file: !26, line: 490, baseType: !45, size: 16, offset: 496)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !492, file: !26, line: 491, baseType: !38, size: 8, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !492, file: !26, line: 492, baseType: !38, size: 8, offset: 520)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !30, file: !31, line: 379, baseType: !559, size: 384)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !31, line: 192, size: 384, elements: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !559, file: !31, line: 193, baseType: !29, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !559, file: !31, line: 193, baseType: !38, size: 8, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !559, file: !31, line: 193, baseType: !38, size: 8, offset: 72)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !559, file: !31, line: 193, baseType: !45, size: 16, offset: 80)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !559, file: !31, line: 193, baseType: !38, size: 8, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !559, file: !31, line: 193, baseType: !476, size: 128, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !559, file: !31, line: 193, baseType: !29, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !559, file: !31, line: 193, baseType: !76, size: 32, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !559, file: !31, line: 194, baseType: !76, size: 32, offset: 352)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !30, file: !31, line: 380, baseType: !571, size: 384)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !31, line: 197, size: 384, elements: !572)
!572 = !{!573, !574, !575, !576, !577, !578, !579, !580, !581, !582}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !571, file: !31, line: 198, baseType: !29, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !571, file: !31, line: 198, baseType: !38, size: 8, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !571, file: !31, line: 198, baseType: !38, size: 8, offset: 72)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !571, file: !31, line: 198, baseType: !45, size: 16, offset: 80)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !571, file: !31, line: 198, baseType: !38, size: 8, offset: 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !571, file: !31, line: 200, baseType: !38, size: 8, offset: 104)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !571, file: !31, line: 201, baseType: !38, size: 8, offset: 112)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !571, file: !31, line: 202, baseType: !476, size: 128, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !571, file: !31, line: 202, baseType: !29, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !571, file: !31, line: 202, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !140, line: 128, baseType: !62)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !30, file: !31, line: 381, baseType: !585, size: 320)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !31, line: 205, size: 320, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !585, file: !31, line: 206, baseType: !29, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !585, file: !31, line: 206, baseType: !38, size: 8, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !585, file: !31, line: 206, baseType: !38, size: 8, offset: 72)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !585, file: !31, line: 206, baseType: !45, size: 16, offset: 80)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !31, line: 206, baseType: !38, size: 8, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !585, file: !31, line: 206, baseType: !476, size: 128, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !585, file: !31, line: 206, baseType: !29, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !30, file: !31, line: 382, baseType: !595, size: 384)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !31, line: 233, size: 384, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !595, file: !31, line: 234, baseType: !29, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !595, file: !31, line: 234, baseType: !38, size: 8, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !595, file: !31, line: 234, baseType: !38, size: 8, offset: 72)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !595, file: !31, line: 234, baseType: !45, size: 16, offset: 80)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !595, file: !31, line: 234, baseType: !38, size: 8, offset: 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !595, file: !31, line: 234, baseType: !38, size: 8, offset: 104)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !595, file: !31, line: 234, baseType: !38, size: 8, offset: 112)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !595, file: !31, line: 234, baseType: !38, size: 8, offset: 120)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !595, file: !31, line: 234, baseType: !24, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !595, file: !31, line: 234, baseType: !76, size: 32, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !595, file: !31, line: 234, baseType: !76, size: 32, offset: 224)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !595, file: !31, line: 234, baseType: !76, size: 32, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !595, file: !31, line: 234, baseType: !38, size: 8, offset: 288)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !595, file: !31, line: 234, baseType: !38, size: 8, offset: 296)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !595, file: !31, line: 234, baseType: !29, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !30, file: !31, line: 383, baseType: !613, size: 576)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !31, line: 237, size: 576, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !613, file: !31, line: 238, baseType: !29, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !31, line: 238, baseType: !38, size: 8, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !31, line: 238, baseType: !38, size: 8, offset: 72)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !613, file: !31, line: 238, baseType: !45, size: 16, offset: 80)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !31, line: 238, baseType: !38, size: 8, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !613, file: !31, line: 238, baseType: !38, size: 8, offset: 104)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !613, file: !31, line: 238, baseType: !38, size: 8, offset: 112)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !613, file: !31, line: 238, baseType: !38, size: 8, offset: 120)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !613, file: !31, line: 238, baseType: !24, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !613, file: !31, line: 238, baseType: !76, size: 32, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !613, file: !31, line: 238, baseType: !76, size: 32, offset: 224)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !613, file: !31, line: 238, baseType: !76, size: 32, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !613, file: !31, line: 238, baseType: !38, size: 8, offset: 288)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !613, file: !31, line: 238, baseType: !38, size: 8, offset: 296)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !613, file: !31, line: 238, baseType: !45, size: 16, offset: 304)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !613, file: !31, line: 239, baseType: !29, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !613, file: !31, line: 240, baseType: !88, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !613, file: !31, line: 241, baseType: !45, size: 16, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !613, file: !31, line: 242, baseType: !88, size: 64, offset: 512)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !30, file: !31, line: 384, baseType: !635, size: 384)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !31, line: 262, size: 384, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !635, file: !31, line: 263, baseType: !29, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !635, file: !31, line: 263, baseType: !38, size: 8, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !635, file: !31, line: 263, baseType: !38, size: 8, offset: 72)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !635, file: !31, line: 263, baseType: !45, size: 16, offset: 80)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !31, line: 263, baseType: !38, size: 8, offset: 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !635, file: !31, line: 263, baseType: !38, size: 8, offset: 104)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !635, file: !31, line: 263, baseType: !38, size: 8, offset: 112)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !635, file: !31, line: 263, baseType: !38, size: 8, offset: 120)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !635, file: !31, line: 263, baseType: !24, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !635, file: !31, line: 263, baseType: !76, size: 32, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !635, file: !31, line: 263, baseType: !76, size: 32, offset: 224)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !635, file: !31, line: 263, baseType: !76, size: 32, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !635, file: !31, line: 263, baseType: !38, size: 8, offset: 288)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !635, file: !31, line: 263, baseType: !38, size: 8, offset: 296)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !635, file: !31, line: 263, baseType: !38, size: 8, offset: 304)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !635, file: !31, line: 264, baseType: !29, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !30, file: !31, line: 385, baseType: !654, size: 448)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !31, line: 245, size: 448, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !654, file: !31, line: 246, baseType: !29, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !654, file: !31, line: 246, baseType: !38, size: 8, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !654, file: !31, line: 246, baseType: !38, size: 8, offset: 72)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !654, file: !31, line: 246, baseType: !45, size: 16, offset: 80)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !31, line: 246, baseType: !38, size: 8, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !654, file: !31, line: 246, baseType: !38, size: 8, offset: 104)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !654, file: !31, line: 246, baseType: !38, size: 8, offset: 112)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !654, file: !31, line: 246, baseType: !38, size: 8, offset: 120)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !654, file: !31, line: 246, baseType: !24, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !654, file: !31, line: 246, baseType: !76, size: 32, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !654, file: !31, line: 246, baseType: !76, size: 32, offset: 224)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !654, file: !31, line: 246, baseType: !76, size: 32, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !654, file: !31, line: 246, baseType: !38, size: 8, offset: 288)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !654, file: !31, line: 246, baseType: !38, size: 8, offset: 296)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !654, file: !31, line: 246, baseType: !29, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !654, file: !31, line: 247, baseType: !29, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !30, file: !31, line: 386, baseType: !673, size: 448)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !31, line: 250, size: 448, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !673, file: !31, line: 251, baseType: !29, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !673, file: !31, line: 251, baseType: !38, size: 8, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !673, file: !31, line: 251, baseType: !38, size: 8, offset: 72)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !673, file: !31, line: 251, baseType: !45, size: 16, offset: 80)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !673, file: !31, line: 251, baseType: !38, size: 8, offset: 96)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !673, file: !31, line: 251, baseType: !38, size: 8, offset: 104)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !673, file: !31, line: 251, baseType: !38, size: 8, offset: 112)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !673, file: !31, line: 251, baseType: !38, size: 8, offset: 120)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !673, file: !31, line: 251, baseType: !24, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !673, file: !31, line: 251, baseType: !76, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !673, file: !31, line: 251, baseType: !76, size: 32, offset: 224)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !673, file: !31, line: 251, baseType: !76, size: 32, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !673, file: !31, line: 251, baseType: !38, size: 8, offset: 288)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !673, file: !31, line: 251, baseType: !38, size: 8, offset: 296)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !673, file: !31, line: 256, baseType: !29, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !673, file: !31, line: 257, baseType: !29, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !30, file: !31, line: 387, baseType: !692, size: 512)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !31, line: 273, size: 512, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !692, file: !31, line: 274, baseType: !29, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !692, file: !31, line: 274, baseType: !38, size: 8, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !692, file: !31, line: 274, baseType: !38, size: 8, offset: 72)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !692, file: !31, line: 274, baseType: !45, size: 16, offset: 80)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !31, line: 274, baseType: !38, size: 8, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !692, file: !31, line: 274, baseType: !24, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !692, file: !31, line: 275, baseType: !76, size: 32, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !692, file: !31, line: 276, baseType: !369, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !692, file: !31, line: 277, baseType: !116, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !692, file: !31, line: 278, baseType: !476, size: 128, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !30, file: !31, line: 388, baseType: !705, size: 512)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !31, line: 281, size: 512, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714, !720, !721, !722, !728, !729}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !705, file: !31, line: 282, baseType: !29, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !705, file: !31, line: 282, baseType: !38, size: 8, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !705, file: !31, line: 282, baseType: !38, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !705, file: !31, line: 282, baseType: !45, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !31, line: 282, baseType: !38, size: 8, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !705, file: !31, line: 282, baseType: !38, size: 8, offset: 104)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !705, file: !31, line: 283, baseType: !38, size: 8, offset: 112)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !705, file: !31, line: 284, baseType: !715, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !140, line: 1084, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!139, !76, !465, !76, !719, !116, !116}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !705, file: !31, line: 285, baseType: !24, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !705, file: !31, line: 286, baseType: !116, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !705, file: !31, line: 287, baseType: !723, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !140, line: 1102, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!139, !373, !76, !116, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !705, file: !31, line: 288, baseType: !29, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !705, file: !31, line: 289, baseType: !29, size: 64, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !30, file: !31, line: 389, baseType: !731, size: 512)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !31, line: 307, size: 512, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !731, file: !31, line: 308, baseType: !29, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !731, file: !31, line: 308, baseType: !38, size: 8, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !731, file: !31, line: 308, baseType: !38, size: 8, offset: 72)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !731, file: !31, line: 308, baseType: !45, size: 16, offset: 80)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !731, file: !31, line: 308, baseType: !38, size: 8, offset: 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !731, file: !31, line: 308, baseType: !38, size: 8, offset: 104)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !731, file: !31, line: 309, baseType: !38, size: 8, offset: 112)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !731, file: !31, line: 310, baseType: !38, size: 8, offset: 120)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !731, file: !31, line: 311, baseType: !116, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !731, file: !31, line: 312, baseType: !24, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !731, file: !31, line: 313, baseType: !103, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !731, file: !31, line: 314, baseType: !88, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !731, file: !31, line: 315, baseType: !88, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !731, file: !31, line: 316, baseType: !76, size: 32, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !30, file: !31, line: 390, baseType: !748, size: 448)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !31, line: 340, size: 448, elements: !749)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !748, file: !31, line: 341, baseType: !29, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !748, file: !31, line: 341, baseType: !38, size: 8, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !748, file: !31, line: 341, baseType: !38, size: 8, offset: 72)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !748, file: !31, line: 341, baseType: !45, size: 16, offset: 80)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !31, line: 341, baseType: !38, size: 8, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !748, file: !31, line: 341, baseType: !24, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !748, file: !31, line: 342, baseType: !24, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !748, file: !31, line: 343, baseType: !116, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !748, file: !31, line: 344, baseType: !88, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !748, file: !31, line: 345, baseType: !76, size: 32, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !30, file: !31, line: 391, baseType: !761, size: 256)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !31, line: 350, size: 256, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768, !773}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !761, file: !31, line: 351, baseType: !29, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !761, file: !31, line: 351, baseType: !38, size: 8, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !761, file: !31, line: 351, baseType: !38, size: 8, offset: 72)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !761, file: !31, line: 351, baseType: !45, size: 16, offset: 80)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !31, line: 351, baseType: !38, size: 8, offset: 96)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !761, file: !31, line: 351, baseType: !769, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !140, line: 1055, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !373, !116}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !761, file: !31, line: 352, baseType: !116, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !30, file: !31, line: 392, baseType: !775, size: 192)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !31, line: 357, size: 192, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !775, file: !31, line: 358, baseType: !29, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !775, file: !31, line: 358, baseType: !38, size: 8, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !31, line: 358, baseType: !38, size: 8, offset: 72)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !775, file: !31, line: 358, baseType: !45, size: 16, offset: 80)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !31, line: 358, baseType: !38, size: 8, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !775, file: !31, line: 358, baseType: !29, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !30, file: !31, line: 399, baseType: !25, size: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !25, file: !26, line: 135, baseType: !38, size: 8, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !26, line: 136, baseType: !38, size: 8, offset: 72)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !25, file: !26, line: 137, baseType: !45, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !26, line: 138, baseType: !788, size: 32, offset: 96)
!788 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !789, line: 327, size: 32, elements: !790)
!789 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !788, file: !789, line: 328, baseType: !76, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !788, file: !789, line: 329, baseType: !234, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !25, file: !26, line: 139, baseType: !24, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !25, file: !26, line: 140, baseType: !24, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !25, file: !26, line: 141, baseType: !24, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !25, file: !26, line: 142, baseType: !152, size: 16, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !20, file: !21, line: 156, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !20, file: !21, line: 157, baseType: !103, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !20, file: !21, line: 159, baseType: !24, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !20, file: !21, line: 160, baseType: !29, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !20, file: !21, line: 161, baseType: !74, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !20, file: !21, line: 163, baseType: !804, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !26, line: 351, size: 56, elements: !807)
!807 = !{!808, !814, !823, !831, !840}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !806, file: !26, line: 352, baseType: !809, size: 56)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !26, line: 295, size: 56, elements: !810)
!810 = !{!811, !812, !813}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !809, file: !26, line: 296, baseType: !234, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !809, file: !26, line: 297, baseType: !45, size: 16, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !809, file: !26, line: 298, baseType: !38, size: 8, offset: 48)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !806, file: !26, line: 353, baseType: !815, size: 56)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !26, line: 314, size: 56, elements: !816)
!816 = !{!817, !818, !819, !820, !821, !822}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !815, file: !26, line: 315, baseType: !38, size: 8)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !815, file: !26, line: 316, baseType: !38, size: 8, offset: 8)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !815, file: !26, line: 317, baseType: !38, size: 8, offset: 16)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !815, file: !26, line: 318, baseType: !38, size: 8, offset: 24)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !815, file: !26, line: 319, baseType: !38, size: 8, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !815, file: !26, line: 320, baseType: !45, size: 16, offset: 40)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !806, file: !26, line: 354, baseType: !824, size: 56)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !26, line: 325, size: 56, elements: !825)
!825 = !{!826, !827, !828, !830}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !824, file: !26, line: 326, baseType: !38, size: 8)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !824, file: !26, line: 327, baseType: !38, size: 8, offset: 8)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !824, file: !26, line: 328, baseType: !829, size: 32, offset: 16)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !235)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !824, file: !26, line: 329, baseType: !38, size: 8, offset: 48)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !806, file: !26, line: 355, baseType: !832, size: 56)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !26, line: 334, size: 56, elements: !833)
!833 = !{!834, !835, !836, !838, !839}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !832, file: !26, line: 335, baseType: !38, size: 8)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !832, file: !26, line: 336, baseType: !38, size: 8, offset: 8)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !832, file: !26, line: 337, baseType: !837, size: 16, offset: 16)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16, elements: !477)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !832, file: !26, line: 338, baseType: !38, size: 8, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !832, file: !26, line: 339, baseType: !45, size: 16, offset: 40)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !806, file: !26, line: 356, baseType: !841, size: 56)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !26, line: 342, size: 56, elements: !842)
!842 = !{!843, !844, !845, !846, !847, !848}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !841, file: !26, line: 343, baseType: !38, size: 8)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !841, file: !26, line: 344, baseType: !38, size: 8, offset: 8)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !841, file: !26, line: 345, baseType: !38, size: 8, offset: 16)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !841, file: !26, line: 346, baseType: !38, size: 8, offset: 24)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !841, file: !26, line: 347, baseType: !38, size: 8, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !841, file: !26, line: 348, baseType: !45, size: 16, offset: 40)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !20, file: !21, line: 164, baseType: !29, size: 64, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !20, file: !21, line: 165, baseType: !29, size: 64, offset: 512)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !20, file: !21, line: 167, baseType: !76, size: 32, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !20, file: !21, line: 168, baseType: !76, size: 32, offset: 608)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !20, file: !21, line: 169, baseType: !45, size: 16, offset: 640)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !20, file: !21, line: 170, baseType: !45, size: 16, offset: 656)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !20, file: !21, line: 171, baseType: !38, size: 8, offset: 672)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !20, file: !21, line: 172, baseType: !38, size: 8, offset: 680)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !20, file: !21, line: 173, baseType: !38, size: 8, offset: 688)
!858 = !DILocalVariable(name: "info", arg: 1, scope: !16, file: !3, line: 30, type: !19)
!859 = !DILocation(line: 30, column: 62, scope: !16)
!860 = !DILocalVariable(name: "arg_type_list", scope: !16, file: !3, line: 32, type: !45)
!861 = !DILocation(line: 32, column: 6, scope: !16)
!862 = !DILocalVariable(name: "arg_count", scope: !16, file: !3, line: 33, type: !38)
!863 = !DILocation(line: 33, column: 5, scope: !16)
!864 = !DILocalVariable(name: "arg_type", scope: !16, file: !3, line: 34, type: !38)
!865 = !DILocation(line: 34, column: 5, scope: !16)
!866 = !DILocalVariable(name: "user_arg_type", scope: !16, file: !3, line: 35, type: !38)
!867 = !DILocation(line: 35, column: 5, scope: !16)
!868 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 36, type: !76)
!869 = !DILocation(line: 36, column: 6, scope: !16)
!870 = !DILocation(line: 45, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !16, file: !3, line: 45, column: 6)
!872 = !DILocation(line: 45, column: 13, scope: !871)
!873 = !DILocation(line: 45, column: 24, scope: !871)
!874 = !DILocation(line: 45, column: 28, scope: !871)
!875 = !DILocation(line: 45, column: 34, scope: !871)
!876 = !DILocation(line: 45, column: 40, scope: !871)
!877 = !DILocation(line: 45, column: 46, scope: !871)
!878 = !DILocation(line: 45, column: 6, scope: !16)
!879 = !DILocation(line: 46, column: 3, scope: !880)
!880 = distinct !DILexicalBlock(scope: !871, file: !3, line: 45, column: 66)
!881 = !DILocation(line: 49, column: 18, scope: !16)
!882 = !DILocation(line: 49, column: 24, scope: !16)
!883 = !DILocation(line: 49, column: 36, scope: !16)
!884 = !DILocation(line: 49, column: 41, scope: !16)
!885 = !DILocation(line: 49, column: 16, scope: !16)
!886 = !DILocation(line: 50, column: 14, scope: !16)
!887 = !DILocation(line: 50, column: 12, scope: !16)
!888 = !DILocation(line: 54, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !16, file: !3, line: 54, column: 2)
!890 = !DILocation(line: 54, column: 7, scope: !889)
!891 = !DILocation(line: 54, column: 16, scope: !892)
!892 = distinct !DILexicalBlock(scope: !889, file: !3, line: 54, column: 2)
!893 = !DILocation(line: 54, column: 20, scope: !892)
!894 = !DILocation(line: 54, column: 18, scope: !892)
!895 = !DILocation(line: 54, column: 31, scope: !892)
!896 = !DILocation(line: 54, column: 35, scope: !892)
!897 = !DILocation(line: 54, column: 39, scope: !892)
!898 = !DILocation(line: 54, column: 45, scope: !892)
!899 = !DILocation(line: 54, column: 37, scope: !892)
!900 = !DILocation(line: 0, scope: !892)
!901 = !DILocation(line: 54, column: 2, scope: !889)
!902 = !DILocation(line: 55, column: 14, scope: !903)
!903 = distinct !DILexicalBlock(scope: !892, file: !3, line: 54, column: 65)
!904 = !DILocation(line: 55, column: 12, scope: !903)
!905 = !DILocation(line: 56, column: 19, scope: !903)
!906 = !DILocation(line: 56, column: 25, scope: !903)
!907 = !DILocation(line: 56, column: 36, scope: !903)
!908 = !DILocation(line: 56, column: 40, scope: !903)
!909 = !DILocation(line: 56, column: 47, scope: !903)
!910 = !DILocation(line: 56, column: 17, scope: !903)
!911 = !DILocation(line: 60, column: 8, scope: !912)
!912 = distinct !DILexicalBlock(scope: !903, file: !3, line: 60, column: 7)
!913 = !DILocation(line: 60, column: 25, scope: !912)
!914 = !DILocation(line: 60, column: 22, scope: !912)
!915 = !DILocation(line: 60, column: 35, scope: !912)
!916 = !DILocation(line: 60, column: 39, scope: !912)
!917 = !DILocation(line: 60, column: 48, scope: !912)
!918 = !DILocation(line: 60, column: 7, scope: !903)
!919 = !DILocation(line: 61, column: 4, scope: !920)
!920 = distinct !DILexicalBlock(scope: !912, file: !3, line: 60, column: 67)
!921 = !DILocation(line: 72, column: 4, scope: !920)
!922 = !DILocation(line: 72, column: 10, scope: !920)
!923 = !DILocation(line: 72, column: 16, scope: !920)
!924 = !DILocation(line: 72, column: 22, scope: !920)
!925 = !DILocation(line: 73, column: 3, scope: !920)
!926 = !DILocation(line: 74, column: 2, scope: !903)
!927 = !DILocation(line: 54, column: 61, scope: !892)
!928 = !DILocation(line: 54, column: 2, scope: !892)
!929 = distinct !{!929, !901, !930}
!930 = !DILocation(line: 74, column: 2, scope: !889)
!931 = !DILocation(line: 75, column: 1, scope: !16)
!932 = distinct !DISubprogram(name: "acpi_ns_check_acpi_compliance", scope: !3, file: !3, line: 94, type: !933, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !74, !24, !804}
!935 = !DILocalVariable(name: "pathname", arg: 1, scope: !932, file: !3, line: 94, type: !74)
!936 = !DILocation(line: 94, column: 37, scope: !932)
!937 = !DILocalVariable(name: "node", arg: 2, scope: !932, file: !3, line: 95, type: !24)
!938 = !DILocation(line: 95, column: 38, scope: !932)
!939 = !DILocalVariable(name: "predefined", arg: 3, scope: !932, file: !3, line: 96, type: !804)
!940 = !DILocation(line: 96, column: 44, scope: !932)
!941 = !DILocalVariable(name: "aml_param_count", scope: !932, file: !3, line: 98, type: !76)
!942 = !DILocation(line: 98, column: 6, scope: !932)
!943 = !DILocalVariable(name: "required_param_count", scope: !932, file: !3, line: 99, type: !76)
!944 = !DILocation(line: 99, column: 6, scope: !932)
!945 = !DILocation(line: 101, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !932, file: !3, line: 101, column: 6)
!947 = !DILocation(line: 101, column: 18, scope: !946)
!948 = !DILocation(line: 101, column: 22, scope: !946)
!949 = !DILocation(line: 101, column: 28, scope: !946)
!950 = !DILocation(line: 101, column: 34, scope: !946)
!951 = !DILocation(line: 101, column: 6, scope: !932)
!952 = !DILocation(line: 102, column: 3, scope: !953)
!953 = distinct !DILexicalBlock(scope: !946, file: !3, line: 101, column: 54)
!954 = !DILocation(line: 108, column: 6, scope: !932)
!955 = !DILocation(line: 107, column: 23, scope: !932)
!956 = !DILocation(line: 114, column: 6, scope: !957)
!957 = distinct !DILexicalBlock(scope: !932, file: !3, line: 114, column: 6)
!958 = !DILocation(line: 114, column: 12, scope: !957)
!959 = !DILocation(line: 114, column: 17, scope: !957)
!960 = !DILocation(line: 114, column: 6, scope: !932)
!961 = !DILocation(line: 115, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !3, line: 115, column: 7)
!963 = distinct !DILexicalBlock(scope: !957, file: !3, line: 114, column: 38)
!964 = !DILocation(line: 115, column: 28, scope: !962)
!965 = !DILocation(line: 115, column: 7, scope: !963)
!966 = !DILocation(line: 119, column: 4, scope: !967)
!967 = distinct !DILexicalBlock(scope: !962, file: !3, line: 115, column: 33)
!968 = !DILocation(line: 125, column: 3, scope: !967)
!969 = !DILocation(line: 125, column: 15, scope: !970)
!970 = distinct !DILexicalBlock(scope: !962, file: !3, line: 125, column: 14)
!971 = !DILocation(line: 126, column: 7, scope: !970)
!972 = !DILocation(line: 126, column: 11, scope: !970)
!973 = !DILocation(line: 126, column: 23, scope: !970)
!974 = !DILocation(line: 126, column: 28, scope: !970)
!975 = !DILocation(line: 125, column: 14, scope: !962)
!976 = !DILocation(line: 130, column: 4, scope: !977)
!977 = distinct !DILexicalBlock(scope: !970, file: !3, line: 126, column: 45)
!978 = !DILocation(line: 136, column: 3, scope: !977)
!979 = !DILocation(line: 138, column: 3, scope: !963)
!980 = !DILocation(line: 151, column: 20, scope: !932)
!981 = !DILocation(line: 151, column: 26, scope: !932)
!982 = !DILocation(line: 151, column: 34, scope: !932)
!983 = !DILocation(line: 151, column: 41, scope: !932)
!984 = !DILocation(line: 151, column: 18, scope: !932)
!985 = !DILocation(line: 153, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !932, file: !3, line: 153, column: 6)
!987 = !DILocation(line: 153, column: 24, scope: !986)
!988 = !DILocation(line: 153, column: 22, scope: !986)
!989 = !DILocation(line: 153, column: 6, scope: !932)
!990 = !DILocation(line: 154, column: 3, scope: !991)
!991 = distinct !DILexicalBlock(scope: !986, file: !3, line: 153, column: 46)
!992 = !DILocation(line: 159, column: 2, scope: !991)
!993 = !DILocation(line: 159, column: 14, scope: !994)
!994 = distinct !DILexicalBlock(scope: !986, file: !3, line: 159, column: 13)
!995 = !DILocation(line: 159, column: 32, scope: !994)
!996 = !DILocation(line: 159, column: 30, scope: !994)
!997 = !DILocation(line: 160, column: 6, scope: !994)
!998 = !DILocation(line: 160, column: 11, scope: !994)
!999 = !DILocation(line: 160, column: 23, scope: !994)
!1000 = !DILocation(line: 161, column: 4, scope: !994)
!1001 = !DILocation(line: 161, column: 18, scope: !994)
!1002 = !DILocation(line: 159, column: 13, scope: !986)
!1003 = !DILocation(line: 162, column: 3, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !994, file: !3, line: 161, column: 43)
!1005 = !DILocation(line: 167, column: 2, scope: !1004)
!1006 = !DILocation(line: 168, column: 1, scope: !932)
!1007 = distinct !DISubprogram(name: "acpi_ns_check_argument_count", scope: !3, file: !3, line: 187, type: !1008, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !74, !24, !76, !804}
!1010 = !DILocalVariable(name: "pathname", arg: 1, scope: !1007, file: !3, line: 187, type: !74)
!1011 = !DILocation(line: 187, column: 36, scope: !1007)
!1012 = !DILocalVariable(name: "node", arg: 2, scope: !1007, file: !3, line: 188, type: !24)
!1013 = !DILocation(line: 188, column: 37, scope: !1007)
!1014 = !DILocalVariable(name: "user_param_count", arg: 3, scope: !1007, file: !3, line: 189, type: !76)
!1015 = !DILocation(line: 189, column: 13, scope: !1007)
!1016 = !DILocalVariable(name: "predefined", arg: 4, scope: !1007, file: !3, line: 190, type: !804)
!1017 = !DILocation(line: 190, column: 43, scope: !1007)
!1018 = !DILocalVariable(name: "aml_param_count", scope: !1007, file: !3, line: 192, type: !76)
!1019 = !DILocation(line: 192, column: 6, scope: !1007)
!1020 = !DILocalVariable(name: "required_param_count", scope: !1007, file: !3, line: 193, type: !76)
!1021 = !DILocation(line: 193, column: 6, scope: !1007)
!1022 = !DILocation(line: 195, column: 6, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 195, column: 6)
!1024 = !DILocation(line: 195, column: 12, scope: !1023)
!1025 = !DILocation(line: 195, column: 18, scope: !1023)
!1026 = !DILocation(line: 195, column: 6, scope: !1007)
!1027 = !DILocation(line: 196, column: 3, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 195, column: 37)
!1029 = !DILocation(line: 199, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 199, column: 6)
!1031 = !DILocation(line: 199, column: 6, scope: !1007)
!1032 = !DILocation(line: 204, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 204, column: 7)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 199, column: 19)
!1035 = !DILocation(line: 204, column: 13, scope: !1033)
!1036 = !DILocation(line: 204, column: 18, scope: !1033)
!1037 = !DILocation(line: 204, column: 7, scope: !1034)
!1038 = !DILocation(line: 205, column: 8, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 205, column: 8)
!1040 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 204, column: 39)
!1041 = !DILocation(line: 205, column: 8, scope: !1040)
!1042 = !DILocation(line: 206, column: 5, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 205, column: 26)
!1044 = !DILocation(line: 212, column: 4, scope: !1043)
!1045 = !DILocation(line: 214, column: 4, scope: !1040)
!1046 = !DILocation(line: 229, column: 21, scope: !1034)
!1047 = !DILocation(line: 229, column: 27, scope: !1034)
!1048 = !DILocation(line: 229, column: 35, scope: !1034)
!1049 = !DILocation(line: 229, column: 42, scope: !1034)
!1050 = !DILocation(line: 229, column: 19, scope: !1034)
!1051 = !DILocation(line: 231, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 231, column: 7)
!1053 = !DILocation(line: 231, column: 26, scope: !1052)
!1054 = !DILocation(line: 231, column: 24, scope: !1052)
!1055 = !DILocation(line: 231, column: 7, scope: !1034)
!1056 = !DILocation(line: 232, column: 4, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 231, column: 43)
!1058 = !DILocation(line: 238, column: 3, scope: !1057)
!1059 = !DILocation(line: 238, column: 14, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 238, column: 14)
!1061 = !DILocation(line: 238, column: 33, scope: !1060)
!1062 = !DILocation(line: 238, column: 31, scope: !1060)
!1063 = !DILocation(line: 238, column: 14, scope: !1052)
!1064 = !DILocation(line: 239, column: 4, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 238, column: 50)
!1066 = !DILocation(line: 245, column: 3, scope: !1065)
!1067 = !DILocation(line: 247, column: 3, scope: !1034)
!1068 = !DILocation(line: 261, column: 6, scope: !1007)
!1069 = !DILocation(line: 260, column: 23, scope: !1007)
!1070 = !DILocation(line: 263, column: 6, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 263, column: 6)
!1072 = !DILocation(line: 263, column: 25, scope: !1071)
!1073 = !DILocation(line: 263, column: 23, scope: !1071)
!1074 = !DILocation(line: 263, column: 6, scope: !1007)
!1075 = !DILocation(line: 264, column: 3, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 263, column: 47)
!1077 = !DILocation(line: 268, column: 2, scope: !1076)
!1078 = !DILocation(line: 268, column: 14, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 268, column: 13)
!1080 = !DILocation(line: 268, column: 33, scope: !1079)
!1081 = !DILocation(line: 268, column: 31, scope: !1079)
!1082 = !DILocation(line: 268, column: 55, scope: !1079)
!1083 = !DILocation(line: 269, column: 8, scope: !1079)
!1084 = !DILocation(line: 269, column: 20, scope: !1079)
!1085 = !DILocation(line: 269, column: 25, scope: !1079)
!1086 = !DILocation(line: 269, column: 39, scope: !1079)
!1087 = !DILocation(line: 268, column: 13, scope: !1071)
!1088 = !DILocation(line: 270, column: 3, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 269, column: 64)
!1090 = !DILocation(line: 274, column: 2, scope: !1089)
!1091 = !DILocation(line: 275, column: 1, scope: !1007)
