; ModuleID = '../bcout/drivers/acpi/acpica/nsprepkg.llvm.bc'
source_filename = "drivers/acpi/acpica/nsprepkg.c"
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
%struct.acpi_package_info = type <{ i8, i8, i8, i8, i8, i16 }>
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }
%struct.acpi_package_info3 = type <{ i8, i8, [2 x i8], i8, i16 }>
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_package_info2 = type { i8, i8, [4 x i8], i8 }

@_acpi_module_name = internal constant [9 x i8] c"nsprepkg\00", align 1, !dbg !0
@.str = private unnamed_addr constant [39 x i8] c"Return Package has no elements (empty)\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid length for UUID Buffer\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Invalid internal return type in table entry: %X\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Return Package is too small - found %u elements, expected %u\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid Package type: %X\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Return SubPackage[%u] is too small - found %u elements, expected %u\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Return Package has invalid object type for version number\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_check_package(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object** %return_object_ptr) #0 !dbg !40 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %return_object_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %return_object = alloca %union.acpi_operand_object*, align 8
  %package = alloca %union.acpi_predefined_info*, align 8
  %elements = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %expected_count = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !874, metadata !DIExpression()), !dbg !875
  store %union.acpi_operand_object** %return_object_ptr, %union.acpi_operand_object*** %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object_ptr.addr, metadata !876, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_object, metadata !878, metadata !DIExpression()), !dbg !879
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !880
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !881
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %return_object, align 8, !dbg !879
  call void @llvm.dbg.declare(metadata %union.acpi_predefined_info** %package, metadata !882, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %elements, metadata !884, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.declare(metadata i32* %status, metadata !886, metadata !DIExpression()), !dbg !887
  store i32 0, i32* %status, align 4, !dbg !887
  call void @llvm.dbg.declare(metadata i32* %expected_count, metadata !888, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.declare(metadata i32* %count, metadata !890, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.declare(metadata i32* %i, metadata !892, metadata !DIExpression()), !dbg !893
  %2 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !894
  %predefined = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %2, i32 0, i32 6, !dbg !895
  %3 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined, align 8, !dbg !895
  %add.ptr = getelementptr %union.acpi_predefined_info, %union.acpi_predefined_info* %3, i64 1, !dbg !896
  store %union.acpi_predefined_info* %add.ptr, %union.acpi_predefined_info** %package, align 8, !dbg !897
  %4 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !898
  %5 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !899
  %ret_info = bitcast %union.acpi_predefined_info* %5 to %struct.acpi_package_info*, !dbg !900
  %type = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info, i32 0, i32 0, !dbg !901
  %6 = load i8, i8* %type, align 1, !dbg !901
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !902
  call void @acpi_ns_remove_null_elements(%struct.acpi_evaluate_info* %4, i8 zeroext %6, %union.acpi_operand_object* %7) #3, !dbg !903
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !904
  %package1 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_package*, !dbg !905
  %elements2 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package1, i32 0, i32 6, !dbg !906
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements2, align 8, !dbg !906
  store %union.acpi_operand_object** %9, %union.acpi_operand_object*** %elements, align 8, !dbg !907
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !908
  %package3 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_package*, !dbg !909
  %count4 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package3, i32 0, i32 9, !dbg !910
  %11 = load i32, i32* %count4, align 4, !dbg !910
  store i32 %11, i32* %count, align 4, !dbg !911
  %12 = load i32, i32* %count, align 4, !dbg !912
  %tobool = icmp ne i32 %12, 0, !dbg !912
  br i1 %tobool, label %if.end9, label %if.then, !dbg !914

if.then:                                          ; preds = %entry
  %13 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !915
  %ret_info5 = bitcast %union.acpi_predefined_info* %13 to %struct.acpi_package_info*, !dbg !918
  %type6 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info5, i32 0, i32 0, !dbg !919
  %14 = load i8, i8* %type6, align 1, !dbg !919
  %conv = zext i8 %14 to i32, !dbg !915
  %cmp = icmp eq i32 %conv, 2, !dbg !920
  br i1 %cmp, label %if.then8, label %if.end, !dbg !921

if.then8:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !922
  br label %return, !dbg !922

if.end:                                           ; preds = %if.then
  %15 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !924
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %15, i32 0, i32 5, !dbg !924
  %16 = load i8*, i8** %full_pathname, align 8, !dbg !924
  %17 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !924
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %17, i32 0, i32 12, !dbg !924
  %18 = load i16, i16* %node_flags, align 2, !dbg !924
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 94, i8* %16, i16 zeroext %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #3, !dbg !924
  store i32 12292, i32* %retval, align 4, !dbg !925
  br label %return, !dbg !925

if.end9:                                          ; preds = %entry
  %19 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !926
  %ret_info10 = bitcast %union.acpi_predefined_info* %19 to %struct.acpi_package_info*, !dbg !927
  %type11 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info10, i32 0, i32 0, !dbg !928
  %20 = load i8, i8* %type11, align 1, !dbg !928
  %conv12 = zext i8 %20 to i32, !dbg !926
  switch i32 %conv12, label %sw.default [
    i32 13, label %sw.bb
    i32 1, label %sw.bb13
    i32 2, label %sw.bb35
    i32 3, label %sw.bb45
    i32 9, label %sw.bb80
    i32 6, label %sw.bb87
    i32 4, label %sw.bb99
    i32 7, label %sw.bb99
    i32 8, label %sw.bb99
    i32 5, label %sw.bb99
    i32 10, label %sw.bb99
    i32 11, label %sw.bb114
    i32 12, label %sw.bb115
  ], !dbg !929

sw.bb:                                            ; preds = %if.end9
  %21 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !930
  %22 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !932
  %23 = load i32, i32* %count, align 4, !dbg !933
  %call = call i32 @acpi_ns_custom_package(%struct.acpi_evaluate_info* %21, %union.acpi_operand_object** %22, i32 %23) #3, !dbg !934
  store i32 %call, i32* %status, align 4, !dbg !935
  br label %sw.epilog, !dbg !936

sw.bb13:                                          ; preds = %if.end9
  %24 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !937
  %ret_info14 = bitcast %union.acpi_predefined_info* %24 to %struct.acpi_package_info*, !dbg !938
  %count1 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info14, i32 0, i32 2, !dbg !939
  %25 = load i8, i8* %count1, align 1, !dbg !939
  %conv15 = zext i8 %25 to i32, !dbg !937
  %26 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !940
  %ret_info16 = bitcast %union.acpi_predefined_info* %26 to %struct.acpi_package_info*, !dbg !941
  %count2 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info16, i32 0, i32 4, !dbg !942
  %27 = load i8, i8* %count2, align 1, !dbg !942
  %conv17 = zext i8 %27 to i32, !dbg !940
  %add = add i32 %conv15, %conv17, !dbg !943
  store i32 %add, i32* %expected_count, align 4, !dbg !944
  %28 = load i32, i32* %count, align 4, !dbg !945
  %29 = load i32, i32* %expected_count, align 4, !dbg !947
  %cmp18 = icmp ult i32 %28, %29, !dbg !948
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !949

if.then20:                                        ; preds = %sw.bb13
  br label %package_too_small, !dbg !950

if.else:                                          ; preds = %sw.bb13
  %30 = load i32, i32* %count, align 4, !dbg !952
  %31 = load i32, i32* %expected_count, align 4, !dbg !954
  %cmp21 = icmp ugt i32 %30, %31, !dbg !955
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !956

if.then23:                                        ; preds = %if.else
  br label %if.end24, !dbg !957

if.end24:                                         ; preds = %if.then23, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  %32 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !959
  %33 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !960
  %34 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !961
  %ret_info26 = bitcast %union.acpi_predefined_info* %34 to %struct.acpi_package_info*, !dbg !962
  %object_type1 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info26, i32 0, i32 1, !dbg !963
  %35 = load i8, i8* %object_type1, align 1, !dbg !963
  %36 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !964
  %ret_info27 = bitcast %union.acpi_predefined_info* %36 to %struct.acpi_package_info*, !dbg !965
  %count128 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info27, i32 0, i32 2, !dbg !966
  %37 = load i8, i8* %count128, align 1, !dbg !966
  %conv29 = zext i8 %37 to i32, !dbg !964
  %38 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !967
  %ret_info30 = bitcast %union.acpi_predefined_info* %38 to %struct.acpi_package_info*, !dbg !968
  %object_type2 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info30, i32 0, i32 3, !dbg !969
  %39 = load i8, i8* %object_type2, align 1, !dbg !969
  %40 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !970
  %ret_info31 = bitcast %union.acpi_predefined_info* %40 to %struct.acpi_package_info*, !dbg !971
  %count232 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info31, i32 0, i32 4, !dbg !972
  %41 = load i8, i8* %count232, align 1, !dbg !972
  %conv33 = zext i8 %41 to i32, !dbg !970
  %call34 = call i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %32, %union.acpi_operand_object** %33, i8 zeroext %35, i32 %conv29, i8 zeroext %39, i32 %conv33, i32 0) #3, !dbg !973
  store i32 %call34, i32* %status, align 4, !dbg !974
  br label %sw.epilog, !dbg !975

sw.bb35:                                          ; preds = %if.end9
  store i32 0, i32* %i, align 4, !dbg !976
  br label %for.cond, !dbg !978

for.cond:                                         ; preds = %for.inc, %sw.bb35
  %42 = load i32, i32* %i, align 4, !dbg !979
  %43 = load i32, i32* %count, align 4, !dbg !981
  %cmp36 = icmp ult i32 %42, %43, !dbg !982
  br i1 %cmp36, label %for.body, label %for.end, !dbg !983

for.body:                                         ; preds = %for.cond
  %44 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !984
  %45 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !986
  %46 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !987
  %ret_info38 = bitcast %union.acpi_predefined_info* %46 to %struct.acpi_package_info*, !dbg !988
  %object_type139 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info38, i32 0, i32 1, !dbg !989
  %47 = load i8, i8* %object_type139, align 1, !dbg !989
  %conv40 = zext i8 %47 to i32, !dbg !987
  %48 = load i32, i32* %i, align 4, !dbg !990
  %call41 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %44, %union.acpi_operand_object** %45, i32 %conv40, i32 %48) #3, !dbg !991
  store i32 %call41, i32* %status, align 4, !dbg !992
  %49 = load i32, i32* %status, align 4, !dbg !993
  %tobool42 = icmp ne i32 %49, 0, !dbg !993
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !995

if.then43:                                        ; preds = %for.body
  %50 = load i32, i32* %status, align 4, !dbg !996
  store i32 %50, i32* %retval, align 4, !dbg !998
  br label %return, !dbg !998

if.end44:                                         ; preds = %for.body
  %51 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !999
  %incdec.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %51, i32 1, !dbg !999
  store %union.acpi_operand_object** %incdec.ptr, %union.acpi_operand_object*** %elements, align 8, !dbg !999
  br label %for.inc, !dbg !1000

for.inc:                                          ; preds = %if.end44
  %52 = load i32, i32* %i, align 4, !dbg !1001
  %inc = add i32 %52, 1, !dbg !1001
  store i32 %inc, i32* %i, align 4, !dbg !1001
  br label %for.cond, !dbg !1002, !llvm.loop !1003

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !dbg !1005

sw.bb45:                                          ; preds = %if.end9
  %53 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !1006
  %ret_info3 = bitcast %union.acpi_predefined_info* %53 to %struct.acpi_package_info3*, !dbg !1007
  %count46 = getelementptr inbounds %struct.acpi_package_info3, %struct.acpi_package_info3* %ret_info3, i32 0, i32 1, !dbg !1008
  %54 = load i8, i8* %count46, align 1, !dbg !1008
  %conv47 = zext i8 %54 to i32, !dbg !1006
  store i32 %conv47, i32* %expected_count, align 4, !dbg !1009
  %55 = load i32, i32* %count, align 4, !dbg !1010
  %56 = load i32, i32* %expected_count, align 4, !dbg !1012
  %cmp48 = icmp ult i32 %55, %56, !dbg !1013
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1014

if.then50:                                        ; preds = %sw.bb45
  br label %package_too_small, !dbg !1015

if.end51:                                         ; preds = %sw.bb45
  store i32 0, i32* %i, align 4, !dbg !1017
  br label %for.cond52, !dbg !1019

for.cond52:                                       ; preds = %for.inc77, %if.end51
  %57 = load i32, i32* %i, align 4, !dbg !1020
  %58 = load i32, i32* %count, align 4, !dbg !1022
  %cmp53 = icmp ult i32 %57, %58, !dbg !1023
  br i1 %cmp53, label %for.body55, label %for.end79, !dbg !1024

for.body55:                                       ; preds = %for.cond52
  %59 = load i32, i32* %i, align 4, !dbg !1025
  %60 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !1028
  %ret_info356 = bitcast %union.acpi_predefined_info* %60 to %struct.acpi_package_info3*, !dbg !1029
  %count57 = getelementptr inbounds %struct.acpi_package_info3, %struct.acpi_package_info3* %ret_info356, i32 0, i32 1, !dbg !1030
  %61 = load i8, i8* %count57, align 1, !dbg !1030
  %conv58 = zext i8 %61 to i32, !dbg !1028
  %cmp59 = icmp ult i32 %59, %conv58, !dbg !1031
  br i1 %cmp59, label %if.then61, label %if.else68, !dbg !1032

if.then61:                                        ; preds = %for.body55
  %62 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1033
  %63 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1035
  %64 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !1036
  %ret_info362 = bitcast %union.acpi_predefined_info* %64 to %struct.acpi_package_info3*, !dbg !1037
  %object_type = getelementptr inbounds %struct.acpi_package_info3, %struct.acpi_package_info3* %ret_info362, i32 0, i32 2, !dbg !1038
  %65 = load i32, i32* %i, align 4, !dbg !1039
  %idxprom = zext i32 %65 to i64, !dbg !1036
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %object_type, i64 0, i64 %idxprom, !dbg !1036
  %66 = load i8, i8* %arrayidx, align 1, !dbg !1036
  %conv63 = zext i8 %66 to i32, !dbg !1036
  %67 = load i32, i32* %i, align 4, !dbg !1040
  %call64 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %62, %union.acpi_operand_object** %63, i32 %conv63, i32 %67) #3, !dbg !1041
  store i32 %call64, i32* %status, align 4, !dbg !1042
  %68 = load i32, i32* %status, align 4, !dbg !1043
  %tobool65 = icmp ne i32 %68, 0, !dbg !1043
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !1045

if.then66:                                        ; preds = %if.then61
  %69 = load i32, i32* %status, align 4, !dbg !1046
  store i32 %69, i32* %retval, align 4, !dbg !1048
  br label %return, !dbg !1048

if.end67:                                         ; preds = %if.then61
  br label %if.end75, !dbg !1049

if.else68:                                        ; preds = %for.body55
  %70 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1050
  %71 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1052
  %72 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !1053
  %ret_info369 = bitcast %union.acpi_predefined_info* %72 to %struct.acpi_package_info3*, !dbg !1054
  %tail_object_type = getelementptr inbounds %struct.acpi_package_info3, %struct.acpi_package_info3* %ret_info369, i32 0, i32 3, !dbg !1055
  %73 = load i8, i8* %tail_object_type, align 1, !dbg !1055
  %conv70 = zext i8 %73 to i32, !dbg !1053
  %74 = load i32, i32* %i, align 4, !dbg !1056
  %call71 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %70, %union.acpi_operand_object** %71, i32 %conv70, i32 %74) #3, !dbg !1057
  store i32 %call71, i32* %status, align 4, !dbg !1058
  %75 = load i32, i32* %status, align 4, !dbg !1059
  %tobool72 = icmp ne i32 %75, 0, !dbg !1059
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !1061

if.then73:                                        ; preds = %if.else68
  %76 = load i32, i32* %status, align 4, !dbg !1062
  store i32 %76, i32* %retval, align 4, !dbg !1064
  br label %return, !dbg !1064

if.end74:                                         ; preds = %if.else68
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end67
  %77 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1065
  %incdec.ptr76 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %77, i32 1, !dbg !1065
  store %union.acpi_operand_object** %incdec.ptr76, %union.acpi_operand_object*** %elements, align 8, !dbg !1065
  br label %for.inc77, !dbg !1066

for.inc77:                                        ; preds = %if.end75
  %78 = load i32, i32* %i, align 4, !dbg !1067
  %inc78 = add i32 %78, 1, !dbg !1067
  store i32 %inc78, i32* %i, align 4, !dbg !1067
  br label %for.cond52, !dbg !1068, !llvm.loop !1069

for.end79:                                        ; preds = %for.cond52
  br label %sw.epilog, !dbg !1071

sw.bb80:                                          ; preds = %if.end9
  %79 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1072
  %80 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1073
  %call81 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %79, %union.acpi_operand_object** %80, i32 2, i32 0) #3, !dbg !1074
  store i32 %call81, i32* %status, align 4, !dbg !1075
  %81 = load i32, i32* %status, align 4, !dbg !1076
  %tobool82 = icmp ne i32 %81, 0, !dbg !1076
  br i1 %tobool82, label %if.then83, label %if.end84, !dbg !1078

if.then83:                                        ; preds = %sw.bb80
  %82 = load i32, i32* %status, align 4, !dbg !1079
  store i32 %82, i32* %retval, align 4, !dbg !1081
  br label %return, !dbg !1081

if.end84:                                         ; preds = %sw.bb80
  %83 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1082
  %incdec.ptr85 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %83, i32 1, !dbg !1082
  store %union.acpi_operand_object** %incdec.ptr85, %union.acpi_operand_object*** %elements, align 8, !dbg !1082
  %84 = load i32, i32* %count, align 4, !dbg !1083
  %dec = add i32 %84, -1, !dbg !1083
  store i32 %dec, i32* %count, align 4, !dbg !1083
  %85 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1084
  %86 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !1085
  %87 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1086
  %88 = load i32, i32* %count, align 4, !dbg !1087
  %call86 = call i32 @acpi_ns_check_package_list(%struct.acpi_evaluate_info* %85, %union.acpi_predefined_info* %86, %union.acpi_operand_object** %87, i32 %88) #3, !dbg !1088
  store i32 %call86, i32* %status, align 4, !dbg !1089
  br label %sw.epilog, !dbg !1090

sw.bb87:                                          ; preds = %if.end9
  %89 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1091
  %90 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1092
  %call88 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %89, %union.acpi_operand_object** %90, i32 2, i32 0) #3, !dbg !1093
  store i32 %call88, i32* %status, align 4, !dbg !1094
  %91 = load i32, i32* %status, align 4, !dbg !1095
  %tobool89 = icmp ne i32 %91, 0, !dbg !1095
  br i1 %tobool89, label %if.then90, label %if.end91, !dbg !1097

if.then90:                                        ; preds = %sw.bb87
  %92 = load i32, i32* %status, align 4, !dbg !1098
  store i32 %92, i32* %retval, align 4, !dbg !1100
  br label %return, !dbg !1100

if.end91:                                         ; preds = %sw.bb87
  %93 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1101
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %93, align 8, !dbg !1102
  %integer = bitcast %union.acpi_operand_object* %94 to %struct.acpi_object_integer*, !dbg !1103
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1104
  %95 = load i64, i64* %value, align 8, !dbg !1104
  %conv92 = trunc i64 %95 to i32, !dbg !1105
  store i32 %conv92, i32* %expected_count, align 4, !dbg !1106
  %96 = load i32, i32* %expected_count, align 4, !dbg !1107
  %97 = load i32, i32* %count, align 4, !dbg !1109
  %cmp93 = icmp uge i32 %96, %97, !dbg !1110
  br i1 %cmp93, label %if.then95, label %if.end96, !dbg !1111

if.then95:                                        ; preds = %if.end91
  br label %package_too_small, !dbg !1112

if.end96:                                         ; preds = %if.end91
  %98 = load i32, i32* %expected_count, align 4, !dbg !1114
  store i32 %98, i32* %count, align 4, !dbg !1115
  %99 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1116
  %incdec.ptr97 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %99, i32 1, !dbg !1116
  store %union.acpi_operand_object** %incdec.ptr97, %union.acpi_operand_object*** %elements, align 8, !dbg !1116
  %100 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1117
  %101 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !1118
  %102 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1119
  %103 = load i32, i32* %count, align 4, !dbg !1120
  %call98 = call i32 @acpi_ns_check_package_list(%struct.acpi_evaluate_info* %100, %union.acpi_predefined_info* %101, %union.acpi_operand_object** %102, i32 %103) #3, !dbg !1121
  store i32 %call98, i32* %status, align 4, !dbg !1122
  br label %sw.epilog, !dbg !1123

sw.bb99:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %104 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1124
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %104, align 8, !dbg !1126
  %tobool100 = icmp ne %union.acpi_operand_object* %105, null, !dbg !1126
  br i1 %tobool100, label %land.lhs.true, label %if.end112, !dbg !1127

land.lhs.true:                                    ; preds = %sw.bb99
  %106 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1128
  %107 = load %union.acpi_operand_object*, %union.acpi_operand_object** %106, align 8, !dbg !1129
  %common = bitcast %union.acpi_operand_object* %107 to %struct.acpi_object_common*, !dbg !1130
  %type101 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1131
  %108 = load i8, i8* %type101, align 1, !dbg !1131
  %conv102 = zext i8 %108 to i32, !dbg !1132
  %cmp103 = icmp ne i32 %conv102, 4, !dbg !1133
  br i1 %cmp103, label %if.then105, label %if.end112, !dbg !1134

if.then105:                                       ; preds = %land.lhs.true
  %109 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1135
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1137
  %111 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1138
  %call106 = call i32 @acpi_ns_wrap_with_package(%struct.acpi_evaluate_info* %109, %union.acpi_operand_object* %110, %union.acpi_operand_object** %111) #3, !dbg !1139
  store i32 %call106, i32* %status, align 4, !dbg !1140
  %112 = load i32, i32* %status, align 4, !dbg !1141
  %tobool107 = icmp ne i32 %112, 0, !dbg !1141
  br i1 %tobool107, label %if.then108, label %if.end109, !dbg !1143

if.then108:                                       ; preds = %if.then105
  %113 = load i32, i32* %status, align 4, !dbg !1144
  store i32 %113, i32* %retval, align 4, !dbg !1146
  br label %return, !dbg !1146

if.end109:                                        ; preds = %if.then105
  %114 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1147
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %114, align 8, !dbg !1148
  store %union.acpi_operand_object* %115, %union.acpi_operand_object** %return_object, align 8, !dbg !1149
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1150
  %package110 = bitcast %union.acpi_operand_object* %116 to %struct.acpi_object_package*, !dbg !1151
  %elements111 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package110, i32 0, i32 6, !dbg !1152
  %117 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements111, align 8, !dbg !1152
  store %union.acpi_operand_object** %117, %union.acpi_operand_object*** %elements, align 8, !dbg !1153
  store i32 1, i32* %count, align 4, !dbg !1154
  br label %if.end112, !dbg !1155

if.end112:                                        ; preds = %if.end109, %land.lhs.true, %sw.bb99
  %118 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1156
  %119 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !1157
  %120 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1158
  %121 = load i32, i32* %count, align 4, !dbg !1159
  %call113 = call i32 @acpi_ns_check_package_list(%struct.acpi_evaluate_info* %118, %union.acpi_predefined_info* %119, %union.acpi_operand_object** %120, i32 %121) #3, !dbg !1160
  store i32 %call113, i32* %status, align 4, !dbg !1161
  br label %sw.epilog, !dbg !1162

sw.bb114:                                         ; preds = %if.end9
  br label %sw.epilog, !dbg !1163

sw.bb115:                                         ; preds = %if.end9
  %122 = load i32, i32* %count, align 4, !dbg !1164
  %and = and i32 %122, 1, !dbg !1166
  %tobool116 = icmp ne i32 %and, 0, !dbg !1166
  br i1 %tobool116, label %if.then117, label %if.end119, !dbg !1167

if.then117:                                       ; preds = %sw.bb115
  %123 = load i32, i32* %count, align 4, !dbg !1168
  %add118 = add i32 %123, 1, !dbg !1170
  store i32 %add118, i32* %expected_count, align 4, !dbg !1171
  br label %package_too_small, !dbg !1172

if.end119:                                        ; preds = %sw.bb115
  br label %while.cond, !dbg !1173

while.cond:                                       ; preds = %if.end142, %if.end119
  %124 = load i32, i32* %count, align 4, !dbg !1174
  %cmp120 = icmp ugt i32 %124, 0, !dbg !1175
  br i1 %cmp120, label %while.body, label %while.end, !dbg !1173

while.body:                                       ; preds = %while.cond
  %125 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1176
  %126 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1178
  %127 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !1179
  %ret_info122 = bitcast %union.acpi_predefined_info* %127 to %struct.acpi_package_info*, !dbg !1180
  %object_type1123 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info122, i32 0, i32 1, !dbg !1181
  %128 = load i8, i8* %object_type1123, align 1, !dbg !1181
  %conv124 = zext i8 %128 to i32, !dbg !1179
  %call125 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %125, %union.acpi_operand_object** %126, i32 %conv124, i32 0) #3, !dbg !1182
  store i32 %call125, i32* %status, align 4, !dbg !1183
  %129 = load i32, i32* %status, align 4, !dbg !1184
  %tobool126 = icmp ne i32 %129, 0, !dbg !1184
  br i1 %tobool126, label %if.then127, label %if.end128, !dbg !1186

if.then127:                                       ; preds = %while.body
  %130 = load i32, i32* %status, align 4, !dbg !1187
  store i32 %130, i32* %retval, align 4, !dbg !1189
  br label %return, !dbg !1189

if.end128:                                        ; preds = %while.body
  %131 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1190
  %132 = load %union.acpi_operand_object*, %union.acpi_operand_object** %131, align 8, !dbg !1192
  %buffer = bitcast %union.acpi_operand_object* %132 to %struct.acpi_object_buffer*, !dbg !1193
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !1194
  %133 = load i32, i32* %length, align 8, !dbg !1194
  %cmp129 = icmp ne i32 %133, 16, !dbg !1195
  br i1 %cmp129, label %if.then131, label %if.end134, !dbg !1196

if.then131:                                       ; preds = %if.end128
  %134 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1197
  %full_pathname132 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %134, i32 0, i32 5, !dbg !1197
  %135 = load i8*, i8** %full_pathname132, align 8, !dbg !1197
  %136 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1197
  %node_flags133 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %136, i32 0, i32 12, !dbg !1197
  %137 = load i16, i16* %node_flags133, align 2, !dbg !1197
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 325, i8* %135, i16 zeroext %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !1197
  store i32 12292, i32* %retval, align 4, !dbg !1199
  br label %return, !dbg !1199

if.end134:                                        ; preds = %if.end128
  %138 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1200
  %139 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1201
  %add.ptr135 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %139, i64 1, !dbg !1202
  %140 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !1203
  %ret_info136 = bitcast %union.acpi_predefined_info* %140 to %struct.acpi_package_info*, !dbg !1204
  %object_type2137 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info136, i32 0, i32 3, !dbg !1205
  %141 = load i8, i8* %object_type2137, align 1, !dbg !1205
  %conv138 = zext i8 %141 to i32, !dbg !1203
  %call139 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %138, %union.acpi_operand_object** %add.ptr135, i32 %conv138, i32 0) #3, !dbg !1206
  store i32 %call139, i32* %status, align 4, !dbg !1207
  %142 = load i32, i32* %status, align 4, !dbg !1208
  %tobool140 = icmp ne i32 %142, 0, !dbg !1208
  br i1 %tobool140, label %if.then141, label %if.end142, !dbg !1210

if.then141:                                       ; preds = %if.end134
  %143 = load i32, i32* %status, align 4, !dbg !1211
  store i32 %143, i32* %retval, align 4, !dbg !1213
  br label %return, !dbg !1213

if.end142:                                        ; preds = %if.end134
  %144 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1214
  %add.ptr143 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %144, i64 2, !dbg !1214
  store %union.acpi_operand_object** %add.ptr143, %union.acpi_operand_object*** %elements, align 8, !dbg !1214
  %145 = load i32, i32* %count, align 4, !dbg !1215
  %sub = sub i32 %145, 2, !dbg !1215
  store i32 %sub, i32* %count, align 4, !dbg !1215
  br label %while.cond, !dbg !1173, !llvm.loop !1216

while.end:                                        ; preds = %while.cond
  br label %sw.epilog, !dbg !1218

sw.default:                                       ; preds = %if.end9
  %146 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1219
  %full_pathname144 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %146, i32 0, i32 5, !dbg !1219
  %147 = load i8*, i8** %full_pathname144, align 8, !dbg !1219
  %148 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1219
  %node_flags145 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %148, i32 0, i32 12, !dbg !1219
  %149 = load i16, i16* %node_flags145, align 2, !dbg !1219
  %150 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package, align 8, !dbg !1219
  %ret_info146 = bitcast %union.acpi_predefined_info* %150 to %struct.acpi_package_info*, !dbg !1219
  %type147 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info146, i32 0, i32 0, !dbg !1219
  %151 = load i8, i8* %type147, align 1, !dbg !1219
  %conv148 = zext i8 %151 to i32, !dbg !1219
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 348, i8* %147, i16 zeroext %149, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %conv148) #3, !dbg !1219
  store i32 12303, i32* %retval, align 4, !dbg !1220
  br label %return, !dbg !1220

sw.epilog:                                        ; preds = %while.end, %sw.bb114, %if.end112, %if.end96, %if.end84, %for.end79, %for.end, %if.end25, %sw.bb
  %152 = load i32, i32* %status, align 4, !dbg !1221
  store i32 %152, i32* %retval, align 4, !dbg !1222
  br label %return, !dbg !1222

package_too_small:                                ; preds = %if.then117, %if.then95, %if.then50, %if.then20
  call void @llvm.dbg.label(metadata !1223), !dbg !1224
  %153 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1225
  %full_pathname149 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %153, i32 0, i32 5, !dbg !1225
  %154 = load i8*, i8** %full_pathname149, align 8, !dbg !1225
  %155 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1225
  %node_flags150 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %155, i32 0, i32 12, !dbg !1225
  %156 = load i16, i16* %node_flags150, align 2, !dbg !1225
  %157 = load i32, i32* %count, align 4, !dbg !1225
  %158 = load i32, i32* %expected_count, align 4, !dbg !1225
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 362, i8* %154, i16 zeroext %156, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %157, i32 %158) #3, !dbg !1225
  store i32 12292, i32* %retval, align 4, !dbg !1226
  br label %return, !dbg !1226

return:                                           ; preds = %package_too_small, %sw.epilog, %sw.default, %if.then141, %if.then131, %if.then127, %if.then108, %if.then90, %if.then83, %if.then73, %if.then66, %if.then43, %if.end, %if.then8
  %159 = load i32, i32* %retval, align 4, !dbg !1227
  ret i32 %159, !dbg !1227
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ns_remove_null_elements(%struct.acpi_evaluate_info*, i8 zeroext, %union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_predefined_warning(i8*, i32, i8*, i16 zeroext, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_custom_package(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object** %elements, i32 %count) #0 !dbg !1228 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %elements.addr = alloca %union.acpi_operand_object**, align 8
  %count.addr = alloca i32, align 4
  %expected_count = alloca i32, align 4
  %version = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1231, metadata !DIExpression()), !dbg !1232
  store %union.acpi_operand_object** %elements, %union.acpi_operand_object*** %elements.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %elements.addr, metadata !1233, metadata !DIExpression()), !dbg !1234
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !1235, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.declare(metadata i32* %expected_count, metadata !1237, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.declare(metadata i32* %version, metadata !1239, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1241, metadata !DIExpression()), !dbg !1242
  store i32 0, i32* %status, align 4, !dbg !1242
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements.addr, align 8, !dbg !1243
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !1245
  %common = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_common*, !dbg !1246
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1247
  %2 = load i8, i8* %type, align 1, !dbg !1247
  %conv = zext i8 %2 to i32, !dbg !1248
  %cmp = icmp ne i32 %conv, 1, !dbg !1249
  br i1 %cmp, label %if.then, label %if.end, !dbg !1250

if.then:                                          ; preds = %entry
  %3 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1251
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %3, i32 0, i32 5, !dbg !1251
  %4 = load i8*, i8** %full_pathname, align 8, !dbg !1251
  %5 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1251
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %5, i32 0, i32 12, !dbg !1251
  %6 = load i16, i16* %node_flags, align 2, !dbg !1251
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 635, i8* %4, i16 zeroext %6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0)) #3, !dbg !1251
  store i32 12291, i32* %retval, align 4, !dbg !1253
  br label %return, !dbg !1253

if.end:                                           ; preds = %entry
  %7 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements.addr, align 8, !dbg !1254
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8, !dbg !1255
  %integer = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_integer*, !dbg !1256
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1257
  %9 = load i64, i64* %value, align 8, !dbg !1257
  %conv2 = trunc i64 %9 to i32, !dbg !1258
  store i32 %conv2, i32* %version, align 4, !dbg !1259
  store i32 21, i32* %expected_count, align 4, !dbg !1260
  %10 = load i32, i32* %version, align 4, !dbg !1261
  %cmp3 = icmp eq i32 %10, 0, !dbg !1263
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1264

if.then5:                                         ; preds = %if.end
  store i32 20, i32* %expected_count, align 4, !dbg !1265
  br label %if.end6, !dbg !1267

if.end6:                                          ; preds = %if.then5, %if.end
  %11 = load i32, i32* %count.addr, align 4, !dbg !1268
  %12 = load i32, i32* %expected_count, align 4, !dbg !1270
  %cmp7 = icmp ult i32 %11, %12, !dbg !1271
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !1272

if.then9:                                         ; preds = %if.end6
  %13 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1273
  %full_pathname10 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %13, i32 0, i32 5, !dbg !1273
  %14 = load i8*, i8** %full_pathname10, align 8, !dbg !1273
  %15 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1273
  %node_flags11 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %15, i32 0, i32 12, !dbg !1273
  %16 = load i16, i16* %node_flags11, align 2, !dbg !1273
  %17 = load i32, i32* %count.addr, align 4, !dbg !1273
  %18 = load i32, i32* %expected_count, align 4, !dbg !1273
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 649, i8* %14, i16 zeroext %16, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %17, i32 %18) #3, !dbg !1273
  store i32 12292, i32* %retval, align 4, !dbg !1275
  br label %return, !dbg !1275

if.else:                                          ; preds = %if.end6
  %19 = load i32, i32* %count.addr, align 4, !dbg !1276
  %20 = load i32, i32* %expected_count, align 4, !dbg !1278
  %cmp12 = icmp ugt i32 %19, %20, !dbg !1279
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1280

if.then14:                                        ; preds = %if.else
  br label %if.end15, !dbg !1281

if.end15:                                         ; preds = %if.then14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  %21 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1283
  %22 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements.addr, align 8, !dbg !1284
  %call = call i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %21, %union.acpi_operand_object** %22, i8 zeroext 2, i32 16, i8 zeroext 4, i32 4, i32 0) #3, !dbg !1285
  store i32 %call, i32* %status, align 4, !dbg !1286
  %23 = load i32, i32* %status, align 4, !dbg !1287
  %tobool = icmp ne i32 %23, 0, !dbg !1287
  br i1 %tobool, label %if.then17, label %if.end18, !dbg !1289

if.then17:                                        ; preds = %if.end16
  %24 = load i32, i32* %status, align 4, !dbg !1290
  store i32 %24, i32* %retval, align 4, !dbg !1290
  br label %return, !dbg !1290

if.end18:                                         ; preds = %if.end16
  %25 = load i32, i32* %version, align 4, !dbg !1292
  %cmp19 = icmp ugt i32 %25, 0, !dbg !1294
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !1295

if.then21:                                        ; preds = %if.end18
  %26 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1296
  %27 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements.addr, align 8, !dbg !1298
  %add.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %27, i64 20, !dbg !1299
  %call22 = call i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %26, %union.acpi_operand_object** %add.ptr, i8 zeroext 2, i32 1, i8 zeroext 0, i32 0, i32 20) #3, !dbg !1300
  store i32 %call22, i32* %status, align 4, !dbg !1301
  br label %if.end23, !dbg !1302

if.end23:                                         ; preds = %if.then21, %if.end18
  %28 = load i32, i32* %status, align 4, !dbg !1303
  store i32 %28, i32* %retval, align 4, !dbg !1303
  br label %return, !dbg !1303

return:                                           ; preds = %if.end23, %if.then17, %if.then9, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !1304
  ret i32 %29, !dbg !1304
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object** %elements, i8 zeroext %type1, i32 %count1, i8 zeroext %type2, i32 %count2, i32 %start_index) #0 !dbg !1305 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %elements.addr = alloca %union.acpi_operand_object**, align 8
  %type1.addr = alloca i8, align 1
  %count1.addr = alloca i32, align 4
  %type2.addr = alloca i8, align 1
  %count2.addr = alloca i32, align 4
  %start_index.addr = alloca i32, align 4
  %this_element = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1308, metadata !DIExpression()), !dbg !1309
  store %union.acpi_operand_object** %elements, %union.acpi_operand_object*** %elements.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %elements.addr, metadata !1310, metadata !DIExpression()), !dbg !1311
  store i8 %type1, i8* %type1.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type1.addr, metadata !1312, metadata !DIExpression()), !dbg !1313
  store i32 %count1, i32* %count1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count1.addr, metadata !1314, metadata !DIExpression()), !dbg !1315
  store i8 %type2, i8* %type2.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type2.addr, metadata !1316, metadata !DIExpression()), !dbg !1317
  store i32 %count2, i32* %count2.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count2.addr, metadata !1318, metadata !DIExpression()), !dbg !1319
  store i32 %start_index, i32* %start_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start_index.addr, metadata !1320, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %this_element, metadata !1322, metadata !DIExpression()), !dbg !1323
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements.addr, align 8, !dbg !1324
  store %union.acpi_operand_object** %0, %union.acpi_operand_object*** %this_element, align 8, !dbg !1323
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1325, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1327, metadata !DIExpression()), !dbg !1328
  store i32 0, i32* %i, align 4, !dbg !1329
  br label %for.cond, !dbg !1331

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !1332
  %2 = load i32, i32* %count1.addr, align 4, !dbg !1334
  %cmp = icmp ult i32 %1, %2, !dbg !1335
  br i1 %cmp, label %for.body, label %for.end, !dbg !1336

for.body:                                         ; preds = %for.cond
  %3 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1337
  %4 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %this_element, align 8, !dbg !1339
  %5 = load i8, i8* %type1.addr, align 1, !dbg !1340
  %conv = zext i8 %5 to i32, !dbg !1340
  %6 = load i32, i32* %i, align 4, !dbg !1341
  %7 = load i32, i32* %start_index.addr, align 4, !dbg !1342
  %add = add i32 %6, %7, !dbg !1343
  %call = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %3, %union.acpi_operand_object** %4, i32 %conv, i32 %add) #3, !dbg !1344
  store i32 %call, i32* %status, align 4, !dbg !1345
  %8 = load i32, i32* %status, align 4, !dbg !1346
  %tobool = icmp ne i32 %8, 0, !dbg !1346
  br i1 %tobool, label %if.then, label %if.end, !dbg !1348

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %status, align 4, !dbg !1349
  store i32 %9, i32* %retval, align 4, !dbg !1351
  br label %return, !dbg !1351

if.end:                                           ; preds = %for.body
  %10 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %this_element, align 8, !dbg !1352
  %incdec.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %10, i32 1, !dbg !1352
  store %union.acpi_operand_object** %incdec.ptr, %union.acpi_operand_object*** %this_element, align 8, !dbg !1352
  br label %for.inc, !dbg !1353

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !dbg !1354
  %inc = add i32 %11, 1, !dbg !1354
  store i32 %inc, i32* %i, align 4, !dbg !1354
  br label %for.cond, !dbg !1355, !llvm.loop !1356

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !1358
  br label %for.cond1, !dbg !1360

for.cond1:                                        ; preds = %for.inc13, %for.end
  %12 = load i32, i32* %i, align 4, !dbg !1361
  %13 = load i32, i32* %count2.addr, align 4, !dbg !1363
  %cmp2 = icmp ult i32 %12, %13, !dbg !1364
  br i1 %cmp2, label %for.body4, label %for.end15, !dbg !1365

for.body4:                                        ; preds = %for.cond1
  %14 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1366
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %this_element, align 8, !dbg !1368
  %16 = load i8, i8* %type2.addr, align 1, !dbg !1369
  %conv5 = zext i8 %16 to i32, !dbg !1369
  %17 = load i32, i32* %i, align 4, !dbg !1370
  %18 = load i32, i32* %count1.addr, align 4, !dbg !1371
  %add6 = add i32 %17, %18, !dbg !1372
  %19 = load i32, i32* %start_index.addr, align 4, !dbg !1373
  %add7 = add i32 %add6, %19, !dbg !1374
  %call8 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %14, %union.acpi_operand_object** %15, i32 %conv5, i32 %add7) #3, !dbg !1375
  store i32 %call8, i32* %status, align 4, !dbg !1376
  %20 = load i32, i32* %status, align 4, !dbg !1377
  %tobool9 = icmp ne i32 %20, 0, !dbg !1377
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1379

if.then10:                                        ; preds = %for.body4
  %21 = load i32, i32* %status, align 4, !dbg !1380
  store i32 %21, i32* %retval, align 4, !dbg !1382
  br label %return, !dbg !1382

if.end11:                                         ; preds = %for.body4
  %22 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %this_element, align 8, !dbg !1383
  %incdec.ptr12 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %22, i32 1, !dbg !1383
  store %union.acpi_operand_object** %incdec.ptr12, %union.acpi_operand_object*** %this_element, align 8, !dbg !1383
  br label %for.inc13, !dbg !1384

for.inc13:                                        ; preds = %if.end11
  %23 = load i32, i32* %i, align 4, !dbg !1385
  %inc14 = add i32 %23, 1, !dbg !1385
  store i32 %inc14, i32* %i, align 4, !dbg !1385
  br label %for.cond1, !dbg !1386, !llvm.loop !1387

for.end15:                                        ; preds = %for.cond1
  store i32 0, i32* %retval, align 4, !dbg !1389
  br label %return, !dbg !1389

return:                                           ; preds = %for.end15, %if.then10, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !1390
  ret i32 %24, !dbg !1390
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info*, %union.acpi_operand_object**, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_check_package_list(%struct.acpi_evaluate_info* %info, %union.acpi_predefined_info* %package, %union.acpi_operand_object** %elements, i32 %count) #0 !dbg !1391 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %package.addr = alloca %union.acpi_predefined_info*, align 8
  %elements.addr = alloca %union.acpi_operand_object**, align 8
  %count.addr = alloca i32, align 4
  %sub_package = alloca %union.acpi_operand_object*, align 8
  %sub_elements = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %expected_count = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1394, metadata !DIExpression()), !dbg !1395
  store %union.acpi_predefined_info* %package, %union.acpi_predefined_info** %package.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_predefined_info** %package.addr, metadata !1396, metadata !DIExpression()), !dbg !1397
  store %union.acpi_operand_object** %elements, %union.acpi_operand_object*** %elements.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %elements.addr, metadata !1398, metadata !DIExpression()), !dbg !1399
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !1400, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %sub_package, metadata !1402, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %sub_elements, metadata !1404, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1406, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.declare(metadata i32* %expected_count, metadata !1408, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1410, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1412, metadata !DIExpression()), !dbg !1413
  store i32 0, i32* %i, align 4, !dbg !1414
  br label %for.cond, !dbg !1416

for.cond:                                         ; preds = %for.inc139, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1417
  %1 = load i32, i32* %count.addr, align 4, !dbg !1419
  %cmp = icmp ult i32 %0, %1, !dbg !1420
  br i1 %cmp, label %for.body, label %for.end141, !dbg !1421

for.body:                                         ; preds = %for.cond
  %2 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements.addr, align 8, !dbg !1422
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8, !dbg !1424
  store %union.acpi_operand_object* %3, %union.acpi_operand_object** %sub_package, align 8, !dbg !1425
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1426
  %package1 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_package*, !dbg !1427
  %elements2 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package1, i32 0, i32 6, !dbg !1428
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements2, align 8, !dbg !1428
  store %union.acpi_operand_object** %5, %union.acpi_operand_object*** %sub_elements, align 8, !dbg !1429
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1430
  %7 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1431
  %parent_package = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %7, i32 0, i32 8, !dbg !1432
  store %union.acpi_operand_object* %6, %union.acpi_operand_object** %parent_package, align 8, !dbg !1433
  %8 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1434
  %9 = load i32, i32* %i, align 4, !dbg !1435
  %call = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %8, %union.acpi_operand_object** %sub_package, i32 16, i32 %9) #3, !dbg !1436
  store i32 %call, i32* %status, align 4, !dbg !1437
  %10 = load i32, i32* %status, align 4, !dbg !1438
  %tobool = icmp ne i32 %10, 0, !dbg !1438
  br i1 %tobool, label %if.then, label %if.end, !dbg !1440

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %status, align 4, !dbg !1441
  store i32 %11, i32* %retval, align 4, !dbg !1443
  br label %return, !dbg !1443

if.end:                                           ; preds = %for.body
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1444
  %13 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1445
  %parent_package3 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %13, i32 0, i32 8, !dbg !1446
  store %union.acpi_operand_object* %12, %union.acpi_operand_object** %parent_package3, align 8, !dbg !1447
  %14 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1448
  %ret_info = bitcast %union.acpi_predefined_info* %14 to %struct.acpi_package_info*, !dbg !1449
  %type = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info, i32 0, i32 0, !dbg !1450
  %15 = load i8, i8* %type, align 1, !dbg !1450
  %conv = zext i8 %15 to i32, !dbg !1448
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 6, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb26
    i32 11, label %sw.bb56
    i32 7, label %sw.bb57
    i32 8, label %sw.bb78
    i32 5, label %sw.bb96
  ], !dbg !1451

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %16 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1452
  %ret_info4 = bitcast %union.acpi_predefined_info* %16 to %struct.acpi_package_info*, !dbg !1454
  %count1 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info4, i32 0, i32 2, !dbg !1455
  %17 = load i8, i8* %count1, align 1, !dbg !1455
  %conv5 = zext i8 %17 to i32, !dbg !1452
  %18 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1456
  %ret_info6 = bitcast %union.acpi_predefined_info* %18 to %struct.acpi_package_info*, !dbg !1457
  %count2 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info6, i32 0, i32 4, !dbg !1458
  %19 = load i8, i8* %count2, align 1, !dbg !1458
  %conv7 = zext i8 %19 to i32, !dbg !1456
  %add = add i32 %conv5, %conv7, !dbg !1459
  store i32 %add, i32* %expected_count, align 4, !dbg !1460
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1461
  %package8 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_package*, !dbg !1463
  %count9 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package8, i32 0, i32 9, !dbg !1464
  %21 = load i32, i32* %count9, align 4, !dbg !1464
  %22 = load i32, i32* %expected_count, align 4, !dbg !1465
  %cmp10 = icmp ult i32 %21, %22, !dbg !1466
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1467

if.then12:                                        ; preds = %sw.bb
  br label %package_too_small, !dbg !1468

if.end13:                                         ; preds = %sw.bb
  %23 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1470
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_elements, align 8, !dbg !1471
  %25 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1472
  %ret_info14 = bitcast %union.acpi_predefined_info* %25 to %struct.acpi_package_info*, !dbg !1473
  %object_type1 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info14, i32 0, i32 1, !dbg !1474
  %26 = load i8, i8* %object_type1, align 1, !dbg !1474
  %27 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1475
  %ret_info15 = bitcast %union.acpi_predefined_info* %27 to %struct.acpi_package_info*, !dbg !1476
  %count116 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info15, i32 0, i32 2, !dbg !1477
  %28 = load i8, i8* %count116, align 1, !dbg !1477
  %conv17 = zext i8 %28 to i32, !dbg !1475
  %29 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1478
  %ret_info18 = bitcast %union.acpi_predefined_info* %29 to %struct.acpi_package_info*, !dbg !1479
  %object_type2 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info18, i32 0, i32 3, !dbg !1480
  %30 = load i8, i8* %object_type2, align 1, !dbg !1480
  %31 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1481
  %ret_info19 = bitcast %union.acpi_predefined_info* %31 to %struct.acpi_package_info*, !dbg !1482
  %count220 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info19, i32 0, i32 4, !dbg !1483
  %32 = load i8, i8* %count220, align 1, !dbg !1483
  %conv21 = zext i8 %32 to i32, !dbg !1481
  %call22 = call i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %23, %union.acpi_operand_object** %24, i8 zeroext %26, i32 %conv17, i8 zeroext %30, i32 %conv21, i32 0) #3, !dbg !1484
  store i32 %call22, i32* %status, align 4, !dbg !1485
  %33 = load i32, i32* %status, align 4, !dbg !1486
  %tobool23 = icmp ne i32 %33, 0, !dbg !1486
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1488

if.then24:                                        ; preds = %if.end13
  %34 = load i32, i32* %status, align 4, !dbg !1489
  store i32 %34, i32* %retval, align 4, !dbg !1491
  br label %return, !dbg !1491

if.end25:                                         ; preds = %if.end13
  br label %sw.epilog, !dbg !1492

sw.bb26:                                          ; preds = %if.end
  %35 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1493
  %ret_info27 = bitcast %union.acpi_predefined_info* %35 to %struct.acpi_package_info*, !dbg !1494
  %count128 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info27, i32 0, i32 2, !dbg !1495
  %36 = load i8, i8* %count128, align 1, !dbg !1495
  %conv29 = zext i8 %36 to i32, !dbg !1493
  %37 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1496
  %ret_info30 = bitcast %union.acpi_predefined_info* %37 to %struct.acpi_package_info*, !dbg !1497
  %count231 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info30, i32 0, i32 4, !dbg !1498
  %38 = load i8, i8* %count231, align 1, !dbg !1498
  %conv32 = zext i8 %38 to i32, !dbg !1496
  %add33 = add i32 %conv29, %conv32, !dbg !1499
  store i32 %add33, i32* %expected_count, align 4, !dbg !1500
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1501
  %package34 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_package*, !dbg !1503
  %count35 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package34, i32 0, i32 9, !dbg !1504
  %40 = load i32, i32* %count35, align 4, !dbg !1504
  %41 = load i32, i32* %expected_count, align 4, !dbg !1505
  %cmp36 = icmp ult i32 %40, %41, !dbg !1506
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !1507

if.then38:                                        ; preds = %sw.bb26
  br label %package_too_small, !dbg !1508

if.end39:                                         ; preds = %sw.bb26
  %42 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1510
  %43 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_elements, align 8, !dbg !1511
  %44 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1512
  %ret_info40 = bitcast %union.acpi_predefined_info* %44 to %struct.acpi_package_info*, !dbg !1513
  %object_type141 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info40, i32 0, i32 1, !dbg !1514
  %45 = load i8, i8* %object_type141, align 1, !dbg !1514
  %46 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1515
  %ret_info42 = bitcast %union.acpi_predefined_info* %46 to %struct.acpi_package_info*, !dbg !1516
  %count143 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info42, i32 0, i32 2, !dbg !1517
  %47 = load i8, i8* %count143, align 1, !dbg !1517
  %conv44 = zext i8 %47 to i32, !dbg !1515
  %48 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1518
  %ret_info45 = bitcast %union.acpi_predefined_info* %48 to %struct.acpi_package_info*, !dbg !1519
  %object_type246 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info45, i32 0, i32 3, !dbg !1520
  %49 = load i8, i8* %object_type246, align 1, !dbg !1520
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1521
  %package47 = bitcast %union.acpi_operand_object* %50 to %struct.acpi_object_package*, !dbg !1522
  %count48 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package47, i32 0, i32 9, !dbg !1523
  %51 = load i32, i32* %count48, align 4, !dbg !1523
  %52 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1524
  %ret_info49 = bitcast %union.acpi_predefined_info* %52 to %struct.acpi_package_info*, !dbg !1525
  %count150 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info49, i32 0, i32 2, !dbg !1526
  %53 = load i8, i8* %count150, align 1, !dbg !1526
  %conv51 = zext i8 %53 to i32, !dbg !1524
  %sub = sub i32 %51, %conv51, !dbg !1527
  %call52 = call i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %42, %union.acpi_operand_object** %43, i8 zeroext %45, i32 %conv44, i8 zeroext %49, i32 %sub, i32 0) #3, !dbg !1528
  store i32 %call52, i32* %status, align 4, !dbg !1529
  %54 = load i32, i32* %status, align 4, !dbg !1530
  %tobool53 = icmp ne i32 %54, 0, !dbg !1530
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !1532

if.then54:                                        ; preds = %if.end39
  %55 = load i32, i32* %status, align 4, !dbg !1533
  store i32 %55, i32* %retval, align 4, !dbg !1535
  br label %return, !dbg !1535

if.end55:                                         ; preds = %if.end39
  br label %sw.epilog, !dbg !1536

sw.bb56:                                          ; preds = %if.end
  br label %sw.epilog, !dbg !1537

sw.bb57:                                          ; preds = %if.end
  %56 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1538
  %ret_info2 = bitcast %union.acpi_predefined_info* %56 to %struct.acpi_package_info2*, !dbg !1539
  %count58 = getelementptr inbounds %struct.acpi_package_info2, %struct.acpi_package_info2* %ret_info2, i32 0, i32 1, !dbg !1540
  %57 = load i8, i8* %count58, align 1, !dbg !1540
  %conv59 = zext i8 %57 to i32, !dbg !1538
  store i32 %conv59, i32* %expected_count, align 4, !dbg !1541
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1542
  %package60 = bitcast %union.acpi_operand_object* %58 to %struct.acpi_object_package*, !dbg !1544
  %count61 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package60, i32 0, i32 9, !dbg !1545
  %59 = load i32, i32* %count61, align 4, !dbg !1545
  %60 = load i32, i32* %expected_count, align 4, !dbg !1546
  %cmp62 = icmp ult i32 %59, %60, !dbg !1547
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !1548

if.then64:                                        ; preds = %sw.bb57
  br label %package_too_small, !dbg !1549

if.end65:                                         ; preds = %sw.bb57
  store i32 0, i32* %j, align 4, !dbg !1551
  br label %for.cond66, !dbg !1553

for.cond66:                                       ; preds = %for.inc, %if.end65
  %61 = load i32, i32* %j, align 4, !dbg !1554
  %62 = load i32, i32* %expected_count, align 4, !dbg !1556
  %cmp67 = icmp ult i32 %61, %62, !dbg !1557
  br i1 %cmp67, label %for.body69, label %for.end, !dbg !1558

for.body69:                                       ; preds = %for.cond66
  %63 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1559
  %64 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_elements, align 8, !dbg !1561
  %65 = load i32, i32* %j, align 4, !dbg !1562
  %idxprom = zext i32 %65 to i64, !dbg !1561
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %64, i64 %idxprom, !dbg !1561
  %66 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1563
  %ret_info270 = bitcast %union.acpi_predefined_info* %66 to %struct.acpi_package_info2*, !dbg !1564
  %object_type = getelementptr inbounds %struct.acpi_package_info2, %struct.acpi_package_info2* %ret_info270, i32 0, i32 2, !dbg !1565
  %67 = load i32, i32* %j, align 4, !dbg !1566
  %idxprom71 = zext i32 %67 to i64, !dbg !1563
  %arrayidx72 = getelementptr [4 x i8], [4 x i8]* %object_type, i64 0, i64 %idxprom71, !dbg !1563
  %68 = load i8, i8* %arrayidx72, align 1, !dbg !1563
  %conv73 = zext i8 %68 to i32, !dbg !1563
  %69 = load i32, i32* %j, align 4, !dbg !1567
  %call74 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %63, %union.acpi_operand_object** %arrayidx, i32 %conv73, i32 %69) #3, !dbg !1568
  store i32 %call74, i32* %status, align 4, !dbg !1569
  %70 = load i32, i32* %status, align 4, !dbg !1570
  %tobool75 = icmp ne i32 %70, 0, !dbg !1570
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !1572

if.then76:                                        ; preds = %for.body69
  %71 = load i32, i32* %status, align 4, !dbg !1573
  store i32 %71, i32* %retval, align 4, !dbg !1575
  br label %return, !dbg !1575

if.end77:                                         ; preds = %for.body69
  br label %for.inc, !dbg !1576

for.inc:                                          ; preds = %if.end77
  %72 = load i32, i32* %j, align 4, !dbg !1577
  %inc = add i32 %72, 1, !dbg !1577
  store i32 %inc, i32* %j, align 4, !dbg !1577
  br label %for.cond66, !dbg !1578, !llvm.loop !1579

for.end:                                          ; preds = %for.cond66
  br label %sw.epilog, !dbg !1581

sw.bb78:                                          ; preds = %if.end
  %73 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1582
  %ret_info79 = bitcast %union.acpi_predefined_info* %73 to %struct.acpi_package_info*, !dbg !1583
  %count180 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info79, i32 0, i32 2, !dbg !1584
  %74 = load i8, i8* %count180, align 1, !dbg !1584
  %conv81 = zext i8 %74 to i32, !dbg !1582
  store i32 %conv81, i32* %expected_count, align 4, !dbg !1585
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1586
  %package82 = bitcast %union.acpi_operand_object* %75 to %struct.acpi_object_package*, !dbg !1588
  %count83 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package82, i32 0, i32 9, !dbg !1589
  %76 = load i32, i32* %count83, align 4, !dbg !1589
  %77 = load i32, i32* %expected_count, align 4, !dbg !1590
  %cmp84 = icmp ult i32 %76, %77, !dbg !1591
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !1592

if.then86:                                        ; preds = %sw.bb78
  br label %package_too_small, !dbg !1593

if.end87:                                         ; preds = %sw.bb78
  %78 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1595
  %79 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_elements, align 8, !dbg !1596
  %80 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1597
  %ret_info88 = bitcast %union.acpi_predefined_info* %80 to %struct.acpi_package_info*, !dbg !1598
  %object_type189 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info88, i32 0, i32 1, !dbg !1599
  %81 = load i8, i8* %object_type189, align 1, !dbg !1599
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1600
  %package90 = bitcast %union.acpi_operand_object* %82 to %struct.acpi_object_package*, !dbg !1601
  %count91 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package90, i32 0, i32 9, !dbg !1602
  %83 = load i32, i32* %count91, align 4, !dbg !1602
  %call92 = call i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %78, %union.acpi_operand_object** %79, i8 zeroext %81, i32 %83, i8 zeroext 0, i32 0, i32 0) #3, !dbg !1603
  store i32 %call92, i32* %status, align 4, !dbg !1604
  %84 = load i32, i32* %status, align 4, !dbg !1605
  %tobool93 = icmp ne i32 %84, 0, !dbg !1605
  br i1 %tobool93, label %if.then94, label %if.end95, !dbg !1607

if.then94:                                        ; preds = %if.end87
  %85 = load i32, i32* %status, align 4, !dbg !1608
  store i32 %85, i32* %retval, align 4, !dbg !1610
  br label %return, !dbg !1610

if.end95:                                         ; preds = %if.end87
  br label %sw.epilog, !dbg !1611

sw.bb96:                                          ; preds = %if.end
  %86 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1612
  %87 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_elements, align 8, !dbg !1613
  %call97 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %86, %union.acpi_operand_object** %87, i32 2, i32 0) #3, !dbg !1614
  store i32 %call97, i32* %status, align 4, !dbg !1615
  %88 = load i32, i32* %status, align 4, !dbg !1616
  %tobool98 = icmp ne i32 %88, 0, !dbg !1616
  br i1 %tobool98, label %if.then99, label %if.end100, !dbg !1618

if.then99:                                        ; preds = %sw.bb96
  %89 = load i32, i32* %status, align 4, !dbg !1619
  store i32 %89, i32* %retval, align 4, !dbg !1621
  br label %return, !dbg !1621

if.end100:                                        ; preds = %sw.bb96
  %90 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_elements, align 8, !dbg !1622
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %90, align 8, !dbg !1623
  %integer = bitcast %union.acpi_operand_object* %91 to %struct.acpi_object_integer*, !dbg !1624
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1625
  %92 = load i64, i64* %value, align 8, !dbg !1625
  %conv101 = trunc i64 %92 to i32, !dbg !1626
  store i32 %conv101, i32* %expected_count, align 4, !dbg !1627
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1628
  %package102 = bitcast %union.acpi_operand_object* %93 to %struct.acpi_object_package*, !dbg !1630
  %count103 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package102, i32 0, i32 9, !dbg !1631
  %94 = load i32, i32* %count103, align 4, !dbg !1631
  %95 = load i32, i32* %expected_count, align 4, !dbg !1632
  %cmp104 = icmp ult i32 %94, %95, !dbg !1633
  br i1 %cmp104, label %if.then106, label %if.end107, !dbg !1634

if.then106:                                       ; preds = %if.end100
  br label %package_too_small, !dbg !1635

if.end107:                                        ; preds = %if.end100
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1637
  %package108 = bitcast %union.acpi_operand_object* %96 to %struct.acpi_object_package*, !dbg !1639
  %count109 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package108, i32 0, i32 9, !dbg !1640
  %97 = load i32, i32* %count109, align 4, !dbg !1640
  %98 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1641
  %ret_info110 = bitcast %union.acpi_predefined_info* %98 to %struct.acpi_package_info*, !dbg !1642
  %count1111 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info110, i32 0, i32 2, !dbg !1643
  %99 = load i8, i8* %count1111, align 1, !dbg !1643
  %conv112 = zext i8 %99 to i32, !dbg !1641
  %cmp113 = icmp ult i32 %97, %conv112, !dbg !1644
  br i1 %cmp113, label %if.then115, label %if.end119, !dbg !1645

if.then115:                                       ; preds = %if.end107
  %100 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1646
  %ret_info116 = bitcast %union.acpi_predefined_info* %100 to %struct.acpi_package_info*, !dbg !1648
  %count1117 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info116, i32 0, i32 2, !dbg !1649
  %101 = load i8, i8* %count1117, align 1, !dbg !1649
  %conv118 = zext i8 %101 to i32, !dbg !1646
  store i32 %conv118, i32* %expected_count, align 4, !dbg !1650
  br label %package_too_small, !dbg !1651

if.end119:                                        ; preds = %if.end107
  %102 = load i32, i32* %expected_count, align 4, !dbg !1652
  %cmp120 = icmp eq i32 %102, 0, !dbg !1654
  br i1 %cmp120, label %if.then122, label %if.end128, !dbg !1655

if.then122:                                       ; preds = %if.end119
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1656
  %package123 = bitcast %union.acpi_operand_object* %103 to %struct.acpi_object_package*, !dbg !1658
  %count124 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package123, i32 0, i32 9, !dbg !1659
  %104 = load i32, i32* %count124, align 4, !dbg !1659
  store i32 %104, i32* %expected_count, align 4, !dbg !1660
  %105 = load i32, i32* %expected_count, align 4, !dbg !1661
  %conv125 = zext i32 %105 to i64, !dbg !1661
  %106 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_elements, align 8, !dbg !1662
  %107 = load %union.acpi_operand_object*, %union.acpi_operand_object** %106, align 8, !dbg !1663
  %integer126 = bitcast %union.acpi_operand_object* %107 to %struct.acpi_object_integer*, !dbg !1664
  %value127 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer126, i32 0, i32 6, !dbg !1665
  store i64 %conv125, i64* %value127, align 8, !dbg !1666
  br label %if.end128, !dbg !1667

if.end128:                                        ; preds = %if.then122, %if.end119
  %108 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1668
  %109 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_elements, align 8, !dbg !1669
  %add.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %109, i64 1, !dbg !1670
  %110 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1671
  %ret_info129 = bitcast %union.acpi_predefined_info* %110 to %struct.acpi_package_info*, !dbg !1672
  %object_type1130 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info129, i32 0, i32 1, !dbg !1673
  %111 = load i8, i8* %object_type1130, align 1, !dbg !1673
  %112 = load i32, i32* %expected_count, align 4, !dbg !1674
  %sub131 = sub i32 %112, 1, !dbg !1675
  %call132 = call i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %108, %union.acpi_operand_object** %add.ptr, i8 zeroext %111, i32 %sub131, i8 zeroext 0, i32 0, i32 1) #3, !dbg !1676
  store i32 %call132, i32* %status, align 4, !dbg !1677
  %113 = load i32, i32* %status, align 4, !dbg !1678
  %tobool133 = icmp ne i32 %113, 0, !dbg !1678
  br i1 %tobool133, label %if.then134, label %if.end135, !dbg !1680

if.then134:                                       ; preds = %if.end128
  %114 = load i32, i32* %status, align 4, !dbg !1681
  store i32 %114, i32* %retval, align 4, !dbg !1683
  br label %return, !dbg !1683

if.end135:                                        ; preds = %if.end128
  br label %sw.epilog, !dbg !1684

sw.default:                                       ; preds = %if.end
  %115 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %package.addr, align 8, !dbg !1685
  %ret_info136 = bitcast %union.acpi_predefined_info* %115 to %struct.acpi_package_info*, !dbg !1685
  %type137 = getelementptr inbounds %struct.acpi_package_info, %struct.acpi_package_info* %ret_info136, i32 0, i32 0, !dbg !1685
  %116 = load i8, i8* %type137, align 1, !dbg !1685
  %conv138 = zext i8 %116 to i32, !dbg !1685
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 583, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %conv138) #3, !dbg !1685
  store i32 12303, i32* %retval, align 4, !dbg !1686
  br label %return, !dbg !1686

sw.epilog:                                        ; preds = %if.end135, %if.end95, %for.end, %sw.bb56, %if.end55, %if.end25
  %117 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements.addr, align 8, !dbg !1687
  %incdec.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %117, i32 1, !dbg !1687
  store %union.acpi_operand_object** %incdec.ptr, %union.acpi_operand_object*** %elements.addr, align 8, !dbg !1687
  br label %for.inc139, !dbg !1688

for.inc139:                                       ; preds = %sw.epilog
  %118 = load i32, i32* %i, align 4, !dbg !1689
  %inc140 = add i32 %118, 1, !dbg !1689
  store i32 %inc140, i32* %i, align 4, !dbg !1689
  br label %for.cond, !dbg !1690, !llvm.loop !1691

for.end141:                                       ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1693
  br label %return, !dbg !1693

package_too_small:                                ; preds = %if.then115, %if.then106, %if.then86, %if.then64, %if.then38, %if.then12
  call void @llvm.dbg.label(metadata !1694), !dbg !1695
  %119 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1696
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %119, i32 0, i32 5, !dbg !1696
  %120 = load i8*, i8** %full_pathname, align 8, !dbg !1696
  %121 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1696
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %121, i32 0, i32 12, !dbg !1696
  %122 = load i16, i16* %node_flags, align 2, !dbg !1696
  %123 = load i32, i32* %i, align 4, !dbg !1696
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1696
  %package142 = bitcast %union.acpi_operand_object* %124 to %struct.acpi_object_package*, !dbg !1696
  %count144 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package142, i32 0, i32 9, !dbg !1696
  %125 = load i32, i32* %count144, align 4, !dbg !1696
  %126 = load i32, i32* %expected_count, align 4, !dbg !1696
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 597, i8* %120, i16 zeroext %122, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32 %123, i32 %125, i32 %126) #3, !dbg !1696
  store i32 12292, i32* %retval, align 4, !dbg !1697
  br label %return, !dbg !1697

return:                                           ; preds = %package_too_small, %for.end141, %sw.default, %if.then134, %if.then99, %if.then94, %if.then76, %if.then54, %if.then24, %if.then
  %127 = load i32, i32* %retval, align 4, !dbg !1698
  ret i32 %127, !dbg !1698
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_wrap_with_package(%struct.acpi_evaluate_info*, %union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !30, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !22, globals: !29, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsprepkg.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_return_package_types", file: !6, line: 86, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/acpredef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!9 = !DIEnumerator(name: "ACPI_PTYPE1_FIXED", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_PTYPE1_VAR", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_PTYPE1_OPTION", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "ACPI_PTYPE2", value: 4, isUnsigned: true)
!13 = !DIEnumerator(name: "ACPI_PTYPE2_COUNT", value: 5, isUnsigned: true)
!14 = !DIEnumerator(name: "ACPI_PTYPE2_PKG_COUNT", value: 6, isUnsigned: true)
!15 = !DIEnumerator(name: "ACPI_PTYPE2_FIXED", value: 7, isUnsigned: true)
!16 = !DIEnumerator(name: "ACPI_PTYPE2_MIN", value: 8, isUnsigned: true)
!17 = !DIEnumerator(name: "ACPI_PTYPE2_REV_FIXED", value: 9, isUnsigned: true)
!18 = !DIEnumerator(name: "ACPI_PTYPE2_FIX_VAR", value: 10, isUnsigned: true)
!19 = !DIEnumerator(name: "ACPI_PTYPE2_VAR_VAR", value: 11, isUnsigned: true)
!20 = !DIEnumerator(name: "ACPI_PTYPE2_UUID_PAIR", value: 12, isUnsigned: true)
!21 = !DIEnumerator(name: "ACPI_PTYPE_CUSTOM", value: 13, isUnsigned: true)
!22 = !{!23, !25}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !24, line: 421, baseType: !25)
!24 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !26, line: 21, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !28, line: 27, baseType: !7)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!0}
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 72, elements: !33)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !{!34}
!34 = !DISubrange(count: 9)
!35 = !{i32 7, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"Code Model", i32 2}
!39 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!40 = distinct !DISubprogram(name: "acpi_ns_check_package", scope: !3, file: !3, line: 51, type: !41, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !873)
!41 = !DISubroutineType(types: !42)
!42 = !{!23, !43, !122}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !45, line: 152, size: 704, elements: !46)
!45 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !812, !814, !815, !816, !817, !818, !864, !865, !866, !867, !868, !869, !870, !871, !872}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !44, file: !45, line: 155, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !50, line: 133, size: 384, elements: !51)
!50 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !799, !800, !801, !802, !808, !809, !810, !811}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !49, file: !50, line: 134, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !55, line: 367, size: 576, elements: !56)
!55 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !71, !87, !98, !112, !126, !136, !450, !467, !482, !495, !573, !585, !599, !609, !627, !649, !668, !687, !706, !719, !745, !762, !775, !789, !798}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !54, file: !55, line: 368, baseType: !58, size: 128)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !55, line: 73, size: 128, elements: !59)
!59 = !{!60, !61, !65, !66, !70}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !58, file: !55, line: 74, baseType: !53, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !58, file: !55, line: 74, baseType: !62, size: 8, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !26, line: 17, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !28, line: 21, baseType: !64)
!64 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !55, line: 74, baseType: !62, size: 8, offset: 72)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !58, file: !55, line: 74, baseType: !67, size: 16, offset: 80)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !26, line: 19, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !28, line: 24, baseType: !69)
!69 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !55, line: 74, baseType: !62, size: 8, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !54, file: !55, line: 369, baseType: !72, size: 192)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !55, line: 76, size: 192, elements: !73)
!73 = !{!74, !75, !76, !77, !78, !79, !83}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !72, file: !55, line: 77, baseType: !53, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !72, file: !55, line: 77, baseType: !62, size: 8, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !55, line: 77, baseType: !62, size: 8, offset: 72)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !72, file: !55, line: 77, baseType: !67, size: 16, offset: 80)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !55, line: 77, baseType: !62, size: 8, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !72, file: !55, line: 77, baseType: !80, size: 24, offset: 104)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 24, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 3)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !72, file: !55, line: 78, baseType: !84, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !26, line: 23, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !28, line: 31, baseType: !86)
!86 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !54, file: !55, line: 370, baseType: !88, size: 256)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !55, line: 93, size: 256, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !97}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !88, file: !55, line: 94, baseType: !53, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !88, file: !55, line: 94, baseType: !62, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !55, line: 94, baseType: !62, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !88, file: !55, line: 94, baseType: !67, size: 16, offset: 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !88, file: !55, line: 94, baseType: !62, size: 8, offset: 96)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !88, file: !55, line: 94, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !88, file: !55, line: 94, baseType: !25, size: 32, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !54, file: !55, line: 371, baseType: !99, size: 384)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !55, line: 97, size: 384, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !108, !109, !110, !111}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !99, file: !55, line: 98, baseType: !53, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !99, file: !55, line: 98, baseType: !62, size: 8, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !55, line: 98, baseType: !62, size: 8, offset: 72)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !99, file: !55, line: 98, baseType: !67, size: 16, offset: 80)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !55, line: 98, baseType: !62, size: 8, offset: 96)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !99, file: !55, line: 98, baseType: !107, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !99, file: !55, line: 98, baseType: !25, size: 32, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !99, file: !55, line: 99, baseType: !25, size: 32, offset: 224)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !99, file: !55, line: 100, baseType: !107, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !99, file: !55, line: 101, baseType: !48, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !54, file: !55, line: 372, baseType: !113, size: 384)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !55, line: 104, size: 384, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !123, !124, !125}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !113, file: !55, line: 105, baseType: !53, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !113, file: !55, line: 105, baseType: !62, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !55, line: 105, baseType: !62, size: 8, offset: 72)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !113, file: !55, line: 105, baseType: !67, size: 16, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !55, line: 105, baseType: !62, size: 8, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !113, file: !55, line: 105, baseType: !48, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !113, file: !55, line: 106, baseType: !122, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !113, file: !55, line: 107, baseType: !107, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !113, file: !55, line: 108, baseType: !25, size: 32, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !113, file: !55, line: 109, baseType: !25, size: 32, offset: 352)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !54, file: !55, line: 373, baseType: !127, size: 192)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !55, line: 118, size: 192, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !127, file: !55, line: 119, baseType: !53, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !127, file: !55, line: 119, baseType: !62, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !55, line: 119, baseType: !62, size: 8, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !127, file: !55, line: 119, baseType: !67, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !55, line: 119, baseType: !62, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !127, file: !55, line: 119, baseType: !135, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !54, file: !55, line: 374, baseType: !137, size: 448)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !55, line: 143, size: 448, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !447, !448, !449}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !137, file: !55, line: 144, baseType: !53, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !137, file: !55, line: 144, baseType: !62, size: 8, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !55, line: 144, baseType: !62, size: 8, offset: 72)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !137, file: !55, line: 144, baseType: !67, size: 16, offset: 80)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !55, line: 144, baseType: !62, size: 8, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !137, file: !55, line: 144, baseType: !62, size: 8, offset: 104)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !137, file: !55, line: 145, baseType: !62, size: 8, offset: 112)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !137, file: !55, line: 146, baseType: !62, size: 8, offset: 120)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !137, file: !55, line: 147, baseType: !53, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !137, file: !55, line: 148, baseType: !53, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !137, file: !55, line: 149, baseType: !107, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !137, file: !55, line: 153, baseType: !151, size: 64, offset: 320)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !55, line: 150, size: 64, elements: !152)
!152 = !{!153, !446}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !151, file: !55, line: 151, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !50, line: 248, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!23, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !45, line: 37, size: 9024, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !394, !395, !396, !397, !398, !402, !404, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !429, !430, !431, !432, !433, !434, !435, !436, !438, !444}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !159, file: !45, line: 38, baseType: !158, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !159, file: !45, line: 39, baseType: !62, size: 8, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !159, file: !45, line: 40, baseType: !62, size: 8, offset: 72)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !159, file: !45, line: 41, baseType: !67, size: 16, offset: 80)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !159, file: !45, line: 42, baseType: !62, size: 8, offset: 96)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !159, file: !45, line: 43, baseType: !62, size: 8, offset: 104)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !159, file: !45, line: 44, baseType: !62, size: 8, offset: 112)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !159, file: !45, line: 45, baseType: !169, size: 16, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !24, line: 445, baseType: !67)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !159, file: !45, line: 46, baseType: !62, size: 8, offset: 144)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !159, file: !45, line: 47, baseType: !62, size: 8, offset: 152)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !159, file: !45, line: 48, baseType: !62, size: 8, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !159, file: !45, line: 49, baseType: !62, size: 8, offset: 168)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !159, file: !45, line: 50, baseType: !62, size: 8, offset: 176)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !159, file: !45, line: 51, baseType: !62, size: 8, offset: 184)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !159, file: !45, line: 52, baseType: !62, size: 8, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !159, file: !45, line: 53, baseType: !62, size: 8, offset: 200)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !159, file: !45, line: 54, baseType: !107, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !159, file: !45, line: 55, baseType: !25, size: 32, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !159, file: !45, line: 56, baseType: !25, size: 32, offset: 352)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !159, file: !45, line: 57, baseType: !25, size: 32, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !159, file: !45, line: 58, baseType: !25, size: 32, offset: 416)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !159, file: !45, line: 60, baseType: !184, size: 640, offset: 448)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !50, line: 893, size: 640, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !275, !276, !392, !393}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !184, file: !50, line: 894, baseType: !107, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !184, file: !50, line: 895, baseType: !107, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !184, file: !50, line: 896, baseType: !107, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !184, file: !50, line: 897, baseType: !107, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !184, file: !50, line: 898, baseType: !107, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !184, file: !50, line: 899, baseType: !192, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !50, line: 875, size: 1600, elements: !194)
!194 = !{!195, !215, !231}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !193, file: !50, line: 876, baseType: !196, size: 448)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !50, line: 828, size: 448, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !214}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !50, line: 829, baseType: !192, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !196, file: !50, line: 829, baseType: !62, size: 8, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !50, line: 829, baseType: !62, size: 8, offset: 72)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !196, file: !50, line: 829, baseType: !67, size: 16, offset: 80)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !196, file: !50, line: 829, baseType: !107, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !50, line: 829, baseType: !192, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !196, file: !50, line: 829, baseType: !48, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !196, file: !50, line: 829, baseType: !206, size: 64, offset: 320)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !50, line: 716, size: 64, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !206, file: !50, line: 717, baseType: !84, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !206, file: !50, line: 718, baseType: !25, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !206, file: !50, line: 719, baseType: !96, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !206, file: !50, line: 720, baseType: !107, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !50, line: 721, baseType: !96, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !206, file: !50, line: 722, baseType: !192, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !196, file: !50, line: 829, baseType: !62, size: 8, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !193, file: !50, line: 877, baseType: !216, size: 640)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !50, line: 835, size: 640, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !50, line: 836, baseType: !192, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !216, file: !50, line: 836, baseType: !62, size: 8, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !50, line: 836, baseType: !62, size: 8, offset: 72)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !216, file: !50, line: 836, baseType: !67, size: 16, offset: 80)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !216, file: !50, line: 836, baseType: !107, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !50, line: 836, baseType: !192, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !216, file: !50, line: 836, baseType: !48, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !216, file: !50, line: 836, baseType: !206, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !216, file: !50, line: 836, baseType: !62, size: 8, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !216, file: !50, line: 836, baseType: !96, size: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !216, file: !50, line: 837, baseType: !107, size: 64, offset: 512)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !216, file: !50, line: 838, baseType: !25, size: 32, offset: 576)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !50, line: 839, baseType: !25, size: 32, offset: 608)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !193, file: !50, line: 878, baseType: !232, size: 1600)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !50, line: 846, size: 1600, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !232, file: !50, line: 847, baseType: !192, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !232, file: !50, line: 847, baseType: !62, size: 8, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !50, line: 847, baseType: !62, size: 8, offset: 72)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !232, file: !50, line: 847, baseType: !67, size: 16, offset: 80)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !232, file: !50, line: 847, baseType: !107, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !50, line: 847, baseType: !192, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !232, file: !50, line: 847, baseType: !48, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !232, file: !50, line: 847, baseType: !206, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !232, file: !50, line: 847, baseType: !62, size: 8, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !232, file: !50, line: 847, baseType: !192, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !232, file: !50, line: 848, baseType: !192, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !232, file: !50, line: 849, baseType: !96, size: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !232, file: !50, line: 850, baseType: !62, size: 8, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !232, file: !50, line: 851, baseType: !96, size: 64, offset: 704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !232, file: !50, line: 852, baseType: !96, size: 64, offset: 768)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !232, file: !50, line: 853, baseType: !96, size: 64, offset: 832)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !232, file: !50, line: 854, baseType: !251, size: 32, offset: 896)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 32, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 4)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !232, file: !50, line: 855, baseType: !25, size: 32, offset: 928)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !232, file: !50, line: 856, baseType: !25, size: 32, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !232, file: !50, line: 857, baseType: !25, size: 32, offset: 992)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !232, file: !50, line: 858, baseType: !25, size: 32, offset: 1024)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !232, file: !50, line: 859, baseType: !25, size: 32, offset: 1056)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !232, file: !50, line: 860, baseType: !25, size: 32, offset: 1088)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !232, file: !50, line: 861, baseType: !25, size: 32, offset: 1120)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !232, file: !50, line: 862, baseType: !25, size: 32, offset: 1152)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !232, file: !50, line: 863, baseType: !25, size: 32, offset: 1184)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !232, file: !50, line: 864, baseType: !25, size: 32, offset: 1216)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !232, file: !50, line: 865, baseType: !25, size: 32, offset: 1248)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !232, file: !50, line: 866, baseType: !25, size: 32, offset: 1280)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !232, file: !50, line: 867, baseType: !25, size: 32, offset: 1312)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !232, file: !50, line: 868, baseType: !67, size: 16, offset: 1344)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !232, file: !50, line: 869, baseType: !62, size: 8, offset: 1360)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !232, file: !50, line: 870, baseType: !62, size: 8, offset: 1368)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !232, file: !50, line: 871, baseType: !62, size: 8, offset: 1376)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !232, file: !50, line: 872, baseType: !272, size: 160, offset: 1384)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 20)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !184, file: !50, line: 900, baseType: !48, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !184, file: !50, line: 901, baseType: !277, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !50, line: 663, size: 640, elements: !279)
!279 = !{!280, !288, !301, !310, !319, !332, !346, !358, !370}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !278, file: !50, line: 664, baseType: !281, size: 128)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !50, line: 567, size: 128, elements: !282)
!282 = !{!283, !284, !285, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !50, line: 568, baseType: !135, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !281, file: !50, line: 568, baseType: !62, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !50, line: 568, baseType: !62, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !281, file: !50, line: 568, baseType: !67, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !281, file: !50, line: 568, baseType: !67, size: 16, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !278, file: !50, line: 665, baseType: !289, size: 384)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !50, line: 593, size: 384, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !50, line: 594, baseType: !135, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !289, file: !50, line: 594, baseType: !62, size: 8, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !50, line: 594, baseType: !62, size: 8, offset: 72)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !289, file: !50, line: 594, baseType: !67, size: 16, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !50, line: 594, baseType: !67, size: 16, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !289, file: !50, line: 594, baseType: !67, size: 16, offset: 112)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !289, file: !50, line: 595, baseType: !192, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !289, file: !50, line: 596, baseType: !107, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !289, file: !50, line: 597, baseType: !107, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !289, file: !50, line: 598, baseType: !84, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !278, file: !50, line: 666, baseType: !302, size: 192)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !50, line: 573, size: 192, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !50, line: 574, baseType: !135, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !302, file: !50, line: 574, baseType: !62, size: 8, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !50, line: 574, baseType: !62, size: 8, offset: 72)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !302, file: !50, line: 574, baseType: !67, size: 16, offset: 80)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !302, file: !50, line: 574, baseType: !67, size: 16, offset: 96)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !302, file: !50, line: 574, baseType: !53, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !278, file: !50, line: 667, baseType: !311, size: 192)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !50, line: 604, size: 192, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !50, line: 605, baseType: !135, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !311, file: !50, line: 605, baseType: !62, size: 8, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !50, line: 605, baseType: !62, size: 8, offset: 72)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !311, file: !50, line: 605, baseType: !67, size: 16, offset: 80)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !50, line: 605, baseType: !67, size: 16, offset: 96)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !311, file: !50, line: 605, baseType: !48, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !278, file: !50, line: 668, baseType: !320, size: 448)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !50, line: 608, size: 448, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !50, line: 609, baseType: !135, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !320, file: !50, line: 609, baseType: !62, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !50, line: 609, baseType: !62, size: 8, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !320, file: !50, line: 609, baseType: !67, size: 16, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !50, line: 609, baseType: !67, size: 16, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !320, file: !50, line: 609, baseType: !25, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !320, file: !50, line: 610, baseType: !192, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !320, file: !50, line: 611, baseType: !107, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !320, file: !50, line: 612, baseType: !107, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !320, file: !50, line: 613, baseType: !25, size: 32, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !278, file: !50, line: 669, baseType: !333, size: 512)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !50, line: 580, size: 512, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !50, line: 581, baseType: !135, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !333, file: !50, line: 581, baseType: !62, size: 8, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !50, line: 581, baseType: !62, size: 8, offset: 72)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !50, line: 581, baseType: !67, size: 16, offset: 80)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !333, file: !50, line: 581, baseType: !67, size: 16, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !333, file: !50, line: 581, baseType: !25, size: 32, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !333, file: !50, line: 582, baseType: !53, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !333, file: !50, line: 583, baseType: !53, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !333, file: !50, line: 584, baseType: !158, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !333, file: !50, line: 585, baseType: !135, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !333, file: !50, line: 586, baseType: !25, size: 32, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !278, file: !50, line: 670, baseType: !347, size: 320)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !50, line: 620, size: 320, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !50, line: 621, baseType: !135, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !347, file: !50, line: 621, baseType: !62, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !50, line: 621, baseType: !62, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !50, line: 621, baseType: !67, size: 16, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !347, file: !50, line: 621, baseType: !67, size: 16, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !347, file: !50, line: 621, baseType: !62, size: 8, offset: 112)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !347, file: !50, line: 622, baseType: !158, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !347, file: !50, line: 623, baseType: !53, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !347, file: !50, line: 624, baseType: !84, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !278, file: !50, line: 671, baseType: !359, size: 640)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !50, line: 631, size: 640, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !50, line: 632, baseType: !135, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !359, file: !50, line: 632, baseType: !62, size: 8, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !50, line: 632, baseType: !62, size: 8, offset: 72)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !359, file: !50, line: 632, baseType: !67, size: 16, offset: 80)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !359, file: !50, line: 632, baseType: !67, size: 16, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !359, file: !50, line: 633, baseType: !367, size: 512, offset: 128)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 512, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 8)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !278, file: !50, line: 672, baseType: !371, size: 320)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !50, line: 654, size: 320, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !50, line: 655, baseType: !135, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !371, file: !50, line: 655, baseType: !62, size: 8, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !371, file: !50, line: 655, baseType: !62, size: 8, offset: 72)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !371, file: !50, line: 655, baseType: !67, size: 16, offset: 80)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !371, file: !50, line: 655, baseType: !67, size: 16, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !371, file: !50, line: 655, baseType: !62, size: 8, offset: 112)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !371, file: !50, line: 656, baseType: !48, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !371, file: !50, line: 657, baseType: !53, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !371, file: !50, line: 658, baseType: !382, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !50, line: 645, size: 128, elements: !384)
!384 = !{!385, !391}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !383, file: !50, line: 646, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !24, line: 1052, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !390, !25, !135}
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !24, line: 424, baseType: !135)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !383, file: !50, line: 647, baseType: !135, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !184, file: !50, line: 902, baseType: !192, size: 64, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !184, file: !50, line: 903, baseType: !25, size: 32, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !159, file: !45, line: 61, baseType: !25, size: 32, offset: 1088)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !159, file: !45, line: 62, baseType: !25, size: 32, offset: 1120)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !159, file: !45, line: 63, baseType: !67, size: 16, offset: 1152)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !159, file: !45, line: 64, baseType: !62, size: 8, offset: 1168)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !159, file: !45, line: 66, baseType: !399, size: 2688, offset: 1216)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2688, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 7)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !159, file: !45, line: 67, baseType: !403, size: 3072, offset: 3904)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 3072, elements: !368)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !159, file: !45, line: 68, baseType: !405, size: 576, offset: 6976)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 576, elements: !33)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !159, file: !45, line: 69, baseType: !122, size: 64, offset: 7552)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !159, file: !45, line: 71, baseType: !107, size: 64, offset: 7616)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !159, file: !45, line: 72, baseType: !122, size: 64, offset: 7680)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !159, file: !45, line: 73, baseType: !277, size: 64, offset: 7744)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !159, file: !45, line: 74, baseType: !48, size: 64, offset: 7808)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !159, file: !45, line: 75, baseType: !53, size: 64, offset: 7872)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !159, file: !45, line: 76, baseType: !48, size: 64, offset: 7936)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !159, file: !45, line: 77, baseType: !192, size: 64, offset: 8000)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !159, file: !45, line: 78, baseType: !53, size: 64, offset: 8064)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !159, file: !45, line: 79, baseType: !48, size: 64, offset: 8128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !159, file: !45, line: 80, baseType: !96, size: 64, offset: 8192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !159, file: !45, line: 81, baseType: !192, size: 64, offset: 8256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !159, file: !45, line: 82, baseType: !419, size: 64, offset: 8320)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !50, line: 702, size: 128, elements: !422)
!422 = !{!423, !424, !425, !426, !427, !428}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !421, file: !50, line: 706, baseType: !25, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !421, file: !50, line: 707, baseType: !25, size: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !50, line: 708, baseType: !67, size: 16, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !421, file: !50, line: 709, baseType: !62, size: 8, offset: 80)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !421, file: !50, line: 710, baseType: !62, size: 8, offset: 88)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !421, file: !50, line: 711, baseType: !62, size: 8, offset: 96)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !159, file: !45, line: 83, baseType: !192, size: 64, offset: 8384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !159, file: !45, line: 84, baseType: !53, size: 64, offset: 8448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !159, file: !45, line: 85, baseType: !277, size: 64, offset: 8512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !159, file: !45, line: 86, baseType: !53, size: 64, offset: 8576)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !159, file: !45, line: 87, baseType: !277, size: 64, offset: 8640)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !159, file: !45, line: 88, baseType: !192, size: 64, offset: 8704)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !159, file: !45, line: 89, baseType: !192, size: 64, offset: 8768)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !159, file: !45, line: 90, baseType: !437, size: 64, offset: 8832)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !159, file: !45, line: 91, baseType: !439, size: 64, offset: 8896)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !50, line: 637, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!23, !158, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !159, file: !45, line: 92, baseType: !445, size: 64, offset: 8960)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !50, line: 641, baseType: !155)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !151, file: !55, line: 152, baseType: !53, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !137, file: !55, line: 155, baseType: !25, size: 32, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !137, file: !55, line: 156, baseType: !169, size: 16, offset: 416)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !137, file: !55, line: 157, baseType: !62, size: 8, offset: 432)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !54, file: !55, line: 375, baseType: !451, size: 576)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !55, line: 122, size: 576, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !451, file: !55, line: 123, baseType: !53, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !451, file: !55, line: 123, baseType: !62, size: 8, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !451, file: !55, line: 123, baseType: !62, size: 8, offset: 72)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !451, file: !55, line: 123, baseType: !67, size: 16, offset: 80)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !451, file: !55, line: 123, baseType: !62, size: 8, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !451, file: !55, line: 123, baseType: !62, size: 8, offset: 104)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !451, file: !55, line: 124, baseType: !67, size: 16, offset: 112)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !451, file: !55, line: 125, baseType: !135, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !451, file: !55, line: 126, baseType: !84, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !451, file: !55, line: 127, baseType: !437, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !451, file: !55, line: 128, baseType: !53, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !55, line: 129, baseType: !53, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !451, file: !55, line: 130, baseType: !48, size: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !451, file: !55, line: 131, baseType: !62, size: 8, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !54, file: !55, line: 376, baseType: !468, size: 448)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !55, line: 134, size: 448, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !481}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !468, file: !55, line: 135, baseType: !53, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !468, file: !55, line: 135, baseType: !62, size: 8, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !468, file: !55, line: 135, baseType: !62, size: 8, offset: 72)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !468, file: !55, line: 135, baseType: !67, size: 16, offset: 80)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !55, line: 135, baseType: !62, size: 8, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !468, file: !55, line: 135, baseType: !62, size: 8, offset: 104)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !468, file: !55, line: 136, baseType: !48, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !468, file: !55, line: 137, baseType: !53, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !55, line: 138, baseType: !53, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !468, file: !55, line: 139, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !24, line: 129, baseType: !84)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !468, file: !55, line: 140, baseType: !25, size: 32, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !54, file: !55, line: 377, baseType: !483, size: 320)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !55, line: 184, size: 320, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !494}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !483, file: !55, line: 185, baseType: !53, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !483, file: !55, line: 185, baseType: !62, size: 8, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !483, file: !55, line: 185, baseType: !62, size: 8, offset: 72)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !483, file: !55, line: 185, baseType: !67, size: 16, offset: 80)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !55, line: 185, baseType: !62, size: 8, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !483, file: !55, line: 185, baseType: !491, size: 128, offset: 128)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 128, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 2)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !483, file: !55, line: 185, baseType: !53, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !54, file: !55, line: 378, baseType: !496, size: 384)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !55, line: 187, size: 384, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !496, file: !55, line: 188, baseType: !53, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !496, file: !55, line: 188, baseType: !62, size: 8, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !496, file: !55, line: 188, baseType: !62, size: 8, offset: 72)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !496, file: !55, line: 188, baseType: !67, size: 16, offset: 80)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !496, file: !55, line: 188, baseType: !62, size: 8, offset: 96)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !496, file: !55, line: 189, baseType: !491, size: 128, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !496, file: !55, line: 189, baseType: !53, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !496, file: !55, line: 189, baseType: !506, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !50, line: 480, size: 576, elements: !508)
!508 = !{!509, !510, !511, !512, !520, !535, !567, !568, !569, !570, !571, !572}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !507, file: !50, line: 481, baseType: !48, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !507, file: !50, line: 482, baseType: !506, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !507, file: !50, line: 483, baseType: !506, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !507, file: !50, line: 484, baseType: !513, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !50, line: 497, size: 256, elements: !515)
!515 = !{!516, !517, !518, !519}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !514, file: !50, line: 498, baseType: !513, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !514, file: !50, line: 499, baseType: !513, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !514, file: !50, line: 500, baseType: !506, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !514, file: !50, line: 501, baseType: !25, size: 32, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !507, file: !50, line: 485, baseType: !521, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !50, line: 466, size: 320, elements: !523)
!523 = !{!524, !529, !530, !531, !532, !533, !534}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !522, file: !50, line: 467, baseType: !525, size: 128)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !50, line: 459, size: 128, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !525, file: !50, line: 460, baseType: !62, size: 8)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !525, file: !50, line: 461, baseType: !84, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !522, file: !50, line: 468, baseType: !525, size: 128, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !522, file: !50, line: 469, baseType: !67, size: 16, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !522, file: !50, line: 470, baseType: !62, size: 8, offset: 272)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !522, file: !50, line: 471, baseType: !62, size: 8, offset: 280)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !522, file: !50, line: 472, baseType: !62, size: 8, offset: 288)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !522, file: !50, line: 473, baseType: !62, size: 8, offset: 296)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !507, file: !50, line: 486, baseType: !536, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !50, line: 448, size: 192, elements: !538)
!538 = !{!539, !562, !563, !564, !565, !566}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !537, file: !50, line: 449, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !50, line: 438, size: 64, elements: !541)
!541 = !{!542, !543, !556}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !540, file: !50, line: 439, baseType: !48, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !540, file: !50, line: 440, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !50, line: 419, size: 256, elements: !546)
!546 = !{!547, !552, !553, !554, !555}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !545, file: !50, line: 420, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !24, line: 1049, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!25, !390, !25, !135}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !545, file: !50, line: 421, baseType: !135, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !545, file: !50, line: 422, baseType: !48, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !545, file: !50, line: 423, baseType: !62, size: 8, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !545, file: !50, line: 424, baseType: !62, size: 8, offset: 200)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !540, file: !50, line: 441, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !50, line: 429, size: 128, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !558, file: !50, line: 430, baseType: !48, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !558, file: !50, line: 431, baseType: !557, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !537, file: !50, line: 450, baseType: !521, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !50, line: 451, baseType: !62, size: 8, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !537, file: !50, line: 452, baseType: !62, size: 8, offset: 136)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !537, file: !50, line: 453, baseType: !62, size: 8, offset: 144)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !537, file: !50, line: 454, baseType: !62, size: 8, offset: 152)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !507, file: !50, line: 487, baseType: !84, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !507, file: !50, line: 488, baseType: !25, size: 32, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !507, file: !50, line: 489, baseType: !67, size: 16, offset: 480)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !507, file: !50, line: 490, baseType: !67, size: 16, offset: 496)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !507, file: !50, line: 491, baseType: !62, size: 8, offset: 512)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !507, file: !50, line: 492, baseType: !62, size: 8, offset: 520)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !54, file: !55, line: 379, baseType: !574, size: 384)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !55, line: 192, size: 384, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !574, file: !55, line: 193, baseType: !53, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !574, file: !55, line: 193, baseType: !62, size: 8, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !574, file: !55, line: 193, baseType: !62, size: 8, offset: 72)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !574, file: !55, line: 193, baseType: !67, size: 16, offset: 80)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !55, line: 193, baseType: !62, size: 8, offset: 96)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !574, file: !55, line: 193, baseType: !491, size: 128, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !574, file: !55, line: 193, baseType: !53, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !574, file: !55, line: 193, baseType: !25, size: 32, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !574, file: !55, line: 194, baseType: !25, size: 32, offset: 352)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !54, file: !55, line: 380, baseType: !586, size: 384)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !55, line: 197, size: 384, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !586, file: !55, line: 198, baseType: !53, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !586, file: !55, line: 198, baseType: !62, size: 8, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !586, file: !55, line: 198, baseType: !62, size: 8, offset: 72)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !586, file: !55, line: 198, baseType: !67, size: 16, offset: 80)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !55, line: 198, baseType: !62, size: 8, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !586, file: !55, line: 200, baseType: !62, size: 8, offset: 104)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !586, file: !55, line: 201, baseType: !62, size: 8, offset: 112)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !586, file: !55, line: 202, baseType: !491, size: 128, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !586, file: !55, line: 202, baseType: !53, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !586, file: !55, line: 202, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !24, line: 128, baseType: !84)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !54, file: !55, line: 381, baseType: !600, size: 320)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !55, line: 205, size: 320, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !608}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !600, file: !55, line: 206, baseType: !53, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !600, file: !55, line: 206, baseType: !62, size: 8, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !600, file: !55, line: 206, baseType: !62, size: 8, offset: 72)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !600, file: !55, line: 206, baseType: !67, size: 16, offset: 80)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !600, file: !55, line: 206, baseType: !62, size: 8, offset: 96)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !600, file: !55, line: 206, baseType: !491, size: 128, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !600, file: !55, line: 206, baseType: !53, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !54, file: !55, line: 382, baseType: !610, size: 384)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !55, line: 233, size: 384, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !610, file: !55, line: 234, baseType: !53, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !610, file: !55, line: 234, baseType: !62, size: 8, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !610, file: !55, line: 234, baseType: !62, size: 8, offset: 72)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !610, file: !55, line: 234, baseType: !67, size: 16, offset: 80)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !610, file: !55, line: 234, baseType: !62, size: 8, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !610, file: !55, line: 234, baseType: !62, size: 8, offset: 104)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !610, file: !55, line: 234, baseType: !62, size: 8, offset: 112)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !610, file: !55, line: 234, baseType: !62, size: 8, offset: 120)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !610, file: !55, line: 234, baseType: !48, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !610, file: !55, line: 234, baseType: !25, size: 32, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !610, file: !55, line: 234, baseType: !25, size: 32, offset: 224)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !610, file: !55, line: 234, baseType: !25, size: 32, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !610, file: !55, line: 234, baseType: !62, size: 8, offset: 288)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !610, file: !55, line: 234, baseType: !62, size: 8, offset: 296)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !610, file: !55, line: 234, baseType: !53, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !54, file: !55, line: 383, baseType: !628, size: 576)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !55, line: 237, size: 576, elements: !629)
!629 = !{!630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !628, file: !55, line: 238, baseType: !53, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !628, file: !55, line: 238, baseType: !62, size: 8, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !628, file: !55, line: 238, baseType: !62, size: 8, offset: 72)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !628, file: !55, line: 238, baseType: !67, size: 16, offset: 80)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !628, file: !55, line: 238, baseType: !62, size: 8, offset: 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !628, file: !55, line: 238, baseType: !62, size: 8, offset: 104)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !628, file: !55, line: 238, baseType: !62, size: 8, offset: 112)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !628, file: !55, line: 238, baseType: !62, size: 8, offset: 120)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !628, file: !55, line: 238, baseType: !48, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !628, file: !55, line: 238, baseType: !25, size: 32, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !628, file: !55, line: 238, baseType: !25, size: 32, offset: 224)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !628, file: !55, line: 238, baseType: !25, size: 32, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !628, file: !55, line: 238, baseType: !62, size: 8, offset: 288)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !628, file: !55, line: 238, baseType: !62, size: 8, offset: 296)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !628, file: !55, line: 238, baseType: !67, size: 16, offset: 304)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !628, file: !55, line: 239, baseType: !53, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !628, file: !55, line: 240, baseType: !107, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !628, file: !55, line: 241, baseType: !67, size: 16, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !628, file: !55, line: 242, baseType: !107, size: 64, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !54, file: !55, line: 384, baseType: !650, size: 384)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !55, line: 262, size: 384, elements: !651)
!651 = !{!652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !650, file: !55, line: 263, baseType: !53, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !650, file: !55, line: 263, baseType: !62, size: 8, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !650, file: !55, line: 263, baseType: !62, size: 8, offset: 72)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !650, file: !55, line: 263, baseType: !67, size: 16, offset: 80)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !55, line: 263, baseType: !62, size: 8, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !650, file: !55, line: 263, baseType: !62, size: 8, offset: 104)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !650, file: !55, line: 263, baseType: !62, size: 8, offset: 112)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !650, file: !55, line: 263, baseType: !62, size: 8, offset: 120)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !650, file: !55, line: 263, baseType: !48, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !650, file: !55, line: 263, baseType: !25, size: 32, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !650, file: !55, line: 263, baseType: !25, size: 32, offset: 224)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !650, file: !55, line: 263, baseType: !25, size: 32, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !650, file: !55, line: 263, baseType: !62, size: 8, offset: 288)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !650, file: !55, line: 263, baseType: !62, size: 8, offset: 296)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !650, file: !55, line: 263, baseType: !62, size: 8, offset: 304)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !650, file: !55, line: 264, baseType: !53, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !54, file: !55, line: 385, baseType: !669, size: 448)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !55, line: 245, size: 448, elements: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !669, file: !55, line: 246, baseType: !53, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !669, file: !55, line: 246, baseType: !62, size: 8, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !669, file: !55, line: 246, baseType: !62, size: 8, offset: 72)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !669, file: !55, line: 246, baseType: !67, size: 16, offset: 80)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !669, file: !55, line: 246, baseType: !62, size: 8, offset: 96)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !669, file: !55, line: 246, baseType: !62, size: 8, offset: 104)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !669, file: !55, line: 246, baseType: !62, size: 8, offset: 112)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !669, file: !55, line: 246, baseType: !62, size: 8, offset: 120)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !669, file: !55, line: 246, baseType: !48, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !669, file: !55, line: 246, baseType: !25, size: 32, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !669, file: !55, line: 246, baseType: !25, size: 32, offset: 224)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !669, file: !55, line: 246, baseType: !25, size: 32, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !669, file: !55, line: 246, baseType: !62, size: 8, offset: 288)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !669, file: !55, line: 246, baseType: !62, size: 8, offset: 296)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !669, file: !55, line: 246, baseType: !53, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !669, file: !55, line: 247, baseType: !53, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !54, file: !55, line: 386, baseType: !688, size: 448)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !55, line: 250, size: 448, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !688, file: !55, line: 251, baseType: !53, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !688, file: !55, line: 251, baseType: !62, size: 8, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !688, file: !55, line: 251, baseType: !62, size: 8, offset: 72)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !688, file: !55, line: 251, baseType: !67, size: 16, offset: 80)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !688, file: !55, line: 251, baseType: !62, size: 8, offset: 96)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !688, file: !55, line: 251, baseType: !62, size: 8, offset: 104)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !688, file: !55, line: 251, baseType: !62, size: 8, offset: 112)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !688, file: !55, line: 251, baseType: !62, size: 8, offset: 120)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !688, file: !55, line: 251, baseType: !48, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !688, file: !55, line: 251, baseType: !25, size: 32, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !688, file: !55, line: 251, baseType: !25, size: 32, offset: 224)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !688, file: !55, line: 251, baseType: !25, size: 32, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !688, file: !55, line: 251, baseType: !62, size: 8, offset: 288)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !688, file: !55, line: 251, baseType: !62, size: 8, offset: 296)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !688, file: !55, line: 256, baseType: !53, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !688, file: !55, line: 257, baseType: !53, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !54, file: !55, line: 387, baseType: !707, size: 512)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !55, line: 273, size: 512, elements: !708)
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !717, !718}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !707, file: !55, line: 274, baseType: !53, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !707, file: !55, line: 274, baseType: !62, size: 8, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !707, file: !55, line: 274, baseType: !62, size: 8, offset: 72)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !707, file: !55, line: 274, baseType: !67, size: 16, offset: 80)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !55, line: 274, baseType: !62, size: 8, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !707, file: !55, line: 274, baseType: !48, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !707, file: !55, line: 275, baseType: !25, size: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !707, file: !55, line: 276, baseType: !386, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !707, file: !55, line: 277, baseType: !135, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !707, file: !55, line: 278, baseType: !491, size: 128, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !54, file: !55, line: 388, baseType: !720, size: 512)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !55, line: 281, size: 512, elements: !721)
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !735, !736, !737, !743, !744}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !720, file: !55, line: 282, baseType: !53, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !720, file: !55, line: 282, baseType: !62, size: 8, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !720, file: !55, line: 282, baseType: !62, size: 8, offset: 72)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !720, file: !55, line: 282, baseType: !67, size: 16, offset: 80)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !720, file: !55, line: 282, baseType: !62, size: 8, offset: 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !720, file: !55, line: 282, baseType: !62, size: 8, offset: 104)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !720, file: !55, line: 283, baseType: !62, size: 8, offset: 112)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !720, file: !55, line: 284, baseType: !730, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !24, line: 1084, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!23, !25, !480, !25, !734, !135, !135}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !720, file: !55, line: 285, baseType: !48, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !720, file: !55, line: 286, baseType: !135, size: 64, offset: 256)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !720, file: !55, line: 287, baseType: !738, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !24, line: 1102, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!23, !390, !25, !135, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !720, file: !55, line: 288, baseType: !53, size: 64, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !720, file: !55, line: 289, baseType: !53, size: 64, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !54, file: !55, line: 389, baseType: !746, size: 512)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !55, line: 307, size: 512, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !746, file: !55, line: 308, baseType: !53, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !746, file: !55, line: 308, baseType: !62, size: 8, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !746, file: !55, line: 308, baseType: !62, size: 8, offset: 72)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !746, file: !55, line: 308, baseType: !67, size: 16, offset: 80)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !55, line: 308, baseType: !62, size: 8, offset: 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !746, file: !55, line: 308, baseType: !62, size: 8, offset: 104)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !746, file: !55, line: 309, baseType: !62, size: 8, offset: 112)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !746, file: !55, line: 310, baseType: !62, size: 8, offset: 120)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !746, file: !55, line: 311, baseType: !135, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !746, file: !55, line: 312, baseType: !48, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !746, file: !55, line: 313, baseType: !122, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !746, file: !55, line: 314, baseType: !107, size: 64, offset: 320)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !746, file: !55, line: 315, baseType: !107, size: 64, offset: 384)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !746, file: !55, line: 316, baseType: !25, size: 32, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !54, file: !55, line: 390, baseType: !763, size: 448)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !55, line: 340, size: 448, elements: !764)
!764 = !{!765, !766, !767, !768, !769, !770, !771, !772, !773, !774}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !763, file: !55, line: 341, baseType: !53, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !763, file: !55, line: 341, baseType: !62, size: 8, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !763, file: !55, line: 341, baseType: !62, size: 8, offset: 72)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !763, file: !55, line: 341, baseType: !67, size: 16, offset: 80)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !763, file: !55, line: 341, baseType: !62, size: 8, offset: 96)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !763, file: !55, line: 341, baseType: !48, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !763, file: !55, line: 342, baseType: !48, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !763, file: !55, line: 343, baseType: !135, size: 64, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !763, file: !55, line: 344, baseType: !107, size: 64, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !763, file: !55, line: 345, baseType: !25, size: 32, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !54, file: !55, line: 391, baseType: !776, size: 256)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !55, line: 350, size: 256, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783, !788}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !776, file: !55, line: 351, baseType: !53, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !776, file: !55, line: 351, baseType: !62, size: 8, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !776, file: !55, line: 351, baseType: !62, size: 8, offset: 72)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !776, file: !55, line: 351, baseType: !67, size: 16, offset: 80)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !776, file: !55, line: 351, baseType: !62, size: 8, offset: 96)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !776, file: !55, line: 351, baseType: !784, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !24, line: 1055, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !390, !135}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !776, file: !55, line: 352, baseType: !135, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !54, file: !55, line: 392, baseType: !790, size: 192)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !55, line: 357, size: 192, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !790, file: !55, line: 358, baseType: !53, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !790, file: !55, line: 358, baseType: !62, size: 8, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !790, file: !55, line: 358, baseType: !62, size: 8, offset: 72)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !790, file: !55, line: 358, baseType: !67, size: 16, offset: 80)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !55, line: 358, baseType: !62, size: 8, offset: 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !790, file: !55, line: 358, baseType: !53, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !54, file: !55, line: 399, baseType: !49, size: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !49, file: !50, line: 135, baseType: !62, size: 8, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !50, line: 136, baseType: !62, size: 8, offset: 72)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !50, line: 137, baseType: !67, size: 16, offset: 80)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !49, file: !50, line: 138, baseType: !803, size: 32, offset: 96)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !804, line: 327, size: 32, elements: !805)
!804 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !803, file: !804, line: 328, baseType: !25, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !803, file: !804, line: 329, baseType: !251, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !49, file: !50, line: 139, baseType: !48, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !49, file: !50, line: 140, baseType: !48, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !49, file: !50, line: 141, baseType: !48, size: 64, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !49, file: !50, line: 142, baseType: !169, size: 16, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !44, file: !45, line: 156, baseType: !813, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !44, file: !45, line: 157, baseType: !122, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !44, file: !45, line: 159, baseType: !48, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !44, file: !45, line: 160, baseType: !53, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !44, file: !45, line: 161, baseType: !96, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !44, file: !45, line: 163, baseType: !819, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !50, line: 351, size: 56, elements: !822)
!822 = !{!823, !829, !838, !846, !855}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !821, file: !50, line: 352, baseType: !824, size: 56)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !50, line: 295, size: 56, elements: !825)
!825 = !{!826, !827, !828}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !824, file: !50, line: 296, baseType: !251, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !824, file: !50, line: 297, baseType: !67, size: 16, offset: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !824, file: !50, line: 298, baseType: !62, size: 8, offset: 48)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !821, file: !50, line: 353, baseType: !830, size: 56)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !50, line: 314, size: 56, elements: !831)
!831 = !{!832, !833, !834, !835, !836, !837}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !830, file: !50, line: 315, baseType: !62, size: 8)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !830, file: !50, line: 316, baseType: !62, size: 8, offset: 8)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !830, file: !50, line: 317, baseType: !62, size: 8, offset: 16)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !830, file: !50, line: 318, baseType: !62, size: 8, offset: 24)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !830, file: !50, line: 319, baseType: !62, size: 8, offset: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !830, file: !50, line: 320, baseType: !67, size: 16, offset: 40)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !821, file: !50, line: 354, baseType: !839, size: 56)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !50, line: 325, size: 56, elements: !840)
!840 = !{!841, !842, !843, !845}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !839, file: !50, line: 326, baseType: !62, size: 8)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !839, file: !50, line: 327, baseType: !62, size: 8, offset: 8)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !839, file: !50, line: 328, baseType: !844, size: 32, offset: 16)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !252)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !839, file: !50, line: 329, baseType: !62, size: 8, offset: 48)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !821, file: !50, line: 355, baseType: !847, size: 56)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !50, line: 334, size: 56, elements: !848)
!848 = !{!849, !850, !851, !853, !854}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !847, file: !50, line: 335, baseType: !62, size: 8)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !847, file: !50, line: 336, baseType: !62, size: 8, offset: 8)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !847, file: !50, line: 337, baseType: !852, size: 16, offset: 16)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 16, elements: !492)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !847, file: !50, line: 338, baseType: !62, size: 8, offset: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !847, file: !50, line: 339, baseType: !67, size: 16, offset: 40)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !821, file: !50, line: 356, baseType: !856, size: 56)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !50, line: 342, size: 56, elements: !857)
!857 = !{!858, !859, !860, !861, !862, !863}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !856, file: !50, line: 343, baseType: !62, size: 8)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !856, file: !50, line: 344, baseType: !62, size: 8, offset: 8)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !856, file: !50, line: 345, baseType: !62, size: 8, offset: 16)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !856, file: !50, line: 346, baseType: !62, size: 8, offset: 24)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !856, file: !50, line: 347, baseType: !62, size: 8, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !856, file: !50, line: 348, baseType: !67, size: 16, offset: 40)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !44, file: !45, line: 164, baseType: !53, size: 64, offset: 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !44, file: !45, line: 165, baseType: !53, size: 64, offset: 512)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !44, file: !45, line: 167, baseType: !25, size: 32, offset: 576)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !44, file: !45, line: 168, baseType: !25, size: 32, offset: 608)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !44, file: !45, line: 169, baseType: !67, size: 16, offset: 640)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !44, file: !45, line: 170, baseType: !67, size: 16, offset: 656)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !44, file: !45, line: 171, baseType: !62, size: 8, offset: 672)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !44, file: !45, line: 172, baseType: !62, size: 8, offset: 680)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !45, line: 173, baseType: !62, size: 8, offset: 688)
!873 = !{}
!874 = !DILocalVariable(name: "info", arg: 1, scope: !40, file: !3, line: 51, type: !43)
!875 = !DILocation(line: 51, column: 50, scope: !40)
!876 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !40, file: !3, line: 52, type: !122)
!877 = !DILocation(line: 52, column: 37, scope: !40)
!878 = !DILocalVariable(name: "return_object", scope: !40, file: !3, line: 54, type: !53)
!879 = !DILocation(line: 54, column: 29, scope: !40)
!880 = !DILocation(line: 54, column: 46, scope: !40)
!881 = !DILocation(line: 54, column: 45, scope: !40)
!882 = !DILocalVariable(name: "package", scope: !40, file: !3, line: 55, type: !819)
!883 = !DILocation(line: 55, column: 36, scope: !40)
!884 = !DILocalVariable(name: "elements", scope: !40, file: !3, line: 56, type: !122)
!885 = !DILocation(line: 56, column: 30, scope: !40)
!886 = !DILocalVariable(name: "status", scope: !40, file: !3, line: 57, type: !23)
!887 = !DILocation(line: 57, column: 14, scope: !40)
!888 = !DILocalVariable(name: "expected_count", scope: !40, file: !3, line: 58, type: !25)
!889 = !DILocation(line: 58, column: 6, scope: !40)
!890 = !DILocalVariable(name: "count", scope: !40, file: !3, line: 59, type: !25)
!891 = !DILocation(line: 59, column: 6, scope: !40)
!892 = !DILocalVariable(name: "i", scope: !40, file: !3, line: 60, type: !25)
!893 = !DILocation(line: 60, column: 6, scope: !40)
!894 = !DILocation(line: 66, column: 12, scope: !40)
!895 = !DILocation(line: 66, column: 18, scope: !40)
!896 = !DILocation(line: 66, column: 29, scope: !40)
!897 = !DILocation(line: 66, column: 10, scope: !40)
!898 = !DILocation(line: 77, column: 31, scope: !40)
!899 = !DILocation(line: 77, column: 37, scope: !40)
!900 = !DILocation(line: 77, column: 46, scope: !40)
!901 = !DILocation(line: 77, column: 55, scope: !40)
!902 = !DILocation(line: 78, column: 10, scope: !40)
!903 = !DILocation(line: 77, column: 2, scope: !40)
!904 = !DILocation(line: 82, column: 13, scope: !40)
!905 = !DILocation(line: 82, column: 28, scope: !40)
!906 = !DILocation(line: 82, column: 36, scope: !40)
!907 = !DILocation(line: 82, column: 11, scope: !40)
!908 = !DILocation(line: 83, column: 10, scope: !40)
!909 = !DILocation(line: 83, column: 25, scope: !40)
!910 = !DILocation(line: 83, column: 33, scope: !40)
!911 = !DILocation(line: 83, column: 8, scope: !40)
!912 = !DILocation(line: 89, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !40, file: !3, line: 89, column: 6)
!914 = !DILocation(line: 89, column: 6, scope: !40)
!915 = !DILocation(line: 90, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 90, column: 7)
!917 = distinct !DILexicalBlock(scope: !913, file: !3, line: 89, column: 14)
!918 = !DILocation(line: 90, column: 16, scope: !916)
!919 = !DILocation(line: 90, column: 25, scope: !916)
!920 = !DILocation(line: 90, column: 30, scope: !916)
!921 = !DILocation(line: 90, column: 7, scope: !917)
!922 = !DILocation(line: 91, column: 4, scope: !923)
!923 = distinct !DILexicalBlock(scope: !916, file: !3, line: 90, column: 50)
!924 = !DILocation(line: 94, column: 3, scope: !917)
!925 = !DILocation(line: 98, column: 3, scope: !917)
!926 = !DILocation(line: 107, column: 10, scope: !40)
!927 = !DILocation(line: 107, column: 19, scope: !40)
!928 = !DILocation(line: 107, column: 28, scope: !40)
!929 = !DILocation(line: 107, column: 2, scope: !40)
!930 = !DILocation(line: 110, column: 35, scope: !931)
!931 = distinct !DILexicalBlock(scope: !40, file: !3, line: 107, column: 34)
!932 = !DILocation(line: 110, column: 41, scope: !931)
!933 = !DILocation(line: 110, column: 51, scope: !931)
!934 = !DILocation(line: 110, column: 12, scope: !931)
!935 = !DILocation(line: 110, column: 10, scope: !931)
!936 = !DILocation(line: 111, column: 3, scope: !931)
!937 = !DILocation(line: 121, column: 7, scope: !931)
!938 = !DILocation(line: 121, column: 16, scope: !931)
!939 = !DILocation(line: 121, column: 25, scope: !931)
!940 = !DILocation(line: 121, column: 34, scope: !931)
!941 = !DILocation(line: 121, column: 43, scope: !931)
!942 = !DILocation(line: 121, column: 52, scope: !931)
!943 = !DILocation(line: 121, column: 32, scope: !931)
!944 = !DILocation(line: 120, column: 18, scope: !931)
!945 = !DILocation(line: 122, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !931, file: !3, line: 122, column: 7)
!947 = !DILocation(line: 122, column: 15, scope: !946)
!948 = !DILocation(line: 122, column: 13, scope: !946)
!949 = !DILocation(line: 122, column: 7, scope: !931)
!950 = !DILocation(line: 123, column: 4, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !3, line: 122, column: 31)
!952 = !DILocation(line: 124, column: 14, scope: !953)
!953 = distinct !DILexicalBlock(scope: !946, file: !3, line: 124, column: 14)
!954 = !DILocation(line: 124, column: 22, scope: !953)
!955 = !DILocation(line: 124, column: 20, scope: !953)
!956 = !DILocation(line: 124, column: 14, scope: !946)
!957 = !DILocation(line: 130, column: 3, scope: !958)
!958 = distinct !DILexicalBlock(scope: !953, file: !3, line: 124, column: 38)
!959 = !DILocation(line: 134, column: 43, scope: !931)
!960 = !DILocation(line: 134, column: 49, scope: !931)
!961 = !DILocation(line: 135, column: 8, scope: !931)
!962 = !DILocation(line: 135, column: 17, scope: !931)
!963 = !DILocation(line: 136, column: 8, scope: !931)
!964 = !DILocation(line: 137, column: 8, scope: !931)
!965 = !DILocation(line: 137, column: 17, scope: !931)
!966 = !DILocation(line: 138, column: 8, scope: !931)
!967 = !DILocation(line: 139, column: 8, scope: !931)
!968 = !DILocation(line: 139, column: 17, scope: !931)
!969 = !DILocation(line: 140, column: 8, scope: !931)
!970 = !DILocation(line: 141, column: 8, scope: !931)
!971 = !DILocation(line: 141, column: 17, scope: !931)
!972 = !DILocation(line: 142, column: 8, scope: !931)
!973 = !DILocation(line: 134, column: 12, scope: !931)
!974 = !DILocation(line: 134, column: 10, scope: !931)
!975 = !DILocation(line: 143, column: 3, scope: !931)
!976 = !DILocation(line: 150, column: 10, scope: !977)
!977 = distinct !DILexicalBlock(scope: !931, file: !3, line: 150, column: 3)
!978 = !DILocation(line: 150, column: 8, scope: !977)
!979 = !DILocation(line: 150, column: 15, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !3, line: 150, column: 3)
!981 = !DILocation(line: 150, column: 19, scope: !980)
!982 = !DILocation(line: 150, column: 17, scope: !980)
!983 = !DILocation(line: 150, column: 3, scope: !977)
!984 = !DILocation(line: 151, column: 39, scope: !985)
!985 = distinct !DILexicalBlock(scope: !980, file: !3, line: 150, column: 31)
!986 = !DILocation(line: 151, column: 45, scope: !985)
!987 = !DILocation(line: 152, column: 11, scope: !985)
!988 = !DILocation(line: 152, column: 20, scope: !985)
!989 = !DILocation(line: 153, column: 11, scope: !985)
!990 = !DILocation(line: 153, column: 25, scope: !985)
!991 = !DILocation(line: 151, column: 13, scope: !985)
!992 = !DILocation(line: 151, column: 11, scope: !985)
!993 = !DILocation(line: 154, column: 8, scope: !994)
!994 = distinct !DILexicalBlock(scope: !985, file: !3, line: 154, column: 8)
!995 = !DILocation(line: 154, column: 8, scope: !985)
!996 = !DILocation(line: 155, column: 13, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !3, line: 154, column: 30)
!998 = !DILocation(line: 155, column: 5, scope: !997)
!999 = !DILocation(line: 158, column: 12, scope: !985)
!1000 = !DILocation(line: 159, column: 3, scope: !985)
!1001 = !DILocation(line: 150, column: 27, scope: !980)
!1002 = !DILocation(line: 150, column: 3, scope: !980)
!1003 = distinct !{!1003, !983, !1004}
!1004 = !DILocation(line: 159, column: 3, scope: !977)
!1005 = !DILocation(line: 160, column: 3, scope: !931)
!1006 = !DILocation(line: 170, column: 20, scope: !931)
!1007 = !DILocation(line: 170, column: 29, scope: !931)
!1008 = !DILocation(line: 170, column: 39, scope: !931)
!1009 = !DILocation(line: 170, column: 18, scope: !931)
!1010 = !DILocation(line: 171, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !931, file: !3, line: 171, column: 7)
!1012 = !DILocation(line: 171, column: 15, scope: !1011)
!1013 = !DILocation(line: 171, column: 13, scope: !1011)
!1014 = !DILocation(line: 171, column: 7, scope: !931)
!1015 = !DILocation(line: 172, column: 4, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 171, column: 31)
!1017 = !DILocation(line: 177, column: 10, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !931, file: !3, line: 177, column: 3)
!1019 = !DILocation(line: 177, column: 8, scope: !1018)
!1020 = !DILocation(line: 177, column: 15, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 177, column: 3)
!1022 = !DILocation(line: 177, column: 19, scope: !1021)
!1023 = !DILocation(line: 177, column: 17, scope: !1021)
!1024 = !DILocation(line: 177, column: 3, scope: !1018)
!1025 = !DILocation(line: 178, column: 8, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 178, column: 8)
!1027 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 177, column: 31)
!1028 = !DILocation(line: 178, column: 12, scope: !1026)
!1029 = !DILocation(line: 178, column: 21, scope: !1026)
!1030 = !DILocation(line: 178, column: 31, scope: !1026)
!1031 = !DILocation(line: 178, column: 10, scope: !1026)
!1032 = !DILocation(line: 178, column: 8, scope: !1027)
!1033 = !DILocation(line: 183, column: 35, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 178, column: 38)
!1035 = !DILocation(line: 183, column: 41, scope: !1034)
!1036 = !DILocation(line: 184, column: 14, scope: !1034)
!1037 = !DILocation(line: 185, column: 14, scope: !1034)
!1038 = !DILocation(line: 186, column: 14, scope: !1034)
!1039 = !DILocation(line: 186, column: 26, scope: !1034)
!1040 = !DILocation(line: 187, column: 14, scope: !1034)
!1041 = !DILocation(line: 183, column: 9, scope: !1034)
!1042 = !DILocation(line: 182, column: 12, scope: !1034)
!1043 = !DILocation(line: 188, column: 9, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 188, column: 9)
!1045 = !DILocation(line: 188, column: 9, scope: !1034)
!1046 = !DILocation(line: 189, column: 14, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 188, column: 31)
!1048 = !DILocation(line: 189, column: 6, scope: !1047)
!1049 = !DILocation(line: 191, column: 4, scope: !1034)
!1050 = !DILocation(line: 195, column: 35, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 191, column: 11)
!1052 = !DILocation(line: 195, column: 41, scope: !1051)
!1053 = !DILocation(line: 196, column: 14, scope: !1051)
!1054 = !DILocation(line: 197, column: 14, scope: !1051)
!1055 = !DILocation(line: 198, column: 14, scope: !1051)
!1056 = !DILocation(line: 199, column: 14, scope: !1051)
!1057 = !DILocation(line: 195, column: 9, scope: !1051)
!1058 = !DILocation(line: 194, column: 12, scope: !1051)
!1059 = !DILocation(line: 200, column: 9, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 200, column: 9)
!1061 = !DILocation(line: 200, column: 9, scope: !1051)
!1062 = !DILocation(line: 201, column: 14, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 200, column: 31)
!1064 = !DILocation(line: 201, column: 6, scope: !1063)
!1065 = !DILocation(line: 205, column: 12, scope: !1027)
!1066 = !DILocation(line: 206, column: 3, scope: !1027)
!1067 = !DILocation(line: 177, column: 27, scope: !1021)
!1068 = !DILocation(line: 177, column: 3, scope: !1021)
!1069 = distinct !{!1069, !1024, !1070}
!1070 = !DILocation(line: 206, column: 3, scope: !1018)
!1071 = !DILocation(line: 207, column: 3, scope: !931)
!1072 = !DILocation(line: 214, column: 33, scope: !931)
!1073 = !DILocation(line: 214, column: 39, scope: !931)
!1074 = !DILocation(line: 214, column: 7, scope: !931)
!1075 = !DILocation(line: 213, column: 10, scope: !931)
!1076 = !DILocation(line: 216, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !931, file: !3, line: 216, column: 7)
!1078 = !DILocation(line: 216, column: 7, scope: !931)
!1079 = !DILocation(line: 217, column: 12, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 216, column: 29)
!1081 = !DILocation(line: 217, column: 4, scope: !1080)
!1082 = !DILocation(line: 220, column: 11, scope: !931)
!1083 = !DILocation(line: 221, column: 8, scope: !931)
!1084 = !DILocation(line: 226, column: 34, scope: !931)
!1085 = !DILocation(line: 226, column: 40, scope: !931)
!1086 = !DILocation(line: 226, column: 49, scope: !931)
!1087 = !DILocation(line: 226, column: 59, scope: !931)
!1088 = !DILocation(line: 226, column: 7, scope: !931)
!1089 = !DILocation(line: 225, column: 10, scope: !931)
!1090 = !DILocation(line: 227, column: 3, scope: !931)
!1091 = !DILocation(line: 234, column: 33, scope: !931)
!1092 = !DILocation(line: 234, column: 39, scope: !931)
!1093 = !DILocation(line: 234, column: 7, scope: !931)
!1094 = !DILocation(line: 233, column: 10, scope: !931)
!1095 = !DILocation(line: 236, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !931, file: !3, line: 236, column: 7)
!1097 = !DILocation(line: 236, column: 7, scope: !931)
!1098 = !DILocation(line: 237, column: 12, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 236, column: 29)
!1100 = !DILocation(line: 237, column: 4, scope: !1099)
!1101 = !DILocation(line: 244, column: 27, scope: !931)
!1102 = !DILocation(line: 244, column: 26, scope: !931)
!1103 = !DILocation(line: 244, column: 38, scope: !931)
!1104 = !DILocation(line: 244, column: 46, scope: !931)
!1105 = !DILocation(line: 244, column: 20, scope: !931)
!1106 = !DILocation(line: 244, column: 18, scope: !931)
!1107 = !DILocation(line: 245, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !931, file: !3, line: 245, column: 7)
!1109 = !DILocation(line: 245, column: 25, scope: !1108)
!1110 = !DILocation(line: 245, column: 22, scope: !1108)
!1111 = !DILocation(line: 245, column: 7, scope: !931)
!1112 = !DILocation(line: 246, column: 4, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 245, column: 32)
!1114 = !DILocation(line: 249, column: 11, scope: !931)
!1115 = !DILocation(line: 249, column: 9, scope: !931)
!1116 = !DILocation(line: 250, column: 11, scope: !931)
!1117 = !DILocation(line: 255, column: 34, scope: !931)
!1118 = !DILocation(line: 255, column: 40, scope: !931)
!1119 = !DILocation(line: 255, column: 49, scope: !931)
!1120 = !DILocation(line: 255, column: 59, scope: !931)
!1121 = !DILocation(line: 255, column: 7, scope: !931)
!1122 = !DILocation(line: 254, column: 10, scope: !931)
!1123 = !DILocation(line: 256, column: 3, scope: !931)
!1124 = !DILocation(line: 273, column: 8, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !931, file: !3, line: 273, column: 7)
!1126 = !DILocation(line: 273, column: 7, scope: !1125)
!1127 = !DILocation(line: 274, column: 7, scope: !1125)
!1128 = !DILocation(line: 274, column: 13, scope: !1125)
!1129 = !DILocation(line: 274, column: 12, scope: !1125)
!1130 = !DILocation(line: 274, column: 24, scope: !1125)
!1131 = !DILocation(line: 274, column: 31, scope: !1125)
!1132 = !DILocation(line: 274, column: 11, scope: !1125)
!1133 = !DILocation(line: 274, column: 36, scope: !1125)
!1134 = !DILocation(line: 273, column: 7, scope: !931)
!1135 = !DILocation(line: 279, column: 34, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 274, column: 59)
!1137 = !DILocation(line: 279, column: 40, scope: !1136)
!1138 = !DILocation(line: 280, column: 13, scope: !1136)
!1139 = !DILocation(line: 279, column: 8, scope: !1136)
!1140 = !DILocation(line: 278, column: 11, scope: !1136)
!1141 = !DILocation(line: 281, column: 8, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 281, column: 8)
!1143 = !DILocation(line: 281, column: 8, scope: !1136)
!1144 = !DILocation(line: 282, column: 13, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 281, column: 30)
!1146 = !DILocation(line: 282, column: 5, scope: !1145)
!1147 = !DILocation(line: 287, column: 21, scope: !1136)
!1148 = !DILocation(line: 287, column: 20, scope: !1136)
!1149 = !DILocation(line: 287, column: 18, scope: !1136)
!1150 = !DILocation(line: 288, column: 15, scope: !1136)
!1151 = !DILocation(line: 288, column: 30, scope: !1136)
!1152 = !DILocation(line: 288, column: 38, scope: !1136)
!1153 = !DILocation(line: 288, column: 13, scope: !1136)
!1154 = !DILocation(line: 289, column: 10, scope: !1136)
!1155 = !DILocation(line: 290, column: 3, scope: !1136)
!1156 = !DILocation(line: 295, column: 34, scope: !931)
!1157 = !DILocation(line: 295, column: 40, scope: !931)
!1158 = !DILocation(line: 295, column: 49, scope: !931)
!1159 = !DILocation(line: 295, column: 59, scope: !931)
!1160 = !DILocation(line: 295, column: 7, scope: !931)
!1161 = !DILocation(line: 294, column: 10, scope: !931)
!1162 = !DILocation(line: 296, column: 3, scope: !931)
!1163 = !DILocation(line: 303, column: 3, scope: !931)
!1164 = !DILocation(line: 309, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !931, file: !3, line: 309, column: 7)
!1166 = !DILocation(line: 309, column: 13, scope: !1165)
!1167 = !DILocation(line: 309, column: 7, scope: !931)
!1168 = !DILocation(line: 310, column: 21, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 309, column: 18)
!1170 = !DILocation(line: 310, column: 27, scope: !1169)
!1171 = !DILocation(line: 310, column: 19, scope: !1169)
!1172 = !DILocation(line: 311, column: 4, scope: !1169)
!1173 = !DILocation(line: 314, column: 3, scope: !931)
!1174 = !DILocation(line: 314, column: 10, scope: !931)
!1175 = !DILocation(line: 314, column: 16, scope: !931)
!1176 = !DILocation(line: 315, column: 39, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !931, file: !3, line: 314, column: 21)
!1178 = !DILocation(line: 315, column: 45, scope: !1177)
!1179 = !DILocation(line: 316, column: 11, scope: !1177)
!1180 = !DILocation(line: 316, column: 20, scope: !1177)
!1181 = !DILocation(line: 317, column: 11, scope: !1177)
!1182 = !DILocation(line: 315, column: 13, scope: !1177)
!1183 = !DILocation(line: 315, column: 11, scope: !1177)
!1184 = !DILocation(line: 318, column: 8, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 318, column: 8)
!1186 = !DILocation(line: 318, column: 8, scope: !1177)
!1187 = !DILocation(line: 319, column: 13, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 318, column: 30)
!1189 = !DILocation(line: 319, column: 5, scope: !1188)
!1190 = !DILocation(line: 324, column: 10, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 324, column: 8)
!1192 = !DILocation(line: 324, column: 9, scope: !1191)
!1193 = !DILocation(line: 324, column: 21, scope: !1191)
!1194 = !DILocation(line: 324, column: 28, scope: !1191)
!1195 = !DILocation(line: 324, column: 35, scope: !1191)
!1196 = !DILocation(line: 324, column: 8, scope: !1177)
!1197 = !DILocation(line: 325, column: 5, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 324, column: 42)
!1199 = !DILocation(line: 329, column: 5, scope: !1198)
!1200 = !DILocation(line: 332, column: 39, scope: !1177)
!1201 = !DILocation(line: 332, column: 45, scope: !1177)
!1202 = !DILocation(line: 332, column: 54, scope: !1177)
!1203 = !DILocation(line: 333, column: 11, scope: !1177)
!1204 = !DILocation(line: 333, column: 20, scope: !1177)
!1205 = !DILocation(line: 334, column: 11, scope: !1177)
!1206 = !DILocation(line: 332, column: 13, scope: !1177)
!1207 = !DILocation(line: 332, column: 11, scope: !1177)
!1208 = !DILocation(line: 335, column: 8, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 335, column: 8)
!1210 = !DILocation(line: 335, column: 8, scope: !1177)
!1211 = !DILocation(line: 336, column: 13, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 335, column: 30)
!1213 = !DILocation(line: 336, column: 5, scope: !1212)
!1214 = !DILocation(line: 339, column: 13, scope: !1177)
!1215 = !DILocation(line: 340, column: 10, scope: !1177)
!1216 = distinct !{!1216, !1173, !1217}
!1217 = !DILocation(line: 341, column: 3, scope: !931)
!1218 = !DILocation(line: 342, column: 3, scope: !931)
!1219 = !DILocation(line: 348, column: 3, scope: !931)
!1220 = !DILocation(line: 353, column: 3, scope: !931)
!1221 = !DILocation(line: 356, column: 10, scope: !40)
!1222 = !DILocation(line: 356, column: 2, scope: !40)
!1223 = !DILabel(scope: !40, name: "package_too_small", file: !3, line: 358)
!1224 = !DILocation(line: 358, column: 1, scope: !40)
!1225 = !DILocation(line: 362, column: 2, scope: !40)
!1226 = !DILocation(line: 366, column: 2, scope: !40)
!1227 = !DILocation(line: 367, column: 1, scope: !40)
!1228 = distinct !DISubprogram(name: "acpi_ns_custom_package", scope: !3, file: !3, line: 623, type: !1229, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!23, !43, !122, !25}
!1231 = !DILocalVariable(name: "info", arg: 1, scope: !1228, file: !3, line: 623, type: !43)
!1232 = !DILocation(line: 623, column: 51, scope: !1228)
!1233 = !DILocalVariable(name: "elements", arg: 2, scope: !1228, file: !3, line: 624, type: !122)
!1234 = !DILocation(line: 624, column: 38, scope: !1228)
!1235 = !DILocalVariable(name: "count", arg: 3, scope: !1228, file: !3, line: 624, type: !25)
!1236 = !DILocation(line: 624, column: 52, scope: !1228)
!1237 = !DILocalVariable(name: "expected_count", scope: !1228, file: !3, line: 626, type: !25)
!1238 = !DILocation(line: 626, column: 6, scope: !1228)
!1239 = !DILocalVariable(name: "version", scope: !1228, file: !3, line: 627, type: !25)
!1240 = !DILocation(line: 627, column: 6, scope: !1228)
!1241 = !DILocalVariable(name: "status", scope: !1228, file: !3, line: 628, type: !23)
!1242 = !DILocation(line: 628, column: 14, scope: !1228)
!1243 = !DILocation(line: 634, column: 8, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 634, column: 6)
!1245 = !DILocation(line: 634, column: 7, scope: !1244)
!1246 = !DILocation(line: 634, column: 19, scope: !1244)
!1247 = !DILocation(line: 634, column: 26, scope: !1244)
!1248 = !DILocation(line: 634, column: 6, scope: !1244)
!1249 = !DILocation(line: 634, column: 31, scope: !1244)
!1250 = !DILocation(line: 634, column: 6, scope: !1228)
!1251 = !DILocation(line: 635, column: 3, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 634, column: 53)
!1253 = !DILocation(line: 638, column: 3, scope: !1252)
!1254 = !DILocation(line: 641, column: 19, scope: !1228)
!1255 = !DILocation(line: 641, column: 18, scope: !1228)
!1256 = !DILocation(line: 641, column: 30, scope: !1228)
!1257 = !DILocation(line: 641, column: 38, scope: !1228)
!1258 = !DILocation(line: 641, column: 12, scope: !1228)
!1259 = !DILocation(line: 641, column: 10, scope: !1228)
!1260 = !DILocation(line: 642, column: 17, scope: !1228)
!1261 = !DILocation(line: 644, column: 6, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 644, column: 6)
!1263 = !DILocation(line: 644, column: 14, scope: !1262)
!1264 = !DILocation(line: 644, column: 6, scope: !1228)
!1265 = !DILocation(line: 645, column: 18, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 644, column: 20)
!1267 = !DILocation(line: 646, column: 2, scope: !1266)
!1268 = !DILocation(line: 648, column: 6, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 648, column: 6)
!1270 = !DILocation(line: 648, column: 14, scope: !1269)
!1271 = !DILocation(line: 648, column: 12, scope: !1269)
!1272 = !DILocation(line: 648, column: 6, scope: !1228)
!1273 = !DILocation(line: 649, column: 3, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 648, column: 30)
!1275 = !DILocation(line: 653, column: 3, scope: !1274)
!1276 = !DILocation(line: 654, column: 13, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 654, column: 13)
!1278 = !DILocation(line: 654, column: 21, scope: !1277)
!1279 = !DILocation(line: 654, column: 19, scope: !1277)
!1280 = !DILocation(line: 654, column: 13, scope: !1269)
!1281 = !DILocation(line: 659, column: 2, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 654, column: 37)
!1283 = !DILocation(line: 663, column: 42, scope: !1228)
!1284 = !DILocation(line: 663, column: 48, scope: !1228)
!1285 = !DILocation(line: 663, column: 11, scope: !1228)
!1286 = !DILocation(line: 663, column: 9, scope: !1228)
!1287 = !DILocation(line: 666, column: 6, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 666, column: 6)
!1289 = !DILocation(line: 666, column: 6, scope: !1228)
!1290 = !DILocation(line: 667, column: 3, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 666, column: 28)
!1292 = !DILocation(line: 672, column: 6, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 672, column: 6)
!1294 = !DILocation(line: 672, column: 14, scope: !1293)
!1295 = !DILocation(line: 672, column: 6, scope: !1228)
!1296 = !DILocation(line: 673, column: 43, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 672, column: 19)
!1298 = !DILocation(line: 673, column: 49, scope: !1297)
!1299 = !DILocation(line: 673, column: 58, scope: !1297)
!1300 = !DILocation(line: 673, column: 12, scope: !1297)
!1301 = !DILocation(line: 673, column: 10, scope: !1297)
!1302 = !DILocation(line: 676, column: 2, scope: !1297)
!1303 = !DILocation(line: 678, column: 2, scope: !1228)
!1304 = !DILocation(line: 679, column: 1, scope: !1228)
!1305 = distinct !DISubprogram(name: "acpi_ns_check_package_elements", scope: !3, file: !3, line: 701, type: !1306, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!23, !43, !122, !62, !25, !62, !25, !25}
!1308 = !DILocalVariable(name: "info", arg: 1, scope: !1305, file: !3, line: 701, type: !43)
!1309 = !DILocation(line: 701, column: 59, scope: !1305)
!1310 = !DILocalVariable(name: "elements", arg: 2, scope: !1305, file: !3, line: 702, type: !122)
!1311 = !DILocation(line: 702, column: 39, scope: !1305)
!1312 = !DILocalVariable(name: "type1", arg: 3, scope: !1305, file: !3, line: 703, type: !62)
!1313 = !DILocation(line: 703, column: 14, scope: !1305)
!1314 = !DILocalVariable(name: "count1", arg: 4, scope: !1305, file: !3, line: 704, type: !25)
!1315 = !DILocation(line: 704, column: 15, scope: !1305)
!1316 = !DILocalVariable(name: "type2", arg: 5, scope: !1305, file: !3, line: 705, type: !62)
!1317 = !DILocation(line: 705, column: 14, scope: !1305)
!1318 = !DILocalVariable(name: "count2", arg: 6, scope: !1305, file: !3, line: 705, type: !25)
!1319 = !DILocation(line: 705, column: 25, scope: !1305)
!1320 = !DILocalVariable(name: "start_index", arg: 7, scope: !1305, file: !3, line: 705, type: !25)
!1321 = !DILocation(line: 705, column: 37, scope: !1305)
!1322 = !DILocalVariable(name: "this_element", scope: !1305, file: !3, line: 707, type: !122)
!1323 = !DILocation(line: 707, column: 30, scope: !1305)
!1324 = !DILocation(line: 707, column: 45, scope: !1305)
!1325 = !DILocalVariable(name: "status", scope: !1305, file: !3, line: 708, type: !23)
!1326 = !DILocation(line: 708, column: 14, scope: !1305)
!1327 = !DILocalVariable(name: "i", scope: !1305, file: !3, line: 709, type: !25)
!1328 = !DILocation(line: 709, column: 6, scope: !1305)
!1329 = !DILocation(line: 716, column: 9, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 716, column: 2)
!1331 = !DILocation(line: 716, column: 7, scope: !1330)
!1332 = !DILocation(line: 716, column: 14, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 716, column: 2)
!1334 = !DILocation(line: 716, column: 18, scope: !1333)
!1335 = !DILocation(line: 716, column: 16, scope: !1333)
!1336 = !DILocation(line: 716, column: 2, scope: !1330)
!1337 = !DILocation(line: 717, column: 38, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 716, column: 31)
!1339 = !DILocation(line: 717, column: 44, scope: !1338)
!1340 = !DILocation(line: 718, column: 10, scope: !1338)
!1341 = !DILocation(line: 718, column: 17, scope: !1338)
!1342 = !DILocation(line: 718, column: 21, scope: !1338)
!1343 = !DILocation(line: 718, column: 19, scope: !1338)
!1344 = !DILocation(line: 717, column: 12, scope: !1338)
!1345 = !DILocation(line: 717, column: 10, scope: !1338)
!1346 = !DILocation(line: 719, column: 7, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 719, column: 7)
!1348 = !DILocation(line: 719, column: 7, scope: !1338)
!1349 = !DILocation(line: 720, column: 12, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 719, column: 29)
!1351 = !DILocation(line: 720, column: 4, scope: !1350)
!1352 = !DILocation(line: 723, column: 15, scope: !1338)
!1353 = !DILocation(line: 724, column: 2, scope: !1338)
!1354 = !DILocation(line: 716, column: 27, scope: !1333)
!1355 = !DILocation(line: 716, column: 2, scope: !1333)
!1356 = distinct !{!1356, !1336, !1357}
!1357 = !DILocation(line: 724, column: 2, scope: !1330)
!1358 = !DILocation(line: 726, column: 9, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 726, column: 2)
!1360 = !DILocation(line: 726, column: 7, scope: !1359)
!1361 = !DILocation(line: 726, column: 14, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 726, column: 2)
!1363 = !DILocation(line: 726, column: 18, scope: !1362)
!1364 = !DILocation(line: 726, column: 16, scope: !1362)
!1365 = !DILocation(line: 726, column: 2, scope: !1359)
!1366 = !DILocation(line: 727, column: 38, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 726, column: 31)
!1368 = !DILocation(line: 727, column: 44, scope: !1367)
!1369 = !DILocation(line: 728, column: 10, scope: !1367)
!1370 = !DILocation(line: 729, column: 11, scope: !1367)
!1371 = !DILocation(line: 729, column: 15, scope: !1367)
!1372 = !DILocation(line: 729, column: 13, scope: !1367)
!1373 = !DILocation(line: 729, column: 24, scope: !1367)
!1374 = !DILocation(line: 729, column: 22, scope: !1367)
!1375 = !DILocation(line: 727, column: 12, scope: !1367)
!1376 = !DILocation(line: 727, column: 10, scope: !1367)
!1377 = !DILocation(line: 730, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 730, column: 7)
!1379 = !DILocation(line: 730, column: 7, scope: !1367)
!1380 = !DILocation(line: 731, column: 12, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 730, column: 29)
!1382 = !DILocation(line: 731, column: 4, scope: !1381)
!1383 = !DILocation(line: 734, column: 15, scope: !1367)
!1384 = !DILocation(line: 735, column: 2, scope: !1367)
!1385 = !DILocation(line: 726, column: 27, scope: !1362)
!1386 = !DILocation(line: 726, column: 2, scope: !1362)
!1387 = distinct !{!1387, !1365, !1388}
!1388 = !DILocation(line: 735, column: 2, scope: !1359)
!1389 = !DILocation(line: 737, column: 2, scope: !1305)
!1390 = !DILocation(line: 738, column: 1, scope: !1305)
!1391 = distinct !DISubprogram(name: "acpi_ns_check_package_list", scope: !3, file: !3, line: 386, type: !1392, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!23, !43, !819, !122, !25}
!1394 = !DILocalVariable(name: "info", arg: 1, scope: !1391, file: !3, line: 386, type: !43)
!1395 = !DILocation(line: 386, column: 55, scope: !1391)
!1396 = !DILocalVariable(name: "package", arg: 2, scope: !1391, file: !3, line: 387, type: !819)
!1397 = !DILocation(line: 387, column: 41, scope: !1391)
!1398 = !DILocalVariable(name: "elements", arg: 3, scope: !1391, file: !3, line: 388, type: !122)
!1399 = !DILocation(line: 388, column: 35, scope: !1391)
!1400 = !DILocalVariable(name: "count", arg: 4, scope: !1391, file: !3, line: 388, type: !25)
!1401 = !DILocation(line: 388, column: 49, scope: !1391)
!1402 = !DILocalVariable(name: "sub_package", scope: !1391, file: !3, line: 390, type: !53)
!1403 = !DILocation(line: 390, column: 29, scope: !1391)
!1404 = !DILocalVariable(name: "sub_elements", scope: !1391, file: !3, line: 391, type: !122)
!1405 = !DILocation(line: 391, column: 30, scope: !1391)
!1406 = !DILocalVariable(name: "status", scope: !1391, file: !3, line: 392, type: !23)
!1407 = !DILocation(line: 392, column: 14, scope: !1391)
!1408 = !DILocalVariable(name: "expected_count", scope: !1391, file: !3, line: 393, type: !25)
!1409 = !DILocation(line: 393, column: 6, scope: !1391)
!1410 = !DILocalVariable(name: "i", scope: !1391, file: !3, line: 394, type: !25)
!1411 = !DILocation(line: 394, column: 6, scope: !1391)
!1412 = !DILocalVariable(name: "j", scope: !1391, file: !3, line: 395, type: !25)
!1413 = !DILocation(line: 395, column: 6, scope: !1391)
!1414 = !DILocation(line: 404, column: 9, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 404, column: 2)
!1416 = !DILocation(line: 404, column: 7, scope: !1415)
!1417 = !DILocation(line: 404, column: 14, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 404, column: 2)
!1419 = !DILocation(line: 404, column: 18, scope: !1418)
!1420 = !DILocation(line: 404, column: 16, scope: !1418)
!1421 = !DILocation(line: 404, column: 2, scope: !1415)
!1422 = !DILocation(line: 405, column: 18, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 404, column: 30)
!1424 = !DILocation(line: 405, column: 17, scope: !1423)
!1425 = !DILocation(line: 405, column: 15, scope: !1423)
!1426 = !DILocation(line: 406, column: 18, scope: !1423)
!1427 = !DILocation(line: 406, column: 31, scope: !1423)
!1428 = !DILocation(line: 406, column: 39, scope: !1423)
!1429 = !DILocation(line: 406, column: 16, scope: !1423)
!1430 = !DILocation(line: 407, column: 26, scope: !1423)
!1431 = !DILocation(line: 407, column: 3, scope: !1423)
!1432 = !DILocation(line: 407, column: 9, scope: !1423)
!1433 = !DILocation(line: 407, column: 24, scope: !1423)
!1434 = !DILocation(line: 411, column: 38, scope: !1423)
!1435 = !DILocation(line: 412, column: 30, scope: !1423)
!1436 = !DILocation(line: 411, column: 12, scope: !1423)
!1437 = !DILocation(line: 411, column: 10, scope: !1423)
!1438 = !DILocation(line: 413, column: 7, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 413, column: 7)
!1440 = !DILocation(line: 413, column: 7, scope: !1423)
!1441 = !DILocation(line: 414, column: 12, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 413, column: 29)
!1443 = !DILocation(line: 414, column: 4, scope: !1442)
!1444 = !DILocation(line: 419, column: 26, scope: !1423)
!1445 = !DILocation(line: 419, column: 3, scope: !1423)
!1446 = !DILocation(line: 419, column: 9, scope: !1423)
!1447 = !DILocation(line: 419, column: 24, scope: !1423)
!1448 = !DILocation(line: 420, column: 11, scope: !1423)
!1449 = !DILocation(line: 420, column: 20, scope: !1423)
!1450 = !DILocation(line: 420, column: 29, scope: !1423)
!1451 = !DILocation(line: 420, column: 3, scope: !1423)
!1452 = !DILocation(line: 428, column: 8, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 420, column: 35)
!1454 = !DILocation(line: 428, column: 17, scope: !1453)
!1455 = !DILocation(line: 428, column: 26, scope: !1453)
!1456 = !DILocation(line: 428, column: 35, scope: !1453)
!1457 = !DILocation(line: 428, column: 44, scope: !1453)
!1458 = !DILocation(line: 428, column: 53, scope: !1453)
!1459 = !DILocation(line: 428, column: 33, scope: !1453)
!1460 = !DILocation(line: 427, column: 19, scope: !1453)
!1461 = !DILocation(line: 429, column: 8, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 429, column: 8)
!1463 = !DILocation(line: 429, column: 21, scope: !1462)
!1464 = !DILocation(line: 429, column: 29, scope: !1462)
!1465 = !DILocation(line: 429, column: 37, scope: !1462)
!1466 = !DILocation(line: 429, column: 35, scope: !1462)
!1467 = !DILocation(line: 429, column: 8, scope: !1453)
!1468 = !DILocation(line: 430, column: 5, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 429, column: 53)
!1470 = !DILocation(line: 434, column: 39, scope: !1453)
!1471 = !DILocation(line: 434, column: 45, scope: !1453)
!1472 = !DILocation(line: 435, column: 11, scope: !1453)
!1473 = !DILocation(line: 435, column: 20, scope: !1453)
!1474 = !DILocation(line: 436, column: 11, scope: !1453)
!1475 = !DILocation(line: 437, column: 11, scope: !1453)
!1476 = !DILocation(line: 437, column: 20, scope: !1453)
!1477 = !DILocation(line: 438, column: 11, scope: !1453)
!1478 = !DILocation(line: 439, column: 11, scope: !1453)
!1479 = !DILocation(line: 439, column: 20, scope: !1453)
!1480 = !DILocation(line: 440, column: 11, scope: !1453)
!1481 = !DILocation(line: 441, column: 11, scope: !1453)
!1482 = !DILocation(line: 441, column: 20, scope: !1453)
!1483 = !DILocation(line: 442, column: 11, scope: !1453)
!1484 = !DILocation(line: 434, column: 8, scope: !1453)
!1485 = !DILocation(line: 433, column: 11, scope: !1453)
!1486 = !DILocation(line: 443, column: 8, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 443, column: 8)
!1488 = !DILocation(line: 443, column: 8, scope: !1453)
!1489 = !DILocation(line: 444, column: 13, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 443, column: 30)
!1491 = !DILocation(line: 444, column: 5, scope: !1490)
!1492 = !DILocation(line: 446, column: 4, scope: !1453)
!1493 = !DILocation(line: 454, column: 8, scope: !1453)
!1494 = !DILocation(line: 454, column: 17, scope: !1453)
!1495 = !DILocation(line: 454, column: 26, scope: !1453)
!1496 = !DILocation(line: 454, column: 35, scope: !1453)
!1497 = !DILocation(line: 454, column: 44, scope: !1453)
!1498 = !DILocation(line: 454, column: 53, scope: !1453)
!1499 = !DILocation(line: 454, column: 33, scope: !1453)
!1500 = !DILocation(line: 453, column: 19, scope: !1453)
!1501 = !DILocation(line: 455, column: 8, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 455, column: 8)
!1503 = !DILocation(line: 455, column: 21, scope: !1502)
!1504 = !DILocation(line: 455, column: 29, scope: !1502)
!1505 = !DILocation(line: 455, column: 37, scope: !1502)
!1506 = !DILocation(line: 455, column: 35, scope: !1502)
!1507 = !DILocation(line: 455, column: 8, scope: !1453)
!1508 = !DILocation(line: 456, column: 5, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 455, column: 53)
!1510 = !DILocation(line: 460, column: 39, scope: !1453)
!1511 = !DILocation(line: 460, column: 45, scope: !1453)
!1512 = !DILocation(line: 461, column: 11, scope: !1453)
!1513 = !DILocation(line: 461, column: 20, scope: !1453)
!1514 = !DILocation(line: 462, column: 11, scope: !1453)
!1515 = !DILocation(line: 463, column: 11, scope: !1453)
!1516 = !DILocation(line: 463, column: 20, scope: !1453)
!1517 = !DILocation(line: 464, column: 11, scope: !1453)
!1518 = !DILocation(line: 465, column: 11, scope: !1453)
!1519 = !DILocation(line: 465, column: 20, scope: !1453)
!1520 = !DILocation(line: 466, column: 11, scope: !1453)
!1521 = !DILocation(line: 467, column: 11, scope: !1453)
!1522 = !DILocation(line: 467, column: 24, scope: !1453)
!1523 = !DILocation(line: 468, column: 11, scope: !1453)
!1524 = !DILocation(line: 469, column: 11, scope: !1453)
!1525 = !DILocation(line: 469, column: 20, scope: !1453)
!1526 = !DILocation(line: 470, column: 11, scope: !1453)
!1527 = !DILocation(line: 468, column: 17, scope: !1453)
!1528 = !DILocation(line: 460, column: 8, scope: !1453)
!1529 = !DILocation(line: 459, column: 11, scope: !1453)
!1530 = !DILocation(line: 471, column: 8, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 471, column: 8)
!1532 = !DILocation(line: 471, column: 8, scope: !1453)
!1533 = !DILocation(line: 472, column: 13, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 471, column: 30)
!1535 = !DILocation(line: 472, column: 5, scope: !1534)
!1536 = !DILocation(line: 474, column: 4, scope: !1453)
!1537 = !DILocation(line: 480, column: 4, scope: !1453)
!1538 = !DILocation(line: 486, column: 21, scope: !1453)
!1539 = !DILocation(line: 486, column: 30, scope: !1453)
!1540 = !DILocation(line: 486, column: 40, scope: !1453)
!1541 = !DILocation(line: 486, column: 19, scope: !1453)
!1542 = !DILocation(line: 487, column: 8, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 487, column: 8)
!1544 = !DILocation(line: 487, column: 21, scope: !1543)
!1545 = !DILocation(line: 487, column: 29, scope: !1543)
!1546 = !DILocation(line: 487, column: 37, scope: !1543)
!1547 = !DILocation(line: 487, column: 35, scope: !1543)
!1548 = !DILocation(line: 487, column: 8, scope: !1453)
!1549 = !DILocation(line: 488, column: 5, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 487, column: 53)
!1551 = !DILocation(line: 493, column: 11, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 493, column: 4)
!1553 = !DILocation(line: 493, column: 9, scope: !1552)
!1554 = !DILocation(line: 493, column: 16, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 493, column: 4)
!1556 = !DILocation(line: 493, column: 20, scope: !1555)
!1557 = !DILocation(line: 493, column: 18, scope: !1555)
!1558 = !DILocation(line: 493, column: 4, scope: !1552)
!1559 = !DILocation(line: 495, column: 35, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 493, column: 41)
!1561 = !DILocation(line: 496, column: 15, scope: !1560)
!1562 = !DILocation(line: 496, column: 28, scope: !1560)
!1563 = !DILocation(line: 497, column: 14, scope: !1560)
!1564 = !DILocation(line: 498, column: 14, scope: !1560)
!1565 = !DILocation(line: 499, column: 14, scope: !1560)
!1566 = !DILocation(line: 499, column: 26, scope: !1560)
!1567 = !DILocation(line: 500, column: 14, scope: !1560)
!1568 = !DILocation(line: 495, column: 9, scope: !1560)
!1569 = !DILocation(line: 494, column: 12, scope: !1560)
!1570 = !DILocation(line: 501, column: 9, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 501, column: 9)
!1572 = !DILocation(line: 501, column: 9, scope: !1560)
!1573 = !DILocation(line: 502, column: 14, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 501, column: 31)
!1575 = !DILocation(line: 502, column: 6, scope: !1574)
!1576 = !DILocation(line: 504, column: 4, scope: !1560)
!1577 = !DILocation(line: 493, column: 37, scope: !1555)
!1578 = !DILocation(line: 493, column: 4, scope: !1555)
!1579 = distinct !{!1579, !1558, !1580}
!1580 = !DILocation(line: 504, column: 4, scope: !1552)
!1581 = !DILocation(line: 505, column: 4, scope: !1453)
!1582 = !DILocation(line: 511, column: 21, scope: !1453)
!1583 = !DILocation(line: 511, column: 30, scope: !1453)
!1584 = !DILocation(line: 511, column: 39, scope: !1453)
!1585 = !DILocation(line: 511, column: 19, scope: !1453)
!1586 = !DILocation(line: 512, column: 8, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 512, column: 8)
!1588 = !DILocation(line: 512, column: 21, scope: !1587)
!1589 = !DILocation(line: 512, column: 29, scope: !1587)
!1590 = !DILocation(line: 512, column: 37, scope: !1587)
!1591 = !DILocation(line: 512, column: 35, scope: !1587)
!1592 = !DILocation(line: 512, column: 8, scope: !1453)
!1593 = !DILocation(line: 513, column: 5, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 512, column: 53)
!1595 = !DILocation(line: 519, column: 39, scope: !1453)
!1596 = !DILocation(line: 519, column: 45, scope: !1453)
!1597 = !DILocation(line: 520, column: 11, scope: !1453)
!1598 = !DILocation(line: 520, column: 20, scope: !1453)
!1599 = !DILocation(line: 521, column: 11, scope: !1453)
!1600 = !DILocation(line: 522, column: 11, scope: !1453)
!1601 = !DILocation(line: 522, column: 24, scope: !1453)
!1602 = !DILocation(line: 523, column: 11, scope: !1453)
!1603 = !DILocation(line: 519, column: 8, scope: !1453)
!1604 = !DILocation(line: 518, column: 11, scope: !1453)
!1605 = !DILocation(line: 524, column: 8, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 524, column: 8)
!1607 = !DILocation(line: 524, column: 8, scope: !1453)
!1608 = !DILocation(line: 525, column: 13, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 524, column: 30)
!1610 = !DILocation(line: 525, column: 5, scope: !1609)
!1611 = !DILocation(line: 527, column: 4, scope: !1453)
!1612 = !DILocation(line: 534, column: 39, scope: !1453)
!1613 = !DILocation(line: 534, column: 45, scope: !1453)
!1614 = !DILocation(line: 534, column: 13, scope: !1453)
!1615 = !DILocation(line: 534, column: 11, scope: !1453)
!1616 = !DILocation(line: 537, column: 8, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 537, column: 8)
!1618 = !DILocation(line: 537, column: 8, scope: !1453)
!1619 = !DILocation(line: 538, column: 13, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 537, column: 30)
!1621 = !DILocation(line: 538, column: 5, scope: !1620)
!1622 = !DILocation(line: 545, column: 28, scope: !1453)
!1623 = !DILocation(line: 545, column: 27, scope: !1453)
!1624 = !DILocation(line: 545, column: 43, scope: !1453)
!1625 = !DILocation(line: 545, column: 51, scope: !1453)
!1626 = !DILocation(line: 545, column: 21, scope: !1453)
!1627 = !DILocation(line: 545, column: 19, scope: !1453)
!1628 = !DILocation(line: 546, column: 8, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 546, column: 8)
!1630 = !DILocation(line: 546, column: 21, scope: !1629)
!1631 = !DILocation(line: 546, column: 29, scope: !1629)
!1632 = !DILocation(line: 546, column: 37, scope: !1629)
!1633 = !DILocation(line: 546, column: 35, scope: !1629)
!1634 = !DILocation(line: 546, column: 8, scope: !1453)
!1635 = !DILocation(line: 547, column: 5, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 546, column: 53)
!1637 = !DILocation(line: 550, column: 8, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 550, column: 8)
!1639 = !DILocation(line: 550, column: 21, scope: !1638)
!1640 = !DILocation(line: 550, column: 29, scope: !1638)
!1641 = !DILocation(line: 551, column: 8, scope: !1638)
!1642 = !DILocation(line: 551, column: 17, scope: !1638)
!1643 = !DILocation(line: 551, column: 26, scope: !1638)
!1644 = !DILocation(line: 550, column: 35, scope: !1638)
!1645 = !DILocation(line: 550, column: 8, scope: !1453)
!1646 = !DILocation(line: 552, column: 22, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 551, column: 34)
!1648 = !DILocation(line: 552, column: 31, scope: !1647)
!1649 = !DILocation(line: 552, column: 40, scope: !1647)
!1650 = !DILocation(line: 552, column: 20, scope: !1647)
!1651 = !DILocation(line: 553, column: 5, scope: !1647)
!1652 = !DILocation(line: 556, column: 8, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 556, column: 8)
!1654 = !DILocation(line: 556, column: 23, scope: !1653)
!1655 = !DILocation(line: 556, column: 8, scope: !1453)
!1656 = !DILocation(line: 563, column: 22, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 556, column: 29)
!1658 = !DILocation(line: 563, column: 35, scope: !1657)
!1659 = !DILocation(line: 563, column: 43, scope: !1657)
!1660 = !DILocation(line: 563, column: 20, scope: !1657)
!1661 = !DILocation(line: 564, column: 38, scope: !1657)
!1662 = !DILocation(line: 564, column: 7, scope: !1657)
!1663 = !DILocation(line: 564, column: 6, scope: !1657)
!1664 = !DILocation(line: 564, column: 22, scope: !1657)
!1665 = !DILocation(line: 564, column: 30, scope: !1657)
!1666 = !DILocation(line: 564, column: 36, scope: !1657)
!1667 = !DILocation(line: 565, column: 4, scope: !1657)
!1668 = !DILocation(line: 570, column: 39, scope: !1453)
!1669 = !DILocation(line: 571, column: 12, scope: !1453)
!1670 = !DILocation(line: 571, column: 25, scope: !1453)
!1671 = !DILocation(line: 572, column: 11, scope: !1453)
!1672 = !DILocation(line: 572, column: 20, scope: !1453)
!1673 = !DILocation(line: 573, column: 11, scope: !1453)
!1674 = !DILocation(line: 574, column: 12, scope: !1453)
!1675 = !DILocation(line: 574, column: 27, scope: !1453)
!1676 = !DILocation(line: 570, column: 8, scope: !1453)
!1677 = !DILocation(line: 569, column: 11, scope: !1453)
!1678 = !DILocation(line: 576, column: 8, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 576, column: 8)
!1680 = !DILocation(line: 576, column: 8, scope: !1453)
!1681 = !DILocation(line: 577, column: 13, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 576, column: 30)
!1683 = !DILocation(line: 577, column: 5, scope: !1682)
!1684 = !DILocation(line: 579, column: 4, scope: !1453)
!1685 = !DILocation(line: 583, column: 4, scope: !1453)
!1686 = !DILocation(line: 585, column: 4, scope: !1453)
!1687 = !DILocation(line: 588, column: 11, scope: !1423)
!1688 = !DILocation(line: 589, column: 2, scope: !1423)
!1689 = !DILocation(line: 404, column: 26, scope: !1418)
!1690 = !DILocation(line: 404, column: 2, scope: !1418)
!1691 = distinct !{!1691, !1421, !1692}
!1692 = !DILocation(line: 589, column: 2, scope: !1415)
!1693 = !DILocation(line: 591, column: 2, scope: !1391)
!1694 = !DILabel(scope: !1391, name: "package_too_small", file: !3, line: 593)
!1695 = !DILocation(line: 593, column: 1, scope: !1391)
!1696 = !DILocation(line: 597, column: 2, scope: !1391)
!1697 = !DILocation(line: 601, column: 2, scope: !1391)
!1698 = !DILocation(line: 602, column: 1, scope: !1391)
