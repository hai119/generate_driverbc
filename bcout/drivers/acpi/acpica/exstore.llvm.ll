; ModuleID = '../bcout/drivers/acpi/acpica/exstore.llvm.bc'
source_filename = "drivers/acpi/acpica/exstore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }

@_acpi_module_name = internal constant [8 x i8] c"exstore\00", align 1, !dbg !0
@.str = private unnamed_addr constant [15 x i8] c"Null parameter\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Target is not a Reference or Constant object - [%s] %p\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unknown Reference Class 0x%2.2X\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Cannot assign type [%s] to [Package] (source must be type Pkg)\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"Target must be [Buffer/Integer/String/Reference], found [%s] (%4.4s)\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"Source must be type [Integer/Buffer/String], found [%s]\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Target is not of type [Package/BufferField]\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_store(%union.acpi_operand_object* %source_desc, %union.acpi_operand_object* %dest_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !810 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca %union.acpi_operand_object*, align 8
  %dest_desc.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %ref_desc = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc.addr, metadata !814, metadata !DIExpression()), !dbg !815
  store %union.acpi_operand_object* %dest_desc, %union.acpi_operand_object** %dest_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %dest_desc.addr, metadata !816, metadata !DIExpression()), !dbg !817
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata i32* %status, metadata !820, metadata !DIExpression()), !dbg !821
  store i32 0, i32* %status, align 4, !dbg !821
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %ref_desc, metadata !822, metadata !DIExpression()), !dbg !823
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !824
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %ref_desc, align 8, !dbg !823
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !825
  %tobool = icmp ne %union.acpi_operand_object* %1, null, !dbg !825
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !827

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !828
  %tobool1 = icmp ne %union.acpi_operand_object* %2, null, !dbg !828
  br i1 %tobool1, label %if.end, label %if.then, !dbg !829

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #3, !dbg !830
  store i32 12290, i32* %retval, align 4, !dbg !832
  br label %return, !dbg !832

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !833
  %4 = bitcast %union.acpi_operand_object* %3 to i8*, !dbg !833
  %5 = bitcast i8* %4 to %union.acpi_descriptor*, !dbg !833
  %common = bitcast %union.acpi_descriptor* %5 to %struct.acpi_common_descriptor*, !dbg !833
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !833
  %6 = load i8, i8* %descriptor_type, align 8, !dbg !833
  %conv = zext i8 %6 to i32, !dbg !833
  %cmp = icmp eq i32 %conv, 15, !dbg !835
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !836

if.then3:                                         ; preds = %if.end
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !837
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !839
  %9 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_namespace_node*, !dbg !840
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !841
  %call = call i32 @acpi_ex_store_object_to_node(%union.acpi_operand_object* %7, %struct.acpi_namespace_node* %9, %struct.acpi_walk_state* %10, i8 zeroext 1) #3, !dbg !842
  store i32 %call, i32* %status, align 4, !dbg !843
  %11 = load i32, i32* %status, align 4, !dbg !844
  store i32 %11, i32* %retval, align 4, !dbg !844
  br label %return, !dbg !844

if.end4:                                          ; preds = %if.end
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !845
  %common5 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_common*, !dbg !846
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common5, i32 0, i32 2, !dbg !847
  %13 = load i8, i8* %type, align 1, !dbg !847
  %conv6 = zext i8 %13 to i32, !dbg !845
  switch i32 %conv6, label %sw.default [
    i32 20, label %sw.bb
    i32 1, label %sw.bb7
  ], !dbg !848

sw.bb:                                            ; preds = %if.end4
  br label %sw.epilog, !dbg !849

sw.bb7:                                           ; preds = %if.end4
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !851
  %common8 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_common*, !dbg !853
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common8, i32 0, i32 4, !dbg !854
  %15 = load i8, i8* %flags, align 4, !dbg !854
  %conv9 = zext i8 %15 to i32, !dbg !851
  %and = and i32 %conv9, 1, !dbg !855
  %tobool10 = icmp ne i32 %and, 0, !dbg !855
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !856

if.then11:                                        ; preds = %sw.bb7
  store i32 0, i32* %retval, align 4, !dbg !857
  br label %return, !dbg !857

if.end12:                                         ; preds = %sw.bb7
  br label %sw.default, !dbg !859

sw.default:                                       ; preds = %if.end4, %if.end12
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !860
  %call13 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %16) #3, !dbg !860
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !860
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 105, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %call13, %union.acpi_operand_object* %17) #3, !dbg !860
  store i32 12291, i32* %retval, align 4, !dbg !861
  br label %return, !dbg !861

sw.epilog:                                        ; preds = %sw.bb
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ref_desc, align 8, !dbg !862
  %reference = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_reference*, !dbg !863
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !864
  %19 = load i8, i8* %class, align 1, !dbg !864
  %conv14 = zext i8 %19 to i32, !dbg !862
  switch i32 %conv14, label %sw.default26 [
    i32 2, label %sw.bb15
    i32 3, label %sw.bb18
    i32 0, label %sw.bb20
    i32 1, label %sw.bb20
    i32 6, label %sw.bb25
  ], !dbg !865

sw.bb15:                                          ; preds = %sw.epilog
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !866
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ref_desc, align 8, !dbg !868
  %reference16 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_reference*, !dbg !869
  %object = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference16, i32 0, i32 8, !dbg !870
  %22 = load i8*, i8** %object, align 8, !dbg !870
  %23 = bitcast i8* %22 to %struct.acpi_namespace_node*, !dbg !868
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !871
  %call17 = call i32 @acpi_ex_store_object_to_node(%union.acpi_operand_object* %20, %struct.acpi_namespace_node* %23, %struct.acpi_walk_state* %24, i8 zeroext 1) #3, !dbg !872
  store i32 %call17, i32* %status, align 4, !dbg !873
  br label %sw.epilog30, !dbg !874

sw.bb18:                                          ; preds = %sw.epilog
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !875
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ref_desc, align 8, !dbg !876
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !877
  %call19 = call i32 @acpi_ex_store_object_to_index(%union.acpi_operand_object* %25, %union.acpi_operand_object* %26, %struct.acpi_walk_state* %27) #3, !dbg !878
  store i32 %call19, i32* %status, align 4, !dbg !879
  br label %sw.epilog30, !dbg !880

sw.bb20:                                          ; preds = %sw.epilog, %sw.epilog
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ref_desc, align 8, !dbg !881
  %reference21 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_reference*, !dbg !882
  %class22 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference21, i32 0, i32 5, !dbg !883
  %29 = load i8, i8* %class22, align 1, !dbg !883
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ref_desc, align 8, !dbg !884
  %reference23 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_reference*, !dbg !885
  %value = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference23, i32 0, i32 13, !dbg !886
  %31 = load i32, i32* %value, align 8, !dbg !886
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !887
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !888
  %call24 = call i32 @acpi_ds_store_object_to_local(i8 zeroext %29, i32 %31, %union.acpi_operand_object* %32, %struct.acpi_walk_state* %33) #3, !dbg !889
  store i32 %call24, i32* %status, align 4, !dbg !890
  br label %sw.epilog30, !dbg !891

sw.bb25:                                          ; preds = %sw.epilog
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !892
  call void @acpi_ex_do_debug_object(%union.acpi_operand_object* %34, i32 0, i32 0) #3, !dbg !892
  br label %sw.epilog30, !dbg !893

sw.default26:                                     ; preds = %sw.epilog
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ref_desc, align 8, !dbg !894
  %reference27 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_reference*, !dbg !894
  %class28 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference27, i32 0, i32 5, !dbg !894
  %36 = load i8, i8* %class28, align 1, !dbg !894
  %conv29 = zext i8 %36 to i32, !dbg !894
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 167, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %conv29) #3, !dbg !894
  store i32 12303, i32* %status, align 4, !dbg !895
  br label %sw.epilog30, !dbg !896

sw.epilog30:                                      ; preds = %sw.default26, %sw.bb25, %sw.bb20, %sw.bb18, %sw.bb15
  %37 = load i32, i32* %status, align 4, !dbg !897
  store i32 %37, i32* %retval, align 4, !dbg !897
  br label %return, !dbg !897

return:                                           ; preds = %sw.epilog30, %sw.default, %if.then11, %if.then3, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !898
  ret i32 %38, !dbg !898
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_store_object_to_node(%union.acpi_operand_object* %source_desc, %struct.acpi_namespace_node* %node, %struct.acpi_walk_state* %walk_state, i8 zeroext %implicit_conversion) #0 !dbg !899 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca %union.acpi_operand_object*, align 8
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %implicit_conversion.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %target_desc = alloca %union.acpi_operand_object*, align 8
  %new_desc = alloca %union.acpi_operand_object*, align 8
  %target_type = alloca i32, align 4
  store %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc.addr, metadata !902, metadata !DIExpression()), !dbg !903
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !904, metadata !DIExpression()), !dbg !905
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !906, metadata !DIExpression()), !dbg !907
  store i8 %implicit_conversion, i8* %implicit_conversion.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %implicit_conversion.addr, metadata !908, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.declare(metadata i32* %status, metadata !910, metadata !DIExpression()), !dbg !911
  store i32 0, i32* %status, align 4, !dbg !911
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %target_desc, metadata !912, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %new_desc, metadata !914, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.declare(metadata i32* %target_type, metadata !916, metadata !DIExpression()), !dbg !918
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !919
  %call = call i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %0) #3, !dbg !920
  store i32 %call, i32* %target_type, align 4, !dbg !921
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !922
  %call1 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %1) #3, !dbg !923
  store %union.acpi_operand_object* %call1, %union.acpi_operand_object** %target_desc, align 8, !dbg !924
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !925
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 3, !dbg !927
  %3 = load i16, i16* %opcode, align 2, !dbg !927
  %conv = zext i16 %3 to i32, !dbg !925
  %cmp = icmp ne i32 %conv, 157, !dbg !928
  br i1 %cmp, label %if.then, label %if.end18, !dbg !929

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %target_type, align 4, !dbg !930
  switch i32 %4, label %sw.default [
    i32 4, label %sw.bb
    i32 6, label %sw.bb14
    i32 7, label %sw.bb14
    i32 9, label %sw.bb14
    i32 10, label %sw.bb14
    i32 11, label %sw.bb14
    i32 12, label %sw.bb14
    i32 13, label %sw.bb14
  ], !dbg !932

sw.bb:                                            ; preds = %if.then
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !933
  %opcode3 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 3, !dbg !936
  %6 = load i16, i16* %opcode3, align 2, !dbg !936
  %conv4 = zext i16 %6 to i32, !dbg !933
  %cmp5 = icmp eq i32 %conv4, 112, !dbg !937
  br i1 %cmp5, label %if.then7, label %if.end13, !dbg !938

if.then7:                                         ; preds = %sw.bb
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !939
  %common = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_common*, !dbg !942
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !943
  %8 = load i8, i8* %type, align 1, !dbg !943
  %conv8 = zext i8 %8 to i32, !dbg !939
  %cmp9 = icmp ne i32 %conv8, 4, !dbg !944
  br i1 %cmp9, label %if.then11, label %if.end, !dbg !945

if.then11:                                        ; preds = %if.then7
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !946
  %call12 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %9) #3, !dbg !946
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 414, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %call12) #3, !dbg !946
  store i32 12323, i32* %retval, align 4, !dbg !948
  br label %return, !dbg !948

if.end:                                           ; preds = %if.then7
  br label %sw.epilog, !dbg !949

if.end13:                                         ; preds = %sw.bb
  br label %sw.bb14, !dbg !950

sw.bb14:                                          ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.end13
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !951
  %type15 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 2, !dbg !951
  %11 = load i8, i8* %type15, align 1, !dbg !951
  %conv16 = zext i8 %11 to i32, !dbg !951
  %call17 = call i8* @acpi_ut_get_type_name(i32 %conv16) #3, !dbg !951
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !951
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %12, i32 0, i32 4, !dbg !951
  %ascii = bitcast %union.acpi_name_union* %name to [4 x i8]*, !dbg !951
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !951
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 435, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i8* %call17, i8* %arraydecay) #3, !dbg !951
  store i32 12323, i32* %retval, align 4, !dbg !952
  br label %return, !dbg !952

sw.default:                                       ; preds = %if.then
  br label %sw.epilog, !dbg !953

sw.epilog:                                        ; preds = %sw.default, %if.end
  br label %if.end18, !dbg !954

if.end18:                                         ; preds = %sw.epilog, %entry
  %13 = load i32, i32* %target_type, align 4, !dbg !955
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !956
  %call19 = call i32 @acpi_ex_resolve_object(%union.acpi_operand_object** %source_desc.addr, i32 %13, %struct.acpi_walk_state* %14) #3, !dbg !957
  store i32 %call19, i32* %status, align 4, !dbg !958
  %15 = load i32, i32* %status, align 4, !dbg !959
  %tobool = icmp ne i32 %15, 0, !dbg !959
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !961

if.then20:                                        ; preds = %if.end18
  %16 = load i32, i32* %status, align 4, !dbg !962
  store i32 %16, i32* %retval, align 4, !dbg !962
  br label %return, !dbg !962

if.end21:                                         ; preds = %if.end18
  %17 = load i32, i32* %target_type, align 4, !dbg !964
  switch i32 %17, label %sw.default45 [
    i32 1, label %sw.bb22
    i32 2, label %sw.bb22
    i32 3, label %sw.bb22
    i32 14, label %sw.bb43
    i32 17, label %sw.bb43
    i32 18, label %sw.bb43
    i32 19, label %sw.bb43
  ], !dbg !965

sw.bb22:                                          ; preds = %if.end21, %if.end21, %if.end21
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !966
  %opcode23 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 3, !dbg !969
  %19 = load i16, i16* %opcode23, align 2, !dbg !969
  %conv24 = zext i16 %19 to i32, !dbg !966
  %cmp25 = icmp eq i32 %conv24, 157, !dbg !970
  br i1 %cmp25, label %if.then28, label %lor.lhs.false, !dbg !971

lor.lhs.false:                                    ; preds = %sw.bb22
  %20 = load i8, i8* %implicit_conversion.addr, align 1, !dbg !972
  %tobool27 = icmp ne i8 %20, 0, !dbg !972
  br i1 %tobool27, label %if.end30, label %if.then28, !dbg !973

if.then28:                                        ; preds = %lor.lhs.false, %sw.bb22
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !974
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !976
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !977
  %call29 = call i32 @acpi_ex_store_direct_to_node(%union.acpi_operand_object* %21, %struct.acpi_namespace_node* %22, %struct.acpi_walk_state* %23) #3, !dbg !978
  store i32 %call29, i32* %status, align 4, !dbg !979
  br label %sw.epilog47, !dbg !980

if.end30:                                         ; preds = %lor.lhs.false
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !981
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc, align 8, !dbg !982
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !983
  %call31 = call i32 @acpi_ex_store_object_to_object(%union.acpi_operand_object* %24, %union.acpi_operand_object* %25, %union.acpi_operand_object** %new_desc, %struct.acpi_walk_state* %26) #3, !dbg !984
  store i32 %call31, i32* %status, align 4, !dbg !985
  %27 = load i32, i32* %status, align 4, !dbg !986
  %tobool32 = icmp ne i32 %27, 0, !dbg !986
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !988

if.then33:                                        ; preds = %if.end30
  %28 = load i32, i32* %status, align 4, !dbg !989
  store i32 %28, i32* %retval, align 4, !dbg !989
  br label %return, !dbg !989

if.end34:                                         ; preds = %if.end30
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_desc, align 8, !dbg !991
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc, align 8, !dbg !993
  %cmp35 = icmp ne %union.acpi_operand_object* %29, %30, !dbg !994
  br i1 %cmp35, label %if.then37, label %if.end42, !dbg !995

if.then37:                                        ; preds = %if.end34
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !996
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_desc, align 8, !dbg !998
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_desc, align 8, !dbg !999
  %common38 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_common*, !dbg !1000
  %type39 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common38, i32 0, i32 2, !dbg !1001
  %34 = load i8, i8* %type39, align 1, !dbg !1001
  %conv40 = zext i8 %34 to i32, !dbg !999
  %call41 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %31, %union.acpi_operand_object* %32, i32 %conv40) #3, !dbg !1002
  store i32 %call41, i32* %status, align 4, !dbg !1003
  br label %if.end42, !dbg !1004

if.end42:                                         ; preds = %if.then37, %if.end34
  br label %sw.epilog47, !dbg !1005

sw.bb43:                                          ; preds = %if.end21, %if.end21, %if.end21, %if.end21
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1006
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc, align 8, !dbg !1007
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1008
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %37, i32 0, i32 43, !dbg !1009
  %call44 = call i32 @acpi_ex_write_data_to_field(%union.acpi_operand_object* %35, %union.acpi_operand_object* %36, %union.acpi_operand_object** %result_obj) #3, !dbg !1010
  store i32 %call44, i32* %status, align 4, !dbg !1011
  br label %sw.epilog47, !dbg !1012

sw.default45:                                     ; preds = %if.end21
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1013
  %39 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1014
  %40 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1015
  %call46 = call i32 @acpi_ex_store_direct_to_node(%union.acpi_operand_object* %38, %struct.acpi_namespace_node* %39, %struct.acpi_walk_state* %40) #3, !dbg !1016
  store i32 %call46, i32* %status, align 4, !dbg !1017
  br label %sw.epilog47, !dbg !1018

sw.epilog47:                                      ; preds = %sw.default45, %sw.bb43, %if.end42, %if.then28
  %41 = load i32, i32* %status, align 4, !dbg !1019
  store i32 %41, i32* %retval, align 4, !dbg !1019
  br label %return, !dbg !1019

return:                                           ; preds = %sw.epilog47, %if.then33, %if.then20, %sw.bb14, %if.then11
  %42 = load i32, i32* %retval, align 4, !dbg !1020
  ret i32 %42, !dbg !1020
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ex_store_object_to_index(%union.acpi_operand_object* %source_desc, %union.acpi_operand_object* %index_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !1021 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca %union.acpi_operand_object*, align 8
  %index_desc.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %new_desc = alloca %union.acpi_operand_object*, align 8
  %value = alloca i8, align 1
  %i = alloca i32, align 4
  store %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc.addr, metadata !1022, metadata !DIExpression()), !dbg !1023
  store %union.acpi_operand_object* %index_desc, %union.acpi_operand_object** %index_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %index_desc.addr, metadata !1024, metadata !DIExpression()), !dbg !1025
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1026, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1028, metadata !DIExpression()), !dbg !1029
  store i32 0, i32* %status, align 4, !dbg !1029
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1030, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %new_desc, metadata !1032, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.declare(metadata i8* %value, metadata !1034, metadata !DIExpression()), !dbg !1035
  store i8 0, i8* %value, align 1, !dbg !1035
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1036, metadata !DIExpression()), !dbg !1037
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %index_desc.addr, align 8, !dbg !1038
  %reference = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_reference*, !dbg !1039
  %target_type = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 6, !dbg !1040
  %1 = load i8, i8* %target_type, align 2, !dbg !1040
  %conv = zext i8 %1 to i32, !dbg !1038
  switch i32 %conv, label %sw.default61 [
    i32 4, label %sw.bb
    i32 14, label %sw.bb32
  ], !dbg !1041

sw.bb:                                            ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %index_desc.addr, align 8, !dbg !1042
  %reference1 = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_reference*, !dbg !1044
  %where = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference1, i32 0, i32 10, !dbg !1045
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %where, align 8, !dbg !1045
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8, !dbg !1046
  store %union.acpi_operand_object* %4, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1047
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1048
  %common = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_common*, !dbg !1050
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1051
  %6 = load i8, i8* %type, align 1, !dbg !1051
  %conv2 = zext i8 %6 to i32, !dbg !1048
  %cmp = icmp eq i32 %conv2, 20, !dbg !1052
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1053

land.lhs.true:                                    ; preds = %sw.bb
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1054
  %reference4 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_reference*, !dbg !1055
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference4, i32 0, i32 5, !dbg !1056
  %8 = load i8, i8* %class, align 1, !dbg !1056
  %conv5 = zext i8 %8 to i32, !dbg !1054
  %cmp6 = icmp eq i32 %conv5, 4, !dbg !1057
  br i1 %cmp6, label %if.then, label %if.else, !dbg !1058

if.then:                                          ; preds = %land.lhs.true
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1059
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %9) #3, !dbg !1061
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1062
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %new_desc, align 8, !dbg !1063
  br label %if.end9, !dbg !1064

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1065
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1067
  %call = call i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %11, %union.acpi_operand_object** %new_desc, %struct.acpi_walk_state* %12) #3, !dbg !1068
  store i32 %call, i32* %status, align 4, !dbg !1069
  %13 = load i32, i32* %status, align 4, !dbg !1070
  %tobool = icmp ne i32 %13, 0, !dbg !1070
  br i1 %tobool, label %if.then8, label %if.end, !dbg !1072

if.then8:                                         ; preds = %if.else
  %14 = load i32, i32* %status, align 4, !dbg !1073
  store i32 %14, i32* %retval, align 4, !dbg !1073
  br label %return, !dbg !1073

if.end:                                           ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1075
  %tobool10 = icmp ne %union.acpi_operand_object* %15, null, !dbg !1075
  br i1 %tobool10, label %if.then11, label %if.end17, !dbg !1077

if.then11:                                        ; preds = %if.end9
  store i32 0, i32* %i, align 4, !dbg !1078
  br label %for.cond, !dbg !1081

for.cond:                                         ; preds = %for.inc, %if.then11
  %16 = load i32, i32* %i, align 4, !dbg !1082
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %index_desc.addr, align 8, !dbg !1084
  %reference12 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_reference*, !dbg !1085
  %object = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference12, i32 0, i32 8, !dbg !1086
  %18 = load i8*, i8** %object, align 8, !dbg !1086
  %19 = bitcast i8* %18 to %union.acpi_operand_object*, !dbg !1087
  %common13 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_common*, !dbg !1088
  %reference_count = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common13, i32 0, i32 3, !dbg !1089
  %20 = load i16, i16* %reference_count, align 2, !dbg !1089
  %conv14 = zext i16 %20 to i32, !dbg !1090
  %cmp15 = icmp ult i32 %16, %conv14, !dbg !1091
  br i1 %cmp15, label %for.body, label %for.end, !dbg !1092

for.body:                                         ; preds = %for.cond
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1093
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %21) #3, !dbg !1095
  br label %for.inc, !dbg !1096

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !1097
  %inc = add i32 %22, 1, !dbg !1097
  store i32 %inc, i32* %i, align 4, !dbg !1097
  br label %for.cond, !dbg !1098, !llvm.loop !1099

for.end:                                          ; preds = %for.cond
  br label %if.end17, !dbg !1101

if.end17:                                         ; preds = %for.end, %if.end9
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_desc, align 8, !dbg !1102
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %index_desc.addr, align 8, !dbg !1103
  %reference18 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_reference*, !dbg !1104
  %where19 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference18, i32 0, i32 10, !dbg !1105
  %25 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %where19, align 8, !dbg !1105
  store %union.acpi_operand_object* %23, %union.acpi_operand_object** %25, align 8, !dbg !1106
  store i32 1, i32* %i, align 4, !dbg !1107
  br label %for.cond20, !dbg !1109

for.cond20:                                       ; preds = %for.inc29, %if.end17
  %26 = load i32, i32* %i, align 4, !dbg !1110
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %index_desc.addr, align 8, !dbg !1112
  %reference21 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_reference*, !dbg !1113
  %object22 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference21, i32 0, i32 8, !dbg !1114
  %28 = load i8*, i8** %object22, align 8, !dbg !1114
  %29 = bitcast i8* %28 to %union.acpi_operand_object*, !dbg !1115
  %common23 = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_common*, !dbg !1116
  %reference_count24 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common23, i32 0, i32 3, !dbg !1117
  %30 = load i16, i16* %reference_count24, align 2, !dbg !1117
  %conv25 = zext i16 %30 to i32, !dbg !1118
  %cmp26 = icmp ult i32 %26, %conv25, !dbg !1119
  br i1 %cmp26, label %for.body28, label %for.end31, !dbg !1120

for.body28:                                       ; preds = %for.cond20
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_desc, align 8, !dbg !1121
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %31) #3, !dbg !1123
  br label %for.inc29, !dbg !1124

for.inc29:                                        ; preds = %for.body28
  %32 = load i32, i32* %i, align 4, !dbg !1125
  %inc30 = add i32 %32, 1, !dbg !1125
  store i32 %inc30, i32* %i, align 4, !dbg !1125
  br label %for.cond20, !dbg !1126, !llvm.loop !1127

for.end31:                                        ; preds = %for.cond20
  br label %sw.epilog62, !dbg !1129

sw.bb32:                                          ; preds = %entry
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %index_desc.addr, align 8, !dbg !1130
  %reference33 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_reference*, !dbg !1131
  %object34 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference33, i32 0, i32 8, !dbg !1132
  %34 = load i8*, i8** %object34, align 8, !dbg !1132
  %35 = bitcast i8* %34 to %union.acpi_operand_object*, !dbg !1130
  store %union.acpi_operand_object* %35, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1133
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1134
  %common35 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_common*, !dbg !1136
  %type36 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common35, i32 0, i32 2, !dbg !1137
  %37 = load i8, i8* %type36, align 1, !dbg !1137
  %conv37 = zext i8 %37 to i32, !dbg !1134
  %cmp38 = icmp ne i32 %conv37, 3, !dbg !1138
  br i1 %cmp38, label %land.lhs.true40, label %if.end47, !dbg !1139

land.lhs.true40:                                  ; preds = %sw.bb32
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1140
  %common41 = bitcast %union.acpi_operand_object* %38 to %struct.acpi_object_common*, !dbg !1141
  %type42 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common41, i32 0, i32 2, !dbg !1142
  %39 = load i8, i8* %type42, align 1, !dbg !1142
  %conv43 = zext i8 %39 to i32, !dbg !1140
  %cmp44 = icmp ne i32 %conv43, 2, !dbg !1143
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !1144

if.then46:                                        ; preds = %land.lhs.true40
  store i32 12291, i32* %retval, align 4, !dbg !1145
  br label %return, !dbg !1145

if.end47:                                         ; preds = %land.lhs.true40, %sw.bb32
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1147
  %common48 = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_common*, !dbg !1148
  %type49 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common48, i32 0, i32 2, !dbg !1149
  %41 = load i8, i8* %type49, align 1, !dbg !1149
  %conv50 = zext i8 %41 to i32, !dbg !1147
  switch i32 %conv50, label %sw.default [
    i32 1, label %sw.bb51
    i32 3, label %sw.bb54
    i32 2, label %sw.bb54
  ], !dbg !1150

sw.bb51:                                          ; preds = %if.end47
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1151
  %integer = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_integer*, !dbg !1153
  %value52 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1154
  %43 = load i64, i64* %value52, align 8, !dbg !1154
  %conv53 = trunc i64 %43 to i8, !dbg !1155
  store i8 %conv53, i8* %value, align 1, !dbg !1156
  br label %sw.epilog, !dbg !1157

sw.bb54:                                          ; preds = %if.end47, %if.end47
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1158
  %buffer = bitcast %union.acpi_operand_object* %44 to %struct.acpi_object_buffer*, !dbg !1159
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 5, !dbg !1160
  %45 = load i8*, i8** %pointer, align 8, !dbg !1160
  %arrayidx = getelementptr i8, i8* %45, i64 0, !dbg !1158
  %46 = load i8, i8* %arrayidx, align 1, !dbg !1158
  store i8 %46, i8* %value, align 1, !dbg !1161
  br label %sw.epilog, !dbg !1162

sw.default:                                       ; preds = %if.end47
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1163
  %call55 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %47) #3, !dbg !1163
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 309, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i8* %call55) #3, !dbg !1163
  store i32 12291, i32* %retval, align 4, !dbg !1164
  br label %return, !dbg !1164

sw.epilog:                                        ; preds = %sw.bb54, %sw.bb51
  %48 = load i8, i8* %value, align 1, !dbg !1165
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1166
  %buffer56 = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_buffer*, !dbg !1167
  %pointer57 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer56, i32 0, i32 5, !dbg !1168
  %50 = load i8*, i8** %pointer57, align 8, !dbg !1168
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %index_desc.addr, align 8, !dbg !1169
  %reference58 = bitcast %union.acpi_operand_object* %51 to %struct.acpi_object_reference*, !dbg !1170
  %value59 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference58, i32 0, i32 13, !dbg !1171
  %52 = load i32, i32* %value59, align 8, !dbg !1171
  %idxprom = zext i32 %52 to i64, !dbg !1166
  %arrayidx60 = getelementptr i8, i8* %50, i64 %idxprom, !dbg !1166
  store i8 %48, i8* %arrayidx60, align 1, !dbg !1172
  br label %sw.epilog62, !dbg !1173

sw.default61:                                     ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 321, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0)) #3, !dbg !1174
  store i32 12323, i32* %status, align 4, !dbg !1175
  br label %sw.epilog62, !dbg !1176

sw.epilog62:                                      ; preds = %sw.default61, %sw.epilog, %for.end31
  %53 = load i32, i32* %status, align 4, !dbg !1177
  store i32 %53, i32* %retval, align 4, !dbg !1177
  br label %return, !dbg !1177

return:                                           ; preds = %sw.epilog62, %sw.default, %if.then46, %if.then8
  %54 = load i32, i32* %retval, align 4, !dbg !1178
  ret i32 %54, !dbg !1178
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_store_object_to_local(i8 zeroext, i32, %union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_do_debug_object(%union.acpi_operand_object*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_type(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_object(%union.acpi_operand_object**, i32, %struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ex_store_direct_to_node(%union.acpi_operand_object* %source_desc, %struct.acpi_namespace_node* %node, %struct.acpi_walk_state* %walk_state) #0 !dbg !1179 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca %union.acpi_operand_object*, align 8
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %new_desc = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1184, metadata !DIExpression()), !dbg !1185
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1186, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1188, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %new_desc, metadata !1190, metadata !DIExpression()), !dbg !1191
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1192
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1193
  %call = call i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %0, %union.acpi_operand_object** %new_desc, %struct.acpi_walk_state* %1) #3, !dbg !1194
  store i32 %call, i32* %status, align 4, !dbg !1195
  %2 = load i32, i32* %status, align 4, !dbg !1196
  %tobool = icmp ne i32 %2, 0, !dbg !1196
  br i1 %tobool, label %if.then, label %if.end, !dbg !1198

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !1199
  store i32 %3, i32* %retval, align 4, !dbg !1199
  br label %return, !dbg !1199

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1201
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_desc, align 8, !dbg !1202
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_desc, align 8, !dbg !1203
  %common = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_common*, !dbg !1204
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1205
  %7 = load i8, i8* %type, align 1, !dbg !1205
  %conv = zext i8 %7 to i32, !dbg !1203
  %call1 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %4, %union.acpi_operand_object* %5, i32 %conv) #3, !dbg !1206
  store i32 %call1, i32* %status, align 4, !dbg !1207
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_desc, align 8, !dbg !1208
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %8) #3, !dbg !1209
  %9 = load i32, i32* %status, align 4, !dbg !1210
  store i32 %9, i32* %retval, align 4, !dbg !1210
  br label %return, !dbg !1210

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !1211
  ret i32 %10, !dbg !1211
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_store_object_to_object(%union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_write_data_to_field(%union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!805, !806, !807, !808}
!llvm.ident = !{!809}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !803, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !802, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exstore.c", directory: "/home/lizy2001/genbc/linux")
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
!17 = !{!18, !24, !31, !93, !47, !43, !33}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 432, size: 1600, elements: !26)
!26 = !{!27, !36, !800, !801}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !25, file: !6, line: 433, baseType: !28, size: 128)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 427, size: 128, elements: !29)
!29 = !{!30, !32}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !28, file: !6, line: 428, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !28, file: !6, line: 429, baseType: !33, size: 8, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !25, file: !6, line: 434, baseType: !37, size: 576)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 367, size: 576, elements: !38)
!38 = !{!39, !51, !67, !79, !115, !129, !138, !451, !468, !483, !496, !574, !586, !600, !610, !628, !650, !669, !688, !707, !720, !746, !763, !776, !790, !799}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !37, file: !6, line: 368, baseType: !40, size: 128)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !41)
!41 = !{!42, !44, !45, !46, !50}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !40, file: !6, line: 74, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 72)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !40, file: !6, line: 74, baseType: !47, size: 16, offset: 80)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !37, file: !6, line: 369, baseType: !52, size: 192)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !63}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !6, line: 77, baseType: !43, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !6, line: 77, baseType: !47, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !52, file: !6, line: 77, baseType: !60, size: 24, offset: 104)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 3)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !52, file: !6, line: 78, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !66)
!66 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !37, file: !6, line: 370, baseType: !68, size: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !78}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !6, line: 94, baseType: !43, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !6, line: 94, baseType: !47, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !68, file: !6, line: 94, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !68, file: !6, line: 94, baseType: !20, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !37, file: !6, line: 371, baseType: !80, size: 384)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !89, !90, !91, !92}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !6, line: 98, baseType: !43, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !6, line: 98, baseType: !47, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !80, file: !6, line: 98, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !6, line: 98, baseType: !20, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !80, file: !6, line: 99, baseType: !20, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !80, file: !6, line: 100, baseType: !88, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !6, line: 101, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !95, line: 133, size: 384, elements: !96)
!95 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98, !99, !100, !101, !110, !111, !112, !113}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !94, file: !95, line: 134, baseType: !43, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !95, line: 135, baseType: !33, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !95, line: 136, baseType: !33, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !95, line: 137, baseType: !47, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !95, line: 138, baseType: !102, size: 32, offset: 96)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !103, line: 327, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !102, file: !103, line: 328, baseType: !20, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !102, file: !103, line: 329, baseType: !107, size: 32)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 4)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !94, file: !95, line: 139, baseType: !93, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !94, file: !95, line: 140, baseType: !93, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !94, file: !95, line: 141, baseType: !93, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !94, file: !95, line: 142, baseType: !114, size: 16, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !47)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !37, file: !6, line: 372, baseType: !116, size: 384)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !126, !127, !128}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !6, line: 105, baseType: !43, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !6, line: 105, baseType: !47, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !116, file: !6, line: 105, baseType: !93, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !116, file: !6, line: 106, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !116, file: !6, line: 107, baseType: !88, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !116, file: !6, line: 108, baseType: !20, size: 32, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !116, file: !6, line: 109, baseType: !20, size: 32, offset: 352)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !37, file: !6, line: 373, baseType: !130, size: 192)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !130, file: !6, line: 119, baseType: !43, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !130, file: !6, line: 119, baseType: !47, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !130, file: !6, line: 119, baseType: !31, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !37, file: !6, line: 374, baseType: !139, size: 448)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 143, size: 448, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !448, !449, !450}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !139, file: !6, line: 144, baseType: !43, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !6, line: 144, baseType: !33, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !6, line: 144, baseType: !33, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !139, file: !6, line: 144, baseType: !47, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !6, line: 144, baseType: !33, size: 8, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !139, file: !6, line: 144, baseType: !33, size: 8, offset: 104)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 112)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !139, file: !6, line: 146, baseType: !33, size: 8, offset: 120)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !139, file: !6, line: 147, baseType: !43, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !6, line: 148, baseType: !43, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !139, file: !6, line: 149, baseType: !88, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !139, file: !6, line: 153, baseType: !153, size: 64, offset: 320)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !6, line: 150, size: 64, elements: !154)
!154 = !{!155, !447}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !153, file: !6, line: 151, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !95, line: 248, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!18, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !162, line: 37, size: 9024, elements: !163)
!162 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !393, !394, !395, !396, !397, !401, !403, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !430, !431, !432, !433, !434, !435, !436, !437, !439, !445}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !162, line: 38, baseType: !160, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !161, file: !162, line: 39, baseType: !33, size: 8, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !161, file: !162, line: 40, baseType: !33, size: 8, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !161, file: !162, line: 41, baseType: !47, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !161, file: !162, line: 42, baseType: !33, size: 8, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !161, file: !162, line: 43, baseType: !33, size: 8, offset: 104)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !161, file: !162, line: 44, baseType: !33, size: 8, offset: 112)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !161, file: !162, line: 45, baseType: !114, size: 16, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !161, file: !162, line: 46, baseType: !33, size: 8, offset: 144)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !161, file: !162, line: 47, baseType: !33, size: 8, offset: 152)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !161, file: !162, line: 48, baseType: !33, size: 8, offset: 160)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !161, file: !162, line: 49, baseType: !33, size: 8, offset: 168)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !161, file: !162, line: 50, baseType: !33, size: 8, offset: 176)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !161, file: !162, line: 51, baseType: !33, size: 8, offset: 184)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !161, file: !162, line: 52, baseType: !33, size: 8, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !161, file: !162, line: 53, baseType: !33, size: 8, offset: 200)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !161, file: !162, line: 54, baseType: !88, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !161, file: !162, line: 55, baseType: !20, size: 32, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !161, file: !162, line: 56, baseType: !20, size: 32, offset: 352)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !161, file: !162, line: 57, baseType: !20, size: 32, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !161, file: !162, line: 58, baseType: !20, size: 32, offset: 416)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !161, file: !162, line: 60, baseType: !186, size: 640, offset: 448)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !95, line: 893, size: 640, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !274, !275, !391, !392}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !186, file: !95, line: 894, baseType: !88, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !186, file: !95, line: 895, baseType: !88, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !186, file: !95, line: 896, baseType: !88, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !186, file: !95, line: 897, baseType: !88, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !186, file: !95, line: 898, baseType: !88, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !186, file: !95, line: 899, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !95, line: 875, size: 1600, elements: !196)
!196 = !{!197, !217, !233}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !195, file: !95, line: 876, baseType: !198, size: 448)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !95, line: 828, size: 448, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !216}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !198, file: !95, line: 829, baseType: !194, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !95, line: 829, baseType: !33, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !95, line: 829, baseType: !33, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !198, file: !95, line: 829, baseType: !47, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !198, file: !95, line: 829, baseType: !88, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !95, line: 829, baseType: !194, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !95, line: 829, baseType: !93, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !95, line: 829, baseType: !208, size: 64, offset: 320)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !95, line: 716, size: 64, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !208, file: !95, line: 717, baseType: !64, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !208, file: !95, line: 718, baseType: !20, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !208, file: !95, line: 719, baseType: !76, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !208, file: !95, line: 720, baseType: !88, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !95, line: 721, baseType: !76, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !208, file: !95, line: 722, baseType: !194, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !198, file: !95, line: 829, baseType: !33, size: 8, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !195, file: !95, line: 877, baseType: !218, size: 640)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !95, line: 835, size: 640, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !218, file: !95, line: 836, baseType: !194, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !218, file: !95, line: 836, baseType: !33, size: 8, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !95, line: 836, baseType: !33, size: 8, offset: 72)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !218, file: !95, line: 836, baseType: !47, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !218, file: !95, line: 836, baseType: !88, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !95, line: 836, baseType: !194, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !218, file: !95, line: 836, baseType: !93, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !218, file: !95, line: 836, baseType: !208, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !218, file: !95, line: 836, baseType: !33, size: 8, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !218, file: !95, line: 836, baseType: !76, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !218, file: !95, line: 837, baseType: !88, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !218, file: !95, line: 838, baseType: !20, size: 32, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !95, line: 839, baseType: !20, size: 32, offset: 608)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !195, file: !95, line: 878, baseType: !234, size: 1600)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !95, line: 846, size: 1600, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !95, line: 847, baseType: !194, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !234, file: !95, line: 847, baseType: !33, size: 8, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !95, line: 847, baseType: !33, size: 8, offset: 72)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !234, file: !95, line: 847, baseType: !47, size: 16, offset: 80)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !234, file: !95, line: 847, baseType: !88, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !95, line: 847, baseType: !194, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !234, file: !95, line: 847, baseType: !93, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !234, file: !95, line: 847, baseType: !208, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !234, file: !95, line: 847, baseType: !33, size: 8, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !234, file: !95, line: 847, baseType: !194, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !234, file: !95, line: 848, baseType: !194, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !234, file: !95, line: 849, baseType: !76, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !234, file: !95, line: 850, baseType: !33, size: 8, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !234, file: !95, line: 851, baseType: !76, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !234, file: !95, line: 852, baseType: !76, size: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !234, file: !95, line: 853, baseType: !76, size: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !234, file: !95, line: 854, baseType: !107, size: 32, offset: 896)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !234, file: !95, line: 855, baseType: !20, size: 32, offset: 928)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !234, file: !95, line: 856, baseType: !20, size: 32, offset: 960)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !234, file: !95, line: 857, baseType: !20, size: 32, offset: 992)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !234, file: !95, line: 858, baseType: !20, size: 32, offset: 1024)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !234, file: !95, line: 859, baseType: !20, size: 32, offset: 1056)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !234, file: !95, line: 860, baseType: !20, size: 32, offset: 1088)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !234, file: !95, line: 861, baseType: !20, size: 32, offset: 1120)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !234, file: !95, line: 862, baseType: !20, size: 32, offset: 1152)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !234, file: !95, line: 863, baseType: !20, size: 32, offset: 1184)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !234, file: !95, line: 864, baseType: !20, size: 32, offset: 1216)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !234, file: !95, line: 865, baseType: !20, size: 32, offset: 1248)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !234, file: !95, line: 866, baseType: !20, size: 32, offset: 1280)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !234, file: !95, line: 867, baseType: !20, size: 32, offset: 1312)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !234, file: !95, line: 868, baseType: !47, size: 16, offset: 1344)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !234, file: !95, line: 869, baseType: !33, size: 8, offset: 1360)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !234, file: !95, line: 870, baseType: !33, size: 8, offset: 1368)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !234, file: !95, line: 871, baseType: !33, size: 8, offset: 1376)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !234, file: !95, line: 872, baseType: !271, size: 160, offset: 1384)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 160, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 20)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !186, file: !95, line: 900, baseType: !93, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !186, file: !95, line: 901, baseType: !276, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !95, line: 663, size: 640, elements: !278)
!278 = !{!279, !287, !300, !309, !318, !331, !345, !357, !369}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !277, file: !95, line: 664, baseType: !280, size: 128)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !95, line: 567, size: 128, elements: !281)
!281 = !{!282, !283, !284, !285, !286}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !95, line: 568, baseType: !31, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !280, file: !95, line: 568, baseType: !33, size: 8, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !95, line: 568, baseType: !33, size: 8, offset: 72)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !280, file: !95, line: 568, baseType: !47, size: 16, offset: 80)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !95, line: 568, baseType: !47, size: 16, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !277, file: !95, line: 665, baseType: !288, size: 384)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !95, line: 593, size: 384, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !95, line: 594, baseType: !31, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !95, line: 594, baseType: !33, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !95, line: 594, baseType: !33, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !95, line: 594, baseType: !47, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !95, line: 594, baseType: !47, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !288, file: !95, line: 594, baseType: !47, size: 16, offset: 112)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !288, file: !95, line: 595, baseType: !194, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !288, file: !95, line: 596, baseType: !88, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !288, file: !95, line: 597, baseType: !88, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !288, file: !95, line: 598, baseType: !64, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !277, file: !95, line: 666, baseType: !301, size: 192)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !95, line: 573, size: 192, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !95, line: 574, baseType: !31, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !95, line: 574, baseType: !33, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !95, line: 574, baseType: !33, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !95, line: 574, baseType: !47, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !95, line: 574, baseType: !47, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !301, file: !95, line: 574, baseType: !43, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !277, file: !95, line: 667, baseType: !310, size: 192)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !95, line: 604, size: 192, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !95, line: 605, baseType: !31, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !95, line: 605, baseType: !33, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !95, line: 605, baseType: !33, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !95, line: 605, baseType: !47, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !95, line: 605, baseType: !47, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !310, file: !95, line: 605, baseType: !93, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !277, file: !95, line: 668, baseType: !319, size: 448)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !95, line: 608, size: 448, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !95, line: 609, baseType: !31, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !95, line: 609, baseType: !33, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !95, line: 609, baseType: !33, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !95, line: 609, baseType: !47, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !95, line: 609, baseType: !47, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !319, file: !95, line: 609, baseType: !20, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !319, file: !95, line: 610, baseType: !194, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !319, file: !95, line: 611, baseType: !88, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !319, file: !95, line: 612, baseType: !88, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !319, file: !95, line: 613, baseType: !20, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !277, file: !95, line: 669, baseType: !332, size: 512)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !95, line: 580, size: 512, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !95, line: 581, baseType: !31, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !95, line: 581, baseType: !33, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !95, line: 581, baseType: !33, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !95, line: 581, baseType: !47, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !95, line: 581, baseType: !47, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !332, file: !95, line: 581, baseType: !20, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !332, file: !95, line: 582, baseType: !43, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !332, file: !95, line: 583, baseType: !43, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !332, file: !95, line: 584, baseType: !160, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !332, file: !95, line: 585, baseType: !31, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !332, file: !95, line: 586, baseType: !20, size: 32, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !277, file: !95, line: 670, baseType: !346, size: 320)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !95, line: 620, size: 320, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !95, line: 621, baseType: !31, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !95, line: 621, baseType: !33, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !95, line: 621, baseType: !33, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !95, line: 621, baseType: !47, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !95, line: 621, baseType: !47, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !346, file: !95, line: 621, baseType: !33, size: 8, offset: 112)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !346, file: !95, line: 622, baseType: !160, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !346, file: !95, line: 623, baseType: !43, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !346, file: !95, line: 624, baseType: !64, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !277, file: !95, line: 671, baseType: !358, size: 640)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !95, line: 631, size: 640, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !95, line: 632, baseType: !31, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !95, line: 632, baseType: !33, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !95, line: 632, baseType: !33, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !95, line: 632, baseType: !47, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !95, line: 632, baseType: !47, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !358, file: !95, line: 633, baseType: !366, size: 512, offset: 128)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 512, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 8)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !277, file: !95, line: 672, baseType: !370, size: 320)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !95, line: 654, size: 320, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !380}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !95, line: 655, baseType: !31, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !370, file: !95, line: 655, baseType: !33, size: 8, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !95, line: 655, baseType: !33, size: 8, offset: 72)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !370, file: !95, line: 655, baseType: !47, size: 16, offset: 80)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !370, file: !95, line: 655, baseType: !47, size: 16, offset: 96)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !370, file: !95, line: 655, baseType: !33, size: 8, offset: 112)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !370, file: !95, line: 656, baseType: !93, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !370, file: !95, line: 657, baseType: !43, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !370, file: !95, line: 658, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !95, line: 645, size: 128, elements: !383)
!383 = !{!384, !390}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !382, file: !95, line: 646, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1052, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389, !20, !31}
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !31)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !382, file: !95, line: 647, baseType: !31, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !186, file: !95, line: 902, baseType: !194, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !186, file: !95, line: 903, baseType: !20, size: 32, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !161, file: !162, line: 61, baseType: !20, size: 32, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !161, file: !162, line: 62, baseType: !20, size: 32, offset: 1120)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !161, file: !162, line: 63, baseType: !47, size: 16, offset: 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !161, file: !162, line: 64, baseType: !33, size: 8, offset: 1168)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !161, file: !162, line: 66, baseType: !398, size: 2688, offset: 1216)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2688, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 7)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !161, file: !162, line: 67, baseType: !402, size: 3072, offset: 3904)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3072, elements: !367)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !161, file: !162, line: 68, baseType: !404, size: 576, offset: 6976)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 576, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 9)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !161, file: !162, line: 69, baseType: !125, size: 64, offset: 7552)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !161, file: !162, line: 71, baseType: !88, size: 64, offset: 7616)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !161, file: !162, line: 72, baseType: !125, size: 64, offset: 7680)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !161, file: !162, line: 73, baseType: !276, size: 64, offset: 7744)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !161, file: !162, line: 74, baseType: !93, size: 64, offset: 7808)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !161, file: !162, line: 75, baseType: !43, size: 64, offset: 7872)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !161, file: !162, line: 76, baseType: !93, size: 64, offset: 7936)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !161, file: !162, line: 77, baseType: !194, size: 64, offset: 8000)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !161, file: !162, line: 78, baseType: !43, size: 64, offset: 8064)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !161, file: !162, line: 79, baseType: !93, size: 64, offset: 8128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !161, file: !162, line: 80, baseType: !76, size: 64, offset: 8192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !161, file: !162, line: 81, baseType: !194, size: 64, offset: 8256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !161, file: !162, line: 82, baseType: !420, size: 64, offset: 8320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !95, line: 702, size: 128, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !422, file: !95, line: 706, baseType: !20, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !422, file: !95, line: 707, baseType: !20, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !95, line: 708, baseType: !47, size: 16, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !422, file: !95, line: 709, baseType: !33, size: 8, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !422, file: !95, line: 710, baseType: !33, size: 8, offset: 88)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !422, file: !95, line: 711, baseType: !33, size: 8, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !161, file: !162, line: 83, baseType: !194, size: 64, offset: 8384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !161, file: !162, line: 84, baseType: !43, size: 64, offset: 8448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !161, file: !162, line: 85, baseType: !276, size: 64, offset: 8512)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !161, file: !162, line: 86, baseType: !43, size: 64, offset: 8576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !161, file: !162, line: 87, baseType: !276, size: 64, offset: 8640)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !161, file: !162, line: 88, baseType: !194, size: 64, offset: 8704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !161, file: !162, line: 89, baseType: !194, size: 64, offset: 8768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !161, file: !162, line: 90, baseType: !438, size: 64, offset: 8832)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !161, file: !162, line: 91, baseType: !440, size: 64, offset: 8896)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !95, line: 637, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!18, !160, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !161, file: !162, line: 92, baseType: !446, size: 64, offset: 8960)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !95, line: 641, baseType: !157)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !153, file: !6, line: 152, baseType: !43, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !139, file: !6, line: 155, baseType: !20, size: 32, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !139, file: !6, line: 156, baseType: !114, size: 16, offset: 416)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !139, file: !6, line: 157, baseType: !33, size: 8, offset: 432)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !37, file: !6, line: 375, baseType: !452, size: 576)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !6, line: 123, baseType: !43, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !6, line: 123, baseType: !47, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 104)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !452, file: !6, line: 124, baseType: !47, size: 16, offset: 112)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !452, file: !6, line: 125, baseType: !31, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !452, file: !6, line: 126, baseType: !64, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !452, file: !6, line: 127, baseType: !438, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !452, file: !6, line: 128, baseType: !43, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !6, line: 129, baseType: !43, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !452, file: !6, line: 130, baseType: !93, size: 64, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !452, file: !6, line: 131, baseType: !33, size: 8, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !37, file: !6, line: 376, baseType: !469, size: 448)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 448, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !482}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !6, line: 135, baseType: !43, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !6, line: 135, baseType: !47, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 104)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !469, file: !6, line: 136, baseType: !93, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !469, file: !6, line: 137, baseType: !43, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !6, line: 138, baseType: !43, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !469, file: !6, line: 139, baseType: !481, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !469, file: !6, line: 140, baseType: !20, size: 32, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !37, file: !6, line: 377, baseType: !484, size: 320)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 184, size: 320, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !495}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !484, file: !6, line: 185, baseType: !43, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !484, file: !6, line: 185, baseType: !33, size: 8, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !484, file: !6, line: 185, baseType: !33, size: 8, offset: 72)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !484, file: !6, line: 185, baseType: !47, size: 16, offset: 80)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !6, line: 185, baseType: !33, size: 8, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !484, file: !6, line: 185, baseType: !492, size: 128, offset: 128)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 2)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !484, file: !6, line: 185, baseType: !43, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !37, file: !6, line: 378, baseType: !497, size: 384)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 187, size: 384, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !497, file: !6, line: 188, baseType: !43, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !497, file: !6, line: 188, baseType: !33, size: 8, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !497, file: !6, line: 188, baseType: !33, size: 8, offset: 72)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !497, file: !6, line: 188, baseType: !47, size: 16, offset: 80)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !6, line: 188, baseType: !33, size: 8, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !497, file: !6, line: 189, baseType: !492, size: 128, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !497, file: !6, line: 189, baseType: !43, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !497, file: !6, line: 189, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !95, line: 480, size: 576, elements: !509)
!509 = !{!510, !511, !512, !513, !521, !536, !568, !569, !570, !571, !572, !573}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !95, line: 481, baseType: !93, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !508, file: !95, line: 482, baseType: !507, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !508, file: !95, line: 483, baseType: !507, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !508, file: !95, line: 484, baseType: !514, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !95, line: 497, size: 256, elements: !516)
!516 = !{!517, !518, !519, !520}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !515, file: !95, line: 498, baseType: !514, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !515, file: !95, line: 499, baseType: !514, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !515, file: !95, line: 500, baseType: !507, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !515, file: !95, line: 501, baseType: !20, size: 32, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !508, file: !95, line: 485, baseType: !522, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !95, line: 466, size: 320, elements: !524)
!524 = !{!525, !530, !531, !532, !533, !534, !535}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !523, file: !95, line: 467, baseType: !526, size: 128)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !95, line: 459, size: 128, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !526, file: !95, line: 460, baseType: !33, size: 8)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !526, file: !95, line: 461, baseType: !64, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !523, file: !95, line: 468, baseType: !526, size: 128, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !523, file: !95, line: 469, baseType: !47, size: 16, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !523, file: !95, line: 470, baseType: !33, size: 8, offset: 272)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !523, file: !95, line: 471, baseType: !33, size: 8, offset: 280)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !523, file: !95, line: 472, baseType: !33, size: 8, offset: 288)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !523, file: !95, line: 473, baseType: !33, size: 8, offset: 296)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !508, file: !95, line: 486, baseType: !537, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !95, line: 448, size: 192, elements: !539)
!539 = !{!540, !563, !564, !565, !566, !567}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !538, file: !95, line: 449, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !95, line: 438, size: 64, elements: !542)
!542 = !{!543, !544, !557}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !541, file: !95, line: 439, baseType: !93, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !541, file: !95, line: 440, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !95, line: 419, size: 256, elements: !547)
!547 = !{!548, !553, !554, !555, !556}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !546, file: !95, line: 420, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1049, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!20, !389, !20, !31}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !546, file: !95, line: 421, baseType: !31, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !546, file: !95, line: 422, baseType: !93, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !546, file: !95, line: 423, baseType: !33, size: 8, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !546, file: !95, line: 424, baseType: !33, size: 8, offset: 200)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !541, file: !95, line: 441, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !95, line: 429, size: 128, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !559, file: !95, line: 430, baseType: !93, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !559, file: !95, line: 431, baseType: !558, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !538, file: !95, line: 450, baseType: !522, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !95, line: 451, baseType: !33, size: 8, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !538, file: !95, line: 452, baseType: !33, size: 8, offset: 136)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !538, file: !95, line: 453, baseType: !33, size: 8, offset: 144)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !538, file: !95, line: 454, baseType: !33, size: 8, offset: 152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !508, file: !95, line: 487, baseType: !64, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !508, file: !95, line: 488, baseType: !20, size: 32, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !508, file: !95, line: 489, baseType: !47, size: 16, offset: 480)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !508, file: !95, line: 490, baseType: !47, size: 16, offset: 496)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !508, file: !95, line: 491, baseType: !33, size: 8, offset: 512)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !508, file: !95, line: 492, baseType: !33, size: 8, offset: 520)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !37, file: !6, line: 379, baseType: !575, size: 384)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 192, size: 384, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !575, file: !6, line: 193, baseType: !43, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !575, file: !6, line: 193, baseType: !33, size: 8, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !6, line: 193, baseType: !33, size: 8, offset: 72)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !575, file: !6, line: 193, baseType: !47, size: 16, offset: 80)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !6, line: 193, baseType: !33, size: 8, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !575, file: !6, line: 193, baseType: !492, size: 128, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !575, file: !6, line: 193, baseType: !43, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !575, file: !6, line: 193, baseType: !20, size: 32, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !575, file: !6, line: 194, baseType: !20, size: 32, offset: 352)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !37, file: !6, line: 380, baseType: !587, size: 384)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 197, size: 384, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !6, line: 198, baseType: !43, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !6, line: 198, baseType: !33, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !6, line: 198, baseType: !33, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !6, line: 198, baseType: !47, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !6, line: 198, baseType: !33, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !587, file: !6, line: 200, baseType: !33, size: 8, offset: 104)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !587, file: !6, line: 201, baseType: !33, size: 8, offset: 112)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !587, file: !6, line: 202, baseType: !492, size: 128, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !587, file: !6, line: 202, baseType: !43, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !587, file: !6, line: 202, baseType: !599, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !37, file: !6, line: 381, baseType: !601, size: 320)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 205, size: 320, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !601, file: !6, line: 206, baseType: !43, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !601, file: !6, line: 206, baseType: !33, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !6, line: 206, baseType: !33, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !601, file: !6, line: 206, baseType: !47, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !6, line: 206, baseType: !33, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !601, file: !6, line: 206, baseType: !492, size: 128, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !601, file: !6, line: 206, baseType: !43, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !37, file: !6, line: 382, baseType: !611, size: 384)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 233, size: 384, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !611, file: !6, line: 234, baseType: !43, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 72)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !611, file: !6, line: 234, baseType: !47, size: 16, offset: 80)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 104)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 112)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 120)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !611, file: !6, line: 234, baseType: !93, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !611, file: !6, line: 234, baseType: !20, size: 32, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !611, file: !6, line: 234, baseType: !20, size: 32, offset: 224)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !611, file: !6, line: 234, baseType: !20, size: 32, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 288)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 296)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !611, file: !6, line: 234, baseType: !43, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !37, file: !6, line: 383, baseType: !629, size: 576)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 237, size: 576, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !629, file: !6, line: 238, baseType: !43, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 72)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !629, file: !6, line: 238, baseType: !47, size: 16, offset: 80)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 104)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 112)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 120)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !629, file: !6, line: 238, baseType: !93, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !629, file: !6, line: 238, baseType: !20, size: 32, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !629, file: !6, line: 238, baseType: !20, size: 32, offset: 224)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !629, file: !6, line: 238, baseType: !20, size: 32, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 288)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 296)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !629, file: !6, line: 238, baseType: !47, size: 16, offset: 304)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !629, file: !6, line: 239, baseType: !43, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !629, file: !6, line: 240, baseType: !88, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !629, file: !6, line: 241, baseType: !47, size: 16, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !629, file: !6, line: 242, baseType: !88, size: 64, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !37, file: !6, line: 384, baseType: !651, size: 384)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 262, size: 384, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !651, file: !6, line: 263, baseType: !43, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 72)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !651, file: !6, line: 263, baseType: !47, size: 16, offset: 80)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 104)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 112)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 120)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !651, file: !6, line: 263, baseType: !93, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !651, file: !6, line: 263, baseType: !20, size: 32, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !651, file: !6, line: 263, baseType: !20, size: 32, offset: 224)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !651, file: !6, line: 263, baseType: !20, size: 32, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 288)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 296)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 304)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !651, file: !6, line: 264, baseType: !43, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !37, file: !6, line: 385, baseType: !670, size: 448)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 245, size: 448, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !670, file: !6, line: 246, baseType: !43, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 72)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !670, file: !6, line: 246, baseType: !47, size: 16, offset: 80)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 104)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 112)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 120)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !670, file: !6, line: 246, baseType: !93, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !670, file: !6, line: 246, baseType: !20, size: 32, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !670, file: !6, line: 246, baseType: !20, size: 32, offset: 224)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !670, file: !6, line: 246, baseType: !20, size: 32, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 288)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 296)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !670, file: !6, line: 246, baseType: !43, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !670, file: !6, line: 247, baseType: !43, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !37, file: !6, line: 386, baseType: !689, size: 448)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 250, size: 448, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !6, line: 251, baseType: !43, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !6, line: 251, baseType: !47, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 120)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !6, line: 251, baseType: !93, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !689, file: !6, line: 251, baseType: !20, size: 32, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !689, file: !6, line: 251, baseType: !20, size: 32, offset: 224)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !689, file: !6, line: 251, baseType: !20, size: 32, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 288)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 296)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !689, file: !6, line: 256, baseType: !43, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !689, file: !6, line: 257, baseType: !43, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !37, file: !6, line: 387, baseType: !708, size: 512)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 273, size: 512, elements: !709)
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718, !719}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !708, file: !6, line: 274, baseType: !43, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !708, file: !6, line: 274, baseType: !33, size: 8, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !708, file: !6, line: 274, baseType: !33, size: 8, offset: 72)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !708, file: !6, line: 274, baseType: !47, size: 16, offset: 80)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !6, line: 274, baseType: !33, size: 8, offset: 96)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !708, file: !6, line: 274, baseType: !93, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !708, file: !6, line: 275, baseType: !20, size: 32, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !708, file: !6, line: 276, baseType: !385, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !708, file: !6, line: 277, baseType: !31, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !708, file: !6, line: 278, baseType: !492, size: 128, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !37, file: !6, line: 388, baseType: !721, size: 512)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 281, size: 512, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !728, !729, !730, !736, !737, !738, !744, !745}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !721, file: !6, line: 282, baseType: !43, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !721, file: !6, line: 282, baseType: !33, size: 8, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !721, file: !6, line: 282, baseType: !33, size: 8, offset: 72)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !721, file: !6, line: 282, baseType: !47, size: 16, offset: 80)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !6, line: 282, baseType: !33, size: 8, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !721, file: !6, line: 282, baseType: !33, size: 8, offset: 104)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !721, file: !6, line: 283, baseType: !33, size: 8, offset: 112)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !721, file: !6, line: 284, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1084, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!18, !20, !481, !20, !735, !31, !31}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !721, file: !6, line: 285, baseType: !93, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !721, file: !6, line: 286, baseType: !31, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !721, file: !6, line: 287, baseType: !739, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1102, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!18, !389, !20, !31, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !721, file: !6, line: 288, baseType: !43, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !721, file: !6, line: 289, baseType: !43, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !37, file: !6, line: 389, baseType: !747, size: 512)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 307, size: 512, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !747, file: !6, line: 308, baseType: !43, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !6, line: 308, baseType: !33, size: 8, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !6, line: 308, baseType: !33, size: 8, offset: 72)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !747, file: !6, line: 308, baseType: !47, size: 16, offset: 80)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !6, line: 308, baseType: !33, size: 8, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !747, file: !6, line: 308, baseType: !33, size: 8, offset: 104)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !747, file: !6, line: 309, baseType: !33, size: 8, offset: 112)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !747, file: !6, line: 310, baseType: !33, size: 8, offset: 120)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !747, file: !6, line: 311, baseType: !31, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !747, file: !6, line: 312, baseType: !93, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !747, file: !6, line: 313, baseType: !125, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !747, file: !6, line: 314, baseType: !88, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !747, file: !6, line: 315, baseType: !88, size: 64, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !747, file: !6, line: 316, baseType: !20, size: 32, offset: 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !37, file: !6, line: 390, baseType: !764, size: 448)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 340, size: 448, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !774, !775}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !764, file: !6, line: 341, baseType: !43, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !764, file: !6, line: 341, baseType: !33, size: 8, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !6, line: 341, baseType: !33, size: 8, offset: 72)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !764, file: !6, line: 341, baseType: !47, size: 16, offset: 80)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !6, line: 341, baseType: !33, size: 8, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !764, file: !6, line: 341, baseType: !93, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !764, file: !6, line: 342, baseType: !93, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !764, file: !6, line: 343, baseType: !31, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !764, file: !6, line: 344, baseType: !88, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !764, file: !6, line: 345, baseType: !20, size: 32, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !37, file: !6, line: 391, baseType: !777, size: 256)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 350, size: 256, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784, !789}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !777, file: !6, line: 351, baseType: !43, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !777, file: !6, line: 351, baseType: !33, size: 8, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !777, file: !6, line: 351, baseType: !33, size: 8, offset: 72)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !777, file: !6, line: 351, baseType: !47, size: 16, offset: 80)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !6, line: 351, baseType: !33, size: 8, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !777, file: !6, line: 351, baseType: !785, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1055, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !389, !31}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !777, file: !6, line: 352, baseType: !31, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !37, file: !6, line: 392, baseType: !791, size: 192)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 357, size: 192, elements: !792)
!792 = !{!793, !794, !795, !796, !797, !798}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !791, file: !6, line: 358, baseType: !43, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !791, file: !6, line: 358, baseType: !33, size: 8, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !791, file: !6, line: 358, baseType: !33, size: 8, offset: 72)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !791, file: !6, line: 358, baseType: !47, size: 16, offset: 80)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !791, file: !6, line: 358, baseType: !33, size: 8, offset: 96)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !791, file: !6, line: 358, baseType: !43, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !37, file: !6, line: 399, baseType: !94, size: 384)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !25, file: !6, line: 435, baseType: !94, size: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !25, file: !6, line: 436, baseType: !195, size: 1600)
!802 = !{!0}
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 64, elements: !367)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!805 = !{i32 7, !"Dwarf Version", i32 4}
!806 = !{i32 2, !"Debug Info Version", i32 3}
!807 = !{i32 1, !"wchar_size", i32 2}
!808 = !{i32 1, !"Code Model", i32 2}
!809 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!810 = distinct !DISubprogram(name: "acpi_ex_store", scope: !3, file: !3, line: 52, type: !811, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!18, !43, !43, !160}
!813 = !{}
!814 = !DILocalVariable(name: "source_desc", arg: 1, scope: !810, file: !3, line: 52, type: !43)
!815 = !DILocation(line: 52, column: 42, scope: !810)
!816 = !DILocalVariable(name: "dest_desc", arg: 2, scope: !810, file: !3, line: 53, type: !43)
!817 = !DILocation(line: 53, column: 35, scope: !810)
!818 = !DILocalVariable(name: "walk_state", arg: 3, scope: !810, file: !3, line: 54, type: !160)
!819 = !DILocation(line: 54, column: 32, scope: !810)
!820 = !DILocalVariable(name: "status", scope: !810, file: !3, line: 56, type: !18)
!821 = !DILocation(line: 56, column: 14, scope: !810)
!822 = !DILocalVariable(name: "ref_desc", scope: !810, file: !3, line: 57, type: !43)
!823 = !DILocation(line: 57, column: 29, scope: !810)
!824 = !DILocation(line: 57, column: 40, scope: !810)
!825 = !DILocation(line: 63, column: 7, scope: !826)
!826 = distinct !DILexicalBlock(scope: !810, file: !3, line: 63, column: 6)
!827 = !DILocation(line: 63, column: 19, scope: !826)
!828 = !DILocation(line: 63, column: 23, scope: !826)
!829 = !DILocation(line: 63, column: 6, scope: !810)
!830 = !DILocation(line: 64, column: 3, scope: !831)
!831 = distinct !DILexicalBlock(scope: !826, file: !3, line: 63, column: 34)
!832 = !DILocation(line: 65, column: 3, scope: !831)
!833 = !DILocation(line: 70, column: 6, scope: !834)
!834 = distinct !DILexicalBlock(scope: !810, file: !3, line: 70, column: 6)
!835 = !DILocation(line: 70, column: 42, scope: !834)
!836 = !DILocation(line: 70, column: 6, scope: !810)
!837 = !DILocation(line: 75, column: 41, scope: !838)
!838 = distinct !DILexicalBlock(scope: !834, file: !3, line: 70, column: 67)
!839 = !DILocation(line: 78, column: 13, scope: !838)
!840 = !DILocation(line: 76, column: 13, scope: !838)
!841 = !DILocation(line: 78, column: 24, scope: !838)
!842 = !DILocation(line: 75, column: 12, scope: !838)
!843 = !DILocation(line: 75, column: 10, scope: !838)
!844 = !DILocation(line: 81, column: 3, scope: !838)
!845 = !DILocation(line: 86, column: 10, scope: !810)
!846 = !DILocation(line: 86, column: 21, scope: !810)
!847 = !DILocation(line: 86, column: 28, scope: !810)
!848 = !DILocation(line: 86, column: 2, scope: !810)
!849 = !DILocation(line: 89, column: 3, scope: !850)
!850 = distinct !DILexicalBlock(scope: !810, file: !3, line: 86, column: 34)
!851 = !DILocation(line: 95, column: 7, scope: !852)
!852 = distinct !DILexicalBlock(scope: !850, file: !3, line: 95, column: 7)
!853 = !DILocation(line: 95, column: 18, scope: !852)
!854 = !DILocation(line: 95, column: 25, scope: !852)
!855 = !DILocation(line: 95, column: 31, scope: !852)
!856 = !DILocation(line: 95, column: 7, scope: !850)
!857 = !DILocation(line: 96, column: 4, scope: !858)
!858 = distinct !DILexicalBlock(scope: !852, file: !3, line: 95, column: 54)
!859 = !DILocation(line: 95, column: 33, scope: !852)
!860 = !DILocation(line: 105, column: 3, scope: !850)
!861 = !DILocation(line: 110, column: 3, scope: !850)
!862 = !DILocation(line: 121, column: 10, scope: !810)
!863 = !DILocation(line: 121, column: 20, scope: !810)
!864 = !DILocation(line: 121, column: 30, scope: !810)
!865 = !DILocation(line: 121, column: 2, scope: !810)
!866 = !DILocation(line: 126, column: 41, scope: !867)
!867 = distinct !DILexicalBlock(scope: !810, file: !3, line: 121, column: 37)
!868 = !DILocation(line: 127, column: 13, scope: !867)
!869 = !DILocation(line: 127, column: 23, scope: !867)
!870 = !DILocation(line: 128, column: 13, scope: !867)
!871 = !DILocation(line: 128, column: 21, scope: !867)
!872 = !DILocation(line: 126, column: 12, scope: !867)
!873 = !DILocation(line: 126, column: 10, scope: !867)
!874 = !DILocation(line: 130, column: 3, scope: !867)
!875 = !DILocation(line: 137, column: 37, scope: !867)
!876 = !DILocation(line: 137, column: 50, scope: !867)
!877 = !DILocation(line: 138, column: 9, scope: !867)
!878 = !DILocation(line: 137, column: 7, scope: !867)
!879 = !DILocation(line: 136, column: 10, scope: !867)
!880 = !DILocation(line: 139, column: 3, scope: !867)
!881 = !DILocation(line: 147, column: 37, scope: !867)
!882 = !DILocation(line: 147, column: 47, scope: !867)
!883 = !DILocation(line: 147, column: 57, scope: !867)
!884 = !DILocation(line: 148, column: 9, scope: !867)
!885 = !DILocation(line: 148, column: 19, scope: !867)
!886 = !DILocation(line: 148, column: 29, scope: !867)
!887 = !DILocation(line: 149, column: 9, scope: !867)
!888 = !DILocation(line: 149, column: 22, scope: !867)
!889 = !DILocation(line: 147, column: 7, scope: !867)
!890 = !DILocation(line: 146, column: 10, scope: !867)
!891 = !DILocation(line: 150, column: 3, scope: !867)
!892 = !DILocation(line: 162, column: 3, scope: !867)
!893 = !DILocation(line: 163, column: 3, scope: !867)
!894 = !DILocation(line: 167, column: 3, scope: !867)
!895 = !DILocation(line: 171, column: 10, scope: !867)
!896 = !DILocation(line: 172, column: 3, scope: !867)
!897 = !DILocation(line: 175, column: 2, scope: !810)
!898 = !DILocation(line: 176, column: 1, scope: !810)
!899 = distinct !DISubprogram(name: "acpi_ex_store_object_to_node", scope: !3, file: !3, line: 361, type: !900, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !813)
!900 = !DISubroutineType(types: !901)
!901 = !{!18, !43, !93, !160, !33}
!902 = !DILocalVariable(name: "source_desc", arg: 1, scope: !899, file: !3, line: 361, type: !43)
!903 = !DILocation(line: 361, column: 57, scope: !899)
!904 = !DILocalVariable(name: "node", arg: 2, scope: !899, file: !3, line: 362, type: !93)
!905 = !DILocation(line: 362, column: 37, scope: !899)
!906 = !DILocalVariable(name: "walk_state", arg: 3, scope: !899, file: !3, line: 363, type: !160)
!907 = !DILocation(line: 363, column: 33, scope: !899)
!908 = !DILocalVariable(name: "implicit_conversion", arg: 4, scope: !899, file: !3, line: 364, type: !33)
!909 = !DILocation(line: 364, column: 12, scope: !899)
!910 = !DILocalVariable(name: "status", scope: !899, file: !3, line: 366, type: !18)
!911 = !DILocation(line: 366, column: 14, scope: !899)
!912 = !DILocalVariable(name: "target_desc", scope: !899, file: !3, line: 367, type: !43)
!913 = !DILocation(line: 367, column: 29, scope: !899)
!914 = !DILocalVariable(name: "new_desc", scope: !899, file: !3, line: 368, type: !43)
!915 = !DILocation(line: 368, column: 29, scope: !899)
!916 = !DILocalVariable(name: "target_type", scope: !899, file: !3, line: 369, type: !917)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 635, baseType: !20)
!918 = !DILocation(line: 369, column: 19, scope: !899)
!919 = !DILocation(line: 375, column: 33, scope: !899)
!920 = !DILocation(line: 375, column: 16, scope: !899)
!921 = !DILocation(line: 375, column: 14, scope: !899)
!922 = !DILocation(line: 376, column: 44, scope: !899)
!923 = !DILocation(line: 376, column: 16, scope: !899)
!924 = !DILocation(line: 376, column: 14, scope: !899)
!925 = !DILocation(line: 385, column: 6, scope: !926)
!926 = distinct !DILexicalBlock(scope: !899, file: !3, line: 385, column: 6)
!927 = !DILocation(line: 385, column: 18, scope: !926)
!928 = !DILocation(line: 385, column: 25, scope: !926)
!929 = !DILocation(line: 385, column: 6, scope: !899)
!930 = !DILocation(line: 404, column: 11, scope: !931)
!931 = distinct !DILexicalBlock(scope: !926, file: !3, line: 385, column: 48)
!932 = !DILocation(line: 404, column: 3, scope: !931)
!933 = !DILocation(line: 411, column: 8, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 411, column: 8)
!935 = distinct !DILexicalBlock(scope: !931, file: !3, line: 404, column: 24)
!936 = !DILocation(line: 411, column: 20, scope: !934)
!937 = !DILocation(line: 411, column: 27, scope: !934)
!938 = !DILocation(line: 411, column: 8, scope: !935)
!939 = !DILocation(line: 412, column: 9, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 412, column: 9)
!941 = distinct !DILexicalBlock(scope: !934, file: !3, line: 411, column: 44)
!942 = !DILocation(line: 412, column: 22, scope: !940)
!943 = !DILocation(line: 412, column: 29, scope: !940)
!944 = !DILocation(line: 412, column: 34, scope: !940)
!945 = !DILocation(line: 412, column: 9, scope: !941)
!946 = !DILocation(line: 414, column: 6, scope: !947)
!947 = distinct !DILexicalBlock(scope: !940, file: !3, line: 413, column: 28)
!948 = !DILocation(line: 420, column: 6, scope: !947)
!949 = !DILocation(line: 422, column: 5, scope: !941)
!950 = !DILocation(line: 411, column: 30, scope: !934)
!951 = !DILocation(line: 435, column: 4, scope: !935)
!952 = !DILocation(line: 441, column: 4, scope: !935)
!953 = !DILocation(line: 444, column: 4, scope: !935)
!954 = !DILocation(line: 446, column: 2, scope: !931)
!955 = !DILocation(line: 452, column: 48, scope: !899)
!956 = !DILocation(line: 452, column: 61, scope: !899)
!957 = !DILocation(line: 452, column: 11, scope: !899)
!958 = !DILocation(line: 452, column: 9, scope: !899)
!959 = !DILocation(line: 453, column: 6, scope: !960)
!960 = distinct !DILexicalBlock(scope: !899, file: !3, line: 453, column: 6)
!961 = !DILocation(line: 453, column: 6, scope: !899)
!962 = !DILocation(line: 454, column: 3, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !3, line: 453, column: 28)
!964 = !DILocation(line: 459, column: 10, scope: !899)
!965 = !DILocation(line: 459, column: 2, scope: !899)
!966 = !DILocation(line: 468, column: 8, scope: !967)
!967 = distinct !DILexicalBlock(scope: !968, file: !3, line: 468, column: 7)
!968 = distinct !DILexicalBlock(scope: !899, file: !3, line: 459, column: 23)
!969 = !DILocation(line: 468, column: 20, scope: !967)
!970 = !DILocation(line: 468, column: 27, scope: !967)
!971 = !DILocation(line: 468, column: 50, scope: !967)
!972 = !DILocation(line: 469, column: 8, scope: !967)
!973 = !DILocation(line: 468, column: 7, scope: !968)
!974 = !DILocation(line: 476, column: 37, scope: !975)
!975 = distinct !DILexicalBlock(scope: !967, file: !3, line: 469, column: 29)
!976 = !DILocation(line: 476, column: 50, scope: !975)
!977 = !DILocation(line: 477, column: 9, scope: !975)
!978 = !DILocation(line: 476, column: 8, scope: !975)
!979 = !DILocation(line: 475, column: 11, scope: !975)
!980 = !DILocation(line: 478, column: 4, scope: !975)
!981 = !DILocation(line: 484, column: 38, scope: !968)
!982 = !DILocation(line: 484, column: 51, scope: !968)
!983 = !DILocation(line: 485, column: 21, scope: !968)
!984 = !DILocation(line: 484, column: 7, scope: !968)
!985 = !DILocation(line: 483, column: 10, scope: !968)
!986 = !DILocation(line: 486, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !968, file: !3, line: 486, column: 7)
!988 = !DILocation(line: 486, column: 7, scope: !968)
!989 = !DILocation(line: 487, column: 4, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !3, line: 486, column: 29)
!991 = !DILocation(line: 490, column: 7, scope: !992)
!992 = distinct !DILexicalBlock(scope: !968, file: !3, line: 490, column: 7)
!993 = !DILocation(line: 490, column: 19, scope: !992)
!994 = !DILocation(line: 490, column: 16, scope: !992)
!995 = !DILocation(line: 490, column: 7, scope: !968)
!996 = !DILocation(line: 501, column: 30, scope: !997)
!997 = distinct !DILexicalBlock(scope: !992, file: !3, line: 490, column: 32)
!998 = !DILocation(line: 501, column: 36, scope: !997)
!999 = !DILocation(line: 502, column: 9, scope: !997)
!1000 = !DILocation(line: 502, column: 19, scope: !997)
!1001 = !DILocation(line: 502, column: 26, scope: !997)
!1002 = !DILocation(line: 501, column: 8, scope: !997)
!1003 = !DILocation(line: 500, column: 11, scope: !997)
!1004 = !DILocation(line: 510, column: 3, scope: !997)
!1005 = !DILocation(line: 511, column: 3, scope: !968)
!1006 = !DILocation(line: 523, column: 40, scope: !968)
!1007 = !DILocation(line: 523, column: 53, scope: !968)
!1008 = !DILocation(line: 524, column: 13, scope: !968)
!1009 = !DILocation(line: 524, column: 25, scope: !968)
!1010 = !DILocation(line: 523, column: 12, scope: !968)
!1011 = !DILocation(line: 523, column: 10, scope: !968)
!1012 = !DILocation(line: 525, column: 3, scope: !968)
!1013 = !DILocation(line: 537, column: 36, scope: !968)
!1014 = !DILocation(line: 537, column: 49, scope: !968)
!1015 = !DILocation(line: 537, column: 55, scope: !968)
!1016 = !DILocation(line: 537, column: 7, scope: !968)
!1017 = !DILocation(line: 536, column: 10, scope: !968)
!1018 = !DILocation(line: 538, column: 3, scope: !968)
!1019 = !DILocation(line: 541, column: 2, scope: !899)
!1020 = !DILocation(line: 542, column: 1, scope: !899)
!1021 = distinct !DISubprogram(name: "acpi_ex_store_object_to_index", scope: !3, file: !3, line: 193, type: !811, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !813)
!1022 = !DILocalVariable(name: "source_desc", arg: 1, scope: !1021, file: !3, line: 193, type: !43)
!1023 = !DILocation(line: 193, column: 58, scope: !1021)
!1024 = !DILocalVariable(name: "index_desc", arg: 2, scope: !1021, file: !3, line: 194, type: !43)
!1025 = !DILocation(line: 194, column: 37, scope: !1021)
!1026 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1021, file: !3, line: 195, type: !160)
!1027 = !DILocation(line: 195, column: 34, scope: !1021)
!1028 = !DILocalVariable(name: "status", scope: !1021, file: !3, line: 197, type: !18)
!1029 = !DILocation(line: 197, column: 14, scope: !1021)
!1030 = !DILocalVariable(name: "obj_desc", scope: !1021, file: !3, line: 198, type: !43)
!1031 = !DILocation(line: 198, column: 29, scope: !1021)
!1032 = !DILocalVariable(name: "new_desc", scope: !1021, file: !3, line: 199, type: !43)
!1033 = !DILocation(line: 199, column: 29, scope: !1021)
!1034 = !DILocalVariable(name: "value", scope: !1021, file: !3, line: 200, type: !33)
!1035 = !DILocation(line: 200, column: 5, scope: !1021)
!1036 = !DILocalVariable(name: "i", scope: !1021, file: !3, line: 201, type: !20)
!1037 = !DILocation(line: 201, column: 6, scope: !1021)
!1038 = !DILocation(line: 209, column: 10, scope: !1021)
!1039 = !DILocation(line: 209, column: 22, scope: !1021)
!1040 = !DILocation(line: 209, column: 32, scope: !1021)
!1041 = !DILocation(line: 209, column: 2, scope: !1021)
!1042 = !DILocation(line: 220, column: 16, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 209, column: 45)
!1044 = !DILocation(line: 220, column: 28, scope: !1043)
!1045 = !DILocation(line: 220, column: 38, scope: !1043)
!1046 = !DILocation(line: 220, column: 14, scope: !1043)
!1047 = !DILocation(line: 220, column: 12, scope: !1043)
!1048 = !DILocation(line: 222, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 222, column: 7)
!1050 = !DILocation(line: 222, column: 20, scope: !1049)
!1051 = !DILocation(line: 222, column: 27, scope: !1049)
!1052 = !DILocation(line: 222, column: 32, scope: !1049)
!1053 = !DILocation(line: 222, column: 61, scope: !1049)
!1054 = !DILocation(line: 223, column: 7, scope: !1049)
!1055 = !DILocation(line: 223, column: 20, scope: !1049)
!1056 = !DILocation(line: 223, column: 30, scope: !1049)
!1057 = !DILocation(line: 223, column: 36, scope: !1049)
!1058 = !DILocation(line: 222, column: 7, scope: !1043)
!1059 = !DILocation(line: 227, column: 26, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 223, column: 60)
!1061 = !DILocation(line: 227, column: 4, scope: !1060)
!1062 = !DILocation(line: 228, column: 15, scope: !1060)
!1063 = !DILocation(line: 228, column: 13, scope: !1060)
!1064 = !DILocation(line: 229, column: 3, scope: !1060)
!1065 = !DILocation(line: 233, column: 40, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 229, column: 10)
!1067 = !DILocation(line: 235, column: 12, scope: !1066)
!1068 = !DILocation(line: 233, column: 8, scope: !1066)
!1069 = !DILocation(line: 232, column: 11, scope: !1066)
!1070 = !DILocation(line: 236, column: 8, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 236, column: 8)
!1072 = !DILocation(line: 236, column: 8, scope: !1066)
!1073 = !DILocation(line: 237, column: 5, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 236, column: 30)
!1075 = !DILocation(line: 241, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 241, column: 7)
!1077 = !DILocation(line: 241, column: 7, scope: !1043)
!1078 = !DILocation(line: 245, column: 11, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 245, column: 4)
!1080 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 241, column: 17)
!1081 = !DILocation(line: 245, column: 9, scope: !1079)
!1082 = !DILocation(line: 245, column: 16, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 245, column: 4)
!1084 = !DILocation(line: 246, column: 7, scope: !1083)
!1085 = !DILocation(line: 246, column: 19, scope: !1083)
!1086 = !DILocation(line: 246, column: 29, scope: !1083)
!1087 = !DILocation(line: 245, column: 21, scope: !1083)
!1088 = !DILocation(line: 246, column: 38, scope: !1083)
!1089 = !DILocation(line: 247, column: 9, scope: !1083)
!1090 = !DILocation(line: 245, column: 20, scope: !1083)
!1091 = !DILocation(line: 245, column: 18, scope: !1083)
!1092 = !DILocation(line: 245, column: 4, scope: !1079)
!1093 = !DILocation(line: 248, column: 30, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 247, column: 31)
!1095 = !DILocation(line: 248, column: 5, scope: !1094)
!1096 = !DILocation(line: 249, column: 4, scope: !1094)
!1097 = !DILocation(line: 247, column: 27, scope: !1083)
!1098 = !DILocation(line: 245, column: 4, scope: !1083)
!1099 = distinct !{!1099, !1092, !1100}
!1100 = !DILocation(line: 249, column: 4, scope: !1079)
!1101 = !DILocation(line: 250, column: 3, scope: !1080)
!1102 = !DILocation(line: 252, column: 36, scope: !1043)
!1103 = !DILocation(line: 252, column: 5, scope: !1043)
!1104 = !DILocation(line: 252, column: 17, scope: !1043)
!1105 = !DILocation(line: 252, column: 27, scope: !1043)
!1106 = !DILocation(line: 252, column: 34, scope: !1043)
!1107 = !DILocation(line: 256, column: 10, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 256, column: 3)
!1109 = !DILocation(line: 256, column: 8, scope: !1108)
!1110 = !DILocation(line: 256, column: 15, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 256, column: 3)
!1112 = !DILocation(line: 257, column: 6, scope: !1111)
!1113 = !DILocation(line: 257, column: 18, scope: !1111)
!1114 = !DILocation(line: 257, column: 28, scope: !1111)
!1115 = !DILocation(line: 256, column: 20, scope: !1111)
!1116 = !DILocation(line: 257, column: 37, scope: !1111)
!1117 = !DILocation(line: 258, column: 8, scope: !1111)
!1118 = !DILocation(line: 256, column: 19, scope: !1111)
!1119 = !DILocation(line: 256, column: 17, scope: !1111)
!1120 = !DILocation(line: 256, column: 3, scope: !1108)
!1121 = !DILocation(line: 259, column: 26, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 258, column: 30)
!1123 = !DILocation(line: 259, column: 4, scope: !1122)
!1124 = !DILocation(line: 260, column: 3, scope: !1122)
!1125 = !DILocation(line: 258, column: 26, scope: !1111)
!1126 = !DILocation(line: 256, column: 3, scope: !1111)
!1127 = distinct !{!1127, !1120, !1128}
!1128 = !DILocation(line: 260, column: 3, scope: !1108)
!1129 = !DILocation(line: 262, column: 3, scope: !1043)
!1130 = !DILocation(line: 279, column: 14, scope: !1043)
!1131 = !DILocation(line: 279, column: 26, scope: !1043)
!1132 = !DILocation(line: 279, column: 36, scope: !1043)
!1133 = !DILocation(line: 279, column: 12, scope: !1043)
!1134 = !DILocation(line: 280, column: 8, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 280, column: 7)
!1136 = !DILocation(line: 280, column: 18, scope: !1135)
!1137 = !DILocation(line: 280, column: 25, scope: !1135)
!1138 = !DILocation(line: 280, column: 30, scope: !1135)
!1139 = !DILocation(line: 280, column: 51, scope: !1135)
!1140 = !DILocation(line: 281, column: 8, scope: !1135)
!1141 = !DILocation(line: 281, column: 18, scope: !1135)
!1142 = !DILocation(line: 281, column: 25, scope: !1135)
!1143 = !DILocation(line: 281, column: 30, scope: !1135)
!1144 = !DILocation(line: 280, column: 7, scope: !1043)
!1145 = !DILocation(line: 282, column: 4, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 281, column: 52)
!1147 = !DILocation(line: 289, column: 11, scope: !1043)
!1148 = !DILocation(line: 289, column: 24, scope: !1043)
!1149 = !DILocation(line: 289, column: 31, scope: !1043)
!1150 = !DILocation(line: 289, column: 3, scope: !1043)
!1151 = !DILocation(line: 294, column: 18, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 289, column: 37)
!1153 = !DILocation(line: 294, column: 31, scope: !1152)
!1154 = !DILocation(line: 294, column: 39, scope: !1152)
!1155 = !DILocation(line: 294, column: 12, scope: !1152)
!1156 = !DILocation(line: 294, column: 10, scope: !1152)
!1157 = !DILocation(line: 295, column: 4, scope: !1152)
!1158 = !DILocation(line: 302, column: 12, scope: !1152)
!1159 = !DILocation(line: 302, column: 25, scope: !1152)
!1160 = !DILocation(line: 302, column: 32, scope: !1152)
!1161 = !DILocation(line: 302, column: 10, scope: !1152)
!1162 = !DILocation(line: 303, column: 4, scope: !1152)
!1163 = !DILocation(line: 309, column: 4, scope: !1152)
!1164 = !DILocation(line: 312, column: 4, scope: !1152)
!1165 = !DILocation(line: 317, column: 59, scope: !1043)
!1166 = !DILocation(line: 317, column: 3, scope: !1043)
!1167 = !DILocation(line: 317, column: 13, scope: !1043)
!1168 = !DILocation(line: 317, column: 20, scope: !1043)
!1169 = !DILocation(line: 317, column: 28, scope: !1043)
!1170 = !DILocation(line: 317, column: 40, scope: !1043)
!1171 = !DILocation(line: 317, column: 50, scope: !1043)
!1172 = !DILocation(line: 317, column: 57, scope: !1043)
!1173 = !DILocation(line: 318, column: 3, scope: !1043)
!1174 = !DILocation(line: 321, column: 3, scope: !1043)
!1175 = !DILocation(line: 323, column: 10, scope: !1043)
!1176 = !DILocation(line: 324, column: 3, scope: !1043)
!1177 = !DILocation(line: 327, column: 2, scope: !1021)
!1178 = !DILocation(line: 328, column: 1, scope: !1021)
!1179 = distinct !DISubprogram(name: "acpi_ex_store_direct_to_node", scope: !3, file: !3, line: 560, type: !1180, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !813)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!18, !43, !93, !160}
!1182 = !DILocalVariable(name: "source_desc", arg: 1, scope: !1179, file: !3, line: 560, type: !43)
!1183 = !DILocation(line: 560, column: 57, scope: !1179)
!1184 = !DILocalVariable(name: "node", arg: 2, scope: !1179, file: !3, line: 561, type: !93)
!1185 = !DILocation(line: 561, column: 37, scope: !1179)
!1186 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1179, file: !3, line: 562, type: !160)
!1187 = !DILocation(line: 562, column: 33, scope: !1179)
!1188 = !DILocalVariable(name: "status", scope: !1179, file: !3, line: 564, type: !18)
!1189 = !DILocation(line: 564, column: 14, scope: !1179)
!1190 = !DILocalVariable(name: "new_desc", scope: !1179, file: !3, line: 565, type: !43)
!1191 = !DILocation(line: 565, column: 29, scope: !1179)
!1192 = !DILocation(line: 579, column: 38, scope: !1179)
!1193 = !DILocation(line: 579, column: 62, scope: !1179)
!1194 = !DILocation(line: 579, column: 6, scope: !1179)
!1195 = !DILocation(line: 578, column: 9, scope: !1179)
!1196 = !DILocation(line: 580, column: 6, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 580, column: 6)
!1198 = !DILocation(line: 580, column: 6, scope: !1179)
!1199 = !DILocation(line: 581, column: 3, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 580, column: 28)
!1201 = !DILocation(line: 586, column: 33, scope: !1179)
!1202 = !DILocation(line: 586, column: 39, scope: !1179)
!1203 = !DILocation(line: 586, column: 49, scope: !1179)
!1204 = !DILocation(line: 586, column: 59, scope: !1179)
!1205 = !DILocation(line: 586, column: 66, scope: !1179)
!1206 = !DILocation(line: 586, column: 11, scope: !1179)
!1207 = !DILocation(line: 586, column: 9, scope: !1179)
!1208 = !DILocation(line: 587, column: 27, scope: !1179)
!1209 = !DILocation(line: 587, column: 2, scope: !1179)
!1210 = !DILocation(line: 588, column: 2, scope: !1179)
!1211 = !DILocation(line: 589, column: 1, scope: !1179)
