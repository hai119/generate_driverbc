; ModuleID = '../bcout/drivers/acpi/acpica/rslist.llvm.bc'
source_filename = "drivers/acpi/acpica/rslist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_rsconvert_info = type { i8, i8, i8, i8 }
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor_typed, [40 x i8] }
%struct.acpi_resource_vendor_typed = type { i16, i8, [16 x i8], [1 x i8] }
%union.aml_resource = type { i32, [52 x i8] }
%struct.aml_resource_common_serialbus = type <{ i8, i16, i8, i8, i8, i8, i16, i8, i16 }>
%struct.acpi_resource_common_serialbus = type <{ i8, i8, i8, i8, i8, i8, i16, i16, %struct.acpi_resource_source, i8* }>
%struct.acpi_resource_source = type <{ i8, i16, i8* }>
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*)* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }

@_acpi_module_name = internal constant [7 x i8] c"rslist\00", align 1, !dbg !0
@.str = private unnamed_addr constant [31 x i8] c"Misaligned resource pointer %p\00", align 1
@acpi_gbl_convert_resource_serial_bus_dispatch = external dso_local global [0 x %struct.acpi_rsconvert_info*], align 8
@acpi_gbl_get_resource_dispatch = external dso_local global [0 x %struct.acpi_rsconvert_info*], align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"Invalid/unsupported resource descriptor: Type 0x%2.2X\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Could not convert AML resource (Type 0x%X)\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Invalid descriptor type (0x%X) in resource list\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Invalid zero length descriptor in resource list\0A\00", align 1
@acpi_gbl_set_resource_dispatch = external dso_local global [0 x %struct.acpi_rsconvert_info*], align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"Could not convert resource (type 0x%X) to AML\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_convert_aml_to_resources(i8* %aml, i32 %length, i32 %offset, i8 zeroext %resource_index, i8** %context) #0 !dbg !730 {
entry:
  %retval = alloca i32, align 4
  %aml.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %resource_index.addr = alloca i8, align 1
  %context.addr = alloca i8**, align 8
  %resource_ptr = alloca %struct.acpi_resource**, align 8
  %resource = alloca %struct.acpi_resource*, align 8
  %aml_resource = alloca %union.aml_resource*, align 8
  %conversion_table = alloca %struct.acpi_rsconvert_info*, align 8
  %status = alloca i32, align 4
  store i8* %aml, i8** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml.addr, metadata !734, metadata !DIExpression()), !dbg !735
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !736, metadata !DIExpression()), !dbg !737
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !738, metadata !DIExpression()), !dbg !739
  store i8 %resource_index, i8* %resource_index.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %resource_index.addr, metadata !740, metadata !DIExpression()), !dbg !741
  store i8** %context, i8*** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %context.addr, metadata !742, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.declare(metadata %struct.acpi_resource*** %resource_ptr, metadata !744, metadata !DIExpression()), !dbg !745
  %0 = load i8**, i8*** %context.addr, align 8, !dbg !746
  %1 = bitcast i8** %0 to i8*, !dbg !746
  %2 = bitcast i8* %1 to %struct.acpi_resource**, !dbg !746
  store %struct.acpi_resource** %2, %struct.acpi_resource*** %resource_ptr, align 8, !dbg !745
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %resource, metadata !747, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.declare(metadata %union.aml_resource** %aml_resource, metadata !749, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.declare(metadata %struct.acpi_rsconvert_info** %conversion_table, metadata !751, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.declare(metadata i32* %status, metadata !761, metadata !DIExpression()), !dbg !762
  %3 = load %struct.acpi_resource**, %struct.acpi_resource*** %resource_ptr, align 8, !dbg !763
  %4 = load %struct.acpi_resource*, %struct.acpi_resource** %3, align 8, !dbg !764
  store %struct.acpi_resource* %4, %struct.acpi_resource** %resource, align 8, !dbg !765
  %5 = load %struct.acpi_resource*, %struct.acpi_resource** %resource, align 8, !dbg !766
  %6 = ptrtoint %struct.acpi_resource* %5 to i64, !dbg !766
  %and = and i64 %6, 7, !dbg !766
  %tobool = icmp ne i64 %and, 0, !dbg !766
  br i1 %tobool, label %if.then, label %if.end, !dbg !768

if.then:                                          ; preds = %entry
  %7 = load %struct.acpi_resource*, %struct.acpi_resource** %resource, align 8, !dbg !769
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.acpi_resource* %7) #3, !dbg !769
  br label %if.end, !dbg !771

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** %aml.addr, align 8, !dbg !772
  %9 = bitcast i8* %8 to %union.aml_resource*, !dbg !772
  store %union.aml_resource* %9, %union.aml_resource** %aml_resource, align 8, !dbg !773
  %10 = load i8*, i8** %aml.addr, align 8, !dbg !774
  %call = call zeroext i8 @acpi_ut_get_resource_type(i8* %10) #3, !dbg !776
  %conv = zext i8 %call to i32, !dbg !776
  %cmp = icmp eq i32 %conv, 142, !dbg !777
  br i1 %cmp, label %if.then2, label %if.else10, !dbg !778

if.then2:                                         ; preds = %if.end
  %11 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !779
  %common_serial_bus = bitcast %union.aml_resource* %11 to %struct.aml_resource_common_serialbus*, !dbg !782
  %type = getelementptr inbounds %struct.aml_resource_common_serialbus, %struct.aml_resource_common_serialbus* %common_serial_bus, i32 0, i32 4, !dbg !783
  %12 = load i8, i8* %type, align 1, !dbg !783
  %conv3 = zext i8 %12 to i32, !dbg !779
  %cmp4 = icmp sgt i32 %conv3, 3, !dbg !784
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !785

if.then6:                                         ; preds = %if.then2
  store %struct.acpi_rsconvert_info* null, %struct.acpi_rsconvert_info** %conversion_table, align 8, !dbg !786
  br label %if.end9, !dbg !788

if.else:                                          ; preds = %if.then2
  %13 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !789
  %common_serial_bus7 = bitcast %union.aml_resource* %13 to %struct.aml_resource_common_serialbus*, !dbg !791
  %type8 = getelementptr inbounds %struct.aml_resource_common_serialbus, %struct.aml_resource_common_serialbus* %common_serial_bus7, i32 0, i32 4, !dbg !792
  %14 = load i8, i8* %type8, align 1, !dbg !792
  %idxprom = zext i8 %14 to i64, !dbg !793
  %arrayidx = getelementptr [0 x %struct.acpi_rsconvert_info*], [0 x %struct.acpi_rsconvert_info*]* @acpi_gbl_convert_resource_serial_bus_dispatch, i64 0, i64 %idxprom, !dbg !793
  %15 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %arrayidx, align 8, !dbg !793
  store %struct.acpi_rsconvert_info* %15, %struct.acpi_rsconvert_info** %conversion_table, align 8, !dbg !794
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  br label %if.end13, !dbg !795

if.else10:                                        ; preds = %if.end
  %16 = load i8, i8* %resource_index.addr, align 1, !dbg !796
  %idxprom11 = zext i8 %16 to i64, !dbg !798
  %arrayidx12 = getelementptr [0 x %struct.acpi_rsconvert_info*], [0 x %struct.acpi_rsconvert_info*]* @acpi_gbl_get_resource_dispatch, i64 0, i64 %idxprom11, !dbg !798
  %17 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %arrayidx12, align 8, !dbg !798
  store %struct.acpi_rsconvert_info* %17, %struct.acpi_rsconvert_info** %conversion_table, align 8, !dbg !799
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.end9
  %18 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %conversion_table, align 8, !dbg !800
  %tobool14 = icmp ne %struct.acpi_rsconvert_info* %18, null, !dbg !800
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !802

if.then15:                                        ; preds = %if.end13
  %19 = load i8, i8* %resource_index.addr, align 1, !dbg !803
  %conv16 = zext i8 %19 to i32, !dbg !803
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 74, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %conv16) #3, !dbg !803
  store i32 12311, i32* %retval, align 4, !dbg !805
  br label %return, !dbg !805

if.end17:                                         ; preds = %if.end13
  %20 = load %struct.acpi_resource*, %struct.acpi_resource** %resource, align 8, !dbg !806
  %21 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !807
  %22 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %conversion_table, align 8, !dbg !808
  %call18 = call i32 @acpi_rs_convert_aml_to_resource(%struct.acpi_resource* %20, %union.aml_resource* %21, %struct.acpi_rsconvert_info* %22) #3, !dbg !809
  store i32 %call18, i32* %status, align 4, !dbg !810
  %23 = load i32, i32* %status, align 4, !dbg !811
  %tobool19 = icmp ne i32 %23, 0, !dbg !811
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !813

if.then20:                                        ; preds = %if.end17
  %24 = load i32, i32* %status, align 4, !dbg !814
  %25 = load i8*, i8** %aml.addr, align 8, !dbg !814
  %26 = load i8, i8* %25, align 1, !dbg !814
  %conv21 = zext i8 %26 to i32, !dbg !814
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 86, i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %conv21) #3, !dbg !814
  %27 = load i32, i32* %status, align 4, !dbg !816
  store i32 %27, i32* %retval, align 4, !dbg !816
  br label %return, !dbg !816

if.end22:                                         ; preds = %if.end17
  %28 = load %struct.acpi_resource*, %struct.acpi_resource** %resource, align 8, !dbg !817
  %29 = bitcast %struct.acpi_resource* %28 to i8*, !dbg !817
  %30 = load %struct.acpi_resource*, %struct.acpi_resource** %resource, align 8, !dbg !817
  %length23 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %30, i32 0, i32 1, !dbg !817
  %31 = load i32, i32* %length23, align 1, !dbg !817
  %conv24 = zext i32 %31 to i64, !dbg !817
  %add.ptr = getelementptr i8, i8* %29, i64 %conv24, !dbg !817
  %32 = bitcast i8* %add.ptr to %struct.acpi_resource*, !dbg !817
  %33 = load %struct.acpi_resource**, %struct.acpi_resource*** %resource_ptr, align 8, !dbg !818
  store %struct.acpi_resource* %32, %struct.acpi_resource** %33, align 8, !dbg !819
  store i32 0, i32* %retval, align 4, !dbg !820
  br label %return, !dbg !820

return:                                           ; preds = %if.end22, %if.then20, %if.then15
  %34 = load i32, i32* %retval, align 4, !dbg !821
  ret i32 %34, !dbg !821
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_get_resource_type(i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_convert_aml_to_resource(%struct.acpi_resource*, %union.aml_resource*, %struct.acpi_rsconvert_info*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_convert_resources_to_aml(%struct.acpi_resource* %resource, i64 %aml_size_needed, i8* %output_buffer) #0 !dbg !822 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca %struct.acpi_resource*, align 8
  %aml_size_needed.addr = alloca i64, align 8
  %output_buffer.addr = alloca i8*, align 8
  %aml = alloca i8*, align 8
  %end_aml = alloca i8*, align 8
  %conversion_table = alloca %struct.acpi_rsconvert_info*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_resource* %resource, %struct.acpi_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %resource.addr, metadata !825, metadata !DIExpression()), !dbg !826
  store i64 %aml_size_needed, i64* %aml_size_needed.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %aml_size_needed.addr, metadata !827, metadata !DIExpression()), !dbg !828
  store i8* %output_buffer, i8** %output_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %output_buffer.addr, metadata !829, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.declare(metadata i8** %aml, metadata !831, metadata !DIExpression()), !dbg !832
  %0 = load i8*, i8** %output_buffer.addr, align 8, !dbg !833
  store i8* %0, i8** %aml, align 8, !dbg !832
  call void @llvm.dbg.declare(metadata i8** %end_aml, metadata !834, metadata !DIExpression()), !dbg !835
  %1 = load i8*, i8** %output_buffer.addr, align 8, !dbg !836
  %2 = load i64, i64* %aml_size_needed.addr, align 8, !dbg !837
  %add.ptr = getelementptr i8, i8* %1, i64 %2, !dbg !838
  store i8* %add.ptr, i8** %end_aml, align 8, !dbg !835
  call void @llvm.dbg.declare(metadata %struct.acpi_rsconvert_info** %conversion_table, metadata !839, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.declare(metadata i32* %status, metadata !841, metadata !DIExpression()), !dbg !842
  br label %while.cond, !dbg !843

while.cond:                                       ; preds = %if.end37, %entry
  %3 = load i8*, i8** %aml, align 8, !dbg !844
  %4 = load i8*, i8** %end_aml, align 8, !dbg !845
  %cmp = icmp ult i8* %3, %4, !dbg !846
  br i1 %cmp, label %while.body, label %while.end, !dbg !843

while.body:                                       ; preds = %while.cond
  %5 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !847
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %5, i32 0, i32 0, !dbg !850
  %6 = load i32, i32* %type, align 1, !dbg !850
  %cmp1 = icmp ugt i32 %6, 24, !dbg !851
  br i1 %cmp1, label %if.then, label %if.end, !dbg !852

if.then:                                          ; preds = %while.body
  %7 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !853
  %type2 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %7, i32 0, i32 0, !dbg !853
  %8 = load i32, i32* %type2, align 1, !dbg !853
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 140, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %8) #3, !dbg !853
  store i32 4100, i32* %retval, align 4, !dbg !855
  br label %return, !dbg !855

if.end:                                           ; preds = %while.body
  %9 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !856
  %length = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %9, i32 0, i32 1, !dbg !858
  %10 = load i32, i32* %length, align 1, !dbg !858
  %tobool = icmp ne i32 %10, 0, !dbg !856
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !859

if.then3:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 149, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0)) #3, !dbg !860
  store i32 12319, i32* %retval, align 4, !dbg !862
  br label %return, !dbg !862

if.end4:                                          ; preds = %if.end
  %11 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !863
  %type5 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %11, i32 0, i32 0, !dbg !865
  %12 = load i32, i32* %type5, align 1, !dbg !865
  %cmp6 = icmp eq i32 %12, 19, !dbg !866
  br i1 %cmp6, label %if.then7, label %if.else16, !dbg !867

if.then7:                                         ; preds = %if.end4
  %13 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !868
  %data = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %13, i32 0, i32 2, !dbg !871
  %common_serial_bus = bitcast %union.acpi_resource_data* %data to %struct.acpi_resource_common_serialbus*, !dbg !872
  %type8 = getelementptr inbounds %struct.acpi_resource_common_serialbus, %struct.acpi_resource_common_serialbus* %common_serial_bus, i32 0, i32 1, !dbg !873
  %14 = load i8, i8* %type8, align 1, !dbg !873
  %conv = zext i8 %14 to i32, !dbg !868
  %cmp9 = icmp sgt i32 %conv, 3, !dbg !874
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !875

if.then11:                                        ; preds = %if.then7
  store %struct.acpi_rsconvert_info* null, %struct.acpi_rsconvert_info** %conversion_table, align 8, !dbg !876
  br label %if.end15, !dbg !878

if.else:                                          ; preds = %if.then7
  %15 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !879
  %data12 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %15, i32 0, i32 2, !dbg !881
  %common_serial_bus13 = bitcast %union.acpi_resource_data* %data12 to %struct.acpi_resource_common_serialbus*, !dbg !882
  %type14 = getelementptr inbounds %struct.acpi_resource_common_serialbus, %struct.acpi_resource_common_serialbus* %common_serial_bus13, i32 0, i32 1, !dbg !883
  %16 = load i8, i8* %type14, align 1, !dbg !883
  %idxprom = zext i8 %16 to i64, !dbg !884
  %arrayidx = getelementptr [0 x %struct.acpi_rsconvert_info*], [0 x %struct.acpi_rsconvert_info*]* @acpi_gbl_convert_resource_serial_bus_dispatch, i64 0, i64 %idxprom, !dbg !884
  %17 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %arrayidx, align 8, !dbg !884
  store %struct.acpi_rsconvert_info* %17, %struct.acpi_rsconvert_info** %conversion_table, align 8, !dbg !885
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  br label %if.end20, !dbg !886

if.else16:                                        ; preds = %if.end4
  %18 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !887
  %type17 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %18, i32 0, i32 0, !dbg !889
  %19 = load i32, i32* %type17, align 1, !dbg !889
  %idxprom18 = zext i32 %19 to i64, !dbg !890
  %arrayidx19 = getelementptr [0 x %struct.acpi_rsconvert_info*], [0 x %struct.acpi_rsconvert_info*]* @acpi_gbl_set_resource_dispatch, i64 0, i64 %idxprom18, !dbg !890
  %20 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %arrayidx19, align 8, !dbg !890
  store %struct.acpi_rsconvert_info* %20, %struct.acpi_rsconvert_info** %conversion_table, align 8, !dbg !891
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.end15
  %21 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %conversion_table, align 8, !dbg !892
  %tobool21 = icmp ne %struct.acpi_rsconvert_info* %21, null, !dbg !892
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !894

if.then22:                                        ; preds = %if.end20
  %22 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !895
  %type23 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %22, i32 0, i32 0, !dbg !895
  %23 = load i32, i32* %type23, align 1, !dbg !895
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 173, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %23) #3, !dbg !895
  store i32 12311, i32* %retval, align 4, !dbg !897
  br label %return, !dbg !897

if.end24:                                         ; preds = %if.end20
  %24 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !898
  %25 = load i8*, i8** %aml, align 8, !dbg !899
  %26 = bitcast i8* %25 to %union.aml_resource*, !dbg !899
  %27 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %conversion_table, align 8, !dbg !900
  %call = call i32 @acpi_rs_convert_resource_to_aml(%struct.acpi_resource* %24, %union.aml_resource* %26, %struct.acpi_rsconvert_info* %27) #3, !dbg !901
  store i32 %call, i32* %status, align 4, !dbg !902
  %28 = load i32, i32* %status, align 4, !dbg !903
  %tobool25 = icmp ne i32 %28, 0, !dbg !903
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !905

if.then26:                                        ; preds = %if.end24
  %29 = load i32, i32* %status, align 4, !dbg !906
  %30 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !906
  %type27 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %30, i32 0, i32 0, !dbg !906
  %31 = load i32, i32* %type27, align 1, !dbg !906
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 185, i32 %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %31) #3, !dbg !906
  %32 = load i32, i32* %status, align 4, !dbg !908
  store i32 %32, i32* %retval, align 4, !dbg !908
  br label %return, !dbg !908

if.end28:                                         ; preds = %if.end24
  %33 = load i8*, i8** %aml, align 8, !dbg !909
  %34 = bitcast i8* %33 to %union.aml_resource*, !dbg !909
  %35 = bitcast %union.aml_resource* %34 to i8*, !dbg !909
  %call29 = call i32 @acpi_ut_validate_resource(%struct.acpi_walk_state* null, i8* %35, i8* null) #3, !dbg !910
  store i32 %call29, i32* %status, align 4, !dbg !911
  %36 = load i32, i32* %status, align 4, !dbg !912
  %tobool30 = icmp ne i32 %36, 0, !dbg !912
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !914

if.then31:                                        ; preds = %if.end28
  %37 = load i32, i32* %status, align 4, !dbg !915
  store i32 %37, i32* %retval, align 4, !dbg !915
  br label %return, !dbg !915

if.end32:                                         ; preds = %if.end28
  %38 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !917
  %type33 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %38, i32 0, i32 0, !dbg !919
  %39 = load i32, i32* %type33, align 1, !dbg !919
  %cmp34 = icmp eq i32 %39, 7, !dbg !920
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !921

if.then36:                                        ; preds = %if.end32
  store i32 0, i32* %retval, align 4, !dbg !922
  br label %return, !dbg !922

if.end37:                                         ; preds = %if.end32
  %40 = load i8*, i8** %aml, align 8, !dbg !924
  %call38 = call i32 @acpi_ut_get_descriptor_length(i8* %40) #3, !dbg !925
  %41 = load i8*, i8** %aml, align 8, !dbg !926
  %idx.ext = zext i32 %call38 to i64, !dbg !926
  %add.ptr39 = getelementptr i8, i8* %41, i64 %idx.ext, !dbg !926
  store i8* %add.ptr39, i8** %aml, align 8, !dbg !926
  %42 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !927
  %43 = bitcast %struct.acpi_resource* %42 to i8*, !dbg !927
  %44 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !927
  %length40 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %44, i32 0, i32 1, !dbg !927
  %45 = load i32, i32* %length40, align 1, !dbg !927
  %conv41 = zext i32 %45 to i64, !dbg !927
  %add.ptr42 = getelementptr i8, i8* %43, i64 %conv41, !dbg !927
  %46 = bitcast i8* %add.ptr42 to %struct.acpi_resource*, !dbg !927
  store %struct.acpi_resource* %46, %struct.acpi_resource** %resource.addr, align 8, !dbg !928
  br label %while.cond, !dbg !843, !llvm.loop !929

while.end:                                        ; preds = %while.cond
  store i32 12316, i32* %retval, align 4, !dbg !931
  br label %return, !dbg !931

return:                                           ; preds = %while.end, %if.then36, %if.then31, %if.then26, %if.then22, %if.then3, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !932
  ret i32 %47, !dbg !932
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_convert_resource_to_aml(%struct.acpi_resource*, %union.aml_resource*, %struct.acpi_rsconvert_info*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_validate_resource(%struct.acpi_walk_state*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_get_descriptor_length(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!725, !726, !727, !728}
!llvm.ident = !{!729}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 13, type: !721, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !720, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/rslist.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !390, !391, !393, !719, !7, !247}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !9, line: 651, size: 544, elements: !10)
!9 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/lizy2001/genbc/linux")
!10 = !{!11, !17, !18}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !8, file: !9, line: 652, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !13, line: 21, baseType: !14)
!13 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !15, line: 27, baseType: !16)
!15 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !8, file: !9, line: 653, baseType: !12, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !8, file: !9, line: 654, baseType: !19, size: 480, offset: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !9, line: 614, size: 480, elements: !20)
!20 = !{!21, !37, !45, !51, !62, !67, !73, !78, !88, !92, !100, !108, !114, !156, !174, !195, !207, !219, !227, !248, !264, !284, !306, !319, !331, !344, !358, !369, !381}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !19, file: !9, line: 615, baseType: !22, size: 56)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !9, line: 138, size: 56, elements: !23)
!23 = !{!24, !28, !29, !30, !31, !32, !33}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !22, file: !9, line: 139, baseType: !25, size: 8)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !13, line: 17, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !15, line: 21, baseType: !27)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !22, file: !9, line: 140, baseType: !25, size: 8, offset: 8)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !22, file: !9, line: 141, baseType: !25, size: 8, offset: 16)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !22, file: !9, line: 142, baseType: !25, size: 8, offset: 24)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !22, file: !9, line: 143, baseType: !25, size: 8, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !22, file: !9, line: 144, baseType: !25, size: 8, offset: 40)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !22, file: !9, line: 145, baseType: !34, size: 8, offset: 48)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 1)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !19, file: !9, line: 616, baseType: !38, size: 40)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !9, line: 148, size: 40, elements: !39)
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !9, line: 149, baseType: !25, size: 8)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !38, file: !9, line: 150, baseType: !25, size: 8, offset: 8)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !38, file: !9, line: 151, baseType: !25, size: 8, offset: 16)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !38, file: !9, line: 152, baseType: !25, size: 8, offset: 24)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !38, file: !9, line: 153, baseType: !34, size: 8, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !19, file: !9, line: 617, baseType: !46, size: 24)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !9, line: 156, size: 24, elements: !47)
!47 = !{!48, !49, !50}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !46, file: !9, line: 157, baseType: !25, size: 8)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !46, file: !9, line: 158, baseType: !25, size: 8, offset: 8)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !46, file: !9, line: 159, baseType: !25, size: 8, offset: 16)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !19, file: !9, line: 618, baseType: !52, size: 56)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !9, line: 167, size: 56, elements: !53)
!53 = !{!54, !55, !56, !57, !61}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !52, file: !9, line: 168, baseType: !25, size: 8)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !52, file: !9, line: 169, baseType: !25, size: 8, offset: 8)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !52, file: !9, line: 170, baseType: !25, size: 8, offset: 16)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !52, file: !9, line: 171, baseType: !58, size: 16, offset: 24)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !13, line: 19, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !15, line: 24, baseType: !60)
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !52, file: !9, line: 172, baseType: !58, size: 16, offset: 40)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !19, file: !9, line: 619, baseType: !63, size: 24)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !9, line: 175, size: 24, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !63, file: !9, line: 176, baseType: !58, size: 16)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !63, file: !9, line: 177, baseType: !25, size: 8, offset: 16)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !19, file: !9, line: 620, baseType: !68, size: 40)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !9, line: 180, size: 40, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !68, file: !9, line: 181, baseType: !58, size: 16)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !68, file: !9, line: 182, baseType: !58, size: 16, offset: 16)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !68, file: !9, line: 183, baseType: !25, size: 8, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !19, file: !9, line: 621, baseType: !74, size: 24)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !9, line: 195, size: 24, elements: !75)
!75 = !{!76, !77}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !74, file: !9, line: 196, baseType: !58, size: 16)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !74, file: !9, line: 197, baseType: !34, size: 8, offset: 16)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !19, file: !9, line: 622, baseType: !79, size: 160)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !9, line: 202, size: 160, elements: !80)
!80 = !{!81, !82, !83, !87}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !79, file: !9, line: 203, baseType: !58, size: 16)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !79, file: !9, line: 204, baseType: !25, size: 8, offset: 16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !79, file: !9, line: 205, baseType: !84, size: 128, offset: 24)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 128, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 16)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !79, file: !9, line: 206, baseType: !34, size: 8, offset: 152)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !19, file: !9, line: 623, baseType: !89, size: 8)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !9, line: 209, size: 8, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !89, file: !9, line: 210, baseType: !25, size: 8)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !19, file: !9, line: 624, baseType: !93, size: 72)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !9, line: 213, size: 72, elements: !94)
!94 = !{!95, !96, !97, !98, !99}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !93, file: !9, line: 214, baseType: !25, size: 8)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !93, file: !9, line: 215, baseType: !58, size: 16, offset: 8)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !93, file: !9, line: 216, baseType: !58, size: 16, offset: 24)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !93, file: !9, line: 217, baseType: !58, size: 16, offset: 40)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !93, file: !9, line: 218, baseType: !58, size: 16, offset: 56)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !19, file: !9, line: 625, baseType: !101, size: 136)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !9, line: 221, size: 136, elements: !102)
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !101, file: !9, line: 222, baseType: !25, size: 8)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !101, file: !9, line: 223, baseType: !12, size: 32, offset: 8)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !101, file: !9, line: 224, baseType: !12, size: 32, offset: 40)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !101, file: !9, line: 225, baseType: !12, size: 32, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !101, file: !9, line: 226, baseType: !12, size: 32, offset: 104)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !19, file: !9, line: 626, baseType: !109, size: 72)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !9, line: 229, size: 72, elements: !110)
!110 = !{!111, !112, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !109, file: !9, line: 230, baseType: !25, size: 8)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !109, file: !9, line: 231, baseType: !12, size: 32, offset: 8)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !109, file: !9, line: 232, baseType: !12, size: 32, offset: 40)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !19, file: !9, line: 627, baseType: !115, size: 240)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !9, line: 306, size: 240, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !140, !148}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !115, file: !9, line: 307, baseType: !25, size: 8)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !115, file: !9, line: 307, baseType: !25, size: 8, offset: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !115, file: !9, line: 307, baseType: !25, size: 8, offset: 16)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !115, file: !9, line: 307, baseType: !25, size: 8, offset: 24)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !115, file: !9, line: 307, baseType: !25, size: 8, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !115, file: !9, line: 307, baseType: !123, size: 32, offset: 40)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !9, line: 249, size: 32, elements: !124)
!124 = !{!125, !132, !139}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !123, file: !9, line: 250, baseType: !126, size: 32)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !9, line: 235, size: 32, elements: !127)
!127 = !{!128, !129, !130, !131}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !126, file: !9, line: 236, baseType: !25, size: 8)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !126, file: !9, line: 237, baseType: !25, size: 8, offset: 8)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !126, file: !9, line: 238, baseType: !25, size: 8, offset: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !126, file: !9, line: 239, baseType: !25, size: 8, offset: 24)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !123, file: !9, line: 251, baseType: !133, size: 32)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !9, line: 242, size: 32, elements: !134)
!134 = !{!135, !136, !137, !138}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !133, file: !9, line: 243, baseType: !25, size: 8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !133, file: !9, line: 244, baseType: !25, size: 8, offset: 8)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !133, file: !9, line: 245, baseType: !25, size: 8, offset: 16)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !133, file: !9, line: 246, baseType: !25, size: 8, offset: 24)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !123, file: !9, line: 255, baseType: !25, size: 8)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !115, file: !9, line: 307, baseType: !141, size: 80, offset: 72)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !9, line: 279, size: 80, elements: !142)
!142 = !{!143, !144, !145, !146, !147}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !141, file: !9, line: 280, baseType: !58, size: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !141, file: !9, line: 281, baseType: !58, size: 16, offset: 16)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !141, file: !9, line: 282, baseType: !58, size: 16, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !141, file: !9, line: 283, baseType: !58, size: 16, offset: 48)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !141, file: !9, line: 284, baseType: !58, size: 16, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !115, file: !9, line: 308, baseType: !149, size: 88, offset: 152)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !9, line: 263, size: 88, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !149, file: !9, line: 264, baseType: !25, size: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !149, file: !9, line: 265, baseType: !58, size: 16, offset: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !149, file: !9, line: 266, baseType: !154, size: 64, offset: 24)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !19, file: !9, line: 628, baseType: !157, size: 320)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !9, line: 311, size: 320, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !173}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !157, file: !9, line: 312, baseType: !25, size: 8)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !157, file: !9, line: 312, baseType: !25, size: 8, offset: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !157, file: !9, line: 312, baseType: !25, size: 8, offset: 16)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !157, file: !9, line: 312, baseType: !25, size: 8, offset: 24)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !157, file: !9, line: 312, baseType: !25, size: 8, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !157, file: !9, line: 312, baseType: !123, size: 32, offset: 40)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !157, file: !9, line: 312, baseType: !166, size: 160, offset: 72)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !9, line: 287, size: 160, elements: !167)
!167 = !{!168, !169, !170, !171, !172}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !166, file: !9, line: 288, baseType: !12, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !166, file: !9, line: 289, baseType: !12, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !166, file: !9, line: 290, baseType: !12, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !166, file: !9, line: 291, baseType: !12, size: 32, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !166, file: !9, line: 292, baseType: !12, size: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !157, file: !9, line: 313, baseType: !149, size: 88, offset: 232)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !19, file: !9, line: 629, baseType: !175, size: 480)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !9, line: 316, size: 480, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !194}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !175, file: !9, line: 317, baseType: !25, size: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !175, file: !9, line: 317, baseType: !25, size: 8, offset: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !175, file: !9, line: 317, baseType: !25, size: 8, offset: 16)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !175, file: !9, line: 317, baseType: !25, size: 8, offset: 24)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !175, file: !9, line: 317, baseType: !25, size: 8, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !175, file: !9, line: 317, baseType: !123, size: 32, offset: 40)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !175, file: !9, line: 317, baseType: !184, size: 320, offset: 72)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !9, line: 295, size: 320, elements: !185)
!185 = !{!186, !190, !191, !192, !193}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !184, file: !9, line: 296, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !13, line: 23, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !15, line: 31, baseType: !189)
!189 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !184, file: !9, line: 297, baseType: !187, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !184, file: !9, line: 298, baseType: !187, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !184, file: !9, line: 299, baseType: !187, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !184, file: !9, line: 300, baseType: !187, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !175, file: !9, line: 318, baseType: !149, size: 88, offset: 392)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !19, file: !9, line: 630, baseType: !196, size: 464)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !9, line: 321, size: 464, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !196, file: !9, line: 322, baseType: !25, size: 8)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !196, file: !9, line: 322, baseType: !25, size: 8, offset: 8)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !196, file: !9, line: 322, baseType: !25, size: 8, offset: 16)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !196, file: !9, line: 322, baseType: !25, size: 8, offset: 24)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !196, file: !9, line: 322, baseType: !25, size: 8, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !196, file: !9, line: 322, baseType: !123, size: 32, offset: 40)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !196, file: !9, line: 322, baseType: !25, size: 8, offset: 72)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !196, file: !9, line: 323, baseType: !184, size: 320, offset: 80)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !196, file: !9, line: 324, baseType: !187, size: 64, offset: 400)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !19, file: !9, line: 631, baseType: !208, size: 168)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !9, line: 327, size: 168, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !208, file: !9, line: 328, baseType: !25, size: 8)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !208, file: !9, line: 329, baseType: !25, size: 8, offset: 8)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !208, file: !9, line: 330, baseType: !25, size: 8, offset: 16)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !208, file: !9, line: 331, baseType: !25, size: 8, offset: 24)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !208, file: !9, line: 332, baseType: !25, size: 8, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !208, file: !9, line: 333, baseType: !25, size: 8, offset: 40)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !208, file: !9, line: 334, baseType: !149, size: 88, offset: 48)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !208, file: !9, line: 335, baseType: !218, size: 32, offset: 136)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !35)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !19, file: !9, line: 632, baseType: !220, size: 96)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !9, line: 338, size: 96, elements: !221)
!221 = !{!222, !223, !224, !225, !226}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !220, file: !9, line: 339, baseType: !25, size: 8)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !220, file: !9, line: 340, baseType: !25, size: 8, offset: 8)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !220, file: !9, line: 341, baseType: !25, size: 8, offset: 16)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !220, file: !9, line: 342, baseType: !25, size: 8, offset: 24)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !220, file: !9, line: 343, baseType: !187, size: 64, offset: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !19, file: !9, line: 633, baseType: !228, size: 352)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !9, line: 346, size: 352, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !246}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !228, file: !9, line: 347, baseType: !25, size: 8)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !228, file: !9, line: 348, baseType: !25, size: 8, offset: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !228, file: !9, line: 349, baseType: !25, size: 8, offset: 16)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !228, file: !9, line: 350, baseType: !25, size: 8, offset: 24)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !228, file: !9, line: 351, baseType: !25, size: 8, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !228, file: !9, line: 352, baseType: !25, size: 8, offset: 40)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !228, file: !9, line: 353, baseType: !25, size: 8, offset: 48)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !228, file: !9, line: 354, baseType: !25, size: 8, offset: 56)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !228, file: !9, line: 355, baseType: !25, size: 8, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !228, file: !9, line: 356, baseType: !58, size: 16, offset: 72)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !228, file: !9, line: 357, baseType: !58, size: 16, offset: 88)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !228, file: !9, line: 358, baseType: !58, size: 16, offset: 104)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !228, file: !9, line: 359, baseType: !58, size: 16, offset: 120)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !228, file: !9, line: 360, baseType: !149, size: 88, offset: 136)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !228, file: !9, line: 361, baseType: !245, size: 64, offset: 224)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !228, file: !9, line: 362, baseType: !247, size: 64, offset: 288)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !19, file: !9, line: 634, baseType: !249, size: 288)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !9, line: 412, size: 288, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !249, file: !9, line: 413, baseType: !25, size: 8)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !249, file: !9, line: 413, baseType: !25, size: 8, offset: 8)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !249, file: !9, line: 413, baseType: !25, size: 8, offset: 16)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !249, file: !9, line: 413, baseType: !25, size: 8, offset: 24)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !249, file: !9, line: 413, baseType: !25, size: 8, offset: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !249, file: !9, line: 413, baseType: !25, size: 8, offset: 40)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !249, file: !9, line: 413, baseType: !58, size: 16, offset: 48)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !249, file: !9, line: 413, baseType: !58, size: 16, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !249, file: !9, line: 413, baseType: !149, size: 88, offset: 80)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !249, file: !9, line: 413, baseType: !247, size: 64, offset: 168)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !249, file: !9, line: 413, baseType: !25, size: 8, offset: 232)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !249, file: !9, line: 414, baseType: !58, size: 16, offset: 240)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !249, file: !9, line: 415, baseType: !12, size: 32, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !19, file: !9, line: 635, baseType: !265, size: 320)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !9, line: 423, size: 320, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !265, file: !9, line: 424, baseType: !25, size: 8)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !265, file: !9, line: 424, baseType: !25, size: 8, offset: 8)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !265, file: !9, line: 424, baseType: !25, size: 8, offset: 16)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !265, file: !9, line: 424, baseType: !25, size: 8, offset: 24)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !265, file: !9, line: 424, baseType: !25, size: 8, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !265, file: !9, line: 424, baseType: !25, size: 8, offset: 40)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !265, file: !9, line: 424, baseType: !58, size: 16, offset: 48)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !265, file: !9, line: 424, baseType: !58, size: 16, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !265, file: !9, line: 424, baseType: !149, size: 88, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !265, file: !9, line: 424, baseType: !247, size: 64, offset: 168)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !265, file: !9, line: 424, baseType: !25, size: 8, offset: 232)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !265, file: !9, line: 425, baseType: !25, size: 8, offset: 240)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !265, file: !9, line: 426, baseType: !25, size: 8, offset: 248)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !265, file: !9, line: 427, baseType: !25, size: 8, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !265, file: !9, line: 428, baseType: !25, size: 8, offset: 264)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !265, file: !9, line: 429, baseType: !58, size: 16, offset: 272)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !265, file: !9, line: 430, baseType: !12, size: 32, offset: 288)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !19, file: !9, line: 636, baseType: !285, size: 344)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !9, line: 453, size: 344, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !285, file: !9, line: 454, baseType: !25, size: 8)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !285, file: !9, line: 454, baseType: !25, size: 8, offset: 8)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !285, file: !9, line: 454, baseType: !25, size: 8, offset: 16)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !285, file: !9, line: 454, baseType: !25, size: 8, offset: 24)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !285, file: !9, line: 454, baseType: !25, size: 8, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !285, file: !9, line: 454, baseType: !25, size: 8, offset: 40)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !285, file: !9, line: 454, baseType: !58, size: 16, offset: 48)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !285, file: !9, line: 454, baseType: !58, size: 16, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !285, file: !9, line: 454, baseType: !149, size: 88, offset: 80)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !285, file: !9, line: 454, baseType: !247, size: 64, offset: 168)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !285, file: !9, line: 454, baseType: !25, size: 8, offset: 232)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !285, file: !9, line: 455, baseType: !25, size: 8, offset: 240)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !285, file: !9, line: 456, baseType: !25, size: 8, offset: 248)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !285, file: !9, line: 457, baseType: !25, size: 8, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !285, file: !9, line: 458, baseType: !25, size: 8, offset: 264)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !285, file: !9, line: 459, baseType: !25, size: 8, offset: 272)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !285, file: !9, line: 460, baseType: !58, size: 16, offset: 280)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !285, file: !9, line: 461, baseType: !58, size: 16, offset: 296)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !285, file: !9, line: 462, baseType: !12, size: 32, offset: 312)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !19, file: !9, line: 637, baseType: !307, size: 232)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !9, line: 398, size: 232, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !307, file: !9, line: 399, baseType: !25, size: 8)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !307, file: !9, line: 399, baseType: !25, size: 8, offset: 8)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !307, file: !9, line: 399, baseType: !25, size: 8, offset: 16)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !307, file: !9, line: 399, baseType: !25, size: 8, offset: 24)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !307, file: !9, line: 399, baseType: !25, size: 8, offset: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !307, file: !9, line: 399, baseType: !25, size: 8, offset: 40)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !307, file: !9, line: 399, baseType: !58, size: 16, offset: 48)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !307, file: !9, line: 399, baseType: !58, size: 16, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !307, file: !9, line: 399, baseType: !149, size: 88, offset: 80)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !307, file: !9, line: 399, baseType: !247, size: 64, offset: 168)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !19, file: !9, line: 638, baseType: !320, size: 288)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !9, line: 508, size: 288, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !320, file: !9, line: 509, baseType: !25, size: 8)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !320, file: !9, line: 510, baseType: !25, size: 8, offset: 8)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !320, file: !9, line: 511, baseType: !25, size: 8, offset: 16)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !320, file: !9, line: 512, baseType: !58, size: 16, offset: 24)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !320, file: !9, line: 513, baseType: !58, size: 16, offset: 40)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !320, file: !9, line: 514, baseType: !58, size: 16, offset: 56)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !320, file: !9, line: 515, baseType: !149, size: 88, offset: 72)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !320, file: !9, line: 516, baseType: !245, size: 64, offset: 160)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !320, file: !9, line: 517, baseType: !247, size: 64, offset: 224)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !19, file: !9, line: 639, baseType: !332, size: 312)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !9, line: 520, size: 312, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !332, file: !9, line: 521, baseType: !25, size: 8)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !332, file: !9, line: 522, baseType: !25, size: 8, offset: 8)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !332, file: !9, line: 523, baseType: !25, size: 8, offset: 16)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !332, file: !9, line: 524, baseType: !25, size: 8, offset: 24)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !332, file: !9, line: 525, baseType: !12, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !332, file: !9, line: 526, baseType: !58, size: 16, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !332, file: !9, line: 527, baseType: !58, size: 16, offset: 80)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !332, file: !9, line: 528, baseType: !149, size: 88, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !332, file: !9, line: 529, baseType: !245, size: 64, offset: 184)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !332, file: !9, line: 530, baseType: !247, size: 64, offset: 248)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !19, file: !9, line: 640, baseType: !345, size: 256)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !9, line: 550, size: 256, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !357}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !345, file: !9, line: 551, baseType: !25, size: 8)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !345, file: !9, line: 552, baseType: !25, size: 8, offset: 8)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !345, file: !9, line: 553, baseType: !58, size: 16, offset: 16)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !345, file: !9, line: 554, baseType: !58, size: 16, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !345, file: !9, line: 555, baseType: !245, size: 64, offset: 48)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !345, file: !9, line: 556, baseType: !353, size: 80, offset: 112)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !9, line: 258, size: 80, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !353, file: !9, line: 259, baseType: !58, size: 16)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !353, file: !9, line: 260, baseType: !154, size: 64, offset: 16)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !345, file: !9, line: 557, baseType: !247, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !19, file: !9, line: 641, baseType: !359, size: 288)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !9, line: 560, size: 288, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366, !367, !368}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !359, file: !9, line: 561, baseType: !25, size: 8)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !359, file: !9, line: 562, baseType: !25, size: 8, offset: 8)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !359, file: !9, line: 563, baseType: !25, size: 8, offset: 16)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !359, file: !9, line: 564, baseType: !58, size: 16, offset: 24)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !359, file: !9, line: 565, baseType: !58, size: 16, offset: 40)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !359, file: !9, line: 566, baseType: !149, size: 88, offset: 56)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !359, file: !9, line: 567, baseType: !353, size: 80, offset: 144)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !359, file: !9, line: 568, baseType: !247, size: 64, offset: 224)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !19, file: !9, line: 642, baseType: !370, size: 312)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !9, line: 571, size: 312, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !380}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !370, file: !9, line: 572, baseType: !25, size: 8)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !370, file: !9, line: 573, baseType: !25, size: 8, offset: 8)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !370, file: !9, line: 574, baseType: !25, size: 8, offset: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !370, file: !9, line: 575, baseType: !25, size: 8, offset: 24)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !370, file: !9, line: 576, baseType: !12, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !370, file: !9, line: 577, baseType: !58, size: 16, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !370, file: !9, line: 578, baseType: !149, size: 88, offset: 80)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !370, file: !9, line: 579, baseType: !353, size: 80, offset: 168)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !370, file: !9, line: 580, baseType: !247, size: 64, offset: 248)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !19, file: !9, line: 646, baseType: !382, size: 72)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !9, line: 303, size: 72, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !389}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !382, file: !9, line: 304, baseType: !25, size: 8)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !382, file: !9, line: 304, baseType: !25, size: 8, offset: 8)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !382, file: !9, line: 304, baseType: !25, size: 8, offset: 16)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !382, file: !9, line: 304, baseType: !25, size: 8, offset: 24)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !382, file: !9, line: 304, baseType: !25, size: 8, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !382, file: !9, line: 304, baseType: !123, size: 32, offset: 40)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !392, line: 127, baseType: !187)
!392 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "aml_resource", file: !395, line: 478, size: 448, elements: !396)
!395 = !DIFile(filename: "drivers/acpi/acpica/amlresrc.h", directory: "/home/lizy2001/genbc/linux")
!396 = !{!397, !398, !402, !407, !413, !419, !424, !428, !437, !443, !450, !454, !459, !469, !479, !484, !494, !502, !515, !528, !541, !557, !565, !582, !596, !613, !630, !642, !656, !670, !681, !694, !708, !716, !717, !718}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !394, file: !395, line: 481, baseType: !25, size: 8)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "small_header", scope: !394, file: !395, line: 482, baseType: !399, size: 8)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_small_header", file: !395, line: 114, size: 8, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !399, file: !395, line: 115, baseType: !25, size: 8)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "large_header", scope: !394, file: !395, line: 483, baseType: !403, size: 24)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_large_header", file: !395, line: 174, size: 24, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !403, file: !395, line: 175, baseType: !25, size: 8)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !403, file: !395, line: 175, baseType: !58, size: 16, offset: 8)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !394, file: !395, line: 487, baseType: !408, size: 32)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_irq", file: !395, line: 117, size: 32, elements: !409)
!409 = !{!410, !411, !412}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !408, file: !395, line: 118, baseType: !25, size: 8)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !408, file: !395, line: 118, baseType: !58, size: 16, offset: 8)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !395, line: 119, baseType: !25, size: 8, offset: 24)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !394, file: !395, line: 488, baseType: !414, size: 24)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_dma", file: !395, line: 126, size: 24, elements: !415)
!415 = !{!416, !417, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !414, file: !395, line: 127, baseType: !25, size: 8)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "dma_channel_mask", scope: !414, file: !395, line: 127, baseType: !25, size: 8, offset: 8)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !395, line: 128, baseType: !25, size: 8, offset: 16)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !394, file: !395, line: 489, baseType: !420, size: 16)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_start_dependent", file: !395, line: 131, size: 16, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !420, file: !395, line: 132, baseType: !25, size: 8)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !395, line: 132, baseType: !25, size: 8, offset: 8)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "end_dpf", scope: !394, file: !395, line: 490, baseType: !425, size: 8)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_dependent", file: !395, line: 138, size: 8, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !425, file: !395, line: 139, baseType: !25, size: 8)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !394, file: !395, line: 491, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_io", file: !395, line: 141, size: 64, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !429, file: !395, line: 142, baseType: !25, size: 8)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !429, file: !395, line: 142, baseType: !25, size: 8, offset: 8)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !429, file: !395, line: 143, baseType: !58, size: 16, offset: 16)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !429, file: !395, line: 144, baseType: !58, size: 16, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !429, file: !395, line: 145, baseType: !25, size: 8, offset: 48)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !429, file: !395, line: 146, baseType: !25, size: 8, offset: 56)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !394, file: !395, line: 492, baseType: !438, size: 32)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_io", file: !395, line: 149, size: 32, elements: !439)
!439 = !{!440, !441, !442}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !438, file: !395, line: 150, baseType: !25, size: 8)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !438, file: !395, line: 150, baseType: !58, size: 16, offset: 8)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !438, file: !395, line: 151, baseType: !25, size: 8, offset: 24)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !394, file: !395, line: 493, baseType: !444, size: 48)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_dma", file: !395, line: 161, size: 48, elements: !445)
!445 = !{!446, !447, !448, !449}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !444, file: !395, line: 162, baseType: !25, size: 8)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !444, file: !395, line: 162, baseType: !58, size: 16, offset: 8)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !444, file: !395, line: 163, baseType: !58, size: 16, offset: 24)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !444, file: !395, line: 164, baseType: !25, size: 8, offset: 40)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_small", scope: !394, file: !395, line: 494, baseType: !451, size: 8)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_small", file: !395, line: 154, size: 8, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !451, file: !395, line: 155, baseType: !25, size: 8)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !394, file: !395, line: 495, baseType: !455, size: 16)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_tag", file: !395, line: 157, size: 16, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !455, file: !395, line: 158, baseType: !25, size: 8)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !455, file: !395, line: 158, baseType: !25, size: 8, offset: 8)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !394, file: !395, line: 499, baseType: !460, size: 96)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory24", file: !395, line: 183, size: 96, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !460, file: !395, line: 184, baseType: !25, size: 8)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !460, file: !395, line: 184, baseType: !58, size: 16, offset: 8)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !395, line: 184, baseType: !25, size: 8, offset: 24)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !460, file: !395, line: 185, baseType: !58, size: 16, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !460, file: !395, line: 186, baseType: !58, size: 16, offset: 48)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !460, file: !395, line: 187, baseType: !58, size: 16, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !460, file: !395, line: 188, baseType: !58, size: 16, offset: 80)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !394, file: !395, line: 500, baseType: !470, size: 120)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_generic_register", file: !395, line: 264, size: 120, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !470, file: !395, line: 265, baseType: !25, size: 8)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !470, file: !395, line: 265, baseType: !58, size: 16, offset: 8)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "address_space_id", scope: !470, file: !395, line: 265, baseType: !25, size: 8, offset: 24)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !470, file: !395, line: 266, baseType: !25, size: 8, offset: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !470, file: !395, line: 267, baseType: !25, size: 8, offset: 40)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !470, file: !395, line: 268, baseType: !25, size: 8, offset: 48)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !470, file: !395, line: 269, baseType: !187, size: 64, offset: 56)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_large", scope: !394, file: !395, line: 501, baseType: !480, size: 24)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_large", file: !395, line: 191, size: 24, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !480, file: !395, line: 192, baseType: !25, size: 8)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !480, file: !395, line: 192, baseType: !58, size: 16, offset: 8)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !394, file: !395, line: 502, baseType: !485, size: 160)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory32", file: !395, line: 194, size: 160, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !395, line: 195, baseType: !25, size: 8)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !485, file: !395, line: 195, baseType: !58, size: 16, offset: 8)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !395, line: 195, baseType: !25, size: 8, offset: 24)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !485, file: !395, line: 196, baseType: !12, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !485, file: !395, line: 197, baseType: !12, size: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !485, file: !395, line: 198, baseType: !12, size: 32, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !485, file: !395, line: 199, baseType: !12, size: 32, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !394, file: !395, line: 503, baseType: !495, size: 96)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_memory32", file: !395, line: 202, size: 96, elements: !496)
!496 = !{!497, !498, !499, !500, !501}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !495, file: !395, line: 203, baseType: !25, size: 8)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !495, file: !395, line: 203, baseType: !58, size: 16, offset: 8)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !395, line: 203, baseType: !25, size: 8, offset: 24)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !495, file: !395, line: 204, baseType: !12, size: 32, offset: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !495, file: !395, line: 205, baseType: !12, size: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !394, file: !395, line: 504, baseType: !503, size: 128)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address16", file: !395, line: 248, size: 128, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !503, file: !395, line: 249, baseType: !25, size: 8)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !503, file: !395, line: 249, baseType: !58, size: 16, offset: 8)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !503, file: !395, line: 250, baseType: !25, size: 8, offset: 24)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !503, file: !395, line: 250, baseType: !25, size: 8, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !503, file: !395, line: 250, baseType: !25, size: 8, offset: 40)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !503, file: !395, line: 250, baseType: !58, size: 16, offset: 48)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !503, file: !395, line: 251, baseType: !58, size: 16, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !503, file: !395, line: 252, baseType: !58, size: 16, offset: 80)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !503, file: !395, line: 253, baseType: !58, size: 16, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !503, file: !395, line: 254, baseType: !58, size: 16, offset: 112)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !394, file: !395, line: 505, baseType: !516, size: 208)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address32", file: !395, line: 239, size: 208, elements: !517)
!517 = !{!518, !519, !520, !521, !522, !523, !524, !525, !526, !527}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !516, file: !395, line: 240, baseType: !25, size: 8)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !516, file: !395, line: 240, baseType: !58, size: 16, offset: 8)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !516, file: !395, line: 241, baseType: !25, size: 8, offset: 24)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !516, file: !395, line: 241, baseType: !25, size: 8, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !516, file: !395, line: 241, baseType: !25, size: 8, offset: 40)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !516, file: !395, line: 241, baseType: !12, size: 32, offset: 48)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !516, file: !395, line: 242, baseType: !12, size: 32, offset: 80)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !516, file: !395, line: 243, baseType: !12, size: 32, offset: 112)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !516, file: !395, line: 244, baseType: !12, size: 32, offset: 144)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !516, file: !395, line: 245, baseType: !12, size: 32, offset: 176)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !394, file: !395, line: 506, baseType: !529, size: 368)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address64", file: !395, line: 230, size: 368, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !529, file: !395, line: 231, baseType: !25, size: 8)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !529, file: !395, line: 231, baseType: !58, size: 16, offset: 8)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !529, file: !395, line: 232, baseType: !25, size: 8, offset: 24)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !395, line: 232, baseType: !25, size: 8, offset: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !529, file: !395, line: 232, baseType: !25, size: 8, offset: 40)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !529, file: !395, line: 232, baseType: !187, size: 64, offset: 48)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !529, file: !395, line: 233, baseType: !187, size: 64, offset: 112)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !529, file: !395, line: 234, baseType: !187, size: 64, offset: 176)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !529, file: !395, line: 235, baseType: !187, size: 64, offset: 240)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !529, file: !395, line: 236, baseType: !187, size: 64, offset: 304)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !394, file: !395, line: 507, baseType: !542, size: 448)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_address64", file: !395, line: 216, size: 448, elements: !543)
!543 = !{!544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !542, file: !395, line: 217, baseType: !25, size: 8)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !542, file: !395, line: 217, baseType: !58, size: 16, offset: 8)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !542, file: !395, line: 218, baseType: !25, size: 8, offset: 24)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !542, file: !395, line: 218, baseType: !25, size: 8, offset: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !542, file: !395, line: 218, baseType: !25, size: 8, offset: 40)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !542, file: !395, line: 218, baseType: !25, size: 8, offset: 48)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !542, file: !395, line: 219, baseType: !25, size: 8, offset: 56)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !542, file: !395, line: 220, baseType: !187, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !542, file: !395, line: 221, baseType: !187, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !542, file: !395, line: 222, baseType: !187, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !542, file: !395, line: 223, baseType: !187, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !542, file: !395, line: 224, baseType: !187, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !542, file: !395, line: 225, baseType: !187, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !394, file: !395, line: 508, baseType: !558, size: 72)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_irq", file: !395, line: 257, size: 72, elements: !559)
!559 = !{!560, !561, !562, !563, !564}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !558, file: !395, line: 258, baseType: !25, size: 8)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !558, file: !395, line: 258, baseType: !58, size: 16, offset: 8)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !558, file: !395, line: 258, baseType: !25, size: 8, offset: 24)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !558, file: !395, line: 259, baseType: !25, size: 8, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !558, file: !395, line: 260, baseType: !218, size: 32, offset: 40)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !394, file: !395, line: 509, baseType: !566, size: 184)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_gpio", file: !395, line: 274, size: 184, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !566, file: !395, line: 275, baseType: !25, size: 8)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !566, file: !395, line: 275, baseType: !58, size: 16, offset: 8)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !566, file: !395, line: 275, baseType: !25, size: 8, offset: 24)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !566, file: !395, line: 276, baseType: !25, size: 8, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !395, line: 277, baseType: !58, size: 16, offset: 40)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "int_flags", scope: !566, file: !395, line: 278, baseType: !58, size: 16, offset: 56)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !566, file: !395, line: 279, baseType: !25, size: 8, offset: 72)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !566, file: !395, line: 280, baseType: !58, size: 16, offset: 80)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !566, file: !395, line: 281, baseType: !58, size: 16, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !566, file: !395, line: 282, baseType: !58, size: 16, offset: 112)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !566, file: !395, line: 283, baseType: !25, size: 8, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !566, file: !395, line: 284, baseType: !58, size: 16, offset: 136)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !566, file: !395, line: 285, baseType: !58, size: 16, offset: 152)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !566, file: !395, line: 286, baseType: !58, size: 16, offset: 168)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !394, file: !395, line: 510, baseType: !583, size: 144)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_i2c_serialbus", file: !395, line: 325, size: 144, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !583, file: !395, line: 326, baseType: !25, size: 8)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !583, file: !395, line: 326, baseType: !58, size: 16, offset: 8)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !583, file: !395, line: 327, baseType: !25, size: 8, offset: 24)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !583, file: !395, line: 327, baseType: !25, size: 8, offset: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !583, file: !395, line: 327, baseType: !25, size: 8, offset: 40)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !395, line: 327, baseType: !25, size: 8, offset: 48)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !583, file: !395, line: 327, baseType: !58, size: 16, offset: 56)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !583, file: !395, line: 327, baseType: !25, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !583, file: !395, line: 327, baseType: !58, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !583, file: !395, line: 327, baseType: !12, size: 32, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !583, file: !395, line: 328, baseType: !58, size: 16, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !394, file: !395, line: 511, baseType: !597, size: 168)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_spi_serialbus", file: !395, line: 340, size: 168, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !395, line: 341, baseType: !25, size: 8)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !597, file: !395, line: 341, baseType: !58, size: 16, offset: 8)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !597, file: !395, line: 342, baseType: !25, size: 8, offset: 24)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !597, file: !395, line: 342, baseType: !25, size: 8, offset: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !395, line: 342, baseType: !25, size: 8, offset: 40)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !395, line: 342, baseType: !25, size: 8, offset: 48)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !597, file: !395, line: 342, baseType: !58, size: 16, offset: 56)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !597, file: !395, line: 342, baseType: !25, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !597, file: !395, line: 342, baseType: !58, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !597, file: !395, line: 342, baseType: !12, size: 32, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !597, file: !395, line: 343, baseType: !25, size: 8, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !597, file: !395, line: 344, baseType: !25, size: 8, offset: 136)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !597, file: !395, line: 345, baseType: !25, size: 8, offset: 144)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !597, file: !395, line: 346, baseType: !58, size: 16, offset: 152)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !394, file: !395, line: 512, baseType: !614, size: 176)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_uart_serialbus", file: !395, line: 358, size: 176, elements: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !614, file: !395, line: 359, baseType: !25, size: 8)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !614, file: !395, line: 359, baseType: !58, size: 16, offset: 8)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !614, file: !395, line: 360, baseType: !25, size: 8, offset: 24)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !614, file: !395, line: 360, baseType: !25, size: 8, offset: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !614, file: !395, line: 360, baseType: !25, size: 8, offset: 40)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !614, file: !395, line: 360, baseType: !25, size: 8, offset: 48)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !614, file: !395, line: 360, baseType: !58, size: 16, offset: 56)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !614, file: !395, line: 360, baseType: !25, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !614, file: !395, line: 360, baseType: !58, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !614, file: !395, line: 360, baseType: !12, size: 32, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !614, file: !395, line: 361, baseType: !58, size: 16, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !614, file: !395, line: 362, baseType: !58, size: 16, offset: 144)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !614, file: !395, line: 363, baseType: !25, size: 8, offset: 160)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !614, file: !395, line: 364, baseType: !25, size: 8, offset: 168)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !394, file: !395, line: 513, baseType: !631, size: 96)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_common_serialbus", file: !395, line: 322, size: 96, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !641}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !631, file: !395, line: 323, baseType: !25, size: 8)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !631, file: !395, line: 323, baseType: !58, size: 16, offset: 8)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !631, file: !395, line: 323, baseType: !25, size: 8, offset: 24)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !631, file: !395, line: 323, baseType: !25, size: 8, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !631, file: !395, line: 323, baseType: !25, size: 8, offset: 40)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !395, line: 323, baseType: !25, size: 8, offset: 48)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !631, file: !395, line: 323, baseType: !58, size: 16, offset: 56)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !631, file: !395, line: 323, baseType: !25, size: 8, offset: 72)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !631, file: !395, line: 323, baseType: !58, size: 16, offset: 80)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !394, file: !395, line: 514, baseType: !643, size: 144)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_function", file: !395, line: 376, size: 144, elements: !644)
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !643, file: !395, line: 377, baseType: !25, size: 8)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !643, file: !395, line: 377, baseType: !58, size: 16, offset: 8)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !643, file: !395, line: 377, baseType: !25, size: 8, offset: 24)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !395, line: 378, baseType: !58, size: 16, offset: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !643, file: !395, line: 379, baseType: !25, size: 8, offset: 48)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !643, file: !395, line: 380, baseType: !58, size: 16, offset: 56)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !643, file: !395, line: 381, baseType: !58, size: 16, offset: 72)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !643, file: !395, line: 382, baseType: !25, size: 8, offset: 88)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !643, file: !395, line: 383, baseType: !58, size: 16, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !643, file: !395, line: 384, baseType: !58, size: 16, offset: 112)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !643, file: !395, line: 385, baseType: !58, size: 16, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !394, file: !395, line: 515, baseType: !657, size: 160)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_config", file: !395, line: 396, size: 160, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !657, file: !395, line: 397, baseType: !25, size: 8)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !657, file: !395, line: 397, baseType: !58, size: 16, offset: 8)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !657, file: !395, line: 397, baseType: !25, size: 8, offset: 24)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !395, line: 398, baseType: !58, size: 16, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !657, file: !395, line: 399, baseType: !25, size: 8, offset: 48)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !657, file: !395, line: 400, baseType: !12, size: 32, offset: 56)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !657, file: !395, line: 401, baseType: !58, size: 16, offset: 88)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !657, file: !395, line: 402, baseType: !25, size: 8, offset: 104)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !657, file: !395, line: 403, baseType: !58, size: 16, offset: 112)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !657, file: !395, line: 404, baseType: !58, size: 16, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !657, file: !395, line: 405, baseType: !58, size: 16, offset: 144)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !394, file: !395, line: 516, baseType: !671, size: 112)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group", file: !395, line: 416, size: 112, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !395, line: 417, baseType: !25, size: 8)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !671, file: !395, line: 417, baseType: !58, size: 16, offset: 8)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !671, file: !395, line: 417, baseType: !25, size: 8, offset: 24)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !395, line: 418, baseType: !58, size: 16, offset: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !671, file: !395, line: 419, baseType: !58, size: 16, offset: 48)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "label_offset", scope: !671, file: !395, line: 420, baseType: !58, size: 16, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !671, file: !395, line: 421, baseType: !58, size: 16, offset: 80)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !671, file: !395, line: 422, baseType: !58, size: 16, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !394, file: !395, line: 517, baseType: !682, size: 136)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_function", file: !395, line: 433, size: 136, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !692, !693}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !682, file: !395, line: 434, baseType: !25, size: 8)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !682, file: !395, line: 434, baseType: !58, size: 16, offset: 8)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !682, file: !395, line: 434, baseType: !25, size: 8, offset: 24)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !395, line: 435, baseType: !58, size: 16, offset: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !682, file: !395, line: 436, baseType: !58, size: 16, offset: 48)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !682, file: !395, line: 437, baseType: !25, size: 8, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !682, file: !395, line: 438, baseType: !58, size: 16, offset: 72)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !682, file: !395, line: 439, baseType: !58, size: 16, offset: 88)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !682, file: !395, line: 440, baseType: !58, size: 16, offset: 104)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !682, file: !395, line: 441, baseType: !58, size: 16, offset: 120)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !394, file: !395, line: 518, baseType: !695, size: 160)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_config", file: !395, line: 452, size: 160, elements: !696)
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !695, file: !395, line: 453, baseType: !25, size: 8)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !695, file: !395, line: 453, baseType: !58, size: 16, offset: 8)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !695, file: !395, line: 453, baseType: !25, size: 8, offset: 24)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !395, line: 454, baseType: !58, size: 16, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !695, file: !395, line: 455, baseType: !25, size: 8, offset: 48)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !695, file: !395, line: 456, baseType: !12, size: 32, offset: 56)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !695, file: !395, line: 457, baseType: !25, size: 8, offset: 88)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !695, file: !395, line: 458, baseType: !58, size: 16, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !695, file: !395, line: 459, baseType: !58, size: 16, offset: 112)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !695, file: !395, line: 460, baseType: !58, size: 16, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !695, file: !395, line: 461, baseType: !58, size: 16, offset: 144)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !394, file: !395, line: 522, baseType: !709, size: 48)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address", file: !395, line: 213, size: 48, elements: !710)
!710 = !{!711, !712, !713, !714, !715}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !395, line: 214, baseType: !25, size: 8)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !709, file: !395, line: 214, baseType: !58, size: 16, offset: 8)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !709, file: !395, line: 214, baseType: !25, size: 8, offset: 24)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !395, line: 214, baseType: !25, size: 8, offset: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !709, file: !395, line: 214, baseType: !25, size: 8, offset: 40)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "dword_item", scope: !394, file: !395, line: 523, baseType: !12, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "word_item", scope: !394, file: !395, line: 524, baseType: !58, size: 16)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "byte_item", scope: !394, file: !395, line: 525, baseType: !25, size: 8)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !392, line: 421, baseType: !12)
!720 = !{!0}
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 56, elements: !723)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!723 = !{!724}
!724 = !DISubrange(count: 7)
!725 = !{i32 7, !"Dwarf Version", i32 4}
!726 = !{i32 2, !"Debug Info Version", i32 3}
!727 = !{i32 1, !"wchar_size", i32 2}
!728 = !{i32 1, !"Code Model", i32 2}
!729 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!730 = distinct !DISubprogram(name: "acpi_rs_convert_aml_to_resources", scope: !3, file: !3, line: 30, type: !731, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!731 = !DISubroutineType(types: !732)
!732 = !{!719, !247, !12, !12, !25, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!734 = !DILocalVariable(name: "aml", arg: 1, scope: !730, file: !3, line: 30, type: !247)
!735 = !DILocation(line: 30, column: 39, scope: !730)
!736 = !DILocalVariable(name: "length", arg: 2, scope: !730, file: !3, line: 31, type: !12)
!737 = !DILocation(line: 31, column: 10, scope: !730)
!738 = !DILocalVariable(name: "offset", arg: 3, scope: !730, file: !3, line: 32, type: !12)
!739 = !DILocation(line: 32, column: 10, scope: !730)
!740 = !DILocalVariable(name: "resource_index", arg: 4, scope: !730, file: !3, line: 32, type: !25)
!741 = !DILocation(line: 32, column: 21, scope: !730)
!742 = !DILocalVariable(name: "context", arg: 5, scope: !730, file: !3, line: 32, type: !733)
!743 = !DILocation(line: 32, column: 44, scope: !730)
!744 = !DILocalVariable(name: "resource_ptr", scope: !730, file: !3, line: 34, type: !6)
!745 = !DILocation(line: 34, column: 25, scope: !730)
!746 = !DILocation(line: 35, column: 6, scope: !730)
!747 = !DILocalVariable(name: "resource", scope: !730, file: !3, line: 36, type: !7)
!748 = !DILocation(line: 36, column: 24, scope: !730)
!749 = !DILocalVariable(name: "aml_resource", scope: !730, file: !3, line: 37, type: !393)
!750 = !DILocation(line: 37, column: 22, scope: !730)
!751 = !DILocalVariable(name: "conversion_table", scope: !730, file: !3, line: 38, type: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_rsconvert_info", file: !754, line: 32, size: 32, elements: !755)
!754 = !DIFile(filename: "drivers/acpi/acpica/acresrc.h", directory: "/home/lizy2001/genbc/linux")
!755 = !{!756, !757, !758, !759}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !753, file: !754, line: 33, baseType: !25, size: 8)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "resource_offset", scope: !753, file: !754, line: 34, baseType: !25, size: 8, offset: 8)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "aml_offset", scope: !753, file: !754, line: 35, baseType: !25, size: 8, offset: 16)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !753, file: !754, line: 36, baseType: !25, size: 8, offset: 24)
!760 = !DILocation(line: 38, column: 30, scope: !730)
!761 = !DILocalVariable(name: "status", scope: !730, file: !3, line: 39, type: !719)
!762 = !DILocation(line: 39, column: 14, scope: !730)
!763 = !DILocation(line: 47, column: 14, scope: !730)
!764 = !DILocation(line: 47, column: 13, scope: !730)
!765 = !DILocation(line: 47, column: 11, scope: !730)
!766 = !DILocation(line: 48, column: 6, scope: !767)
!767 = distinct !DILexicalBlock(scope: !730, file: !3, line: 48, column: 6)
!768 = !DILocation(line: 48, column: 6, scope: !730)
!769 = !DILocation(line: 49, column: 3, scope: !770)
!770 = distinct !DILexicalBlock(scope: !767, file: !3, line: 48, column: 36)
!771 = !DILocation(line: 51, column: 2, scope: !770)
!772 = !DILocation(line: 55, column: 17, scope: !730)
!773 = !DILocation(line: 55, column: 15, scope: !730)
!774 = !DILocation(line: 57, column: 32, scope: !775)
!775 = distinct !DILexicalBlock(scope: !730, file: !3, line: 57, column: 6)
!776 = !DILocation(line: 57, column: 6, scope: !775)
!777 = !DILocation(line: 57, column: 37, scope: !775)
!778 = !DILocation(line: 57, column: 6, scope: !730)
!779 = !DILocation(line: 58, column: 7, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 58, column: 7)
!781 = distinct !DILexicalBlock(scope: !775, file: !3, line: 57, column: 71)
!782 = !DILocation(line: 58, column: 21, scope: !780)
!783 = !DILocation(line: 58, column: 39, scope: !780)
!784 = !DILocation(line: 58, column: 44, scope: !780)
!785 = !DILocation(line: 58, column: 7, scope: !781)
!786 = !DILocation(line: 60, column: 21, scope: !787)
!787 = distinct !DILexicalBlock(scope: !780, file: !3, line: 59, column: 39)
!788 = !DILocation(line: 61, column: 3, scope: !787)
!789 = !DILocation(line: 66, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !780, file: !3, line: 61, column: 10)
!791 = !DILocation(line: 66, column: 23, scope: !790)
!792 = !DILocation(line: 66, column: 41, scope: !790)
!793 = !DILocation(line: 65, column: 8, scope: !790)
!794 = !DILocation(line: 64, column: 21, scope: !790)
!795 = !DILocation(line: 68, column: 2, scope: !781)
!796 = !DILocation(line: 70, column: 38, scope: !797)
!797 = distinct !DILexicalBlock(scope: !775, file: !3, line: 68, column: 9)
!798 = !DILocation(line: 70, column: 7, scope: !797)
!799 = !DILocation(line: 69, column: 20, scope: !797)
!800 = !DILocation(line: 73, column: 7, scope: !801)
!801 = distinct !DILexicalBlock(scope: !730, file: !3, line: 73, column: 6)
!802 = !DILocation(line: 73, column: 6, scope: !730)
!803 = !DILocation(line: 74, column: 3, scope: !804)
!804 = distinct !DILexicalBlock(scope: !801, file: !3, line: 73, column: 25)
!805 = !DILocation(line: 77, column: 3, scope: !804)
!806 = !DILocation(line: 83, column: 38, scope: !730)
!807 = !DILocation(line: 83, column: 48, scope: !730)
!808 = !DILocation(line: 84, column: 10, scope: !730)
!809 = !DILocation(line: 83, column: 6, scope: !730)
!810 = !DILocation(line: 82, column: 9, scope: !730)
!811 = !DILocation(line: 85, column: 6, scope: !812)
!812 = distinct !DILexicalBlock(scope: !730, file: !3, line: 85, column: 6)
!813 = !DILocation(line: 85, column: 6, scope: !730)
!814 = !DILocation(line: 86, column: 3, scope: !815)
!815 = distinct !DILexicalBlock(scope: !812, file: !3, line: 85, column: 28)
!816 = !DILocation(line: 89, column: 3, scope: !815)
!817 = !DILocation(line: 99, column: 18, scope: !730)
!818 = !DILocation(line: 99, column: 3, scope: !730)
!819 = !DILocation(line: 99, column: 16, scope: !730)
!820 = !DILocation(line: 100, column: 2, scope: !730)
!821 = !DILocation(line: 101, column: 1, scope: !730)
!822 = distinct !DISubprogram(name: "acpi_rs_convert_resources_to_aml", scope: !3, file: !3, line: 123, type: !823, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!823 = !DISubroutineType(types: !824)
!824 = !{!719, !7, !391, !247}
!825 = !DILocalVariable(name: "resource", arg: 1, scope: !822, file: !3, line: 123, type: !7)
!826 = !DILocation(line: 123, column: 56, scope: !822)
!827 = !DILocalVariable(name: "aml_size_needed", arg: 2, scope: !822, file: !3, line: 124, type: !391)
!828 = !DILocation(line: 124, column: 16, scope: !822)
!829 = !DILocalVariable(name: "output_buffer", arg: 3, scope: !822, file: !3, line: 124, type: !247)
!830 = !DILocation(line: 124, column: 38, scope: !822)
!831 = !DILocalVariable(name: "aml", scope: !822, file: !3, line: 126, type: !247)
!832 = !DILocation(line: 126, column: 6, scope: !822)
!833 = !DILocation(line: 126, column: 12, scope: !822)
!834 = !DILocalVariable(name: "end_aml", scope: !822, file: !3, line: 127, type: !247)
!835 = !DILocation(line: 127, column: 6, scope: !822)
!836 = !DILocation(line: 127, column: 16, scope: !822)
!837 = !DILocation(line: 127, column: 32, scope: !822)
!838 = !DILocation(line: 127, column: 30, scope: !822)
!839 = !DILocalVariable(name: "conversion_table", scope: !822, file: !3, line: 128, type: !752)
!840 = !DILocation(line: 128, column: 30, scope: !822)
!841 = !DILocalVariable(name: "status", scope: !822, file: !3, line: 129, type: !719)
!842 = !DILocation(line: 129, column: 14, scope: !822)
!843 = !DILocation(line: 135, column: 2, scope: !822)
!844 = !DILocation(line: 135, column: 9, scope: !822)
!845 = !DILocation(line: 135, column: 15, scope: !822)
!846 = !DILocation(line: 135, column: 13, scope: !822)
!847 = !DILocation(line: 139, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 139, column: 7)
!849 = distinct !DILexicalBlock(scope: !822, file: !3, line: 135, column: 24)
!850 = !DILocation(line: 139, column: 17, scope: !848)
!851 = !DILocation(line: 139, column: 22, scope: !848)
!852 = !DILocation(line: 139, column: 7, scope: !849)
!853 = !DILocation(line: 140, column: 4, scope: !854)
!854 = distinct !DILexicalBlock(scope: !848, file: !3, line: 139, column: 48)
!855 = !DILocation(line: 143, column: 4, scope: !854)
!856 = !DILocation(line: 148, column: 8, scope: !857)
!857 = distinct !DILexicalBlock(scope: !849, file: !3, line: 148, column: 7)
!858 = !DILocation(line: 148, column: 18, scope: !857)
!859 = !DILocation(line: 148, column: 7, scope: !849)
!860 = !DILocation(line: 149, column: 4, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !3, line: 148, column: 26)
!862 = !DILocation(line: 151, column: 4, scope: !861)
!863 = !DILocation(line: 156, column: 7, scope: !864)
!864 = distinct !DILexicalBlock(scope: !849, file: !3, line: 156, column: 7)
!865 = !DILocation(line: 156, column: 17, scope: !864)
!866 = !DILocation(line: 156, column: 22, scope: !864)
!867 = !DILocation(line: 156, column: 7, scope: !849)
!868 = !DILocation(line: 157, column: 8, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 157, column: 8)
!870 = distinct !DILexicalBlock(scope: !864, file: !3, line: 156, column: 56)
!871 = !DILocation(line: 157, column: 18, scope: !869)
!872 = !DILocation(line: 157, column: 23, scope: !869)
!873 = !DILocation(line: 157, column: 41, scope: !869)
!874 = !DILocation(line: 157, column: 46, scope: !869)
!875 = !DILocation(line: 157, column: 8, scope: !870)
!876 = !DILocation(line: 159, column: 22, scope: !877)
!877 = distinct !DILexicalBlock(scope: !869, file: !3, line: 158, column: 40)
!878 = !DILocation(line: 160, column: 4, scope: !877)
!879 = !DILocation(line: 165, column: 10, scope: !880)
!880 = distinct !DILexicalBlock(scope: !869, file: !3, line: 160, column: 11)
!881 = !DILocation(line: 165, column: 20, scope: !880)
!882 = !DILocation(line: 165, column: 25, scope: !880)
!883 = !DILocation(line: 165, column: 43, scope: !880)
!884 = !DILocation(line: 164, column: 9, scope: !880)
!885 = !DILocation(line: 163, column: 22, scope: !880)
!886 = !DILocation(line: 167, column: 3, scope: !870)
!887 = !DILocation(line: 169, column: 39, scope: !888)
!888 = distinct !DILexicalBlock(scope: !864, file: !3, line: 167, column: 10)
!889 = !DILocation(line: 169, column: 49, scope: !888)
!890 = !DILocation(line: 169, column: 8, scope: !888)
!891 = !DILocation(line: 168, column: 21, scope: !888)
!892 = !DILocation(line: 172, column: 8, scope: !893)
!893 = distinct !DILexicalBlock(scope: !849, file: !3, line: 172, column: 7)
!894 = !DILocation(line: 172, column: 7, scope: !849)
!895 = !DILocation(line: 173, column: 4, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 172, column: 26)
!897 = !DILocation(line: 176, column: 4, scope: !896)
!898 = !DILocation(line: 179, column: 44, scope: !849)
!899 = !DILocation(line: 180, column: 16, scope: !849)
!900 = !DILocation(line: 183, column: 9, scope: !849)
!901 = !DILocation(line: 179, column: 12, scope: !849)
!902 = !DILocation(line: 179, column: 10, scope: !849)
!903 = !DILocation(line: 184, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !849, file: !3, line: 184, column: 7)
!905 = !DILocation(line: 184, column: 7, scope: !849)
!906 = !DILocation(line: 185, column: 4, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !3, line: 184, column: 29)
!908 = !DILocation(line: 188, column: 4, scope: !907)
!909 = !DILocation(line: 195, column: 12, scope: !849)
!910 = !DILocation(line: 194, column: 7, scope: !849)
!911 = !DILocation(line: 193, column: 10, scope: !849)
!912 = !DILocation(line: 197, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !849, file: !3, line: 197, column: 7)
!914 = !DILocation(line: 197, column: 7, scope: !849)
!915 = !DILocation(line: 198, column: 4, scope: !916)
!916 = distinct !DILexicalBlock(scope: !913, file: !3, line: 197, column: 29)
!917 = !DILocation(line: 203, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !849, file: !3, line: 203, column: 7)
!919 = !DILocation(line: 203, column: 17, scope: !918)
!920 = !DILocation(line: 203, column: 22, scope: !918)
!921 = !DILocation(line: 203, column: 7, scope: !849)
!922 = !DILocation(line: 207, column: 4, scope: !923)
!923 = distinct !DILexicalBlock(scope: !918, file: !3, line: 203, column: 53)
!924 = !DILocation(line: 214, column: 40, scope: !849)
!925 = !DILocation(line: 214, column: 10, scope: !849)
!926 = !DILocation(line: 214, column: 7, scope: !849)
!927 = !DILocation(line: 218, column: 14, scope: !849)
!928 = !DILocation(line: 218, column: 12, scope: !849)
!929 = distinct !{!929, !843, !930}
!930 = !DILocation(line: 219, column: 2, scope: !822)
!931 = !DILocation(line: 223, column: 2, scope: !822)
!932 = !DILocation(line: 224, column: 1, scope: !822)
