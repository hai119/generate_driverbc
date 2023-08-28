; ModuleID = '../bcout/drivers/acpi/acpica/exresolv.llvm.bc'
source_filename = "drivers/acpi/acpica/exresolv.c"
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

@_acpi_module_name = internal constant [9 x i8] c"exresolv\00", align 1, !dbg !0
@.str = private unnamed_addr constant [24 x i8] c"Internal - null pointer\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"[%4.4s] Node is unresolved or uninitialized\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Not a namespace node %p [%s]\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Unknown Reference Class 0x%2.2X\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Attempt to dereference an Index to NULL package element Idx=%p\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Unknown TargetType 0x%X in Index/Reference object %p\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Unknown Reference type 0x%X in %p\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %stack_ptr, %struct.acpi_walk_state* %walk_state) #0 !dbg !811 {
entry:
  %retval = alloca i32, align 4
  %stack_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object** %stack_ptr, %union.acpi_operand_object*** %stack_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %stack_ptr.addr, metadata !815, metadata !DIExpression()), !dbg !816
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata i32* %status, metadata !819, metadata !DIExpression()), !dbg !820
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !821
  %tobool = icmp ne %union.acpi_operand_object** %0, null, !dbg !821
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !823

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !824
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %1, align 8, !dbg !825
  %tobool1 = icmp ne %union.acpi_operand_object* %2, null, !dbg !825
  br i1 %tobool1, label %if.end, label %if.then, !dbg !826

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #3, !dbg !827
  store i32 12290, i32* %retval, align 4, !dbg !829
  br label %return, !dbg !829

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !830
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8, !dbg !830
  %5 = bitcast %union.acpi_operand_object* %4 to i8*, !dbg !830
  %6 = bitcast i8* %5 to %union.acpi_descriptor*, !dbg !830
  %common = bitcast %union.acpi_descriptor* %6 to %struct.acpi_common_descriptor*, !dbg !830
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !830
  %7 = load i8, i8* %descriptor_type, align 8, !dbg !830
  %conv = zext i8 %7 to i32, !dbg !830
  %cmp = icmp eq i32 %conv, 14, !dbg !832
  br i1 %cmp, label %if.then3, label %if.end10, !dbg !833

if.then3:                                         ; preds = %if.end
  %8 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !834
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !836
  %call = call i32 @acpi_ex_resolve_object_to_value(%union.acpi_operand_object** %8, %struct.acpi_walk_state* %9) #3, !dbg !837
  store i32 %call, i32* %status, align 4, !dbg !838
  %10 = load i32, i32* %status, align 4, !dbg !839
  %tobool4 = icmp ne i32 %10, 0, !dbg !839
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !841

if.then5:                                         ; preds = %if.then3
  %11 = load i32, i32* %status, align 4, !dbg !842
  store i32 %11, i32* %retval, align 4, !dbg !842
  br label %return, !dbg !842

if.end6:                                          ; preds = %if.then3
  %12 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !844
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8, !dbg !846
  %tobool7 = icmp ne %union.acpi_operand_object* %13, null, !dbg !846
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !847

if.then8:                                         ; preds = %if.end6
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #3, !dbg !848
  store i32 12290, i32* %retval, align 4, !dbg !850
  br label %return, !dbg !850

if.end9:                                          ; preds = %if.end6
  br label %if.end10, !dbg !851

if.end10:                                         ; preds = %if.end9, %if.end
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !852
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8, !dbg !852
  %16 = bitcast %union.acpi_operand_object* %15 to i8*, !dbg !852
  %17 = bitcast i8* %16 to %union.acpi_descriptor*, !dbg !852
  %common11 = bitcast %union.acpi_descriptor* %17 to %struct.acpi_common_descriptor*, !dbg !852
  %descriptor_type12 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common11, i32 0, i32 1, !dbg !852
  %18 = load i8, i8* %descriptor_type12, align 8, !dbg !852
  %conv13 = zext i8 %18 to i32, !dbg !852
  %cmp14 = icmp eq i32 %conv13, 15, !dbg !854
  br i1 %cmp14, label %if.then16, label %if.end21, !dbg !855

if.then16:                                        ; preds = %if.end10
  %19 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !856
  %20 = bitcast %union.acpi_operand_object** %19 to i8*, !dbg !856
  %21 = bitcast i8* %20 to %struct.acpi_namespace_node**, !dbg !856
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !858
  %call17 = call i32 @acpi_ex_resolve_node_to_value(%struct.acpi_namespace_node** %21, %struct.acpi_walk_state* %22) #3, !dbg !859
  store i32 %call17, i32* %status, align 4, !dbg !860
  %23 = load i32, i32* %status, align 4, !dbg !861
  %tobool18 = icmp ne i32 %23, 0, !dbg !861
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !863

if.then19:                                        ; preds = %if.then16
  %24 = load i32, i32* %status, align 4, !dbg !864
  store i32 %24, i32* %retval, align 4, !dbg !864
  br label %return, !dbg !864

if.end20:                                         ; preds = %if.then16
  br label %if.end21, !dbg !866

if.end21:                                         ; preds = %if.end20, %if.end10
  store i32 0, i32* %retval, align 4, !dbg !867
  br label %return, !dbg !867

return:                                           ; preds = %if.end21, %if.then19, %if.then8, %if.then5, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !868
  ret i32 %25, !dbg !868
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ex_resolve_object_to_value(%union.acpi_operand_object** %stack_ptr, %struct.acpi_walk_state* %walk_state) #0 !dbg !869 {
entry:
  %retval = alloca i32, align 4
  %stack_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %stack_desc = alloca %union.acpi_operand_object*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %ref_type = alloca i8, align 1
  store %union.acpi_operand_object** %stack_ptr, %union.acpi_operand_object*** %stack_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %stack_ptr.addr, metadata !870, metadata !DIExpression()), !dbg !871
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !872, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.declare(metadata i32* %status, metadata !874, metadata !DIExpression()), !dbg !875
  store i32 0, i32* %status, align 4, !dbg !875
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %stack_desc, metadata !876, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !878, metadata !DIExpression()), !dbg !879
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %obj_desc, align 8, !dbg !879
  call void @llvm.dbg.declare(metadata i8* %ref_type, metadata !880, metadata !DIExpression()), !dbg !881
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !882
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !883
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %stack_desc, align 8, !dbg !884
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !885
  %common = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_common*, !dbg !886
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !887
  %3 = load i8, i8* %type, align 1, !dbg !887
  %conv = zext i8 %3 to i32, !dbg !885
  switch i32 %conv, label %sw.default54 [
    i32 20, label %sw.bb
    i32 3, label %sw.bb48
    i32 4, label %sw.bb50
    i32 14, label %sw.bb52
    i32 17, label %sw.bb52
    i32 18, label %sw.bb52
    i32 19, label %sw.bb52
  ], !dbg !888

sw.bb:                                            ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !889
  %reference = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_reference*, !dbg !891
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !892
  %5 = load i8, i8* %class, align 1, !dbg !892
  store i8 %5, i8* %ref_type, align 1, !dbg !893
  %6 = load i8, i8* %ref_type, align 1, !dbg !894
  %conv1 = zext i8 %6 to i32, !dbg !894
  switch i32 %conv1, label %sw.default45 [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb2
    i32 3, label %sw.bb4
    i32 2, label %sw.bb24
    i32 6, label %sw.bb24
    i32 4, label %sw.bb24
    i32 5, label %sw.bb25
  ], !dbg !895

sw.bb2:                                           ; preds = %sw.bb, %sw.bb
  %7 = load i8, i8* %ref_type, align 1, !dbg !896
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !898
  %reference3 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_reference*, !dbg !899
  %value = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference3, i32 0, i32 13, !dbg !900
  %9 = load i32, i32* %value, align 8, !dbg !900
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !901
  %call = call i32 @acpi_ds_method_data_get_value(i8 zeroext %7, i32 %9, %struct.acpi_walk_state* %10, %union.acpi_operand_object** %obj_desc) #3, !dbg !902
  store i32 %call, i32* %status, align 4, !dbg !903
  %11 = load i32, i32* %status, align 4, !dbg !904
  %tobool = icmp ne i32 %11, 0, !dbg !904
  br i1 %tobool, label %if.then, label %if.end, !dbg !906

if.then:                                          ; preds = %sw.bb2
  %12 = load i32, i32* %status, align 4, !dbg !907
  store i32 %12, i32* %retval, align 4, !dbg !907
  br label %return, !dbg !907

if.end:                                           ; preds = %sw.bb2
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !909
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %13) #3, !dbg !910
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !911
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !912
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %15, align 8, !dbg !913
  br label %sw.epilog47, !dbg !914

sw.bb4:                                           ; preds = %sw.bb
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !915
  %reference5 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_reference*, !dbg !916
  %target_type = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference5, i32 0, i32 6, !dbg !917
  %17 = load i8, i8* %target_type, align 2, !dbg !917
  %conv6 = zext i8 %17 to i32, !dbg !915
  switch i32 %conv6, label %sw.default [
    i32 14, label %sw.bb7
    i32 4, label %sw.bb8
  ], !dbg !918

sw.bb7:                                           ; preds = %sw.bb4
  br label %sw.epilog, !dbg !919

sw.bb8:                                           ; preds = %sw.bb4
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !921
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 3, !dbg !923
  %19 = load i16, i16* %opcode, align 2, !dbg !923
  %conv9 = zext i16 %19 to i32, !dbg !921
  %cmp = icmp eq i32 %conv9, 53, !dbg !924
  br i1 %cmp, label %if.then15, label %lor.lhs.false, !dbg !925

lor.lhs.false:                                    ; preds = %sw.bb8
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !926
  %opcode11 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 3, !dbg !927
  %21 = load i16, i16* %opcode11, align 2, !dbg !927
  %conv12 = zext i16 %21 to i32, !dbg !926
  %cmp13 = icmp eq i32 %conv12, 157, !dbg !928
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !929

if.then15:                                        ; preds = %lor.lhs.false, %sw.bb8
  br label %sw.epilog, !dbg !930

if.end16:                                         ; preds = %lor.lhs.false
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !932
  %reference17 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_reference*, !dbg !933
  %where = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference17, i32 0, i32 10, !dbg !934
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %where, align 8, !dbg !934
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %23, align 8, !dbg !935
  store %union.acpi_operand_object* %24, %union.acpi_operand_object** %obj_desc, align 8, !dbg !936
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !937
  %tobool18 = icmp ne %union.acpi_operand_object* %25, null, !dbg !937
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !939

if.then19:                                        ; preds = %if.end16
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !940
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %26) #3, !dbg !942
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !943
  %28 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !944
  store %union.acpi_operand_object* %27, %union.acpi_operand_object** %28, align 8, !dbg !945
  br label %if.end20, !dbg !946

if.else:                                          ; preds = %if.end16
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !947
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 186, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), %union.acpi_operand_object* %29) #3, !dbg !947
  store i32 12295, i32* %status, align 4, !dbg !949
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then19
  br label %sw.epilog, !dbg !950

sw.default:                                       ; preds = %sw.bb4
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !951
  %reference21 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_reference*, !dbg !951
  %target_type22 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference21, i32 0, i32 6, !dbg !951
  %31 = load i8, i8* %target_type22, align 2, !dbg !951
  %conv23 = zext i8 %31 to i32, !dbg !951
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !951
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %conv23, %union.acpi_operand_object* %32) #3, !dbg !951
  store i32 12303, i32* %status, align 4, !dbg !952
  br label %sw.epilog, !dbg !953

sw.epilog:                                        ; preds = %sw.default, %if.end20, %if.then15, %sw.bb7
  br label %sw.epilog47, !dbg !954

sw.bb24:                                          ; preds = %sw.bb, %sw.bb, %sw.bb
  br label %sw.epilog47, !dbg !955

sw.bb25:                                          ; preds = %sw.bb
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !956
  %reference26 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_reference*, !dbg !958
  %node = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference26, i32 0, i32 9, !dbg !959
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !959
  %type27 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %34, i32 0, i32 2, !dbg !960
  %35 = load i8, i8* %type27, align 1, !dbg !960
  %conv28 = zext i8 %35 to i32, !dbg !956
  %cmp29 = icmp eq i32 %conv28, 6, !dbg !961
  br i1 %cmp29, label %if.then38, label %lor.lhs.false31, !dbg !962

lor.lhs.false31:                                  ; preds = %sw.bb25
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !963
  %reference32 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_reference*, !dbg !964
  %node33 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference32, i32 0, i32 9, !dbg !965
  %37 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node33, align 8, !dbg !965
  %type34 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %37, i32 0, i32 2, !dbg !966
  %38 = load i8, i8* %type34, align 1, !dbg !966
  %conv35 = zext i8 %38 to i32, !dbg !963
  %cmp36 = icmp eq i32 %conv35, 13, !dbg !967
  br i1 %cmp36, label %if.then38, label %if.else41, !dbg !968

if.then38:                                        ; preds = %lor.lhs.false31, %sw.bb25
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !969
  %reference39 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_reference*, !dbg !971
  %node40 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference39, i32 0, i32 9, !dbg !972
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node40, align 8, !dbg !972
  %41 = bitcast %struct.acpi_namespace_node* %40 to i8*, !dbg !973
  %42 = bitcast i8* %41 to %union.acpi_operand_object*, !dbg !973
  %43 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !974
  store %union.acpi_operand_object* %42, %union.acpi_operand_object** %43, align 8, !dbg !975
  br label %if.end44, !dbg !976

if.else41:                                        ; preds = %lor.lhs.false31
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !977
  %reference42 = bitcast %union.acpi_operand_object* %44 to %struct.acpi_object_reference*, !dbg !979
  %node43 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference42, i32 0, i32 9, !dbg !980
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node43, align 8, !dbg !980
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %45, i32 0, i32 0, !dbg !981
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !981
  %47 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !982
  store %union.acpi_operand_object* %46, %union.acpi_operand_object** %47, align 8, !dbg !983
  %48 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !984
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %48, align 8, !dbg !985
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %49) #3, !dbg !986
  br label %if.end44

if.end44:                                         ; preds = %if.else41, %if.then38
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !987
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %50) #3, !dbg !988
  br label %sw.epilog47, !dbg !989

sw.default45:                                     ; preds = %sw.bb
  %51 = load i8, i8* %ref_type, align 1, !dbg !990
  %conv46 = zext i8 %51 to i32, !dbg !990
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !990
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 240, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %conv46, %union.acpi_operand_object* %52) #3, !dbg !990
  store i32 12303, i32* %status, align 4, !dbg !991
  br label %sw.epilog47, !dbg !992

sw.epilog47:                                      ; preds = %sw.default45, %if.end44, %sw.bb24, %sw.epilog, %if.end
  br label %sw.epilog55, !dbg !993

sw.bb48:                                          ; preds = %entry
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !994
  %call49 = call i32 @acpi_ds_get_buffer_arguments(%union.acpi_operand_object* %53) #3, !dbg !995
  store i32 %call49, i32* %status, align 4, !dbg !996
  br label %sw.epilog55, !dbg !997

sw.bb50:                                          ; preds = %entry
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !998
  %call51 = call i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object* %54) #3, !dbg !999
  store i32 %call51, i32* %status, align 4, !dbg !1000
  br label %sw.epilog55, !dbg !1001

sw.bb52:                                          ; preds = %entry, %entry, %entry, %entry
  %55 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1002
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %stack_desc, align 8, !dbg !1003
  %call53 = call i32 @acpi_ex_read_data_from_field(%struct.acpi_walk_state* %55, %union.acpi_operand_object* %56, %union.acpi_operand_object** %obj_desc) #3, !dbg !1004
  store i32 %call53, i32* %status, align 4, !dbg !1005
  %57 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !1006
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %57, align 8, !dbg !1007
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %58) #3, !dbg !1008
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1009
  %60 = bitcast %union.acpi_operand_object* %59 to i8*, !dbg !1010
  %61 = bitcast i8* %60 to %union.acpi_operand_object*, !dbg !1010
  %62 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !1011
  store %union.acpi_operand_object* %61, %union.acpi_operand_object** %62, align 8, !dbg !1012
  br label %sw.epilog55, !dbg !1013

sw.default54:                                     ; preds = %entry
  br label %sw.epilog55, !dbg !1014

sw.epilog55:                                      ; preds = %sw.default54, %sw.bb52, %sw.bb50, %sw.bb48, %sw.epilog47
  %63 = load i32, i32* %status, align 4, !dbg !1015
  store i32 %63, i32* %retval, align 4, !dbg !1015
  br label %return, !dbg !1015

return:                                           ; preds = %sw.epilog55, %if.then
  %64 = load i32, i32* %retval, align 4, !dbg !1016
  ret i32 %64, !dbg !1016
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_node_to_value(%struct.acpi_namespace_node**, %struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_resolve_multiple(%struct.acpi_walk_state* %walk_state, %union.acpi_operand_object* %operand, i32* %return_type, %union.acpi_operand_object** %return_desc) #0 !dbg !1017 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %operand.addr = alloca %union.acpi_operand_object*, align 8
  %return_type.addr = alloca i32*, align 8
  %return_desc.addr = alloca %union.acpi_operand_object**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %type = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1022, metadata !DIExpression()), !dbg !1023
  store %union.acpi_operand_object* %operand, %union.acpi_operand_object** %operand.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %operand.addr, metadata !1024, metadata !DIExpression()), !dbg !1025
  store i32* %return_type, i32** %return_type.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %return_type.addr, metadata !1026, metadata !DIExpression()), !dbg !1027
  store %union.acpi_operand_object** %return_desc, %union.acpi_operand_object*** %return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_desc.addr, metadata !1028, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1030, metadata !DIExpression()), !dbg !1031
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand.addr, align 8, !dbg !1032
  %1 = bitcast %union.acpi_operand_object* %0 to i8*, !dbg !1032
  %2 = bitcast i8* %1 to %union.acpi_operand_object*, !dbg !1032
  store %union.acpi_operand_object* %2, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1031
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1033, metadata !DIExpression()), !dbg !1034
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand.addr, align 8, !dbg !1035
  %4 = bitcast %union.acpi_operand_object* %3 to i8*, !dbg !1035
  %5 = bitcast i8* %4 to %struct.acpi_namespace_node*, !dbg !1035
  store %struct.acpi_namespace_node* %5, %struct.acpi_namespace_node** %node, align 8, !dbg !1034
  call void @llvm.dbg.declare(metadata i32* %type, metadata !1036, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1038, metadata !DIExpression()), !dbg !1039
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1040
  %7 = bitcast %union.acpi_operand_object* %6 to i8*, !dbg !1040
  %8 = bitcast i8* %7 to %union.acpi_descriptor*, !dbg !1040
  %common = bitcast %union.acpi_descriptor* %8 to %struct.acpi_common_descriptor*, !dbg !1040
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !1040
  %9 = load i8, i8* %descriptor_type, align 8, !dbg !1040
  %conv = zext i8 %9 to i32, !dbg !1040
  switch i32 %conv, label %sw.default15 [
    i32 14, label %sw.bb
    i32 15, label %sw.bb4
  ], !dbg !1041

sw.bb:                                            ; preds = %entry
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1042
  %common1 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_common*, !dbg !1044
  %type2 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common1, i32 0, i32 2, !dbg !1045
  %11 = load i8, i8* %type2, align 1, !dbg !1045
  %conv3 = zext i8 %11 to i32, !dbg !1042
  store i32 %conv3, i32* %type, align 4, !dbg !1046
  br label %sw.epilog16, !dbg !1047

sw.bb4:                                           ; preds = %entry
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1048
  %13 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_namespace_node*, !dbg !1049
  %type5 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %13, i32 0, i32 2, !dbg !1049
  %14 = load i8, i8* %type5, align 1, !dbg !1049
  %conv6 = zext i8 %14 to i32, !dbg !1050
  store i32 %conv6, i32* %type, align 4, !dbg !1051
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1052
  %call = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %15) #3, !dbg !1053
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1054
  %16 = load i32, i32* %type, align 4, !dbg !1055
  %cmp = icmp eq i32 %16, 21, !dbg !1057
  br i1 %cmp, label %if.then, label %if.end, !dbg !1058

if.then:                                          ; preds = %sw.bb4
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1059
  %18 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_namespace_node*, !dbg !1061
  %type8 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %18, i32 0, i32 2, !dbg !1061
  %19 = load i8, i8* %type8, align 1, !dbg !1061
  %conv9 = zext i8 %19 to i32, !dbg !1062
  store i32 %conv9, i32* %type, align 4, !dbg !1063
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1064
  %21 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_namespace_node*, !dbg !1065
  %call10 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %21) #3, !dbg !1066
  store %union.acpi_operand_object* %call10, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1067
  br label %if.end, !dbg !1068

if.end:                                           ; preds = %if.then, %sw.bb4
  %22 = load i32, i32* %type, align 4, !dbg !1069
  switch i32 %22, label %sw.default [
    i32 6, label %sw.bb11
    i32 13, label %sw.bb11
  ], !dbg !1070

sw.bb11:                                          ; preds = %if.end, %if.end
  br label %sw.epilog, !dbg !1071

sw.default:                                       ; preds = %if.end
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1073
  %tobool = icmp ne %union.acpi_operand_object* %23, null, !dbg !1073
  br i1 %tobool, label %if.end14, label %if.then12, !dbg !1075

if.then12:                                        ; preds = %sw.default
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1076
  %25 = bitcast %struct.acpi_namespace_node* %24 to i8*, !dbg !1076
  %call13 = call i8* @acpi_ut_get_node_name(i8* %25) #3, !dbg !1076
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 349, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %call13) #3, !dbg !1076
  store i32 12322, i32* %retval, align 4, !dbg !1078
  br label %return, !dbg !1078

if.end14:                                         ; preds = %sw.default
  br label %sw.epilog, !dbg !1079

sw.epilog:                                        ; preds = %if.end14, %sw.bb11
  br label %sw.epilog16, !dbg !1080

sw.default15:                                     ; preds = %entry
  store i32 12291, i32* %retval, align 4, !dbg !1081
  br label %return, !dbg !1081

sw.epilog16:                                      ; preds = %sw.epilog, %sw.bb
  %26 = load i32, i32* %type, align 4, !dbg !1082
  %cmp17 = icmp ne i32 %26, 20, !dbg !1084
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !1085

if.then19:                                        ; preds = %sw.epilog16
  br label %exit, !dbg !1086

if.end20:                                         ; preds = %sw.epilog16
  br label %while.cond, !dbg !1088

while.cond:                                       ; preds = %sw.epilog96, %if.end20
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1089
  %common21 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_common*, !dbg !1090
  %type22 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common21, i32 0, i32 2, !dbg !1091
  %28 = load i8, i8* %type22, align 1, !dbg !1091
  %conv23 = zext i8 %28 to i32, !dbg !1089
  %cmp24 = icmp eq i32 %conv23, 20, !dbg !1092
  br i1 %cmp24, label %while.body, label %while.end, !dbg !1088

while.body:                                       ; preds = %while.cond
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1093
  %reference = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_reference*, !dbg !1095
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1096
  %30 = load i8, i8* %class, align 1, !dbg !1096
  %conv26 = zext i8 %30 to i32, !dbg !1093
  switch i32 %conv26, label %sw.default92 [
    i32 2, label %sw.bb27
    i32 5, label %sw.bb27
    i32 3, label %sw.bb55
    i32 4, label %sw.bb66
    i32 0, label %sw.bb67
    i32 1, label %sw.bb67
    i32 6, label %sw.bb91
  ], !dbg !1097

sw.bb27:                                          ; preds = %while.body, %while.body
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1098
  %reference28 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_reference*, !dbg !1101
  %class29 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference28, i32 0, i32 5, !dbg !1102
  %32 = load i8, i8* %class29, align 1, !dbg !1102
  %conv30 = zext i8 %32 to i32, !dbg !1098
  %cmp31 = icmp eq i32 %conv30, 2, !dbg !1103
  br i1 %cmp31, label %if.then33, label %if.else, !dbg !1104

if.then33:                                        ; preds = %sw.bb27
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1105
  %reference34 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_reference*, !dbg !1107
  %object = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference34, i32 0, i32 8, !dbg !1108
  %34 = load i8*, i8** %object, align 8, !dbg !1108
  %35 = bitcast i8* %34 to %struct.acpi_namespace_node*, !dbg !1105
  store %struct.acpi_namespace_node* %35, %struct.acpi_namespace_node** %node, align 8, !dbg !1109
  br label %if.end37, !dbg !1110

if.else:                                          ; preds = %sw.bb27
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1111
  %reference35 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_reference*, !dbg !1113
  %node36 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference35, i32 0, i32 9, !dbg !1114
  %37 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node36, align 8, !dbg !1114
  store %struct.acpi_namespace_node* %37, %struct.acpi_namespace_node** %node, align 8, !dbg !1115
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then33
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1116
  %39 = bitcast %struct.acpi_namespace_node* %38 to i8*, !dbg !1116
  %40 = bitcast i8* %39 to %union.acpi_descriptor*, !dbg !1116
  %common38 = bitcast %union.acpi_descriptor* %40 to %struct.acpi_common_descriptor*, !dbg !1116
  %descriptor_type39 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common38, i32 0, i32 1, !dbg !1116
  %41 = load i8, i8* %descriptor_type39, align 8, !dbg !1116
  %conv40 = zext i8 %41 to i32, !dbg !1116
  %cmp41 = icmp ne i32 %conv40, 15, !dbg !1118
  br i1 %cmp41, label %if.then43, label %if.end45, !dbg !1119

if.then43:                                        ; preds = %if.end37
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1120
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1120
  %44 = bitcast %struct.acpi_namespace_node* %43 to i8*, !dbg !1120
  %call44 = call i8* @acpi_ut_get_descriptor_name(i8* %44) #3, !dbg !1120
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 392, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.acpi_namespace_node* %42, i8* %call44) #3, !dbg !1120
  store i32 12303, i32* %retval, align 4, !dbg !1122
  br label %return, !dbg !1122

if.end45:                                         ; preds = %if.end37
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1123
  %call46 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %45) #3, !dbg !1124
  store %union.acpi_operand_object* %call46, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1125
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1126
  %tobool47 = icmp ne %union.acpi_operand_object* %46, null, !dbg !1126
  br i1 %tobool47, label %if.end50, label %if.then48, !dbg !1128

if.then48:                                        ; preds = %if.end45
  %47 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1129
  %call49 = call i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %47) #3, !dbg !1131
  store i32 %call49, i32* %type, align 4, !dbg !1132
  br label %exit, !dbg !1133

if.end50:                                         ; preds = %if.end45
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1134
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand.addr, align 8, !dbg !1136
  %cmp51 = icmp eq %union.acpi_operand_object* %48, %49, !dbg !1137
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !1138

if.then53:                                        ; preds = %if.end50
  store i32 12318, i32* %retval, align 4, !dbg !1139
  br label %return, !dbg !1139

if.end54:                                         ; preds = %if.end50
  br label %sw.epilog96, !dbg !1141

sw.bb55:                                          ; preds = %while.body
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1142
  %reference56 = bitcast %union.acpi_operand_object* %50 to %struct.acpi_object_reference*, !dbg !1143
  %target_type = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference56, i32 0, i32 6, !dbg !1144
  %51 = load i8, i8* %target_type, align 2, !dbg !1144
  %conv57 = zext i8 %51 to i32, !dbg !1142
  store i32 %conv57, i32* %type, align 4, !dbg !1145
  %52 = load i32, i32* %type, align 4, !dbg !1146
  %cmp58 = icmp ne i32 %52, 4, !dbg !1148
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !1149

if.then60:                                        ; preds = %sw.bb55
  br label %exit, !dbg !1150

if.end61:                                         ; preds = %sw.bb55
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1152
  %reference62 = bitcast %union.acpi_operand_object* %53 to %struct.acpi_object_reference*, !dbg !1153
  %where = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference62, i32 0, i32 10, !dbg !1154
  %54 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %where, align 8, !dbg !1154
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %54, align 8, !dbg !1155
  store %union.acpi_operand_object* %55, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1156
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1157
  %tobool63 = icmp ne %union.acpi_operand_object* %56, null, !dbg !1157
  br i1 %tobool63, label %if.end65, label %if.then64, !dbg !1159

if.then64:                                        ; preds = %if.end61
  store i32 0, i32* %type, align 4, !dbg !1160
  br label %exit, !dbg !1162

if.end65:                                         ; preds = %if.end61
  br label %sw.epilog96, !dbg !1163

sw.bb66:                                          ; preds = %while.body
  store i32 15, i32* %type, align 4, !dbg !1164
  br label %exit, !dbg !1165

sw.bb67:                                          ; preds = %while.body, %while.body
  %57 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_desc.addr, align 8, !dbg !1166
  %tobool68 = icmp ne %union.acpi_operand_object** %57, null, !dbg !1166
  br i1 %tobool68, label %if.then69, label %if.else77, !dbg !1168

if.then69:                                        ; preds = %sw.bb67
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1169
  %reference70 = bitcast %union.acpi_operand_object* %58 to %struct.acpi_object_reference*, !dbg !1171
  %class71 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference70, i32 0, i32 5, !dbg !1172
  %59 = load i8, i8* %class71, align 1, !dbg !1172
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1173
  %reference72 = bitcast %union.acpi_operand_object* %60 to %struct.acpi_object_reference*, !dbg !1174
  %value = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference72, i32 0, i32 13, !dbg !1175
  %61 = load i32, i32* %value, align 8, !dbg !1175
  %62 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1176
  %call73 = call i32 @acpi_ds_method_data_get_value(i8 zeroext %59, i32 %61, %struct.acpi_walk_state* %62, %union.acpi_operand_object** %obj_desc) #3, !dbg !1177
  store i32 %call73, i32* %status, align 4, !dbg !1178
  %63 = load i32, i32* %status, align 4, !dbg !1179
  %tobool74 = icmp ne i32 %63, 0, !dbg !1179
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !1181

if.then75:                                        ; preds = %if.then69
  %64 = load i32, i32* %status, align 4, !dbg !1182
  store i32 %64, i32* %retval, align 4, !dbg !1182
  br label %return, !dbg !1182

if.end76:                                         ; preds = %if.then69
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1184
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %65) #3, !dbg !1185
  br label %if.end90, !dbg !1186

if.else77:                                        ; preds = %sw.bb67
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1187
  %reference78 = bitcast %union.acpi_operand_object* %66 to %struct.acpi_object_reference*, !dbg !1189
  %class79 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference78, i32 0, i32 5, !dbg !1190
  %67 = load i8, i8* %class79, align 1, !dbg !1190
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1191
  %reference80 = bitcast %union.acpi_operand_object* %68 to %struct.acpi_object_reference*, !dbg !1192
  %value81 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference80, i32 0, i32 13, !dbg !1193
  %69 = load i32, i32* %value81, align 8, !dbg !1193
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1194
  %call82 = call i32 @acpi_ds_method_data_get_node(i8 zeroext %67, i32 %69, %struct.acpi_walk_state* %70, %struct.acpi_namespace_node** %node) #3, !dbg !1195
  store i32 %call82, i32* %status, align 4, !dbg !1196
  %71 = load i32, i32* %status, align 4, !dbg !1197
  %tobool83 = icmp ne i32 %71, 0, !dbg !1197
  br i1 %tobool83, label %if.then84, label %if.end85, !dbg !1199

if.then84:                                        ; preds = %if.else77
  %72 = load i32, i32* %status, align 4, !dbg !1200
  store i32 %72, i32* %retval, align 4, !dbg !1200
  br label %return, !dbg !1200

if.end85:                                         ; preds = %if.else77
  %73 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1202
  %call86 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %73) #3, !dbg !1203
  store %union.acpi_operand_object* %call86, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1204
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1205
  %tobool87 = icmp ne %union.acpi_operand_object* %74, null, !dbg !1205
  br i1 %tobool87, label %if.end89, label %if.then88, !dbg !1207

if.then88:                                        ; preds = %if.end85
  store i32 0, i32* %type, align 4, !dbg !1208
  br label %exit, !dbg !1210

if.end89:                                         ; preds = %if.end85
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end76
  br label %sw.epilog96, !dbg !1211

sw.bb91:                                          ; preds = %while.body
  store i32 16, i32* %type, align 4, !dbg !1212
  br label %exit, !dbg !1213

sw.default92:                                     ; preds = %while.body
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1214
  %reference93 = bitcast %union.acpi_operand_object* %75 to %struct.acpi_object_reference*, !dbg !1214
  %class94 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference93, i32 0, i32 5, !dbg !1214
  %76 = load i8, i8* %class94, align 1, !dbg !1214
  %conv95 = zext i8 %76 to i32, !dbg !1214
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 496, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %conv95) #3, !dbg !1214
  store i32 12303, i32* %retval, align 4, !dbg !1215
  br label %return, !dbg !1215

sw.epilog96:                                      ; preds = %if.end90, %if.end65, %if.end54
  br label %while.cond, !dbg !1088, !llvm.loop !1216

while.end:                                        ; preds = %while.cond
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1218
  %common97 = bitcast %union.acpi_operand_object* %77 to %struct.acpi_object_common*, !dbg !1219
  %type98 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common97, i32 0, i32 2, !dbg !1220
  %78 = load i8, i8* %type98, align 1, !dbg !1220
  %conv99 = zext i8 %78 to i32, !dbg !1218
  store i32 %conv99, i32* %type, align 4, !dbg !1221
  br label %exit, !dbg !1222

exit:                                             ; preds = %while.end, %sw.bb91, %if.then88, %sw.bb66, %if.then64, %if.then60, %if.then48, %if.then19
  call void @llvm.dbg.label(metadata !1223), !dbg !1224
  %79 = load i32, i32* %type, align 4, !dbg !1225
  switch i32 %79, label %sw.default102 [
    i32 17, label %sw.bb100
    i32 18, label %sw.bb100
    i32 19, label %sw.bb100
    i32 27, label %sw.bb101
  ], !dbg !1226

sw.bb100:                                         ; preds = %exit, %exit, %exit
  store i32 5, i32* %type, align 4, !dbg !1227
  br label %sw.epilog103, !dbg !1229

sw.bb101:                                         ; preds = %exit
  store i32 0, i32* %type, align 4, !dbg !1230
  br label %sw.epilog103, !dbg !1231

sw.default102:                                    ; preds = %exit
  br label %sw.epilog103, !dbg !1232

sw.epilog103:                                     ; preds = %sw.default102, %sw.bb101, %sw.bb100
  %80 = load i32, i32* %type, align 4, !dbg !1233
  %81 = load i32*, i32** %return_type.addr, align 8, !dbg !1234
  store i32 %80, i32* %81, align 4, !dbg !1235
  %82 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_desc.addr, align 8, !dbg !1236
  %tobool104 = icmp ne %union.acpi_operand_object** %82, null, !dbg !1236
  br i1 %tobool104, label %if.then105, label %if.end106, !dbg !1238

if.then105:                                       ; preds = %sw.epilog103
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1239
  %84 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_desc.addr, align 8, !dbg !1241
  store %union.acpi_operand_object* %83, %union.acpi_operand_object** %84, align 8, !dbg !1242
  br label %if.end106, !dbg !1243

if.end106:                                        ; preds = %if.then105, %sw.epilog103
  store i32 0, i32* %retval, align 4, !dbg !1244
  br label %return, !dbg !1244

return:                                           ; preds = %if.end106, %sw.default92, %if.then84, %if.then75, %if.then53, %if.then43, %sw.default15, %if.then12
  %85 = load i32, i32* %retval, align 4, !dbg !1245
  ret i32 %85, !dbg !1245
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_node_name(i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_descriptor_name(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_type(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_method_data_get_value(i8 zeroext, i32, %struct.acpi_walk_state*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_method_data_get_node(i8 zeroext, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_get_buffer_arguments(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_read_data_from_field(%struct.acpi_walk_state*, %union.acpi_operand_object*, %union.acpi_operand_object**) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!806, !807, !808, !809}
!llvm.ident = !{!810}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !804, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !803, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exresolv.c", directory: "/home/lizy2001/genbc/linux")
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
!17 = !{!18, !24, !31, !802, !93, !47}
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
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!803 = !{!0}
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 72, elements: !405)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!806 = !{i32 7, !"Dwarf Version", i32 4}
!807 = !{i32 2, !"Debug Info Version", i32 3}
!808 = !{i32 1, !"wchar_size", i32 2}
!809 = !{i32 1, !"Code Model", i32 2}
!810 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!811 = distinct !DISubprogram(name: "acpi_ex_resolve_to_value", scope: !3, file: !3, line: 41, type: !812, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!18, !125, !160}
!814 = !{}
!815 = !DILocalVariable(name: "stack_ptr", arg: 1, scope: !811, file: !3, line: 41, type: !125)
!816 = !DILocation(line: 41, column: 54, scope: !811)
!817 = !DILocalVariable(name: "walk_state", arg: 2, scope: !811, file: !3, line: 42, type: !160)
!818 = !DILocation(line: 42, column: 29, scope: !811)
!819 = !DILocalVariable(name: "status", scope: !811, file: !3, line: 44, type: !18)
!820 = !DILocation(line: 44, column: 14, scope: !811)
!821 = !DILocation(line: 48, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !811, file: !3, line: 48, column: 6)
!823 = !DILocation(line: 48, column: 17, scope: !822)
!824 = !DILocation(line: 48, column: 22, scope: !822)
!825 = !DILocation(line: 48, column: 21, scope: !822)
!826 = !DILocation(line: 48, column: 6, scope: !811)
!827 = !DILocation(line: 49, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !822, file: !3, line: 48, column: 33)
!829 = !DILocation(line: 50, column: 3, scope: !828)
!830 = !DILocation(line: 58, column: 6, scope: !831)
!831 = distinct !DILexicalBlock(scope: !811, file: !3, line: 58, column: 6)
!832 = !DILocation(line: 58, column: 43, scope: !831)
!833 = !DILocation(line: 58, column: 6, scope: !811)
!834 = !DILocation(line: 59, column: 44, scope: !835)
!835 = distinct !DILexicalBlock(scope: !831, file: !3, line: 58, column: 70)
!836 = !DILocation(line: 59, column: 55, scope: !835)
!837 = !DILocation(line: 59, column: 12, scope: !835)
!838 = !DILocation(line: 59, column: 10, scope: !835)
!839 = !DILocation(line: 60, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !835, file: !3, line: 60, column: 7)
!841 = !DILocation(line: 60, column: 7, scope: !835)
!842 = !DILocation(line: 61, column: 4, scope: !843)
!843 = distinct !DILexicalBlock(scope: !840, file: !3, line: 60, column: 29)
!844 = !DILocation(line: 64, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !835, file: !3, line: 64, column: 7)
!846 = !DILocation(line: 64, column: 8, scope: !845)
!847 = !DILocation(line: 64, column: 7, scope: !835)
!848 = !DILocation(line: 65, column: 4, scope: !849)
!849 = distinct !DILexicalBlock(scope: !845, file: !3, line: 64, column: 20)
!850 = !DILocation(line: 66, column: 4, scope: !849)
!851 = !DILocation(line: 68, column: 2, scope: !835)
!852 = !DILocation(line: 74, column: 6, scope: !853)
!853 = distinct !DILexicalBlock(scope: !811, file: !3, line: 74, column: 6)
!854 = !DILocation(line: 74, column: 43, scope: !853)
!855 = !DILocation(line: 74, column: 6, scope: !811)
!856 = !DILocation(line: 76, column: 37, scope: !857)
!857 = distinct !DILexicalBlock(scope: !853, file: !3, line: 74, column: 68)
!858 = !DILocation(line: 78, column: 22, scope: !857)
!859 = !DILocation(line: 76, column: 7, scope: !857)
!860 = !DILocation(line: 75, column: 10, scope: !857)
!861 = !DILocation(line: 79, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !857, file: !3, line: 79, column: 7)
!863 = !DILocation(line: 79, column: 7, scope: !857)
!864 = !DILocation(line: 80, column: 4, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !3, line: 79, column: 29)
!866 = !DILocation(line: 82, column: 2, scope: !857)
!867 = !DILocation(line: 85, column: 2, scope: !811)
!868 = !DILocation(line: 86, column: 1, scope: !811)
!869 = distinct !DISubprogram(name: "acpi_ex_resolve_object_to_value", scope: !3, file: !3, line: 103, type: !812, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !814)
!870 = !DILocalVariable(name: "stack_ptr", arg: 1, scope: !869, file: !3, line: 103, type: !125)
!871 = !DILocation(line: 103, column: 61, scope: !869)
!872 = !DILocalVariable(name: "walk_state", arg: 2, scope: !869, file: !3, line: 104, type: !160)
!873 = !DILocation(line: 104, column: 29, scope: !869)
!874 = !DILocalVariable(name: "status", scope: !869, file: !3, line: 106, type: !18)
!875 = !DILocation(line: 106, column: 14, scope: !869)
!876 = !DILocalVariable(name: "stack_desc", scope: !869, file: !3, line: 107, type: !43)
!877 = !DILocation(line: 107, column: 29, scope: !869)
!878 = !DILocalVariable(name: "obj_desc", scope: !869, file: !3, line: 108, type: !43)
!879 = !DILocation(line: 108, column: 29, scope: !869)
!880 = !DILocalVariable(name: "ref_type", scope: !869, file: !3, line: 109, type: !33)
!881 = !DILocation(line: 109, column: 5, scope: !869)
!882 = !DILocation(line: 113, column: 16, scope: !869)
!883 = !DILocation(line: 113, column: 15, scope: !869)
!884 = !DILocation(line: 113, column: 13, scope: !869)
!885 = !DILocation(line: 117, column: 10, scope: !869)
!886 = !DILocation(line: 117, column: 22, scope: !869)
!887 = !DILocation(line: 117, column: 29, scope: !869)
!888 = !DILocation(line: 117, column: 2, scope: !869)
!889 = !DILocation(line: 120, column: 14, scope: !890)
!890 = distinct !DILexicalBlock(scope: !869, file: !3, line: 117, column: 35)
!891 = !DILocation(line: 120, column: 26, scope: !890)
!892 = !DILocation(line: 120, column: 36, scope: !890)
!893 = !DILocation(line: 120, column: 12, scope: !890)
!894 = !DILocation(line: 122, column: 11, scope: !890)
!895 = !DILocation(line: 122, column: 3, scope: !890)
!896 = !DILocation(line: 129, column: 43, scope: !897)
!897 = distinct !DILexicalBlock(scope: !890, file: !3, line: 122, column: 21)
!898 = !DILocation(line: 130, column: 15, scope: !897)
!899 = !DILocation(line: 131, column: 15, scope: !897)
!900 = !DILocation(line: 131, column: 25, scope: !897)
!901 = !DILocation(line: 132, column: 15, scope: !897)
!902 = !DILocation(line: 129, column: 13, scope: !897)
!903 = !DILocation(line: 129, column: 11, scope: !897)
!904 = !DILocation(line: 134, column: 8, scope: !905)
!905 = distinct !DILexicalBlock(scope: !897, file: !3, line: 134, column: 8)
!906 = !DILocation(line: 134, column: 8, scope: !897)
!907 = !DILocation(line: 135, column: 5, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !3, line: 134, column: 30)
!909 = !DILocation(line: 147, column: 29, scope: !897)
!910 = !DILocation(line: 147, column: 4, scope: !897)
!911 = !DILocation(line: 148, column: 17, scope: !897)
!912 = !DILocation(line: 148, column: 5, scope: !897)
!913 = !DILocation(line: 148, column: 15, scope: !897)
!914 = !DILocation(line: 149, column: 4, scope: !897)
!915 = !DILocation(line: 153, column: 12, scope: !897)
!916 = !DILocation(line: 153, column: 24, scope: !897)
!917 = !DILocation(line: 153, column: 34, scope: !897)
!918 = !DILocation(line: 153, column: 4, scope: !897)
!919 = !DILocation(line: 157, column: 5, scope: !920)
!920 = distinct !DILexicalBlock(scope: !897, file: !3, line: 153, column: 47)
!921 = !DILocation(line: 163, column: 10, scope: !922)
!922 = distinct !DILexicalBlock(scope: !920, file: !3, line: 163, column: 9)
!923 = !DILocation(line: 163, column: 22, scope: !922)
!924 = !DILocation(line: 163, column: 29, scope: !922)
!925 = !DILocation(line: 165, column: 9, scope: !922)
!926 = !DILocation(line: 165, column: 13, scope: !922)
!927 = !DILocation(line: 165, column: 25, scope: !922)
!928 = !DILocation(line: 165, column: 32, scope: !922)
!929 = !DILocation(line: 163, column: 9, scope: !920)
!930 = !DILocation(line: 167, column: 6, scope: !931)
!931 = distinct !DILexicalBlock(scope: !922, file: !3, line: 166, column: 27)
!932 = !DILocation(line: 172, column: 17, scope: !920)
!933 = !DILocation(line: 172, column: 29, scope: !920)
!934 = !DILocation(line: 172, column: 39, scope: !920)
!935 = !DILocation(line: 172, column: 16, scope: !920)
!936 = !DILocation(line: 172, column: 14, scope: !920)
!937 = !DILocation(line: 173, column: 9, scope: !938)
!938 = distinct !DILexicalBlock(scope: !920, file: !3, line: 173, column: 9)
!939 = !DILocation(line: 173, column: 9, scope: !920)
!940 = !DILocation(line: 179, column: 28, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !3, line: 173, column: 19)
!942 = !DILocation(line: 179, column: 6, scope: !941)
!943 = !DILocation(line: 180, column: 19, scope: !941)
!944 = !DILocation(line: 180, column: 7, scope: !941)
!945 = !DILocation(line: 180, column: 17, scope: !941)
!946 = !DILocation(line: 181, column: 5, scope: !941)
!947 = !DILocation(line: 186, column: 6, scope: !948)
!948 = distinct !DILexicalBlock(scope: !938, file: !3, line: 181, column: 12)
!949 = !DILocation(line: 190, column: 13, scope: !948)
!950 = !DILocation(line: 192, column: 5, scope: !920)
!951 = !DILocation(line: 198, column: 5, scope: !920)
!952 = !DILocation(line: 202, column: 12, scope: !920)
!953 = !DILocation(line: 203, column: 5, scope: !920)
!954 = !DILocation(line: 205, column: 4, scope: !897)
!955 = !DILocation(line: 213, column: 4, scope: !897)
!956 = !DILocation(line: 219, column: 9, scope: !957)
!957 = distinct !DILexicalBlock(scope: !897, file: !3, line: 219, column: 8)
!958 = !DILocation(line: 219, column: 21, scope: !957)
!959 = !DILocation(line: 219, column: 31, scope: !957)
!960 = !DILocation(line: 219, column: 37, scope: !957)
!961 = !DILocation(line: 219, column: 42, scope: !957)
!962 = !DILocation(line: 221, column: 8, scope: !957)
!963 = !DILocation(line: 221, column: 12, scope: !957)
!964 = !DILocation(line: 221, column: 24, scope: !957)
!965 = !DILocation(line: 221, column: 34, scope: !957)
!966 = !DILocation(line: 221, column: 40, scope: !957)
!967 = !DILocation(line: 221, column: 45, scope: !957)
!968 = !DILocation(line: 219, column: 8, scope: !897)
!969 = !DILocation(line: 226, column: 26, scope: !970)
!970 = distinct !DILexicalBlock(scope: !957, file: !3, line: 222, column: 25)
!971 = !DILocation(line: 226, column: 38, scope: !970)
!972 = !DILocation(line: 226, column: 48, scope: !970)
!973 = !DILocation(line: 226, column: 18, scope: !970)
!974 = !DILocation(line: 226, column: 6, scope: !970)
!975 = !DILocation(line: 226, column: 16, scope: !970)
!976 = !DILocation(line: 227, column: 4, scope: !970)
!977 = !DILocation(line: 231, column: 10, scope: !978)
!978 = distinct !DILexicalBlock(scope: !957, file: !3, line: 227, column: 11)
!979 = !DILocation(line: 231, column: 22, scope: !978)
!980 = !DILocation(line: 231, column: 32, scope: !978)
!981 = !DILocation(line: 231, column: 39, scope: !978)
!982 = !DILocation(line: 230, column: 6, scope: !978)
!983 = !DILocation(line: 230, column: 16, scope: !978)
!984 = !DILocation(line: 232, column: 28, scope: !978)
!985 = !DILocation(line: 232, column: 27, scope: !978)
!986 = !DILocation(line: 232, column: 5, scope: !978)
!987 = !DILocation(line: 235, column: 29, scope: !897)
!988 = !DILocation(line: 235, column: 4, scope: !897)
!989 = !DILocation(line: 236, column: 4, scope: !897)
!990 = !DILocation(line: 240, column: 4, scope: !897)
!991 = !DILocation(line: 243, column: 11, scope: !897)
!992 = !DILocation(line: 244, column: 4, scope: !897)
!993 = !DILocation(line: 246, column: 3, scope: !890)
!994 = !DILocation(line: 250, column: 41, scope: !890)
!995 = !DILocation(line: 250, column: 12, scope: !890)
!996 = !DILocation(line: 250, column: 10, scope: !890)
!997 = !DILocation(line: 251, column: 3, scope: !890)
!998 = !DILocation(line: 255, column: 42, scope: !890)
!999 = !DILocation(line: 255, column: 12, scope: !890)
!1000 = !DILocation(line: 255, column: 10, scope: !890)
!1001 = !DILocation(line: 256, column: 3, scope: !890)
!1002 = !DILocation(line: 268, column: 36, scope: !890)
!1003 = !DILocation(line: 268, column: 48, scope: !890)
!1004 = !DILocation(line: 268, column: 7, scope: !890)
!1005 = !DILocation(line: 267, column: 10, scope: !890)
!1006 = !DILocation(line: 273, column: 29, scope: !890)
!1007 = !DILocation(line: 273, column: 28, scope: !890)
!1008 = !DILocation(line: 273, column: 3, scope: !890)
!1009 = !DILocation(line: 274, column: 24, scope: !890)
!1010 = !DILocation(line: 274, column: 16, scope: !890)
!1011 = !DILocation(line: 274, column: 4, scope: !890)
!1012 = !DILocation(line: 274, column: 14, scope: !890)
!1013 = !DILocation(line: 275, column: 3, scope: !890)
!1014 = !DILocation(line: 279, column: 3, scope: !890)
!1015 = !DILocation(line: 282, column: 2, scope: !869)
!1016 = !DILocation(line: 283, column: 1, scope: !869)
!1017 = distinct !DISubprogram(name: "acpi_ex_resolve_multiple", scope: !3, file: !3, line: 302, type: !1018, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !814)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!18, !160, !43, !1020, !125}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 635, baseType: !20)
!1022 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1017, file: !3, line: 302, type: !160)
!1023 = !DILocation(line: 302, column: 50, scope: !1017)
!1024 = !DILocalVariable(name: "operand", arg: 2, scope: !1017, file: !3, line: 303, type: !43)
!1025 = !DILocation(line: 303, column: 32, scope: !1017)
!1026 = !DILocalVariable(name: "return_type", arg: 3, scope: !1017, file: !3, line: 304, type: !1020)
!1027 = !DILocation(line: 304, column: 23, scope: !1017)
!1028 = !DILocalVariable(name: "return_desc", arg: 4, scope: !1017, file: !3, line: 305, type: !125)
!1029 = !DILocation(line: 305, column: 33, scope: !1017)
!1030 = !DILocalVariable(name: "obj_desc", scope: !1017, file: !3, line: 307, type: !43)
!1031 = !DILocation(line: 307, column: 29, scope: !1017)
!1032 = !DILocation(line: 307, column: 40, scope: !1017)
!1033 = !DILocalVariable(name: "node", scope: !1017, file: !3, line: 308, type: !93)
!1034 = !DILocation(line: 308, column: 30, scope: !1017)
!1035 = !DILocation(line: 309, column: 6, scope: !1017)
!1036 = !DILocalVariable(name: "type", scope: !1017, file: !3, line: 310, type: !1021)
!1037 = !DILocation(line: 310, column: 19, scope: !1017)
!1038 = !DILocalVariable(name: "status", scope: !1017, file: !3, line: 311, type: !18)
!1039 = !DILocation(line: 311, column: 14, scope: !1017)
!1040 = !DILocation(line: 317, column: 10, scope: !1017)
!1041 = !DILocation(line: 317, column: 2, scope: !1017)
!1042 = !DILocation(line: 320, column: 10, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 317, column: 46)
!1044 = !DILocation(line: 320, column: 20, scope: !1043)
!1045 = !DILocation(line: 320, column: 27, scope: !1043)
!1046 = !DILocation(line: 320, column: 8, scope: !1043)
!1047 = !DILocation(line: 321, column: 3, scope: !1043)
!1048 = !DILocation(line: 325, column: 41, scope: !1043)
!1049 = !DILocation(line: 325, column: 52, scope: !1043)
!1050 = !DILocation(line: 325, column: 10, scope: !1043)
!1051 = !DILocation(line: 325, column: 8, scope: !1043)
!1052 = !DILocation(line: 326, column: 42, scope: !1043)
!1053 = !DILocation(line: 326, column: 14, scope: !1043)
!1054 = !DILocation(line: 326, column: 12, scope: !1043)
!1055 = !DILocation(line: 330, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 330, column: 7)
!1057 = !DILocation(line: 330, column: 12, scope: !1056)
!1058 = !DILocation(line: 330, column: 7, scope: !1043)
!1059 = !DILocation(line: 331, column: 42, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 330, column: 38)
!1061 = !DILocation(line: 331, column: 53, scope: !1060)
!1062 = !DILocation(line: 331, column: 11, scope: !1060)
!1063 = !DILocation(line: 331, column: 9, scope: !1060)
!1064 = !DILocation(line: 334, column: 11, scope: !1060)
!1065 = !DILocation(line: 332, column: 43, scope: !1060)
!1066 = !DILocation(line: 332, column: 15, scope: !1060)
!1067 = !DILocation(line: 332, column: 13, scope: !1060)
!1068 = !DILocation(line: 335, column: 3, scope: !1060)
!1069 = !DILocation(line: 337, column: 11, scope: !1043)
!1070 = !DILocation(line: 337, column: 3, scope: !1043)
!1071 = !DILocation(line: 342, column: 4, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 337, column: 17)
!1073 = !DILocation(line: 348, column: 9, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 348, column: 8)
!1075 = !DILocation(line: 348, column: 8, scope: !1072)
!1076 = !DILocation(line: 349, column: 5, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 348, column: 19)
!1078 = !DILocation(line: 352, column: 5, scope: !1077)
!1079 = !DILocation(line: 354, column: 4, scope: !1072)
!1080 = !DILocation(line: 356, column: 3, scope: !1043)
!1081 = !DILocation(line: 359, column: 3, scope: !1043)
!1082 = !DILocation(line: 364, column: 6, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 364, column: 6)
!1084 = !DILocation(line: 364, column: 11, scope: !1083)
!1085 = !DILocation(line: 364, column: 6, scope: !1017)
!1086 = !DILocation(line: 365, column: 3, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 364, column: 41)
!1088 = !DILocation(line: 374, column: 2, scope: !1017)
!1089 = !DILocation(line: 374, column: 9, scope: !1017)
!1090 = !DILocation(line: 374, column: 19, scope: !1017)
!1091 = !DILocation(line: 374, column: 26, scope: !1017)
!1092 = !DILocation(line: 374, column: 31, scope: !1017)
!1093 = !DILocation(line: 375, column: 11, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 374, column: 61)
!1095 = !DILocation(line: 375, column: 21, scope: !1094)
!1096 = !DILocation(line: 375, column: 31, scope: !1094)
!1097 = !DILocation(line: 375, column: 3, scope: !1094)
!1098 = !DILocation(line: 381, column: 8, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 381, column: 8)
!1100 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 375, column: 38)
!1101 = !DILocation(line: 381, column: 18, scope: !1099)
!1102 = !DILocation(line: 381, column: 28, scope: !1099)
!1103 = !DILocation(line: 381, column: 34, scope: !1099)
!1104 = !DILocation(line: 381, column: 8, scope: !1100)
!1105 = !DILocation(line: 382, column: 12, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 381, column: 58)
!1107 = !DILocation(line: 382, column: 22, scope: !1106)
!1108 = !DILocation(line: 382, column: 32, scope: !1106)
!1109 = !DILocation(line: 382, column: 10, scope: !1106)
!1110 = !DILocation(line: 383, column: 4, scope: !1106)
!1111 = !DILocation(line: 385, column: 12, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 383, column: 11)
!1113 = !DILocation(line: 385, column: 22, scope: !1112)
!1114 = !DILocation(line: 385, column: 32, scope: !1112)
!1115 = !DILocation(line: 385, column: 10, scope: !1112)
!1116 = !DILocation(line: 390, column: 8, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 390, column: 8)
!1118 = !DILocation(line: 390, column: 39, scope: !1117)
!1119 = !DILocation(line: 390, column: 8, scope: !1100)
!1120 = !DILocation(line: 392, column: 5, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 391, column: 30)
!1122 = !DILocation(line: 396, column: 5, scope: !1121)
!1123 = !DILocation(line: 401, column: 43, scope: !1100)
!1124 = !DILocation(line: 401, column: 15, scope: !1100)
!1125 = !DILocation(line: 401, column: 13, scope: !1100)
!1126 = !DILocation(line: 402, column: 9, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 402, column: 8)
!1128 = !DILocation(line: 402, column: 8, scope: !1100)
!1129 = !DILocation(line: 406, column: 29, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 402, column: 19)
!1131 = !DILocation(line: 406, column: 12, scope: !1130)
!1132 = !DILocation(line: 406, column: 10, scope: !1130)
!1133 = !DILocation(line: 407, column: 5, scope: !1130)
!1134 = !DILocation(line: 412, column: 8, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 412, column: 8)
!1136 = !DILocation(line: 412, column: 20, scope: !1135)
!1137 = !DILocation(line: 412, column: 17, scope: !1135)
!1138 = !DILocation(line: 412, column: 8, scope: !1100)
!1139 = !DILocation(line: 413, column: 5, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 412, column: 29)
!1141 = !DILocation(line: 415, column: 4, scope: !1100)
!1142 = !DILocation(line: 421, column: 11, scope: !1100)
!1143 = !DILocation(line: 421, column: 21, scope: !1100)
!1144 = !DILocation(line: 421, column: 31, scope: !1100)
!1145 = !DILocation(line: 421, column: 9, scope: !1100)
!1146 = !DILocation(line: 422, column: 8, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 422, column: 8)
!1148 = !DILocation(line: 422, column: 13, scope: !1147)
!1149 = !DILocation(line: 422, column: 8, scope: !1100)
!1150 = !DILocation(line: 423, column: 5, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 422, column: 35)
!1152 = !DILocation(line: 433, column: 17, scope: !1100)
!1153 = !DILocation(line: 433, column: 27, scope: !1100)
!1154 = !DILocation(line: 433, column: 37, scope: !1100)
!1155 = !DILocation(line: 433, column: 15, scope: !1100)
!1156 = !DILocation(line: 433, column: 13, scope: !1100)
!1157 = !DILocation(line: 434, column: 9, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 434, column: 8)
!1159 = !DILocation(line: 434, column: 8, scope: !1100)
!1160 = !DILocation(line: 438, column: 10, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 434, column: 19)
!1162 = !DILocation(line: 439, column: 5, scope: !1161)
!1163 = !DILocation(line: 441, column: 4, scope: !1100)
!1164 = !DILocation(line: 445, column: 9, scope: !1100)
!1165 = !DILocation(line: 446, column: 4, scope: !1100)
!1166 = !DILocation(line: 451, column: 8, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 451, column: 8)
!1168 = !DILocation(line: 451, column: 8, scope: !1100)
!1169 = !DILocation(line: 453, column: 39, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 451, column: 21)
!1171 = !DILocation(line: 454, column: 11, scope: !1170)
!1172 = !DILocation(line: 455, column: 11, scope: !1170)
!1173 = !DILocation(line: 456, column: 11, scope: !1170)
!1174 = !DILocation(line: 457, column: 11, scope: !1170)
!1175 = !DILocation(line: 458, column: 11, scope: !1170)
!1176 = !DILocation(line: 459, column: 11, scope: !1170)
!1177 = !DILocation(line: 453, column: 9, scope: !1170)
!1178 = !DILocation(line: 452, column: 12, scope: !1170)
!1179 = !DILocation(line: 461, column: 9, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 461, column: 9)
!1181 = !DILocation(line: 461, column: 9, scope: !1170)
!1182 = !DILocation(line: 462, column: 6, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 461, column: 31)
!1184 = !DILocation(line: 464, column: 30, scope: !1170)
!1185 = !DILocation(line: 464, column: 5, scope: !1170)
!1186 = !DILocation(line: 465, column: 4, scope: !1170)
!1187 = !DILocation(line: 467, column: 38, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 465, column: 11)
!1189 = !DILocation(line: 468, column: 10, scope: !1188)
!1190 = !DILocation(line: 469, column: 10, scope: !1188)
!1191 = !DILocation(line: 470, column: 10, scope: !1188)
!1192 = !DILocation(line: 471, column: 10, scope: !1188)
!1193 = !DILocation(line: 472, column: 10, scope: !1188)
!1194 = !DILocation(line: 473, column: 10, scope: !1188)
!1195 = !DILocation(line: 467, column: 9, scope: !1188)
!1196 = !DILocation(line: 466, column: 12, scope: !1188)
!1197 = !DILocation(line: 475, column: 9, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 475, column: 9)
!1199 = !DILocation(line: 475, column: 9, scope: !1188)
!1200 = !DILocation(line: 476, column: 6, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 475, column: 31)
!1202 = !DILocation(line: 479, column: 44, scope: !1188)
!1203 = !DILocation(line: 479, column: 16, scope: !1188)
!1204 = !DILocation(line: 479, column: 14, scope: !1188)
!1205 = !DILocation(line: 480, column: 10, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 480, column: 9)
!1207 = !DILocation(line: 480, column: 9, scope: !1188)
!1208 = !DILocation(line: 481, column: 11, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 480, column: 20)
!1210 = !DILocation(line: 482, column: 6, scope: !1209)
!1211 = !DILocation(line: 485, column: 4, scope: !1100)
!1212 = !DILocation(line: 491, column: 9, scope: !1100)
!1213 = !DILocation(line: 492, column: 4, scope: !1100)
!1214 = !DILocation(line: 496, column: 4, scope: !1100)
!1215 = !DILocation(line: 499, column: 4, scope: !1100)
!1216 = distinct !{!1216, !1088, !1217}
!1217 = !DILocation(line: 501, column: 2, scope: !1017)
!1218 = !DILocation(line: 507, column: 9, scope: !1017)
!1219 = !DILocation(line: 507, column: 19, scope: !1017)
!1220 = !DILocation(line: 507, column: 26, scope: !1017)
!1221 = !DILocation(line: 507, column: 7, scope: !1017)
!1222 = !DILocation(line: 507, column: 2, scope: !1017)
!1223 = !DILabel(scope: !1017, name: "exit", file: !3, line: 509)
!1224 = !DILocation(line: 509, column: 1, scope: !1017)
!1225 = !DILocation(line: 512, column: 10, scope: !1017)
!1226 = !DILocation(line: 512, column: 2, scope: !1017)
!1227 = !DILocation(line: 517, column: 8, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 512, column: 16)
!1229 = !DILocation(line: 518, column: 3, scope: !1228)
!1230 = !DILocation(line: 524, column: 8, scope: !1228)
!1231 = !DILocation(line: 525, column: 3, scope: !1228)
!1232 = !DILocation(line: 531, column: 3, scope: !1228)
!1233 = !DILocation(line: 534, column: 17, scope: !1017)
!1234 = !DILocation(line: 534, column: 3, scope: !1017)
!1235 = !DILocation(line: 534, column: 15, scope: !1017)
!1236 = !DILocation(line: 535, column: 6, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 535, column: 6)
!1238 = !DILocation(line: 535, column: 6, scope: !1017)
!1239 = !DILocation(line: 536, column: 18, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 535, column: 19)
!1241 = !DILocation(line: 536, column: 4, scope: !1240)
!1242 = !DILocation(line: 536, column: 16, scope: !1240)
!1243 = !DILocation(line: 537, column: 2, scope: !1240)
!1244 = !DILocation(line: 538, column: 2, scope: !1017)
!1245 = !DILocation(line: 539, column: 1, scope: !1017)
