; ModuleID = '../bcout/drivers/acpi/acpica/nsrepair.llvm.bc'
source_filename = "drivers/acpi/acpica/nsrepair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_simple_repair_info = type { [4 x i8], i32, i32, i32 (%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**)* }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
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
%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }

@_acpi_module_name = internal constant [9 x i8] c"nsrepair\00", align 1, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"Missing expected return value\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"During return object analysis\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Found unexpected NULL package element\00", align 1
@acpi_object_repair_info = internal constant [7 x %struct.acpi_simple_repair_info] [%struct.acpi_simple_repair_info { [4 x i8] c"_CRS", i32 15, i32 -1, i32 (%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**)* @acpi_ns_convert_to_resource }, %struct.acpi_simple_repair_info { [4 x i8] c"_DMA", i32 15, i32 -1, i32 (%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**)* @acpi_ns_convert_to_resource }, %struct.acpi_simple_repair_info { [4 x i8] c"_PRS", i32 15, i32 -1, i32 (%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**)* @acpi_ns_convert_to_resource }, %struct.acpi_simple_repair_info { [4 x i8] c"_DEP", i32 4, i32 -2, i32 (%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**)* @acpi_ns_convert_to_reference }, %struct.acpi_simple_repair_info { [4 x i8] c"_MLS", i32 4, i32 1, i32 (%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**)* @acpi_ns_convert_to_unicode }, %struct.acpi_simple_repair_info { [4 x i8] c"_STR", i32 12, i32 -1, i32 (%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**)* @acpi_ns_convert_to_unicode }, %struct.acpi_simple_repair_info zeroinitializer], align 16, !dbg !19

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_simple_repair(%struct.acpi_evaluate_info* %info, i32 %expected_btypes, i32 %package_index, %union.acpi_operand_object** %return_object_ptr) #0 !dbg !804 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %expected_btypes.addr = alloca i32, align 4
  %package_index.addr = alloca i32, align 4
  %return_object_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %return_object = alloca %union.acpi_operand_object*, align 8
  %new_object = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %predefined = alloca %struct.acpi_simple_repair_info*, align 8
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !872, metadata !DIExpression()), !dbg !873
  store i32 %expected_btypes, i32* %expected_btypes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %expected_btypes.addr, metadata !874, metadata !DIExpression()), !dbg !875
  store i32 %package_index, i32* %package_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %package_index.addr, metadata !876, metadata !DIExpression()), !dbg !877
  store %union.acpi_operand_object** %return_object_ptr, %union.acpi_operand_object*** %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object_ptr.addr, metadata !878, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_object, metadata !880, metadata !DIExpression()), !dbg !881
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !882
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !883
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %return_object, align 8, !dbg !881
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %new_object, metadata !884, metadata !DIExpression()), !dbg !885
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %new_object, align 8, !dbg !885
  call void @llvm.dbg.declare(metadata i32* %status, metadata !886, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.declare(metadata %struct.acpi_simple_repair_info** %predefined, metadata !888, metadata !DIExpression()), !dbg !890
  %2 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !891
  %node = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %2, i32 0, i32 3, !dbg !892
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !892
  %4 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !893
  %return_btype = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %4, i32 0, i32 10, !dbg !894
  %5 = load i32, i32* %return_btype, align 4, !dbg !894
  %6 = load i32, i32* %package_index.addr, align 4, !dbg !895
  %call = call %struct.acpi_simple_repair_info* @acpi_ns_match_simple_repair(%struct.acpi_namespace_node* %3, i32 %5, i32 %6) #3, !dbg !896
  store %struct.acpi_simple_repair_info* %call, %struct.acpi_simple_repair_info** %predefined, align 8, !dbg !897
  %7 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %predefined, align 8, !dbg !898
  %tobool = icmp ne %struct.acpi_simple_repair_info* %7, null, !dbg !898
  br i1 %tobool, label %if.then, label %if.end11, !dbg !900

if.then:                                          ; preds = %entry
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !901
  %tobool1 = icmp ne %union.acpi_operand_object* %8, null, !dbg !901
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !904

if.then2:                                         ; preds = %if.then
  %9 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !905
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %9, i32 0, i32 5, !dbg !905
  %10 = load i8*, i8** %full_pathname, align 8, !dbg !905
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 141, i8* %10, i16 zeroext 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #3, !dbg !905
  br label %if.end, !dbg !907

if.end:                                           ; preds = %if.then2, %if.then
  %11 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %predefined, align 8, !dbg !908
  %object_converter = getelementptr inbounds %struct.acpi_simple_repair_info, %struct.acpi_simple_repair_info* %11, i32 0, i32 3, !dbg !909
  %12 = load i32 (%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**)*, i32 (%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**)** %object_converter, align 8, !dbg !909
  %13 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !910
  %node3 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %13, i32 0, i32 3, !dbg !911
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node3, align 8, !dbg !911
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !912
  %call4 = call i32 %12(%struct.acpi_namespace_node* %14, %union.acpi_operand_object* %15, %union.acpi_operand_object** %new_object) #3, !dbg !908
  store i32 %call4, i32* %status, align 4, !dbg !913
  %16 = load i32, i32* %status, align 4, !dbg !914
  %tobool5 = icmp ne i32 %16, 0, !dbg !914
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !916

if.then6:                                         ; preds = %if.end
  %17 = load i32, i32* %status, align 4, !dbg !917
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 152, i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !917
  %18 = load i32, i32* %status, align 4, !dbg !919
  store i32 %18, i32* %retval, align 4, !dbg !920
  br label %return, !dbg !920

if.end7:                                          ; preds = %if.end
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !921
  %tobool8 = icmp ne %union.acpi_operand_object* %19, null, !dbg !921
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !923

if.then9:                                         ; preds = %if.end7
  br label %object_repaired, !dbg !924

if.end10:                                         ; preds = %if.end7
  br label %if.end11, !dbg !926

if.end11:                                         ; preds = %if.end10, %entry
  %20 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !927
  %return_btype12 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %20, i32 0, i32 10, !dbg !929
  %21 = load i32, i32* %return_btype12, align 4, !dbg !929
  %22 = load i32, i32* %expected_btypes.addr, align 4, !dbg !930
  %and = and i32 %21, %22, !dbg !931
  %tobool13 = icmp ne i32 %and, 0, !dbg !931
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !932

if.then14:                                        ; preds = %if.end11
  store i32 0, i32* %retval, align 4, !dbg !933
  br label %return, !dbg !933

if.end15:                                         ; preds = %if.end11
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !935
  %tobool16 = icmp ne %union.acpi_operand_object* %23, null, !dbg !935
  br i1 %tobool16, label %if.end31, label %if.then17, !dbg !937

if.then17:                                        ; preds = %if.end15
  %24 = load i32, i32* %expected_btypes.addr, align 4, !dbg !938
  %tobool18 = icmp ne i32 %24, 0, !dbg !938
  br i1 %tobool18, label %land.lhs.true, label %if.end30, !dbg !941

land.lhs.true:                                    ; preds = %if.then17
  %25 = load i32, i32* %expected_btypes.addr, align 4, !dbg !942
  %and19 = and i32 %25, 1, !dbg !943
  %tobool20 = icmp ne i32 %and19, 0, !dbg !943
  br i1 %tobool20, label %if.end30, label %if.then21, !dbg !944

if.then21:                                        ; preds = %land.lhs.true
  %26 = load i32, i32* %package_index.addr, align 4, !dbg !945
  %cmp = icmp ne i32 %26, -1, !dbg !948
  br i1 %cmp, label %if.then22, label %if.else, !dbg !949

if.then22:                                        ; preds = %if.then21
  %27 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !950
  %full_pathname23 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %27, i32 0, i32 5, !dbg !950
  %28 = load i8*, i8** %full_pathname23, align 8, !dbg !950
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 186, i8* %28, i16 zeroext 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !950
  %29 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !952
  %30 = load i32, i32* %expected_btypes.addr, align 4, !dbg !953
  %31 = load i32, i32* %package_index.addr, align 4, !dbg !954
  %32 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !955
  %call24 = call i32 @acpi_ns_repair_null_element(%struct.acpi_evaluate_info* %29, i32 %30, i32 %31, %union.acpi_operand_object** %32) #3, !dbg !956
  store i32 %call24, i32* %status, align 4, !dbg !957
  %33 = load i32, i32* %status, align 4, !dbg !958
  %tobool25 = icmp ne i32 %33, 0, !dbg !958
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !960

if.then26:                                        ; preds = %if.then22
  store i32 0, i32* %retval, align 4, !dbg !961
  br label %return, !dbg !961

if.end27:                                         ; preds = %if.then22
  br label %if.end29, !dbg !963

if.else:                                          ; preds = %if.then21
  %34 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !964
  %full_pathname28 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %34, i32 0, i32 5, !dbg !964
  %35 = load i8*, i8** %full_pathname28, align 8, !dbg !964
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 200, i8* %35, i16 zeroext 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #3, !dbg !964
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end27
  store i32 12306, i32* %retval, align 4, !dbg !966
  br label %return, !dbg !966

if.end30:                                         ; preds = %land.lhs.true, %if.then17
  br label %if.end31, !dbg !967

if.end31:                                         ; preds = %if.end30, %if.end15
  %36 = load i32, i32* %expected_btypes.addr, align 4, !dbg !968
  %and32 = and i32 %36, 2, !dbg !970
  %tobool33 = icmp ne i32 %and32, 0, !dbg !970
  br i1 %tobool33, label %if.then34, label %if.end39, !dbg !971

if.then34:                                        ; preds = %if.end31
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !972
  %call35 = call i32 @acpi_ns_convert_to_integer(%union.acpi_operand_object* %37, %union.acpi_operand_object** %new_object) #3, !dbg !974
  store i32 %call35, i32* %status, align 4, !dbg !975
  %38 = load i32, i32* %status, align 4, !dbg !976
  %tobool36 = icmp ne i32 %38, 0, !dbg !976
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !978

if.then37:                                        ; preds = %if.then34
  br label %object_repaired, !dbg !979

if.end38:                                         ; preds = %if.then34
  br label %if.end39, !dbg !981

if.end39:                                         ; preds = %if.end38, %if.end31
  %39 = load i32, i32* %expected_btypes.addr, align 4, !dbg !982
  %and40 = and i32 %39, 4, !dbg !984
  %tobool41 = icmp ne i32 %and40, 0, !dbg !984
  br i1 %tobool41, label %if.then42, label %if.end47, !dbg !985

if.then42:                                        ; preds = %if.end39
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !986
  %call43 = call i32 @acpi_ns_convert_to_string(%union.acpi_operand_object* %40, %union.acpi_operand_object** %new_object) #3, !dbg !988
  store i32 %call43, i32* %status, align 4, !dbg !989
  %41 = load i32, i32* %status, align 4, !dbg !990
  %tobool44 = icmp ne i32 %41, 0, !dbg !990
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !992

if.then45:                                        ; preds = %if.then42
  br label %object_repaired, !dbg !993

if.end46:                                         ; preds = %if.then42
  br label %if.end47, !dbg !995

if.end47:                                         ; preds = %if.end46, %if.end39
  %42 = load i32, i32* %expected_btypes.addr, align 4, !dbg !996
  %and48 = and i32 %42, 8, !dbg !998
  %tobool49 = icmp ne i32 %and48, 0, !dbg !998
  br i1 %tobool49, label %if.then50, label %if.end55, !dbg !999

if.then50:                                        ; preds = %if.end47
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1000
  %call51 = call i32 @acpi_ns_convert_to_buffer(%union.acpi_operand_object* %43, %union.acpi_operand_object** %new_object) #3, !dbg !1002
  store i32 %call51, i32* %status, align 4, !dbg !1003
  %44 = load i32, i32* %status, align 4, !dbg !1004
  %tobool52 = icmp ne i32 %44, 0, !dbg !1004
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !1006

if.then53:                                        ; preds = %if.then50
  br label %object_repaired, !dbg !1007

if.end54:                                         ; preds = %if.then50
  br label %if.end55, !dbg !1009

if.end55:                                         ; preds = %if.end54, %if.end47
  %45 = load i32, i32* %expected_btypes.addr, align 4, !dbg !1010
  %and56 = and i32 %45, 16, !dbg !1012
  %tobool57 = icmp ne i32 %and56, 0, !dbg !1012
  br i1 %tobool57, label %if.then58, label %if.end63, !dbg !1013

if.then58:                                        ; preds = %if.end55
  %46 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1014
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1016
  %call59 = call i32 @acpi_ns_wrap_with_package(%struct.acpi_evaluate_info* %46, %union.acpi_operand_object* %47, %union.acpi_operand_object** %new_object) #3, !dbg !1017
  store i32 %call59, i32* %status, align 4, !dbg !1018
  %48 = load i32, i32* %status, align 4, !dbg !1019
  %tobool60 = icmp ne i32 %48, 0, !dbg !1019
  br i1 %tobool60, label %if.end62, label %if.then61, !dbg !1021

if.then61:                                        ; preds = %if.then58
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1022
  %50 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1024
  store %union.acpi_operand_object* %49, %union.acpi_operand_object** %50, align 8, !dbg !1025
  %51 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1026
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %51, i32 0, i32 9, !dbg !1027
  %52 = load i32, i32* %return_flags, align 8, !dbg !1028
  %or = or i32 %52, 1, !dbg !1028
  store i32 %or, i32* %return_flags, align 8, !dbg !1028
  store i32 0, i32* %retval, align 4, !dbg !1029
  br label %return, !dbg !1029

if.end62:                                         ; preds = %if.then58
  br label %if.end63, !dbg !1030

if.end63:                                         ; preds = %if.end62, %if.end55
  store i32 12291, i32* %retval, align 4, !dbg !1031
  br label %return, !dbg !1031

object_repaired:                                  ; preds = %if.then53, %if.then45, %if.then37, %if.then9
  call void @llvm.dbg.label(metadata !1032), !dbg !1033
  %53 = load i32, i32* %package_index.addr, align 4, !dbg !1034
  %cmp64 = icmp ne i32 %53, -1, !dbg !1036
  br i1 %cmp64, label %if.then65, label %if.else73, !dbg !1037

if.then65:                                        ; preds = %object_repaired
  %54 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1038
  %return_flags66 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %54, i32 0, i32 9, !dbg !1041
  %55 = load i32, i32* %return_flags66, align 8, !dbg !1041
  %and67 = and i32 %55, 2, !dbg !1042
  %tobool68 = icmp ne i32 %and67, 0, !dbg !1042
  br i1 %tobool68, label %if.end72, label %if.then69, !dbg !1043

if.then69:                                        ; preds = %if.then65
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1044
  %common = bitcast %union.acpi_operand_object* %56 to %struct.acpi_object_common*, !dbg !1046
  %reference_count = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 3, !dbg !1047
  %57 = load i16, i16* %reference_count, align 2, !dbg !1047
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1048
  %common70 = bitcast %union.acpi_operand_object* %58 to %struct.acpi_object_common*, !dbg !1049
  %reference_count71 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common70, i32 0, i32 3, !dbg !1050
  store i16 %57, i16* %reference_count71, align 2, !dbg !1051
  br label %if.end72, !dbg !1052

if.end72:                                         ; preds = %if.then69, %if.then65
  br label %if.end74, !dbg !1053

if.else73:                                        ; preds = %object_repaired
  br label %if.end74

if.end74:                                         ; preds = %if.else73, %if.end72
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1054
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %59) #3, !dbg !1055
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1056
  %61 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1057
  store %union.acpi_operand_object* %60, %union.acpi_operand_object** %61, align 8, !dbg !1058
  %62 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1059
  %return_flags75 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %62, i32 0, i32 9, !dbg !1060
  %63 = load i32, i32* %return_flags75, align 8, !dbg !1061
  %or76 = or i32 %63, 1, !dbg !1061
  store i32 %or76, i32* %return_flags75, align 8, !dbg !1061
  store i32 0, i32* %retval, align 4, !dbg !1062
  br label %return, !dbg !1062

return:                                           ; preds = %if.end74, %if.end63, %if.then61, %if.end29, %if.then26, %if.then14, %if.then6
  %64 = load i32, i32* %retval, align 4, !dbg !1063
  ret i32 %64, !dbg !1063
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.acpi_simple_repair_info* @acpi_ns_match_simple_repair(%struct.acpi_namespace_node* %node, i32 %return_btype, i32 %package_index) #0 !dbg !1064 {
entry:
  %retval = alloca %struct.acpi_simple_repair_info*, align 8
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %return_btype.addr = alloca i32, align 4
  %package_index.addr = alloca i32, align 4
  %this_name = alloca %struct.acpi_simple_repair_info*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1067, metadata !DIExpression()), !dbg !1068
  store i32 %return_btype, i32* %return_btype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %return_btype.addr, metadata !1069, metadata !DIExpression()), !dbg !1070
  store i32 %package_index, i32* %package_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %package_index.addr, metadata !1071, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.declare(metadata %struct.acpi_simple_repair_info** %this_name, metadata !1073, metadata !DIExpression()), !dbg !1074
  store %struct.acpi_simple_repair_info* getelementptr inbounds ([7 x %struct.acpi_simple_repair_info], [7 x %struct.acpi_simple_repair_info]* @acpi_object_repair_info, i64 0, i64 0), %struct.acpi_simple_repair_info** %this_name, align 8, !dbg !1075
  br label %while.cond, !dbg !1076

while.cond:                                       ; preds = %if.end9, %entry
  %0 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %this_name, align 8, !dbg !1077
  %object_converter = getelementptr inbounds %struct.acpi_simple_repair_info, %struct.acpi_simple_repair_info* %0, i32 0, i32 3, !dbg !1078
  %1 = load i32 (%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**)*, i32 (%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**)** %object_converter, align 8, !dbg !1078
  %tobool = icmp ne i32 (%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**)* %1, null, !dbg !1076
  br i1 %tobool, label %while.body, label %while.end, !dbg !1076

while.body:                                       ; preds = %while.cond
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1079
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %2, i32 0, i32 4, !dbg !1079
  %ascii = bitcast %union.acpi_name_union* %name to [4 x i8]*, !dbg !1079
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !1079
  %3 = bitcast i8* %arraydecay to i32*, !dbg !1079
  %4 = load i32, i32* %3, align 4, !dbg !1079
  %5 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %this_name, align 8, !dbg !1079
  %name1 = getelementptr inbounds %struct.acpi_simple_repair_info, %struct.acpi_simple_repair_info* %5, i32 0, i32 0, !dbg !1079
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %name1, i64 0, i64 0, !dbg !1079
  %6 = bitcast i8* %arraydecay2 to i32*, !dbg !1079
  %7 = load i32, i32* %6, align 4, !dbg !1079
  %cmp = icmp eq i32 %4, %7, !dbg !1079
  br i1 %cmp, label %if.then, label %if.end9, !dbg !1082

if.then:                                          ; preds = %while.body
  %8 = load i32, i32* %return_btype.addr, align 4, !dbg !1083
  %9 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %this_name, align 8, !dbg !1086
  %unexpected_btypes = getelementptr inbounds %struct.acpi_simple_repair_info, %struct.acpi_simple_repair_info* %9, i32 0, i32 1, !dbg !1087
  %10 = load i32, i32* %unexpected_btypes, align 4, !dbg !1087
  %and = and i32 %8, %10, !dbg !1088
  %tobool3 = icmp ne i32 %and, 0, !dbg !1088
  br i1 %tobool3, label %land.lhs.true, label %if.end, !dbg !1089

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %this_name, align 8, !dbg !1090
  %package_index4 = getelementptr inbounds %struct.acpi_simple_repair_info, %struct.acpi_simple_repair_info* %11, i32 0, i32 2, !dbg !1091
  %12 = load i32, i32* %package_index4, align 8, !dbg !1091
  %cmp5 = icmp eq i32 %12, -2, !dbg !1092
  br i1 %cmp5, label %if.then8, label %lor.lhs.false, !dbg !1093

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load i32, i32* %package_index.addr, align 4, !dbg !1094
  %14 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %this_name, align 8, !dbg !1095
  %package_index6 = getelementptr inbounds %struct.acpi_simple_repair_info, %struct.acpi_simple_repair_info* %14, i32 0, i32 2, !dbg !1096
  %15 = load i32, i32* %package_index6, align 8, !dbg !1096
  %cmp7 = icmp eq i32 %13, %15, !dbg !1097
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !1098

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %this_name, align 8, !dbg !1099
  store %struct.acpi_simple_repair_info* %16, %struct.acpi_simple_repair_info** %retval, align 8, !dbg !1101
  br label %return, !dbg !1101

if.end:                                           ; preds = %lor.lhs.false, %if.then
  store %struct.acpi_simple_repair_info* null, %struct.acpi_simple_repair_info** %retval, align 8, !dbg !1102
  br label %return, !dbg !1102

if.end9:                                          ; preds = %while.body
  %17 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %this_name, align 8, !dbg !1103
  %incdec.ptr = getelementptr %struct.acpi_simple_repair_info, %struct.acpi_simple_repair_info* %17, i32 1, !dbg !1103
  store %struct.acpi_simple_repair_info* %incdec.ptr, %struct.acpi_simple_repair_info** %this_name, align 8, !dbg !1103
  br label %while.cond, !dbg !1076, !llvm.loop !1104

while.end:                                        ; preds = %while.cond
  store %struct.acpi_simple_repair_info* null, %struct.acpi_simple_repair_info** %retval, align 8, !dbg !1106
  br label %return, !dbg !1106

return:                                           ; preds = %while.end, %if.end, %if.then8
  %18 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %retval, align 8, !dbg !1107
  ret %struct.acpi_simple_repair_info* %18, !dbg !1107
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_predefined_warning(i8*, i32, i8*, i16 zeroext, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_repair_null_element(%struct.acpi_evaluate_info* %info, i32 %expected_btypes, i32 %package_index, %union.acpi_operand_object** %return_object_ptr) #0 !dbg !1108 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %expected_btypes.addr = alloca i32, align 4
  %package_index.addr = alloca i32, align 4
  %return_object_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %return_object = alloca %union.acpi_operand_object*, align 8
  %new_object = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1109, metadata !DIExpression()), !dbg !1110
  store i32 %expected_btypes, i32* %expected_btypes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %expected_btypes.addr, metadata !1111, metadata !DIExpression()), !dbg !1112
  store i32 %package_index, i32* %package_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %package_index.addr, metadata !1113, metadata !DIExpression()), !dbg !1114
  store %union.acpi_operand_object** %return_object_ptr, %union.acpi_operand_object*** %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object_ptr.addr, metadata !1115, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_object, metadata !1117, metadata !DIExpression()), !dbg !1118
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1119
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !1120
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %return_object, align 8, !dbg !1118
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %new_object, metadata !1121, metadata !DIExpression()), !dbg !1122
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1123
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !1123
  br i1 %tobool, label %if.then, label %if.end, !dbg !1125

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1126
  br label %return, !dbg !1126

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %expected_btypes.addr, align 4, !dbg !1128
  %and = and i32 %3, 2, !dbg !1130
  %tobool1 = icmp ne i32 %and, 0, !dbg !1130
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !1131

if.then2:                                         ; preds = %if.end
  %call = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 0) #3, !dbg !1132
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %new_object, align 8, !dbg !1134
  br label %if.end15, !dbg !1135

if.else:                                          ; preds = %if.end
  %4 = load i32, i32* %expected_btypes.addr, align 4, !dbg !1136
  %and3 = and i32 %4, 4, !dbg !1138
  %tobool4 = icmp ne i32 %and3, 0, !dbg !1138
  br i1 %tobool4, label %if.then5, label %if.else7, !dbg !1139

if.then5:                                         ; preds = %if.else
  %call6 = call %union.acpi_operand_object* @acpi_ut_create_string_object(i64 0) #3, !dbg !1140
  store %union.acpi_operand_object* %call6, %union.acpi_operand_object** %new_object, align 8, !dbg !1142
  br label %if.end14, !dbg !1143

if.else7:                                         ; preds = %if.else
  %5 = load i32, i32* %expected_btypes.addr, align 4, !dbg !1144
  %and8 = and i32 %5, 8, !dbg !1146
  %tobool9 = icmp ne i32 %and8, 0, !dbg !1146
  br i1 %tobool9, label %if.then10, label %if.else12, !dbg !1147

if.then10:                                        ; preds = %if.else7
  %call11 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 0) #3, !dbg !1148
  store %union.acpi_operand_object* %call11, %union.acpi_operand_object** %new_object, align 8, !dbg !1150
  br label %if.end13, !dbg !1151

if.else12:                                        ; preds = %if.else7
  store i32 12291, i32* %retval, align 4, !dbg !1152
  br label %return, !dbg !1152

if.end13:                                         ; preds = %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then5
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1154
  %tobool16 = icmp ne %union.acpi_operand_object* %6, null, !dbg !1154
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !1156

if.then17:                                        ; preds = %if.end15
  store i32 4, i32* %retval, align 4, !dbg !1157
  br label %return, !dbg !1157

if.end18:                                         ; preds = %if.end15
  %7 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1159
  %parent_package = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %7, i32 0, i32 8, !dbg !1160
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %parent_package, align 8, !dbg !1160
  %common = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_common*, !dbg !1161
  %reference_count = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 3, !dbg !1162
  %9 = load i16, i16* %reference_count, align 2, !dbg !1162
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1163
  %common19 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_common*, !dbg !1164
  %reference_count20 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common19, i32 0, i32 3, !dbg !1165
  store i16 %9, i16* %reference_count20, align 2, !dbg !1166
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1167
  %12 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1168
  store %union.acpi_operand_object* %11, %union.acpi_operand_object** %12, align 8, !dbg !1169
  %13 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1170
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %13, i32 0, i32 9, !dbg !1171
  %14 = load i32, i32* %return_flags, align 8, !dbg !1172
  %or = or i32 %14, 1, !dbg !1172
  store i32 %or, i32* %return_flags, align 8, !dbg !1172
  store i32 0, i32* %retval, align 4, !dbg !1173
  br label %return, !dbg !1173

return:                                           ; preds = %if.end18, %if.then17, %if.else12, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !1174
  ret i32 %15, !dbg !1174
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_convert_to_integer(%union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_convert_to_string(%union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_convert_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_wrap_with_package(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object* %original_object, %union.acpi_operand_object** %obj_desc_ptr) #0 !dbg !1175 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %original_object.addr = alloca %union.acpi_operand_object*, align 8
  %obj_desc_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %pkg_obj_desc = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1178, metadata !DIExpression()), !dbg !1179
  store %union.acpi_operand_object* %original_object, %union.acpi_operand_object** %original_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %original_object.addr, metadata !1180, metadata !DIExpression()), !dbg !1181
  store %union.acpi_operand_object** %obj_desc_ptr, %union.acpi_operand_object*** %obj_desc_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %obj_desc_ptr.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %pkg_obj_desc, metadata !1184, metadata !DIExpression()), !dbg !1185
  %call = call %union.acpi_operand_object* @acpi_ut_create_package_object(i32 1) #3, !dbg !1186
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %pkg_obj_desc, align 8, !dbg !1187
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %pkg_obj_desc, align 8, !dbg !1188
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1188
  br i1 %tobool, label %if.end, label %if.then, !dbg !1190

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !1191
  br label %return, !dbg !1191

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1193
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %pkg_obj_desc, align 8, !dbg !1194
  %package = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_package*, !dbg !1195
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 6, !dbg !1196
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1196
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %3, i64 0, !dbg !1194
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %arrayidx, align 8, !dbg !1197
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %pkg_obj_desc, align 8, !dbg !1198
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %obj_desc_ptr.addr, align 8, !dbg !1199
  store %union.acpi_operand_object* %4, %union.acpi_operand_object** %5, align 8, !dbg !1200
  %6 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1201
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %6, i32 0, i32 9, !dbg !1202
  %7 = load i32, i32* %return_flags, align 8, !dbg !1203
  %or = or i32 %7, 3, !dbg !1203
  store i32 %or, i32* %return_flags, align 8, !dbg !1203
  store i32 0, i32* %retval, align 4, !dbg !1204
  br label %return, !dbg !1204

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !1205
  ret i32 %8, !dbg !1205
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i64) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_string_object(i64) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_remove_null_elements(%struct.acpi_evaluate_info* %info, i8 zeroext %package_type, %union.acpi_operand_object* %obj_desc) #0 !dbg !1206 {
entry:
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %package_type.addr = alloca i8, align 1
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %source = alloca %union.acpi_operand_object**, align 8
  %dest = alloca %union.acpi_operand_object**, align 8
  %count = alloca i32, align 4
  %new_count = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1209, metadata !DIExpression()), !dbg !1210
  store i8 %package_type, i8* %package_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %package_type.addr, metadata !1211, metadata !DIExpression()), !dbg !1212
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1213, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %source, metadata !1215, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %dest, metadata !1217, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.declare(metadata i32* %count, metadata !1219, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.declare(metadata i32* %new_count, metadata !1221, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1223, metadata !DIExpression()), !dbg !1224
  %0 = load i8, i8* %package_type.addr, align 1, !dbg !1225
  %conv = zext i8 %0 to i32, !dbg !1225
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb1
    i32 1, label %sw.bb1
    i32 3, label %sw.bb1
  ], !dbg !1226

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog, !dbg !1227

sw.default:                                       ; preds = %entry
  br label %sw.bb1, !dbg !1227

sw.bb1:                                           ; preds = %entry, %entry, %entry, %sw.default
  br label %if.end11, !dbg !1229

sw.epilog:                                        ; preds = %sw.bb
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1230
  %package = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_package*, !dbg !1231
  %count2 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 9, !dbg !1232
  %2 = load i32, i32* %count2, align 4, !dbg !1232
  store i32 %2, i32* %count, align 4, !dbg !1233
  %3 = load i32, i32* %count, align 4, !dbg !1234
  store i32 %3, i32* %new_count, align 4, !dbg !1235
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1236
  %package3 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_package*, !dbg !1237
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package3, i32 0, i32 6, !dbg !1238
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1238
  store %union.acpi_operand_object** %5, %union.acpi_operand_object*** %source, align 8, !dbg !1239
  %6 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %source, align 8, !dbg !1240
  store %union.acpi_operand_object** %6, %union.acpi_operand_object*** %dest, align 8, !dbg !1241
  store i32 0, i32* %i, align 4, !dbg !1242
  br label %for.cond, !dbg !1244

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %7 = load i32, i32* %i, align 4, !dbg !1245
  %8 = load i32, i32* %count, align 4, !dbg !1247
  %cmp = icmp ult i32 %7, %8, !dbg !1248
  br i1 %cmp, label %for.body, label %for.end, !dbg !1249

for.body:                                         ; preds = %for.cond
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %source, align 8, !dbg !1250
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8, !dbg !1253
  %tobool = icmp ne %union.acpi_operand_object* %10, null, !dbg !1253
  br i1 %tobool, label %if.else, label %if.then, !dbg !1254

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %new_count, align 4, !dbg !1255
  %dec = add i32 %11, -1, !dbg !1255
  store i32 %dec, i32* %new_count, align 4, !dbg !1255
  br label %if.end, !dbg !1257

if.else:                                          ; preds = %for.body
  %12 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %source, align 8, !dbg !1258
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8, !dbg !1260
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %dest, align 8, !dbg !1261
  store %union.acpi_operand_object* %13, %union.acpi_operand_object** %14, align 8, !dbg !1262
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %dest, align 8, !dbg !1263
  %incdec.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %15, i32 1, !dbg !1263
  store %union.acpi_operand_object** %incdec.ptr, %union.acpi_operand_object*** %dest, align 8, !dbg !1263
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %source, align 8, !dbg !1264
  %incdec.ptr5 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %16, i32 1, !dbg !1264
  store %union.acpi_operand_object** %incdec.ptr5, %union.acpi_operand_object*** %source, align 8, !dbg !1264
  br label %for.inc, !dbg !1265

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !dbg !1266
  %inc = add i32 %17, 1, !dbg !1266
  store i32 %inc, i32* %i, align 4, !dbg !1266
  br label %for.cond, !dbg !1267, !llvm.loop !1268

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %new_count, align 4, !dbg !1270
  %19 = load i32, i32* %count, align 4, !dbg !1272
  %cmp6 = icmp ult i32 %18, %19, !dbg !1273
  br i1 %cmp6, label %if.then8, label %if.end11, !dbg !1274

if.then8:                                         ; preds = %for.end
  %20 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %dest, align 8, !dbg !1275
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %20, align 8, !dbg !1277
  %21 = load i32, i32* %new_count, align 4, !dbg !1278
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1279
  %package9 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_package*, !dbg !1280
  %count10 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package9, i32 0, i32 9, !dbg !1281
  store i32 %21, i32* %count10, align 4, !dbg !1282
  br label %if.end11, !dbg !1283

if.end11:                                         ; preds = %sw.bb1, %if.then8, %for.end
  ret void, !dbg !1284
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_package_object(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_convert_to_resource(%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_convert_to_reference(%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_convert_to_unicode(%struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object**) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!799, !800, !801, !802}
!llvm.ident = !{!803}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !797, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsrepair.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !8, !13, !16, !17}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !15)
!15 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !{!0, !19}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "acpi_object_repair_info", scope: !2, file: !3, line: 66, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1344, elements: !383)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_simple_repair_info", file: !24, line: 372, size: 192, elements: !25)
!24 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !31, !32, !33}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !23, file: !24, line: 373, baseType: !27, size: 32)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !29)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{!30}
!30 = !DISubrange(count: 4)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "unexpected_btypes", scope: !23, file: !24, line: 374, baseType: !8, size: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "package_index", scope: !23, file: !24, line: 375, baseType: !8, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "object_converter", scope: !23, file: !24, line: 376, baseType: !34, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_converter", file: !24, line: 365, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{!6, !38, !42, !108}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !24, line: 133, size: 384, elements: !40)
!40 = !{!41, !784, !785, !786, !787, !793, !794, !795, !796}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !39, file: !24, line: 134, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !44, line: 367, size: 576, elements: !45)
!44 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !60, !73, !84, !98, !112, !121, !435, !452, !467, !480, !558, !570, !584, !594, !612, !634, !653, !672, !691, !704, !730, !747, !760, !774, !783}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !43, file: !44, line: 368, baseType: !47, size: 128)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !44, line: 73, size: 128, elements: !48)
!48 = !{!49, !50, !54, !55, !59}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !47, file: !44, line: 74, baseType: !42, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !47, file: !44, line: 74, baseType: !51, size: 8, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !53)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !47, file: !44, line: 74, baseType: !51, size: 8, offset: 72)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !47, file: !44, line: 74, baseType: !56, size: 16, offset: 80)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !58)
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !47, file: !44, line: 74, baseType: !51, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !43, file: !44, line: 369, baseType: !61, size: 192)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !44, line: 76, size: 192, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !72}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !61, file: !44, line: 77, baseType: !42, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !61, file: !44, line: 77, baseType: !51, size: 8, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !44, line: 77, baseType: !51, size: 8, offset: 72)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !61, file: !44, line: 77, baseType: !56, size: 16, offset: 80)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !61, file: !44, line: 77, baseType: !51, size: 8, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !61, file: !44, line: 77, baseType: !69, size: 24, offset: 104)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 24, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !61, file: !44, line: 78, baseType: !13, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !43, file: !44, line: 370, baseType: !74, size: 256)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !44, line: 93, size: 256, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !83}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !74, file: !44, line: 94, baseType: !42, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !74, file: !44, line: 94, baseType: !51, size: 8, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !44, line: 94, baseType: !51, size: 8, offset: 72)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !74, file: !44, line: 94, baseType: !56, size: 16, offset: 80)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !74, file: !44, line: 94, baseType: !51, size: 8, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !74, file: !44, line: 94, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !74, file: !44, line: 94, baseType: !8, size: 32, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !43, file: !44, line: 371, baseType: !85, size: 384)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !44, line: 97, size: 384, elements: !86)
!86 = !{!87, !88, !89, !90, !91, !92, !94, !95, !96, !97}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !85, file: !44, line: 98, baseType: !42, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !85, file: !44, line: 98, baseType: !51, size: 8, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !85, file: !44, line: 98, baseType: !51, size: 8, offset: 72)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !85, file: !44, line: 98, baseType: !56, size: 16, offset: 80)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !85, file: !44, line: 98, baseType: !51, size: 8, offset: 96)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !85, file: !44, line: 98, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !85, file: !44, line: 98, baseType: !8, size: 32, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !85, file: !44, line: 99, baseType: !8, size: 32, offset: 224)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !85, file: !44, line: 100, baseType: !93, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !85, file: !44, line: 101, baseType: !38, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !43, file: !44, line: 372, baseType: !99, size: 384)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !44, line: 104, size: 384, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !107, !109, !110, !111}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !99, file: !44, line: 105, baseType: !42, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !99, file: !44, line: 105, baseType: !51, size: 8, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !44, line: 105, baseType: !51, size: 8, offset: 72)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !99, file: !44, line: 105, baseType: !56, size: 16, offset: 80)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !44, line: 105, baseType: !51, size: 8, offset: 96)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !99, file: !44, line: 105, baseType: !38, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !99, file: !44, line: 106, baseType: !108, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !99, file: !44, line: 107, baseType: !93, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !99, file: !44, line: 108, baseType: !8, size: 32, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !99, file: !44, line: 109, baseType: !8, size: 32, offset: 352)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !43, file: !44, line: 373, baseType: !113, size: 192)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !44, line: 118, size: 192, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !113, file: !44, line: 119, baseType: !42, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !113, file: !44, line: 119, baseType: !51, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !44, line: 119, baseType: !51, size: 8, offset: 72)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !113, file: !44, line: 119, baseType: !56, size: 16, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !44, line: 119, baseType: !51, size: 8, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !113, file: !44, line: 119, baseType: !17, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !43, file: !44, line: 374, baseType: !122, size: 448)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !44, line: 143, size: 448, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !432, !433, !434}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !122, file: !44, line: 144, baseType: !42, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !122, file: !44, line: 144, baseType: !51, size: 8, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !44, line: 144, baseType: !51, size: 8, offset: 72)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !122, file: !44, line: 144, baseType: !56, size: 16, offset: 80)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !44, line: 144, baseType: !51, size: 8, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !122, file: !44, line: 144, baseType: !51, size: 8, offset: 104)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !122, file: !44, line: 145, baseType: !51, size: 8, offset: 112)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !122, file: !44, line: 146, baseType: !51, size: 8, offset: 120)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !122, file: !44, line: 147, baseType: !42, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !122, file: !44, line: 148, baseType: !42, size: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !122, file: !44, line: 149, baseType: !93, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !122, file: !44, line: 153, baseType: !136, size: 64, offset: 320)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !122, file: !44, line: 150, size: 64, elements: !137)
!137 = !{!138, !431}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !136, file: !44, line: 151, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !24, line: 248, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!6, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !145, line: 37, size: 9024, elements: !146)
!145 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !377, !378, !379, !380, !381, !385, !387, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !414, !415, !416, !417, !418, !419, !420, !421, !423, !429}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !144, file: !145, line: 38, baseType: !143, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !144, file: !145, line: 39, baseType: !51, size: 8, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !144, file: !145, line: 40, baseType: !51, size: 8, offset: 72)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !144, file: !145, line: 41, baseType: !56, size: 16, offset: 80)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !144, file: !145, line: 42, baseType: !51, size: 8, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !144, file: !145, line: 43, baseType: !51, size: 8, offset: 104)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !144, file: !145, line: 44, baseType: !51, size: 8, offset: 112)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !144, file: !145, line: 45, baseType: !155, size: 16, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !56)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !144, file: !145, line: 46, baseType: !51, size: 8, offset: 144)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !144, file: !145, line: 47, baseType: !51, size: 8, offset: 152)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !144, file: !145, line: 48, baseType: !51, size: 8, offset: 160)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !144, file: !145, line: 49, baseType: !51, size: 8, offset: 168)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !144, file: !145, line: 50, baseType: !51, size: 8, offset: 176)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !144, file: !145, line: 51, baseType: !51, size: 8, offset: 184)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !144, file: !145, line: 52, baseType: !51, size: 8, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !144, file: !145, line: 53, baseType: !51, size: 8, offset: 200)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !144, file: !145, line: 54, baseType: !93, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !144, file: !145, line: 55, baseType: !8, size: 32, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !144, file: !145, line: 56, baseType: !8, size: 32, offset: 352)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !144, file: !145, line: 57, baseType: !8, size: 32, offset: 384)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !144, file: !145, line: 58, baseType: !8, size: 32, offset: 416)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !144, file: !145, line: 60, baseType: !170, size: 640, offset: 448)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !24, line: 893, size: 640, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !177, !258, !259, !375, !376}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !170, file: !24, line: 894, baseType: !93, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !170, file: !24, line: 895, baseType: !93, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !170, file: !24, line: 896, baseType: !93, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !170, file: !24, line: 897, baseType: !93, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !170, file: !24, line: 898, baseType: !93, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !170, file: !24, line: 899, baseType: !178, size: 64, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !24, line: 875, size: 1600, elements: !180)
!180 = !{!181, !201, !217}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !179, file: !24, line: 876, baseType: !182, size: 448)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !24, line: 828, size: 448, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !200}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !182, file: !24, line: 829, baseType: !178, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !182, file: !24, line: 829, baseType: !51, size: 8, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !24, line: 829, baseType: !51, size: 8, offset: 72)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !182, file: !24, line: 829, baseType: !56, size: 16, offset: 80)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !182, file: !24, line: 829, baseType: !93, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !24, line: 829, baseType: !178, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !182, file: !24, line: 829, baseType: !38, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !182, file: !24, line: 829, baseType: !192, size: 64, offset: 320)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !24, line: 716, size: 64, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !192, file: !24, line: 717, baseType: !13, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !192, file: !24, line: 718, baseType: !8, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !192, file: !24, line: 719, baseType: !82, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !192, file: !24, line: 720, baseType: !93, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !24, line: 721, baseType: !82, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !192, file: !24, line: 722, baseType: !178, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !182, file: !24, line: 829, baseType: !51, size: 8, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !179, file: !24, line: 877, baseType: !202, size: 640)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !24, line: 835, size: 640, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !202, file: !24, line: 836, baseType: !178, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !202, file: !24, line: 836, baseType: !51, size: 8, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !24, line: 836, baseType: !51, size: 8, offset: 72)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !202, file: !24, line: 836, baseType: !56, size: 16, offset: 80)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !202, file: !24, line: 836, baseType: !93, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !24, line: 836, baseType: !178, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !202, file: !24, line: 836, baseType: !38, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !202, file: !24, line: 836, baseType: !192, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !202, file: !24, line: 836, baseType: !51, size: 8, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !202, file: !24, line: 836, baseType: !82, size: 64, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !202, file: !24, line: 837, baseType: !93, size: 64, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !202, file: !24, line: 838, baseType: !8, size: 32, offset: 576)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !24, line: 839, baseType: !8, size: 32, offset: 608)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !179, file: !24, line: 878, baseType: !218, size: 1600)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !24, line: 846, size: 1600, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !218, file: !24, line: 847, baseType: !178, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !218, file: !24, line: 847, baseType: !51, size: 8, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !24, line: 847, baseType: !51, size: 8, offset: 72)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !218, file: !24, line: 847, baseType: !56, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !218, file: !24, line: 847, baseType: !93, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !24, line: 847, baseType: !178, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !218, file: !24, line: 847, baseType: !38, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !218, file: !24, line: 847, baseType: !192, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !218, file: !24, line: 847, baseType: !51, size: 8, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !218, file: !24, line: 847, baseType: !178, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !218, file: !24, line: 848, baseType: !178, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !218, file: !24, line: 849, baseType: !82, size: 64, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !218, file: !24, line: 850, baseType: !51, size: 8, offset: 640)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !218, file: !24, line: 851, baseType: !82, size: 64, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !218, file: !24, line: 852, baseType: !82, size: 64, offset: 768)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !218, file: !24, line: 853, baseType: !82, size: 64, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !218, file: !24, line: 854, baseType: !27, size: 32, offset: 896)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !218, file: !24, line: 855, baseType: !8, size: 32, offset: 928)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !218, file: !24, line: 856, baseType: !8, size: 32, offset: 960)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !218, file: !24, line: 857, baseType: !8, size: 32, offset: 992)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !218, file: !24, line: 858, baseType: !8, size: 32, offset: 1024)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !218, file: !24, line: 859, baseType: !8, size: 32, offset: 1056)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !218, file: !24, line: 860, baseType: !8, size: 32, offset: 1088)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !218, file: !24, line: 861, baseType: !8, size: 32, offset: 1120)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !218, file: !24, line: 862, baseType: !8, size: 32, offset: 1152)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !218, file: !24, line: 863, baseType: !8, size: 32, offset: 1184)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !218, file: !24, line: 864, baseType: !8, size: 32, offset: 1216)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !218, file: !24, line: 865, baseType: !8, size: 32, offset: 1248)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !218, file: !24, line: 866, baseType: !8, size: 32, offset: 1280)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !218, file: !24, line: 867, baseType: !8, size: 32, offset: 1312)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !218, file: !24, line: 868, baseType: !56, size: 16, offset: 1344)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !218, file: !24, line: 869, baseType: !51, size: 8, offset: 1360)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !218, file: !24, line: 870, baseType: !51, size: 8, offset: 1368)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !218, file: !24, line: 871, baseType: !51, size: 8, offset: 1376)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !218, file: !24, line: 872, baseType: !255, size: 160, offset: 1384)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 20)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !170, file: !24, line: 900, baseType: !38, size: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !170, file: !24, line: 901, baseType: !260, size: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !24, line: 663, size: 640, elements: !262)
!262 = !{!263, !271, !284, !293, !302, !315, !329, !341, !353}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !261, file: !24, line: 664, baseType: !264, size: 128)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !24, line: 567, size: 128, elements: !265)
!265 = !{!266, !267, !268, !269, !270}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !24, line: 568, baseType: !17, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !264, file: !24, line: 568, baseType: !51, size: 8, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !264, file: !24, line: 568, baseType: !51, size: 8, offset: 72)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !264, file: !24, line: 568, baseType: !56, size: 16, offset: 80)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !264, file: !24, line: 568, baseType: !56, size: 16, offset: 96)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !261, file: !24, line: 665, baseType: !272, size: 384)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !24, line: 593, size: 384, elements: !273)
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !24, line: 594, baseType: !17, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !272, file: !24, line: 594, baseType: !51, size: 8, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !272, file: !24, line: 594, baseType: !51, size: 8, offset: 72)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !272, file: !24, line: 594, baseType: !56, size: 16, offset: 80)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !272, file: !24, line: 594, baseType: !56, size: 16, offset: 96)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !272, file: !24, line: 594, baseType: !56, size: 16, offset: 112)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !272, file: !24, line: 595, baseType: !178, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !272, file: !24, line: 596, baseType: !93, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !272, file: !24, line: 597, baseType: !93, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !272, file: !24, line: 598, baseType: !13, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !261, file: !24, line: 666, baseType: !285, size: 192)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !24, line: 573, size: 192, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !285, file: !24, line: 574, baseType: !17, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !285, file: !24, line: 574, baseType: !51, size: 8, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !285, file: !24, line: 574, baseType: !51, size: 8, offset: 72)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !285, file: !24, line: 574, baseType: !56, size: 16, offset: 80)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !285, file: !24, line: 574, baseType: !56, size: 16, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !285, file: !24, line: 574, baseType: !42, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !261, file: !24, line: 667, baseType: !294, size: 192)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !24, line: 604, size: 192, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !24, line: 605, baseType: !17, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !294, file: !24, line: 605, baseType: !51, size: 8, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !24, line: 605, baseType: !51, size: 8, offset: 72)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !294, file: !24, line: 605, baseType: !56, size: 16, offset: 80)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !294, file: !24, line: 605, baseType: !56, size: 16, offset: 96)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !294, file: !24, line: 605, baseType: !38, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !261, file: !24, line: 668, baseType: !303, size: 448)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !24, line: 608, size: 448, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !24, line: 609, baseType: !17, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !303, file: !24, line: 609, baseType: !51, size: 8, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !24, line: 609, baseType: !51, size: 8, offset: 72)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !24, line: 609, baseType: !56, size: 16, offset: 80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !303, file: !24, line: 609, baseType: !56, size: 16, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !303, file: !24, line: 609, baseType: !8, size: 32, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !303, file: !24, line: 610, baseType: !178, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !303, file: !24, line: 611, baseType: !93, size: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !303, file: !24, line: 612, baseType: !93, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !303, file: !24, line: 613, baseType: !8, size: 32, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !261, file: !24, line: 669, baseType: !316, size: 512)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !24, line: 580, size: 512, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !24, line: 581, baseType: !17, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !316, file: !24, line: 581, baseType: !51, size: 8, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !24, line: 581, baseType: !51, size: 8, offset: 72)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !316, file: !24, line: 581, baseType: !56, size: 16, offset: 80)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !316, file: !24, line: 581, baseType: !56, size: 16, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !316, file: !24, line: 581, baseType: !8, size: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !316, file: !24, line: 582, baseType: !42, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !316, file: !24, line: 583, baseType: !42, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !316, file: !24, line: 584, baseType: !143, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !316, file: !24, line: 585, baseType: !17, size: 64, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !316, file: !24, line: 586, baseType: !8, size: 32, offset: 448)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !261, file: !24, line: 670, baseType: !330, size: 320)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !24, line: 620, size: 320, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !24, line: 621, baseType: !17, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !330, file: !24, line: 621, baseType: !51, size: 8, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !24, line: 621, baseType: !51, size: 8, offset: 72)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !330, file: !24, line: 621, baseType: !56, size: 16, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !330, file: !24, line: 621, baseType: !56, size: 16, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !330, file: !24, line: 621, baseType: !51, size: 8, offset: 112)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !330, file: !24, line: 622, baseType: !143, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !330, file: !24, line: 623, baseType: !42, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !330, file: !24, line: 624, baseType: !13, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !261, file: !24, line: 671, baseType: !342, size: 640)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !24, line: 631, size: 640, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !24, line: 632, baseType: !17, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !342, file: !24, line: 632, baseType: !51, size: 8, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !24, line: 632, baseType: !51, size: 8, offset: 72)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !342, file: !24, line: 632, baseType: !56, size: 16, offset: 80)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !342, file: !24, line: 632, baseType: !56, size: 16, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !342, file: !24, line: 633, baseType: !350, size: 512, offset: 128)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 512, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 8)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !261, file: !24, line: 672, baseType: !354, size: 320)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !24, line: 654, size: 320, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !24, line: 655, baseType: !17, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !354, file: !24, line: 655, baseType: !51, size: 8, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !24, line: 655, baseType: !51, size: 8, offset: 72)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !354, file: !24, line: 655, baseType: !56, size: 16, offset: 80)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !354, file: !24, line: 655, baseType: !56, size: 16, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !354, file: !24, line: 655, baseType: !51, size: 8, offset: 112)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !354, file: !24, line: 656, baseType: !38, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !354, file: !24, line: 657, baseType: !42, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !354, file: !24, line: 658, baseType: !365, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !24, line: 645, size: 128, elements: !367)
!367 = !{!368, !374}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !366, file: !24, line: 646, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !373, !8, !17}
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !17)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !366, file: !24, line: 647, baseType: !17, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !170, file: !24, line: 902, baseType: !178, size: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !170, file: !24, line: 903, baseType: !8, size: 32, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !144, file: !145, line: 61, baseType: !8, size: 32, offset: 1088)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !144, file: !145, line: 62, baseType: !8, size: 32, offset: 1120)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !144, file: !145, line: 63, baseType: !56, size: 16, offset: 1152)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !144, file: !145, line: 64, baseType: !51, size: 8, offset: 1168)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !144, file: !145, line: 66, baseType: !382, size: 2688, offset: 1216)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2688, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 7)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !144, file: !145, line: 67, baseType: !386, size: 3072, offset: 3904)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3072, elements: !351)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !144, file: !145, line: 68, baseType: !388, size: 576, offset: 6976)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 576, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 9)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !144, file: !145, line: 69, baseType: !108, size: 64, offset: 7552)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !144, file: !145, line: 71, baseType: !93, size: 64, offset: 7616)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !144, file: !145, line: 72, baseType: !108, size: 64, offset: 7680)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !144, file: !145, line: 73, baseType: !260, size: 64, offset: 7744)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !144, file: !145, line: 74, baseType: !38, size: 64, offset: 7808)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !144, file: !145, line: 75, baseType: !42, size: 64, offset: 7872)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !144, file: !145, line: 76, baseType: !38, size: 64, offset: 7936)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !144, file: !145, line: 77, baseType: !178, size: 64, offset: 8000)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !144, file: !145, line: 78, baseType: !42, size: 64, offset: 8064)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !144, file: !145, line: 79, baseType: !38, size: 64, offset: 8128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !144, file: !145, line: 80, baseType: !82, size: 64, offset: 8192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !144, file: !145, line: 81, baseType: !178, size: 64, offset: 8256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !144, file: !145, line: 82, baseType: !404, size: 64, offset: 8320)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !24, line: 702, size: 128, elements: !407)
!407 = !{!408, !409, !410, !411, !412, !413}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !406, file: !24, line: 706, baseType: !8, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !406, file: !24, line: 707, baseType: !8, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !406, file: !24, line: 708, baseType: !56, size: 16, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !406, file: !24, line: 709, baseType: !51, size: 8, offset: 80)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !406, file: !24, line: 710, baseType: !51, size: 8, offset: 88)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !406, file: !24, line: 711, baseType: !51, size: 8, offset: 96)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !144, file: !145, line: 83, baseType: !178, size: 64, offset: 8384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !144, file: !145, line: 84, baseType: !42, size: 64, offset: 8448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !144, file: !145, line: 85, baseType: !260, size: 64, offset: 8512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !144, file: !145, line: 86, baseType: !42, size: 64, offset: 8576)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !144, file: !145, line: 87, baseType: !260, size: 64, offset: 8640)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !144, file: !145, line: 88, baseType: !178, size: 64, offset: 8704)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !144, file: !145, line: 89, baseType: !178, size: 64, offset: 8768)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !144, file: !145, line: 90, baseType: !422, size: 64, offset: 8832)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !144, file: !145, line: 91, baseType: !424, size: 64, offset: 8896)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !24, line: 637, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!6, !143, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !144, file: !145, line: 92, baseType: !430, size: 64, offset: 8960)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !24, line: 641, baseType: !140)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !136, file: !44, line: 152, baseType: !42, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !122, file: !44, line: 155, baseType: !8, size: 32, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !122, file: !44, line: 156, baseType: !155, size: 16, offset: 416)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !122, file: !44, line: 157, baseType: !51, size: 8, offset: 432)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !43, file: !44, line: 375, baseType: !436, size: 576)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !44, line: 122, size: 576, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !436, file: !44, line: 123, baseType: !42, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !436, file: !44, line: 123, baseType: !51, size: 8, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !436, file: !44, line: 123, baseType: !51, size: 8, offset: 72)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !436, file: !44, line: 123, baseType: !56, size: 16, offset: 80)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !44, line: 123, baseType: !51, size: 8, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !436, file: !44, line: 123, baseType: !51, size: 8, offset: 104)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !436, file: !44, line: 124, baseType: !56, size: 16, offset: 112)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !436, file: !44, line: 125, baseType: !17, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !436, file: !44, line: 126, baseType: !13, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !436, file: !44, line: 127, baseType: !422, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !436, file: !44, line: 128, baseType: !42, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !44, line: 129, baseType: !42, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !436, file: !44, line: 130, baseType: !38, size: 64, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !436, file: !44, line: 131, baseType: !51, size: 8, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !43, file: !44, line: 376, baseType: !453, size: 448)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !44, line: 134, size: 448, elements: !454)
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !466}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !453, file: !44, line: 135, baseType: !42, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !453, file: !44, line: 135, baseType: !51, size: 8, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !453, file: !44, line: 135, baseType: !51, size: 8, offset: 72)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !453, file: !44, line: 135, baseType: !56, size: 16, offset: 80)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !44, line: 135, baseType: !51, size: 8, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !453, file: !44, line: 135, baseType: !51, size: 8, offset: 104)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !453, file: !44, line: 136, baseType: !38, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !453, file: !44, line: 137, baseType: !42, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !44, line: 138, baseType: !42, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !453, file: !44, line: 139, baseType: !465, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !13)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !453, file: !44, line: 140, baseType: !8, size: 32, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !43, file: !44, line: 377, baseType: !468, size: 320)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !44, line: 184, size: 320, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475, !479}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !468, file: !44, line: 185, baseType: !42, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !468, file: !44, line: 185, baseType: !51, size: 8, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !468, file: !44, line: 185, baseType: !51, size: 8, offset: 72)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !468, file: !44, line: 185, baseType: !56, size: 16, offset: 80)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !44, line: 185, baseType: !51, size: 8, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !468, file: !44, line: 185, baseType: !476, size: 128, offset: 128)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 128, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 2)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !468, file: !44, line: 185, baseType: !42, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !43, file: !44, line: 378, baseType: !481, size: 384)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !44, line: 187, size: 384, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !481, file: !44, line: 188, baseType: !42, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !481, file: !44, line: 188, baseType: !51, size: 8, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !481, file: !44, line: 188, baseType: !51, size: 8, offset: 72)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !481, file: !44, line: 188, baseType: !56, size: 16, offset: 80)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !481, file: !44, line: 188, baseType: !51, size: 8, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !481, file: !44, line: 189, baseType: !476, size: 128, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !481, file: !44, line: 189, baseType: !42, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !481, file: !44, line: 189, baseType: !491, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !24, line: 480, size: 576, elements: !493)
!493 = !{!494, !495, !496, !497, !505, !520, !552, !553, !554, !555, !556, !557}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !492, file: !24, line: 481, baseType: !38, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !492, file: !24, line: 482, baseType: !491, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !492, file: !24, line: 483, baseType: !491, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !492, file: !24, line: 484, baseType: !498, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !24, line: 497, size: 256, elements: !500)
!500 = !{!501, !502, !503, !504}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !499, file: !24, line: 498, baseType: !498, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !24, line: 499, baseType: !498, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !499, file: !24, line: 500, baseType: !491, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !499, file: !24, line: 501, baseType: !8, size: 32, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !492, file: !24, line: 485, baseType: !506, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !24, line: 466, size: 320, elements: !508)
!508 = !{!509, !514, !515, !516, !517, !518, !519}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !507, file: !24, line: 467, baseType: !510, size: 128)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !24, line: 459, size: 128, elements: !511)
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !510, file: !24, line: 460, baseType: !51, size: 8)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !510, file: !24, line: 461, baseType: !13, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !507, file: !24, line: 468, baseType: !510, size: 128, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !507, file: !24, line: 469, baseType: !56, size: 16, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !507, file: !24, line: 470, baseType: !51, size: 8, offset: 272)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !507, file: !24, line: 471, baseType: !51, size: 8, offset: 280)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !507, file: !24, line: 472, baseType: !51, size: 8, offset: 288)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !507, file: !24, line: 473, baseType: !51, size: 8, offset: 296)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !492, file: !24, line: 486, baseType: !521, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !24, line: 448, size: 192, elements: !523)
!523 = !{!524, !547, !548, !549, !550, !551}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !522, file: !24, line: 449, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !24, line: 438, size: 64, elements: !526)
!526 = !{!527, !528, !541}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !525, file: !24, line: 439, baseType: !38, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !525, file: !24, line: 440, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !24, line: 419, size: 256, elements: !531)
!531 = !{!532, !537, !538, !539, !540}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !530, file: !24, line: 420, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!8, !373, !8, !17}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !530, file: !24, line: 421, baseType: !17, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !530, file: !24, line: 422, baseType: !38, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !530, file: !24, line: 423, baseType: !51, size: 8, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !530, file: !24, line: 424, baseType: !51, size: 8, offset: 200)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !525, file: !24, line: 441, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !24, line: 429, size: 128, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !543, file: !24, line: 430, baseType: !38, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !543, file: !24, line: 431, baseType: !542, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !522, file: !24, line: 450, baseType: !506, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !522, file: !24, line: 451, baseType: !51, size: 8, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !522, file: !24, line: 452, baseType: !51, size: 8, offset: 136)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !522, file: !24, line: 453, baseType: !51, size: 8, offset: 144)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !522, file: !24, line: 454, baseType: !51, size: 8, offset: 152)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !492, file: !24, line: 487, baseType: !13, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !492, file: !24, line: 488, baseType: !8, size: 32, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !492, file: !24, line: 489, baseType: !56, size: 16, offset: 480)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !492, file: !24, line: 490, baseType: !56, size: 16, offset: 496)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !492, file: !24, line: 491, baseType: !51, size: 8, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !492, file: !24, line: 492, baseType: !51, size: 8, offset: 520)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !43, file: !44, line: 379, baseType: !559, size: 384)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !44, line: 192, size: 384, elements: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !559, file: !44, line: 193, baseType: !42, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !559, file: !44, line: 193, baseType: !51, size: 8, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !559, file: !44, line: 193, baseType: !51, size: 8, offset: 72)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !559, file: !44, line: 193, baseType: !56, size: 16, offset: 80)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !559, file: !44, line: 193, baseType: !51, size: 8, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !559, file: !44, line: 193, baseType: !476, size: 128, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !559, file: !44, line: 193, baseType: !42, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !559, file: !44, line: 193, baseType: !8, size: 32, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !559, file: !44, line: 194, baseType: !8, size: 32, offset: 352)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !43, file: !44, line: 380, baseType: !571, size: 384)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !44, line: 197, size: 384, elements: !572)
!572 = !{!573, !574, !575, !576, !577, !578, !579, !580, !581, !582}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !571, file: !44, line: 198, baseType: !42, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !571, file: !44, line: 198, baseType: !51, size: 8, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !571, file: !44, line: 198, baseType: !51, size: 8, offset: 72)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !571, file: !44, line: 198, baseType: !56, size: 16, offset: 80)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !571, file: !44, line: 198, baseType: !51, size: 8, offset: 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !571, file: !44, line: 200, baseType: !51, size: 8, offset: 104)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !571, file: !44, line: 201, baseType: !51, size: 8, offset: 112)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !571, file: !44, line: 202, baseType: !476, size: 128, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !571, file: !44, line: 202, baseType: !42, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !571, file: !44, line: 202, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !13)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !43, file: !44, line: 381, baseType: !585, size: 320)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !44, line: 205, size: 320, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !585, file: !44, line: 206, baseType: !42, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !585, file: !44, line: 206, baseType: !51, size: 8, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !585, file: !44, line: 206, baseType: !51, size: 8, offset: 72)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !585, file: !44, line: 206, baseType: !56, size: 16, offset: 80)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !44, line: 206, baseType: !51, size: 8, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !585, file: !44, line: 206, baseType: !476, size: 128, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !585, file: !44, line: 206, baseType: !42, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !43, file: !44, line: 382, baseType: !595, size: 384)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !44, line: 233, size: 384, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !595, file: !44, line: 234, baseType: !42, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !595, file: !44, line: 234, baseType: !51, size: 8, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !595, file: !44, line: 234, baseType: !51, size: 8, offset: 72)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !595, file: !44, line: 234, baseType: !56, size: 16, offset: 80)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !595, file: !44, line: 234, baseType: !51, size: 8, offset: 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !595, file: !44, line: 234, baseType: !51, size: 8, offset: 104)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !595, file: !44, line: 234, baseType: !51, size: 8, offset: 112)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !595, file: !44, line: 234, baseType: !51, size: 8, offset: 120)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !595, file: !44, line: 234, baseType: !38, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !595, file: !44, line: 234, baseType: !8, size: 32, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !595, file: !44, line: 234, baseType: !8, size: 32, offset: 224)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !595, file: !44, line: 234, baseType: !8, size: 32, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !595, file: !44, line: 234, baseType: !51, size: 8, offset: 288)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !595, file: !44, line: 234, baseType: !51, size: 8, offset: 296)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !595, file: !44, line: 234, baseType: !42, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !43, file: !44, line: 383, baseType: !613, size: 576)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !44, line: 237, size: 576, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !613, file: !44, line: 238, baseType: !42, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !44, line: 238, baseType: !51, size: 8, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !44, line: 238, baseType: !51, size: 8, offset: 72)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !613, file: !44, line: 238, baseType: !56, size: 16, offset: 80)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !44, line: 238, baseType: !51, size: 8, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !613, file: !44, line: 238, baseType: !51, size: 8, offset: 104)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !613, file: !44, line: 238, baseType: !51, size: 8, offset: 112)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !613, file: !44, line: 238, baseType: !51, size: 8, offset: 120)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !613, file: !44, line: 238, baseType: !38, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !613, file: !44, line: 238, baseType: !8, size: 32, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !613, file: !44, line: 238, baseType: !8, size: 32, offset: 224)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !613, file: !44, line: 238, baseType: !8, size: 32, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !613, file: !44, line: 238, baseType: !51, size: 8, offset: 288)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !613, file: !44, line: 238, baseType: !51, size: 8, offset: 296)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !613, file: !44, line: 238, baseType: !56, size: 16, offset: 304)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !613, file: !44, line: 239, baseType: !42, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !613, file: !44, line: 240, baseType: !93, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !613, file: !44, line: 241, baseType: !56, size: 16, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !613, file: !44, line: 242, baseType: !93, size: 64, offset: 512)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !43, file: !44, line: 384, baseType: !635, size: 384)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !44, line: 262, size: 384, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !635, file: !44, line: 263, baseType: !42, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !635, file: !44, line: 263, baseType: !51, size: 8, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !635, file: !44, line: 263, baseType: !51, size: 8, offset: 72)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !635, file: !44, line: 263, baseType: !56, size: 16, offset: 80)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !44, line: 263, baseType: !51, size: 8, offset: 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !635, file: !44, line: 263, baseType: !51, size: 8, offset: 104)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !635, file: !44, line: 263, baseType: !51, size: 8, offset: 112)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !635, file: !44, line: 263, baseType: !51, size: 8, offset: 120)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !635, file: !44, line: 263, baseType: !38, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !635, file: !44, line: 263, baseType: !8, size: 32, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !635, file: !44, line: 263, baseType: !8, size: 32, offset: 224)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !635, file: !44, line: 263, baseType: !8, size: 32, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !635, file: !44, line: 263, baseType: !51, size: 8, offset: 288)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !635, file: !44, line: 263, baseType: !51, size: 8, offset: 296)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !635, file: !44, line: 263, baseType: !51, size: 8, offset: 304)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !635, file: !44, line: 264, baseType: !42, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !43, file: !44, line: 385, baseType: !654, size: 448)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !44, line: 245, size: 448, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !654, file: !44, line: 246, baseType: !42, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !654, file: !44, line: 246, baseType: !51, size: 8, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !654, file: !44, line: 246, baseType: !51, size: 8, offset: 72)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !654, file: !44, line: 246, baseType: !56, size: 16, offset: 80)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !44, line: 246, baseType: !51, size: 8, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !654, file: !44, line: 246, baseType: !51, size: 8, offset: 104)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !654, file: !44, line: 246, baseType: !51, size: 8, offset: 112)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !654, file: !44, line: 246, baseType: !51, size: 8, offset: 120)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !654, file: !44, line: 246, baseType: !38, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !654, file: !44, line: 246, baseType: !8, size: 32, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !654, file: !44, line: 246, baseType: !8, size: 32, offset: 224)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !654, file: !44, line: 246, baseType: !8, size: 32, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !654, file: !44, line: 246, baseType: !51, size: 8, offset: 288)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !654, file: !44, line: 246, baseType: !51, size: 8, offset: 296)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !654, file: !44, line: 246, baseType: !42, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !654, file: !44, line: 247, baseType: !42, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !43, file: !44, line: 386, baseType: !673, size: 448)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !44, line: 250, size: 448, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !673, file: !44, line: 251, baseType: !42, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !673, file: !44, line: 251, baseType: !51, size: 8, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !673, file: !44, line: 251, baseType: !51, size: 8, offset: 72)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !673, file: !44, line: 251, baseType: !56, size: 16, offset: 80)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !673, file: !44, line: 251, baseType: !51, size: 8, offset: 96)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !673, file: !44, line: 251, baseType: !51, size: 8, offset: 104)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !673, file: !44, line: 251, baseType: !51, size: 8, offset: 112)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !673, file: !44, line: 251, baseType: !51, size: 8, offset: 120)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !673, file: !44, line: 251, baseType: !38, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !673, file: !44, line: 251, baseType: !8, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !673, file: !44, line: 251, baseType: !8, size: 32, offset: 224)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !673, file: !44, line: 251, baseType: !8, size: 32, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !673, file: !44, line: 251, baseType: !51, size: 8, offset: 288)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !673, file: !44, line: 251, baseType: !51, size: 8, offset: 296)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !673, file: !44, line: 256, baseType: !42, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !673, file: !44, line: 257, baseType: !42, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !43, file: !44, line: 387, baseType: !692, size: 512)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !44, line: 273, size: 512, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !692, file: !44, line: 274, baseType: !42, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !692, file: !44, line: 274, baseType: !51, size: 8, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !692, file: !44, line: 274, baseType: !51, size: 8, offset: 72)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !692, file: !44, line: 274, baseType: !56, size: 16, offset: 80)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !44, line: 274, baseType: !51, size: 8, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !692, file: !44, line: 274, baseType: !38, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !692, file: !44, line: 275, baseType: !8, size: 32, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !692, file: !44, line: 276, baseType: !369, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !692, file: !44, line: 277, baseType: !17, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !692, file: !44, line: 278, baseType: !476, size: 128, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !43, file: !44, line: 388, baseType: !705, size: 512)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !44, line: 281, size: 512, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714, !720, !721, !722, !728, !729}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !705, file: !44, line: 282, baseType: !42, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !705, file: !44, line: 282, baseType: !51, size: 8, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !705, file: !44, line: 282, baseType: !51, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !705, file: !44, line: 282, baseType: !56, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !44, line: 282, baseType: !51, size: 8, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !705, file: !44, line: 282, baseType: !51, size: 8, offset: 104)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !705, file: !44, line: 283, baseType: !51, size: 8, offset: 112)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !705, file: !44, line: 284, baseType: !715, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!6, !8, !465, !8, !719, !17, !17}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !705, file: !44, line: 285, baseType: !38, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !705, file: !44, line: 286, baseType: !17, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !705, file: !44, line: 287, baseType: !723, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!6, !373, !8, !17, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !705, file: !44, line: 288, baseType: !42, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !705, file: !44, line: 289, baseType: !42, size: 64, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !43, file: !44, line: 389, baseType: !731, size: 512)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !44, line: 307, size: 512, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !731, file: !44, line: 308, baseType: !42, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !731, file: !44, line: 308, baseType: !51, size: 8, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !731, file: !44, line: 308, baseType: !51, size: 8, offset: 72)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !731, file: !44, line: 308, baseType: !56, size: 16, offset: 80)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !731, file: !44, line: 308, baseType: !51, size: 8, offset: 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !731, file: !44, line: 308, baseType: !51, size: 8, offset: 104)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !731, file: !44, line: 309, baseType: !51, size: 8, offset: 112)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !731, file: !44, line: 310, baseType: !51, size: 8, offset: 120)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !731, file: !44, line: 311, baseType: !17, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !731, file: !44, line: 312, baseType: !38, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !731, file: !44, line: 313, baseType: !108, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !731, file: !44, line: 314, baseType: !93, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !731, file: !44, line: 315, baseType: !93, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !731, file: !44, line: 316, baseType: !8, size: 32, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !43, file: !44, line: 390, baseType: !748, size: 448)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !44, line: 340, size: 448, elements: !749)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !748, file: !44, line: 341, baseType: !42, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !748, file: !44, line: 341, baseType: !51, size: 8, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !748, file: !44, line: 341, baseType: !51, size: 8, offset: 72)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !748, file: !44, line: 341, baseType: !56, size: 16, offset: 80)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !44, line: 341, baseType: !51, size: 8, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !748, file: !44, line: 341, baseType: !38, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !748, file: !44, line: 342, baseType: !38, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !748, file: !44, line: 343, baseType: !17, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !748, file: !44, line: 344, baseType: !93, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !748, file: !44, line: 345, baseType: !8, size: 32, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !43, file: !44, line: 391, baseType: !761, size: 256)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !44, line: 350, size: 256, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768, !773}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !761, file: !44, line: 351, baseType: !42, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !761, file: !44, line: 351, baseType: !51, size: 8, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !761, file: !44, line: 351, baseType: !51, size: 8, offset: 72)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !761, file: !44, line: 351, baseType: !56, size: 16, offset: 80)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !44, line: 351, baseType: !51, size: 8, offset: 96)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !761, file: !44, line: 351, baseType: !769, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !373, !17}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !761, file: !44, line: 352, baseType: !17, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !43, file: !44, line: 392, baseType: !775, size: 192)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !44, line: 357, size: 192, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !775, file: !44, line: 358, baseType: !42, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !775, file: !44, line: 358, baseType: !51, size: 8, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !44, line: 358, baseType: !51, size: 8, offset: 72)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !775, file: !44, line: 358, baseType: !56, size: 16, offset: 80)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !44, line: 358, baseType: !51, size: 8, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !775, file: !44, line: 358, baseType: !42, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !43, file: !44, line: 399, baseType: !39, size: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !39, file: !24, line: 135, baseType: !51, size: 8, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !39, file: !24, line: 136, baseType: !51, size: 8, offset: 72)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !24, line: 137, baseType: !56, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !39, file: !24, line: 138, baseType: !788, size: 32, offset: 96)
!788 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !789, line: 327, size: 32, elements: !790)
!789 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !788, file: !789, line: 328, baseType: !8, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !788, file: !789, line: 329, baseType: !27, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !39, file: !24, line: 139, baseType: !38, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !39, file: !24, line: 140, baseType: !38, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !39, file: !24, line: 141, baseType: !38, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !39, file: !24, line: 142, baseType: !155, size: 16, offset: 320)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 72, elements: !389)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!799 = !{i32 7, !"Dwarf Version", i32 4}
!800 = !{i32 2, !"Debug Info Version", i32 3}
!801 = !{i32 1, !"wchar_size", i32 2}
!802 = !{i32 1, !"Code Model", i32 2}
!803 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!804 = distinct !DISubprogram(name: "acpi_ns_simple_repair", scope: !3, file: !3, line: 120, type: !805, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!805 = !DISubroutineType(types: !806)
!806 = !{!6, !807, !8, !8, !108}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !145, line: 152, size: 704, elements: !809)
!809 = !{!810, !811, !813, !814, !815, !816, !817, !863, !864, !865, !866, !867, !868, !869, !870, !871}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !808, file: !145, line: 155, baseType: !38, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !808, file: !145, line: 156, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !808, file: !145, line: 157, baseType: !108, size: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !808, file: !145, line: 159, baseType: !38, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !808, file: !145, line: 160, baseType: !42, size: 64, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !808, file: !145, line: 161, baseType: !82, size: 64, offset: 320)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !808, file: !145, line: 163, baseType: !818, size: 64, offset: 384)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !24, line: 351, size: 56, elements: !821)
!821 = !{!822, !828, !837, !845, !854}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !820, file: !24, line: 352, baseType: !823, size: 56)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !24, line: 295, size: 56, elements: !824)
!824 = !{!825, !826, !827}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !823, file: !24, line: 296, baseType: !27, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !823, file: !24, line: 297, baseType: !56, size: 16, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !823, file: !24, line: 298, baseType: !51, size: 8, offset: 48)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !820, file: !24, line: 353, baseType: !829, size: 56)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !24, line: 314, size: 56, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !836}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !829, file: !24, line: 315, baseType: !51, size: 8)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !829, file: !24, line: 316, baseType: !51, size: 8, offset: 8)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !829, file: !24, line: 317, baseType: !51, size: 8, offset: 16)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !829, file: !24, line: 318, baseType: !51, size: 8, offset: 24)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !829, file: !24, line: 319, baseType: !51, size: 8, offset: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !829, file: !24, line: 320, baseType: !56, size: 16, offset: 40)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !820, file: !24, line: 354, baseType: !838, size: 56)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !24, line: 325, size: 56, elements: !839)
!839 = !{!840, !841, !842, !844}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !838, file: !24, line: 326, baseType: !51, size: 8)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !838, file: !24, line: 327, baseType: !51, size: 8, offset: 8)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !838, file: !24, line: 328, baseType: !843, size: 32, offset: 16)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 32, elements: !29)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !838, file: !24, line: 329, baseType: !51, size: 8, offset: 48)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !820, file: !24, line: 355, baseType: !846, size: 56)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !24, line: 334, size: 56, elements: !847)
!847 = !{!848, !849, !850, !852, !853}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !846, file: !24, line: 335, baseType: !51, size: 8)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !846, file: !24, line: 336, baseType: !51, size: 8, offset: 8)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !846, file: !24, line: 337, baseType: !851, size: 16, offset: 16)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 16, elements: !477)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !846, file: !24, line: 338, baseType: !51, size: 8, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !846, file: !24, line: 339, baseType: !56, size: 16, offset: 40)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !820, file: !24, line: 356, baseType: !855, size: 56)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !24, line: 342, size: 56, elements: !856)
!856 = !{!857, !858, !859, !860, !861, !862}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !855, file: !24, line: 343, baseType: !51, size: 8)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !855, file: !24, line: 344, baseType: !51, size: 8, offset: 8)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !855, file: !24, line: 345, baseType: !51, size: 8, offset: 16)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !855, file: !24, line: 346, baseType: !51, size: 8, offset: 24)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !855, file: !24, line: 347, baseType: !51, size: 8, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !855, file: !24, line: 348, baseType: !56, size: 16, offset: 40)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !808, file: !145, line: 164, baseType: !42, size: 64, offset: 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !808, file: !145, line: 165, baseType: !42, size: 64, offset: 512)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !808, file: !145, line: 167, baseType: !8, size: 32, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !808, file: !145, line: 168, baseType: !8, size: 32, offset: 608)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !808, file: !145, line: 169, baseType: !56, size: 16, offset: 640)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !808, file: !145, line: 170, baseType: !56, size: 16, offset: 656)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !808, file: !145, line: 171, baseType: !51, size: 8, offset: 672)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !808, file: !145, line: 172, baseType: !51, size: 8, offset: 680)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !808, file: !145, line: 173, baseType: !51, size: 8, offset: 688)
!872 = !DILocalVariable(name: "info", arg: 1, scope: !804, file: !3, line: 120, type: !807)
!873 = !DILocation(line: 120, column: 50, scope: !804)
!874 = !DILocalVariable(name: "expected_btypes", arg: 2, scope: !804, file: !3, line: 121, type: !8)
!875 = !DILocation(line: 121, column: 13, scope: !804)
!876 = !DILocalVariable(name: "package_index", arg: 3, scope: !804, file: !3, line: 122, type: !8)
!877 = !DILocation(line: 122, column: 13, scope: !804)
!878 = !DILocalVariable(name: "return_object_ptr", arg: 4, scope: !804, file: !3, line: 123, type: !108)
!879 = !DILocation(line: 123, column: 37, scope: !804)
!880 = !DILocalVariable(name: "return_object", scope: !804, file: !3, line: 125, type: !42)
!881 = !DILocation(line: 125, column: 29, scope: !804)
!882 = !DILocation(line: 125, column: 46, scope: !804)
!883 = !DILocation(line: 125, column: 45, scope: !804)
!884 = !DILocalVariable(name: "new_object", scope: !804, file: !3, line: 126, type: !42)
!885 = !DILocation(line: 126, column: 29, scope: !804)
!886 = !DILocalVariable(name: "status", scope: !804, file: !3, line: 127, type: !6)
!887 = !DILocation(line: 127, column: 14, scope: !804)
!888 = !DILocalVariable(name: "predefined", scope: !804, file: !3, line: 128, type: !889)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!890 = !DILocation(line: 128, column: 40, scope: !804)
!891 = !DILocation(line: 136, column: 43, scope: !804)
!892 = !DILocation(line: 136, column: 49, scope: !804)
!893 = !DILocation(line: 137, column: 8, scope: !804)
!894 = !DILocation(line: 137, column: 14, scope: !804)
!895 = !DILocation(line: 138, column: 8, scope: !804)
!896 = !DILocation(line: 136, column: 15, scope: !804)
!897 = !DILocation(line: 136, column: 13, scope: !804)
!898 = !DILocation(line: 139, column: 6, scope: !899)
!899 = distinct !DILexicalBlock(scope: !804, file: !3, line: 139, column: 6)
!900 = !DILocation(line: 139, column: 6, scope: !804)
!901 = !DILocation(line: 140, column: 8, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 140, column: 7)
!903 = distinct !DILexicalBlock(scope: !899, file: !3, line: 139, column: 18)
!904 = !DILocation(line: 140, column: 7, scope: !903)
!905 = !DILocation(line: 141, column: 4, scope: !906)
!906 = distinct !DILexicalBlock(scope: !902, file: !3, line: 140, column: 23)
!907 = !DILocation(line: 144, column: 3, scope: !906)
!908 = !DILocation(line: 146, column: 12, scope: !903)
!909 = !DILocation(line: 146, column: 24, scope: !903)
!910 = !DILocation(line: 146, column: 41, scope: !903)
!911 = !DILocation(line: 146, column: 47, scope: !903)
!912 = !DILocation(line: 146, column: 53, scope: !903)
!913 = !DILocation(line: 146, column: 10, scope: !903)
!914 = !DILocation(line: 148, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !903, file: !3, line: 148, column: 7)
!916 = !DILocation(line: 148, column: 7, scope: !903)
!917 = !DILocation(line: 152, column: 4, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !3, line: 148, column: 29)
!919 = !DILocation(line: 154, column: 12, scope: !918)
!920 = !DILocation(line: 154, column: 4, scope: !918)
!921 = !DILocation(line: 156, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !903, file: !3, line: 156, column: 7)
!923 = !DILocation(line: 156, column: 7, scope: !903)
!924 = !DILocation(line: 157, column: 4, scope: !925)
!925 = distinct !DILexicalBlock(scope: !922, file: !3, line: 156, column: 19)
!926 = !DILocation(line: 159, column: 2, scope: !903)
!927 = !DILocation(line: 165, column: 6, scope: !928)
!928 = distinct !DILexicalBlock(scope: !804, file: !3, line: 165, column: 6)
!929 = !DILocation(line: 165, column: 12, scope: !928)
!930 = !DILocation(line: 165, column: 27, scope: !928)
!931 = !DILocation(line: 165, column: 25, scope: !928)
!932 = !DILocation(line: 165, column: 6, scope: !804)
!933 = !DILocation(line: 166, column: 3, scope: !934)
!934 = distinct !DILexicalBlock(scope: !928, file: !3, line: 165, column: 44)
!935 = !DILocation(line: 183, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !804, file: !3, line: 183, column: 6)
!937 = !DILocation(line: 183, column: 6, scope: !804)
!938 = !DILocation(line: 184, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 184, column: 7)
!940 = distinct !DILexicalBlock(scope: !936, file: !3, line: 183, column: 22)
!941 = !DILocation(line: 184, column: 23, scope: !939)
!942 = !DILocation(line: 184, column: 29, scope: !939)
!943 = !DILocation(line: 184, column: 45, scope: !939)
!944 = !DILocation(line: 184, column: 7, scope: !940)
!945 = !DILocation(line: 185, column: 8, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !3, line: 185, column: 8)
!947 = distinct !DILexicalBlock(scope: !939, file: !3, line: 184, column: 66)
!948 = !DILocation(line: 185, column: 22, scope: !946)
!949 = !DILocation(line: 185, column: 8, scope: !947)
!950 = !DILocation(line: 186, column: 5, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !3, line: 185, column: 51)
!952 = !DILocation(line: 192, column: 37, scope: !951)
!953 = !DILocation(line: 193, column: 9, scope: !951)
!954 = !DILocation(line: 194, column: 9, scope: !951)
!955 = !DILocation(line: 195, column: 9, scope: !951)
!956 = !DILocation(line: 192, column: 9, scope: !951)
!957 = !DILocation(line: 191, column: 12, scope: !951)
!958 = !DILocation(line: 196, column: 9, scope: !959)
!959 = distinct !DILexicalBlock(scope: !951, file: !3, line: 196, column: 9)
!960 = !DILocation(line: 196, column: 9, scope: !951)
!961 = !DILocation(line: 197, column: 6, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !3, line: 196, column: 31)
!963 = !DILocation(line: 199, column: 4, scope: !951)
!964 = !DILocation(line: 200, column: 5, scope: !965)
!965 = distinct !DILexicalBlock(scope: !946, file: !3, line: 199, column: 11)
!966 = !DILocation(line: 206, column: 4, scope: !947)
!967 = !DILocation(line: 208, column: 2, scope: !940)
!968 = !DILocation(line: 210, column: 6, scope: !969)
!969 = distinct !DILexicalBlock(scope: !804, file: !3, line: 210, column: 6)
!970 = !DILocation(line: 210, column: 22, scope: !969)
!971 = !DILocation(line: 210, column: 6, scope: !804)
!972 = !DILocation(line: 211, column: 39, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !3, line: 210, column: 44)
!974 = !DILocation(line: 211, column: 12, scope: !973)
!975 = !DILocation(line: 211, column: 10, scope: !973)
!976 = !DILocation(line: 212, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !3, line: 212, column: 7)
!978 = !DILocation(line: 212, column: 7, scope: !973)
!979 = !DILocation(line: 213, column: 4, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !3, line: 212, column: 29)
!981 = !DILocation(line: 215, column: 2, scope: !973)
!982 = !DILocation(line: 216, column: 6, scope: !983)
!983 = distinct !DILexicalBlock(scope: !804, file: !3, line: 216, column: 6)
!984 = !DILocation(line: 216, column: 22, scope: !983)
!985 = !DILocation(line: 216, column: 6, scope: !804)
!986 = !DILocation(line: 217, column: 38, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !3, line: 216, column: 43)
!988 = !DILocation(line: 217, column: 12, scope: !987)
!989 = !DILocation(line: 217, column: 10, scope: !987)
!990 = !DILocation(line: 218, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !3, line: 218, column: 7)
!992 = !DILocation(line: 218, column: 7, scope: !987)
!993 = !DILocation(line: 219, column: 4, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !3, line: 218, column: 29)
!995 = !DILocation(line: 221, column: 2, scope: !987)
!996 = !DILocation(line: 222, column: 6, scope: !997)
!997 = distinct !DILexicalBlock(scope: !804, file: !3, line: 222, column: 6)
!998 = !DILocation(line: 222, column: 22, scope: !997)
!999 = !DILocation(line: 222, column: 6, scope: !804)
!1000 = !DILocation(line: 223, column: 38, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !997, file: !3, line: 222, column: 43)
!1002 = !DILocation(line: 223, column: 12, scope: !1001)
!1003 = !DILocation(line: 223, column: 10, scope: !1001)
!1004 = !DILocation(line: 224, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 224, column: 7)
!1006 = !DILocation(line: 224, column: 7, scope: !1001)
!1007 = !DILocation(line: 225, column: 4, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 224, column: 29)
!1009 = !DILocation(line: 227, column: 2, scope: !1001)
!1010 = !DILocation(line: 228, column: 6, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !804, file: !3, line: 228, column: 6)
!1012 = !DILocation(line: 228, column: 22, scope: !1011)
!1013 = !DILocation(line: 228, column: 6, scope: !804)
!1014 = !DILocation(line: 238, column: 33, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 228, column: 44)
!1016 = !DILocation(line: 238, column: 39, scope: !1015)
!1017 = !DILocation(line: 238, column: 7, scope: !1015)
!1018 = !DILocation(line: 237, column: 10, scope: !1015)
!1019 = !DILocation(line: 239, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 239, column: 7)
!1021 = !DILocation(line: 239, column: 7, scope: !1015)
!1022 = !DILocation(line: 244, column: 25, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 239, column: 29)
!1024 = !DILocation(line: 244, column: 5, scope: !1023)
!1025 = !DILocation(line: 244, column: 23, scope: !1023)
!1026 = !DILocation(line: 245, column: 4, scope: !1023)
!1027 = !DILocation(line: 245, column: 10, scope: !1023)
!1028 = !DILocation(line: 245, column: 23, scope: !1023)
!1029 = !DILocation(line: 246, column: 4, scope: !1023)
!1030 = !DILocation(line: 248, column: 2, scope: !1015)
!1031 = !DILocation(line: 252, column: 2, scope: !804)
!1032 = !DILabel(scope: !804, name: "object_repaired", file: !3, line: 254)
!1033 = !DILocation(line: 254, column: 1, scope: !804)
!1034 = !DILocation(line: 258, column: 6, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !804, file: !3, line: 258, column: 6)
!1036 = !DILocation(line: 258, column: 20, scope: !1035)
!1037 = !DILocation(line: 258, column: 6, scope: !804)
!1038 = !DILocation(line: 262, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 262, column: 7)
!1040 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 258, column: 49)
!1041 = !DILocation(line: 262, column: 15, scope: !1039)
!1042 = !DILocation(line: 262, column: 28, scope: !1039)
!1043 = !DILocation(line: 262, column: 7, scope: !1040)
!1044 = !DILocation(line: 264, column: 8, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 262, column: 52)
!1046 = !DILocation(line: 264, column: 23, scope: !1045)
!1047 = !DILocation(line: 264, column: 30, scope: !1045)
!1048 = !DILocation(line: 263, column: 4, scope: !1045)
!1049 = !DILocation(line: 263, column: 16, scope: !1045)
!1050 = !DILocation(line: 263, column: 23, scope: !1045)
!1051 = !DILocation(line: 263, column: 39, scope: !1045)
!1052 = !DILocation(line: 265, column: 3, scope: !1045)
!1053 = !DILocation(line: 273, column: 2, scope: !1040)
!1054 = !DILocation(line: 283, column: 27, scope: !804)
!1055 = !DILocation(line: 283, column: 2, scope: !804)
!1056 = !DILocation(line: 284, column: 23, scope: !804)
!1057 = !DILocation(line: 284, column: 3, scope: !804)
!1058 = !DILocation(line: 284, column: 21, scope: !804)
!1059 = !DILocation(line: 285, column: 2, scope: !804)
!1060 = !DILocation(line: 285, column: 8, scope: !804)
!1061 = !DILocation(line: 285, column: 21, scope: !804)
!1062 = !DILocation(line: 286, column: 2, scope: !804)
!1063 = !DILocation(line: 287, column: 1, scope: !804)
!1064 = distinct !DISubprogram(name: "acpi_ns_match_simple_repair", scope: !3, file: !3, line: 305, type: !1065, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!889, !38, !8, !8}
!1067 = !DILocalVariable(name: "node", arg: 1, scope: !1064, file: !3, line: 307, type: !38)
!1068 = !DILocation(line: 307, column: 12, scope: !1064)
!1069 = !DILocalVariable(name: "return_btype", arg: 2, scope: !1064, file: !3, line: 309, type: !8)
!1070 = !DILocation(line: 309, column: 11, scope: !1064)
!1071 = !DILocalVariable(name: "package_index", arg: 3, scope: !1064, file: !3, line: 311, type: !8)
!1072 = !DILocation(line: 311, column: 11, scope: !1064)
!1073 = !DILocalVariable(name: "this_name", scope: !1064, file: !3, line: 313, type: !889)
!1074 = !DILocation(line: 313, column: 40, scope: !1064)
!1075 = !DILocation(line: 317, column: 12, scope: !1064)
!1076 = !DILocation(line: 318, column: 2, scope: !1064)
!1077 = !DILocation(line: 318, column: 9, scope: !1064)
!1078 = !DILocation(line: 318, column: 20, scope: !1064)
!1079 = !DILocation(line: 319, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 319, column: 7)
!1081 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 318, column: 38)
!1082 = !DILocation(line: 319, column: 7, scope: !1081)
!1083 = !DILocation(line: 323, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 323, column: 8)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 319, column: 64)
!1086 = !DILocation(line: 323, column: 24, scope: !1084)
!1087 = !DILocation(line: 323, column: 35, scope: !1084)
!1088 = !DILocation(line: 323, column: 22, scope: !1084)
!1089 = !DILocation(line: 323, column: 54, scope: !1084)
!1090 = !DILocation(line: 324, column: 9, scope: !1084)
!1091 = !DILocation(line: 324, column: 20, scope: !1084)
!1092 = !DILocation(line: 324, column: 34, scope: !1084)
!1093 = !DILocation(line: 326, column: 9, scope: !1084)
!1094 = !DILocation(line: 326, column: 12, scope: !1084)
!1095 = !DILocation(line: 326, column: 29, scope: !1084)
!1096 = !DILocation(line: 326, column: 40, scope: !1084)
!1097 = !DILocation(line: 326, column: 26, scope: !1084)
!1098 = !DILocation(line: 323, column: 8, scope: !1085)
!1099 = !DILocation(line: 327, column: 13, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 326, column: 56)
!1101 = !DILocation(line: 327, column: 5, scope: !1100)
!1102 = !DILocation(line: 330, column: 4, scope: !1085)
!1103 = !DILocation(line: 333, column: 12, scope: !1081)
!1104 = distinct !{!1104, !1076, !1105}
!1105 = !DILocation(line: 334, column: 2, scope: !1064)
!1106 = !DILocation(line: 336, column: 2, scope: !1064)
!1107 = !DILocation(line: 337, column: 1, scope: !1064)
!1108 = distinct !DISubprogram(name: "acpi_ns_repair_null_element", scope: !3, file: !3, line: 358, type: !805, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1109 = !DILocalVariable(name: "info", arg: 1, scope: !1108, file: !3, line: 358, type: !807)
!1110 = !DILocation(line: 358, column: 56, scope: !1108)
!1111 = !DILocalVariable(name: "expected_btypes", arg: 2, scope: !1108, file: !3, line: 359, type: !8)
!1112 = !DILocation(line: 359, column: 12, scope: !1108)
!1113 = !DILocalVariable(name: "package_index", arg: 3, scope: !1108, file: !3, line: 360, type: !8)
!1114 = !DILocation(line: 360, column: 12, scope: !1108)
!1115 = !DILocalVariable(name: "return_object_ptr", arg: 4, scope: !1108, file: !3, line: 361, type: !108)
!1116 = !DILocation(line: 361, column: 36, scope: !1108)
!1117 = !DILocalVariable(name: "return_object", scope: !1108, file: !3, line: 363, type: !42)
!1118 = !DILocation(line: 363, column: 29, scope: !1108)
!1119 = !DILocation(line: 363, column: 46, scope: !1108)
!1120 = !DILocation(line: 363, column: 45, scope: !1108)
!1121 = !DILocalVariable(name: "new_object", scope: !1108, file: !3, line: 364, type: !42)
!1122 = !DILocation(line: 364, column: 29, scope: !1108)
!1123 = !DILocation(line: 370, column: 6, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 370, column: 6)
!1125 = !DILocation(line: 370, column: 6, scope: !1108)
!1126 = !DILocation(line: 371, column: 3, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 370, column: 21)
!1128 = !DILocation(line: 380, column: 6, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 380, column: 6)
!1130 = !DILocation(line: 380, column: 22, scope: !1129)
!1131 = !DILocation(line: 380, column: 6, scope: !1108)
!1132 = !DILocation(line: 384, column: 16, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 380, column: 44)
!1134 = !DILocation(line: 384, column: 14, scope: !1133)
!1135 = !DILocation(line: 385, column: 2, scope: !1133)
!1136 = !DILocation(line: 385, column: 13, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 385, column: 13)
!1138 = !DILocation(line: 385, column: 29, scope: !1137)
!1139 = !DILocation(line: 385, column: 13, scope: !1129)
!1140 = !DILocation(line: 389, column: 16, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 385, column: 50)
!1142 = !DILocation(line: 389, column: 14, scope: !1141)
!1143 = !DILocation(line: 390, column: 2, scope: !1141)
!1144 = !DILocation(line: 390, column: 13, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 390, column: 13)
!1146 = !DILocation(line: 390, column: 29, scope: !1145)
!1147 = !DILocation(line: 390, column: 13, scope: !1137)
!1148 = !DILocation(line: 394, column: 16, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 390, column: 50)
!1150 = !DILocation(line: 394, column: 14, scope: !1149)
!1151 = !DILocation(line: 395, column: 2, scope: !1149)
!1152 = !DILocation(line: 398, column: 3, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 395, column: 9)
!1154 = !DILocation(line: 401, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 401, column: 6)
!1156 = !DILocation(line: 401, column: 6, scope: !1108)
!1157 = !DILocation(line: 402, column: 3, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 401, column: 19)
!1159 = !DILocation(line: 408, column: 6, scope: !1108)
!1160 = !DILocation(line: 408, column: 12, scope: !1108)
!1161 = !DILocation(line: 408, column: 28, scope: !1108)
!1162 = !DILocation(line: 408, column: 35, scope: !1108)
!1163 = !DILocation(line: 407, column: 2, scope: !1108)
!1164 = !DILocation(line: 407, column: 14, scope: !1108)
!1165 = !DILocation(line: 407, column: 21, scope: !1108)
!1166 = !DILocation(line: 407, column: 37, scope: !1108)
!1167 = !DILocation(line: 416, column: 23, scope: !1108)
!1168 = !DILocation(line: 416, column: 3, scope: !1108)
!1169 = !DILocation(line: 416, column: 21, scope: !1108)
!1170 = !DILocation(line: 417, column: 2, scope: !1108)
!1171 = !DILocation(line: 417, column: 8, scope: !1108)
!1172 = !DILocation(line: 417, column: 21, scope: !1108)
!1173 = !DILocation(line: 418, column: 2, scope: !1108)
!1174 = !DILocation(line: 419, column: 1, scope: !1108)
!1175 = distinct !DISubprogram(name: "acpi_ns_wrap_with_package", scope: !3, file: !3, line: 531, type: !1176, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!6, !807, !42, !108}
!1178 = !DILocalVariable(name: "info", arg: 1, scope: !1175, file: !3, line: 531, type: !807)
!1179 = !DILocation(line: 531, column: 54, scope: !1175)
!1180 = !DILocalVariable(name: "original_object", arg: 2, scope: !1175, file: !3, line: 532, type: !42)
!1181 = !DILocation(line: 532, column: 33, scope: !1175)
!1182 = !DILocalVariable(name: "obj_desc_ptr", arg: 3, scope: !1175, file: !3, line: 533, type: !108)
!1183 = !DILocation(line: 533, column: 34, scope: !1175)
!1184 = !DILocalVariable(name: "pkg_obj_desc", scope: !1175, file: !3, line: 535, type: !42)
!1185 = !DILocation(line: 535, column: 29, scope: !1175)
!1186 = !DILocation(line: 543, column: 17, scope: !1175)
!1187 = !DILocation(line: 543, column: 15, scope: !1175)
!1188 = !DILocation(line: 544, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 544, column: 6)
!1190 = !DILocation(line: 544, column: 6, scope: !1175)
!1191 = !DILocation(line: 545, column: 3, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 544, column: 21)
!1193 = !DILocation(line: 548, column: 38, scope: !1175)
!1194 = !DILocation(line: 548, column: 2, scope: !1175)
!1195 = !DILocation(line: 548, column: 16, scope: !1175)
!1196 = !DILocation(line: 548, column: 24, scope: !1175)
!1197 = !DILocation(line: 548, column: 36, scope: !1175)
!1198 = !DILocation(line: 557, column: 18, scope: !1175)
!1199 = !DILocation(line: 557, column: 3, scope: !1175)
!1200 = !DILocation(line: 557, column: 16, scope: !1175)
!1201 = !DILocation(line: 558, column: 2, scope: !1175)
!1202 = !DILocation(line: 558, column: 8, scope: !1175)
!1203 = !DILocation(line: 558, column: 21, scope: !1175)
!1204 = !DILocation(line: 559, column: 2, scope: !1175)
!1205 = !DILocation(line: 560, column: 1, scope: !1175)
!1206 = distinct !DISubprogram(name: "acpi_ns_remove_null_elements", scope: !3, file: !3, line: 438, type: !1207, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !807, !51, !42}
!1209 = !DILocalVariable(name: "info", arg: 1, scope: !1206, file: !3, line: 438, type: !807)
!1210 = !DILocation(line: 438, column: 57, scope: !1206)
!1211 = !DILocalVariable(name: "package_type", arg: 2, scope: !1206, file: !3, line: 439, type: !51)
!1212 = !DILocation(line: 439, column: 12, scope: !1206)
!1213 = !DILocalVariable(name: "obj_desc", arg: 3, scope: !1206, file: !3, line: 440, type: !42)
!1214 = !DILocation(line: 440, column: 36, scope: !1206)
!1215 = !DILocalVariable(name: "source", scope: !1206, file: !3, line: 442, type: !108)
!1216 = !DILocation(line: 442, column: 30, scope: !1206)
!1217 = !DILocalVariable(name: "dest", scope: !1206, file: !3, line: 443, type: !108)
!1218 = !DILocation(line: 443, column: 30, scope: !1206)
!1219 = !DILocalVariable(name: "count", scope: !1206, file: !3, line: 444, type: !8)
!1220 = !DILocation(line: 444, column: 6, scope: !1206)
!1221 = !DILocalVariable(name: "new_count", scope: !1206, file: !3, line: 445, type: !8)
!1222 = !DILocation(line: 445, column: 6, scope: !1206)
!1223 = !DILocalVariable(name: "i", scope: !1206, file: !3, line: 446, type: !8)
!1224 = !DILocation(line: 446, column: 6, scope: !1206)
!1225 = !DILocation(line: 455, column: 10, scope: !1206)
!1226 = !DILocation(line: 455, column: 2, scope: !1206)
!1227 = !DILocation(line: 464, column: 3, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 455, column: 24)
!1229 = !DILocation(line: 470, column: 3, scope: !1228)
!1230 = !DILocation(line: 473, column: 10, scope: !1206)
!1231 = !DILocation(line: 473, column: 20, scope: !1206)
!1232 = !DILocation(line: 473, column: 28, scope: !1206)
!1233 = !DILocation(line: 473, column: 8, scope: !1206)
!1234 = !DILocation(line: 474, column: 14, scope: !1206)
!1235 = !DILocation(line: 474, column: 12, scope: !1206)
!1236 = !DILocation(line: 476, column: 11, scope: !1206)
!1237 = !DILocation(line: 476, column: 21, scope: !1206)
!1238 = !DILocation(line: 476, column: 29, scope: !1206)
!1239 = !DILocation(line: 476, column: 9, scope: !1206)
!1240 = !DILocation(line: 477, column: 9, scope: !1206)
!1241 = !DILocation(line: 477, column: 7, scope: !1206)
!1242 = !DILocation(line: 481, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 481, column: 2)
!1244 = !DILocation(line: 481, column: 7, scope: !1243)
!1245 = !DILocation(line: 481, column: 14, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 481, column: 2)
!1247 = !DILocation(line: 481, column: 18, scope: !1246)
!1248 = !DILocation(line: 481, column: 16, scope: !1246)
!1249 = !DILocation(line: 481, column: 2, scope: !1243)
!1250 = !DILocation(line: 482, column: 9, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 482, column: 7)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 481, column: 30)
!1253 = !DILocation(line: 482, column: 8, scope: !1251)
!1254 = !DILocation(line: 482, column: 7, scope: !1252)
!1255 = !DILocation(line: 483, column: 13, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 482, column: 17)
!1257 = !DILocation(line: 484, column: 3, scope: !1256)
!1258 = !DILocation(line: 485, column: 13, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 484, column: 10)
!1260 = !DILocation(line: 485, column: 12, scope: !1259)
!1261 = !DILocation(line: 485, column: 5, scope: !1259)
!1262 = !DILocation(line: 485, column: 10, scope: !1259)
!1263 = !DILocation(line: 486, column: 8, scope: !1259)
!1264 = !DILocation(line: 489, column: 9, scope: !1252)
!1265 = !DILocation(line: 490, column: 2, scope: !1252)
!1266 = !DILocation(line: 481, column: 26, scope: !1246)
!1267 = !DILocation(line: 481, column: 2, scope: !1246)
!1268 = distinct !{!1268, !1249, !1269}
!1269 = !DILocation(line: 490, column: 2, scope: !1243)
!1270 = !DILocation(line: 494, column: 6, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 494, column: 6)
!1272 = !DILocation(line: 494, column: 18, scope: !1271)
!1273 = !DILocation(line: 494, column: 16, scope: !1271)
!1274 = !DILocation(line: 494, column: 6, scope: !1206)
!1275 = !DILocation(line: 501, column: 4, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 494, column: 25)
!1277 = !DILocation(line: 501, column: 9, scope: !1276)
!1278 = !DILocation(line: 502, column: 29, scope: !1276)
!1279 = !DILocation(line: 502, column: 3, scope: !1276)
!1280 = !DILocation(line: 502, column: 13, scope: !1276)
!1281 = !DILocation(line: 502, column: 21, scope: !1276)
!1282 = !DILocation(line: 502, column: 27, scope: !1276)
!1283 = !DILocation(line: 503, column: 2, scope: !1276)
!1284 = !DILocation(line: 504, column: 1, scope: !1206)
