; ModuleID = '../bcout/drivers/acpi/acpica/exserial.llvm.bc'
source_filename = "drivers/acpi/acpica/exserial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_object_field_common = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, %union.acpi_operand_object* }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_region_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, i16, %union.acpi_operand_object*, i8*, i16, i8* }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }

@_acpi_module_name = internal constant [9 x i8] c"exserial\00", align 1, !dbg !0
@.str = private unnamed_addr constant [65 x i8] c"Invalid direct read using bidirectional write-then-read protocol\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid protocol ID for GSBus: 0x%4.4X\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"SMBus/IPMI/GenericSerialBus write requires Buffer, found type %s\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_read_gpio(%union.acpi_operand_object* %obj_desc, i8* %buffer) #0 !dbg !42 {
entry:
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %buffer.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !806, metadata !DIExpression()), !dbg !807
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !808, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.declare(metadata i32* %status, metadata !810, metadata !DIExpression()), !dbg !811
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !812
  %common_field = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_field_common*, !dbg !813
  %field_flags = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 5, !dbg !814
  %1 = load i8, i8* %field_flags, align 1, !dbg !814
  %conv = zext i8 %1 to i32, !dbg !812
  call void @acpi_ex_acquire_global_lock(i32 %conv) #4, !dbg !815
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !816
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !817
  %4 = bitcast i8* %3 to i64*, !dbg !818
  %call = call i32 @acpi_ex_access_region(%union.acpi_operand_object* %2, i32 0, i64* %4, i32 0) #4, !dbg !819
  store i32 %call, i32* %status, align 4, !dbg !820
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !821
  %common_field1 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_field_common*, !dbg !822
  %field_flags2 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field1, i32 0, i32 5, !dbg !823
  %6 = load i8, i8* %field_flags2, align 1, !dbg !823
  %conv3 = zext i8 %6 to i32, !dbg !821
  call void @acpi_ex_release_global_lock(i32 %conv3) #4, !dbg !824
  %7 = load i32, i32* %status, align 4, !dbg !825
  ret i32 %7, !dbg !825
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ex_acquire_global_lock(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_access_region(%union.acpi_operand_object*, i32, i64*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_release_global_lock(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_write_gpio(%union.acpi_operand_object* %source_desc, %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %return_buffer) #0 !dbg !826 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca %union.acpi_operand_object*, align 8
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %return_buffer.addr = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %buffer = alloca i8*, align 8
  store %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc.addr, metadata !829, metadata !DIExpression()), !dbg !830
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !831, metadata !DIExpression()), !dbg !832
  store %union.acpi_operand_object** %return_buffer, %union.acpi_operand_object*** %return_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_buffer.addr, metadata !833, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.declare(metadata i32* %status, metadata !835, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !837, metadata !DIExpression()), !dbg !838
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !839
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !841
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !842
  %1 = load i8, i8* %type, align 1, !dbg !842
  %conv = zext i8 %1 to i32, !dbg !839
  %cmp = icmp ne i32 %conv, 1, !dbg !843
  br i1 %cmp, label %if.then, label %if.end, !dbg !844

if.then:                                          ; preds = %entry
  store i32 12291, i32* %retval, align 4, !dbg !845
  br label %return, !dbg !845

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !847
  %integer = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_integer*, !dbg !848
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !849
  %3 = bitcast i64* %value to i8*, !dbg !850
  store i8* %3, i8** %buffer, align 8, !dbg !851
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !852
  %common_field = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_field_common*, !dbg !853
  %field_flags = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 5, !dbg !854
  %5 = load i8, i8* %field_flags, align 1, !dbg !854
  %conv2 = zext i8 %5 to i32, !dbg !852
  call void @acpi_ex_acquire_global_lock(i32 %conv2) #4, !dbg !855
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !856
  %7 = load i8*, i8** %buffer, align 8, !dbg !857
  %8 = bitcast i8* %7 to i64*, !dbg !858
  %call = call i32 @acpi_ex_access_region(%union.acpi_operand_object* %6, i32 0, i64* %8, i32 1) #4, !dbg !859
  store i32 %call, i32* %status, align 4, !dbg !860
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !861
  %common_field3 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_field_common*, !dbg !862
  %field_flags4 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field3, i32 0, i32 5, !dbg !863
  %10 = load i8, i8* %field_flags4, align 1, !dbg !863
  %conv5 = zext i8 %10 to i32, !dbg !861
  call void @acpi_ex_release_global_lock(i32 %conv5) #4, !dbg !864
  %11 = load i32, i32* %status, align 4, !dbg !865
  store i32 %11, i32* %retval, align 4, !dbg !865
  br label %return, !dbg !865

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !866
  ret i32 %12, !dbg !866
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_read_serial_bus(%union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %return_buffer) #0 !dbg !867 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %return_buffer.addr = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %buffer_length = alloca i32, align 4
  %buffer_desc = alloca %union.acpi_operand_object*, align 8
  %function = alloca i32, align 4
  %accessor_type = alloca i16, align 2
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !870, metadata !DIExpression()), !dbg !871
  store %union.acpi_operand_object** %return_buffer, %union.acpi_operand_object*** %return_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_buffer.addr, metadata !872, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.declare(metadata i32* %status, metadata !874, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.declare(metadata i32* %buffer_length, metadata !876, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %buffer_desc, metadata !878, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.declare(metadata i32* %function, metadata !880, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.declare(metadata i16* %accessor_type, metadata !882, metadata !DIExpression()), !dbg !883
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !884
  %field = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_region_field*, !dbg !885
  %region_obj = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field, i32 0, i32 15, !dbg !886
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj, align 8, !dbg !886
  %region = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_region*, !dbg !887
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !888
  %2 = load i8, i8* %space_id, align 1, !dbg !888
  %conv = zext i8 %2 to i32, !dbg !884
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 7, label %sw.bb3
    i32 9, label %sw.bb4
  ], !dbg !889

sw.bb:                                            ; preds = %entry
  store i32 34, i32* %buffer_length, align 4, !dbg !890
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !892
  %field1 = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_region_field*, !dbg !893
  %attribute = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field1, i32 0, i32 6, !dbg !894
  %4 = load i8, i8* %attribute, align 2, !dbg !894
  %conv2 = zext i8 %4 to i32, !dbg !892
  %shl = shl i32 %conv2, 16, !dbg !895
  %or = or i32 0, %shl, !dbg !896
  store i32 %or, i32* %function, align 4, !dbg !897
  br label %sw.epilog, !dbg !898

sw.bb3:                                           ; preds = %entry
  store i32 66, i32* %buffer_length, align 4, !dbg !899
  store i32 0, i32* %function, align 4, !dbg !900
  br label %sw.epilog, !dbg !901

sw.bb4:                                           ; preds = %entry
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !902
  %field5 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_region_field*, !dbg !903
  %attribute6 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field5, i32 0, i32 6, !dbg !904
  %6 = load i8, i8* %attribute6, align 2, !dbg !904
  %conv7 = zext i8 %6 to i16, !dbg !902
  store i16 %conv7, i16* %accessor_type, align 2, !dbg !905
  %7 = load i16, i16* %accessor_type, align 2, !dbg !906
  %conv8 = zext i16 %7 to i32, !dbg !906
  %cmp = icmp eq i32 %conv8, 15, !dbg !908
  br i1 %cmp, label %if.then, label %if.end, !dbg !909

if.then:                                          ; preds = %sw.bb4
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 175, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0)) #4, !dbg !910
  store i32 12324, i32* %retval, align 4, !dbg !912
  br label %return, !dbg !912

if.end:                                           ; preds = %sw.bb4
  %8 = load i16, i16* %accessor_type, align 2, !dbg !913
  %conv10 = zext i16 %8 to i32, !dbg !913
  %call = call i32 @acpi_ex_get_protocol_buffer_length(i32 %conv10, i32* %buffer_length) #4, !dbg !914
  store i32 %call, i32* %status, align 4, !dbg !915
  %9 = load i32, i32* %status, align 4, !dbg !916
  %tobool = icmp ne i32 %9, 0, !dbg !916
  br i1 %tobool, label %if.then11, label %if.end13, !dbg !918

if.then11:                                        ; preds = %if.end
  %10 = load i16, i16* %accessor_type, align 2, !dbg !919
  %conv12 = zext i16 %10 to i32, !dbg !919
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 185, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %conv12) #4, !dbg !919
  %11 = load i32, i32* %status, align 4, !dbg !921
  store i32 %11, i32* %retval, align 4, !dbg !921
  br label %return, !dbg !921

if.end13:                                         ; preds = %if.end
  %12 = load i32, i32* %buffer_length, align 4, !dbg !922
  %add = add i32 %12, 2, !dbg !922
  store i32 %add, i32* %buffer_length, align 4, !dbg !922
  %13 = load i16, i16* %accessor_type, align 2, !dbg !923
  %conv14 = zext i16 %13 to i32, !dbg !923
  %shl15 = shl i32 %conv14, 16, !dbg !924
  %or16 = or i32 0, %shl15, !dbg !925
  store i32 %or16, i32* %function, align 4, !dbg !926
  br label %sw.epilog, !dbg !927

sw.default:                                       ; preds = %entry
  store i32 12304, i32* %retval, align 4, !dbg !928
  br label %return, !dbg !928

sw.epilog:                                        ; preds = %if.end13, %sw.bb3, %sw.bb
  %14 = load i32, i32* %buffer_length, align 4, !dbg !929
  %conv17 = zext i32 %14 to i64, !dbg !929
  %call18 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %conv17) #4, !dbg !930
  store %union.acpi_operand_object* %call18, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !931
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !932
  %tobool19 = icmp ne %union.acpi_operand_object* %15, null, !dbg !932
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !934

if.then20:                                        ; preds = %sw.epilog
  store i32 4, i32* %retval, align 4, !dbg !935
  br label %return, !dbg !935

if.end21:                                         ; preds = %sw.epilog
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !937
  %common_field = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_field_common*, !dbg !938
  %field_flags = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 5, !dbg !939
  %17 = load i8, i8* %field_flags, align 1, !dbg !939
  %conv22 = zext i8 %17 to i32, !dbg !937
  call void @acpi_ex_acquire_global_lock(i32 %conv22) #4, !dbg !940
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !941
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !942
  %buffer = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_buffer*, !dbg !942
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 5, !dbg !942
  %20 = load i8*, i8** %pointer, align 8, !dbg !942
  %21 = bitcast i8* %20 to i64*, !dbg !942
  %22 = load i32, i32* %function, align 4, !dbg !943
  %call23 = call i32 @acpi_ex_access_region(%union.acpi_operand_object* %18, i32 0, i64* %21, i32 %22) #4, !dbg !944
  store i32 %call23, i32* %status, align 4, !dbg !945
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !946
  %common_field24 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_field_common*, !dbg !947
  %field_flags25 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field24, i32 0, i32 5, !dbg !948
  %24 = load i8, i8* %field_flags25, align 1, !dbg !948
  %conv26 = zext i8 %24 to i32, !dbg !946
  call void @acpi_ex_release_global_lock(i32 %conv26) #4, !dbg !949
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !950
  %26 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_buffer.addr, align 8, !dbg !951
  store %union.acpi_operand_object* %25, %union.acpi_operand_object** %26, align 8, !dbg !952
  %27 = load i32, i32* %status, align 4, !dbg !953
  store i32 %27, i32* %retval, align 4, !dbg !953
  br label %return, !dbg !953

return:                                           ; preds = %if.end21, %if.then20, %sw.default, %if.then11, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !954
  ret i32 %28, !dbg !954
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_get_protocol_buffer_length(i32, i32*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_write_serial_bus(%union.acpi_operand_object* %source_desc, %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %return_buffer) #0 !dbg !955 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca %union.acpi_operand_object*, align 8
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %return_buffer.addr = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %buffer_length = alloca i32, align 4
  %data_length = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %buffer_desc = alloca %union.acpi_operand_object*, align 8
  %function = alloca i32, align 4
  %accessor_type = alloca i16, align 2
  store %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc.addr, metadata !956, metadata !DIExpression()), !dbg !957
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !958, metadata !DIExpression()), !dbg !959
  store %union.acpi_operand_object** %return_buffer, %union.acpi_operand_object*** %return_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_buffer.addr, metadata !960, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata i32* %status, metadata !962, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.declare(metadata i32* %buffer_length, metadata !964, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.declare(metadata i32* %data_length, metadata !966, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !968, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %buffer_desc, metadata !970, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.declare(metadata i32* %function, metadata !972, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.declare(metadata i16* %accessor_type, metadata !974, metadata !DIExpression()), !dbg !975
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !976
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !978
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !979
  %1 = load i8, i8* %type, align 1, !dbg !979
  %conv = zext i8 %1 to i32, !dbg !976
  %cmp = icmp ne i32 %conv, 3, !dbg !980
  br i1 %cmp, label %if.then, label %if.end, !dbg !981

if.then:                                          ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !982
  %call = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %2) #4, !dbg !982
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 273, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %call) #4, !dbg !982
  store i32 12291, i32* %retval, align 4, !dbg !984
  br label %return, !dbg !984

if.end:                                           ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !985
  %field = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_region_field*, !dbg !986
  %region_obj = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field, i32 0, i32 15, !dbg !987
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj, align 8, !dbg !987
  %region = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_region*, !dbg !988
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !989
  %5 = load i8, i8* %space_id, align 1, !dbg !989
  %conv2 = zext i8 %5 to i32, !dbg !985
  switch i32 %conv2, label %sw.default [
    i32 4, label %sw.bb
    i32 7, label %sw.bb5
    i32 9, label %sw.bb6
  ], !dbg !990

sw.bb:                                            ; preds = %if.end
  store i32 34, i32* %buffer_length, align 4, !dbg !991
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !993
  %field3 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_region_field*, !dbg !994
  %attribute = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field3, i32 0, i32 6, !dbg !995
  %7 = load i8, i8* %attribute, align 2, !dbg !995
  %conv4 = zext i8 %7 to i32, !dbg !993
  %shl = shl i32 %conv4, 16, !dbg !996
  %or = or i32 1, %shl, !dbg !997
  store i32 %or, i32* %function, align 4, !dbg !998
  br label %sw.epilog, !dbg !999

sw.bb5:                                           ; preds = %if.end
  store i32 66, i32* %buffer_length, align 4, !dbg !1000
  store i32 1, i32* %function, align 4, !dbg !1001
  br label %sw.epilog, !dbg !1002

sw.bb6:                                           ; preds = %if.end
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1003
  %field7 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_region_field*, !dbg !1004
  %attribute8 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field7, i32 0, i32 6, !dbg !1005
  %9 = load i8, i8* %attribute8, align 2, !dbg !1005
  %conv9 = zext i8 %9 to i16, !dbg !1003
  store i16 %conv9, i16* %accessor_type, align 2, !dbg !1006
  %10 = load i16, i16* %accessor_type, align 2, !dbg !1007
  %conv10 = zext i16 %10 to i32, !dbg !1007
  %call11 = call i32 @acpi_ex_get_protocol_buffer_length(i32 %conv10, i32* %buffer_length) #4, !dbg !1008
  store i32 %call11, i32* %status, align 4, !dbg !1009
  %11 = load i32, i32* %status, align 4, !dbg !1010
  %tobool = icmp ne i32 %11, 0, !dbg !1010
  br i1 %tobool, label %if.then12, label %if.end14, !dbg !1012

if.then12:                                        ; preds = %sw.bb6
  %12 = load i16, i16* %accessor_type, align 2, !dbg !1013
  %conv13 = zext i16 %12 to i32, !dbg !1013
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 301, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %conv13) #4, !dbg !1013
  %13 = load i32, i32* %status, align 4, !dbg !1015
  store i32 %13, i32* %retval, align 4, !dbg !1015
  br label %return, !dbg !1015

if.end14:                                         ; preds = %sw.bb6
  %14 = load i32, i32* %buffer_length, align 4, !dbg !1016
  %add = add i32 %14, 2, !dbg !1016
  store i32 %add, i32* %buffer_length, align 4, !dbg !1016
  %15 = load i16, i16* %accessor_type, align 2, !dbg !1017
  %conv15 = zext i16 %15 to i32, !dbg !1017
  %shl16 = shl i32 %conv15, 16, !dbg !1018
  %or17 = or i32 1, %shl16, !dbg !1019
  store i32 %or17, i32* %function, align 4, !dbg !1020
  br label %sw.epilog, !dbg !1021

sw.default:                                       ; preds = %if.end
  store i32 12304, i32* %retval, align 4, !dbg !1022
  br label %return, !dbg !1022

sw.epilog:                                        ; preds = %if.end14, %sw.bb5, %sw.bb
  %16 = load i32, i32* %buffer_length, align 4, !dbg !1023
  %conv18 = zext i32 %16 to i64, !dbg !1023
  %call19 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %conv18) #4, !dbg !1024
  store %union.acpi_operand_object* %call19, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !1025
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !1026
  %tobool20 = icmp ne %union.acpi_operand_object* %17, null, !dbg !1026
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !1028

if.then21:                                        ; preds = %sw.epilog
  store i32 4, i32* %retval, align 4, !dbg !1029
  br label %return, !dbg !1029

if.end22:                                         ; preds = %sw.epilog
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !1031
  %buffer23 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_buffer*, !dbg !1032
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer23, i32 0, i32 5, !dbg !1033
  %19 = load i8*, i8** %pointer, align 8, !dbg !1033
  store i8* %19, i8** %buffer, align 8, !dbg !1034
  %20 = load i32, i32* %buffer_length, align 4, !dbg !1035
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1036
  %buffer24 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_buffer*, !dbg !1037
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer24, i32 0, i32 6, !dbg !1038
  %22 = load i32, i32* %length, align 8, !dbg !1038
  %cmp25 = icmp ult i32 %20, %22, !dbg !1039
  br i1 %cmp25, label %cond.true, label %cond.false, !dbg !1035

cond.true:                                        ; preds = %if.end22
  %23 = load i32, i32* %buffer_length, align 4, !dbg !1040
  br label %cond.end, !dbg !1035

cond.false:                                       ; preds = %if.end22
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1041
  %buffer27 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_buffer*, !dbg !1042
  %length28 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer27, i32 0, i32 6, !dbg !1043
  %25 = load i32, i32* %length28, align 8, !dbg !1043
  br label %cond.end, !dbg !1035

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %25, %cond.false ], !dbg !1035
  store i32 %cond, i32* %data_length, align 4, !dbg !1044
  %26 = load i8*, i8** %buffer, align 8, !dbg !1045
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1046
  %buffer29 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_buffer*, !dbg !1047
  %pointer30 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer29, i32 0, i32 5, !dbg !1048
  %28 = load i8*, i8** %pointer30, align 8, !dbg !1048
  %29 = load i32, i32* %data_length, align 4, !dbg !1049
  %conv31 = zext i32 %29 to i64, !dbg !1049
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %28, i64 %conv31, i1 false), !dbg !1050
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1051
  %common_field = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_field_common*, !dbg !1052
  %field_flags = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 5, !dbg !1053
  %31 = load i8, i8* %field_flags, align 1, !dbg !1053
  %conv32 = zext i8 %31 to i32, !dbg !1051
  call void @acpi_ex_acquire_global_lock(i32 %conv32) #4, !dbg !1054
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1055
  %33 = load i8*, i8** %buffer, align 8, !dbg !1056
  %34 = bitcast i8* %33 to i64*, !dbg !1057
  %35 = load i32, i32* %function, align 4, !dbg !1058
  %call33 = call i32 @acpi_ex_access_region(%union.acpi_operand_object* %32, i32 0, i64* %34, i32 %35) #4, !dbg !1059
  store i32 %call33, i32* %status, align 4, !dbg !1060
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1061
  %common_field34 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_field_common*, !dbg !1062
  %field_flags35 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field34, i32 0, i32 5, !dbg !1063
  %37 = load i8, i8* %field_flags35, align 1, !dbg !1063
  %conv36 = zext i8 %37 to i32, !dbg !1061
  call void @acpi_ex_release_global_lock(i32 %conv36) #4, !dbg !1064
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !1065
  %39 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_buffer.addr, align 8, !dbg !1066
  store %union.acpi_operand_object* %38, %union.acpi_operand_object** %39, align 8, !dbg !1067
  %40 = load i32, i32* %status, align 4, !dbg !1068
  store i32 %40, i32* %retval, align 4, !dbg !1068
  br label %return, !dbg !1068

return:                                           ; preds = %cond.end, %if.then21, %sw.default, %if.then12, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !1069
  ret i32 %41, !dbg !1069
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !32, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exserial.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 433, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/amlcode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "AML_FIELD_ATTRIB_QUICK", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "AML_FIELD_ATTRIB_SEND_RECEIVE", value: 4, isUnsigned: true)
!11 = !DIEnumerator(name: "AML_FIELD_ATTRIB_BYTE", value: 6, isUnsigned: true)
!12 = !DIEnumerator(name: "AML_FIELD_ATTRIB_WORD", value: 8, isUnsigned: true)
!13 = !DIEnumerator(name: "AML_FIELD_ATTRIB_BLOCK", value: 10, isUnsigned: true)
!14 = !DIEnumerator(name: "AML_FIELD_ATTRIB_BYTES", value: 11, isUnsigned: true)
!15 = !DIEnumerator(name: "AML_FIELD_ATTRIB_PROCESS_CALL", value: 12, isUnsigned: true)
!16 = !DIEnumerator(name: "AML_FIELD_ATTRIB_BLOCK_PROCESS_CALL", value: 13, isUnsigned: true)
!17 = !DIEnumerator(name: "AML_FIELD_ATTRIB_RAW_BYTES", value: 14, isUnsigned: true)
!18 = !DIEnumerator(name: "AML_FIELD_ATTRIB_RAW_PROCESS_BYTES", value: 15, isUnsigned: true)
!19 = !{!20, !26, !30}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !22, line: 23, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !24, line: 31, baseType: !25)
!24 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!25 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !27, line: 421, baseType: !28)
!27 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !22, line: 21, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !24, line: 27, baseType: !7)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !{!0}
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 72, elements: !35)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !{!36}
!36 = !DISubrange(count: 9)
!37 = !{i32 7, !"Dwarf Version", i32 4}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"Code Model", i32 2}
!41 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!42 = distinct !DISubprogram(name: "acpi_ex_read_gpio", scope: !3, file: !3, line: 32, type: !43, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!43 = !DISubroutineType(types: !44)
!44 = !{!26, !45, !30}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !47, line: 367, size: 576, elements: !48)
!47 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!48 = !{!49, !63, !76, !87, !123, !137, !146, !457, !474, !489, !502, !580, !592, !606, !616, !634, !656, !675, !694, !713, !726, !751, !768, !781, !795, !804}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !46, file: !47, line: 368, baseType: !50, size: 128)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !47, line: 73, size: 128, elements: !51)
!51 = !{!52, !53, !57, !58, !62}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !50, file: !47, line: 74, baseType: !45, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !50, file: !47, line: 74, baseType: !54, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !22, line: 17, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !24, line: 21, baseType: !56)
!56 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !47, line: 74, baseType: !54, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !50, file: !47, line: 74, baseType: !59, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !22, line: 19, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !24, line: 24, baseType: !61)
!61 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !47, line: 74, baseType: !54, size: 8, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !46, file: !47, line: 369, baseType: !64, size: 192)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !47, line: 76, size: 192, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !75}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !64, file: !47, line: 77, baseType: !45, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !64, file: !47, line: 77, baseType: !54, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !47, line: 77, baseType: !54, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !64, file: !47, line: 77, baseType: !59, size: 16, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !47, line: 77, baseType: !54, size: 8, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !64, file: !47, line: 77, baseType: !72, size: 24, offset: 104)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 24, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !64, file: !47, line: 78, baseType: !21, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !46, file: !47, line: 370, baseType: !77, size: 256)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !47, line: 93, size: 256, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !86}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !77, file: !47, line: 94, baseType: !45, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !77, file: !47, line: 94, baseType: !54, size: 8, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !47, line: 94, baseType: !54, size: 8, offset: 72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !77, file: !47, line: 94, baseType: !59, size: 16, offset: 80)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !47, line: 94, baseType: !54, size: 8, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !77, file: !47, line: 94, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !47, line: 94, baseType: !28, size: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !46, file: !47, line: 371, baseType: !88, size: 384)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !47, line: 97, size: 384, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !97, !98, !99, !100}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !88, file: !47, line: 98, baseType: !45, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !88, file: !47, line: 98, baseType: !54, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !47, line: 98, baseType: !54, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !88, file: !47, line: 98, baseType: !59, size: 16, offset: 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !88, file: !47, line: 98, baseType: !54, size: 8, offset: 96)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !88, file: !47, line: 98, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !88, file: !47, line: 98, baseType: !28, size: 32, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !88, file: !47, line: 99, baseType: !28, size: 32, offset: 224)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !88, file: !47, line: 100, baseType: !96, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !88, file: !47, line: 101, baseType: !101, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !103, line: 133, size: 384, elements: !104)
!103 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106, !107, !108, !109, !118, !119, !120, !121}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !102, file: !103, line: 134, baseType: !45, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !103, line: 135, baseType: !54, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !103, line: 136, baseType: !54, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !103, line: 137, baseType: !59, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !103, line: 138, baseType: !110, size: 32, offset: 96)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !111, line: 327, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !110, file: !111, line: 328, baseType: !28, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !110, file: !111, line: 329, baseType: !115, size: 32)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 4)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !102, file: !103, line: 139, baseType: !101, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !102, file: !103, line: 140, baseType: !101, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !102, file: !103, line: 141, baseType: !101, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !102, file: !103, line: 142, baseType: !122, size: 16, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !27, line: 445, baseType: !59)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !46, file: !47, line: 372, baseType: !124, size: 384)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !47, line: 104, size: 384, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !134, !135, !136}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !124, file: !47, line: 105, baseType: !45, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !47, line: 105, baseType: !54, size: 8, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !47, line: 105, baseType: !54, size: 8, offset: 72)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !124, file: !47, line: 105, baseType: !59, size: 16, offset: 80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !47, line: 105, baseType: !54, size: 8, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !124, file: !47, line: 105, baseType: !101, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !124, file: !47, line: 106, baseType: !133, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !124, file: !47, line: 107, baseType: !96, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !124, file: !47, line: 108, baseType: !28, size: 32, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !124, file: !47, line: 109, baseType: !28, size: 32, offset: 352)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !47, line: 373, baseType: !138, size: 192)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !47, line: 118, size: 192, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !138, file: !47, line: 119, baseType: !45, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !138, file: !47, line: 119, baseType: !54, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !47, line: 119, baseType: !54, size: 8, offset: 72)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !138, file: !47, line: 119, baseType: !59, size: 16, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !47, line: 119, baseType: !54, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !138, file: !47, line: 119, baseType: !30, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !46, file: !47, line: 374, baseType: !147, size: 448)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !47, line: 143, size: 448, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !454, !455, !456}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !147, file: !47, line: 144, baseType: !45, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !47, line: 144, baseType: !54, size: 8, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !47, line: 144, baseType: !54, size: 8, offset: 72)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !147, file: !47, line: 144, baseType: !59, size: 16, offset: 80)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !47, line: 144, baseType: !54, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !147, file: !47, line: 144, baseType: !54, size: 8, offset: 104)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !147, file: !47, line: 145, baseType: !54, size: 8, offset: 112)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !147, file: !47, line: 146, baseType: !54, size: 8, offset: 120)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !147, file: !47, line: 147, baseType: !45, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !147, file: !47, line: 148, baseType: !45, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !147, file: !47, line: 149, baseType: !96, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !147, file: !47, line: 153, baseType: !161, size: 64, offset: 320)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !47, line: 150, size: 64, elements: !162)
!162 = !{!163, !453}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !161, file: !47, line: 151, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !103, line: 248, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!26, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !170, line: 37, size: 9024, elements: !171)
!170 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !401, !402, !403, !404, !405, !409, !411, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !436, !437, !438, !439, !440, !441, !442, !443, !445, !451}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !170, line: 38, baseType: !168, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !169, file: !170, line: 39, baseType: !54, size: 8, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !169, file: !170, line: 40, baseType: !54, size: 8, offset: 72)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !169, file: !170, line: 41, baseType: !59, size: 16, offset: 80)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !169, file: !170, line: 42, baseType: !54, size: 8, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !169, file: !170, line: 43, baseType: !54, size: 8, offset: 104)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !169, file: !170, line: 44, baseType: !54, size: 8, offset: 112)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !169, file: !170, line: 45, baseType: !122, size: 16, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !169, file: !170, line: 46, baseType: !54, size: 8, offset: 144)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !169, file: !170, line: 47, baseType: !54, size: 8, offset: 152)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !169, file: !170, line: 48, baseType: !54, size: 8, offset: 160)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !169, file: !170, line: 49, baseType: !54, size: 8, offset: 168)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !169, file: !170, line: 50, baseType: !54, size: 8, offset: 176)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !169, file: !170, line: 51, baseType: !54, size: 8, offset: 184)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !169, file: !170, line: 52, baseType: !54, size: 8, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !169, file: !170, line: 53, baseType: !54, size: 8, offset: 200)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !169, file: !170, line: 54, baseType: !96, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !169, file: !170, line: 55, baseType: !28, size: 32, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !169, file: !170, line: 56, baseType: !28, size: 32, offset: 352)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !169, file: !170, line: 57, baseType: !28, size: 32, offset: 384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !169, file: !170, line: 58, baseType: !28, size: 32, offset: 416)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !169, file: !170, line: 60, baseType: !194, size: 640, offset: 448)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !103, line: 893, size: 640, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !282, !283, !399, !400}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !194, file: !103, line: 894, baseType: !96, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !194, file: !103, line: 895, baseType: !96, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !194, file: !103, line: 896, baseType: !96, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !194, file: !103, line: 897, baseType: !96, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !194, file: !103, line: 898, baseType: !96, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !194, file: !103, line: 899, baseType: !202, size: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !103, line: 875, size: 1600, elements: !204)
!204 = !{!205, !225, !241}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !203, file: !103, line: 876, baseType: !206, size: 448)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !103, line: 828, size: 448, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !224}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !206, file: !103, line: 829, baseType: !202, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !206, file: !103, line: 829, baseType: !54, size: 8, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !103, line: 829, baseType: !54, size: 8, offset: 72)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !206, file: !103, line: 829, baseType: !59, size: 16, offset: 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !206, file: !103, line: 829, baseType: !96, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !103, line: 829, baseType: !202, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !206, file: !103, line: 829, baseType: !101, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !206, file: !103, line: 829, baseType: !216, size: 64, offset: 320)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !103, line: 716, size: 64, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !216, file: !103, line: 717, baseType: !21, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !216, file: !103, line: 718, baseType: !28, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !216, file: !103, line: 719, baseType: !85, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !216, file: !103, line: 720, baseType: !96, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !103, line: 721, baseType: !85, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !216, file: !103, line: 722, baseType: !202, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !206, file: !103, line: 829, baseType: !54, size: 8, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !203, file: !103, line: 877, baseType: !226, size: 640)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !103, line: 835, size: 640, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !226, file: !103, line: 836, baseType: !202, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !226, file: !103, line: 836, baseType: !54, size: 8, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !103, line: 836, baseType: !54, size: 8, offset: 72)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !226, file: !103, line: 836, baseType: !59, size: 16, offset: 80)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !226, file: !103, line: 836, baseType: !96, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !103, line: 836, baseType: !202, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !226, file: !103, line: 836, baseType: !101, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !226, file: !103, line: 836, baseType: !216, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !226, file: !103, line: 836, baseType: !54, size: 8, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !226, file: !103, line: 836, baseType: !85, size: 64, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !226, file: !103, line: 837, baseType: !96, size: 64, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !226, file: !103, line: 838, baseType: !28, size: 32, offset: 576)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !103, line: 839, baseType: !28, size: 32, offset: 608)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !203, file: !103, line: 878, baseType: !242, size: 1600)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !103, line: 846, size: 1600, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !242, file: !103, line: 847, baseType: !202, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !242, file: !103, line: 847, baseType: !54, size: 8, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !242, file: !103, line: 847, baseType: !54, size: 8, offset: 72)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !242, file: !103, line: 847, baseType: !59, size: 16, offset: 80)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !242, file: !103, line: 847, baseType: !96, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !103, line: 847, baseType: !202, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !242, file: !103, line: 847, baseType: !101, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !242, file: !103, line: 847, baseType: !216, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !242, file: !103, line: 847, baseType: !54, size: 8, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !242, file: !103, line: 847, baseType: !202, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !242, file: !103, line: 848, baseType: !202, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !242, file: !103, line: 849, baseType: !85, size: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !242, file: !103, line: 850, baseType: !54, size: 8, offset: 640)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !242, file: !103, line: 851, baseType: !85, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !242, file: !103, line: 852, baseType: !85, size: 64, offset: 768)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !242, file: !103, line: 853, baseType: !85, size: 64, offset: 832)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !242, file: !103, line: 854, baseType: !115, size: 32, offset: 896)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !242, file: !103, line: 855, baseType: !28, size: 32, offset: 928)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !242, file: !103, line: 856, baseType: !28, size: 32, offset: 960)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !242, file: !103, line: 857, baseType: !28, size: 32, offset: 992)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !242, file: !103, line: 858, baseType: !28, size: 32, offset: 1024)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !242, file: !103, line: 859, baseType: !28, size: 32, offset: 1056)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !242, file: !103, line: 860, baseType: !28, size: 32, offset: 1088)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !242, file: !103, line: 861, baseType: !28, size: 32, offset: 1120)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !242, file: !103, line: 862, baseType: !28, size: 32, offset: 1152)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !242, file: !103, line: 863, baseType: !28, size: 32, offset: 1184)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !242, file: !103, line: 864, baseType: !28, size: 32, offset: 1216)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !242, file: !103, line: 865, baseType: !28, size: 32, offset: 1248)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !242, file: !103, line: 866, baseType: !28, size: 32, offset: 1280)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !242, file: !103, line: 867, baseType: !28, size: 32, offset: 1312)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !242, file: !103, line: 868, baseType: !59, size: 16, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !242, file: !103, line: 869, baseType: !54, size: 8, offset: 1360)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !242, file: !103, line: 870, baseType: !54, size: 8, offset: 1368)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !242, file: !103, line: 871, baseType: !54, size: 8, offset: 1376)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !242, file: !103, line: 872, baseType: !279, size: 160, offset: 1384)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 20)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !194, file: !103, line: 900, baseType: !101, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !194, file: !103, line: 901, baseType: !284, size: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !103, line: 663, size: 640, elements: !286)
!286 = !{!287, !295, !308, !317, !326, !339, !353, !365, !377}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !285, file: !103, line: 664, baseType: !288, size: 128)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !103, line: 567, size: 128, elements: !289)
!289 = !{!290, !291, !292, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !103, line: 568, baseType: !30, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !103, line: 568, baseType: !54, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !103, line: 568, baseType: !54, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !103, line: 568, baseType: !59, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !103, line: 568, baseType: !59, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !285, file: !103, line: 665, baseType: !296, size: 384)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !103, line: 593, size: 384, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !103, line: 594, baseType: !30, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !103, line: 594, baseType: !54, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !103, line: 594, baseType: !54, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !103, line: 594, baseType: !59, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !103, line: 594, baseType: !59, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !296, file: !103, line: 594, baseType: !59, size: 16, offset: 112)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !296, file: !103, line: 595, baseType: !202, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !296, file: !103, line: 596, baseType: !96, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !296, file: !103, line: 597, baseType: !96, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !296, file: !103, line: 598, baseType: !21, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !285, file: !103, line: 666, baseType: !309, size: 192)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !103, line: 573, size: 192, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !103, line: 574, baseType: !30, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !103, line: 574, baseType: !54, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !103, line: 574, baseType: !54, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !103, line: 574, baseType: !59, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !103, line: 574, baseType: !59, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !309, file: !103, line: 574, baseType: !45, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !285, file: !103, line: 667, baseType: !318, size: 192)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !103, line: 604, size: 192, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !103, line: 605, baseType: !30, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !103, line: 605, baseType: !54, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !103, line: 605, baseType: !54, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !103, line: 605, baseType: !59, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !318, file: !103, line: 605, baseType: !59, size: 16, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !318, file: !103, line: 605, baseType: !101, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !285, file: !103, line: 668, baseType: !327, size: 448)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !103, line: 608, size: 448, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !103, line: 609, baseType: !30, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !103, line: 609, baseType: !54, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !103, line: 609, baseType: !54, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !103, line: 609, baseType: !59, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !103, line: 609, baseType: !59, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !327, file: !103, line: 609, baseType: !28, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !327, file: !103, line: 610, baseType: !202, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !327, file: !103, line: 611, baseType: !96, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !327, file: !103, line: 612, baseType: !96, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !327, file: !103, line: 613, baseType: !28, size: 32, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !285, file: !103, line: 669, baseType: !340, size: 512)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !103, line: 580, size: 512, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !103, line: 581, baseType: !30, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !340, file: !103, line: 581, baseType: !54, size: 8, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !103, line: 581, baseType: !54, size: 8, offset: 72)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !340, file: !103, line: 581, baseType: !59, size: 16, offset: 80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !340, file: !103, line: 581, baseType: !59, size: 16, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !340, file: !103, line: 581, baseType: !28, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !340, file: !103, line: 582, baseType: !45, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !340, file: !103, line: 583, baseType: !45, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !340, file: !103, line: 584, baseType: !168, size: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !340, file: !103, line: 585, baseType: !30, size: 64, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !340, file: !103, line: 586, baseType: !28, size: 32, offset: 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !285, file: !103, line: 670, baseType: !354, size: 320)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !103, line: 620, size: 320, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !103, line: 621, baseType: !30, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !354, file: !103, line: 621, baseType: !54, size: 8, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !103, line: 621, baseType: !54, size: 8, offset: 72)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !354, file: !103, line: 621, baseType: !59, size: 16, offset: 80)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !354, file: !103, line: 621, baseType: !59, size: 16, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !354, file: !103, line: 621, baseType: !54, size: 8, offset: 112)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !354, file: !103, line: 622, baseType: !168, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !354, file: !103, line: 623, baseType: !45, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !354, file: !103, line: 624, baseType: !21, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !285, file: !103, line: 671, baseType: !366, size: 640)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !103, line: 631, size: 640, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !103, line: 632, baseType: !30, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !103, line: 632, baseType: !54, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !103, line: 632, baseType: !54, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !366, file: !103, line: 632, baseType: !59, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !103, line: 632, baseType: !59, size: 16, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !366, file: !103, line: 633, baseType: !374, size: 512, offset: 128)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 512, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 8)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !285, file: !103, line: 672, baseType: !378, size: 320)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !103, line: 654, size: 320, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !103, line: 655, baseType: !30, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !378, file: !103, line: 655, baseType: !54, size: 8, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !378, file: !103, line: 655, baseType: !54, size: 8, offset: 72)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !378, file: !103, line: 655, baseType: !59, size: 16, offset: 80)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !378, file: !103, line: 655, baseType: !59, size: 16, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !378, file: !103, line: 655, baseType: !54, size: 8, offset: 112)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !378, file: !103, line: 656, baseType: !101, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !378, file: !103, line: 657, baseType: !45, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !378, file: !103, line: 658, baseType: !389, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !103, line: 645, size: 128, elements: !391)
!391 = !{!392, !398}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !390, file: !103, line: 646, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !27, line: 1052, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397, !28, !30}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !27, line: 424, baseType: !30)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !390, file: !103, line: 647, baseType: !30, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !194, file: !103, line: 902, baseType: !202, size: 64, offset: 512)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !194, file: !103, line: 903, baseType: !28, size: 32, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !169, file: !170, line: 61, baseType: !28, size: 32, offset: 1088)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !169, file: !170, line: 62, baseType: !28, size: 32, offset: 1120)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !169, file: !170, line: 63, baseType: !59, size: 16, offset: 1152)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !169, file: !170, line: 64, baseType: !54, size: 8, offset: 1168)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !169, file: !170, line: 66, baseType: !406, size: 2688, offset: 1216)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 2688, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 7)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !169, file: !170, line: 67, baseType: !410, size: 3072, offset: 3904)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 3072, elements: !375)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !169, file: !170, line: 68, baseType: !412, size: 576, offset: 6976)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 576, elements: !35)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !169, file: !170, line: 69, baseType: !133, size: 64, offset: 7552)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !169, file: !170, line: 71, baseType: !96, size: 64, offset: 7616)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !169, file: !170, line: 72, baseType: !133, size: 64, offset: 7680)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !169, file: !170, line: 73, baseType: !284, size: 64, offset: 7744)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !169, file: !170, line: 74, baseType: !101, size: 64, offset: 7808)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !169, file: !170, line: 75, baseType: !45, size: 64, offset: 7872)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !169, file: !170, line: 76, baseType: !101, size: 64, offset: 7936)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !169, file: !170, line: 77, baseType: !202, size: 64, offset: 8000)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !169, file: !170, line: 78, baseType: !45, size: 64, offset: 8064)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !169, file: !170, line: 79, baseType: !101, size: 64, offset: 8128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !169, file: !170, line: 80, baseType: !85, size: 64, offset: 8192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !169, file: !170, line: 81, baseType: !202, size: 64, offset: 8256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !169, file: !170, line: 82, baseType: !426, size: 64, offset: 8320)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !103, line: 702, size: 128, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !435}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !428, file: !103, line: 706, baseType: !28, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !428, file: !103, line: 707, baseType: !28, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !428, file: !103, line: 708, baseType: !59, size: 16, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !428, file: !103, line: 709, baseType: !54, size: 8, offset: 80)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !428, file: !103, line: 710, baseType: !54, size: 8, offset: 88)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !428, file: !103, line: 711, baseType: !54, size: 8, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !169, file: !170, line: 83, baseType: !202, size: 64, offset: 8384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !169, file: !170, line: 84, baseType: !45, size: 64, offset: 8448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !169, file: !170, line: 85, baseType: !284, size: 64, offset: 8512)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !169, file: !170, line: 86, baseType: !45, size: 64, offset: 8576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !169, file: !170, line: 87, baseType: !284, size: 64, offset: 8640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !169, file: !170, line: 88, baseType: !202, size: 64, offset: 8704)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !169, file: !170, line: 89, baseType: !202, size: 64, offset: 8768)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !169, file: !170, line: 90, baseType: !444, size: 64, offset: 8832)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !169, file: !170, line: 91, baseType: !446, size: 64, offset: 8896)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !103, line: 637, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!26, !168, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !169, file: !170, line: 92, baseType: !452, size: 64, offset: 8960)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !103, line: 641, baseType: !165)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !161, file: !47, line: 152, baseType: !45, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !147, file: !47, line: 155, baseType: !28, size: 32, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !147, file: !47, line: 156, baseType: !122, size: 16, offset: 416)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !147, file: !47, line: 157, baseType: !54, size: 8, offset: 432)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !46, file: !47, line: 375, baseType: !458, size: 576)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !47, line: 122, size: 576, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !458, file: !47, line: 123, baseType: !45, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !458, file: !47, line: 123, baseType: !54, size: 8, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !458, file: !47, line: 123, baseType: !54, size: 8, offset: 72)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !458, file: !47, line: 123, baseType: !59, size: 16, offset: 80)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !47, line: 123, baseType: !54, size: 8, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !458, file: !47, line: 123, baseType: !54, size: 8, offset: 104)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !458, file: !47, line: 124, baseType: !59, size: 16, offset: 112)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !458, file: !47, line: 125, baseType: !30, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !458, file: !47, line: 126, baseType: !21, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !458, file: !47, line: 127, baseType: !444, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !458, file: !47, line: 128, baseType: !45, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !47, line: 129, baseType: !45, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !458, file: !47, line: 130, baseType: !101, size: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !458, file: !47, line: 131, baseType: !54, size: 8, offset: 512)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !46, file: !47, line: 376, baseType: !475, size: 448)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !47, line: 134, size: 448, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !488}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !475, file: !47, line: 135, baseType: !45, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !475, file: !47, line: 135, baseType: !54, size: 8, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !475, file: !47, line: 135, baseType: !54, size: 8, offset: 72)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !475, file: !47, line: 135, baseType: !59, size: 16, offset: 80)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !47, line: 135, baseType: !54, size: 8, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !475, file: !47, line: 135, baseType: !54, size: 8, offset: 104)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !475, file: !47, line: 136, baseType: !101, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !475, file: !47, line: 137, baseType: !45, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !475, file: !47, line: 138, baseType: !45, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !475, file: !47, line: 139, baseType: !487, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !27, line: 129, baseType: !21)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !475, file: !47, line: 140, baseType: !28, size: 32, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !46, file: !47, line: 377, baseType: !490, size: 320)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !47, line: 184, size: 320, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497, !501}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !490, file: !47, line: 185, baseType: !45, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !490, file: !47, line: 185, baseType: !54, size: 8, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !490, file: !47, line: 185, baseType: !54, size: 8, offset: 72)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !490, file: !47, line: 185, baseType: !59, size: 16, offset: 80)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !47, line: 185, baseType: !54, size: 8, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !490, file: !47, line: 185, baseType: !498, size: 128, offset: 128)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 2)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !490, file: !47, line: 185, baseType: !45, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !46, file: !47, line: 378, baseType: !503, size: 384)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !47, line: 187, size: 384, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !503, file: !47, line: 188, baseType: !45, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !503, file: !47, line: 188, baseType: !54, size: 8, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !503, file: !47, line: 188, baseType: !54, size: 8, offset: 72)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !503, file: !47, line: 188, baseType: !59, size: 16, offset: 80)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !503, file: !47, line: 188, baseType: !54, size: 8, offset: 96)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !503, file: !47, line: 189, baseType: !498, size: 128, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !503, file: !47, line: 189, baseType: !45, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !503, file: !47, line: 189, baseType: !513, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !103, line: 480, size: 576, elements: !515)
!515 = !{!516, !517, !518, !519, !527, !542, !574, !575, !576, !577, !578, !579}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !514, file: !103, line: 481, baseType: !101, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !514, file: !103, line: 482, baseType: !513, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !514, file: !103, line: 483, baseType: !513, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !514, file: !103, line: 484, baseType: !520, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !103, line: 497, size: 256, elements: !522)
!522 = !{!523, !524, !525, !526}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !521, file: !103, line: 498, baseType: !520, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !521, file: !103, line: 499, baseType: !520, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !521, file: !103, line: 500, baseType: !513, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !521, file: !103, line: 501, baseType: !28, size: 32, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !514, file: !103, line: 485, baseType: !528, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !103, line: 466, size: 320, elements: !530)
!530 = !{!531, !536, !537, !538, !539, !540, !541}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !529, file: !103, line: 467, baseType: !532, size: 128)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !103, line: 459, size: 128, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !532, file: !103, line: 460, baseType: !54, size: 8)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !532, file: !103, line: 461, baseType: !21, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !529, file: !103, line: 468, baseType: !532, size: 128, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !529, file: !103, line: 469, baseType: !59, size: 16, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !529, file: !103, line: 470, baseType: !54, size: 8, offset: 272)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !529, file: !103, line: 471, baseType: !54, size: 8, offset: 280)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !529, file: !103, line: 472, baseType: !54, size: 8, offset: 288)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !529, file: !103, line: 473, baseType: !54, size: 8, offset: 296)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !514, file: !103, line: 486, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !103, line: 448, size: 192, elements: !545)
!545 = !{!546, !569, !570, !571, !572, !573}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !544, file: !103, line: 449, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !103, line: 438, size: 64, elements: !548)
!548 = !{!549, !550, !563}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !547, file: !103, line: 439, baseType: !101, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !547, file: !103, line: 440, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !103, line: 419, size: 256, elements: !553)
!553 = !{!554, !559, !560, !561, !562}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !552, file: !103, line: 420, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !27, line: 1049, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!28, !397, !28, !30}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !552, file: !103, line: 421, baseType: !30, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !552, file: !103, line: 422, baseType: !101, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !552, file: !103, line: 423, baseType: !54, size: 8, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !552, file: !103, line: 424, baseType: !54, size: 8, offset: 200)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !547, file: !103, line: 441, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !103, line: 429, size: 128, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !565, file: !103, line: 430, baseType: !101, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !565, file: !103, line: 431, baseType: !564, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !544, file: !103, line: 450, baseType: !528, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !103, line: 451, baseType: !54, size: 8, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !544, file: !103, line: 452, baseType: !54, size: 8, offset: 136)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !544, file: !103, line: 453, baseType: !54, size: 8, offset: 144)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !544, file: !103, line: 454, baseType: !54, size: 8, offset: 152)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !103, line: 487, baseType: !21, size: 64, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !514, file: !103, line: 488, baseType: !28, size: 32, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !514, file: !103, line: 489, baseType: !59, size: 16, offset: 480)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !514, file: !103, line: 490, baseType: !59, size: 16, offset: 496)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !514, file: !103, line: 491, baseType: !54, size: 8, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !514, file: !103, line: 492, baseType: !54, size: 8, offset: 520)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !46, file: !47, line: 379, baseType: !581, size: 384)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !47, line: 192, size: 384, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !581, file: !47, line: 193, baseType: !45, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !581, file: !47, line: 193, baseType: !54, size: 8, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !47, line: 193, baseType: !54, size: 8, offset: 72)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !581, file: !47, line: 193, baseType: !59, size: 16, offset: 80)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !47, line: 193, baseType: !54, size: 8, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !581, file: !47, line: 193, baseType: !498, size: 128, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !581, file: !47, line: 193, baseType: !45, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !581, file: !47, line: 193, baseType: !28, size: 32, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !581, file: !47, line: 194, baseType: !28, size: 32, offset: 352)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !46, file: !47, line: 380, baseType: !593, size: 384)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !47, line: 197, size: 384, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !604}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !593, file: !47, line: 198, baseType: !45, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !593, file: !47, line: 198, baseType: !54, size: 8, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !593, file: !47, line: 198, baseType: !54, size: 8, offset: 72)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !593, file: !47, line: 198, baseType: !59, size: 16, offset: 80)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !593, file: !47, line: 198, baseType: !54, size: 8, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !593, file: !47, line: 200, baseType: !54, size: 8, offset: 104)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !593, file: !47, line: 201, baseType: !54, size: 8, offset: 112)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !593, file: !47, line: 202, baseType: !498, size: 128, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !593, file: !47, line: 202, baseType: !45, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !593, file: !47, line: 202, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !27, line: 128, baseType: !21)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !46, file: !47, line: 381, baseType: !607, size: 320)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !47, line: 205, size: 320, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !607, file: !47, line: 206, baseType: !45, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !607, file: !47, line: 206, baseType: !54, size: 8, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !607, file: !47, line: 206, baseType: !54, size: 8, offset: 72)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !607, file: !47, line: 206, baseType: !59, size: 16, offset: 80)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !607, file: !47, line: 206, baseType: !54, size: 8, offset: 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !607, file: !47, line: 206, baseType: !498, size: 128, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !607, file: !47, line: 206, baseType: !45, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !46, file: !47, line: 382, baseType: !617, size: 384)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !47, line: 233, size: 384, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !617, file: !47, line: 234, baseType: !45, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !47, line: 234, baseType: !54, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !47, line: 234, baseType: !54, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !617, file: !47, line: 234, baseType: !59, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !47, line: 234, baseType: !54, size: 8, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !617, file: !47, line: 234, baseType: !54, size: 8, offset: 104)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !617, file: !47, line: 234, baseType: !54, size: 8, offset: 112)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !617, file: !47, line: 234, baseType: !54, size: 8, offset: 120)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !617, file: !47, line: 234, baseType: !101, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !617, file: !47, line: 234, baseType: !28, size: 32, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !617, file: !47, line: 234, baseType: !28, size: 32, offset: 224)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !617, file: !47, line: 234, baseType: !28, size: 32, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !617, file: !47, line: 234, baseType: !54, size: 8, offset: 288)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !617, file: !47, line: 234, baseType: !54, size: 8, offset: 296)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !617, file: !47, line: 234, baseType: !45, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !46, file: !47, line: 383, baseType: !635, size: 576)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !47, line: 237, size: 576, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !635, file: !47, line: 238, baseType: !45, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !635, file: !47, line: 238, baseType: !54, size: 8, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !635, file: !47, line: 238, baseType: !54, size: 8, offset: 72)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !635, file: !47, line: 238, baseType: !59, size: 16, offset: 80)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !47, line: 238, baseType: !54, size: 8, offset: 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !635, file: !47, line: 238, baseType: !54, size: 8, offset: 104)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !635, file: !47, line: 238, baseType: !54, size: 8, offset: 112)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !635, file: !47, line: 238, baseType: !54, size: 8, offset: 120)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !635, file: !47, line: 238, baseType: !101, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !635, file: !47, line: 238, baseType: !28, size: 32, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !635, file: !47, line: 238, baseType: !28, size: 32, offset: 224)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !635, file: !47, line: 238, baseType: !28, size: 32, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !635, file: !47, line: 238, baseType: !54, size: 8, offset: 288)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !635, file: !47, line: 238, baseType: !54, size: 8, offset: 296)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !635, file: !47, line: 238, baseType: !59, size: 16, offset: 304)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !635, file: !47, line: 239, baseType: !45, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !635, file: !47, line: 240, baseType: !96, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !635, file: !47, line: 241, baseType: !59, size: 16, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !635, file: !47, line: 242, baseType: !96, size: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !46, file: !47, line: 384, baseType: !657, size: 384)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !47, line: 262, size: 384, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !657, file: !47, line: 263, baseType: !45, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !657, file: !47, line: 263, baseType: !54, size: 8, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !47, line: 263, baseType: !54, size: 8, offset: 72)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !657, file: !47, line: 263, baseType: !59, size: 16, offset: 80)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !47, line: 263, baseType: !54, size: 8, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !657, file: !47, line: 263, baseType: !54, size: 8, offset: 104)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !657, file: !47, line: 263, baseType: !54, size: 8, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !657, file: !47, line: 263, baseType: !54, size: 8, offset: 120)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !47, line: 263, baseType: !101, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !657, file: !47, line: 263, baseType: !28, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !657, file: !47, line: 263, baseType: !28, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !657, file: !47, line: 263, baseType: !28, size: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !657, file: !47, line: 263, baseType: !54, size: 8, offset: 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !657, file: !47, line: 263, baseType: !54, size: 8, offset: 296)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !657, file: !47, line: 263, baseType: !54, size: 8, offset: 304)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !657, file: !47, line: 264, baseType: !45, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !46, file: !47, line: 385, baseType: !676, size: 448)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !47, line: 245, size: 448, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !676, file: !47, line: 246, baseType: !45, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !47, line: 246, baseType: !54, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !47, line: 246, baseType: !54, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !47, line: 246, baseType: !59, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !47, line: 246, baseType: !54, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !676, file: !47, line: 246, baseType: !54, size: 8, offset: 104)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !676, file: !47, line: 246, baseType: !54, size: 8, offset: 112)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !676, file: !47, line: 246, baseType: !54, size: 8, offset: 120)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !676, file: !47, line: 246, baseType: !101, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !676, file: !47, line: 246, baseType: !28, size: 32, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !676, file: !47, line: 246, baseType: !28, size: 32, offset: 224)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !676, file: !47, line: 246, baseType: !28, size: 32, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !676, file: !47, line: 246, baseType: !54, size: 8, offset: 288)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !676, file: !47, line: 246, baseType: !54, size: 8, offset: 296)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !676, file: !47, line: 246, baseType: !45, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !676, file: !47, line: 247, baseType: !45, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !46, file: !47, line: 386, baseType: !695, size: 448)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !47, line: 250, size: 448, elements: !696)
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !695, file: !47, line: 251, baseType: !45, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !695, file: !47, line: 251, baseType: !54, size: 8, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !695, file: !47, line: 251, baseType: !54, size: 8, offset: 72)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !695, file: !47, line: 251, baseType: !59, size: 16, offset: 80)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !47, line: 251, baseType: !54, size: 8, offset: 96)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !695, file: !47, line: 251, baseType: !54, size: 8, offset: 104)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !695, file: !47, line: 251, baseType: !54, size: 8, offset: 112)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !695, file: !47, line: 251, baseType: !54, size: 8, offset: 120)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !695, file: !47, line: 251, baseType: !101, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !695, file: !47, line: 251, baseType: !28, size: 32, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !695, file: !47, line: 251, baseType: !28, size: 32, offset: 224)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !695, file: !47, line: 251, baseType: !28, size: 32, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !695, file: !47, line: 251, baseType: !54, size: 8, offset: 288)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !695, file: !47, line: 251, baseType: !54, size: 8, offset: 296)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !695, file: !47, line: 256, baseType: !45, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !695, file: !47, line: 257, baseType: !45, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !46, file: !47, line: 387, baseType: !714, size: 512)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !47, line: 273, size: 512, elements: !715)
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723, !724, !725}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !714, file: !47, line: 274, baseType: !45, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !714, file: !47, line: 274, baseType: !54, size: 8, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !714, file: !47, line: 274, baseType: !54, size: 8, offset: 72)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !714, file: !47, line: 274, baseType: !59, size: 16, offset: 80)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !714, file: !47, line: 274, baseType: !54, size: 8, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !714, file: !47, line: 274, baseType: !101, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !714, file: !47, line: 275, baseType: !28, size: 32, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !714, file: !47, line: 276, baseType: !393, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !714, file: !47, line: 277, baseType: !30, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !47, line: 278, baseType: !498, size: 128, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !46, file: !47, line: 388, baseType: !727, size: 512)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !47, line: 281, size: 512, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !741, !742, !743, !749, !750}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !727, file: !47, line: 282, baseType: !45, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !727, file: !47, line: 282, baseType: !54, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !727, file: !47, line: 282, baseType: !54, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !727, file: !47, line: 282, baseType: !59, size: 16, offset: 80)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !47, line: 282, baseType: !54, size: 8, offset: 96)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !727, file: !47, line: 282, baseType: !54, size: 8, offset: 104)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !727, file: !47, line: 283, baseType: !54, size: 8, offset: 112)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !727, file: !47, line: 284, baseType: !737, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !27, line: 1084, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!26, !28, !487, !28, !20, !30, !30}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !727, file: !47, line: 285, baseType: !101, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !727, file: !47, line: 286, baseType: !30, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !727, file: !47, line: 287, baseType: !744, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !27, line: 1102, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!26, !397, !28, !30, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !727, file: !47, line: 288, baseType: !45, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !727, file: !47, line: 289, baseType: !45, size: 64, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !46, file: !47, line: 389, baseType: !752, size: 512)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !47, line: 307, size: 512, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !752, file: !47, line: 308, baseType: !45, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !752, file: !47, line: 308, baseType: !54, size: 8, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !752, file: !47, line: 308, baseType: !54, size: 8, offset: 72)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !752, file: !47, line: 308, baseType: !59, size: 16, offset: 80)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !47, line: 308, baseType: !54, size: 8, offset: 96)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !752, file: !47, line: 308, baseType: !54, size: 8, offset: 104)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !752, file: !47, line: 309, baseType: !54, size: 8, offset: 112)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !752, file: !47, line: 310, baseType: !54, size: 8, offset: 120)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !752, file: !47, line: 311, baseType: !30, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !752, file: !47, line: 312, baseType: !101, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !752, file: !47, line: 313, baseType: !133, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !752, file: !47, line: 314, baseType: !96, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !752, file: !47, line: 315, baseType: !96, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !752, file: !47, line: 316, baseType: !28, size: 32, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !46, file: !47, line: 390, baseType: !769, size: 448)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !47, line: 340, size: 448, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778, !779, !780}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !769, file: !47, line: 341, baseType: !45, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !769, file: !47, line: 341, baseType: !54, size: 8, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !769, file: !47, line: 341, baseType: !54, size: 8, offset: 72)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !769, file: !47, line: 341, baseType: !59, size: 16, offset: 80)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !47, line: 341, baseType: !54, size: 8, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !769, file: !47, line: 341, baseType: !101, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !769, file: !47, line: 342, baseType: !101, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !769, file: !47, line: 343, baseType: !30, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !769, file: !47, line: 344, baseType: !96, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !769, file: !47, line: 345, baseType: !28, size: 32, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !47, line: 391, baseType: !782, size: 256)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !47, line: 350, size: 256, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !794}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !782, file: !47, line: 351, baseType: !45, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !782, file: !47, line: 351, baseType: !54, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !47, line: 351, baseType: !54, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !782, file: !47, line: 351, baseType: !59, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !47, line: 351, baseType: !54, size: 8, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !782, file: !47, line: 351, baseType: !790, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !27, line: 1055, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !397, !30}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !782, file: !47, line: 352, baseType: !30, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !46, file: !47, line: 392, baseType: !796, size: 192)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !47, line: 357, size: 192, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !796, file: !47, line: 358, baseType: !45, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !796, file: !47, line: 358, baseType: !54, size: 8, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !796, file: !47, line: 358, baseType: !54, size: 8, offset: 72)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !796, file: !47, line: 358, baseType: !59, size: 16, offset: 80)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !47, line: 358, baseType: !54, size: 8, offset: 96)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !796, file: !47, line: 358, baseType: !45, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !46, file: !47, line: 399, baseType: !102, size: 384)
!805 = !{}
!806 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !42, file: !3, line: 32, type: !45)
!807 = !DILocation(line: 32, column: 58, scope: !42)
!808 = !DILocalVariable(name: "buffer", arg: 2, scope: !42, file: !3, line: 32, type: !30)
!809 = !DILocation(line: 32, column: 74, scope: !42)
!810 = !DILocalVariable(name: "status", scope: !42, file: !3, line: 34, type: !26)
!811 = !DILocation(line: 34, column: 14, scope: !42)
!812 = !DILocation(line: 51, column: 30, scope: !42)
!813 = !DILocation(line: 51, column: 40, scope: !42)
!814 = !DILocation(line: 51, column: 53, scope: !42)
!815 = !DILocation(line: 51, column: 2, scope: !42)
!816 = !DILocation(line: 55, column: 33, scope: !42)
!817 = !DILocation(line: 55, column: 53, scope: !42)
!818 = !DILocation(line: 55, column: 46, scope: !42)
!819 = !DILocation(line: 55, column: 11, scope: !42)
!820 = !DILocation(line: 55, column: 9, scope: !42)
!821 = !DILocation(line: 57, column: 30, scope: !42)
!822 = !DILocation(line: 57, column: 40, scope: !42)
!823 = !DILocation(line: 57, column: 53, scope: !42)
!824 = !DILocation(line: 57, column: 2, scope: !42)
!825 = !DILocation(line: 58, column: 2, scope: !42)
!826 = distinct !DISubprogram(name: "acpi_ex_write_gpio", scope: !3, file: !3, line: 78, type: !827, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!827 = !DISubroutineType(types: !828)
!828 = !{!26, !45, !45, !133}
!829 = !DILocalVariable(name: "source_desc", arg: 1, scope: !826, file: !3, line: 78, type: !45)
!830 = !DILocation(line: 78, column: 47, scope: !826)
!831 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !826, file: !3, line: 79, type: !45)
!832 = !DILocation(line: 79, column: 33, scope: !826)
!833 = !DILocalVariable(name: "return_buffer", arg: 3, scope: !826, file: !3, line: 80, type: !133)
!834 = !DILocation(line: 80, column: 34, scope: !826)
!835 = !DILocalVariable(name: "status", scope: !826, file: !3, line: 82, type: !26)
!836 = !DILocation(line: 82, column: 14, scope: !826)
!837 = !DILocalVariable(name: "buffer", scope: !826, file: !3, line: 83, type: !30)
!838 = !DILocation(line: 83, column: 8, scope: !826)
!839 = !DILocation(line: 95, column: 6, scope: !840)
!840 = distinct !DILexicalBlock(scope: !826, file: !3, line: 95, column: 6)
!841 = !DILocation(line: 95, column: 19, scope: !840)
!842 = !DILocation(line: 95, column: 26, scope: !840)
!843 = !DILocation(line: 95, column: 31, scope: !840)
!844 = !DILocation(line: 95, column: 6, scope: !826)
!845 = !DILocation(line: 96, column: 3, scope: !846)
!846 = distinct !DILexicalBlock(scope: !840, file: !3, line: 95, column: 53)
!847 = !DILocation(line: 107, column: 12, scope: !826)
!848 = !DILocation(line: 107, column: 25, scope: !826)
!849 = !DILocation(line: 107, column: 33, scope: !826)
!850 = !DILocation(line: 107, column: 11, scope: !826)
!851 = !DILocation(line: 107, column: 9, scope: !826)
!852 = !DILocation(line: 111, column: 30, scope: !826)
!853 = !DILocation(line: 111, column: 40, scope: !826)
!854 = !DILocation(line: 111, column: 53, scope: !826)
!855 = !DILocation(line: 111, column: 2, scope: !826)
!856 = !DILocation(line: 115, column: 33, scope: !826)
!857 = !DILocation(line: 115, column: 53, scope: !826)
!858 = !DILocation(line: 115, column: 46, scope: !826)
!859 = !DILocation(line: 115, column: 11, scope: !826)
!860 = !DILocation(line: 115, column: 9, scope: !826)
!861 = !DILocation(line: 116, column: 30, scope: !826)
!862 = !DILocation(line: 116, column: 40, scope: !826)
!863 = !DILocation(line: 116, column: 53, scope: !826)
!864 = !DILocation(line: 116, column: 2, scope: !826)
!865 = !DILocation(line: 117, column: 2, scope: !826)
!866 = !DILocation(line: 118, column: 1, scope: !826)
!867 = distinct !DISubprogram(name: "acpi_ex_read_serial_bus", scope: !3, file: !3, line: 135, type: !868, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!868 = !DISubroutineType(types: !869)
!869 = !{!26, !45, !133}
!870 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !867, file: !3, line: 135, type: !45)
!871 = !DILocation(line: 135, column: 52, scope: !867)
!872 = !DILocalVariable(name: "return_buffer", arg: 2, scope: !867, file: !3, line: 136, type: !133)
!873 = !DILocation(line: 136, column: 32, scope: !867)
!874 = !DILocalVariable(name: "status", scope: !867, file: !3, line: 138, type: !26)
!875 = !DILocation(line: 138, column: 14, scope: !867)
!876 = !DILocalVariable(name: "buffer_length", scope: !867, file: !3, line: 139, type: !28)
!877 = !DILocation(line: 139, column: 6, scope: !867)
!878 = !DILocalVariable(name: "buffer_desc", scope: !867, file: !3, line: 140, type: !45)
!879 = !DILocation(line: 140, column: 29, scope: !867)
!880 = !DILocalVariable(name: "function", scope: !867, file: !3, line: 141, type: !28)
!881 = !DILocation(line: 141, column: 6, scope: !867)
!882 = !DILocalVariable(name: "accessor_type", scope: !867, file: !3, line: 142, type: !59)
!883 = !DILocation(line: 142, column: 6, scope: !867)
!884 = !DILocation(line: 158, column: 10, scope: !867)
!885 = !DILocation(line: 158, column: 20, scope: !867)
!886 = !DILocation(line: 158, column: 26, scope: !867)
!887 = !DILocation(line: 158, column: 38, scope: !867)
!888 = !DILocation(line: 158, column: 45, scope: !867)
!889 = !DILocation(line: 158, column: 2, scope: !867)
!890 = !DILocation(line: 161, column: 17, scope: !891)
!891 = distinct !DILexicalBlock(scope: !867, file: !3, line: 158, column: 55)
!892 = !DILocation(line: 162, column: 27, scope: !891)
!893 = !DILocation(line: 162, column: 37, scope: !891)
!894 = !DILocation(line: 162, column: 43, scope: !891)
!895 = !DILocation(line: 162, column: 53, scope: !891)
!896 = !DILocation(line: 162, column: 24, scope: !891)
!897 = !DILocation(line: 162, column: 12, scope: !891)
!898 = !DILocation(line: 163, column: 3, scope: !891)
!899 = !DILocation(line: 167, column: 17, scope: !891)
!900 = !DILocation(line: 168, column: 12, scope: !891)
!901 = !DILocation(line: 169, column: 3, scope: !891)
!902 = !DILocation(line: 173, column: 19, scope: !891)
!903 = !DILocation(line: 173, column: 29, scope: !891)
!904 = !DILocation(line: 173, column: 35, scope: !891)
!905 = !DILocation(line: 173, column: 17, scope: !891)
!906 = !DILocation(line: 174, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !891, file: !3, line: 174, column: 7)
!908 = !DILocation(line: 174, column: 21, scope: !907)
!909 = !DILocation(line: 174, column: 7, scope: !891)
!910 = !DILocation(line: 175, column: 4, scope: !911)
!911 = distinct !DILexicalBlock(scope: !907, file: !3, line: 174, column: 60)
!912 = !DILocation(line: 178, column: 4, scope: !911)
!913 = !DILocation(line: 182, column: 42, scope: !891)
!914 = !DILocation(line: 182, column: 7, scope: !891)
!915 = !DILocation(line: 181, column: 10, scope: !891)
!916 = !DILocation(line: 184, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !891, file: !3, line: 184, column: 7)
!918 = !DILocation(line: 184, column: 7, scope: !891)
!919 = !DILocation(line: 185, column: 4, scope: !920)
!920 = distinct !DILexicalBlock(scope: !917, file: !3, line: 184, column: 29)
!921 = !DILocation(line: 189, column: 4, scope: !920)
!922 = !DILocation(line: 194, column: 17, scope: !891)
!923 = !DILocation(line: 195, column: 27, scope: !891)
!924 = !DILocation(line: 195, column: 41, scope: !891)
!925 = !DILocation(line: 195, column: 24, scope: !891)
!926 = !DILocation(line: 195, column: 12, scope: !891)
!927 = !DILocation(line: 196, column: 3, scope: !891)
!928 = !DILocation(line: 199, column: 3, scope: !891)
!929 = !DILocation(line: 204, column: 45, scope: !867)
!930 = !DILocation(line: 204, column: 16, scope: !867)
!931 = !DILocation(line: 204, column: 14, scope: !867)
!932 = !DILocation(line: 205, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !867, file: !3, line: 205, column: 6)
!934 = !DILocation(line: 205, column: 6, scope: !867)
!935 = !DILocation(line: 206, column: 3, scope: !936)
!936 = distinct !DILexicalBlock(scope: !933, file: !3, line: 205, column: 20)
!937 = !DILocation(line: 211, column: 30, scope: !867)
!938 = !DILocation(line: 211, column: 40, scope: !867)
!939 = !DILocation(line: 211, column: 53, scope: !867)
!940 = !DILocation(line: 211, column: 2, scope: !867)
!941 = !DILocation(line: 215, column: 33, scope: !867)
!942 = !DILocation(line: 216, column: 12, scope: !867)
!943 = !DILocation(line: 218, column: 22, scope: !867)
!944 = !DILocation(line: 215, column: 11, scope: !867)
!945 = !DILocation(line: 215, column: 9, scope: !867)
!946 = !DILocation(line: 219, column: 30, scope: !867)
!947 = !DILocation(line: 219, column: 40, scope: !867)
!948 = !DILocation(line: 219, column: 53, scope: !867)
!949 = !DILocation(line: 219, column: 2, scope: !867)
!950 = !DILocation(line: 221, column: 19, scope: !867)
!951 = !DILocation(line: 221, column: 3, scope: !867)
!952 = !DILocation(line: 221, column: 17, scope: !867)
!953 = !DILocation(line: 222, column: 2, scope: !867)
!954 = !DILocation(line: 223, column: 1, scope: !867)
!955 = distinct !DISubprogram(name: "acpi_ex_write_serial_bus", scope: !3, file: !3, line: 241, type: !827, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!956 = !DILocalVariable(name: "source_desc", arg: 1, scope: !955, file: !3, line: 241, type: !45)
!957 = !DILocation(line: 241, column: 53, scope: !955)
!958 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !955, file: !3, line: 242, type: !45)
!959 = !DILocation(line: 242, column: 32, scope: !955)
!960 = !DILocalVariable(name: "return_buffer", arg: 3, scope: !955, file: !3, line: 243, type: !133)
!961 = !DILocation(line: 243, column: 33, scope: !955)
!962 = !DILocalVariable(name: "status", scope: !955, file: !3, line: 245, type: !26)
!963 = !DILocation(line: 245, column: 14, scope: !955)
!964 = !DILocalVariable(name: "buffer_length", scope: !955, file: !3, line: 246, type: !28)
!965 = !DILocation(line: 246, column: 6, scope: !955)
!966 = !DILocalVariable(name: "data_length", scope: !955, file: !3, line: 247, type: !28)
!967 = !DILocation(line: 247, column: 6, scope: !955)
!968 = !DILocalVariable(name: "buffer", scope: !955, file: !3, line: 248, type: !30)
!969 = !DILocation(line: 248, column: 8, scope: !955)
!970 = !DILocalVariable(name: "buffer_desc", scope: !955, file: !3, line: 249, type: !45)
!971 = !DILocation(line: 249, column: 29, scope: !955)
!972 = !DILocalVariable(name: "function", scope: !955, file: !3, line: 250, type: !28)
!973 = !DILocation(line: 250, column: 6, scope: !955)
!974 = !DILocalVariable(name: "accessor_type", scope: !955, file: !3, line: 251, type: !59)
!975 = !DILocation(line: 251, column: 6, scope: !955)
!976 = !DILocation(line: 272, column: 6, scope: !977)
!977 = distinct !DILexicalBlock(scope: !955, file: !3, line: 272, column: 6)
!978 = !DILocation(line: 272, column: 19, scope: !977)
!979 = !DILocation(line: 272, column: 26, scope: !977)
!980 = !DILocation(line: 272, column: 31, scope: !977)
!981 = !DILocation(line: 272, column: 6, scope: !955)
!982 = !DILocation(line: 273, column: 3, scope: !983)
!983 = distinct !DILexicalBlock(scope: !977, file: !3, line: 272, column: 52)
!984 = !DILocation(line: 278, column: 3, scope: !983)
!985 = !DILocation(line: 281, column: 10, scope: !955)
!986 = !DILocation(line: 281, column: 20, scope: !955)
!987 = !DILocation(line: 281, column: 26, scope: !955)
!988 = !DILocation(line: 281, column: 38, scope: !955)
!989 = !DILocation(line: 281, column: 45, scope: !955)
!990 = !DILocation(line: 281, column: 2, scope: !955)
!991 = !DILocation(line: 284, column: 17, scope: !992)
!992 = distinct !DILexicalBlock(scope: !955, file: !3, line: 281, column: 55)
!993 = !DILocation(line: 285, column: 28, scope: !992)
!994 = !DILocation(line: 285, column: 38, scope: !992)
!995 = !DILocation(line: 285, column: 44, scope: !992)
!996 = !DILocation(line: 285, column: 54, scope: !992)
!997 = !DILocation(line: 285, column: 25, scope: !992)
!998 = !DILocation(line: 285, column: 12, scope: !992)
!999 = !DILocation(line: 286, column: 3, scope: !992)
!1000 = !DILocation(line: 290, column: 17, scope: !992)
!1001 = !DILocation(line: 291, column: 12, scope: !992)
!1002 = !DILocation(line: 292, column: 3, scope: !992)
!1003 = !DILocation(line: 296, column: 19, scope: !992)
!1004 = !DILocation(line: 296, column: 29, scope: !992)
!1005 = !DILocation(line: 296, column: 35, scope: !992)
!1006 = !DILocation(line: 296, column: 17, scope: !992)
!1007 = !DILocation(line: 298, column: 42, scope: !992)
!1008 = !DILocation(line: 298, column: 7, scope: !992)
!1009 = !DILocation(line: 297, column: 10, scope: !992)
!1010 = !DILocation(line: 300, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !992, file: !3, line: 300, column: 7)
!1012 = !DILocation(line: 300, column: 7, scope: !992)
!1013 = !DILocation(line: 301, column: 4, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 300, column: 29)
!1015 = !DILocation(line: 305, column: 4, scope: !1014)
!1016 = !DILocation(line: 310, column: 17, scope: !992)
!1017 = !DILocation(line: 311, column: 28, scope: !992)
!1018 = !DILocation(line: 311, column: 42, scope: !992)
!1019 = !DILocation(line: 311, column: 25, scope: !992)
!1020 = !DILocation(line: 311, column: 12, scope: !992)
!1021 = !DILocation(line: 312, column: 3, scope: !992)
!1022 = !DILocation(line: 315, column: 3, scope: !992)
!1023 = !DILocation(line: 320, column: 45, scope: !955)
!1024 = !DILocation(line: 320, column: 16, scope: !955)
!1025 = !DILocation(line: 320, column: 14, scope: !955)
!1026 = !DILocation(line: 321, column: 7, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !955, file: !3, line: 321, column: 6)
!1028 = !DILocation(line: 321, column: 6, scope: !955)
!1029 = !DILocation(line: 322, column: 3, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 321, column: 20)
!1031 = !DILocation(line: 327, column: 11, scope: !955)
!1032 = !DILocation(line: 327, column: 24, scope: !955)
!1033 = !DILocation(line: 327, column: 31, scope: !955)
!1034 = !DILocation(line: 327, column: 9, scope: !955)
!1035 = !DILocation(line: 328, column: 17, scope: !955)
!1036 = !DILocation(line: 328, column: 33, scope: !955)
!1037 = !DILocation(line: 328, column: 46, scope: !955)
!1038 = !DILocation(line: 328, column: 53, scope: !955)
!1039 = !DILocation(line: 328, column: 31, scope: !955)
!1040 = !DILocation(line: 329, column: 10, scope: !955)
!1041 = !DILocation(line: 329, column: 26, scope: !955)
!1042 = !DILocation(line: 329, column: 39, scope: !955)
!1043 = !DILocation(line: 329, column: 46, scope: !955)
!1044 = !DILocation(line: 328, column: 14, scope: !955)
!1045 = !DILocation(line: 330, column: 9, scope: !955)
!1046 = !DILocation(line: 330, column: 17, scope: !955)
!1047 = !DILocation(line: 330, column: 30, scope: !955)
!1048 = !DILocation(line: 330, column: 37, scope: !955)
!1049 = !DILocation(line: 330, column: 46, scope: !955)
!1050 = !DILocation(line: 330, column: 2, scope: !955)
!1051 = !DILocation(line: 334, column: 30, scope: !955)
!1052 = !DILocation(line: 334, column: 40, scope: !955)
!1053 = !DILocation(line: 334, column: 53, scope: !955)
!1054 = !DILocation(line: 334, column: 2, scope: !955)
!1055 = !DILocation(line: 340, column: 33, scope: !955)
!1056 = !DILocation(line: 340, column: 53, scope: !955)
!1057 = !DILocation(line: 340, column: 46, scope: !955)
!1058 = !DILocation(line: 340, column: 61, scope: !955)
!1059 = !DILocation(line: 340, column: 11, scope: !955)
!1060 = !DILocation(line: 340, column: 9, scope: !955)
!1061 = !DILocation(line: 341, column: 30, scope: !955)
!1062 = !DILocation(line: 341, column: 40, scope: !955)
!1063 = !DILocation(line: 341, column: 53, scope: !955)
!1064 = !DILocation(line: 341, column: 2, scope: !955)
!1065 = !DILocation(line: 343, column: 19, scope: !955)
!1066 = !DILocation(line: 343, column: 3, scope: !955)
!1067 = !DILocation(line: 343, column: 17, scope: !955)
!1068 = !DILocation(line: 344, column: 2, scope: !955)
!1069 = !DILocation(line: 345, column: 1, scope: !955)
