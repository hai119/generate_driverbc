; ModuleID = '../bcout/drivers/acpi/acpica/nsrepair2.llvm.bc'
source_filename = "drivers/acpi/acpica/nsrepair2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_repair_info = type { [4 x i8], i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* }
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
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }

@acpi_ns_repairable_names = internal constant [10 x %struct.acpi_repair_info] [%struct.acpi_repair_info { [4 x i8] c"_ALR", i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* @acpi_ns_repair_ALR }, %struct.acpi_repair_info { [4 x i8] c"_CID", i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* @acpi_ns_repair_CID }, %struct.acpi_repair_info { [4 x i8] c"_CST", i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* @acpi_ns_repair_CST }, %struct.acpi_repair_info { [4 x i8] c"_FDE", i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* @acpi_ns_repair_FDE }, %struct.acpi_repair_info { [4 x i8] c"_GTM", i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* @acpi_ns_repair_FDE }, %struct.acpi_repair_info { [4 x i8] c"_HID", i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* @acpi_ns_repair_HID }, %struct.acpi_repair_info { [4 x i8] c"_PRT", i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* @acpi_ns_repair_PRT }, %struct.acpi_repair_info { [4 x i8] c"_PSS", i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* @acpi_ns_repair_PSS }, %struct.acpi_repair_info { [4 x i8] c"_TSS", i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* @acpi_ns_repair_TSS }, %struct.acpi_repair_info zeroinitializer], align 16, !dbg !0
@.str = private unnamed_addr constant [19 x i8] c"AmbientIlluminance\00", align 1
@_acpi_module_name = internal constant [10 x i8] c"nsrepair2\00", align 1, !dbg !19
@.str.1 = private unnamed_addr constant [50 x i8] c"SubPackage[%u] - removing entry due to zero count\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"SubPackage[%u] - removing entry due to invalid Type(0)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"C-State Type\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Incorrect return buffer length %u, expected %u\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Invalid zero-length _HID or _CID string\00", align 1
@_ctype = external dso_local constant [0 x i8], align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"PRT[%X]: Fixed reversed SourceName and SourceIndex\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"CpuFrequency\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"SubPackage[%u,%u] - suspicious power dissipation values\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"^_PSS\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"PowerDissipation\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_complex_repairs(%struct.acpi_evaluate_info* %info, %struct.acpi_namespace_node* %node, i32 %validate_status, %union.acpi_operand_object** %return_object_ptr) #0 !dbg !870 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %validate_status.addr = alloca i32, align 4
  %return_object_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %predefined = alloca %struct.acpi_repair_info*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !873, metadata !DIExpression()), !dbg !874
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !875, metadata !DIExpression()), !dbg !876
  store i32 %validate_status, i32* %validate_status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %validate_status.addr, metadata !877, metadata !DIExpression()), !dbg !878
  store %union.acpi_operand_object** %return_object_ptr, %union.acpi_operand_object*** %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object_ptr.addr, metadata !879, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.declare(metadata %struct.acpi_repair_info** %predefined, metadata !881, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.declare(metadata i32* %status, metadata !884, metadata !DIExpression()), !dbg !885
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !886
  %call = call %struct.acpi_repair_info* @acpi_ns_match_complex_repair(%struct.acpi_namespace_node* %0) #3, !dbg !887
  store %struct.acpi_repair_info* %call, %struct.acpi_repair_info** %predefined, align 8, !dbg !888
  %1 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** %predefined, align 8, !dbg !889
  %tobool = icmp ne %struct.acpi_repair_info* %1, null, !dbg !889
  br i1 %tobool, label %if.end, label %if.then, !dbg !891

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %validate_status.addr, align 4, !dbg !892
  store i32 %2, i32* %retval, align 4, !dbg !894
  br label %return, !dbg !894

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** %predefined, align 8, !dbg !895
  %repair_function = getelementptr inbounds %struct.acpi_repair_info, %struct.acpi_repair_info* %3, i32 0, i32 1, !dbg !896
  %4 = load i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)*, i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)** %repair_function, align 8, !dbg !896
  %5 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !897
  %6 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !898
  %call1 = call i32 %4(%struct.acpi_evaluate_info* %5, %union.acpi_operand_object** %6) #3, !dbg !895
  store i32 %call1, i32* %status, align 4, !dbg !899
  %7 = load i32, i32* %status, align 4, !dbg !900
  store i32 %7, i32* %retval, align 4, !dbg !901
  br label %return, !dbg !901

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !902
  ret i32 %8, !dbg !902
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.acpi_repair_info* @acpi_ns_match_complex_repair(%struct.acpi_namespace_node* %node) #0 !dbg !903 {
entry:
  %retval = alloca %struct.acpi_repair_info*, align 8
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %this_name = alloca %struct.acpi_repair_info*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !906, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.declare(metadata %struct.acpi_repair_info** %this_name, metadata !908, metadata !DIExpression()), !dbg !909
  store %struct.acpi_repair_info* getelementptr inbounds ([10 x %struct.acpi_repair_info], [10 x %struct.acpi_repair_info]* @acpi_ns_repairable_names, i64 0, i64 0), %struct.acpi_repair_info** %this_name, align 8, !dbg !910
  br label %while.cond, !dbg !911

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** %this_name, align 8, !dbg !912
  %repair_function = getelementptr inbounds %struct.acpi_repair_info, %struct.acpi_repair_info* %0, i32 0, i32 1, !dbg !913
  %1 = load i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)*, i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)** %repair_function, align 8, !dbg !913
  %tobool = icmp ne i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* %1, null, !dbg !911
  br i1 %tobool, label %while.body, label %while.end, !dbg !911

while.body:                                       ; preds = %while.cond
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !914
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %2, i32 0, i32 4, !dbg !914
  %ascii = bitcast %union.acpi_name_union* %name to [4 x i8]*, !dbg !914
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !914
  %3 = bitcast i8* %arraydecay to i32*, !dbg !914
  %4 = load i32, i32* %3, align 4, !dbg !914
  %5 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** %this_name, align 8, !dbg !914
  %name1 = getelementptr inbounds %struct.acpi_repair_info, %struct.acpi_repair_info* %5, i32 0, i32 0, !dbg !914
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %name1, i64 0, i64 0, !dbg !914
  %6 = bitcast i8* %arraydecay2 to i32*, !dbg !914
  %7 = load i32, i32* %6, align 4, !dbg !914
  %cmp = icmp eq i32 %4, %7, !dbg !914
  br i1 %cmp, label %if.then, label %if.end, !dbg !917

if.then:                                          ; preds = %while.body
  %8 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** %this_name, align 8, !dbg !918
  store %struct.acpi_repair_info* %8, %struct.acpi_repair_info** %retval, align 8, !dbg !920
  br label %return, !dbg !920

if.end:                                           ; preds = %while.body
  %9 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** %this_name, align 8, !dbg !921
  %incdec.ptr = getelementptr %struct.acpi_repair_info, %struct.acpi_repair_info* %9, i32 1, !dbg !921
  store %struct.acpi_repair_info* %incdec.ptr, %struct.acpi_repair_info** %this_name, align 8, !dbg !921
  br label %while.cond, !dbg !911, !llvm.loop !922

while.end:                                        ; preds = %while.cond
  store %struct.acpi_repair_info* null, %struct.acpi_repair_info** %retval, align 8, !dbg !924
  br label %return, !dbg !924

return:                                           ; preds = %while.end, %if.then
  %10 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** %retval, align 8, !dbg !925
  ret %struct.acpi_repair_info* %10, !dbg !925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_repair_ALR(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object** %return_object_ptr) #0 !dbg !926 {
entry:
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %return_object_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %return_object = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !927, metadata !DIExpression()), !dbg !928
  store %union.acpi_operand_object** %return_object_ptr, %union.acpi_operand_object*** %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object_ptr.addr, metadata !929, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_object, metadata !931, metadata !DIExpression()), !dbg !932
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !933
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !934
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %return_object, align 8, !dbg !932
  call void @llvm.dbg.declare(metadata i32* %status, metadata !935, metadata !DIExpression()), !dbg !936
  %2 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !937
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !938
  %call = call i32 @acpi_ns_check_sorted_list(%struct.acpi_evaluate_info* %2, %union.acpi_operand_object* %3, i32 0, i32 2, i32 1, i8 zeroext 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #3, !dbg !939
  store i32 %call, i32* %status, align 4, !dbg !940
  %4 = load i32, i32* %status, align 4, !dbg !941
  ret i32 %4, !dbg !942
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_repair_CID(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object** %return_object_ptr) #0 !dbg !943 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %return_object_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %return_object = alloca %union.acpi_operand_object*, align 8
  %element_ptr = alloca %union.acpi_operand_object**, align 8
  %original_element = alloca %union.acpi_operand_object*, align 8
  %original_ref_count = alloca i16, align 2
  %i = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !944, metadata !DIExpression()), !dbg !945
  store %union.acpi_operand_object** %return_object_ptr, %union.acpi_operand_object*** %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object_ptr.addr, metadata !946, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.declare(metadata i32* %status, metadata !948, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_object, metadata !950, metadata !DIExpression()), !dbg !951
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !952
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !953
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %return_object, align 8, !dbg !951
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %element_ptr, metadata !954, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %original_element, metadata !956, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.declare(metadata i16* %original_ref_count, metadata !958, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata i32* %i, metadata !960, metadata !DIExpression()), !dbg !961
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !962
  %common = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_common*, !dbg !964
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !965
  %3 = load i8, i8* %type, align 1, !dbg !965
  %conv = zext i8 %3 to i32, !dbg !962
  %cmp = icmp eq i32 %conv, 2, !dbg !966
  br i1 %cmp, label %if.then, label %if.end, !dbg !967

if.then:                                          ; preds = %entry
  %4 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !968
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !970
  %call = call i32 @acpi_ns_repair_HID(%struct.acpi_evaluate_info* %4, %union.acpi_operand_object** %5) #3, !dbg !971
  store i32 %call, i32* %status, align 4, !dbg !972
  %6 = load i32, i32* %status, align 4, !dbg !973
  store i32 %6, i32* %retval, align 4, !dbg !974
  br label %return, !dbg !974

if.end:                                           ; preds = %entry
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !975
  %common2 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_common*, !dbg !977
  %type3 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common2, i32 0, i32 2, !dbg !978
  %8 = load i8, i8* %type3, align 1, !dbg !978
  %conv4 = zext i8 %8 to i32, !dbg !975
  %cmp5 = icmp ne i32 %conv4, 4, !dbg !979
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !980

if.then7:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !981
  br label %return, !dbg !981

if.end8:                                          ; preds = %if.end
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !983
  %package = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_package*, !dbg !984
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 6, !dbg !985
  %10 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !985
  store %union.acpi_operand_object** %10, %union.acpi_operand_object*** %element_ptr, align 8, !dbg !986
  store i32 0, i32* %i, align 4, !dbg !987
  br label %for.cond, !dbg !989

for.cond:                                         ; preds = %for.inc, %if.end8
  %11 = load i32, i32* %i, align 4, !dbg !990
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !992
  %package9 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_package*, !dbg !993
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package9, i32 0, i32 9, !dbg !994
  %13 = load i32, i32* %count, align 4, !dbg !994
  %cmp10 = icmp ult i32 %11, %13, !dbg !995
  br i1 %cmp10, label %for.body, label %for.end, !dbg !996

for.body:                                         ; preds = %for.cond
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %element_ptr, align 8, !dbg !997
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8, !dbg !999
  store %union.acpi_operand_object* %15, %union.acpi_operand_object** %original_element, align 8, !dbg !1000
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_element, align 8, !dbg !1001
  %common12 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_common*, !dbg !1002
  %reference_count = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common12, i32 0, i32 3, !dbg !1003
  %17 = load i16, i16* %reference_count, align 2, !dbg !1003
  store i16 %17, i16* %original_ref_count, align 2, !dbg !1004
  %18 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1005
  %19 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %element_ptr, align 8, !dbg !1006
  %call13 = call i32 @acpi_ns_repair_HID(%struct.acpi_evaluate_info* %18, %union.acpi_operand_object** %19) #3, !dbg !1007
  store i32 %call13, i32* %status, align 4, !dbg !1008
  %20 = load i32, i32* %status, align 4, !dbg !1009
  %tobool = icmp ne i32 %20, 0, !dbg !1009
  br i1 %tobool, label %if.then14, label %if.end15, !dbg !1011

if.then14:                                        ; preds = %for.body
  %21 = load i32, i32* %status, align 4, !dbg !1012
  store i32 %21, i32* %retval, align 4, !dbg !1014
  br label %return, !dbg !1014

if.end15:                                         ; preds = %for.body
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_element, align 8, !dbg !1015
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %element_ptr, align 8, !dbg !1017
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %23, align 8, !dbg !1018
  %cmp16 = icmp ne %union.acpi_operand_object* %22, %24, !dbg !1019
  br i1 %cmp16, label %if.then18, label %if.end21, !dbg !1020

if.then18:                                        ; preds = %if.end15
  %25 = load i16, i16* %original_ref_count, align 2, !dbg !1021
  %26 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %element_ptr, align 8, !dbg !1023
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %26, align 8, !dbg !1024
  %common19 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_common*, !dbg !1025
  %reference_count20 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common19, i32 0, i32 3, !dbg !1026
  store i16 %25, i16* %reference_count20, align 2, !dbg !1027
  br label %if.end21, !dbg !1028

if.end21:                                         ; preds = %if.then18, %if.end15
  %28 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %element_ptr, align 8, !dbg !1029
  %incdec.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %28, i32 1, !dbg !1029
  store %union.acpi_operand_object** %incdec.ptr, %union.acpi_operand_object*** %element_ptr, align 8, !dbg !1029
  br label %for.inc, !dbg !1030

for.inc:                                          ; preds = %if.end21
  %29 = load i32, i32* %i, align 4, !dbg !1031
  %inc = add i32 %29, 1, !dbg !1031
  store i32 %inc, i32* %i, align 4, !dbg !1031
  br label %for.cond, !dbg !1032, !llvm.loop !1033

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1035
  br label %return, !dbg !1035

return:                                           ; preds = %for.end, %if.then14, %if.then7, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !1036
  ret i32 %30, !dbg !1036
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_repair_CST(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object** %return_object_ptr) #0 !dbg !1037 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %return_object_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %return_object = alloca %union.acpi_operand_object*, align 8
  %outer_elements = alloca %union.acpi_operand_object**, align 8
  %outer_element_count = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %removing = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1038, metadata !DIExpression()), !dbg !1039
  store %union.acpi_operand_object** %return_object_ptr, %union.acpi_operand_object*** %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object_ptr.addr, metadata !1040, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_object, metadata !1042, metadata !DIExpression()), !dbg !1043
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1044
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !1045
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %return_object, align 8, !dbg !1043
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %outer_elements, metadata !1046, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.declare(metadata i32* %outer_element_count, metadata !1048, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1050, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1052, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.declare(metadata i8* %removing, metadata !1054, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1056, metadata !DIExpression()), !dbg !1057
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1058
  %package = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_package*, !dbg !1059
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 9, !dbg !1060
  %3 = load i32, i32* %count, align 4, !dbg !1060
  %sub = sub i32 %3, 1, !dbg !1061
  store i32 %sub, i32* %outer_element_count, align 4, !dbg !1062
  store i32 0, i32* %i, align 4, !dbg !1063
  br label %while.cond, !dbg !1064

while.cond:                                       ; preds = %if.end16, %entry
  %4 = load i32, i32* %i, align 4, !dbg !1065
  %5 = load i32, i32* %outer_element_count, align 4, !dbg !1066
  %cmp = icmp ult i32 %4, %5, !dbg !1067
  br i1 %cmp, label %while.body, label %while.end, !dbg !1064

while.body:                                       ; preds = %while.cond
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1068
  %package1 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_package*, !dbg !1070
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package1, i32 0, i32 6, !dbg !1071
  %7 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1071
  %8 = load i32, i32* %i, align 4, !dbg !1072
  %add = add i32 %8, 1, !dbg !1073
  %idxprom = zext i32 %add to i64, !dbg !1068
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %7, i64 %idxprom, !dbg !1068
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %outer_elements, align 8, !dbg !1074
  store i8 0, i8* %removing, align 1, !dbg !1075
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %outer_elements, align 8, !dbg !1076
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8, !dbg !1078
  %package2 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_package*, !dbg !1079
  %count3 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package2, i32 0, i32 9, !dbg !1080
  %11 = load i32, i32* %count3, align 4, !dbg !1080
  %cmp4 = icmp eq i32 %11, 0, !dbg !1081
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1082

if.then:                                          ; preds = %while.body
  %12 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1083
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %12, i32 0, i32 5, !dbg !1083
  %13 = load i8*, i8** %full_pathname, align 8, !dbg !1083
  %14 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1083
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %14, i32 0, i32 12, !dbg !1083
  %15 = load i16, i16* %node_flags, align 2, !dbg !1083
  %16 = load i32, i32* %i, align 4, !dbg !1083
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 428, i8* %13, i16 zeroext %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %16) #3, !dbg !1083
  store i8 1, i8* %removing, align 1, !dbg !1085
  br label %remove_element, !dbg !1086

if.end:                                           ; preds = %while.body
  %17 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %outer_elements, align 8, !dbg !1087
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %17, align 8, !dbg !1088
  %package5 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_package*, !dbg !1089
  %elements6 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package5, i32 0, i32 6, !dbg !1090
  %19 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements6, align 8, !dbg !1090
  %arrayidx7 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %19, i64 1, !dbg !1091
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx7, align 8, !dbg !1091
  store %union.acpi_operand_object* %20, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1092
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1093
  %integer = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_integer*, !dbg !1095
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1096
  %22 = load i64, i64* %value, align 8, !dbg !1096
  %conv = trunc i64 %22 to i32, !dbg !1097
  %cmp8 = icmp eq i32 %conv, 0, !dbg !1098
  br i1 %cmp8, label %if.then10, label %if.end13, !dbg !1099

if.then10:                                        ; preds = %if.end
  %23 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1100
  %full_pathname11 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %23, i32 0, i32 5, !dbg !1100
  %24 = load i8*, i8** %full_pathname11, align 8, !dbg !1100
  %25 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1100
  %node_flags12 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %25, i32 0, i32 12, !dbg !1100
  %26 = load i16, i16* %node_flags12, align 2, !dbg !1100
  %27 = load i32, i32* %i, align 4, !dbg !1100
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 439, i8* %24, i16 zeroext %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %27) #3, !dbg !1100
  store i8 1, i8* %removing, align 1, !dbg !1102
  br label %if.end13, !dbg !1103

if.end13:                                         ; preds = %if.then10, %if.end
  br label %remove_element, !dbg !1104

remove_element:                                   ; preds = %if.end13, %if.then
  call void @llvm.dbg.label(metadata !1105), !dbg !1106
  %28 = load i8, i8* %removing, align 1, !dbg !1107
  %tobool = icmp ne i8 %28, 0, !dbg !1107
  br i1 %tobool, label %if.then14, label %if.else, !dbg !1109

if.then14:                                        ; preds = %remove_element
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1110
  %30 = load i32, i32* %i, align 4, !dbg !1112
  %add15 = add i32 %30, 1, !dbg !1113
  call void @acpi_ns_remove_element(%union.acpi_operand_object* %29, i32 %add15) #3, !dbg !1114
  %31 = load i32, i32* %outer_element_count, align 4, !dbg !1115
  %dec = add i32 %31, -1, !dbg !1115
  store i32 %dec, i32* %outer_element_count, align 4, !dbg !1115
  br label %if.end16, !dbg !1116

if.else:                                          ; preds = %remove_element
  %32 = load i32, i32* %i, align 4, !dbg !1117
  %inc = add i32 %32, 1, !dbg !1117
  store i32 %inc, i32* %i, align 4, !dbg !1117
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  br label %while.cond, !dbg !1064, !llvm.loop !1119

while.end:                                        ; preds = %while.cond
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1121
  %package17 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_package*, !dbg !1122
  %elements18 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package17, i32 0, i32 6, !dbg !1123
  %34 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements18, align 8, !dbg !1123
  %arrayidx19 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %34, i64 0, !dbg !1121
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx19, align 8, !dbg !1121
  store %union.acpi_operand_object* %35, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1124
  %36 = load i32, i32* %outer_element_count, align 4, !dbg !1125
  %conv20 = zext i32 %36 to i64, !dbg !1125
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1126
  %integer21 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_integer*, !dbg !1127
  %value22 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer21, i32 0, i32 6, !dbg !1128
  store i64 %conv20, i64* %value22, align 8, !dbg !1129
  %38 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1130
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1131
  %call = call i32 @acpi_ns_check_sorted_list(%struct.acpi_evaluate_info* %38, %union.acpi_operand_object* %39, i32 1, i32 4, i32 1, i8 zeroext 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1132
  store i32 %call, i32* %status, align 4, !dbg !1133
  %40 = load i32, i32* %status, align 4, !dbg !1134
  %tobool23 = icmp ne i32 %40, 0, !dbg !1134
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1136

if.then24:                                        ; preds = %while.end
  %41 = load i32, i32* %status, align 4, !dbg !1137
  store i32 %41, i32* %retval, align 4, !dbg !1139
  br label %return, !dbg !1139

if.end25:                                         ; preds = %while.end
  store i32 0, i32* %retval, align 4, !dbg !1140
  br label %return, !dbg !1140

return:                                           ; preds = %if.end25, %if.then24
  %42 = load i32, i32* %retval, align 4, !dbg !1141
  ret i32 %42, !dbg !1141
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_repair_FDE(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object** %return_object_ptr) #0 !dbg !1142 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %return_object_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %return_object = alloca %union.acpi_operand_object*, align 8
  %buffer_object = alloca %union.acpi_operand_object*, align 8
  %byte_buffer = alloca i8*, align 8
  %dword_buffer = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1143, metadata !DIExpression()), !dbg !1144
  store %union.acpi_operand_object** %return_object_ptr, %union.acpi_operand_object*** %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object_ptr.addr, metadata !1145, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_object, metadata !1147, metadata !DIExpression()), !dbg !1148
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1149
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !1150
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %return_object, align 8, !dbg !1148
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %buffer_object, metadata !1151, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.declare(metadata i8** %byte_buffer, metadata !1153, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.declare(metadata i32** %dword_buffer, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1157, metadata !DIExpression()), !dbg !1158
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1159
  %common = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_common*, !dbg !1160
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1161
  %3 = load i8, i8* %type, align 1, !dbg !1161
  %conv = zext i8 %3 to i32, !dbg !1159
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
  ], !dbg !1162

sw.bb:                                            ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1163
  %buffer = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_buffer*, !dbg !1166
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !1167
  %5 = load i32, i32* %length, align 8, !dbg !1167
  %cmp = icmp uge i32 %5, 20, !dbg !1168
  br i1 %cmp, label %if.then, label %if.end, !dbg !1169

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !1170
  br label %return, !dbg !1170

if.end:                                           ; preds = %sw.bb
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1172
  %buffer2 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_buffer*, !dbg !1174
  %length3 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer2, i32 0, i32 6, !dbg !1175
  %7 = load i32, i32* %length3, align 8, !dbg !1175
  %cmp4 = icmp ne i32 %7, 5, !dbg !1176
  br i1 %cmp4, label %if.then6, label %if.end9, !dbg !1177

if.then6:                                         ; preds = %if.end
  %8 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1178
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %8, i32 0, i32 5, !dbg !1178
  %9 = load i8*, i8** %full_pathname, align 8, !dbg !1178
  %10 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1178
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %10, i32 0, i32 12, !dbg !1178
  %11 = load i16, i16* %node_flags, align 2, !dbg !1178
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1178
  %buffer7 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_buffer*, !dbg !1178
  %length8 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer7, i32 0, i32 6, !dbg !1178
  %13 = load i32, i32* %length8, align 8, !dbg !1178
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 271, i8* %9, i16 zeroext %11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %13, i32 20) #3, !dbg !1178
  store i32 12291, i32* %retval, align 4, !dbg !1180
  br label %return, !dbg !1180

if.end9:                                          ; preds = %if.end
  %call = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 20) #3, !dbg !1181
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %buffer_object, align 8, !dbg !1182
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_object, align 8, !dbg !1183
  %tobool = icmp ne %union.acpi_operand_object* %14, null, !dbg !1183
  br i1 %tobool, label %if.end11, label %if.then10, !dbg !1185

if.then10:                                        ; preds = %if.end9
  store i32 4, i32* %retval, align 4, !dbg !1186
  br label %return, !dbg !1186

if.end11:                                         ; preds = %if.end9
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1188
  %buffer12 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_buffer*, !dbg !1189
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer12, i32 0, i32 5, !dbg !1190
  %16 = load i8*, i8** %pointer, align 8, !dbg !1190
  store i8* %16, i8** %byte_buffer, align 8, !dbg !1191
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_object, align 8, !dbg !1192
  %buffer13 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_buffer*, !dbg !1192
  %pointer14 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer13, i32 0, i32 5, !dbg !1192
  %18 = load i8*, i8** %pointer14, align 8, !dbg !1192
  %19 = bitcast i8* %18 to i32*, !dbg !1192
  store i32* %19, i32** %dword_buffer, align 8, !dbg !1193
  store i32 0, i32* %i, align 4, !dbg !1194
  br label %for.cond, !dbg !1196

for.cond:                                         ; preds = %for.inc, %if.end11
  %20 = load i32, i32* %i, align 4, !dbg !1197
  %cmp15 = icmp ult i32 %20, 5, !dbg !1199
  br i1 %cmp15, label %for.body, label %for.end, !dbg !1200

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %byte_buffer, align 8, !dbg !1201
  %22 = load i8, i8* %21, align 1, !dbg !1203
  %conv17 = zext i8 %22 to i32, !dbg !1204
  %23 = load i32*, i32** %dword_buffer, align 8, !dbg !1205
  store i32 %conv17, i32* %23, align 4, !dbg !1206
  %24 = load i32*, i32** %dword_buffer, align 8, !dbg !1207
  %incdec.ptr = getelementptr i32, i32* %24, i32 1, !dbg !1207
  store i32* %incdec.ptr, i32** %dword_buffer, align 8, !dbg !1207
  %25 = load i8*, i8** %byte_buffer, align 8, !dbg !1208
  %incdec.ptr18 = getelementptr i8, i8* %25, i32 1, !dbg !1208
  store i8* %incdec.ptr18, i8** %byte_buffer, align 8, !dbg !1208
  br label %for.inc, !dbg !1209

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !dbg !1210
  %inc = add i32 %26, 1, !dbg !1210
  store i32 %inc, i32* %i, align 4, !dbg !1210
  br label %for.cond, !dbg !1211, !llvm.loop !1212

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !dbg !1214

sw.default:                                       ; preds = %entry
  store i32 12291, i32* %retval, align 4, !dbg !1215
  br label %return, !dbg !1215

sw.epilog:                                        ; preds = %for.end
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1216
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %27) #3, !dbg !1217
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_object, align 8, !dbg !1218
  %29 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1219
  store %union.acpi_operand_object* %28, %union.acpi_operand_object** %29, align 8, !dbg !1220
  %30 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1221
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %30, i32 0, i32 9, !dbg !1222
  %31 = load i32, i32* %return_flags, align 8, !dbg !1223
  %or = or i32 %31, 1, !dbg !1223
  store i32 %or, i32* %return_flags, align 8, !dbg !1223
  store i32 0, i32* %retval, align 4, !dbg !1224
  br label %return, !dbg !1224

return:                                           ; preds = %sw.epilog, %sw.default, %if.then10, %if.then6, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !1225
  ret i32 %32, !dbg !1225
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_repair_HID(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object** %return_object_ptr) #0 !dbg !1226 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %return_object_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %return_object = alloca %union.acpi_operand_object*, align 8
  %new_string = alloca %union.acpi_operand_object*, align 8
  %source = alloca i8*, align 8
  %dest = alloca i8*, align 8
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1227, metadata !DIExpression()), !dbg !1228
  store %union.acpi_operand_object** %return_object_ptr, %union.acpi_operand_object*** %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object_ptr.addr, metadata !1229, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_object, metadata !1231, metadata !DIExpression()), !dbg !1232
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1233
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !1234
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %return_object, align 8, !dbg !1232
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %new_string, metadata !1235, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.declare(metadata i8** %source, metadata !1237, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !1239, metadata !DIExpression()), !dbg !1240
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1241
  %common = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_common*, !dbg !1243
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1244
  %3 = load i8, i8* %type, align 1, !dbg !1244
  %conv = zext i8 %3 to i32, !dbg !1241
  %cmp = icmp ne i32 %conv, 2, !dbg !1245
  br i1 %cmp, label %if.then, label %if.end, !dbg !1246

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1247
  br label %return, !dbg !1247

if.end:                                           ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1249
  %string = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_string*, !dbg !1251
  %length = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 6, !dbg !1252
  %5 = load i32, i32* %length, align 8, !dbg !1252
  %cmp2 = icmp eq i32 %5, 0, !dbg !1253
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1254

if.then4:                                         ; preds = %if.end
  %6 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1255
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %6, i32 0, i32 5, !dbg !1255
  %7 = load i8*, i8** %full_pathname, align 8, !dbg !1255
  %8 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1255
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %8, i32 0, i32 12, !dbg !1255
  %9 = load i16, i16* %node_flags, align 2, !dbg !1255
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 507, i8* %7, i16 zeroext %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0)) #3, !dbg !1255
  %10 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1257
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %10, i32 0, i32 9, !dbg !1258
  %11 = load i32, i32* %return_flags, align 8, !dbg !1259
  %or = or i32 %11, 1, !dbg !1259
  store i32 %or, i32* %return_flags, align 8, !dbg !1259
  store i32 0, i32* %retval, align 4, !dbg !1260
  br label %return, !dbg !1260

if.end5:                                          ; preds = %if.end
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1261
  %string6 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_string*, !dbg !1262
  %length7 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string6, i32 0, i32 6, !dbg !1263
  %13 = load i32, i32* %length7, align 8, !dbg !1263
  %conv8 = zext i32 %13 to i64, !dbg !1261
  %call = call %union.acpi_operand_object* @acpi_ut_create_string_object(i64 %conv8) #3, !dbg !1264
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %new_string, align 8, !dbg !1265
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_string, align 8, !dbg !1266
  %tobool = icmp ne %union.acpi_operand_object* %14, null, !dbg !1266
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !1268

if.then9:                                         ; preds = %if.end5
  store i32 4, i32* %retval, align 4, !dbg !1269
  br label %return, !dbg !1269

if.end10:                                         ; preds = %if.end5
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1271
  %string11 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_string*, !dbg !1272
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string11, i32 0, i32 5, !dbg !1273
  %16 = load i8*, i8** %pointer, align 8, !dbg !1273
  store i8* %16, i8** %source, align 8, !dbg !1274
  %17 = load i8*, i8** %source, align 8, !dbg !1275
  %18 = load i8, i8* %17, align 1, !dbg !1277
  %conv12 = sext i8 %18 to i32, !dbg !1277
  %cmp13 = icmp eq i32 %conv12, 42, !dbg !1278
  br i1 %cmp13, label %if.then15, label %if.end18, !dbg !1279

if.then15:                                        ; preds = %if.end10
  %19 = load i8*, i8** %source, align 8, !dbg !1280
  %incdec.ptr = getelementptr i8, i8* %19, i32 1, !dbg !1280
  store i8* %incdec.ptr, i8** %source, align 8, !dbg !1280
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_string, align 8, !dbg !1282
  %string16 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_string*, !dbg !1283
  %length17 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string16, i32 0, i32 6, !dbg !1284
  %21 = load i32, i32* %length17, align 8, !dbg !1285
  %dec = add i32 %21, -1, !dbg !1285
  store i32 %dec, i32* %length17, align 8, !dbg !1285
  br label %if.end18, !dbg !1286

if.end18:                                         ; preds = %if.then15, %if.end10
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_string, align 8, !dbg !1287
  %string19 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_string*, !dbg !1289
  %pointer20 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string19, i32 0, i32 5, !dbg !1290
  %23 = load i8*, i8** %pointer20, align 8, !dbg !1290
  store i8* %23, i8** %dest, align 8, !dbg !1291
  br label %for.cond, !dbg !1292

for.cond:                                         ; preds = %for.inc, %if.end18
  %24 = load i8*, i8** %source, align 8, !dbg !1293
  %25 = load i8, i8* %24, align 1, !dbg !1295
  %tobool21 = icmp ne i8 %25, 0, !dbg !1296
  br i1 %tobool21, label %for.body, label %for.end, !dbg !1296

for.body:                                         ; preds = %for.cond
  %26 = load i8*, i8** %source, align 8, !dbg !1297
  %27 = load i8, i8* %26, align 1, !dbg !1297
  %conv22 = sext i8 %27 to i32, !dbg !1297
  %conv23 = trunc i32 %conv22 to i8, !dbg !1297
  %call24 = call zeroext i8 @__toupper(i8 zeroext %conv23) #3, !dbg !1297
  %28 = load i8*, i8** %dest, align 8, !dbg !1299
  store i8 %call24, i8* %28, align 1, !dbg !1300
  br label %for.inc, !dbg !1301

for.inc:                                          ; preds = %for.body
  %29 = load i8*, i8** %dest, align 8, !dbg !1302
  %incdec.ptr25 = getelementptr i8, i8* %29, i32 1, !dbg !1302
  store i8* %incdec.ptr25, i8** %dest, align 8, !dbg !1302
  %30 = load i8*, i8** %source, align 8, !dbg !1303
  %incdec.ptr26 = getelementptr i8, i8* %30, i32 1, !dbg !1303
  store i8* %incdec.ptr26, i8** %source, align 8, !dbg !1303
  br label %for.cond, !dbg !1304, !llvm.loop !1305

for.end:                                          ; preds = %for.cond
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1307
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %31) #3, !dbg !1308
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_string, align 8, !dbg !1309
  %33 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1310
  store %union.acpi_operand_object* %32, %union.acpi_operand_object** %33, align 8, !dbg !1311
  store i32 0, i32* %retval, align 4, !dbg !1312
  br label %return, !dbg !1312

return:                                           ; preds = %for.end, %if.then9, %if.then4, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !1313
  ret i32 %34, !dbg !1313
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_repair_PRT(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object** %return_object_ptr) #0 !dbg !1314 {
entry:
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %return_object_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %package_object = alloca %union.acpi_operand_object*, align 8
  %top_object_list = alloca %union.acpi_operand_object**, align 8
  %sub_object_list = alloca %union.acpi_operand_object**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %sub_package = alloca %union.acpi_operand_object*, align 8
  %element_count = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1315, metadata !DIExpression()), !dbg !1316
  store %union.acpi_operand_object** %return_object_ptr, %union.acpi_operand_object*** %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object_ptr.addr, metadata !1317, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %package_object, metadata !1319, metadata !DIExpression()), !dbg !1320
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1321
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !1322
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %package_object, align 8, !dbg !1320
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %top_object_list, metadata !1323, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %sub_object_list, metadata !1325, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1327, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %sub_package, metadata !1329, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.declare(metadata i32* %element_count, metadata !1331, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.declare(metadata i32* %index, metadata !1333, metadata !DIExpression()), !dbg !1334
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_object, align 8, !dbg !1335
  %package = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_package*, !dbg !1336
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 6, !dbg !1337
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1337
  store %union.acpi_operand_object** %3, %union.acpi_operand_object*** %top_object_list, align 8, !dbg !1338
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_object, align 8, !dbg !1339
  %package1 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_package*, !dbg !1340
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package1, i32 0, i32 9, !dbg !1341
  %5 = load i32, i32* %count, align 4, !dbg !1341
  store i32 %5, i32* %element_count, align 4, !dbg !1342
  store i32 0, i32* %index, align 4, !dbg !1343
  br label %for.cond, !dbg !1345

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %index, align 4, !dbg !1346
  %7 = load i32, i32* %element_count, align 4, !dbg !1348
  %cmp = icmp ult i32 %6, %7, !dbg !1349
  br i1 %cmp, label %for.body, label %for.end, !dbg !1350

for.body:                                         ; preds = %for.cond
  %8 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %top_object_list, align 8, !dbg !1351
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8, !dbg !1353
  store %union.acpi_operand_object* %9, %union.acpi_operand_object** %sub_package, align 8, !dbg !1354
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1355
  %package2 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_package*, !dbg !1356
  %elements3 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package2, i32 0, i32 6, !dbg !1357
  %11 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements3, align 8, !dbg !1357
  store %union.acpi_operand_object** %11, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !1358
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %sub_package, align 8, !dbg !1359
  %package4 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_package*, !dbg !1361
  %count5 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package4, i32 0, i32 9, !dbg !1362
  %13 = load i32, i32* %count5, align 4, !dbg !1362
  %cmp6 = icmp ult i32 %13, 4, !dbg !1363
  br i1 %cmp6, label %if.then, label %if.end, !dbg !1364

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1365

if.end:                                           ; preds = %for.body
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !1367
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %14, i64 3, !dbg !1367
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !1367
  store %union.acpi_operand_object* %15, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1368
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1369
  %tobool = icmp ne %union.acpi_operand_object* %16, null, !dbg !1369
  br i1 %tobool, label %lor.lhs.false, label %if.then9, !dbg !1371

lor.lhs.false:                                    ; preds = %if.end
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1372
  %common = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_common*, !dbg !1373
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1374
  %18 = load i8, i8* %type, align 1, !dbg !1374
  %conv = zext i8 %18 to i32, !dbg !1372
  %cmp7 = icmp ne i32 %conv, 1, !dbg !1375
  br i1 %cmp7, label %if.then9, label %if.end13, !dbg !1376

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  %19 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !1377
  %arrayidx10 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %19, i64 2, !dbg !1377
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx10, align 8, !dbg !1377
  %21 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !1379
  %arrayidx11 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %21, i64 3, !dbg !1379
  store %union.acpi_operand_object* %20, %union.acpi_operand_object** %arrayidx11, align 8, !dbg !1380
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1381
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !1382
  %arrayidx12 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %23, i64 2, !dbg !1382
  store %union.acpi_operand_object* %22, %union.acpi_operand_object** %arrayidx12, align 8, !dbg !1383
  %24 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1384
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %24, i32 0, i32 9, !dbg !1385
  %25 = load i32, i32* %return_flags, align 8, !dbg !1386
  %or = or i32 %25, 1, !dbg !1386
  store i32 %or, i32* %return_flags, align 8, !dbg !1386
  %26 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1387
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %26, i32 0, i32 5, !dbg !1387
  %27 = load i8*, i8** %full_pathname, align 8, !dbg !1387
  %28 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1387
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %28, i32 0, i32 12, !dbg !1387
  %29 = load i16, i16* %node_flags, align 2, !dbg !1387
  %30 = load i32, i32* %index, align 4, !dbg !1387
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 613, i8* %27, i16 zeroext %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %30) #3, !dbg !1387
  br label %if.end13, !dbg !1388

if.end13:                                         ; preds = %if.then9, %lor.lhs.false
  br label %for.inc, !dbg !1389

for.inc:                                          ; preds = %if.end13, %if.then
  %31 = load i32, i32* %index, align 4, !dbg !1390
  %inc = add i32 %31, 1, !dbg !1390
  store i32 %inc, i32* %index, align 4, !dbg !1390
  %32 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %top_object_list, align 8, !dbg !1391
  %incdec.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %32, i32 1, !dbg !1391
  store %union.acpi_operand_object** %incdec.ptr, %union.acpi_operand_object*** %top_object_list, align 8, !dbg !1391
  br label %for.cond, !dbg !1392, !llvm.loop !1393

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !1395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_repair_PSS(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object** %return_object_ptr) #0 !dbg !1396 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %return_object_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %return_object = alloca %union.acpi_operand_object*, align 8
  %outer_elements = alloca %union.acpi_operand_object**, align 8
  %outer_element_count = alloca i32, align 4
  %elements = alloca %union.acpi_operand_object**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %previous_value = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1397, metadata !DIExpression()), !dbg !1398
  store %union.acpi_operand_object** %return_object_ptr, %union.acpi_operand_object*** %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object_ptr.addr, metadata !1399, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_object, metadata !1401, metadata !DIExpression()), !dbg !1402
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1403
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !1404
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %return_object, align 8, !dbg !1402
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %outer_elements, metadata !1405, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.declare(metadata i32* %outer_element_count, metadata !1407, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %elements, metadata !1409, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.declare(metadata i32* %previous_value, metadata !1413, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1415, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1417, metadata !DIExpression()), !dbg !1418
  %2 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1419
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1420
  %call = call i32 @acpi_ns_check_sorted_list(%struct.acpi_evaluate_info* %2, %union.acpi_operand_object* %3, i32 0, i32 6, i32 0, i8 zeroext 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)) #3, !dbg !1421
  store i32 %call, i32* %status, align 4, !dbg !1422
  %4 = load i32, i32* %status, align 4, !dbg !1423
  %tobool = icmp ne i32 %4, 0, !dbg !1423
  br i1 %tobool, label %if.then, label %if.end, !dbg !1425

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %status, align 4, !dbg !1426
  store i32 %5, i32* %retval, align 4, !dbg !1428
  br label %return, !dbg !1428

if.end:                                           ; preds = %entry
  store i32 -1, i32* %previous_value, align 4, !dbg !1429
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1430
  %package = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_package*, !dbg !1431
  %elements1 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 6, !dbg !1432
  %7 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements1, align 8, !dbg !1432
  store %union.acpi_operand_object** %7, %union.acpi_operand_object*** %outer_elements, align 8, !dbg !1433
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1434
  %package2 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_package*, !dbg !1435
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package2, i32 0, i32 9, !dbg !1436
  %9 = load i32, i32* %count, align 4, !dbg !1436
  store i32 %9, i32* %outer_element_count, align 4, !dbg !1437
  store i32 0, i32* %i, align 4, !dbg !1438
  br label %for.cond, !dbg !1440

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !dbg !1441
  %11 = load i32, i32* %outer_element_count, align 4, !dbg !1443
  %cmp = icmp ult i32 %10, %11, !dbg !1444
  br i1 %cmp, label %for.body, label %for.end, !dbg !1445

for.body:                                         ; preds = %for.cond
  %12 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %outer_elements, align 8, !dbg !1446
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8, !dbg !1448
  %package3 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_package*, !dbg !1449
  %elements4 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package3, i32 0, i32 6, !dbg !1450
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements4, align 8, !dbg !1450
  store %union.acpi_operand_object** %14, %union.acpi_operand_object*** %elements, align 8, !dbg !1451
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1452
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %15, i64 1, !dbg !1452
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !1452
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1453
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1454
  %integer = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_integer*, !dbg !1456
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1457
  %18 = load i64, i64* %value, align 8, !dbg !1457
  %conv = trunc i64 %18 to i32, !dbg !1458
  %19 = load i32, i32* %previous_value, align 4, !dbg !1459
  %cmp5 = icmp ugt i32 %conv, %19, !dbg !1460
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !1461

if.then7:                                         ; preds = %for.body
  %20 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1462
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %20, i32 0, i32 5, !dbg !1462
  %21 = load i8*, i8** %full_pathname, align 8, !dbg !1462
  %22 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1462
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %22, i32 0, i32 12, !dbg !1462
  %23 = load i16, i16* %node_flags, align 2, !dbg !1462
  %24 = load i32, i32* %i, align 4, !dbg !1462
  %sub = sub i32 %24, 1, !dbg !1462
  %25 = load i32, i32* %i, align 4, !dbg !1462
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 680, i8* %21, i16 zeroext %23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %sub, i32 %25) #3, !dbg !1462
  br label %if.end8, !dbg !1464

if.end8:                                          ; preds = %if.then7, %for.body
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1465
  %integer9 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_integer*, !dbg !1466
  %value10 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer9, i32 0, i32 6, !dbg !1467
  %27 = load i64, i64* %value10, align 8, !dbg !1467
  %conv11 = trunc i64 %27 to i32, !dbg !1468
  store i32 %conv11, i32* %previous_value, align 4, !dbg !1469
  %28 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %outer_elements, align 8, !dbg !1470
  %incdec.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %28, i32 1, !dbg !1470
  store %union.acpi_operand_object** %incdec.ptr, %union.acpi_operand_object*** %outer_elements, align 8, !dbg !1470
  br label %for.inc, !dbg !1471

for.inc:                                          ; preds = %if.end8
  %29 = load i32, i32* %i, align 4, !dbg !1472
  %inc = add i32 %29, 1, !dbg !1472
  store i32 %inc, i32* %i, align 4, !dbg !1472
  br label %for.cond, !dbg !1473, !llvm.loop !1474

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1476
  br label %return, !dbg !1476

return:                                           ; preds = %for.end, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !1477
  ret i32 %30, !dbg !1477
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_repair_TSS(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object** %return_object_ptr) #0 !dbg !1478 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %return_object_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %return_object = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1479, metadata !DIExpression()), !dbg !1480
  store %union.acpi_operand_object** %return_object_ptr, %union.acpi_operand_object*** %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object_ptr.addr, metadata !1481, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_object, metadata !1483, metadata !DIExpression()), !dbg !1484
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1485
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !1486
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %return_object, align 8, !dbg !1484
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1487, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1489, metadata !DIExpression()), !dbg !1490
  %2 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1491
  %node1 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %2, i32 0, i32 3, !dbg !1492
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node1, align 8, !dbg !1492
  %call = call i32 @acpi_ns_get_node(%struct.acpi_namespace_node* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 0, %struct.acpi_namespace_node** %node) #3, !dbg !1493
  store i32 %call, i32* %status, align 4, !dbg !1494
  %4 = load i32, i32* %status, align 4, !dbg !1495
  %tobool = icmp ne i32 %4, 0, !dbg !1495
  br i1 %tobool, label %if.end, label %if.then, !dbg !1497

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1498
  br label %return, !dbg !1498

if.end:                                           ; preds = %entry
  %5 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1500
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1501
  %call2 = call i32 @acpi_ns_check_sorted_list(%struct.acpi_evaluate_info* %5, %union.acpi_operand_object* %6, i32 0, i32 5, i32 1, i8 zeroext 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0)) #3, !dbg !1502
  store i32 %call2, i32* %status, align 4, !dbg !1503
  %7 = load i32, i32* %status, align 4, !dbg !1504
  store i32 %7, i32* %retval, align 4, !dbg !1505
  br label %return, !dbg !1505

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !1506
  ret i32 %8, !dbg !1506
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_check_sorted_list(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object* %return_object, i32 %start_index, i32 %expected_count, i32 %sort_index, i8 zeroext %sort_direction, i8* %sort_key_name) #0 !dbg !1507 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %return_object.addr = alloca %union.acpi_operand_object*, align 8
  %start_index.addr = alloca i32, align 4
  %expected_count.addr = alloca i32, align 4
  %sort_index.addr = alloca i32, align 4
  %sort_direction.addr = alloca i8, align 1
  %sort_key_name.addr = alloca i8*, align 8
  %outer_element_count = alloca i32, align 4
  %outer_elements = alloca %union.acpi_operand_object**, align 8
  %elements = alloca %union.acpi_operand_object**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %i = alloca i32, align 4
  %previous_value = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1510, metadata !DIExpression()), !dbg !1511
  store %union.acpi_operand_object* %return_object, %union.acpi_operand_object** %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_object.addr, metadata !1512, metadata !DIExpression()), !dbg !1513
  store i32 %start_index, i32* %start_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start_index.addr, metadata !1514, metadata !DIExpression()), !dbg !1515
  store i32 %expected_count, i32* %expected_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %expected_count.addr, metadata !1516, metadata !DIExpression()), !dbg !1517
  store i32 %sort_index, i32* %sort_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sort_index.addr, metadata !1518, metadata !DIExpression()), !dbg !1519
  store i8 %sort_direction, i8* %sort_direction.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sort_direction.addr, metadata !1520, metadata !DIExpression()), !dbg !1521
  store i8* %sort_key_name, i8** %sort_key_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %sort_key_name.addr, metadata !1522, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.declare(metadata i32* %outer_element_count, metadata !1524, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %outer_elements, metadata !1526, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %elements, metadata !1528, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1530, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1532, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.declare(metadata i32* %previous_value, metadata !1534, metadata !DIExpression()), !dbg !1535
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object.addr, align 8, !dbg !1536
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !1538
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1539
  %1 = load i8, i8* %type, align 1, !dbg !1539
  %conv = zext i8 %1 to i32, !dbg !1536
  %cmp = icmp ne i32 %conv, 4, !dbg !1540
  br i1 %cmp, label %if.then, label %if.end, !dbg !1541

if.then:                                          ; preds = %entry
  store i32 12291, i32* %retval, align 4, !dbg !1542
  br label %return, !dbg !1542

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object.addr, align 8, !dbg !1544
  %package = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_package*, !dbg !1545
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 9, !dbg !1546
  %3 = load i32, i32* %count, align 4, !dbg !1546
  store i32 %3, i32* %outer_element_count, align 4, !dbg !1547
  %4 = load i32, i32* %outer_element_count, align 4, !dbg !1548
  %tobool = icmp ne i32 %4, 0, !dbg !1548
  br i1 %tobool, label %lor.lhs.false, label %if.then4, !dbg !1550

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %start_index.addr, align 4, !dbg !1551
  %6 = load i32, i32* %outer_element_count, align 4, !dbg !1552
  %cmp2 = icmp uge i32 %5, %6, !dbg !1553
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1554

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 12299, i32* %retval, align 4, !dbg !1555
  br label %return, !dbg !1555

if.end5:                                          ; preds = %lor.lhs.false
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object.addr, align 8, !dbg !1557
  %package6 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_package*, !dbg !1558
  %elements7 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package6, i32 0, i32 6, !dbg !1559
  %8 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements7, align 8, !dbg !1559
  %9 = load i32, i32* %start_index.addr, align 4, !dbg !1560
  %idxprom = zext i32 %9 to i64, !dbg !1557
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %8, i64 %idxprom, !dbg !1557
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %outer_elements, align 8, !dbg !1561
  %10 = load i32, i32* %start_index.addr, align 4, !dbg !1562
  %11 = load i32, i32* %outer_element_count, align 4, !dbg !1563
  %sub = sub i32 %11, %10, !dbg !1563
  store i32 %sub, i32* %outer_element_count, align 4, !dbg !1563
  store i32 0, i32* %previous_value, align 4, !dbg !1564
  %12 = load i8, i8* %sort_direction.addr, align 1, !dbg !1565
  %conv8 = zext i8 %12 to i32, !dbg !1565
  %cmp9 = icmp eq i32 %conv8, 1, !dbg !1567
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !1568

if.then11:                                        ; preds = %if.end5
  store i32 -1, i32* %previous_value, align 4, !dbg !1569
  br label %if.end12, !dbg !1571

if.end12:                                         ; preds = %if.then11, %if.end5
  store i32 0, i32* %i, align 4, !dbg !1572
  br label %for.cond, !dbg !1574

for.cond:                                         ; preds = %for.inc, %if.end12
  %13 = load i32, i32* %i, align 4, !dbg !1575
  %14 = load i32, i32* %outer_element_count, align 4, !dbg !1577
  %cmp13 = icmp ult i32 %13, %14, !dbg !1578
  br i1 %cmp13, label %for.body, label %for.end, !dbg !1579

for.body:                                         ; preds = %for.cond
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %outer_elements, align 8, !dbg !1580
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8, !dbg !1583
  %common15 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_common*, !dbg !1584
  %type16 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common15, i32 0, i32 2, !dbg !1585
  %17 = load i8, i8* %type16, align 1, !dbg !1585
  %conv17 = zext i8 %17 to i32, !dbg !1586
  %cmp18 = icmp ne i32 %conv17, 4, !dbg !1587
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !1588

if.then20:                                        ; preds = %for.body
  store i32 12291, i32* %retval, align 4, !dbg !1589
  br label %return, !dbg !1589

if.end21:                                         ; preds = %for.body
  %18 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %outer_elements, align 8, !dbg !1591
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %18, align 8, !dbg !1593
  %package22 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_package*, !dbg !1594
  %count23 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package22, i32 0, i32 9, !dbg !1595
  %20 = load i32, i32* %count23, align 4, !dbg !1595
  %21 = load i32, i32* %expected_count.addr, align 4, !dbg !1596
  %cmp24 = icmp ult i32 %20, %21, !dbg !1597
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1598

if.then26:                                        ; preds = %if.end21
  store i32 12299, i32* %retval, align 4, !dbg !1599
  br label %return, !dbg !1599

if.end27:                                         ; preds = %if.end21
  %22 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %outer_elements, align 8, !dbg !1601
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %22, align 8, !dbg !1602
  %package28 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_package*, !dbg !1603
  %elements29 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package28, i32 0, i32 6, !dbg !1604
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements29, align 8, !dbg !1604
  store %union.acpi_operand_object** %24, %union.acpi_operand_object*** %elements, align 8, !dbg !1605
  %25 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1606
  %26 = load i32, i32* %sort_index.addr, align 4, !dbg !1607
  %idxprom30 = zext i32 %26 to i64, !dbg !1606
  %arrayidx31 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %25, i64 %idxprom30, !dbg !1606
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx31, align 8, !dbg !1606
  store %union.acpi_operand_object* %27, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1608
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1609
  %common32 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_common*, !dbg !1611
  %type33 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common32, i32 0, i32 2, !dbg !1612
  %29 = load i8, i8* %type33, align 1, !dbg !1612
  %conv34 = zext i8 %29 to i32, !dbg !1609
  %cmp35 = icmp ne i32 %conv34, 1, !dbg !1613
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !1614

if.then37:                                        ; preds = %if.end27
  store i32 12291, i32* %retval, align 4, !dbg !1615
  br label %return, !dbg !1615

if.end38:                                         ; preds = %if.end27
  %30 = load i8, i8* %sort_direction.addr, align 1, !dbg !1617
  %conv39 = zext i8 %30 to i32, !dbg !1617
  %cmp40 = icmp eq i32 %conv39, 0, !dbg !1619
  br i1 %cmp40, label %land.lhs.true, label %lor.lhs.false45, !dbg !1620

land.lhs.true:                                    ; preds = %if.end38
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1621
  %integer = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_integer*, !dbg !1622
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1623
  %32 = load i64, i64* %value, align 8, !dbg !1623
  %33 = load i32, i32* %previous_value, align 4, !dbg !1624
  %conv42 = zext i32 %33 to i64, !dbg !1624
  %cmp43 = icmp ult i64 %32, %conv42, !dbg !1625
  br i1 %cmp43, label %if.then55, label %lor.lhs.false45, !dbg !1626

lor.lhs.false45:                                  ; preds = %land.lhs.true, %if.end38
  %34 = load i8, i8* %sort_direction.addr, align 1, !dbg !1627
  %conv46 = zext i8 %34 to i32, !dbg !1627
  %cmp47 = icmp eq i32 %conv46, 1, !dbg !1628
  br i1 %cmp47, label %land.lhs.true49, label %if.end60, !dbg !1629

land.lhs.true49:                                  ; preds = %lor.lhs.false45
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1630
  %integer50 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_integer*, !dbg !1631
  %value51 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer50, i32 0, i32 6, !dbg !1632
  %36 = load i64, i64* %value51, align 8, !dbg !1632
  %37 = load i32, i32* %previous_value, align 4, !dbg !1633
  %conv52 = zext i32 %37 to i64, !dbg !1633
  %cmp53 = icmp ugt i64 %36, %conv52, !dbg !1634
  br i1 %cmp53, label %if.then55, label %if.end60, !dbg !1635

if.then55:                                        ; preds = %land.lhs.true49, %land.lhs.true
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object.addr, align 8, !dbg !1636
  %package56 = bitcast %union.acpi_operand_object* %38 to %struct.acpi_object_package*, !dbg !1638
  %elements57 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package56, i32 0, i32 6, !dbg !1639
  %39 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements57, align 8, !dbg !1639
  %40 = load i32, i32* %start_index.addr, align 4, !dbg !1640
  %idxprom58 = zext i32 %40 to i64, !dbg !1636
  %arrayidx59 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %39, i64 %idxprom58, !dbg !1636
  %41 = load i32, i32* %outer_element_count, align 4, !dbg !1641
  %42 = load i32, i32* %sort_index.addr, align 4, !dbg !1642
  %43 = load i8, i8* %sort_direction.addr, align 1, !dbg !1643
  call void @acpi_ns_sort_list(%union.acpi_operand_object** %arrayidx59, i32 %41, i32 %42, i8 zeroext %43) #3, !dbg !1644
  %44 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1645
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %44, i32 0, i32 9, !dbg !1646
  %45 = load i32, i32* %return_flags, align 8, !dbg !1647
  %or = or i32 %45, 1, !dbg !1647
  store i32 %or, i32* %return_flags, align 8, !dbg !1647
  store i32 0, i32* %retval, align 4, !dbg !1648
  br label %return, !dbg !1648

if.end60:                                         ; preds = %land.lhs.true49, %lor.lhs.false45
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1649
  %integer61 = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_integer*, !dbg !1650
  %value62 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer61, i32 0, i32 6, !dbg !1651
  %47 = load i64, i64* %value62, align 8, !dbg !1651
  %conv63 = trunc i64 %47 to i32, !dbg !1652
  store i32 %conv63, i32* %previous_value, align 4, !dbg !1653
  %48 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %outer_elements, align 8, !dbg !1654
  %incdec.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %48, i32 1, !dbg !1654
  store %union.acpi_operand_object** %incdec.ptr, %union.acpi_operand_object*** %outer_elements, align 8, !dbg !1654
  br label %for.inc, !dbg !1655

for.inc:                                          ; preds = %if.end60
  %49 = load i32, i32* %i, align 4, !dbg !1656
  %inc = add i32 %49, 1, !dbg !1656
  store i32 %inc, i32* %i, align 4, !dbg !1656
  br label %for.cond, !dbg !1657, !llvm.loop !1658

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1660
  br label %return, !dbg !1660

return:                                           ; preds = %for.end, %if.then55, %if.then37, %if.then26, %if.then20, %if.then4, %if.then
  %50 = load i32, i32* %retval, align 4, !dbg !1661
  ret i32 %50, !dbg !1661
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ns_sort_list(%union.acpi_operand_object** %elements, i32 %count, i32 %index, i8 zeroext %sort_direction) #0 !dbg !1662 {
entry:
  %elements.addr = alloca %union.acpi_operand_object**, align 8
  %count.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %sort_direction.addr = alloca i8, align 1
  %obj_desc1 = alloca %union.acpi_operand_object*, align 8
  %obj_desc2 = alloca %union.acpi_operand_object*, align 8
  %temp_obj = alloca %union.acpi_operand_object*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %union.acpi_operand_object** %elements, %union.acpi_operand_object*** %elements.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %elements.addr, metadata !1665, metadata !DIExpression()), !dbg !1666
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !1667, metadata !DIExpression()), !dbg !1668
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1669, metadata !DIExpression()), !dbg !1670
  store i8 %sort_direction, i8* %sort_direction.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sort_direction.addr, metadata !1671, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc1, metadata !1673, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc2, metadata !1675, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %temp_obj, metadata !1677, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1679, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1681, metadata !DIExpression()), !dbg !1682
  store i32 1, i32* %i, align 4, !dbg !1683
  br label %for.cond, !dbg !1685

for.cond:                                         ; preds = %for.inc40, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1686
  %1 = load i32, i32* %count.addr, align 4, !dbg !1688
  %cmp = icmp ult i32 %0, %1, !dbg !1689
  br i1 %cmp, label %for.body, label %for.end41, !dbg !1690

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %count.addr, align 4, !dbg !1691
  %sub = sub i32 %2, 1, !dbg !1694
  store i32 %sub, i32* %j, align 4, !dbg !1695
  br label %for.cond1, !dbg !1696

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4, !dbg !1697
  %4 = load i32, i32* %i, align 4, !dbg !1699
  %cmp2 = icmp uge i32 %3, %4, !dbg !1700
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !1701

for.body3:                                        ; preds = %for.cond1
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements.addr, align 8, !dbg !1702
  %6 = load i32, i32* %j, align 4, !dbg !1704
  %sub4 = sub i32 %6, 1, !dbg !1705
  %idxprom = zext i32 %sub4 to i64, !dbg !1702
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %5, i64 %idxprom, !dbg !1702
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !1702
  %package = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_package*, !dbg !1706
  %elements5 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 6, !dbg !1707
  %8 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements5, align 8, !dbg !1707
  %9 = load i32, i32* %index.addr, align 4, !dbg !1708
  %idxprom6 = zext i32 %9 to i64, !dbg !1702
  %arrayidx7 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %8, i64 %idxprom6, !dbg !1702
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx7, align 8, !dbg !1702
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %obj_desc1, align 8, !dbg !1709
  %11 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements.addr, align 8, !dbg !1710
  %12 = load i32, i32* %j, align 4, !dbg !1711
  %idxprom8 = zext i32 %12 to i64, !dbg !1710
  %arrayidx9 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %11, i64 %idxprom8, !dbg !1710
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx9, align 8, !dbg !1710
  %package10 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_package*, !dbg !1712
  %elements11 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package10, i32 0, i32 6, !dbg !1713
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements11, align 8, !dbg !1713
  %15 = load i32, i32* %index.addr, align 4, !dbg !1714
  %idxprom12 = zext i32 %15 to i64, !dbg !1710
  %arrayidx13 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %14, i64 %idxprom12, !dbg !1710
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx13, align 8, !dbg !1710
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %obj_desc2, align 8, !dbg !1715
  %17 = load i8, i8* %sort_direction.addr, align 1, !dbg !1716
  %conv = zext i8 %17 to i32, !dbg !1716
  %cmp14 = icmp eq i32 %conv, 0, !dbg !1718
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false, !dbg !1719

land.lhs.true:                                    ; preds = %for.body3
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc1, align 8, !dbg !1720
  %integer = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_integer*, !dbg !1721
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1722
  %19 = load i64, i64* %value, align 8, !dbg !1722
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc2, align 8, !dbg !1723
  %integer16 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_integer*, !dbg !1724
  %value17 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer16, i32 0, i32 6, !dbg !1725
  %21 = load i64, i64* %value17, align 8, !dbg !1725
  %cmp18 = icmp ugt i64 %19, %21, !dbg !1726
  br i1 %cmp18, label %if.then, label %lor.lhs.false, !dbg !1727

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body3
  %22 = load i8, i8* %sort_direction.addr, align 1, !dbg !1728
  %conv20 = zext i8 %22 to i32, !dbg !1728
  %cmp21 = icmp eq i32 %conv20, 1, !dbg !1729
  br i1 %cmp21, label %land.lhs.true23, label %if.end, !dbg !1730

land.lhs.true23:                                  ; preds = %lor.lhs.false
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc1, align 8, !dbg !1731
  %integer24 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_integer*, !dbg !1732
  %value25 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer24, i32 0, i32 6, !dbg !1733
  %24 = load i64, i64* %value25, align 8, !dbg !1733
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc2, align 8, !dbg !1734
  %integer26 = bitcast %union.acpi_operand_object* %25 to %struct.acpi_object_integer*, !dbg !1735
  %value27 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer26, i32 0, i32 6, !dbg !1736
  %26 = load i64, i64* %value27, align 8, !dbg !1736
  %cmp28 = icmp ult i64 %24, %26, !dbg !1737
  br i1 %cmp28, label %if.then, label %if.end, !dbg !1738

if.then:                                          ; preds = %land.lhs.true23, %land.lhs.true
  %27 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements.addr, align 8, !dbg !1739
  %28 = load i32, i32* %j, align 4, !dbg !1741
  %sub30 = sub i32 %28, 1, !dbg !1742
  %idxprom31 = zext i32 %sub30 to i64, !dbg !1739
  %arrayidx32 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %27, i64 %idxprom31, !dbg !1739
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx32, align 8, !dbg !1739
  store %union.acpi_operand_object* %29, %union.acpi_operand_object** %temp_obj, align 8, !dbg !1743
  %30 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements.addr, align 8, !dbg !1744
  %31 = load i32, i32* %j, align 4, !dbg !1745
  %idxprom33 = zext i32 %31 to i64, !dbg !1744
  %arrayidx34 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %30, i64 %idxprom33, !dbg !1744
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx34, align 8, !dbg !1744
  %33 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements.addr, align 8, !dbg !1746
  %34 = load i32, i32* %j, align 4, !dbg !1747
  %sub35 = sub i32 %34, 1, !dbg !1748
  %idxprom36 = zext i32 %sub35 to i64, !dbg !1746
  %arrayidx37 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %33, i64 %idxprom36, !dbg !1746
  store %union.acpi_operand_object* %32, %union.acpi_operand_object** %arrayidx37, align 8, !dbg !1749
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_obj, align 8, !dbg !1750
  %36 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements.addr, align 8, !dbg !1751
  %37 = load i32, i32* %j, align 4, !dbg !1752
  %idxprom38 = zext i32 %37 to i64, !dbg !1751
  %arrayidx39 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %36, i64 %idxprom38, !dbg !1751
  store %union.acpi_operand_object* %35, %union.acpi_operand_object** %arrayidx39, align 8, !dbg !1753
  br label %if.end, !dbg !1754

if.end:                                           ; preds = %if.then, %land.lhs.true23, %lor.lhs.false
  br label %for.inc, !dbg !1755

for.inc:                                          ; preds = %if.end
  %38 = load i32, i32* %j, align 4, !dbg !1756
  %dec = add i32 %38, -1, !dbg !1756
  store i32 %dec, i32* %j, align 4, !dbg !1756
  br label %for.cond1, !dbg !1757, !llvm.loop !1758

for.end:                                          ; preds = %for.cond1
  br label %for.inc40, !dbg !1760

for.inc40:                                        ; preds = %for.end
  %39 = load i32, i32* %i, align 4, !dbg !1761
  %inc = add i32 %39, 1, !dbg !1761
  store i32 %inc, i32* %i, align 4, !dbg !1761
  br label %for.cond, !dbg !1762, !llvm.loop !1763

for.end41:                                        ; preds = %for.cond
  ret void, !dbg !1765
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_predefined_warning(i8*, i32, i8*, i16 zeroext, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ns_remove_element(%union.acpi_operand_object* %obj_desc, i32 %index) #0 !dbg !1766 {
entry:
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %index.addr = alloca i32, align 4
  %source = alloca %union.acpi_operand_object**, align 8
  %dest = alloca %union.acpi_operand_object**, align 8
  %count = alloca i32, align 4
  %new_count = alloca i32, align 4
  %i = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1769, metadata !DIExpression()), !dbg !1770
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1771, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %source, metadata !1773, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %dest, metadata !1775, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.declare(metadata i32* %count, metadata !1777, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.declare(metadata i32* %new_count, metadata !1779, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1781, metadata !DIExpression()), !dbg !1782
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1783
  %package = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_package*, !dbg !1784
  %count1 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 9, !dbg !1785
  %1 = load i32, i32* %count1, align 4, !dbg !1785
  store i32 %1, i32* %count, align 4, !dbg !1786
  %2 = load i32, i32* %count, align 4, !dbg !1787
  %sub = sub i32 %2, 1, !dbg !1788
  store i32 %sub, i32* %new_count, align 4, !dbg !1789
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1790
  %package2 = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_package*, !dbg !1791
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package2, i32 0, i32 6, !dbg !1792
  %4 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1792
  store %union.acpi_operand_object** %4, %union.acpi_operand_object*** %source, align 8, !dbg !1793
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %source, align 8, !dbg !1794
  store %union.acpi_operand_object** %5, %union.acpi_operand_object*** %dest, align 8, !dbg !1795
  store i32 0, i32* %i, align 4, !dbg !1796
  br label %for.cond, !dbg !1798

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !1799
  %7 = load i32, i32* %count, align 4, !dbg !1801
  %cmp = icmp ult i32 %6, %7, !dbg !1802
  br i1 %cmp, label %for.body, label %for.end, !dbg !1803

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !1804
  %9 = load i32, i32* %index.addr, align 4, !dbg !1807
  %cmp3 = icmp eq i32 %8, %9, !dbg !1808
  br i1 %cmp3, label %if.then, label %if.else, !dbg !1809

if.then:                                          ; preds = %for.body
  %10 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %source, align 8, !dbg !1810
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8, !dbg !1812
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %11) #3, !dbg !1813
  %12 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %source, align 8, !dbg !1814
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8, !dbg !1815
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %13) #3, !dbg !1816
  br label %if.end, !dbg !1817

if.else:                                          ; preds = %for.body
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %source, align 8, !dbg !1818
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8, !dbg !1820
  %16 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %dest, align 8, !dbg !1821
  store %union.acpi_operand_object* %15, %union.acpi_operand_object** %16, align 8, !dbg !1822
  %17 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %dest, align 8, !dbg !1823
  %incdec.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %17, i32 1, !dbg !1823
  store %union.acpi_operand_object** %incdec.ptr, %union.acpi_operand_object*** %dest, align 8, !dbg !1823
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %source, align 8, !dbg !1824
  %incdec.ptr4 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %18, i32 1, !dbg !1824
  store %union.acpi_operand_object** %incdec.ptr4, %union.acpi_operand_object*** %source, align 8, !dbg !1824
  br label %for.inc, !dbg !1825

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !dbg !1826
  %inc = add i32 %19, 1, !dbg !1826
  store i32 %inc, i32* %i, align 4, !dbg !1826
  br label %for.cond, !dbg !1827, !llvm.loop !1828

for.end:                                          ; preds = %for.cond
  %20 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %dest, align 8, !dbg !1830
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %20, align 8, !dbg !1831
  %21 = load i32, i32* %new_count, align 4, !dbg !1832
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1833
  %package5 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_package*, !dbg !1834
  %count6 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package5, i32 0, i32 9, !dbg !1835
  store i32 %21, i32* %count6, align 4, !dbg !1836
  ret void, !dbg !1837
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_string_object(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @__toupper(i8 zeroext %c) #0 !dbg !1838 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !1842, metadata !DIExpression()), !dbg !1843
  %0 = load i8, i8* %c.addr, align 1, !dbg !1844
  %conv = zext i8 %0 to i32, !dbg !1844
  %idxprom = sext i32 %conv to i64, !dbg !1844
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !1844
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1844
  %conv1 = zext i8 %1 to i32, !dbg !1844
  %and = and i32 %conv1, 2, !dbg !1844
  %cmp = icmp ne i32 %and, 0, !dbg !1844
  br i1 %cmp, label %if.then, label %if.end, !dbg !1846

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1, !dbg !1847
  %conv3 = zext i8 %2 to i32, !dbg !1847
  %sub = sub i32 %conv3, 32, !dbg !1847
  %conv4 = trunc i32 %sub to i8, !dbg !1847
  store i8 %conv4, i8* %c.addr, align 1, !dbg !1847
  br label %if.end, !dbg !1848

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %c.addr, align 1, !dbg !1849
  ret i8 %3, !dbg !1850
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_node(%struct.acpi_namespace_node*, i8*, i32, %struct.acpi_namespace_node**) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!865, !866, !867, !868}
!llvm.ident = !{!869}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_ns_repairable_names", scope: !2, file: !3, line: 114, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsrepair2.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !12, !13, !7, !15, !16, !17}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !14, line: 421, baseType: !7)
!14 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !{!0, !19}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 80, elements: !23)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!23 = !{!24}
!24 = !DISubrange(count: 10)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 1280, elements: !23)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_repair_info", file: !3, line: 27, size: 128, elements: !28)
!28 = !{!29, !33}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !27, file: !3, line: 28, baseType: !30, size: 32)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 4)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "repair_function", scope: !27, file: !3, line: 29, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_repair_function", file: !3, line: 23, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{!13, !38, !116}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !40, line: 152, size: 704, elements: !41)
!40 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !804, !806, !807, !808, !809, !810, !856, !857, !858, !859, !860, !861, !862, !863, !864}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !39, file: !40, line: 155, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !45, line: 133, size: 384, elements: !46)
!45 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !791, !792, !793, !794, !800, !801, !802, !803}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !44, file: !45, line: 134, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !50, line: 367, size: 576, elements: !51)
!50 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !65, !81, !92, !106, !120, !129, !442, !459, !474, !487, !565, !577, !591, !601, !619, !641, !660, !679, !698, !711, !737, !754, !767, !781, !790}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !49, file: !50, line: 368, baseType: !53, size: 128)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !50, line: 73, size: 128, elements: !54)
!54 = !{!55, !56, !59, !60, !64}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !53, file: !50, line: 74, baseType: !48, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !53, file: !50, line: 74, baseType: !57, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !17)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !50, line: 74, baseType: !57, size: 8, offset: 72)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !53, file: !50, line: 74, baseType: !61, size: 16, offset: 80)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !63)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !50, line: 74, baseType: !57, size: 8, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !49, file: !50, line: 369, baseType: !66, size: 192)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !50, line: 76, size: 192, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !77}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !50, line: 77, baseType: !48, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !50, line: 77, baseType: !57, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !50, line: 77, baseType: !57, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !50, line: 77, baseType: !61, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !50, line: 77, baseType: !57, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !66, file: !50, line: 77, baseType: !74, size: 24, offset: 104)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 24, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !66, file: !50, line: 78, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !80)
!80 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !49, file: !50, line: 370, baseType: !82, size: 256)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !50, line: 93, size: 256, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !91}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !82, file: !50, line: 94, baseType: !48, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !50, line: 94, baseType: !57, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !50, line: 94, baseType: !57, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !82, file: !50, line: 94, baseType: !61, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !50, line: 94, baseType: !57, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !82, file: !50, line: 94, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !82, file: !50, line: 94, baseType: !7, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !49, file: !50, line: 371, baseType: !93, size: 384)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !50, line: 97, size: 384, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !102, !103, !104, !105}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !93, file: !50, line: 98, baseType: !48, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !50, line: 98, baseType: !57, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !50, line: 98, baseType: !57, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !93, file: !50, line: 98, baseType: !61, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !50, line: 98, baseType: !57, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !93, file: !50, line: 98, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !93, file: !50, line: 98, baseType: !7, size: 32, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !93, file: !50, line: 99, baseType: !7, size: 32, offset: 224)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !93, file: !50, line: 100, baseType: !101, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !93, file: !50, line: 101, baseType: !43, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !49, file: !50, line: 372, baseType: !107, size: 384)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !50, line: 104, size: 384, elements: !108)
!108 = !{!109, !110, !111, !112, !113, !114, !115, !117, !118, !119}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !107, file: !50, line: 105, baseType: !48, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !107, file: !50, line: 105, baseType: !57, size: 8, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !50, line: 105, baseType: !57, size: 8, offset: 72)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !107, file: !50, line: 105, baseType: !61, size: 16, offset: 80)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !50, line: 105, baseType: !57, size: 8, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !107, file: !50, line: 105, baseType: !43, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !107, file: !50, line: 106, baseType: !116, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !107, file: !50, line: 107, baseType: !101, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !107, file: !50, line: 108, baseType: !7, size: 32, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !107, file: !50, line: 109, baseType: !7, size: 32, offset: 352)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !49, file: !50, line: 373, baseType: !121, size: 192)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !50, line: 118, size: 192, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !121, file: !50, line: 119, baseType: !48, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !121, file: !50, line: 119, baseType: !57, size: 8, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !121, file: !50, line: 119, baseType: !57, size: 8, offset: 72)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !121, file: !50, line: 119, baseType: !61, size: 16, offset: 80)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !121, file: !50, line: 119, baseType: !57, size: 8, offset: 96)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !121, file: !50, line: 119, baseType: !12, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !49, file: !50, line: 374, baseType: !130, size: 448)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !50, line: 143, size: 448, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !439, !440, !441}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !130, file: !50, line: 144, baseType: !48, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !50, line: 144, baseType: !57, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !50, line: 144, baseType: !57, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !130, file: !50, line: 144, baseType: !61, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !50, line: 144, baseType: !57, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !130, file: !50, line: 144, baseType: !57, size: 8, offset: 104)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !130, file: !50, line: 145, baseType: !57, size: 8, offset: 112)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !130, file: !50, line: 146, baseType: !57, size: 8, offset: 120)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !130, file: !50, line: 147, baseType: !48, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !130, file: !50, line: 148, baseType: !48, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !130, file: !50, line: 149, baseType: !101, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !130, file: !50, line: 153, baseType: !144, size: 64, offset: 320)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !50, line: 150, size: 64, elements: !145)
!145 = !{!146, !438}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !144, file: !50, line: 151, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !45, line: 248, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!13, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !40, line: 37, size: 9024, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !384, !385, !386, !387, !388, !392, !394, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !421, !422, !423, !424, !425, !426, !427, !428, !430, !436}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !40, line: 38, baseType: !151, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !152, file: !40, line: 39, baseType: !57, size: 8, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !152, file: !40, line: 40, baseType: !57, size: 8, offset: 72)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !152, file: !40, line: 41, baseType: !61, size: 16, offset: 80)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !152, file: !40, line: 42, baseType: !57, size: 8, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !152, file: !40, line: 43, baseType: !57, size: 8, offset: 104)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !152, file: !40, line: 44, baseType: !57, size: 8, offset: 112)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !152, file: !40, line: 45, baseType: !162, size: 16, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !14, line: 445, baseType: !61)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !152, file: !40, line: 46, baseType: !57, size: 8, offset: 144)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !152, file: !40, line: 47, baseType: !57, size: 8, offset: 152)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !152, file: !40, line: 48, baseType: !57, size: 8, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !152, file: !40, line: 49, baseType: !57, size: 8, offset: 168)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !152, file: !40, line: 50, baseType: !57, size: 8, offset: 176)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !152, file: !40, line: 51, baseType: !57, size: 8, offset: 184)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !152, file: !40, line: 52, baseType: !57, size: 8, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !152, file: !40, line: 53, baseType: !57, size: 8, offset: 200)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !152, file: !40, line: 54, baseType: !101, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !152, file: !40, line: 55, baseType: !7, size: 32, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !152, file: !40, line: 56, baseType: !7, size: 32, offset: 352)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !152, file: !40, line: 57, baseType: !7, size: 32, offset: 384)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !152, file: !40, line: 58, baseType: !7, size: 32, offset: 416)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !152, file: !40, line: 60, baseType: !177, size: 640, offset: 448)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !45, line: 893, size: 640, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !265, !266, !382, !383}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !177, file: !45, line: 894, baseType: !101, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !177, file: !45, line: 895, baseType: !101, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !177, file: !45, line: 896, baseType: !101, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !177, file: !45, line: 897, baseType: !101, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !177, file: !45, line: 898, baseType: !101, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !177, file: !45, line: 899, baseType: !185, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !45, line: 875, size: 1600, elements: !187)
!187 = !{!188, !208, !224}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !186, file: !45, line: 876, baseType: !189, size: 448)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !45, line: 828, size: 448, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !207}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !189, file: !45, line: 829, baseType: !185, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !189, file: !45, line: 829, baseType: !57, size: 8, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !45, line: 829, baseType: !57, size: 8, offset: 72)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !189, file: !45, line: 829, baseType: !61, size: 16, offset: 80)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !189, file: !45, line: 829, baseType: !101, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !45, line: 829, baseType: !185, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !189, file: !45, line: 829, baseType: !43, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !189, file: !45, line: 829, baseType: !199, size: 64, offset: 320)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !45, line: 716, size: 64, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !199, file: !45, line: 717, baseType: !78, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !199, file: !45, line: 718, baseType: !7, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !199, file: !45, line: 719, baseType: !90, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !199, file: !45, line: 720, baseType: !101, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !199, file: !45, line: 721, baseType: !90, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !199, file: !45, line: 722, baseType: !185, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !189, file: !45, line: 829, baseType: !57, size: 8, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !186, file: !45, line: 877, baseType: !209, size: 640)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !45, line: 835, size: 640, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !209, file: !45, line: 836, baseType: !185, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !209, file: !45, line: 836, baseType: !57, size: 8, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !209, file: !45, line: 836, baseType: !57, size: 8, offset: 72)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !209, file: !45, line: 836, baseType: !61, size: 16, offset: 80)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !209, file: !45, line: 836, baseType: !101, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !45, line: 836, baseType: !185, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !209, file: !45, line: 836, baseType: !43, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !209, file: !45, line: 836, baseType: !199, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !209, file: !45, line: 836, baseType: !57, size: 8, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !209, file: !45, line: 836, baseType: !90, size: 64, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !209, file: !45, line: 837, baseType: !101, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !209, file: !45, line: 838, baseType: !7, size: 32, offset: 576)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !45, line: 839, baseType: !7, size: 32, offset: 608)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !186, file: !45, line: 878, baseType: !225, size: 1600)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !45, line: 846, size: 1600, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !45, line: 847, baseType: !185, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !225, file: !45, line: 847, baseType: !57, size: 8, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !45, line: 847, baseType: !57, size: 8, offset: 72)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !225, file: !45, line: 847, baseType: !61, size: 16, offset: 80)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !225, file: !45, line: 847, baseType: !101, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !45, line: 847, baseType: !185, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !225, file: !45, line: 847, baseType: !43, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !225, file: !45, line: 847, baseType: !199, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !225, file: !45, line: 847, baseType: !57, size: 8, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !225, file: !45, line: 847, baseType: !185, size: 64, offset: 448)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !225, file: !45, line: 848, baseType: !185, size: 64, offset: 512)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !225, file: !45, line: 849, baseType: !90, size: 64, offset: 576)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !225, file: !45, line: 850, baseType: !57, size: 8, offset: 640)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !225, file: !45, line: 851, baseType: !90, size: 64, offset: 704)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !225, file: !45, line: 852, baseType: !90, size: 64, offset: 768)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !225, file: !45, line: 853, baseType: !90, size: 64, offset: 832)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !225, file: !45, line: 854, baseType: !30, size: 32, offset: 896)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !225, file: !45, line: 855, baseType: !7, size: 32, offset: 928)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !225, file: !45, line: 856, baseType: !7, size: 32, offset: 960)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !225, file: !45, line: 857, baseType: !7, size: 32, offset: 992)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !225, file: !45, line: 858, baseType: !7, size: 32, offset: 1024)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !225, file: !45, line: 859, baseType: !7, size: 32, offset: 1056)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !225, file: !45, line: 860, baseType: !7, size: 32, offset: 1088)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !225, file: !45, line: 861, baseType: !7, size: 32, offset: 1120)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !225, file: !45, line: 862, baseType: !7, size: 32, offset: 1152)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !225, file: !45, line: 863, baseType: !7, size: 32, offset: 1184)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !225, file: !45, line: 864, baseType: !7, size: 32, offset: 1216)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !225, file: !45, line: 865, baseType: !7, size: 32, offset: 1248)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !225, file: !45, line: 866, baseType: !7, size: 32, offset: 1280)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !225, file: !45, line: 867, baseType: !7, size: 32, offset: 1312)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !225, file: !45, line: 868, baseType: !61, size: 16, offset: 1344)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !225, file: !45, line: 869, baseType: !57, size: 8, offset: 1360)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !225, file: !45, line: 870, baseType: !57, size: 8, offset: 1368)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !225, file: !45, line: 871, baseType: !57, size: 8, offset: 1376)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !225, file: !45, line: 872, baseType: !262, size: 160, offset: 1384)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 20)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !177, file: !45, line: 900, baseType: !43, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !177, file: !45, line: 901, baseType: !267, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !45, line: 663, size: 640, elements: !269)
!269 = !{!270, !278, !291, !300, !309, !322, !336, !348, !360}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !268, file: !45, line: 664, baseType: !271, size: 128)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !45, line: 567, size: 128, elements: !272)
!272 = !{!273, !274, !275, !276, !277}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !45, line: 568, baseType: !12, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !271, file: !45, line: 568, baseType: !57, size: 8, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !271, file: !45, line: 568, baseType: !57, size: 8, offset: 72)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !271, file: !45, line: 568, baseType: !61, size: 16, offset: 80)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !271, file: !45, line: 568, baseType: !61, size: 16, offset: 96)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !268, file: !45, line: 665, baseType: !279, size: 384)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !45, line: 593, size: 384, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !45, line: 594, baseType: !12, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !45, line: 594, baseType: !57, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !45, line: 594, baseType: !57, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !45, line: 594, baseType: !61, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !45, line: 594, baseType: !61, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !279, file: !45, line: 594, baseType: !61, size: 16, offset: 112)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !279, file: !45, line: 595, baseType: !185, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !279, file: !45, line: 596, baseType: !101, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !279, file: !45, line: 597, baseType: !101, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !279, file: !45, line: 598, baseType: !78, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !268, file: !45, line: 666, baseType: !292, size: 192)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !45, line: 573, size: 192, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !45, line: 574, baseType: !12, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !292, file: !45, line: 574, baseType: !57, size: 8, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !45, line: 574, baseType: !57, size: 8, offset: 72)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !292, file: !45, line: 574, baseType: !61, size: 16, offset: 80)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !292, file: !45, line: 574, baseType: !61, size: 16, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !292, file: !45, line: 574, baseType: !48, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !268, file: !45, line: 667, baseType: !301, size: 192)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !45, line: 604, size: 192, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !45, line: 605, baseType: !12, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !45, line: 605, baseType: !57, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !45, line: 605, baseType: !57, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !45, line: 605, baseType: !61, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !45, line: 605, baseType: !61, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !301, file: !45, line: 605, baseType: !43, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !268, file: !45, line: 668, baseType: !310, size: 448)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !45, line: 608, size: 448, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317, !318, !319, !320, !321}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !45, line: 609, baseType: !12, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !45, line: 609, baseType: !57, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !45, line: 609, baseType: !57, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !45, line: 609, baseType: !61, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !45, line: 609, baseType: !61, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !310, file: !45, line: 609, baseType: !7, size: 32, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !310, file: !45, line: 610, baseType: !185, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !310, file: !45, line: 611, baseType: !101, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !310, file: !45, line: 612, baseType: !101, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !310, file: !45, line: 613, baseType: !7, size: 32, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !268, file: !45, line: 669, baseType: !323, size: 512)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !45, line: 580, size: 512, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !45, line: 581, baseType: !12, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !323, file: !45, line: 581, baseType: !57, size: 8, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !45, line: 581, baseType: !57, size: 8, offset: 72)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !323, file: !45, line: 581, baseType: !61, size: 16, offset: 80)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !323, file: !45, line: 581, baseType: !61, size: 16, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !323, file: !45, line: 581, baseType: !7, size: 32, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !323, file: !45, line: 582, baseType: !48, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !323, file: !45, line: 583, baseType: !48, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !323, file: !45, line: 584, baseType: !151, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !323, file: !45, line: 585, baseType: !12, size: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !323, file: !45, line: 586, baseType: !7, size: 32, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !268, file: !45, line: 670, baseType: !337, size: 320)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !45, line: 620, size: 320, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !45, line: 621, baseType: !12, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !337, file: !45, line: 621, baseType: !57, size: 8, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !337, file: !45, line: 621, baseType: !57, size: 8, offset: 72)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !337, file: !45, line: 621, baseType: !61, size: 16, offset: 80)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !337, file: !45, line: 621, baseType: !61, size: 16, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !337, file: !45, line: 621, baseType: !57, size: 8, offset: 112)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !337, file: !45, line: 622, baseType: !151, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !337, file: !45, line: 623, baseType: !48, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !337, file: !45, line: 624, baseType: !78, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !268, file: !45, line: 671, baseType: !349, size: 640)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !45, line: 631, size: 640, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !349, file: !45, line: 632, baseType: !12, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !349, file: !45, line: 632, baseType: !57, size: 8, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !349, file: !45, line: 632, baseType: !57, size: 8, offset: 72)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !349, file: !45, line: 632, baseType: !61, size: 16, offset: 80)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !349, file: !45, line: 632, baseType: !61, size: 16, offset: 96)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !349, file: !45, line: 633, baseType: !357, size: 512, offset: 128)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 512, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 8)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !268, file: !45, line: 672, baseType: !361, size: 320)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !45, line: 654, size: 320, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !45, line: 655, baseType: !12, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !361, file: !45, line: 655, baseType: !57, size: 8, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !45, line: 655, baseType: !57, size: 8, offset: 72)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !361, file: !45, line: 655, baseType: !61, size: 16, offset: 80)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !361, file: !45, line: 655, baseType: !61, size: 16, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !361, file: !45, line: 655, baseType: !57, size: 8, offset: 112)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !361, file: !45, line: 656, baseType: !43, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !361, file: !45, line: 657, baseType: !48, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !361, file: !45, line: 658, baseType: !372, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !45, line: 645, size: 128, elements: !374)
!374 = !{!375, !381}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !373, file: !45, line: 646, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !14, line: 1052, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !380, !7, !12}
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !14, line: 424, baseType: !12)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !373, file: !45, line: 647, baseType: !12, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !177, file: !45, line: 902, baseType: !185, size: 64, offset: 512)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !177, file: !45, line: 903, baseType: !7, size: 32, offset: 576)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !152, file: !40, line: 61, baseType: !7, size: 32, offset: 1088)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !152, file: !40, line: 62, baseType: !7, size: 32, offset: 1120)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !152, file: !40, line: 63, baseType: !61, size: 16, offset: 1152)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !152, file: !40, line: 64, baseType: !57, size: 8, offset: 1168)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !152, file: !40, line: 66, baseType: !389, size: 2688, offset: 1216)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2688, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 7)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !152, file: !40, line: 67, baseType: !393, size: 3072, offset: 3904)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 3072, elements: !358)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !152, file: !40, line: 68, baseType: !395, size: 576, offset: 6976)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 576, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 9)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !152, file: !40, line: 69, baseType: !116, size: 64, offset: 7552)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !152, file: !40, line: 71, baseType: !101, size: 64, offset: 7616)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !152, file: !40, line: 72, baseType: !116, size: 64, offset: 7680)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !152, file: !40, line: 73, baseType: !267, size: 64, offset: 7744)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !152, file: !40, line: 74, baseType: !43, size: 64, offset: 7808)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !152, file: !40, line: 75, baseType: !48, size: 64, offset: 7872)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !152, file: !40, line: 76, baseType: !43, size: 64, offset: 7936)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !152, file: !40, line: 77, baseType: !185, size: 64, offset: 8000)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !152, file: !40, line: 78, baseType: !48, size: 64, offset: 8064)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !152, file: !40, line: 79, baseType: !43, size: 64, offset: 8128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !152, file: !40, line: 80, baseType: !90, size: 64, offset: 8192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !152, file: !40, line: 81, baseType: !185, size: 64, offset: 8256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !152, file: !40, line: 82, baseType: !411, size: 64, offset: 8320)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !45, line: 702, size: 128, elements: !414)
!414 = !{!415, !416, !417, !418, !419, !420}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !413, file: !45, line: 706, baseType: !7, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !413, file: !45, line: 707, baseType: !7, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !413, file: !45, line: 708, baseType: !61, size: 16, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !413, file: !45, line: 709, baseType: !57, size: 8, offset: 80)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !413, file: !45, line: 710, baseType: !57, size: 8, offset: 88)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !413, file: !45, line: 711, baseType: !57, size: 8, offset: 96)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !152, file: !40, line: 83, baseType: !185, size: 64, offset: 8384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !152, file: !40, line: 84, baseType: !48, size: 64, offset: 8448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !152, file: !40, line: 85, baseType: !267, size: 64, offset: 8512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !152, file: !40, line: 86, baseType: !48, size: 64, offset: 8576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !152, file: !40, line: 87, baseType: !267, size: 64, offset: 8640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !152, file: !40, line: 88, baseType: !185, size: 64, offset: 8704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !152, file: !40, line: 89, baseType: !185, size: 64, offset: 8768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !152, file: !40, line: 90, baseType: !429, size: 64, offset: 8832)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !152, file: !40, line: 91, baseType: !431, size: 64, offset: 8896)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !45, line: 637, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!13, !151, !435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !152, file: !40, line: 92, baseType: !437, size: 64, offset: 8960)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !45, line: 641, baseType: !148)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !144, file: !50, line: 152, baseType: !48, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !130, file: !50, line: 155, baseType: !7, size: 32, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !130, file: !50, line: 156, baseType: !162, size: 16, offset: 416)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !130, file: !50, line: 157, baseType: !57, size: 8, offset: 432)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !49, file: !50, line: 375, baseType: !443, size: 576)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !50, line: 122, size: 576, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !443, file: !50, line: 123, baseType: !48, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !443, file: !50, line: 123, baseType: !57, size: 8, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !443, file: !50, line: 123, baseType: !57, size: 8, offset: 72)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !443, file: !50, line: 123, baseType: !61, size: 16, offset: 80)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !443, file: !50, line: 123, baseType: !57, size: 8, offset: 96)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !443, file: !50, line: 123, baseType: !57, size: 8, offset: 104)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !443, file: !50, line: 124, baseType: !61, size: 16, offset: 112)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !443, file: !50, line: 125, baseType: !12, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !443, file: !50, line: 126, baseType: !78, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !443, file: !50, line: 127, baseType: !429, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !443, file: !50, line: 128, baseType: !48, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !443, file: !50, line: 129, baseType: !48, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !443, file: !50, line: 130, baseType: !43, size: 64, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !443, file: !50, line: 131, baseType: !57, size: 8, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !49, file: !50, line: 376, baseType: !460, size: 448)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !50, line: 134, size: 448, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !473}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !460, file: !50, line: 135, baseType: !48, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !460, file: !50, line: 135, baseType: !57, size: 8, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !460, file: !50, line: 135, baseType: !57, size: 8, offset: 72)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !460, file: !50, line: 135, baseType: !61, size: 16, offset: 80)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !50, line: 135, baseType: !57, size: 8, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !460, file: !50, line: 135, baseType: !57, size: 8, offset: 104)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !460, file: !50, line: 136, baseType: !43, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !460, file: !50, line: 137, baseType: !48, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !50, line: 138, baseType: !48, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !460, file: !50, line: 139, baseType: !472, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !14, line: 129, baseType: !78)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !460, file: !50, line: 140, baseType: !7, size: 32, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !49, file: !50, line: 377, baseType: !475, size: 320)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !50, line: 184, size: 320, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !486}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !475, file: !50, line: 185, baseType: !48, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !475, file: !50, line: 185, baseType: !57, size: 8, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !475, file: !50, line: 185, baseType: !57, size: 8, offset: 72)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !475, file: !50, line: 185, baseType: !61, size: 16, offset: 80)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !50, line: 185, baseType: !57, size: 8, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !475, file: !50, line: 185, baseType: !483, size: 128, offset: 128)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 128, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 2)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !475, file: !50, line: 185, baseType: !48, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !49, file: !50, line: 378, baseType: !488, size: 384)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !50, line: 187, size: 384, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !496, !497}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !488, file: !50, line: 188, baseType: !48, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !488, file: !50, line: 188, baseType: !57, size: 8, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !50, line: 188, baseType: !57, size: 8, offset: 72)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !488, file: !50, line: 188, baseType: !61, size: 16, offset: 80)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !50, line: 188, baseType: !57, size: 8, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !488, file: !50, line: 189, baseType: !483, size: 128, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !488, file: !50, line: 189, baseType: !48, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !488, file: !50, line: 189, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !45, line: 480, size: 576, elements: !500)
!500 = !{!501, !502, !503, !504, !512, !527, !559, !560, !561, !562, !563, !564}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !499, file: !45, line: 481, baseType: !43, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !499, file: !45, line: 482, baseType: !498, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !45, line: 483, baseType: !498, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !499, file: !45, line: 484, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !45, line: 497, size: 256, elements: !507)
!507 = !{!508, !509, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !506, file: !45, line: 498, baseType: !505, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !45, line: 499, baseType: !505, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !506, file: !45, line: 500, baseType: !498, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !506, file: !45, line: 501, baseType: !7, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !499, file: !45, line: 485, baseType: !513, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !45, line: 466, size: 320, elements: !515)
!515 = !{!516, !521, !522, !523, !524, !525, !526}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !514, file: !45, line: 467, baseType: !517, size: 128)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !45, line: 459, size: 128, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !517, file: !45, line: 460, baseType: !57, size: 8)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !517, file: !45, line: 461, baseType: !78, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !514, file: !45, line: 468, baseType: !517, size: 128, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !514, file: !45, line: 469, baseType: !61, size: 16, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !514, file: !45, line: 470, baseType: !57, size: 8, offset: 272)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !514, file: !45, line: 471, baseType: !57, size: 8, offset: 280)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !514, file: !45, line: 472, baseType: !57, size: 8, offset: 288)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !514, file: !45, line: 473, baseType: !57, size: 8, offset: 296)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !499, file: !45, line: 486, baseType: !528, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !45, line: 448, size: 192, elements: !530)
!530 = !{!531, !554, !555, !556, !557, !558}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !529, file: !45, line: 449, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !45, line: 438, size: 64, elements: !533)
!533 = !{!534, !535, !548}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !532, file: !45, line: 439, baseType: !43, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !532, file: !45, line: 440, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !45, line: 419, size: 256, elements: !538)
!538 = !{!539, !544, !545, !546, !547}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !537, file: !45, line: 420, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !14, line: 1049, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!7, !380, !7, !12}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !537, file: !45, line: 421, baseType: !12, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !537, file: !45, line: 422, baseType: !43, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !537, file: !45, line: 423, baseType: !57, size: 8, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !537, file: !45, line: 424, baseType: !57, size: 8, offset: 200)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !532, file: !45, line: 441, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !45, line: 429, size: 128, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !550, file: !45, line: 430, baseType: !43, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !550, file: !45, line: 431, baseType: !549, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !529, file: !45, line: 450, baseType: !513, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !45, line: 451, baseType: !57, size: 8, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !529, file: !45, line: 452, baseType: !57, size: 8, offset: 136)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !529, file: !45, line: 453, baseType: !57, size: 8, offset: 144)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !529, file: !45, line: 454, baseType: !57, size: 8, offset: 152)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !499, file: !45, line: 487, baseType: !78, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !499, file: !45, line: 488, baseType: !7, size: 32, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !499, file: !45, line: 489, baseType: !61, size: 16, offset: 480)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !499, file: !45, line: 490, baseType: !61, size: 16, offset: 496)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !499, file: !45, line: 491, baseType: !57, size: 8, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !499, file: !45, line: 492, baseType: !57, size: 8, offset: 520)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !49, file: !50, line: 379, baseType: !566, size: 384)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !50, line: 192, size: 384, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !566, file: !50, line: 193, baseType: !48, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !566, file: !50, line: 193, baseType: !57, size: 8, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !566, file: !50, line: 193, baseType: !57, size: 8, offset: 72)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !566, file: !50, line: 193, baseType: !61, size: 16, offset: 80)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !50, line: 193, baseType: !57, size: 8, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !566, file: !50, line: 193, baseType: !483, size: 128, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !566, file: !50, line: 193, baseType: !48, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !566, file: !50, line: 193, baseType: !7, size: 32, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !566, file: !50, line: 194, baseType: !7, size: 32, offset: 352)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !49, file: !50, line: 380, baseType: !578, size: 384)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !50, line: 197, size: 384, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !578, file: !50, line: 198, baseType: !48, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !578, file: !50, line: 198, baseType: !57, size: 8, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !578, file: !50, line: 198, baseType: !57, size: 8, offset: 72)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !578, file: !50, line: 198, baseType: !61, size: 16, offset: 80)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !50, line: 198, baseType: !57, size: 8, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !578, file: !50, line: 200, baseType: !57, size: 8, offset: 104)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !578, file: !50, line: 201, baseType: !57, size: 8, offset: 112)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !578, file: !50, line: 202, baseType: !483, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !578, file: !50, line: 202, baseType: !48, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !578, file: !50, line: 202, baseType: !590, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !14, line: 128, baseType: !78)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !49, file: !50, line: 381, baseType: !592, size: 320)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !50, line: 205, size: 320, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !592, file: !50, line: 206, baseType: !48, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !592, file: !50, line: 206, baseType: !57, size: 8, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !50, line: 206, baseType: !57, size: 8, offset: 72)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !592, file: !50, line: 206, baseType: !61, size: 16, offset: 80)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !50, line: 206, baseType: !57, size: 8, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !592, file: !50, line: 206, baseType: !483, size: 128, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !592, file: !50, line: 206, baseType: !48, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !49, file: !50, line: 382, baseType: !602, size: 384)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !50, line: 233, size: 384, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !50, line: 234, baseType: !48, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !50, line: 234, baseType: !57, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !50, line: 234, baseType: !57, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !50, line: 234, baseType: !61, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !50, line: 234, baseType: !57, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !602, file: !50, line: 234, baseType: !57, size: 8, offset: 104)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !602, file: !50, line: 234, baseType: !57, size: 8, offset: 112)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !602, file: !50, line: 234, baseType: !57, size: 8, offset: 120)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !602, file: !50, line: 234, baseType: !43, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !602, file: !50, line: 234, baseType: !7, size: 32, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !602, file: !50, line: 234, baseType: !7, size: 32, offset: 224)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !602, file: !50, line: 234, baseType: !7, size: 32, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !602, file: !50, line: 234, baseType: !57, size: 8, offset: 288)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !602, file: !50, line: 234, baseType: !57, size: 8, offset: 296)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !602, file: !50, line: 234, baseType: !48, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !49, file: !50, line: 383, baseType: !620, size: 576)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !50, line: 237, size: 576, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !620, file: !50, line: 238, baseType: !48, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !620, file: !50, line: 238, baseType: !57, size: 8, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !50, line: 238, baseType: !57, size: 8, offset: 72)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !620, file: !50, line: 238, baseType: !61, size: 16, offset: 80)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !50, line: 238, baseType: !57, size: 8, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !620, file: !50, line: 238, baseType: !57, size: 8, offset: 104)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !620, file: !50, line: 238, baseType: !57, size: 8, offset: 112)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !620, file: !50, line: 238, baseType: !57, size: 8, offset: 120)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !620, file: !50, line: 238, baseType: !43, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !620, file: !50, line: 238, baseType: !7, size: 32, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !620, file: !50, line: 238, baseType: !7, size: 32, offset: 224)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !620, file: !50, line: 238, baseType: !7, size: 32, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !620, file: !50, line: 238, baseType: !57, size: 8, offset: 288)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !620, file: !50, line: 238, baseType: !57, size: 8, offset: 296)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !620, file: !50, line: 238, baseType: !61, size: 16, offset: 304)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !620, file: !50, line: 239, baseType: !48, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !620, file: !50, line: 240, baseType: !101, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !620, file: !50, line: 241, baseType: !61, size: 16, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !620, file: !50, line: 242, baseType: !101, size: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !49, file: !50, line: 384, baseType: !642, size: 384)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !50, line: 262, size: 384, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !642, file: !50, line: 263, baseType: !48, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !642, file: !50, line: 263, baseType: !57, size: 8, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !642, file: !50, line: 263, baseType: !57, size: 8, offset: 72)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !642, file: !50, line: 263, baseType: !61, size: 16, offset: 80)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !642, file: !50, line: 263, baseType: !57, size: 8, offset: 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !642, file: !50, line: 263, baseType: !57, size: 8, offset: 104)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !642, file: !50, line: 263, baseType: !57, size: 8, offset: 112)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !642, file: !50, line: 263, baseType: !57, size: 8, offset: 120)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !642, file: !50, line: 263, baseType: !43, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !642, file: !50, line: 263, baseType: !7, size: 32, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !642, file: !50, line: 263, baseType: !7, size: 32, offset: 224)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !642, file: !50, line: 263, baseType: !7, size: 32, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !642, file: !50, line: 263, baseType: !57, size: 8, offset: 288)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !642, file: !50, line: 263, baseType: !57, size: 8, offset: 296)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !642, file: !50, line: 263, baseType: !57, size: 8, offset: 304)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !642, file: !50, line: 264, baseType: !48, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !49, file: !50, line: 385, baseType: !661, size: 448)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !50, line: 245, size: 448, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !661, file: !50, line: 246, baseType: !48, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !661, file: !50, line: 246, baseType: !57, size: 8, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !50, line: 246, baseType: !57, size: 8, offset: 72)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !661, file: !50, line: 246, baseType: !61, size: 16, offset: 80)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !50, line: 246, baseType: !57, size: 8, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !661, file: !50, line: 246, baseType: !57, size: 8, offset: 104)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !661, file: !50, line: 246, baseType: !57, size: 8, offset: 112)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !661, file: !50, line: 246, baseType: !57, size: 8, offset: 120)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !661, file: !50, line: 246, baseType: !43, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !661, file: !50, line: 246, baseType: !7, size: 32, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !661, file: !50, line: 246, baseType: !7, size: 32, offset: 224)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !661, file: !50, line: 246, baseType: !7, size: 32, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !661, file: !50, line: 246, baseType: !57, size: 8, offset: 288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !661, file: !50, line: 246, baseType: !57, size: 8, offset: 296)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !661, file: !50, line: 246, baseType: !48, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !661, file: !50, line: 247, baseType: !48, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !49, file: !50, line: 386, baseType: !680, size: 448)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !50, line: 250, size: 448, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !680, file: !50, line: 251, baseType: !48, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !680, file: !50, line: 251, baseType: !57, size: 8, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !50, line: 251, baseType: !57, size: 8, offset: 72)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !680, file: !50, line: 251, baseType: !61, size: 16, offset: 80)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !50, line: 251, baseType: !57, size: 8, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !680, file: !50, line: 251, baseType: !57, size: 8, offset: 104)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !680, file: !50, line: 251, baseType: !57, size: 8, offset: 112)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !680, file: !50, line: 251, baseType: !57, size: 8, offset: 120)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !680, file: !50, line: 251, baseType: !43, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !680, file: !50, line: 251, baseType: !7, size: 32, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !680, file: !50, line: 251, baseType: !7, size: 32, offset: 224)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !680, file: !50, line: 251, baseType: !7, size: 32, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !680, file: !50, line: 251, baseType: !57, size: 8, offset: 288)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !680, file: !50, line: 251, baseType: !57, size: 8, offset: 296)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !680, file: !50, line: 256, baseType: !48, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !680, file: !50, line: 257, baseType: !48, size: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !49, file: !50, line: 387, baseType: !699, size: 512)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !50, line: 273, size: 512, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706, !707, !708, !709, !710}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !699, file: !50, line: 274, baseType: !48, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !699, file: !50, line: 274, baseType: !57, size: 8, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !699, file: !50, line: 274, baseType: !57, size: 8, offset: 72)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !699, file: !50, line: 274, baseType: !61, size: 16, offset: 80)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !50, line: 274, baseType: !57, size: 8, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !699, file: !50, line: 274, baseType: !43, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !699, file: !50, line: 275, baseType: !7, size: 32, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !699, file: !50, line: 276, baseType: !376, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !699, file: !50, line: 277, baseType: !12, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !50, line: 278, baseType: !483, size: 128, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !49, file: !50, line: 388, baseType: !712, size: 512)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !50, line: 281, size: 512, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !727, !728, !729, !735, !736}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !712, file: !50, line: 282, baseType: !48, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !712, file: !50, line: 282, baseType: !57, size: 8, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !712, file: !50, line: 282, baseType: !57, size: 8, offset: 72)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !712, file: !50, line: 282, baseType: !61, size: 16, offset: 80)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !712, file: !50, line: 282, baseType: !57, size: 8, offset: 96)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !712, file: !50, line: 282, baseType: !57, size: 8, offset: 104)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !712, file: !50, line: 283, baseType: !57, size: 8, offset: 112)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !712, file: !50, line: 284, baseType: !722, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !14, line: 1084, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!13, !7, !472, !7, !726, !12, !12}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !712, file: !50, line: 285, baseType: !43, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !712, file: !50, line: 286, baseType: !12, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !712, file: !50, line: 287, baseType: !730, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !14, line: 1102, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!13, !380, !7, !12, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !712, file: !50, line: 288, baseType: !48, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !50, line: 289, baseType: !48, size: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !49, file: !50, line: 389, baseType: !738, size: 512)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !50, line: 307, size: 512, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !738, file: !50, line: 308, baseType: !48, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !738, file: !50, line: 308, baseType: !57, size: 8, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !738, file: !50, line: 308, baseType: !57, size: 8, offset: 72)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !738, file: !50, line: 308, baseType: !61, size: 16, offset: 80)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !50, line: 308, baseType: !57, size: 8, offset: 96)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !738, file: !50, line: 308, baseType: !57, size: 8, offset: 104)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !738, file: !50, line: 309, baseType: !57, size: 8, offset: 112)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !738, file: !50, line: 310, baseType: !57, size: 8, offset: 120)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !738, file: !50, line: 311, baseType: !12, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !738, file: !50, line: 312, baseType: !43, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !738, file: !50, line: 313, baseType: !116, size: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !738, file: !50, line: 314, baseType: !101, size: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !738, file: !50, line: 315, baseType: !101, size: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !738, file: !50, line: 316, baseType: !7, size: 32, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !49, file: !50, line: 390, baseType: !755, size: 448)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !50, line: 340, size: 448, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !755, file: !50, line: 341, baseType: !48, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !755, file: !50, line: 341, baseType: !57, size: 8, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !755, file: !50, line: 341, baseType: !57, size: 8, offset: 72)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !755, file: !50, line: 341, baseType: !61, size: 16, offset: 80)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !50, line: 341, baseType: !57, size: 8, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !755, file: !50, line: 341, baseType: !43, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !755, file: !50, line: 342, baseType: !43, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !755, file: !50, line: 343, baseType: !12, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !755, file: !50, line: 344, baseType: !101, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !755, file: !50, line: 345, baseType: !7, size: 32, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !49, file: !50, line: 391, baseType: !768, size: 256)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !50, line: 350, size: 256, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775, !780}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !768, file: !50, line: 351, baseType: !48, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !768, file: !50, line: 351, baseType: !57, size: 8, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !50, line: 351, baseType: !57, size: 8, offset: 72)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !768, file: !50, line: 351, baseType: !61, size: 16, offset: 80)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !768, file: !50, line: 351, baseType: !57, size: 8, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !768, file: !50, line: 351, baseType: !776, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !14, line: 1055, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !380, !12}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !768, file: !50, line: 352, baseType: !12, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !49, file: !50, line: 392, baseType: !782, size: 192)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !50, line: 357, size: 192, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !782, file: !50, line: 358, baseType: !48, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !782, file: !50, line: 358, baseType: !57, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !50, line: 358, baseType: !57, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !782, file: !50, line: 358, baseType: !61, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !50, line: 358, baseType: !57, size: 8, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !782, file: !50, line: 358, baseType: !48, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !49, file: !50, line: 399, baseType: !44, size: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !44, file: !45, line: 135, baseType: !57, size: 8, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !44, file: !45, line: 136, baseType: !57, size: 8, offset: 72)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !45, line: 137, baseType: !61, size: 16, offset: 80)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !44, file: !45, line: 138, baseType: !795, size: 32, offset: 96)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !796, line: 327, size: 32, elements: !797)
!796 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !795, file: !796, line: 328, baseType: !7, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !795, file: !796, line: 329, baseType: !30, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !44, file: !45, line: 139, baseType: !43, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !44, file: !45, line: 140, baseType: !43, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !44, file: !45, line: 141, baseType: !43, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !44, file: !45, line: 142, baseType: !162, size: 16, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !39, file: !40, line: 156, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !39, file: !40, line: 157, baseType: !116, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !39, file: !40, line: 159, baseType: !43, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !39, file: !40, line: 160, baseType: !48, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !39, file: !40, line: 161, baseType: !90, size: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !39, file: !40, line: 163, baseType: !811, size: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !45, line: 351, size: 56, elements: !814)
!814 = !{!815, !821, !830, !838, !847}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !813, file: !45, line: 352, baseType: !816, size: 56)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !45, line: 295, size: 56, elements: !817)
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !816, file: !45, line: 296, baseType: !30, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !816, file: !45, line: 297, baseType: !61, size: 16, offset: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !816, file: !45, line: 298, baseType: !57, size: 8, offset: 48)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !813, file: !45, line: 353, baseType: !822, size: 56)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !45, line: 314, size: 56, elements: !823)
!823 = !{!824, !825, !826, !827, !828, !829}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !822, file: !45, line: 315, baseType: !57, size: 8)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !822, file: !45, line: 316, baseType: !57, size: 8, offset: 8)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !822, file: !45, line: 317, baseType: !57, size: 8, offset: 16)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !822, file: !45, line: 318, baseType: !57, size: 8, offset: 24)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !822, file: !45, line: 319, baseType: !57, size: 8, offset: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !822, file: !45, line: 320, baseType: !61, size: 16, offset: 40)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !813, file: !45, line: 354, baseType: !831, size: 56)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !45, line: 325, size: 56, elements: !832)
!832 = !{!833, !834, !835, !837}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !831, file: !45, line: 326, baseType: !57, size: 8)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !831, file: !45, line: 327, baseType: !57, size: 8, offset: 8)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !831, file: !45, line: 328, baseType: !836, size: 32, offset: 16)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 32, elements: !31)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !831, file: !45, line: 329, baseType: !57, size: 8, offset: 48)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !813, file: !45, line: 355, baseType: !839, size: 56)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !45, line: 334, size: 56, elements: !840)
!840 = !{!841, !842, !843, !845, !846}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !839, file: !45, line: 335, baseType: !57, size: 8)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !839, file: !45, line: 336, baseType: !57, size: 8, offset: 8)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !839, file: !45, line: 337, baseType: !844, size: 16, offset: 16)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 16, elements: !484)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !839, file: !45, line: 338, baseType: !57, size: 8, offset: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !839, file: !45, line: 339, baseType: !61, size: 16, offset: 40)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !813, file: !45, line: 356, baseType: !848, size: 56)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !45, line: 342, size: 56, elements: !849)
!849 = !{!850, !851, !852, !853, !854, !855}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !848, file: !45, line: 343, baseType: !57, size: 8)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !848, file: !45, line: 344, baseType: !57, size: 8, offset: 8)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !848, file: !45, line: 345, baseType: !57, size: 8, offset: 16)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !848, file: !45, line: 346, baseType: !57, size: 8, offset: 24)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !848, file: !45, line: 347, baseType: !57, size: 8, offset: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !848, file: !45, line: 348, baseType: !61, size: 16, offset: 40)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !39, file: !40, line: 164, baseType: !48, size: 64, offset: 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !39, file: !40, line: 165, baseType: !48, size: 64, offset: 512)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !39, file: !40, line: 167, baseType: !7, size: 32, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !39, file: !40, line: 168, baseType: !7, size: 32, offset: 608)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !39, file: !40, line: 169, baseType: !61, size: 16, offset: 640)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !39, file: !40, line: 170, baseType: !61, size: 16, offset: 656)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !39, file: !40, line: 171, baseType: !57, size: 8, offset: 672)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !39, file: !40, line: 172, baseType: !57, size: 8, offset: 680)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !40, line: 173, baseType: !57, size: 8, offset: 688)
!865 = !{i32 7, !"Dwarf Version", i32 4}
!866 = !{i32 2, !"Debug Info Version", i32 3}
!867 = !{i32 1, !"wchar_size", i32 2}
!868 = !{i32 1, !"Code Model", i32 2}
!869 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!870 = distinct !DISubprogram(name: "acpi_ns_complex_repairs", scope: !3, file: !3, line: 150, type: !871, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!871 = !DISubroutineType(types: !872)
!872 = !{!13, !38, !43, !13, !116}
!873 = !DILocalVariable(name: "info", arg: 1, scope: !870, file: !3, line: 150, type: !38)
!874 = !DILocation(line: 150, column: 52, scope: !870)
!875 = !DILocalVariable(name: "node", arg: 2, scope: !870, file: !3, line: 151, type: !43)
!876 = !DILocation(line: 151, column: 32, scope: !870)
!877 = !DILocalVariable(name: "validate_status", arg: 3, scope: !870, file: !3, line: 152, type: !13)
!878 = !DILocation(line: 152, column: 16, scope: !870)
!879 = !DILocalVariable(name: "return_object_ptr", arg: 4, scope: !870, file: !3, line: 153, type: !116)
!880 = !DILocation(line: 153, column: 32, scope: !870)
!881 = !DILocalVariable(name: "predefined", scope: !870, file: !3, line: 155, type: !882)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!883 = !DILocation(line: 155, column: 33, scope: !870)
!884 = !DILocalVariable(name: "status", scope: !870, file: !3, line: 156, type: !13)
!885 = !DILocation(line: 156, column: 14, scope: !870)
!886 = !DILocation(line: 160, column: 44, scope: !870)
!887 = !DILocation(line: 160, column: 15, scope: !870)
!888 = !DILocation(line: 160, column: 13, scope: !870)
!889 = !DILocation(line: 161, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !870, file: !3, line: 161, column: 6)
!891 = !DILocation(line: 161, column: 6, scope: !870)
!892 = !DILocation(line: 162, column: 11, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 161, column: 19)
!894 = !DILocation(line: 162, column: 3, scope: !893)
!895 = !DILocation(line: 165, column: 11, scope: !870)
!896 = !DILocation(line: 165, column: 23, scope: !870)
!897 = !DILocation(line: 165, column: 39, scope: !870)
!898 = !DILocation(line: 165, column: 45, scope: !870)
!899 = !DILocation(line: 165, column: 9, scope: !870)
!900 = !DILocation(line: 166, column: 10, scope: !870)
!901 = !DILocation(line: 166, column: 2, scope: !870)
!902 = !DILocation(line: 167, column: 1, scope: !870)
!903 = distinct !DISubprogram(name: "acpi_ns_match_complex_repair", scope: !3, file: !3, line: 181, type: !904, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!904 = !DISubroutineType(types: !905)
!905 = !{!882, !43}
!906 = !DILocalVariable(name: "node", arg: 1, scope: !903, file: !3, line: 183, type: !43)
!907 = !DILocation(line: 183, column: 13, scope: !903)
!908 = !DILocalVariable(name: "this_name", scope: !903, file: !3, line: 185, type: !882)
!909 = !DILocation(line: 185, column: 33, scope: !903)
!910 = !DILocation(line: 189, column: 12, scope: !903)
!911 = !DILocation(line: 190, column: 2, scope: !903)
!912 = !DILocation(line: 190, column: 9, scope: !903)
!913 = !DILocation(line: 190, column: 20, scope: !903)
!914 = !DILocation(line: 191, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 191, column: 7)
!916 = distinct !DILexicalBlock(scope: !903, file: !3, line: 190, column: 37)
!917 = !DILocation(line: 191, column: 7, scope: !916)
!918 = !DILocation(line: 192, column: 12, scope: !919)
!919 = distinct !DILexicalBlock(scope: !915, file: !3, line: 191, column: 64)
!920 = !DILocation(line: 192, column: 4, scope: !919)
!921 = !DILocation(line: 195, column: 12, scope: !916)
!922 = distinct !{!922, !911, !923}
!923 = !DILocation(line: 196, column: 2, scope: !903)
!924 = !DILocation(line: 198, column: 2, scope: !903)
!925 = !DILocation(line: 199, column: 1, scope: !903)
!926 = distinct !DISubprogram(name: "acpi_ns_repair_ALR", scope: !3, file: !3, line: 217, type: !36, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!927 = !DILocalVariable(name: "info", arg: 1, scope: !926, file: !3, line: 217, type: !38)
!928 = !DILocation(line: 217, column: 47, scope: !926)
!929 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !926, file: !3, line: 218, type: !116)
!930 = !DILocation(line: 218, column: 34, scope: !926)
!931 = !DILocalVariable(name: "return_object", scope: !926, file: !3, line: 220, type: !48)
!932 = !DILocation(line: 220, column: 29, scope: !926)
!933 = !DILocation(line: 220, column: 46, scope: !926)
!934 = !DILocation(line: 220, column: 45, scope: !926)
!935 = !DILocalVariable(name: "status", scope: !926, file: !3, line: 221, type: !13)
!936 = !DILocation(line: 221, column: 14, scope: !926)
!937 = !DILocation(line: 223, column: 37, scope: !926)
!938 = !DILocation(line: 223, column: 43, scope: !926)
!939 = !DILocation(line: 223, column: 11, scope: !926)
!940 = !DILocation(line: 223, column: 9, scope: !926)
!941 = !DILocation(line: 227, column: 10, scope: !926)
!942 = !DILocation(line: 227, column: 2, scope: !926)
!943 = distinct !DISubprogram(name: "acpi_ns_repair_CID", scope: !3, file: !3, line: 337, type: !36, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!944 = !DILocalVariable(name: "info", arg: 1, scope: !943, file: !3, line: 337, type: !38)
!945 = !DILocation(line: 337, column: 47, scope: !943)
!946 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !943, file: !3, line: 338, type: !116)
!947 = !DILocation(line: 338, column: 34, scope: !943)
!948 = !DILocalVariable(name: "status", scope: !943, file: !3, line: 340, type: !13)
!949 = !DILocation(line: 340, column: 14, scope: !943)
!950 = !DILocalVariable(name: "return_object", scope: !943, file: !3, line: 341, type: !48)
!951 = !DILocation(line: 341, column: 29, scope: !943)
!952 = !DILocation(line: 341, column: 46, scope: !943)
!953 = !DILocation(line: 341, column: 45, scope: !943)
!954 = !DILocalVariable(name: "element_ptr", scope: !943, file: !3, line: 342, type: !116)
!955 = !DILocation(line: 342, column: 30, scope: !943)
!956 = !DILocalVariable(name: "original_element", scope: !943, file: !3, line: 343, type: !48)
!957 = !DILocation(line: 343, column: 29, scope: !943)
!958 = !DILocalVariable(name: "original_ref_count", scope: !943, file: !3, line: 344, type: !61)
!959 = !DILocation(line: 344, column: 6, scope: !943)
!960 = !DILocalVariable(name: "i", scope: !943, file: !3, line: 345, type: !7)
!961 = !DILocation(line: 345, column: 6, scope: !943)
!962 = !DILocation(line: 349, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !943, file: !3, line: 349, column: 6)
!964 = !DILocation(line: 349, column: 21, scope: !963)
!965 = !DILocation(line: 349, column: 28, scope: !963)
!966 = !DILocation(line: 349, column: 33, scope: !963)
!967 = !DILocation(line: 349, column: 6, scope: !943)
!968 = !DILocation(line: 350, column: 31, scope: !969)
!969 = distinct !DILexicalBlock(scope: !963, file: !3, line: 349, column: 54)
!970 = !DILocation(line: 350, column: 37, scope: !969)
!971 = !DILocation(line: 350, column: 12, scope: !969)
!972 = !DILocation(line: 350, column: 10, scope: !969)
!973 = !DILocation(line: 351, column: 11, scope: !969)
!974 = !DILocation(line: 351, column: 3, scope: !969)
!975 = !DILocation(line: 356, column: 6, scope: !976)
!976 = distinct !DILexicalBlock(scope: !943, file: !3, line: 356, column: 6)
!977 = !DILocation(line: 356, column: 21, scope: !976)
!978 = !DILocation(line: 356, column: 28, scope: !976)
!979 = !DILocation(line: 356, column: 33, scope: !976)
!980 = !DILocation(line: 356, column: 6, scope: !943)
!981 = !DILocation(line: 357, column: 3, scope: !982)
!982 = distinct !DILexicalBlock(scope: !976, file: !3, line: 356, column: 55)
!983 = !DILocation(line: 362, column: 16, scope: !943)
!984 = !DILocation(line: 362, column: 31, scope: !943)
!985 = !DILocation(line: 362, column: 39, scope: !943)
!986 = !DILocation(line: 362, column: 14, scope: !943)
!987 = !DILocation(line: 363, column: 9, scope: !988)
!988 = distinct !DILexicalBlock(scope: !943, file: !3, line: 363, column: 2)
!989 = !DILocation(line: 363, column: 7, scope: !988)
!990 = !DILocation(line: 363, column: 14, scope: !991)
!991 = distinct !DILexicalBlock(scope: !988, file: !3, line: 363, column: 2)
!992 = !DILocation(line: 363, column: 18, scope: !991)
!993 = !DILocation(line: 363, column: 33, scope: !991)
!994 = !DILocation(line: 363, column: 41, scope: !991)
!995 = !DILocation(line: 363, column: 16, scope: !991)
!996 = !DILocation(line: 363, column: 2, scope: !988)
!997 = !DILocation(line: 364, column: 23, scope: !998)
!998 = distinct !DILexicalBlock(scope: !991, file: !3, line: 363, column: 53)
!999 = !DILocation(line: 364, column: 22, scope: !998)
!1000 = !DILocation(line: 364, column: 20, scope: !998)
!1001 = !DILocation(line: 365, column: 24, scope: !998)
!1002 = !DILocation(line: 365, column: 42, scope: !998)
!1003 = !DILocation(line: 365, column: 49, scope: !998)
!1004 = !DILocation(line: 365, column: 22, scope: !998)
!1005 = !DILocation(line: 367, column: 31, scope: !998)
!1006 = !DILocation(line: 367, column: 37, scope: !998)
!1007 = !DILocation(line: 367, column: 12, scope: !998)
!1008 = !DILocation(line: 367, column: 10, scope: !998)
!1009 = !DILocation(line: 368, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !998, file: !3, line: 368, column: 7)
!1011 = !DILocation(line: 368, column: 7, scope: !998)
!1012 = !DILocation(line: 369, column: 12, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 368, column: 29)
!1014 = !DILocation(line: 369, column: 4, scope: !1013)
!1015 = !DILocation(line: 372, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !998, file: !3, line: 372, column: 7)
!1017 = !DILocation(line: 372, column: 28, scope: !1016)
!1018 = !DILocation(line: 372, column: 27, scope: !1016)
!1019 = !DILocation(line: 372, column: 24, scope: !1016)
!1020 = !DILocation(line: 372, column: 7, scope: !998)
!1021 = !DILocation(line: 377, column: 8, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 372, column: 41)
!1023 = !DILocation(line: 376, column: 6, scope: !1022)
!1024 = !DILocation(line: 376, column: 5, scope: !1022)
!1025 = !DILocation(line: 376, column: 20, scope: !1022)
!1026 = !DILocation(line: 376, column: 27, scope: !1022)
!1027 = !DILocation(line: 376, column: 43, scope: !1022)
!1028 = !DILocation(line: 378, column: 3, scope: !1022)
!1029 = !DILocation(line: 380, column: 14, scope: !998)
!1030 = !DILocation(line: 381, column: 2, scope: !998)
!1031 = !DILocation(line: 363, column: 49, scope: !991)
!1032 = !DILocation(line: 363, column: 2, scope: !991)
!1033 = distinct !{!1033, !996, !1034}
!1034 = !DILocation(line: 381, column: 2, scope: !988)
!1035 = !DILocation(line: 383, column: 2, scope: !943)
!1036 = !DILocation(line: 384, column: 1, scope: !943)
!1037 = distinct !DISubprogram(name: "acpi_ns_repair_CST", scope: !3, file: !3, line: 405, type: !36, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1038 = !DILocalVariable(name: "info", arg: 1, scope: !1037, file: !3, line: 405, type: !38)
!1039 = !DILocation(line: 405, column: 47, scope: !1037)
!1040 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1037, file: !3, line: 406, type: !116)
!1041 = !DILocation(line: 406, column: 34, scope: !1037)
!1042 = !DILocalVariable(name: "return_object", scope: !1037, file: !3, line: 408, type: !48)
!1043 = !DILocation(line: 408, column: 29, scope: !1037)
!1044 = !DILocation(line: 408, column: 46, scope: !1037)
!1045 = !DILocation(line: 408, column: 45, scope: !1037)
!1046 = !DILocalVariable(name: "outer_elements", scope: !1037, file: !3, line: 409, type: !116)
!1047 = !DILocation(line: 409, column: 30, scope: !1037)
!1048 = !DILocalVariable(name: "outer_element_count", scope: !1037, file: !3, line: 410, type: !7)
!1049 = !DILocation(line: 410, column: 6, scope: !1037)
!1050 = !DILocalVariable(name: "obj_desc", scope: !1037, file: !3, line: 411, type: !48)
!1051 = !DILocation(line: 411, column: 29, scope: !1037)
!1052 = !DILocalVariable(name: "status", scope: !1037, file: !3, line: 412, type: !13)
!1053 = !DILocation(line: 412, column: 14, scope: !1037)
!1054 = !DILocalVariable(name: "removing", scope: !1037, file: !3, line: 413, type: !57)
!1055 = !DILocation(line: 413, column: 5, scope: !1037)
!1056 = !DILocalVariable(name: "i", scope: !1037, file: !3, line: 414, type: !7)
!1057 = !DILocation(line: 414, column: 6, scope: !1037)
!1058 = !DILocation(line: 421, column: 24, scope: !1037)
!1059 = !DILocation(line: 421, column: 39, scope: !1037)
!1060 = !DILocation(line: 421, column: 47, scope: !1037)
!1061 = !DILocation(line: 421, column: 53, scope: !1037)
!1062 = !DILocation(line: 421, column: 22, scope: !1037)
!1063 = !DILocation(line: 422, column: 4, scope: !1037)
!1064 = !DILocation(line: 423, column: 2, scope: !1037)
!1065 = !DILocation(line: 423, column: 9, scope: !1037)
!1066 = !DILocation(line: 423, column: 13, scope: !1037)
!1067 = !DILocation(line: 423, column: 11, scope: !1037)
!1068 = !DILocation(line: 424, column: 21, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 423, column: 34)
!1070 = !DILocation(line: 424, column: 36, scope: !1069)
!1071 = !DILocation(line: 424, column: 44, scope: !1069)
!1072 = !DILocation(line: 424, column: 53, scope: !1069)
!1073 = !DILocation(line: 424, column: 55, scope: !1069)
!1074 = !DILocation(line: 424, column: 18, scope: !1069)
!1075 = !DILocation(line: 425, column: 12, scope: !1069)
!1076 = !DILocation(line: 427, column: 9, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 427, column: 7)
!1078 = !DILocation(line: 427, column: 8, scope: !1077)
!1079 = !DILocation(line: 427, column: 26, scope: !1077)
!1080 = !DILocation(line: 427, column: 34, scope: !1077)
!1081 = !DILocation(line: 427, column: 40, scope: !1077)
!1082 = !DILocation(line: 427, column: 7, scope: !1069)
!1083 = !DILocation(line: 428, column: 4, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 427, column: 46)
!1085 = !DILocation(line: 433, column: 13, scope: !1084)
!1086 = !DILocation(line: 434, column: 4, scope: !1084)
!1087 = !DILocation(line: 437, column: 16, scope: !1069)
!1088 = !DILocation(line: 437, column: 15, scope: !1069)
!1089 = !DILocation(line: 437, column: 33, scope: !1069)
!1090 = !DILocation(line: 437, column: 41, scope: !1069)
!1091 = !DILocation(line: 437, column: 14, scope: !1069)
!1092 = !DILocation(line: 437, column: 12, scope: !1069)
!1093 = !DILocation(line: 438, column: 12, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 438, column: 7)
!1095 = !DILocation(line: 438, column: 22, scope: !1094)
!1096 = !DILocation(line: 438, column: 30, scope: !1094)
!1097 = !DILocation(line: 438, column: 7, scope: !1094)
!1098 = !DILocation(line: 438, column: 36, scope: !1094)
!1099 = !DILocation(line: 438, column: 7, scope: !1069)
!1100 = !DILocation(line: 439, column: 4, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 438, column: 42)
!1102 = !DILocation(line: 444, column: 13, scope: !1101)
!1103 = !DILocation(line: 445, column: 3, scope: !1101)
!1104 = !DILocation(line: 438, column: 39, scope: !1094)
!1105 = !DILabel(scope: !1069, name: "remove_element", file: !3, line: 447)
!1106 = !DILocation(line: 447, column: 1, scope: !1069)
!1107 = !DILocation(line: 448, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 448, column: 7)
!1109 = !DILocation(line: 448, column: 7, scope: !1069)
!1110 = !DILocation(line: 449, column: 27, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 448, column: 17)
!1112 = !DILocation(line: 449, column: 42, scope: !1111)
!1113 = !DILocation(line: 449, column: 44, scope: !1111)
!1114 = !DILocation(line: 449, column: 4, scope: !1111)
!1115 = !DILocation(line: 450, column: 23, scope: !1111)
!1116 = !DILocation(line: 451, column: 3, scope: !1111)
!1117 = !DILocation(line: 452, column: 5, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 451, column: 10)
!1119 = distinct !{!1119, !1064, !1120}
!1120 = !DILocation(line: 454, column: 2, scope: !1037)
!1121 = !DILocation(line: 458, column: 13, scope: !1037)
!1122 = !DILocation(line: 458, column: 28, scope: !1037)
!1123 = !DILocation(line: 458, column: 36, scope: !1037)
!1124 = !DILocation(line: 458, column: 11, scope: !1037)
!1125 = !DILocation(line: 459, column: 28, scope: !1037)
!1126 = !DILocation(line: 459, column: 2, scope: !1037)
!1127 = !DILocation(line: 459, column: 12, scope: !1037)
!1128 = !DILocation(line: 459, column: 20, scope: !1037)
!1129 = !DILocation(line: 459, column: 26, scope: !1037)
!1130 = !DILocation(line: 465, column: 37, scope: !1037)
!1131 = !DILocation(line: 465, column: 43, scope: !1037)
!1132 = !DILocation(line: 465, column: 11, scope: !1037)
!1133 = !DILocation(line: 465, column: 9, scope: !1037)
!1134 = !DILocation(line: 467, column: 6, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 467, column: 6)
!1136 = !DILocation(line: 467, column: 6, scope: !1037)
!1137 = !DILocation(line: 468, column: 11, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 467, column: 28)
!1139 = !DILocation(line: 468, column: 3, scope: !1138)
!1140 = !DILocation(line: 471, column: 2, scope: !1037)
!1141 = !DILocation(line: 472, column: 1, scope: !1037)
!1142 = distinct !DISubprogram(name: "acpi_ns_repair_FDE", scope: !3, file: !3, line: 248, type: !36, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1143 = !DILocalVariable(name: "info", arg: 1, scope: !1142, file: !3, line: 248, type: !38)
!1144 = !DILocation(line: 248, column: 47, scope: !1142)
!1145 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1142, file: !3, line: 249, type: !116)
!1146 = !DILocation(line: 249, column: 34, scope: !1142)
!1147 = !DILocalVariable(name: "return_object", scope: !1142, file: !3, line: 251, type: !48)
!1148 = !DILocation(line: 251, column: 29, scope: !1142)
!1149 = !DILocation(line: 251, column: 46, scope: !1142)
!1150 = !DILocation(line: 251, column: 45, scope: !1142)
!1151 = !DILocalVariable(name: "buffer_object", scope: !1142, file: !3, line: 252, type: !48)
!1152 = !DILocation(line: 252, column: 29, scope: !1142)
!1153 = !DILocalVariable(name: "byte_buffer", scope: !1142, file: !3, line: 253, type: !101)
!1154 = !DILocation(line: 253, column: 6, scope: !1142)
!1155 = !DILocalVariable(name: "dword_buffer", scope: !1142, file: !3, line: 254, type: !6)
!1156 = !DILocation(line: 254, column: 7, scope: !1142)
!1157 = !DILocalVariable(name: "i", scope: !1142, file: !3, line: 255, type: !7)
!1158 = !DILocation(line: 255, column: 6, scope: !1142)
!1159 = !DILocation(line: 259, column: 10, scope: !1142)
!1160 = !DILocation(line: 259, column: 25, scope: !1142)
!1161 = !DILocation(line: 259, column: 32, scope: !1142)
!1162 = !DILocation(line: 259, column: 2, scope: !1142)
!1163 = !DILocation(line: 264, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 264, column: 7)
!1165 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 259, column: 38)
!1166 = !DILocation(line: 264, column: 22, scope: !1164)
!1167 = !DILocation(line: 264, column: 29, scope: !1164)
!1168 = !DILocation(line: 264, column: 36, scope: !1164)
!1169 = !DILocation(line: 264, column: 7, scope: !1165)
!1170 = !DILocation(line: 265, column: 4, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 264, column: 67)
!1172 = !DILocation(line: 270, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 270, column: 7)
!1174 = !DILocation(line: 270, column: 22, scope: !1173)
!1175 = !DILocation(line: 270, column: 29, scope: !1173)
!1176 = !DILocation(line: 270, column: 36, scope: !1173)
!1177 = !DILocation(line: 270, column: 7, scope: !1165)
!1178 = !DILocation(line: 271, column: 4, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 270, column: 66)
!1180 = !DILocation(line: 278, column: 4, scope: !1179)
!1181 = !DILocation(line: 284, column: 7, scope: !1165)
!1182 = !DILocation(line: 283, column: 17, scope: !1165)
!1183 = !DILocation(line: 285, column: 8, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 285, column: 7)
!1185 = !DILocation(line: 285, column: 7, scope: !1165)
!1186 = !DILocation(line: 286, column: 4, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 285, column: 23)
!1188 = !DILocation(line: 291, column: 17, scope: !1165)
!1189 = !DILocation(line: 291, column: 32, scope: !1165)
!1190 = !DILocation(line: 291, column: 39, scope: !1165)
!1191 = !DILocation(line: 291, column: 15, scope: !1165)
!1192 = !DILocation(line: 292, column: 18, scope: !1165)
!1193 = !DILocation(line: 292, column: 16, scope: !1165)
!1194 = !DILocation(line: 295, column: 10, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 295, column: 3)
!1196 = !DILocation(line: 295, column: 8, scope: !1195)
!1197 = !DILocation(line: 295, column: 15, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 295, column: 3)
!1199 = !DILocation(line: 295, column: 17, scope: !1198)
!1200 = !DILocation(line: 295, column: 3, scope: !1195)
!1201 = !DILocation(line: 296, column: 27, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 295, column: 46)
!1203 = !DILocation(line: 296, column: 26, scope: !1202)
!1204 = !DILocation(line: 296, column: 20, scope: !1202)
!1205 = !DILocation(line: 296, column: 5, scope: !1202)
!1206 = !DILocation(line: 296, column: 18, scope: !1202)
!1207 = !DILocation(line: 297, column: 16, scope: !1202)
!1208 = !DILocation(line: 298, column: 15, scope: !1202)
!1209 = !DILocation(line: 299, column: 3, scope: !1202)
!1210 = !DILocation(line: 295, column: 42, scope: !1198)
!1211 = !DILocation(line: 295, column: 3, scope: !1198)
!1212 = distinct !{!1212, !1200, !1213}
!1213 = !DILocation(line: 299, column: 3, scope: !1195)
!1214 = !DILocation(line: 304, column: 3, scope: !1165)
!1215 = !DILocation(line: 308, column: 3, scope: !1165)
!1216 = !DILocation(line: 313, column: 27, scope: !1142)
!1217 = !DILocation(line: 313, column: 2, scope: !1142)
!1218 = !DILocation(line: 314, column: 23, scope: !1142)
!1219 = !DILocation(line: 314, column: 3, scope: !1142)
!1220 = !DILocation(line: 314, column: 21, scope: !1142)
!1221 = !DILocation(line: 316, column: 2, scope: !1142)
!1222 = !DILocation(line: 316, column: 8, scope: !1142)
!1223 = !DILocation(line: 316, column: 21, scope: !1142)
!1224 = !DILocation(line: 317, column: 2, scope: !1142)
!1225 = !DILocation(line: 318, column: 1, scope: !1142)
!1226 = distinct !DISubprogram(name: "acpi_ns_repair_HID", scope: !3, file: !3, line: 490, type: !36, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1227 = !DILocalVariable(name: "info", arg: 1, scope: !1226, file: !3, line: 490, type: !38)
!1228 = !DILocation(line: 490, column: 47, scope: !1226)
!1229 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1226, file: !3, line: 491, type: !116)
!1230 = !DILocation(line: 491, column: 34, scope: !1226)
!1231 = !DILocalVariable(name: "return_object", scope: !1226, file: !3, line: 493, type: !48)
!1232 = !DILocation(line: 493, column: 29, scope: !1226)
!1233 = !DILocation(line: 493, column: 46, scope: !1226)
!1234 = !DILocation(line: 493, column: 45, scope: !1226)
!1235 = !DILocalVariable(name: "new_string", scope: !1226, file: !3, line: 494, type: !48)
!1236 = !DILocation(line: 494, column: 29, scope: !1226)
!1237 = !DILocalVariable(name: "source", scope: !1226, file: !3, line: 495, type: !90)
!1238 = !DILocation(line: 495, column: 8, scope: !1226)
!1239 = !DILocalVariable(name: "dest", scope: !1226, file: !3, line: 496, type: !90)
!1240 = !DILocation(line: 496, column: 8, scope: !1226)
!1241 = !DILocation(line: 502, column: 6, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 502, column: 6)
!1243 = !DILocation(line: 502, column: 21, scope: !1242)
!1244 = !DILocation(line: 502, column: 28, scope: !1242)
!1245 = !DILocation(line: 502, column: 33, scope: !1242)
!1246 = !DILocation(line: 502, column: 6, scope: !1226)
!1247 = !DILocation(line: 503, column: 3, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 502, column: 54)
!1249 = !DILocation(line: 506, column: 6, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 506, column: 6)
!1251 = !DILocation(line: 506, column: 21, scope: !1250)
!1252 = !DILocation(line: 506, column: 28, scope: !1250)
!1253 = !DILocation(line: 506, column: 35, scope: !1250)
!1254 = !DILocation(line: 506, column: 6, scope: !1226)
!1255 = !DILocation(line: 507, column: 3, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 506, column: 41)
!1257 = !DILocation(line: 513, column: 3, scope: !1256)
!1258 = !DILocation(line: 513, column: 9, scope: !1256)
!1259 = !DILocation(line: 513, column: 22, scope: !1256)
!1260 = !DILocation(line: 514, column: 3, scope: !1256)
!1261 = !DILocation(line: 519, column: 44, scope: !1226)
!1262 = !DILocation(line: 519, column: 59, scope: !1226)
!1263 = !DILocation(line: 519, column: 66, scope: !1226)
!1264 = !DILocation(line: 519, column: 15, scope: !1226)
!1265 = !DILocation(line: 519, column: 13, scope: !1226)
!1266 = !DILocation(line: 520, column: 7, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 520, column: 6)
!1268 = !DILocation(line: 520, column: 6, scope: !1226)
!1269 = !DILocation(line: 521, column: 3, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 520, column: 19)
!1271 = !DILocation(line: 530, column: 11, scope: !1226)
!1272 = !DILocation(line: 530, column: 26, scope: !1226)
!1273 = !DILocation(line: 530, column: 33, scope: !1226)
!1274 = !DILocation(line: 530, column: 9, scope: !1226)
!1275 = !DILocation(line: 531, column: 7, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 531, column: 6)
!1277 = !DILocation(line: 531, column: 6, scope: !1276)
!1278 = !DILocation(line: 531, column: 14, scope: !1276)
!1279 = !DILocation(line: 531, column: 6, scope: !1226)
!1280 = !DILocation(line: 532, column: 9, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 531, column: 22)
!1282 = !DILocation(line: 533, column: 3, scope: !1281)
!1283 = !DILocation(line: 533, column: 15, scope: !1281)
!1284 = !DILocation(line: 533, column: 22, scope: !1281)
!1285 = !DILocation(line: 533, column: 28, scope: !1281)
!1286 = !DILocation(line: 538, column: 2, scope: !1281)
!1287 = !DILocation(line: 548, column: 14, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 548, column: 2)
!1289 = !DILocation(line: 548, column: 26, scope: !1288)
!1290 = !DILocation(line: 548, column: 33, scope: !1288)
!1291 = !DILocation(line: 548, column: 12, scope: !1288)
!1292 = !DILocation(line: 548, column: 7, scope: !1288)
!1293 = !DILocation(line: 548, column: 43, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 548, column: 2)
!1295 = !DILocation(line: 548, column: 42, scope: !1294)
!1296 = !DILocation(line: 548, column: 2, scope: !1288)
!1297 = !DILocation(line: 549, column: 17, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 548, column: 69)
!1299 = !DILocation(line: 549, column: 4, scope: !1298)
!1300 = !DILocation(line: 549, column: 9, scope: !1298)
!1301 = !DILocation(line: 550, column: 2, scope: !1298)
!1302 = !DILocation(line: 548, column: 55, scope: !1294)
!1303 = !DILocation(line: 548, column: 65, scope: !1294)
!1304 = !DILocation(line: 548, column: 2, scope: !1294)
!1305 = distinct !{!1305, !1296, !1306}
!1306 = !DILocation(line: 550, column: 2, scope: !1288)
!1307 = !DILocation(line: 552, column: 27, scope: !1226)
!1308 = !DILocation(line: 552, column: 2, scope: !1226)
!1309 = !DILocation(line: 553, column: 23, scope: !1226)
!1310 = !DILocation(line: 553, column: 3, scope: !1226)
!1311 = !DILocation(line: 553, column: 21, scope: !1226)
!1312 = !DILocation(line: 554, column: 2, scope: !1226)
!1313 = !DILocation(line: 555, column: 1, scope: !1226)
!1314 = distinct !DISubprogram(name: "acpi_ns_repair_PRT", scope: !3, file: !3, line: 573, type: !36, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1315 = !DILocalVariable(name: "info", arg: 1, scope: !1314, file: !3, line: 573, type: !38)
!1316 = !DILocation(line: 573, column: 47, scope: !1314)
!1317 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1314, file: !3, line: 574, type: !116)
!1318 = !DILocation(line: 574, column: 34, scope: !1314)
!1319 = !DILocalVariable(name: "package_object", scope: !1314, file: !3, line: 576, type: !48)
!1320 = !DILocation(line: 576, column: 29, scope: !1314)
!1321 = !DILocation(line: 576, column: 47, scope: !1314)
!1322 = !DILocation(line: 576, column: 46, scope: !1314)
!1323 = !DILocalVariable(name: "top_object_list", scope: !1314, file: !3, line: 577, type: !116)
!1324 = !DILocation(line: 577, column: 30, scope: !1314)
!1325 = !DILocalVariable(name: "sub_object_list", scope: !1314, file: !3, line: 578, type: !116)
!1326 = !DILocation(line: 578, column: 30, scope: !1314)
!1327 = !DILocalVariable(name: "obj_desc", scope: !1314, file: !3, line: 579, type: !48)
!1328 = !DILocation(line: 579, column: 29, scope: !1314)
!1329 = !DILocalVariable(name: "sub_package", scope: !1314, file: !3, line: 580, type: !48)
!1330 = !DILocation(line: 580, column: 29, scope: !1314)
!1331 = !DILocalVariable(name: "element_count", scope: !1314, file: !3, line: 581, type: !7)
!1332 = !DILocation(line: 581, column: 6, scope: !1314)
!1333 = !DILocalVariable(name: "index", scope: !1314, file: !3, line: 582, type: !7)
!1334 = !DILocation(line: 582, column: 6, scope: !1314)
!1335 = !DILocation(line: 586, column: 20, scope: !1314)
!1336 = !DILocation(line: 586, column: 36, scope: !1314)
!1337 = !DILocation(line: 586, column: 44, scope: !1314)
!1338 = !DILocation(line: 586, column: 18, scope: !1314)
!1339 = !DILocation(line: 587, column: 18, scope: !1314)
!1340 = !DILocation(line: 587, column: 34, scope: !1314)
!1341 = !DILocation(line: 587, column: 42, scope: !1314)
!1342 = !DILocation(line: 587, column: 16, scope: !1314)
!1343 = !DILocation(line: 591, column: 13, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 591, column: 2)
!1345 = !DILocation(line: 591, column: 7, scope: !1344)
!1346 = !DILocation(line: 591, column: 18, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 591, column: 2)
!1348 = !DILocation(line: 591, column: 26, scope: !1347)
!1349 = !DILocation(line: 591, column: 24, scope: !1347)
!1350 = !DILocation(line: 591, column: 2, scope: !1344)
!1351 = !DILocation(line: 592, column: 18, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 591, column: 69)
!1353 = !DILocation(line: 592, column: 17, scope: !1352)
!1354 = !DILocation(line: 592, column: 15, scope: !1352)
!1355 = !DILocation(line: 593, column: 21, scope: !1352)
!1356 = !DILocation(line: 593, column: 34, scope: !1352)
!1357 = !DILocation(line: 593, column: 42, scope: !1352)
!1358 = !DILocation(line: 593, column: 19, scope: !1352)
!1359 = !DILocation(line: 597, column: 7, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 597, column: 7)
!1361 = !DILocation(line: 597, column: 20, scope: !1360)
!1362 = !DILocation(line: 597, column: 28, scope: !1360)
!1363 = !DILocation(line: 597, column: 34, scope: !1360)
!1364 = !DILocation(line: 597, column: 7, scope: !1352)
!1365 = !DILocation(line: 598, column: 4, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 597, column: 39)
!1367 = !DILocation(line: 607, column: 14, scope: !1352)
!1368 = !DILocation(line: 607, column: 12, scope: !1352)
!1369 = !DILocation(line: 608, column: 8, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 608, column: 7)
!1371 = !DILocation(line: 608, column: 17, scope: !1370)
!1372 = !DILocation(line: 608, column: 21, scope: !1370)
!1373 = !DILocation(line: 608, column: 31, scope: !1370)
!1374 = !DILocation(line: 608, column: 38, scope: !1370)
!1375 = !DILocation(line: 608, column: 43, scope: !1370)
!1376 = !DILocation(line: 608, column: 7, scope: !1352)
!1377 = !DILocation(line: 609, column: 25, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 608, column: 66)
!1379 = !DILocation(line: 609, column: 4, scope: !1378)
!1380 = !DILocation(line: 609, column: 23, scope: !1378)
!1381 = !DILocation(line: 610, column: 25, scope: !1378)
!1382 = !DILocation(line: 610, column: 4, scope: !1378)
!1383 = !DILocation(line: 610, column: 23, scope: !1378)
!1384 = !DILocation(line: 611, column: 4, scope: !1378)
!1385 = !DILocation(line: 611, column: 10, scope: !1378)
!1386 = !DILocation(line: 611, column: 23, scope: !1378)
!1387 = !DILocation(line: 613, column: 4, scope: !1378)
!1388 = !DILocation(line: 618, column: 3, scope: !1378)
!1389 = !DILocation(line: 619, column: 2, scope: !1352)
!1390 = !DILocation(line: 591, column: 46, scope: !1347)
!1391 = !DILocation(line: 591, column: 65, scope: !1347)
!1392 = !DILocation(line: 591, column: 2, scope: !1347)
!1393 = distinct !{!1393, !1350, !1394}
!1394 = !DILocation(line: 619, column: 2, scope: !1344)
!1395 = !DILocation(line: 621, column: 2, scope: !1314)
!1396 = distinct !DISubprogram(name: "acpi_ns_repair_PSS", scope: !3, file: !3, line: 642, type: !36, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1397 = !DILocalVariable(name: "info", arg: 1, scope: !1396, file: !3, line: 642, type: !38)
!1398 = !DILocation(line: 642, column: 47, scope: !1396)
!1399 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1396, file: !3, line: 643, type: !116)
!1400 = !DILocation(line: 643, column: 34, scope: !1396)
!1401 = !DILocalVariable(name: "return_object", scope: !1396, file: !3, line: 645, type: !48)
!1402 = !DILocation(line: 645, column: 29, scope: !1396)
!1403 = !DILocation(line: 645, column: 46, scope: !1396)
!1404 = !DILocation(line: 645, column: 45, scope: !1396)
!1405 = !DILocalVariable(name: "outer_elements", scope: !1396, file: !3, line: 646, type: !116)
!1406 = !DILocation(line: 646, column: 30, scope: !1396)
!1407 = !DILocalVariable(name: "outer_element_count", scope: !1396, file: !3, line: 647, type: !7)
!1408 = !DILocation(line: 647, column: 6, scope: !1396)
!1409 = !DILocalVariable(name: "elements", scope: !1396, file: !3, line: 648, type: !116)
!1410 = !DILocation(line: 648, column: 30, scope: !1396)
!1411 = !DILocalVariable(name: "obj_desc", scope: !1396, file: !3, line: 649, type: !48)
!1412 = !DILocation(line: 649, column: 29, scope: !1396)
!1413 = !DILocalVariable(name: "previous_value", scope: !1396, file: !3, line: 650, type: !7)
!1414 = !DILocation(line: 650, column: 6, scope: !1396)
!1415 = !DILocalVariable(name: "status", scope: !1396, file: !3, line: 651, type: !13)
!1416 = !DILocation(line: 651, column: 14, scope: !1396)
!1417 = !DILocalVariable(name: "i", scope: !1396, file: !3, line: 652, type: !7)
!1418 = !DILocation(line: 652, column: 6, scope: !1396)
!1419 = !DILocation(line: 660, column: 37, scope: !1396)
!1420 = !DILocation(line: 660, column: 43, scope: !1396)
!1421 = !DILocation(line: 660, column: 11, scope: !1396)
!1422 = !DILocation(line: 660, column: 9, scope: !1396)
!1423 = !DILocation(line: 663, column: 6, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 663, column: 6)
!1425 = !DILocation(line: 663, column: 6, scope: !1396)
!1426 = !DILocation(line: 664, column: 11, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 663, column: 28)
!1428 = !DILocation(line: 664, column: 3, scope: !1427)
!1429 = !DILocation(line: 671, column: 17, scope: !1396)
!1430 = !DILocation(line: 672, column: 19, scope: !1396)
!1431 = !DILocation(line: 672, column: 34, scope: !1396)
!1432 = !DILocation(line: 672, column: 42, scope: !1396)
!1433 = !DILocation(line: 672, column: 17, scope: !1396)
!1434 = !DILocation(line: 673, column: 24, scope: !1396)
!1435 = !DILocation(line: 673, column: 39, scope: !1396)
!1436 = !DILocation(line: 673, column: 47, scope: !1396)
!1437 = !DILocation(line: 673, column: 22, scope: !1396)
!1438 = !DILocation(line: 675, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 675, column: 2)
!1440 = !DILocation(line: 675, column: 7, scope: !1439)
!1441 = !DILocation(line: 675, column: 14, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 675, column: 2)
!1443 = !DILocation(line: 675, column: 18, scope: !1442)
!1444 = !DILocation(line: 675, column: 16, scope: !1442)
!1445 = !DILocation(line: 675, column: 2, scope: !1439)
!1446 = !DILocation(line: 676, column: 16, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 675, column: 44)
!1448 = !DILocation(line: 676, column: 15, scope: !1447)
!1449 = !DILocation(line: 676, column: 33, scope: !1447)
!1450 = !DILocation(line: 676, column: 41, scope: !1447)
!1451 = !DILocation(line: 676, column: 12, scope: !1447)
!1452 = !DILocation(line: 677, column: 14, scope: !1447)
!1453 = !DILocation(line: 677, column: 12, scope: !1447)
!1454 = !DILocation(line: 679, column: 12, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 679, column: 7)
!1456 = !DILocation(line: 679, column: 22, scope: !1455)
!1457 = !DILocation(line: 679, column: 30, scope: !1455)
!1458 = !DILocation(line: 679, column: 7, scope: !1455)
!1459 = !DILocation(line: 679, column: 38, scope: !1455)
!1460 = !DILocation(line: 679, column: 36, scope: !1455)
!1461 = !DILocation(line: 679, column: 7, scope: !1447)
!1462 = !DILocation(line: 680, column: 4, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 679, column: 54)
!1464 = !DILocation(line: 685, column: 3, scope: !1463)
!1465 = !DILocation(line: 687, column: 26, scope: !1447)
!1466 = !DILocation(line: 687, column: 36, scope: !1447)
!1467 = !DILocation(line: 687, column: 44, scope: !1447)
!1468 = !DILocation(line: 687, column: 20, scope: !1447)
!1469 = !DILocation(line: 687, column: 18, scope: !1447)
!1470 = !DILocation(line: 688, column: 17, scope: !1447)
!1471 = !DILocation(line: 689, column: 2, scope: !1447)
!1472 = !DILocation(line: 675, column: 40, scope: !1442)
!1473 = !DILocation(line: 675, column: 2, scope: !1442)
!1474 = distinct !{!1474, !1445, !1475}
!1475 = !DILocation(line: 689, column: 2, scope: !1439)
!1476 = !DILocation(line: 691, column: 2, scope: !1396)
!1477 = !DILocation(line: 692, column: 1, scope: !1396)
!1478 = distinct !DISubprogram(name: "acpi_ns_repair_TSS", scope: !3, file: !3, line: 710, type: !36, scopeLine: 712, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1479 = !DILocalVariable(name: "info", arg: 1, scope: !1478, file: !3, line: 710, type: !38)
!1480 = !DILocation(line: 710, column: 47, scope: !1478)
!1481 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1478, file: !3, line: 711, type: !116)
!1482 = !DILocation(line: 711, column: 34, scope: !1478)
!1483 = !DILocalVariable(name: "return_object", scope: !1478, file: !3, line: 713, type: !48)
!1484 = !DILocation(line: 713, column: 29, scope: !1478)
!1485 = !DILocation(line: 713, column: 46, scope: !1478)
!1486 = !DILocation(line: 713, column: 45, scope: !1478)
!1487 = !DILocalVariable(name: "status", scope: !1478, file: !3, line: 714, type: !13)
!1488 = !DILocation(line: 714, column: 14, scope: !1478)
!1489 = !DILocalVariable(name: "node", scope: !1478, file: !3, line: 715, type: !43)
!1490 = !DILocation(line: 715, column: 30, scope: !1478)
!1491 = !DILocation(line: 725, column: 28, scope: !1478)
!1492 = !DILocation(line: 725, column: 34, scope: !1478)
!1493 = !DILocation(line: 725, column: 11, scope: !1478)
!1494 = !DILocation(line: 725, column: 9, scope: !1478)
!1495 = !DILocation(line: 727, column: 6, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 727, column: 6)
!1497 = !DILocation(line: 727, column: 6, scope: !1478)
!1498 = !DILocation(line: 728, column: 3, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 727, column: 28)
!1500 = !DILocation(line: 731, column: 37, scope: !1478)
!1501 = !DILocation(line: 731, column: 43, scope: !1478)
!1502 = !DILocation(line: 731, column: 11, scope: !1478)
!1503 = !DILocation(line: 731, column: 9, scope: !1478)
!1504 = !DILocation(line: 735, column: 10, scope: !1478)
!1505 = !DILocation(line: 735, column: 2, scope: !1478)
!1506 = !DILocation(line: 736, column: 1, scope: !1478)
!1507 = distinct !DISubprogram(name: "acpi_ns_check_sorted_list", scope: !3, file: !3, line: 759, type: !1508, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!13, !38, !48, !7, !7, !7, !57, !90}
!1510 = !DILocalVariable(name: "info", arg: 1, scope: !1507, file: !3, line: 759, type: !38)
!1511 = !DILocation(line: 759, column: 54, scope: !1507)
!1512 = !DILocalVariable(name: "return_object", arg: 2, scope: !1507, file: !3, line: 760, type: !48)
!1513 = !DILocation(line: 760, column: 33, scope: !1507)
!1514 = !DILocalVariable(name: "start_index", arg: 3, scope: !1507, file: !3, line: 761, type: !7)
!1515 = !DILocation(line: 761, column: 10, scope: !1507)
!1516 = !DILocalVariable(name: "expected_count", arg: 4, scope: !1507, file: !3, line: 762, type: !7)
!1517 = !DILocation(line: 762, column: 10, scope: !1507)
!1518 = !DILocalVariable(name: "sort_index", arg: 5, scope: !1507, file: !3, line: 763, type: !7)
!1519 = !DILocation(line: 763, column: 10, scope: !1507)
!1520 = !DILocalVariable(name: "sort_direction", arg: 6, scope: !1507, file: !3, line: 764, type: !57)
!1521 = !DILocation(line: 764, column: 9, scope: !1507)
!1522 = !DILocalVariable(name: "sort_key_name", arg: 7, scope: !1507, file: !3, line: 764, type: !90)
!1523 = !DILocation(line: 764, column: 31, scope: !1507)
!1524 = !DILocalVariable(name: "outer_element_count", scope: !1507, file: !3, line: 766, type: !7)
!1525 = !DILocation(line: 766, column: 6, scope: !1507)
!1526 = !DILocalVariable(name: "outer_elements", scope: !1507, file: !3, line: 767, type: !116)
!1527 = !DILocation(line: 767, column: 30, scope: !1507)
!1528 = !DILocalVariable(name: "elements", scope: !1507, file: !3, line: 768, type: !116)
!1529 = !DILocation(line: 768, column: 30, scope: !1507)
!1530 = !DILocalVariable(name: "obj_desc", scope: !1507, file: !3, line: 769, type: !48)
!1531 = !DILocation(line: 769, column: 29, scope: !1507)
!1532 = !DILocalVariable(name: "i", scope: !1507, file: !3, line: 770, type: !7)
!1533 = !DILocation(line: 770, column: 6, scope: !1507)
!1534 = !DILocalVariable(name: "previous_value", scope: !1507, file: !3, line: 771, type: !7)
!1535 = !DILocation(line: 771, column: 6, scope: !1507)
!1536 = !DILocation(line: 777, column: 6, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 777, column: 6)
!1538 = !DILocation(line: 777, column: 21, scope: !1537)
!1539 = !DILocation(line: 777, column: 28, scope: !1537)
!1540 = !DILocation(line: 777, column: 33, scope: !1537)
!1541 = !DILocation(line: 777, column: 6, scope: !1507)
!1542 = !DILocation(line: 778, column: 3, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 777, column: 55)
!1544 = !DILocation(line: 786, column: 24, scope: !1507)
!1545 = !DILocation(line: 786, column: 39, scope: !1507)
!1546 = !DILocation(line: 786, column: 47, scope: !1507)
!1547 = !DILocation(line: 786, column: 22, scope: !1507)
!1548 = !DILocation(line: 787, column: 7, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 787, column: 6)
!1550 = !DILocation(line: 787, column: 27, scope: !1549)
!1551 = !DILocation(line: 787, column: 30, scope: !1549)
!1552 = !DILocation(line: 787, column: 45, scope: !1549)
!1553 = !DILocation(line: 787, column: 42, scope: !1549)
!1554 = !DILocation(line: 787, column: 6, scope: !1507)
!1555 = !DILocation(line: 788, column: 3, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 787, column: 66)
!1557 = !DILocation(line: 791, column: 20, scope: !1507)
!1558 = !DILocation(line: 791, column: 35, scope: !1507)
!1559 = !DILocation(line: 791, column: 43, scope: !1507)
!1560 = !DILocation(line: 791, column: 52, scope: !1507)
!1561 = !DILocation(line: 791, column: 17, scope: !1507)
!1562 = !DILocation(line: 792, column: 25, scope: !1507)
!1563 = !DILocation(line: 792, column: 22, scope: !1507)
!1564 = !DILocation(line: 794, column: 17, scope: !1507)
!1565 = !DILocation(line: 795, column: 6, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 795, column: 6)
!1567 = !DILocation(line: 795, column: 21, scope: !1566)
!1568 = !DILocation(line: 795, column: 6, scope: !1507)
!1569 = !DILocation(line: 796, column: 18, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 795, column: 46)
!1571 = !DILocation(line: 797, column: 2, scope: !1570)
!1572 = !DILocation(line: 801, column: 9, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 801, column: 2)
!1574 = !DILocation(line: 801, column: 7, scope: !1573)
!1575 = !DILocation(line: 801, column: 14, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 801, column: 2)
!1577 = !DILocation(line: 801, column: 18, scope: !1576)
!1578 = !DILocation(line: 801, column: 16, scope: !1576)
!1579 = !DILocation(line: 801, column: 2, scope: !1573)
!1580 = !DILocation(line: 805, column: 9, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 805, column: 7)
!1582 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 801, column: 44)
!1583 = !DILocation(line: 805, column: 8, scope: !1581)
!1584 = !DILocation(line: 805, column: 26, scope: !1581)
!1585 = !DILocation(line: 805, column: 33, scope: !1581)
!1586 = !DILocation(line: 805, column: 7, scope: !1581)
!1587 = !DILocation(line: 805, column: 38, scope: !1581)
!1588 = !DILocation(line: 805, column: 7, scope: !1582)
!1589 = !DILocation(line: 806, column: 4, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 805, column: 60)
!1591 = !DILocation(line: 811, column: 9, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 811, column: 7)
!1593 = !DILocation(line: 811, column: 8, scope: !1592)
!1594 = !DILocation(line: 811, column: 26, scope: !1592)
!1595 = !DILocation(line: 811, column: 34, scope: !1592)
!1596 = !DILocation(line: 811, column: 42, scope: !1592)
!1597 = !DILocation(line: 811, column: 40, scope: !1592)
!1598 = !DILocation(line: 811, column: 7, scope: !1582)
!1599 = !DILocation(line: 812, column: 4, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 811, column: 58)
!1601 = !DILocation(line: 815, column: 16, scope: !1582)
!1602 = !DILocation(line: 815, column: 15, scope: !1582)
!1603 = !DILocation(line: 815, column: 33, scope: !1582)
!1604 = !DILocation(line: 815, column: 41, scope: !1582)
!1605 = !DILocation(line: 815, column: 12, scope: !1582)
!1606 = !DILocation(line: 816, column: 14, scope: !1582)
!1607 = !DILocation(line: 816, column: 23, scope: !1582)
!1608 = !DILocation(line: 816, column: 12, scope: !1582)
!1609 = !DILocation(line: 818, column: 7, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 818, column: 7)
!1611 = !DILocation(line: 818, column: 17, scope: !1610)
!1612 = !DILocation(line: 818, column: 24, scope: !1610)
!1613 = !DILocation(line: 818, column: 29, scope: !1610)
!1614 = !DILocation(line: 818, column: 7, scope: !1582)
!1615 = !DILocation(line: 819, column: 4, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 818, column: 51)
!1617 = !DILocation(line: 826, column: 9, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 826, column: 7)
!1619 = !DILocation(line: 826, column: 24, scope: !1618)
!1620 = !DILocation(line: 826, column: 48, scope: !1618)
!1621 = !DILocation(line: 827, column: 9, scope: !1618)
!1622 = !DILocation(line: 827, column: 19, scope: !1618)
!1623 = !DILocation(line: 827, column: 27, scope: !1618)
!1624 = !DILocation(line: 827, column: 35, scope: !1618)
!1625 = !DILocation(line: 827, column: 33, scope: !1618)
!1626 = !DILocation(line: 827, column: 52, scope: !1618)
!1627 = !DILocation(line: 828, column: 9, scope: !1618)
!1628 = !DILocation(line: 828, column: 24, scope: !1618)
!1629 = !DILocation(line: 828, column: 49, scope: !1618)
!1630 = !DILocation(line: 829, column: 9, scope: !1618)
!1631 = !DILocation(line: 829, column: 19, scope: !1618)
!1632 = !DILocation(line: 829, column: 27, scope: !1618)
!1633 = !DILocation(line: 829, column: 35, scope: !1618)
!1634 = !DILocation(line: 829, column: 33, scope: !1618)
!1635 = !DILocation(line: 826, column: 7, scope: !1582)
!1636 = !DILocation(line: 830, column: 23, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 829, column: 53)
!1638 = !DILocation(line: 830, column: 38, scope: !1637)
!1639 = !DILocation(line: 831, column: 8, scope: !1637)
!1640 = !DILocation(line: 831, column: 17, scope: !1637)
!1641 = !DILocation(line: 832, column: 8, scope: !1637)
!1642 = !DILocation(line: 832, column: 29, scope: !1637)
!1643 = !DILocation(line: 833, column: 8, scope: !1637)
!1644 = !DILocation(line: 830, column: 4, scope: !1637)
!1645 = !DILocation(line: 835, column: 4, scope: !1637)
!1646 = !DILocation(line: 835, column: 10, scope: !1637)
!1647 = !DILocation(line: 835, column: 23, scope: !1637)
!1648 = !DILocation(line: 840, column: 4, scope: !1637)
!1649 = !DILocation(line: 843, column: 26, scope: !1582)
!1650 = !DILocation(line: 843, column: 36, scope: !1582)
!1651 = !DILocation(line: 843, column: 44, scope: !1582)
!1652 = !DILocation(line: 843, column: 20, scope: !1582)
!1653 = !DILocation(line: 843, column: 18, scope: !1582)
!1654 = !DILocation(line: 844, column: 17, scope: !1582)
!1655 = !DILocation(line: 845, column: 2, scope: !1582)
!1656 = !DILocation(line: 801, column: 40, scope: !1576)
!1657 = !DILocation(line: 801, column: 2, scope: !1576)
!1658 = distinct !{!1658, !1579, !1659}
!1659 = !DILocation(line: 845, column: 2, scope: !1573)
!1660 = !DILocation(line: 847, column: 2, scope: !1507)
!1661 = !DILocation(line: 848, column: 1, scope: !1507)
!1662 = distinct !DISubprogram(name: "acpi_ns_sort_list", scope: !3, file: !3, line: 869, type: !1663, scopeLine: 871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !116, !7, !7, !57}
!1665 = !DILocalVariable(name: "elements", arg: 1, scope: !1662, file: !3, line: 869, type: !116)
!1666 = !DILocation(line: 869, column: 47, scope: !1662)
!1667 = !DILocalVariable(name: "count", arg: 2, scope: !1662, file: !3, line: 870, type: !7)
!1668 = !DILocation(line: 870, column: 9, scope: !1662)
!1669 = !DILocalVariable(name: "index", arg: 3, scope: !1662, file: !3, line: 870, type: !7)
!1670 = !DILocation(line: 870, column: 20, scope: !1662)
!1671 = !DILocalVariable(name: "sort_direction", arg: 4, scope: !1662, file: !3, line: 870, type: !57)
!1672 = !DILocation(line: 870, column: 30, scope: !1662)
!1673 = !DILocalVariable(name: "obj_desc1", scope: !1662, file: !3, line: 872, type: !48)
!1674 = !DILocation(line: 872, column: 29, scope: !1662)
!1675 = !DILocalVariable(name: "obj_desc2", scope: !1662, file: !3, line: 873, type: !48)
!1676 = !DILocation(line: 873, column: 29, scope: !1662)
!1677 = !DILocalVariable(name: "temp_obj", scope: !1662, file: !3, line: 874, type: !48)
!1678 = !DILocation(line: 874, column: 29, scope: !1662)
!1679 = !DILocalVariable(name: "i", scope: !1662, file: !3, line: 875, type: !7)
!1680 = !DILocation(line: 875, column: 6, scope: !1662)
!1681 = !DILocalVariable(name: "j", scope: !1662, file: !3, line: 876, type: !7)
!1682 = !DILocation(line: 876, column: 6, scope: !1662)
!1683 = !DILocation(line: 880, column: 9, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 880, column: 2)
!1685 = !DILocation(line: 880, column: 7, scope: !1684)
!1686 = !DILocation(line: 880, column: 14, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 880, column: 2)
!1688 = !DILocation(line: 880, column: 18, scope: !1687)
!1689 = !DILocation(line: 880, column: 16, scope: !1687)
!1690 = !DILocation(line: 880, column: 2, scope: !1684)
!1691 = !DILocation(line: 881, column: 13, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 881, column: 3)
!1693 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 880, column: 30)
!1694 = !DILocation(line: 881, column: 19, scope: !1692)
!1695 = !DILocation(line: 881, column: 10, scope: !1692)
!1696 = !DILocation(line: 881, column: 8, scope: !1692)
!1697 = !DILocation(line: 881, column: 25, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 881, column: 3)
!1699 = !DILocation(line: 881, column: 30, scope: !1698)
!1700 = !DILocation(line: 881, column: 27, scope: !1698)
!1701 = !DILocation(line: 881, column: 3, scope: !1692)
!1702 = !DILocation(line: 882, column: 16, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 881, column: 38)
!1704 = !DILocation(line: 882, column: 25, scope: !1703)
!1705 = !DILocation(line: 882, column: 27, scope: !1703)
!1706 = !DILocation(line: 882, column: 33, scope: !1703)
!1707 = !DILocation(line: 882, column: 41, scope: !1703)
!1708 = !DILocation(line: 882, column: 50, scope: !1703)
!1709 = !DILocation(line: 882, column: 14, scope: !1703)
!1710 = !DILocation(line: 883, column: 16, scope: !1703)
!1711 = !DILocation(line: 883, column: 25, scope: !1703)
!1712 = !DILocation(line: 883, column: 29, scope: !1703)
!1713 = !DILocation(line: 883, column: 37, scope: !1703)
!1714 = !DILocation(line: 883, column: 46, scope: !1703)
!1715 = !DILocation(line: 883, column: 14, scope: !1703)
!1716 = !DILocation(line: 885, column: 10, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 885, column: 8)
!1718 = !DILocation(line: 885, column: 25, scope: !1717)
!1719 = !DILocation(line: 885, column: 49, scope: !1717)
!1720 = !DILocation(line: 886, column: 10, scope: !1717)
!1721 = !DILocation(line: 886, column: 21, scope: !1717)
!1722 = !DILocation(line: 886, column: 29, scope: !1717)
!1723 = !DILocation(line: 887, column: 10, scope: !1717)
!1724 = !DILocation(line: 887, column: 21, scope: !1717)
!1725 = !DILocation(line: 887, column: 29, scope: !1717)
!1726 = !DILocation(line: 886, column: 35, scope: !1717)
!1727 = !DILocation(line: 888, column: 8, scope: !1717)
!1728 = !DILocation(line: 888, column: 13, scope: !1717)
!1729 = !DILocation(line: 888, column: 28, scope: !1717)
!1730 = !DILocation(line: 889, column: 5, scope: !1717)
!1731 = !DILocation(line: 889, column: 9, scope: !1717)
!1732 = !DILocation(line: 889, column: 20, scope: !1717)
!1733 = !DILocation(line: 889, column: 28, scope: !1717)
!1734 = !DILocation(line: 890, column: 9, scope: !1717)
!1735 = !DILocation(line: 890, column: 20, scope: !1717)
!1736 = !DILocation(line: 890, column: 28, scope: !1717)
!1737 = !DILocation(line: 889, column: 34, scope: !1717)
!1738 = !DILocation(line: 885, column: 8, scope: !1703)
!1739 = !DILocation(line: 891, column: 16, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 890, column: 37)
!1741 = !DILocation(line: 891, column: 25, scope: !1740)
!1742 = !DILocation(line: 891, column: 27, scope: !1740)
!1743 = !DILocation(line: 891, column: 14, scope: !1740)
!1744 = !DILocation(line: 892, column: 23, scope: !1740)
!1745 = !DILocation(line: 892, column: 32, scope: !1740)
!1746 = !DILocation(line: 892, column: 5, scope: !1740)
!1747 = !DILocation(line: 892, column: 14, scope: !1740)
!1748 = !DILocation(line: 892, column: 16, scope: !1740)
!1749 = !DILocation(line: 892, column: 21, scope: !1740)
!1750 = !DILocation(line: 893, column: 19, scope: !1740)
!1751 = !DILocation(line: 893, column: 5, scope: !1740)
!1752 = !DILocation(line: 893, column: 14, scope: !1740)
!1753 = !DILocation(line: 893, column: 17, scope: !1740)
!1754 = !DILocation(line: 894, column: 4, scope: !1740)
!1755 = !DILocation(line: 895, column: 3, scope: !1703)
!1756 = !DILocation(line: 881, column: 34, scope: !1698)
!1757 = !DILocation(line: 881, column: 3, scope: !1698)
!1758 = distinct !{!1758, !1701, !1759}
!1759 = !DILocation(line: 895, column: 3, scope: !1692)
!1760 = !DILocation(line: 896, column: 2, scope: !1693)
!1761 = !DILocation(line: 880, column: 26, scope: !1687)
!1762 = !DILocation(line: 880, column: 2, scope: !1687)
!1763 = distinct !{!1763, !1690, !1764}
!1764 = !DILocation(line: 896, column: 2, scope: !1684)
!1765 = !DILocation(line: 897, column: 1, scope: !1662)
!1766 = distinct !DISubprogram(name: "acpi_ns_remove_element", scope: !3, file: !3, line: 913, type: !1767, scopeLine: 914, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !48, !7}
!1769 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1766, file: !3, line: 913, type: !48)
!1770 = !DILocation(line: 913, column: 51, scope: !1766)
!1771 = !DILocalVariable(name: "index", arg: 2, scope: !1766, file: !3, line: 913, type: !7)
!1772 = !DILocation(line: 913, column: 65, scope: !1766)
!1773 = !DILocalVariable(name: "source", scope: !1766, file: !3, line: 915, type: !116)
!1774 = !DILocation(line: 915, column: 30, scope: !1766)
!1775 = !DILocalVariable(name: "dest", scope: !1766, file: !3, line: 916, type: !116)
!1776 = !DILocation(line: 916, column: 30, scope: !1766)
!1777 = !DILocalVariable(name: "count", scope: !1766, file: !3, line: 917, type: !7)
!1778 = !DILocation(line: 917, column: 6, scope: !1766)
!1779 = !DILocalVariable(name: "new_count", scope: !1766, file: !3, line: 918, type: !7)
!1780 = !DILocation(line: 918, column: 6, scope: !1766)
!1781 = !DILocalVariable(name: "i", scope: !1766, file: !3, line: 919, type: !7)
!1782 = !DILocation(line: 919, column: 6, scope: !1766)
!1783 = !DILocation(line: 923, column: 10, scope: !1766)
!1784 = !DILocation(line: 923, column: 20, scope: !1766)
!1785 = !DILocation(line: 923, column: 28, scope: !1766)
!1786 = !DILocation(line: 923, column: 8, scope: !1766)
!1787 = !DILocation(line: 924, column: 14, scope: !1766)
!1788 = !DILocation(line: 924, column: 20, scope: !1766)
!1789 = !DILocation(line: 924, column: 12, scope: !1766)
!1790 = !DILocation(line: 926, column: 11, scope: !1766)
!1791 = !DILocation(line: 926, column: 21, scope: !1766)
!1792 = !DILocation(line: 926, column: 29, scope: !1766)
!1793 = !DILocation(line: 926, column: 9, scope: !1766)
!1794 = !DILocation(line: 927, column: 9, scope: !1766)
!1795 = !DILocation(line: 927, column: 7, scope: !1766)
!1796 = !DILocation(line: 931, column: 9, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 931, column: 2)
!1798 = !DILocation(line: 931, column: 7, scope: !1797)
!1799 = !DILocation(line: 931, column: 14, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 931, column: 2)
!1801 = !DILocation(line: 931, column: 18, scope: !1800)
!1802 = !DILocation(line: 931, column: 16, scope: !1800)
!1803 = !DILocation(line: 931, column: 2, scope: !1797)
!1804 = !DILocation(line: 932, column: 7, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 932, column: 7)
!1806 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 931, column: 30)
!1807 = !DILocation(line: 932, column: 12, scope: !1805)
!1808 = !DILocation(line: 932, column: 9, scope: !1805)
!1809 = !DILocation(line: 932, column: 7, scope: !1806)
!1810 = !DILocation(line: 933, column: 30, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 932, column: 19)
!1812 = !DILocation(line: 933, column: 29, scope: !1811)
!1813 = !DILocation(line: 933, column: 4, scope: !1811)
!1814 = !DILocation(line: 934, column: 30, scope: !1811)
!1815 = !DILocation(line: 934, column: 29, scope: !1811)
!1816 = !DILocation(line: 934, column: 4, scope: !1811)
!1817 = !DILocation(line: 935, column: 3, scope: !1811)
!1818 = !DILocation(line: 936, column: 13, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 935, column: 10)
!1820 = !DILocation(line: 936, column: 12, scope: !1819)
!1821 = !DILocation(line: 936, column: 5, scope: !1819)
!1822 = !DILocation(line: 936, column: 10, scope: !1819)
!1823 = !DILocation(line: 937, column: 8, scope: !1819)
!1824 = !DILocation(line: 940, column: 9, scope: !1806)
!1825 = !DILocation(line: 941, column: 2, scope: !1806)
!1826 = !DILocation(line: 931, column: 26, scope: !1800)
!1827 = !DILocation(line: 931, column: 2, scope: !1800)
!1828 = distinct !{!1828, !1803, !1829}
!1829 = !DILocation(line: 941, column: 2, scope: !1797)
!1830 = !DILocation(line: 945, column: 3, scope: !1766)
!1831 = !DILocation(line: 945, column: 8, scope: !1766)
!1832 = !DILocation(line: 946, column: 28, scope: !1766)
!1833 = !DILocation(line: 946, column: 2, scope: !1766)
!1834 = !DILocation(line: 946, column: 12, scope: !1766)
!1835 = !DILocation(line: 946, column: 20, scope: !1766)
!1836 = !DILocation(line: 946, column: 26, scope: !1766)
!1837 = !DILocation(line: 947, column: 1, scope: !1766)
!1838 = distinct !DISubprogram(name: "__toupper", scope: !1839, file: !1839, line: 49, type: !1840, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1839 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/lizy2001/genbc/linux")
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!17, !17}
!1842 = !DILocalVariable(name: "c", arg: 1, scope: !1838, file: !1839, line: 49, type: !17)
!1843 = !DILocation(line: 49, column: 53, scope: !1838)
!1844 = !DILocation(line: 51, column: 6, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1838, file: !1839, line: 51, column: 6)
!1846 = !DILocation(line: 51, column: 6, scope: !1838)
!1847 = !DILocation(line: 52, column: 5, scope: !1845)
!1848 = !DILocation(line: 52, column: 3, scope: !1845)
!1849 = !DILocation(line: 53, column: 9, scope: !1838)
!1850 = !DILocation(line: 53, column: 2, scope: !1838)
