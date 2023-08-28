; ModuleID = '../bcout/drivers/acpi/acpica/nsobject.llvm.bc'
source_filename = "drivers/acpi/acpica/nsobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_method = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*, %union.anon, i32, i16, i8 }
%union.anon = type { i32 (%struct.acpi_walk_state*)* }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_object_data = type { %union.acpi_operand_object*, i8, i8, i16, i8, void (i8*, i8*)*, i8* }

@_acpi_module_name = internal constant [9 x i8] c"nsobject\00", align 1, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"Null NamedObj handle\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Null object, but type not ACPI_TYPE_ANY\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid handle %p [%s]\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Null Node ptr\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %node, %union.acpi_operand_object* %object, i32 %type) #0 !dbg !800 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %object.addr = alloca %union.acpi_operand_object*, align 8
  %type.addr = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %last_obj_desc = alloca %union.acpi_operand_object*, align 8
  %object_type = alloca i32, align 4
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !804, metadata !DIExpression()), !dbg !805
  store %union.acpi_operand_object* %object, %union.acpi_operand_object** %object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object.addr, metadata !806, metadata !DIExpression()), !dbg !807
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !808, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !810, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %last_obj_desc, metadata !812, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.declare(metadata i32* %object_type, metadata !814, metadata !DIExpression()), !dbg !815
  store i32 0, i32* %object_type, align 4, !dbg !815
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !816
  %tobool = icmp ne %struct.acpi_namespace_node* %0, null, !dbg !816
  br i1 %tobool, label %if.end, label %if.then, !dbg !818

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)) #3, !dbg !819
  store i32 4097, i32* %retval, align 4, !dbg !821
  br label %return, !dbg !821

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !822
  %tobool1 = icmp ne %union.acpi_operand_object* %1, null, !dbg !822
  br i1 %tobool1, label %if.end3, label %land.lhs.true, !dbg !824

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* %type.addr, align 4, !dbg !825
  %cmp = icmp ne i32 0, %2, !dbg !826
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !827

if.then2:                                         ; preds = %land.lhs.true
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !828
  store i32 4097, i32* %retval, align 4, !dbg !830
  br label %return, !dbg !830

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !831
  %4 = bitcast %struct.acpi_namespace_node* %3 to i8*, !dbg !831
  %5 = bitcast i8* %4 to %union.acpi_descriptor*, !dbg !831
  %common = bitcast %union.acpi_descriptor* %5 to %struct.acpi_common_descriptor*, !dbg !831
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !831
  %6 = load i8, i8* %descriptor_type, align 8, !dbg !831
  %conv = zext i8 %6 to i32, !dbg !831
  %cmp4 = icmp ne i32 %conv, 15, !dbg !833
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !834

if.then6:                                         ; preds = %if.end3
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !835
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !835
  %9 = bitcast %struct.acpi_namespace_node* %8 to i8*, !dbg !835
  %call = call i8* @acpi_ut_get_descriptor_name(i8* %9) #3, !dbg !835
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.acpi_namespace_node* %7, i8* %call) #3, !dbg !835
  store i32 4097, i32* %retval, align 4, !dbg !837
  br label %return, !dbg !837

if.end7:                                          ; preds = %if.end3
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !838
  %object8 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 0, !dbg !840
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object8, align 8, !dbg !840
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !841
  %cmp9 = icmp eq %union.acpi_operand_object* %11, %12, !dbg !842
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !843

if.then11:                                        ; preds = %if.end7
  store i32 0, i32* %retval, align 4, !dbg !844
  br label %return, !dbg !844

if.end12:                                         ; preds = %if.end7
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !846
  %tobool13 = icmp ne %union.acpi_operand_object* %13, null, !dbg !846
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !848

if.then14:                                        ; preds = %if.end12
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %obj_desc, align 8, !dbg !849
  store i32 0, i32* %object_type, align 4, !dbg !851
  br label %if.end29, !dbg !852

if.else:                                          ; preds = %if.end12
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !853
  %15 = bitcast %union.acpi_operand_object* %14 to i8*, !dbg !853
  %16 = bitcast i8* %15 to %union.acpi_descriptor*, !dbg !853
  %common15 = bitcast %union.acpi_descriptor* %16 to %struct.acpi_common_descriptor*, !dbg !853
  %descriptor_type16 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common15, i32 0, i32 1, !dbg !853
  %17 = load i8, i8* %descriptor_type16, align 8, !dbg !853
  %conv17 = zext i8 %17 to i32, !dbg !853
  %cmp18 = icmp eq i32 %conv17, 15, !dbg !855
  br i1 %cmp18, label %land.lhs.true20, label %if.else27, !dbg !856

land.lhs.true20:                                  ; preds = %if.else
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !857
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_namespace_node*, !dbg !858
  %object21 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %19, i32 0, i32 0, !dbg !858
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object21, align 8, !dbg !858
  %tobool22 = icmp ne %union.acpi_operand_object* %20, null, !dbg !859
  br i1 %tobool22, label %if.then23, label %if.else27, !dbg !860

if.then23:                                        ; preds = %land.lhs.true20
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !861
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_namespace_node*, !dbg !863
  %object24 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %22, i32 0, i32 0, !dbg !863
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object24, align 8, !dbg !863
  store %union.acpi_operand_object* %23, %union.acpi_operand_object** %obj_desc, align 8, !dbg !864
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !865
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_namespace_node*, !dbg !866
  %type25 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %25, i32 0, i32 2, !dbg !866
  %26 = load i8, i8* %type25, align 1, !dbg !866
  %conv26 = zext i8 %26 to i32, !dbg !867
  store i32 %conv26, i32* %object_type, align 4, !dbg !868
  br label %if.end28, !dbg !869

if.else27:                                        ; preds = %land.lhs.true20, %if.else
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !870
  store %union.acpi_operand_object* %27, %union.acpi_operand_object** %obj_desc, align 8, !dbg !872
  %28 = load i32, i32* %type.addr, align 4, !dbg !873
  store i32 %28, i32* %object_type, align 4, !dbg !874
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then14
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !875
  %object30 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %29, i32 0, i32 0, !dbg !877
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object30, align 8, !dbg !877
  %tobool31 = icmp ne %union.acpi_operand_object* %30, null, !dbg !875
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !878

if.then32:                                        ; preds = %if.end29
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !879
  call void @acpi_ns_detach_object(%struct.acpi_namespace_node* %31) #3, !dbg !881
  br label %if.end33, !dbg !882

if.end33:                                         ; preds = %if.then32, %if.end29
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !883
  %tobool34 = icmp ne %union.acpi_operand_object* %32, null, !dbg !883
  br i1 %tobool34, label %if.then35, label %if.end43, !dbg !885

if.then35:                                        ; preds = %if.end33
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !886
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %33) #3, !dbg !888
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !889
  store %union.acpi_operand_object* %34, %union.acpi_operand_object** %last_obj_desc, align 8, !dbg !890
  br label %while.cond, !dbg !891

while.cond:                                       ; preds = %while.body, %if.then35
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %last_obj_desc, align 8, !dbg !892
  %common36 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_common*, !dbg !893
  %next_object = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common36, i32 0, i32 0, !dbg !894
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !894
  %tobool37 = icmp ne %union.acpi_operand_object* %36, null, !dbg !891
  br i1 %tobool37, label %while.body, label %while.end, !dbg !891

while.body:                                       ; preds = %while.cond
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %last_obj_desc, align 8, !dbg !895
  %common38 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_common*, !dbg !897
  %next_object39 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common38, i32 0, i32 0, !dbg !898
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object39, align 8, !dbg !898
  store %union.acpi_operand_object* %38, %union.acpi_operand_object** %last_obj_desc, align 8, !dbg !899
  br label %while.cond, !dbg !891, !llvm.loop !900

while.end:                                        ; preds = %while.cond
  %39 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !902
  %object40 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %39, i32 0, i32 0, !dbg !903
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object40, align 8, !dbg !903
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %last_obj_desc, align 8, !dbg !904
  %common41 = bitcast %union.acpi_operand_object* %41 to %struct.acpi_object_common*, !dbg !905
  %next_object42 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common41, i32 0, i32 0, !dbg !906
  store %union.acpi_operand_object* %40, %union.acpi_operand_object** %next_object42, align 8, !dbg !907
  br label %if.end43, !dbg !908

if.end43:                                         ; preds = %while.end, %if.end33
  %42 = load i32, i32* %object_type, align 4, !dbg !909
  %conv44 = trunc i32 %42 to i8, !dbg !910
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !911
  %type45 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %43, i32 0, i32 2, !dbg !912
  store i8 %conv44, i8* %type45, align 1, !dbg !913
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !914
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !915
  %object46 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %45, i32 0, i32 0, !dbg !916
  store %union.acpi_operand_object* %44, %union.acpi_operand_object** %object46, align 8, !dbg !917
  store i32 0, i32* %retval, align 4, !dbg !918
  br label %return, !dbg !918

return:                                           ; preds = %if.end43, %if.then11, %if.then6, %if.then2, %if.then
  %46 = load i32, i32* %retval, align 4, !dbg !919
  ret i32 %46, !dbg !919
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_descriptor_name(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_detach_object(%struct.acpi_namespace_node* %node) #0 !dbg !920 {
entry:
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !923, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !925, metadata !DIExpression()), !dbg !926
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !927
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %0, i32 0, i32 0, !dbg !928
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !928
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %obj_desc, align 8, !dbg !929
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !930
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !930
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !932

lor.lhs.false:                                    ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !933
  %common = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !934
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !935
  %4 = load i8, i8* %type, align 1, !dbg !935
  %conv = zext i8 %4 to i32, !dbg !933
  %cmp = icmp eq i32 %conv, 29, !dbg !936
  br i1 %cmp, label %if.then, label %if.end, !dbg !937

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !938

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !940
  %flags = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %5, i32 0, i32 3, !dbg !942
  %6 = load i16, i16* %flags, align 2, !dbg !942
  %conv2 = zext i16 %6 to i32, !dbg !940
  %and = and i32 %conv2, 64, !dbg !943
  %tobool3 = icmp ne i32 %and, 0, !dbg !943
  br i1 %tobool3, label %if.then4, label %if.end12, !dbg !944

if.then4:                                         ; preds = %if.end
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !945
  %common5 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_common*, !dbg !948
  %type6 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common5, i32 0, i32 2, !dbg !949
  %8 = load i8, i8* %type6, align 1, !dbg !949
  %conv7 = zext i8 %8 to i32, !dbg !945
  %cmp8 = icmp eq i32 %conv7, 8, !dbg !950
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !951

if.then10:                                        ; preds = %if.then4
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !952
  %method = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_method*, !dbg !952
  %aml_start = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 10, !dbg !952
  %10 = load i8*, i8** %aml_start, align 8, !dbg !952
  call void @acpi_os_free(i8* %10) #3, !dbg !952
  br label %if.end11, !dbg !954

if.end11:                                         ; preds = %if.then10, %if.then4
  br label %if.end12, !dbg !955

if.end12:                                         ; preds = %if.end11, %if.end
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !956
  %common13 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_common*, !dbg !958
  %type14 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common13, i32 0, i32 2, !dbg !959
  %12 = load i8, i8* %type14, align 1, !dbg !959
  %conv15 = zext i8 %12 to i32, !dbg !956
  %cmp16 = icmp eq i32 %conv15, 10, !dbg !960
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !961

if.then18:                                        ; preds = %if.end12
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !962
  %region = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_region*, !dbg !964
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !965
  %14 = load i8, i8* %space_id, align 1, !dbg !965
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !966
  call void @acpi_ut_remove_address_range(i8 zeroext %14, %struct.acpi_namespace_node* %15) #3, !dbg !967
  br label %if.end19, !dbg !968

if.end19:                                         ; preds = %if.then18, %if.end12
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !969
  %object20 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %16, i32 0, i32 0, !dbg !970
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %object20, align 8, !dbg !971
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !972
  %18 = bitcast %union.acpi_operand_object* %17 to i8*, !dbg !972
  %19 = bitcast i8* %18 to %union.acpi_descriptor*, !dbg !972
  %common21 = bitcast %union.acpi_descriptor* %19 to %struct.acpi_common_descriptor*, !dbg !972
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common21, i32 0, i32 1, !dbg !972
  %20 = load i8, i8* %descriptor_type, align 8, !dbg !972
  %conv22 = zext i8 %20 to i32, !dbg !972
  %cmp23 = icmp eq i32 %conv22, 14, !dbg !974
  br i1 %cmp23, label %if.then25, label %if.end57, !dbg !975

if.then25:                                        ; preds = %if.end19
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !976
  %common26 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_common*, !dbg !978
  %next_object = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common26, i32 0, i32 0, !dbg !979
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !979
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !980
  %object27 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %23, i32 0, i32 0, !dbg !981
  store %union.acpi_operand_object* %22, %union.acpi_operand_object** %object27, align 8, !dbg !982
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !983
  %object28 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %24, i32 0, i32 0, !dbg !985
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object28, align 8, !dbg !985
  %tobool29 = icmp ne %union.acpi_operand_object* %25, null, !dbg !983
  br i1 %tobool29, label %land.lhs.true, label %if.end41, !dbg !986

land.lhs.true:                                    ; preds = %if.then25
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !987
  %object30 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %26, i32 0, i32 0, !dbg !988
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object30, align 8, !dbg !988
  %common31 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_common*, !dbg !989
  %type32 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common31, i32 0, i32 2, !dbg !990
  %28 = load i8, i8* %type32, align 1, !dbg !990
  %conv33 = zext i8 %28 to i32, !dbg !987
  %cmp34 = icmp ne i32 %conv33, 29, !dbg !991
  br i1 %cmp34, label %if.then36, label %if.end41, !dbg !992

if.then36:                                        ; preds = %land.lhs.true
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !993
  %object37 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %29, i32 0, i32 0, !dbg !995
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object37, align 8, !dbg !995
  %common38 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_common*, !dbg !996
  %next_object39 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common38, i32 0, i32 0, !dbg !997
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object39, align 8, !dbg !997
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !998
  %object40 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %32, i32 0, i32 0, !dbg !999
  store %union.acpi_operand_object* %31, %union.acpi_operand_object** %object40, align 8, !dbg !1000
  br label %if.end41, !dbg !1001

if.end41:                                         ; preds = %if.then36, %land.lhs.true, %if.then25
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1002
  %common42 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_common*, !dbg !1004
  %next_object43 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common42, i32 0, i32 0, !dbg !1005
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object43, align 8, !dbg !1005
  %tobool44 = icmp ne %union.acpi_operand_object* %34, null, !dbg !1002
  br i1 %tobool44, label %land.lhs.true45, label %if.end56, !dbg !1006

land.lhs.true45:                                  ; preds = %if.end41
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1007
  %common46 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_common*, !dbg !1008
  %next_object47 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common46, i32 0, i32 0, !dbg !1009
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object47, align 8, !dbg !1009
  %common48 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_common*, !dbg !1010
  %type49 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common48, i32 0, i32 2, !dbg !1011
  %37 = load i8, i8* %type49, align 1, !dbg !1011
  %conv50 = zext i8 %37 to i32, !dbg !1012
  %cmp51 = icmp eq i32 %conv50, 29, !dbg !1013
  br i1 %cmp51, label %if.then53, label %if.end56, !dbg !1014

if.then53:                                        ; preds = %land.lhs.true45
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1015
  %common54 = bitcast %union.acpi_operand_object* %38 to %struct.acpi_object_common*, !dbg !1017
  %next_object55 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common54, i32 0, i32 0, !dbg !1018
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %next_object55, align 8, !dbg !1019
  br label %if.end56, !dbg !1020

if.end56:                                         ; preds = %if.then53, %land.lhs.true45, %if.end41
  br label %if.end57, !dbg !1021

if.end57:                                         ; preds = %if.end56, %if.end19
  %39 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1022
  %type58 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %39, i32 0, i32 2, !dbg !1023
  store i8 0, i8* %type58, align 1, !dbg !1024
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1025
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %40) #3, !dbg !1026
  br label %return, !dbg !1027

return:                                           ; preds = %if.end57, %if.then
  ret void, !dbg !1028
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1029 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1033, metadata !DIExpression()), !dbg !1034
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1035
  call void @kfree(i8* %0) #3, !dbg !1036
  ret void, !dbg !1037
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_address_range(i8 zeroext, %struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %node) #0 !dbg !1038 {
entry:
  %retval = alloca %union.acpi_operand_object*, align 8
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1041, metadata !DIExpression()), !dbg !1042
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1043
  %tobool = icmp ne %struct.acpi_namespace_node* %0, null, !dbg !1043
  br i1 %tobool, label %if.end, label %if.then, !dbg !1045

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 253, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1046
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %retval, align 8, !dbg !1048
  br label %return, !dbg !1048

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1049
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %1, i32 0, i32 0, !dbg !1051
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1051
  %tobool1 = icmp ne %union.acpi_operand_object* %2, null, !dbg !1049
  br i1 %tobool1, label %lor.lhs.false, label %if.then16, !dbg !1052

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1053
  %object2 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %3, i32 0, i32 0, !dbg !1053
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object2, align 8, !dbg !1053
  %5 = bitcast %union.acpi_operand_object* %4 to i8*, !dbg !1053
  %6 = bitcast i8* %5 to %union.acpi_descriptor*, !dbg !1053
  %common = bitcast %union.acpi_descriptor* %6 to %struct.acpi_common_descriptor*, !dbg !1053
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !1053
  %7 = load i8, i8* %descriptor_type, align 8, !dbg !1053
  %conv = zext i8 %7 to i32, !dbg !1053
  %cmp = icmp ne i32 %conv, 14, !dbg !1054
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false10, !dbg !1055

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1056
  %object4 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %8, i32 0, i32 0, !dbg !1056
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object4, align 8, !dbg !1056
  %10 = bitcast %union.acpi_operand_object* %9 to i8*, !dbg !1056
  %11 = bitcast i8* %10 to %union.acpi_descriptor*, !dbg !1056
  %common5 = bitcast %union.acpi_descriptor* %11 to %struct.acpi_common_descriptor*, !dbg !1056
  %descriptor_type6 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common5, i32 0, i32 1, !dbg !1056
  %12 = load i8, i8* %descriptor_type6, align 8, !dbg !1056
  %conv7 = zext i8 %12 to i32, !dbg !1056
  %cmp8 = icmp ne i32 %conv7, 15, !dbg !1057
  br i1 %cmp8, label %if.then16, label %lor.lhs.false10, !dbg !1058

lor.lhs.false10:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1059
  %object11 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %13, i32 0, i32 0, !dbg !1060
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object11, align 8, !dbg !1060
  %common12 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_common*, !dbg !1061
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common12, i32 0, i32 2, !dbg !1062
  %15 = load i8, i8* %type, align 1, !dbg !1062
  %conv13 = zext i8 %15 to i32, !dbg !1063
  %cmp14 = icmp eq i32 %conv13, 29, !dbg !1064
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1065

if.then16:                                        ; preds = %lor.lhs.false10, %land.lhs.true, %if.end
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %retval, align 8, !dbg !1066
  br label %return, !dbg !1066

if.end17:                                         ; preds = %lor.lhs.false10
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1068
  %object18 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %16, i32 0, i32 0, !dbg !1068
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object18, align 8, !dbg !1068
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %retval, align 8, !dbg !1068
  br label %return, !dbg !1068

return:                                           ; preds = %if.end17, %if.then16, %if.then
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %retval, align 8, !dbg !1069
  ret %union.acpi_operand_object* %18, !dbg !1069
}

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %obj_desc) #0 !dbg !1070 {
entry:
  %retval = alloca %union.acpi_operand_object*, align 8
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1073, metadata !DIExpression()), !dbg !1074
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1075
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1075
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1077

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1078
  %common = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_common*, !dbg !1079
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1080
  %2 = load i8, i8* %type, align 1, !dbg !1080
  %conv = zext i8 %2 to i32, !dbg !1078
  %cmp = icmp eq i32 %conv, 29, !dbg !1081
  br i1 %cmp, label %if.then, label %lor.lhs.false2, !dbg !1082

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1083
  %common3 = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !1084
  %next_object = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common3, i32 0, i32 0, !dbg !1085
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !1085
  %tobool4 = icmp ne %union.acpi_operand_object* %4, null, !dbg !1083
  br i1 %tobool4, label %lor.lhs.false5, label %if.then, !dbg !1086

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1087
  %common6 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_common*, !dbg !1088
  %next_object7 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common6, i32 0, i32 0, !dbg !1089
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object7, align 8, !dbg !1089
  %common8 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_common*, !dbg !1090
  %type9 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common8, i32 0, i32 2, !dbg !1091
  %7 = load i8, i8* %type9, align 1, !dbg !1091
  %conv10 = zext i8 %7 to i32, !dbg !1092
  %cmp11 = icmp eq i32 %conv10, 29, !dbg !1093
  br i1 %cmp11, label %if.then, label %if.end, !dbg !1094

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %retval, align 8, !dbg !1095
  br label %return, !dbg !1095

if.end:                                           ; preds = %lor.lhs.false5
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1097
  %common13 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_common*, !dbg !1097
  %next_object14 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common13, i32 0, i32 0, !dbg !1097
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object14, align 8, !dbg !1097
  store %union.acpi_operand_object* %9, %union.acpi_operand_object** %retval, align 8, !dbg !1097
  br label %return, !dbg !1097

return:                                           ; preds = %if.end, %if.then
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %retval, align 8, !dbg !1098
  ret %union.acpi_operand_object* %10, !dbg !1098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_attach_data(%struct.acpi_namespace_node* %node, void (i8*, i8*)* %handler, i8* %data) #0 !dbg !1099 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %handler.addr = alloca void (i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %prev_obj_desc = alloca %union.acpi_operand_object*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %data_desc = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1102, metadata !DIExpression()), !dbg !1103
  store void (i8*, i8*)* %handler, void (i8*, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %handler.addr, metadata !1104, metadata !DIExpression()), !dbg !1105
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !1106, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %prev_obj_desc, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1110, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %data_desc, metadata !1112, metadata !DIExpression()), !dbg !1113
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %prev_obj_desc, align 8, !dbg !1114
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1115
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %0, i32 0, i32 0, !dbg !1116
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1116
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1117
  br label %while.cond, !dbg !1118

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1119
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !1118
  br i1 %tobool, label %while.body, label %while.end, !dbg !1118

while.body:                                       ; preds = %while.cond
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1120
  %common = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !1123
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1124
  %4 = load i8, i8* %type, align 1, !dbg !1124
  %conv = zext i8 %4 to i32, !dbg !1120
  %cmp = icmp eq i32 %conv, 29, !dbg !1125
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1126

land.lhs.true:                                    ; preds = %while.body
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1127
  %data2 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_data*, !dbg !1128
  %handler3 = getelementptr inbounds %struct.acpi_object_data, %struct.acpi_object_data* %data2, i32 0, i32 5, !dbg !1129
  %6 = load void (i8*, i8*)*, void (i8*, i8*)** %handler3, align 8, !dbg !1129
  %7 = load void (i8*, i8*)*, void (i8*, i8*)** %handler.addr, align 8, !dbg !1130
  %cmp4 = icmp eq void (i8*, i8*)* %6, %7, !dbg !1131
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1132

if.then:                                          ; preds = %land.lhs.true
  store i32 7, i32* %retval, align 4, !dbg !1133
  br label %return, !dbg !1133

if.end:                                           ; preds = %land.lhs.true, %while.body
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1135
  store %union.acpi_operand_object* %8, %union.acpi_operand_object** %prev_obj_desc, align 8, !dbg !1136
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1137
  %common6 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_common*, !dbg !1138
  %next_object = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common6, i32 0, i32 0, !dbg !1139
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !1139
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1140
  br label %while.cond, !dbg !1118, !llvm.loop !1141

while.end:                                        ; preds = %while.cond
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 336, i32 16, i32 29) #3, !dbg !1143
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %data_desc, align 8, !dbg !1144
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %data_desc, align 8, !dbg !1145
  %tobool7 = icmp ne %union.acpi_operand_object* %11, null, !dbg !1145
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1147

if.then8:                                         ; preds = %while.end
  store i32 4, i32* %retval, align 4, !dbg !1148
  br label %return, !dbg !1148

if.end9:                                          ; preds = %while.end
  %12 = load void (i8*, i8*)*, void (i8*, i8*)** %handler.addr, align 8, !dbg !1150
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %data_desc, align 8, !dbg !1151
  %data10 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_data*, !dbg !1152
  %handler11 = getelementptr inbounds %struct.acpi_object_data, %struct.acpi_object_data* %data10, i32 0, i32 5, !dbg !1153
  store void (i8*, i8*)* %12, void (i8*, i8*)** %handler11, align 8, !dbg !1154
  %14 = load i8*, i8** %data.addr, align 8, !dbg !1155
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %data_desc, align 8, !dbg !1156
  %data12 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_data*, !dbg !1157
  %pointer = getelementptr inbounds %struct.acpi_object_data, %struct.acpi_object_data* %data12, i32 0, i32 6, !dbg !1158
  store i8* %14, i8** %pointer, align 8, !dbg !1159
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %prev_obj_desc, align 8, !dbg !1160
  %tobool13 = icmp ne %union.acpi_operand_object* %16, null, !dbg !1160
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !1162

if.then14:                                        ; preds = %if.end9
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %data_desc, align 8, !dbg !1163
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %prev_obj_desc, align 8, !dbg !1165
  %common15 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_common*, !dbg !1166
  %next_object16 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common15, i32 0, i32 0, !dbg !1167
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %next_object16, align 8, !dbg !1168
  br label %if.end18, !dbg !1169

if.else:                                          ; preds = %if.end9
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %data_desc, align 8, !dbg !1170
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1172
  %object17 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %20, i32 0, i32 0, !dbg !1173
  store %union.acpi_operand_object* %19, %union.acpi_operand_object** %object17, align 8, !dbg !1174
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  store i32 0, i32* %retval, align 4, !dbg !1175
  br label %return, !dbg !1175

return:                                           ; preds = %if.end18, %if.then8, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !1176
  ret i32 %21, !dbg !1176
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_detach_data(%struct.acpi_namespace_node* %node, void (i8*, i8*)* %handler) #0 !dbg !1177 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %handler.addr = alloca void (i8*, i8*)*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %prev_obj_desc = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1180, metadata !DIExpression()), !dbg !1181
  store void (i8*, i8*)* %handler, void (i8*, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %handler.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1184, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %prev_obj_desc, metadata !1186, metadata !DIExpression()), !dbg !1187
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %prev_obj_desc, align 8, !dbg !1188
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1189
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %0, i32 0, i32 0, !dbg !1190
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1190
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1191
  br label %while.cond, !dbg !1192

while.cond:                                       ; preds = %if.end13, %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1193
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !1192
  br i1 %tobool, label %while.body, label %while.end, !dbg !1192

while.body:                                       ; preds = %while.cond
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1194
  %common = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !1197
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1198
  %4 = load i8, i8* %type, align 1, !dbg !1198
  %conv = zext i8 %4 to i32, !dbg !1194
  %cmp = icmp eq i32 %conv, 29, !dbg !1199
  br i1 %cmp, label %land.lhs.true, label %if.end13, !dbg !1200

land.lhs.true:                                    ; preds = %while.body
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1201
  %data = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_data*, !dbg !1202
  %handler2 = getelementptr inbounds %struct.acpi_object_data, %struct.acpi_object_data* %data, i32 0, i32 5, !dbg !1203
  %6 = load void (i8*, i8*)*, void (i8*, i8*)** %handler2, align 8, !dbg !1203
  %7 = load void (i8*, i8*)*, void (i8*, i8*)** %handler.addr, align 8, !dbg !1204
  %cmp3 = icmp eq void (i8*, i8*)* %6, %7, !dbg !1205
  br i1 %cmp3, label %if.then, label %if.end13, !dbg !1206

if.then:                                          ; preds = %land.lhs.true
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %prev_obj_desc, align 8, !dbg !1207
  %tobool5 = icmp ne %union.acpi_operand_object* %8, null, !dbg !1207
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1210

if.then6:                                         ; preds = %if.then
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1211
  %common7 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_common*, !dbg !1213
  %next_object = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common7, i32 0, i32 0, !dbg !1214
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !1214
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %prev_obj_desc, align 8, !dbg !1215
  %common8 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_common*, !dbg !1216
  %next_object9 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common8, i32 0, i32 0, !dbg !1217
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %next_object9, align 8, !dbg !1218
  br label %if.end, !dbg !1219

if.else:                                          ; preds = %if.then
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1220
  %common10 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_common*, !dbg !1222
  %next_object11 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common10, i32 0, i32 0, !dbg !1223
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object11, align 8, !dbg !1223
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1224
  %object12 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %14, i32 0, i32 0, !dbg !1225
  store %union.acpi_operand_object* %13, %union.acpi_operand_object** %object12, align 8, !dbg !1226
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1227
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %15) #3, !dbg !1228
  store i32 0, i32* %retval, align 4, !dbg !1229
  br label %return, !dbg !1229

if.end13:                                         ; preds = %land.lhs.true, %while.body
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1230
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %prev_obj_desc, align 8, !dbg !1231
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1232
  %common14 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_common*, !dbg !1233
  %next_object15 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common14, i32 0, i32 0, !dbg !1234
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object15, align 8, !dbg !1234
  store %union.acpi_operand_object* %18, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1235
  br label %while.cond, !dbg !1192, !llvm.loop !1236

while.end:                                        ; preds = %while.cond
  store i32 5, i32* %retval, align 4, !dbg !1238
  br label %return, !dbg !1238

return:                                           ; preds = %while.end, %if.end
  %19 = load i32, i32* %retval, align 4, !dbg !1239
  ret i32 %19, !dbg !1239
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_get_attached_data(%struct.acpi_namespace_node* %node, void (i8*, i8*)* %handler, i8** %data) #0 !dbg !1240 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %handler.addr = alloca void (i8*, i8*)*, align 8
  %data.addr = alloca i8**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1243, metadata !DIExpression()), !dbg !1244
  store void (i8*, i8*)* %handler, void (i8*, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %handler.addr, metadata !1245, metadata !DIExpression()), !dbg !1246
  store i8** %data, i8*** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %data.addr, metadata !1247, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1249, metadata !DIExpression()), !dbg !1250
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1251
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %0, i32 0, i32 0, !dbg !1252
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1252
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1253
  br label %while.cond, !dbg !1254

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1255
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !1254
  br i1 %tobool, label %while.body, label %while.end, !dbg !1254

while.body:                                       ; preds = %while.cond
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1256
  %common = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !1259
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1260
  %4 = load i8, i8* %type, align 1, !dbg !1260
  %conv = zext i8 %4 to i32, !dbg !1256
  %cmp = icmp eq i32 %conv, 29, !dbg !1261
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1262

land.lhs.true:                                    ; preds = %while.body
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1263
  %data2 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_data*, !dbg !1264
  %handler3 = getelementptr inbounds %struct.acpi_object_data, %struct.acpi_object_data* %data2, i32 0, i32 5, !dbg !1265
  %6 = load void (i8*, i8*)*, void (i8*, i8*)** %handler3, align 8, !dbg !1265
  %7 = load void (i8*, i8*)*, void (i8*, i8*)** %handler.addr, align 8, !dbg !1266
  %cmp4 = icmp eq void (i8*, i8*)* %6, %7, !dbg !1267
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1268

if.then:                                          ; preds = %land.lhs.true
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1269
  %data6 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_data*, !dbg !1271
  %pointer = getelementptr inbounds %struct.acpi_object_data, %struct.acpi_object_data* %data6, i32 0, i32 6, !dbg !1272
  %9 = load i8*, i8** %pointer, align 8, !dbg !1272
  %10 = load i8**, i8*** %data.addr, align 8, !dbg !1273
  store i8* %9, i8** %10, align 8, !dbg !1274
  store i32 0, i32* %retval, align 4, !dbg !1275
  br label %return, !dbg !1275

if.end:                                           ; preds = %land.lhs.true, %while.body
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1276
  %common7 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_common*, !dbg !1277
  %next_object = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common7, i32 0, i32 0, !dbg !1278
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !1278
  store %union.acpi_operand_object* %12, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1279
  br label %while.cond, !dbg !1254, !llvm.loop !1280

while.end:                                        ; preds = %while.cond
  store i32 5, i32* %retval, align 4, !dbg !1282
  br label %return, !dbg !1282

return:                                           ; preds = %while.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !1283
  ret i32 %13, !dbg !1283
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!795, !796, !797, !798}
!llvm.ident = !{!799}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !793, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !792, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsobject.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !21, !83, !33, !23}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !15, line: 432, size: 1600, elements: !16)
!15 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!16 = !{!17, !26, !790, !791}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !14, file: !15, line: 433, baseType: !18, size: 128)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !15, line: 427, size: 128, elements: !19)
!19 = !{!20, !22}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !18, file: !15, line: 428, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !18, file: !15, line: 429, baseType: !23, size: 8, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !14, file: !15, line: 434, baseType: !27, size: 576)
!27 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !15, line: 367, size: 576, elements: !28)
!28 = !{!29, !41, !57, !69, !105, !119, !128, !441, !458, !473, !486, !564, !576, !590, !600, !618, !640, !659, !678, !697, !710, !736, !753, !766, !780, !789}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !27, file: !15, line: 368, baseType: !30, size: 128)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !15, line: 73, size: 128, elements: !31)
!31 = !{!32, !34, !35, !36, !40}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !30, file: !15, line: 74, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !30, file: !15, line: 74, baseType: !23, size: 8, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !30, file: !15, line: 74, baseType: !23, size: 8, offset: 72)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !30, file: !15, line: 74, baseType: !37, size: 16, offset: 80)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !39)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !30, file: !15, line: 74, baseType: !23, size: 8, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !27, file: !15, line: 369, baseType: !42, size: 192)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !15, line: 76, size: 192, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49, !53}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !42, file: !15, line: 77, baseType: !33, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !42, file: !15, line: 77, baseType: !23, size: 8, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !15, line: 77, baseType: !23, size: 8, offset: 72)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !42, file: !15, line: 77, baseType: !37, size: 16, offset: 80)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !42, file: !15, line: 77, baseType: !23, size: 8, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !42, file: !15, line: 77, baseType: !50, size: 24, offset: 104)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 3)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !42, file: !15, line: 78, baseType: !54, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !56)
!56 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !27, file: !15, line: 370, baseType: !58, size: 256)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !15, line: 93, size: 256, elements: !59)
!59 = !{!60, !61, !62, !63, !64, !65, !68}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !58, file: !15, line: 94, baseType: !33, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !58, file: !15, line: 94, baseType: !23, size: 8, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !15, line: 94, baseType: !23, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !58, file: !15, line: 94, baseType: !37, size: 16, offset: 80)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !15, line: 94, baseType: !23, size: 8, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !58, file: !15, line: 94, baseType: !66, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !58, file: !15, line: 94, baseType: !8, size: 32, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !27, file: !15, line: 371, baseType: !70, size: 384)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !15, line: 97, size: 384, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !79, !80, !81, !82}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !70, file: !15, line: 98, baseType: !33, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !70, file: !15, line: 98, baseType: !23, size: 8, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !15, line: 98, baseType: !23, size: 8, offset: 72)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !70, file: !15, line: 98, baseType: !37, size: 16, offset: 80)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !15, line: 98, baseType: !23, size: 8, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !70, file: !15, line: 98, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !70, file: !15, line: 98, baseType: !8, size: 32, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !70, file: !15, line: 99, baseType: !8, size: 32, offset: 224)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !70, file: !15, line: 100, baseType: !78, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !70, file: !15, line: 101, baseType: !83, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !85, line: 133, size: 384, elements: !86)
!85 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !89, !90, !91, !100, !101, !102, !103}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !84, file: !85, line: 134, baseType: !33, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !84, file: !85, line: 135, baseType: !23, size: 8, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !85, line: 136, baseType: !23, size: 8, offset: 72)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !85, line: 137, baseType: !37, size: 16, offset: 80)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !85, line: 138, baseType: !92, size: 32, offset: 96)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !93, line: 327, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !92, file: !93, line: 328, baseType: !8, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !92, file: !93, line: 329, baseType: !97, size: 32)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 32, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 4)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !84, file: !85, line: 139, baseType: !83, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !84, file: !85, line: 140, baseType: !83, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !84, file: !85, line: 141, baseType: !83, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !84, file: !85, line: 142, baseType: !104, size: 16, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !37)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !27, file: !15, line: 372, baseType: !106, size: 384)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !15, line: 104, size: 384, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !116, !117, !118}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !106, file: !15, line: 105, baseType: !33, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !106, file: !15, line: 105, baseType: !23, size: 8, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !15, line: 105, baseType: !23, size: 8, offset: 72)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !106, file: !15, line: 105, baseType: !37, size: 16, offset: 80)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !15, line: 105, baseType: !23, size: 8, offset: 96)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !106, file: !15, line: 105, baseType: !83, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !106, file: !15, line: 106, baseType: !115, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !106, file: !15, line: 107, baseType: !78, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !106, file: !15, line: 108, baseType: !8, size: 32, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !106, file: !15, line: 109, baseType: !8, size: 32, offset: 352)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !27, file: !15, line: 373, baseType: !120, size: 192)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !15, line: 118, size: 192, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !120, file: !15, line: 119, baseType: !33, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !15, line: 119, baseType: !23, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !15, line: 119, baseType: !23, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !120, file: !15, line: 119, baseType: !37, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !15, line: 119, baseType: !23, size: 8, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !120, file: !15, line: 119, baseType: !21, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !27, file: !15, line: 374, baseType: !129, size: 448)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !15, line: 143, size: 448, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !438, !439, !440}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !129, file: !15, line: 144, baseType: !33, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !129, file: !15, line: 144, baseType: !23, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !15, line: 144, baseType: !23, size: 8, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !129, file: !15, line: 144, baseType: !37, size: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !15, line: 144, baseType: !23, size: 8, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !129, file: !15, line: 144, baseType: !23, size: 8, offset: 104)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !129, file: !15, line: 145, baseType: !23, size: 8, offset: 112)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !129, file: !15, line: 146, baseType: !23, size: 8, offset: 120)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !129, file: !15, line: 147, baseType: !33, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !129, file: !15, line: 148, baseType: !33, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !129, file: !15, line: 149, baseType: !78, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !129, file: !15, line: 153, baseType: !143, size: 64, offset: 320)
!143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !15, line: 150, size: 64, elements: !144)
!144 = !{!145, !437}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !143, file: !15, line: 151, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !85, line: 248, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!6, !150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !152, line: 37, size: 9024, elements: !153)
!152 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !383, !384, !385, !386, !387, !391, !393, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !420, !421, !422, !423, !424, !425, !426, !427, !429, !435}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !152, line: 38, baseType: !150, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !151, file: !152, line: 39, baseType: !23, size: 8, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !151, file: !152, line: 40, baseType: !23, size: 8, offset: 72)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !151, file: !152, line: 41, baseType: !37, size: 16, offset: 80)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !151, file: !152, line: 42, baseType: !23, size: 8, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !151, file: !152, line: 43, baseType: !23, size: 8, offset: 104)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !151, file: !152, line: 44, baseType: !23, size: 8, offset: 112)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !151, file: !152, line: 45, baseType: !104, size: 16, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !151, file: !152, line: 46, baseType: !23, size: 8, offset: 144)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !151, file: !152, line: 47, baseType: !23, size: 8, offset: 152)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !151, file: !152, line: 48, baseType: !23, size: 8, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !151, file: !152, line: 49, baseType: !23, size: 8, offset: 168)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !151, file: !152, line: 50, baseType: !23, size: 8, offset: 176)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !151, file: !152, line: 51, baseType: !23, size: 8, offset: 184)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !151, file: !152, line: 52, baseType: !23, size: 8, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !151, file: !152, line: 53, baseType: !23, size: 8, offset: 200)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !151, file: !152, line: 54, baseType: !78, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !151, file: !152, line: 55, baseType: !8, size: 32, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !151, file: !152, line: 56, baseType: !8, size: 32, offset: 352)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !151, file: !152, line: 57, baseType: !8, size: 32, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !151, file: !152, line: 58, baseType: !8, size: 32, offset: 416)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !151, file: !152, line: 60, baseType: !176, size: 640, offset: 448)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !85, line: 893, size: 640, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !264, !265, !381, !382}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !176, file: !85, line: 894, baseType: !78, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !176, file: !85, line: 895, baseType: !78, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !176, file: !85, line: 896, baseType: !78, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !176, file: !85, line: 897, baseType: !78, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !176, file: !85, line: 898, baseType: !78, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !176, file: !85, line: 899, baseType: !184, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !85, line: 875, size: 1600, elements: !186)
!186 = !{!187, !207, !223}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !185, file: !85, line: 876, baseType: !188, size: 448)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !85, line: 828, size: 448, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !206}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !188, file: !85, line: 829, baseType: !184, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !188, file: !85, line: 829, baseType: !23, size: 8, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !188, file: !85, line: 829, baseType: !23, size: 8, offset: 72)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !188, file: !85, line: 829, baseType: !37, size: 16, offset: 80)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !188, file: !85, line: 829, baseType: !78, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !85, line: 829, baseType: !184, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !188, file: !85, line: 829, baseType: !83, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !188, file: !85, line: 829, baseType: !198, size: 64, offset: 320)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !85, line: 716, size: 64, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !198, file: !85, line: 717, baseType: !54, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !198, file: !85, line: 718, baseType: !8, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !198, file: !85, line: 719, baseType: !66, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !198, file: !85, line: 720, baseType: !78, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !85, line: 721, baseType: !66, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !198, file: !85, line: 722, baseType: !184, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !188, file: !85, line: 829, baseType: !23, size: 8, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !185, file: !85, line: 877, baseType: !208, size: 640)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !85, line: 835, size: 640, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !208, file: !85, line: 836, baseType: !184, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !208, file: !85, line: 836, baseType: !23, size: 8, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !208, file: !85, line: 836, baseType: !23, size: 8, offset: 72)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !208, file: !85, line: 836, baseType: !37, size: 16, offset: 80)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !208, file: !85, line: 836, baseType: !78, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !85, line: 836, baseType: !184, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !208, file: !85, line: 836, baseType: !83, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !208, file: !85, line: 836, baseType: !198, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !208, file: !85, line: 836, baseType: !23, size: 8, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !208, file: !85, line: 836, baseType: !66, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !208, file: !85, line: 837, baseType: !78, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !208, file: !85, line: 838, baseType: !8, size: 32, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !85, line: 839, baseType: !8, size: 32, offset: 608)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !185, file: !85, line: 878, baseType: !224, size: 1600)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !85, line: 846, size: 1600, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !224, file: !85, line: 847, baseType: !184, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !224, file: !85, line: 847, baseType: !23, size: 8, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !224, file: !85, line: 847, baseType: !23, size: 8, offset: 72)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !224, file: !85, line: 847, baseType: !37, size: 16, offset: 80)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !224, file: !85, line: 847, baseType: !78, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !224, file: !85, line: 847, baseType: !184, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !224, file: !85, line: 847, baseType: !83, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !224, file: !85, line: 847, baseType: !198, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !224, file: !85, line: 847, baseType: !23, size: 8, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !224, file: !85, line: 847, baseType: !184, size: 64, offset: 448)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !224, file: !85, line: 848, baseType: !184, size: 64, offset: 512)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !224, file: !85, line: 849, baseType: !66, size: 64, offset: 576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !224, file: !85, line: 850, baseType: !23, size: 8, offset: 640)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !224, file: !85, line: 851, baseType: !66, size: 64, offset: 704)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !224, file: !85, line: 852, baseType: !66, size: 64, offset: 768)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !224, file: !85, line: 853, baseType: !66, size: 64, offset: 832)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !224, file: !85, line: 854, baseType: !97, size: 32, offset: 896)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !224, file: !85, line: 855, baseType: !8, size: 32, offset: 928)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !224, file: !85, line: 856, baseType: !8, size: 32, offset: 960)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !224, file: !85, line: 857, baseType: !8, size: 32, offset: 992)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !224, file: !85, line: 858, baseType: !8, size: 32, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !224, file: !85, line: 859, baseType: !8, size: 32, offset: 1056)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !224, file: !85, line: 860, baseType: !8, size: 32, offset: 1088)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !224, file: !85, line: 861, baseType: !8, size: 32, offset: 1120)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !224, file: !85, line: 862, baseType: !8, size: 32, offset: 1152)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !224, file: !85, line: 863, baseType: !8, size: 32, offset: 1184)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !224, file: !85, line: 864, baseType: !8, size: 32, offset: 1216)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !224, file: !85, line: 865, baseType: !8, size: 32, offset: 1248)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !224, file: !85, line: 866, baseType: !8, size: 32, offset: 1280)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !224, file: !85, line: 867, baseType: !8, size: 32, offset: 1312)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !224, file: !85, line: 868, baseType: !37, size: 16, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !224, file: !85, line: 869, baseType: !23, size: 8, offset: 1360)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !224, file: !85, line: 870, baseType: !23, size: 8, offset: 1368)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !224, file: !85, line: 871, baseType: !23, size: 8, offset: 1376)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !224, file: !85, line: 872, baseType: !261, size: 160, offset: 1384)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 160, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 20)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !176, file: !85, line: 900, baseType: !83, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !176, file: !85, line: 901, baseType: !266, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !85, line: 663, size: 640, elements: !268)
!268 = !{!269, !277, !290, !299, !308, !321, !335, !347, !359}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !267, file: !85, line: 664, baseType: !270, size: 128)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !85, line: 567, size: 128, elements: !271)
!271 = !{!272, !273, !274, !275, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !85, line: 568, baseType: !21, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !270, file: !85, line: 568, baseType: !23, size: 8, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !85, line: 568, baseType: !23, size: 8, offset: 72)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !270, file: !85, line: 568, baseType: !37, size: 16, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !270, file: !85, line: 568, baseType: !37, size: 16, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !267, file: !85, line: 665, baseType: !278, size: 384)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !85, line: 593, size: 384, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !85, line: 594, baseType: !21, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !85, line: 594, baseType: !23, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !85, line: 594, baseType: !23, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !85, line: 594, baseType: !37, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !85, line: 594, baseType: !37, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !278, file: !85, line: 594, baseType: !37, size: 16, offset: 112)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !278, file: !85, line: 595, baseType: !184, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !278, file: !85, line: 596, baseType: !78, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !278, file: !85, line: 597, baseType: !78, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !278, file: !85, line: 598, baseType: !54, size: 64, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !267, file: !85, line: 666, baseType: !291, size: 192)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !85, line: 573, size: 192, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !85, line: 574, baseType: !21, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !291, file: !85, line: 574, baseType: !23, size: 8, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !85, line: 574, baseType: !23, size: 8, offset: 72)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !291, file: !85, line: 574, baseType: !37, size: 16, offset: 80)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !85, line: 574, baseType: !37, size: 16, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !291, file: !85, line: 574, baseType: !33, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !267, file: !85, line: 667, baseType: !300, size: 192)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !85, line: 604, size: 192, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !85, line: 605, baseType: !21, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !85, line: 605, baseType: !23, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !85, line: 605, baseType: !23, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !85, line: 605, baseType: !37, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !85, line: 605, baseType: !37, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !300, file: !85, line: 605, baseType: !83, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !267, file: !85, line: 668, baseType: !309, size: 448)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !85, line: 608, size: 448, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !85, line: 609, baseType: !21, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !85, line: 609, baseType: !23, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !85, line: 609, baseType: !23, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !85, line: 609, baseType: !37, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !85, line: 609, baseType: !37, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !309, file: !85, line: 609, baseType: !8, size: 32, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !309, file: !85, line: 610, baseType: !184, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !309, file: !85, line: 611, baseType: !78, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !309, file: !85, line: 612, baseType: !78, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !309, file: !85, line: 613, baseType: !8, size: 32, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !267, file: !85, line: 669, baseType: !322, size: 512)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !85, line: 580, size: 512, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !85, line: 581, baseType: !21, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !322, file: !85, line: 581, baseType: !23, size: 8, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !85, line: 581, baseType: !23, size: 8, offset: 72)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !322, file: !85, line: 581, baseType: !37, size: 16, offset: 80)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !322, file: !85, line: 581, baseType: !37, size: 16, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !322, file: !85, line: 581, baseType: !8, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !322, file: !85, line: 582, baseType: !33, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !322, file: !85, line: 583, baseType: !33, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !322, file: !85, line: 584, baseType: !150, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !322, file: !85, line: 585, baseType: !21, size: 64, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !322, file: !85, line: 586, baseType: !8, size: 32, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !267, file: !85, line: 670, baseType: !336, size: 320)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !85, line: 620, size: 320, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !85, line: 621, baseType: !21, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !85, line: 621, baseType: !23, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !85, line: 621, baseType: !23, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !85, line: 621, baseType: !37, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !85, line: 621, baseType: !37, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !336, file: !85, line: 621, baseType: !23, size: 8, offset: 112)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !336, file: !85, line: 622, baseType: !150, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !336, file: !85, line: 623, baseType: !33, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !336, file: !85, line: 624, baseType: !54, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !267, file: !85, line: 671, baseType: !348, size: 640)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !85, line: 631, size: 640, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !85, line: 632, baseType: !21, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !85, line: 632, baseType: !23, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !85, line: 632, baseType: !23, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !85, line: 632, baseType: !37, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !85, line: 632, baseType: !37, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !348, file: !85, line: 633, baseType: !356, size: 512, offset: 128)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 512, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 8)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !267, file: !85, line: 672, baseType: !360, size: 320)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !85, line: 654, size: 320, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !85, line: 655, baseType: !21, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !85, line: 655, baseType: !23, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !85, line: 655, baseType: !23, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !360, file: !85, line: 655, baseType: !37, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !360, file: !85, line: 655, baseType: !37, size: 16, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !360, file: !85, line: 655, baseType: !23, size: 8, offset: 112)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !360, file: !85, line: 656, baseType: !83, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !360, file: !85, line: 657, baseType: !33, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !360, file: !85, line: 658, baseType: !371, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !85, line: 645, size: 128, elements: !373)
!373 = !{!374, !380}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !372, file: !85, line: 646, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379, !8, !21}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !21)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !372, file: !85, line: 647, baseType: !21, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !176, file: !85, line: 902, baseType: !184, size: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !176, file: !85, line: 903, baseType: !8, size: 32, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !151, file: !152, line: 61, baseType: !8, size: 32, offset: 1088)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !151, file: !152, line: 62, baseType: !8, size: 32, offset: 1120)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !151, file: !152, line: 63, baseType: !37, size: 16, offset: 1152)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !151, file: !152, line: 64, baseType: !23, size: 8, offset: 1168)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !151, file: !152, line: 66, baseType: !388, size: 2688, offset: 1216)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 2688, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 7)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !151, file: !152, line: 67, baseType: !392, size: 3072, offset: 3904)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 3072, elements: !357)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !151, file: !152, line: 68, baseType: !394, size: 576, offset: 6976)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 576, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 9)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !151, file: !152, line: 69, baseType: !115, size: 64, offset: 7552)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !151, file: !152, line: 71, baseType: !78, size: 64, offset: 7616)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !151, file: !152, line: 72, baseType: !115, size: 64, offset: 7680)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !151, file: !152, line: 73, baseType: !266, size: 64, offset: 7744)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !151, file: !152, line: 74, baseType: !83, size: 64, offset: 7808)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !151, file: !152, line: 75, baseType: !33, size: 64, offset: 7872)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !151, file: !152, line: 76, baseType: !83, size: 64, offset: 7936)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !151, file: !152, line: 77, baseType: !184, size: 64, offset: 8000)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !151, file: !152, line: 78, baseType: !33, size: 64, offset: 8064)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !151, file: !152, line: 79, baseType: !83, size: 64, offset: 8128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !151, file: !152, line: 80, baseType: !66, size: 64, offset: 8192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !151, file: !152, line: 81, baseType: !184, size: 64, offset: 8256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !151, file: !152, line: 82, baseType: !410, size: 64, offset: 8320)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !85, line: 702, size: 128, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !412, file: !85, line: 706, baseType: !8, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !412, file: !85, line: 707, baseType: !8, size: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !85, line: 708, baseType: !37, size: 16, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !412, file: !85, line: 709, baseType: !23, size: 8, offset: 80)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !412, file: !85, line: 710, baseType: !23, size: 8, offset: 88)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !412, file: !85, line: 711, baseType: !23, size: 8, offset: 96)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !151, file: !152, line: 83, baseType: !184, size: 64, offset: 8384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !151, file: !152, line: 84, baseType: !33, size: 64, offset: 8448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !151, file: !152, line: 85, baseType: !266, size: 64, offset: 8512)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !151, file: !152, line: 86, baseType: !33, size: 64, offset: 8576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !151, file: !152, line: 87, baseType: !266, size: 64, offset: 8640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !151, file: !152, line: 88, baseType: !184, size: 64, offset: 8704)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !151, file: !152, line: 89, baseType: !184, size: 64, offset: 8768)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !151, file: !152, line: 90, baseType: !428, size: 64, offset: 8832)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !151, file: !152, line: 91, baseType: !430, size: 64, offset: 8896)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !85, line: 637, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!6, !150, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !151, file: !152, line: 92, baseType: !436, size: 64, offset: 8960)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !85, line: 641, baseType: !147)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !143, file: !15, line: 152, baseType: !33, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !129, file: !15, line: 155, baseType: !8, size: 32, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !129, file: !15, line: 156, baseType: !104, size: 16, offset: 416)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !129, file: !15, line: 157, baseType: !23, size: 8, offset: 432)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !27, file: !15, line: 375, baseType: !442, size: 576)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !15, line: 122, size: 576, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !442, file: !15, line: 123, baseType: !33, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !442, file: !15, line: 123, baseType: !23, size: 8, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !442, file: !15, line: 123, baseType: !23, size: 8, offset: 72)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !442, file: !15, line: 123, baseType: !37, size: 16, offset: 80)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !15, line: 123, baseType: !23, size: 8, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !442, file: !15, line: 123, baseType: !23, size: 8, offset: 104)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !442, file: !15, line: 124, baseType: !37, size: 16, offset: 112)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !442, file: !15, line: 125, baseType: !21, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !442, file: !15, line: 126, baseType: !54, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !442, file: !15, line: 127, baseType: !428, size: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !442, file: !15, line: 128, baseType: !33, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !442, file: !15, line: 129, baseType: !33, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !442, file: !15, line: 130, baseType: !83, size: 64, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !442, file: !15, line: 131, baseType: !23, size: 8, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !27, file: !15, line: 376, baseType: !459, size: 448)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !15, line: 134, size: 448, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !472}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !459, file: !15, line: 135, baseType: !33, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !459, file: !15, line: 135, baseType: !23, size: 8, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !459, file: !15, line: 135, baseType: !23, size: 8, offset: 72)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !459, file: !15, line: 135, baseType: !37, size: 16, offset: 80)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !15, line: 135, baseType: !23, size: 8, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !459, file: !15, line: 135, baseType: !23, size: 8, offset: 104)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !459, file: !15, line: 136, baseType: !83, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !459, file: !15, line: 137, baseType: !33, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !15, line: 138, baseType: !33, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !459, file: !15, line: 139, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !54)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !459, file: !15, line: 140, baseType: !8, size: 32, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !27, file: !15, line: 377, baseType: !474, size: 320)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !15, line: 184, size: 320, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !485}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !474, file: !15, line: 185, baseType: !33, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !474, file: !15, line: 185, baseType: !23, size: 8, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !15, line: 185, baseType: !23, size: 8, offset: 72)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !15, line: 185, baseType: !37, size: 16, offset: 80)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !15, line: 185, baseType: !23, size: 8, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !474, file: !15, line: 185, baseType: !482, size: 128, offset: 128)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 2)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !474, file: !15, line: 185, baseType: !33, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !27, file: !15, line: 378, baseType: !487, size: 384)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !15, line: 187, size: 384, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !487, file: !15, line: 188, baseType: !33, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !487, file: !15, line: 188, baseType: !23, size: 8, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !487, file: !15, line: 188, baseType: !23, size: 8, offset: 72)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !487, file: !15, line: 188, baseType: !37, size: 16, offset: 80)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !15, line: 188, baseType: !23, size: 8, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !487, file: !15, line: 189, baseType: !482, size: 128, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !487, file: !15, line: 189, baseType: !33, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !487, file: !15, line: 189, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !85, line: 480, size: 576, elements: !499)
!499 = !{!500, !501, !502, !503, !511, !526, !558, !559, !560, !561, !562, !563}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !498, file: !85, line: 481, baseType: !83, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !498, file: !85, line: 482, baseType: !497, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !498, file: !85, line: 483, baseType: !497, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !498, file: !85, line: 484, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !85, line: 497, size: 256, elements: !506)
!506 = !{!507, !508, !509, !510}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !505, file: !85, line: 498, baseType: !504, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !85, line: 499, baseType: !504, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !505, file: !85, line: 500, baseType: !497, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !505, file: !85, line: 501, baseType: !8, size: 32, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !498, file: !85, line: 485, baseType: !512, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !85, line: 466, size: 320, elements: !514)
!514 = !{!515, !520, !521, !522, !523, !524, !525}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !513, file: !85, line: 467, baseType: !516, size: 128)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !85, line: 459, size: 128, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !516, file: !85, line: 460, baseType: !23, size: 8)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !516, file: !85, line: 461, baseType: !54, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !513, file: !85, line: 468, baseType: !516, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !513, file: !85, line: 469, baseType: !37, size: 16, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !513, file: !85, line: 470, baseType: !23, size: 8, offset: 272)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !513, file: !85, line: 471, baseType: !23, size: 8, offset: 280)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !513, file: !85, line: 472, baseType: !23, size: 8, offset: 288)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !513, file: !85, line: 473, baseType: !23, size: 8, offset: 296)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !498, file: !85, line: 486, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !85, line: 448, size: 192, elements: !529)
!529 = !{!530, !553, !554, !555, !556, !557}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !528, file: !85, line: 449, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !85, line: 438, size: 64, elements: !532)
!532 = !{!533, !534, !547}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !531, file: !85, line: 439, baseType: !83, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !531, file: !85, line: 440, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !85, line: 419, size: 256, elements: !537)
!537 = !{!538, !543, !544, !545, !546}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !536, file: !85, line: 420, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!8, !379, !8, !21}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !536, file: !85, line: 421, baseType: !21, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !536, file: !85, line: 422, baseType: !83, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !536, file: !85, line: 423, baseType: !23, size: 8, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !536, file: !85, line: 424, baseType: !23, size: 8, offset: 200)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !531, file: !85, line: 441, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !85, line: 429, size: 128, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !549, file: !85, line: 430, baseType: !83, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !85, line: 431, baseType: !548, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !528, file: !85, line: 450, baseType: !512, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !85, line: 451, baseType: !23, size: 8, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !528, file: !85, line: 452, baseType: !23, size: 8, offset: 136)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !528, file: !85, line: 453, baseType: !23, size: 8, offset: 144)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !528, file: !85, line: 454, baseType: !23, size: 8, offset: 152)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !498, file: !85, line: 487, baseType: !54, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !498, file: !85, line: 488, baseType: !8, size: 32, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !498, file: !85, line: 489, baseType: !37, size: 16, offset: 480)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !498, file: !85, line: 490, baseType: !37, size: 16, offset: 496)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !498, file: !85, line: 491, baseType: !23, size: 8, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !498, file: !85, line: 492, baseType: !23, size: 8, offset: 520)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !27, file: !15, line: 379, baseType: !565, size: 384)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !15, line: 192, size: 384, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !565, file: !15, line: 193, baseType: !33, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !565, file: !15, line: 193, baseType: !23, size: 8, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !565, file: !15, line: 193, baseType: !23, size: 8, offset: 72)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !565, file: !15, line: 193, baseType: !37, size: 16, offset: 80)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !15, line: 193, baseType: !23, size: 8, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !565, file: !15, line: 193, baseType: !482, size: 128, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !565, file: !15, line: 193, baseType: !33, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !565, file: !15, line: 193, baseType: !8, size: 32, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !565, file: !15, line: 194, baseType: !8, size: 32, offset: 352)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !27, file: !15, line: 380, baseType: !577, size: 384)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !15, line: 197, size: 384, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !577, file: !15, line: 198, baseType: !33, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !577, file: !15, line: 198, baseType: !23, size: 8, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !577, file: !15, line: 198, baseType: !23, size: 8, offset: 72)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !577, file: !15, line: 198, baseType: !37, size: 16, offset: 80)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !15, line: 198, baseType: !23, size: 8, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !577, file: !15, line: 200, baseType: !23, size: 8, offset: 104)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !577, file: !15, line: 201, baseType: !23, size: 8, offset: 112)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !577, file: !15, line: 202, baseType: !482, size: 128, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !577, file: !15, line: 202, baseType: !33, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !577, file: !15, line: 202, baseType: !589, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !54)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !27, file: !15, line: 381, baseType: !591, size: 320)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !15, line: 205, size: 320, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !591, file: !15, line: 206, baseType: !33, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !591, file: !15, line: 206, baseType: !23, size: 8, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !591, file: !15, line: 206, baseType: !23, size: 8, offset: 72)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !591, file: !15, line: 206, baseType: !37, size: 16, offset: 80)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !15, line: 206, baseType: !23, size: 8, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !591, file: !15, line: 206, baseType: !482, size: 128, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !591, file: !15, line: 206, baseType: !33, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !27, file: !15, line: 382, baseType: !601, size: 384)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !15, line: 233, size: 384, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !601, file: !15, line: 234, baseType: !33, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !601, file: !15, line: 234, baseType: !37, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 104)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 112)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 120)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !601, file: !15, line: 234, baseType: !83, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !601, file: !15, line: 234, baseType: !8, size: 32, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !601, file: !15, line: 234, baseType: !8, size: 32, offset: 224)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !601, file: !15, line: 234, baseType: !8, size: 32, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 288)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 296)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !601, file: !15, line: 234, baseType: !33, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !27, file: !15, line: 383, baseType: !619, size: 576)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !15, line: 237, size: 576, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !15, line: 238, baseType: !33, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !15, line: 238, baseType: !37, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 120)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !15, line: 238, baseType: !83, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !619, file: !15, line: 238, baseType: !8, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !619, file: !15, line: 238, baseType: !8, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !15, line: 238, baseType: !8, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !619, file: !15, line: 238, baseType: !37, size: 16, offset: 304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !619, file: !15, line: 239, baseType: !33, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !619, file: !15, line: 240, baseType: !78, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !619, file: !15, line: 241, baseType: !37, size: 16, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !619, file: !15, line: 242, baseType: !78, size: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !27, file: !15, line: 384, baseType: !641, size: 384)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !15, line: 262, size: 384, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !641, file: !15, line: 263, baseType: !33, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 72)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !641, file: !15, line: 263, baseType: !37, size: 16, offset: 80)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 104)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 120)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !641, file: !15, line: 263, baseType: !83, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !641, file: !15, line: 263, baseType: !8, size: 32, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !641, file: !15, line: 263, baseType: !8, size: 32, offset: 224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !641, file: !15, line: 263, baseType: !8, size: 32, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 288)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 296)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 304)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !641, file: !15, line: 264, baseType: !33, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !27, file: !15, line: 385, baseType: !660, size: 448)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !15, line: 245, size: 448, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !660, file: !15, line: 246, baseType: !33, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 72)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !660, file: !15, line: 246, baseType: !37, size: 16, offset: 80)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 104)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 112)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 120)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !660, file: !15, line: 246, baseType: !83, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !660, file: !15, line: 246, baseType: !8, size: 32, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !660, file: !15, line: 246, baseType: !8, size: 32, offset: 224)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !660, file: !15, line: 246, baseType: !8, size: 32, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 288)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 296)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !660, file: !15, line: 246, baseType: !33, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !660, file: !15, line: 247, baseType: !33, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !27, file: !15, line: 386, baseType: !679, size: 448)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !15, line: 250, size: 448, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !679, file: !15, line: 251, baseType: !33, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 72)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !679, file: !15, line: 251, baseType: !37, size: 16, offset: 80)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 96)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 104)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 112)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 120)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !679, file: !15, line: 251, baseType: !83, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !679, file: !15, line: 251, baseType: !8, size: 32, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !679, file: !15, line: 251, baseType: !8, size: 32, offset: 224)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !679, file: !15, line: 251, baseType: !8, size: 32, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 288)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 296)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !679, file: !15, line: 256, baseType: !33, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !679, file: !15, line: 257, baseType: !33, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !27, file: !15, line: 387, baseType: !698, size: 512)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !15, line: 273, size: 512, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !698, file: !15, line: 274, baseType: !33, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !698, file: !15, line: 274, baseType: !23, size: 8, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !698, file: !15, line: 274, baseType: !23, size: 8, offset: 72)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !698, file: !15, line: 274, baseType: !37, size: 16, offset: 80)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !15, line: 274, baseType: !23, size: 8, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !698, file: !15, line: 274, baseType: !83, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !698, file: !15, line: 275, baseType: !8, size: 32, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !698, file: !15, line: 276, baseType: !375, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !698, file: !15, line: 277, baseType: !21, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !15, line: 278, baseType: !482, size: 128, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !27, file: !15, line: 388, baseType: !711, size: 512)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !15, line: 281, size: 512, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !726, !727, !728, !734, !735}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !711, file: !15, line: 282, baseType: !33, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !15, line: 282, baseType: !23, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !711, file: !15, line: 282, baseType: !23, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !711, file: !15, line: 282, baseType: !37, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !15, line: 282, baseType: !23, size: 8, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !711, file: !15, line: 282, baseType: !23, size: 8, offset: 104)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !711, file: !15, line: 283, baseType: !23, size: 8, offset: 112)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !711, file: !15, line: 284, baseType: !721, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!6, !8, !471, !8, !725, !21, !21}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !711, file: !15, line: 285, baseType: !83, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !711, file: !15, line: 286, baseType: !21, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !711, file: !15, line: 287, baseType: !729, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!6, !379, !8, !21, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !711, file: !15, line: 288, baseType: !33, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !15, line: 289, baseType: !33, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !27, file: !15, line: 389, baseType: !737, size: 512)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !15, line: 307, size: 512, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !737, file: !15, line: 308, baseType: !33, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !737, file: !15, line: 308, baseType: !23, size: 8, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !15, line: 308, baseType: !23, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !737, file: !15, line: 308, baseType: !37, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !15, line: 308, baseType: !23, size: 8, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !737, file: !15, line: 308, baseType: !23, size: 8, offset: 104)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !737, file: !15, line: 309, baseType: !23, size: 8, offset: 112)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !737, file: !15, line: 310, baseType: !23, size: 8, offset: 120)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !737, file: !15, line: 311, baseType: !21, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !737, file: !15, line: 312, baseType: !83, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !737, file: !15, line: 313, baseType: !115, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !737, file: !15, line: 314, baseType: !78, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !737, file: !15, line: 315, baseType: !78, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !737, file: !15, line: 316, baseType: !8, size: 32, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !27, file: !15, line: 390, baseType: !754, size: 448)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !15, line: 340, size: 448, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !754, file: !15, line: 341, baseType: !33, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !754, file: !15, line: 341, baseType: !23, size: 8, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !754, file: !15, line: 341, baseType: !23, size: 8, offset: 72)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !754, file: !15, line: 341, baseType: !37, size: 16, offset: 80)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !15, line: 341, baseType: !23, size: 8, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !754, file: !15, line: 341, baseType: !83, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !754, file: !15, line: 342, baseType: !83, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !754, file: !15, line: 343, baseType: !21, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !754, file: !15, line: 344, baseType: !78, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !754, file: !15, line: 345, baseType: !8, size: 32, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !27, file: !15, line: 391, baseType: !767, size: 256)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !15, line: 350, size: 256, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !779}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !767, file: !15, line: 351, baseType: !33, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !767, file: !15, line: 351, baseType: !23, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !15, line: 351, baseType: !23, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !767, file: !15, line: 351, baseType: !37, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !15, line: 351, baseType: !23, size: 8, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !767, file: !15, line: 351, baseType: !775, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !379, !21}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !767, file: !15, line: 352, baseType: !21, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !27, file: !15, line: 392, baseType: !781, size: 192)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !15, line: 357, size: 192, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !781, file: !15, line: 358, baseType: !33, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !781, file: !15, line: 358, baseType: !23, size: 8, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !15, line: 358, baseType: !23, size: 8, offset: 72)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !781, file: !15, line: 358, baseType: !37, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !15, line: 358, baseType: !23, size: 8, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !15, line: 358, baseType: !33, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !27, file: !15, line: 399, baseType: !84, size: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !14, file: !15, line: 435, baseType: !84, size: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !14, file: !15, line: 436, baseType: !185, size: 1600)
!792 = !{!0}
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 72, elements: !395)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!795 = !{i32 7, !"Dwarf Version", i32 4}
!796 = !{i32 2, !"Debug Info Version", i32 3}
!797 = !{i32 1, !"wchar_size", i32 2}
!798 = !{i32 1, !"Code Model", i32 2}
!799 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!800 = distinct !DISubprogram(name: "acpi_ns_attach_object", scope: !3, file: !3, line: 37, type: !801, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!801 = !DISubroutineType(types: !802)
!802 = !{!6, !83, !33, !803}
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !7, line: 635, baseType: !8)
!804 = !DILocalVariable(name: "node", arg: 1, scope: !800, file: !3, line: 37, type: !83)
!805 = !DILocation(line: 37, column: 51, scope: !800)
!806 = !DILocalVariable(name: "object", arg: 2, scope: !800, file: !3, line: 38, type: !33)
!807 = !DILocation(line: 38, column: 36, scope: !800)
!808 = !DILocalVariable(name: "type", arg: 3, scope: !800, file: !3, line: 38, type: !803)
!809 = !DILocation(line: 38, column: 61, scope: !800)
!810 = !DILocalVariable(name: "obj_desc", scope: !800, file: !3, line: 40, type: !33)
!811 = !DILocation(line: 40, column: 29, scope: !800)
!812 = !DILocalVariable(name: "last_obj_desc", scope: !800, file: !3, line: 41, type: !33)
!813 = !DILocation(line: 41, column: 29, scope: !800)
!814 = !DILocalVariable(name: "object_type", scope: !800, file: !3, line: 42, type: !803)
!815 = !DILocation(line: 42, column: 19, scope: !800)
!816 = !DILocation(line: 49, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !800, file: !3, line: 49, column: 6)
!818 = !DILocation(line: 49, column: 6, scope: !800)
!819 = !DILocation(line: 53, column: 3, scope: !820)
!820 = distinct !DILexicalBlock(scope: !817, file: !3, line: 49, column: 13)
!821 = !DILocation(line: 54, column: 3, scope: !820)
!822 = !DILocation(line: 57, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !800, file: !3, line: 57, column: 6)
!824 = !DILocation(line: 57, column: 14, scope: !823)
!825 = !DILocation(line: 57, column: 35, scope: !823)
!826 = !DILocation(line: 57, column: 32, scope: !823)
!827 = !DILocation(line: 57, column: 6, scope: !800)
!828 = !DILocation(line: 61, column: 3, scope: !829)
!829 = distinct !DILexicalBlock(scope: !823, file: !3, line: 57, column: 42)
!830 = !DILocation(line: 63, column: 3, scope: !829)
!831 = !DILocation(line: 66, column: 6, scope: !832)
!832 = distinct !DILexicalBlock(scope: !800, file: !3, line: 66, column: 6)
!833 = !DILocation(line: 66, column: 37, scope: !832)
!834 = !DILocation(line: 66, column: 6, scope: !800)
!835 = !DILocation(line: 70, column: 3, scope: !836)
!836 = distinct !DILexicalBlock(scope: !832, file: !3, line: 66, column: 62)
!837 = !DILocation(line: 72, column: 3, scope: !836)
!838 = !DILocation(line: 77, column: 6, scope: !839)
!839 = distinct !DILexicalBlock(scope: !800, file: !3, line: 77, column: 6)
!840 = !DILocation(line: 77, column: 12, scope: !839)
!841 = !DILocation(line: 77, column: 22, scope: !839)
!842 = !DILocation(line: 77, column: 19, scope: !839)
!843 = !DILocation(line: 77, column: 6, scope: !800)
!844 = !DILocation(line: 82, column: 3, scope: !845)
!845 = distinct !DILexicalBlock(scope: !839, file: !3, line: 77, column: 30)
!846 = !DILocation(line: 87, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !800, file: !3, line: 87, column: 6)
!848 = !DILocation(line: 87, column: 6, scope: !800)
!849 = !DILocation(line: 88, column: 12, scope: !850)
!850 = distinct !DILexicalBlock(scope: !847, file: !3, line: 87, column: 15)
!851 = !DILocation(line: 89, column: 15, scope: !850)
!852 = !DILocation(line: 90, column: 2, scope: !850)
!853 = !DILocation(line: 96, column: 12, scope: !854)
!854 = distinct !DILexicalBlock(scope: !847, file: !3, line: 96, column: 11)
!855 = !DILocation(line: 96, column: 45, scope: !854)
!856 = !DILocation(line: 96, column: 70, scope: !854)
!857 = !DILocation(line: 97, column: 35, scope: !854)
!858 = !DILocation(line: 97, column: 44, scope: !854)
!859 = !DILocation(line: 97, column: 4, scope: !854)
!860 = !DILocation(line: 96, column: 11, scope: !847)
!861 = !DILocation(line: 102, column: 45, scope: !862)
!862 = distinct !DILexicalBlock(scope: !854, file: !3, line: 97, column: 52)
!863 = !DILocation(line: 102, column: 54, scope: !862)
!864 = !DILocation(line: 102, column: 12, scope: !862)
!865 = !DILocation(line: 103, column: 48, scope: !862)
!866 = !DILocation(line: 103, column: 57, scope: !862)
!867 = !DILocation(line: 103, column: 17, scope: !862)
!868 = !DILocation(line: 103, column: 15, scope: !862)
!869 = !DILocation(line: 104, column: 2, scope: !862)
!870 = !DILocation(line: 111, column: 43, scope: !871)
!871 = distinct !DILexicalBlock(scope: !854, file: !3, line: 110, column: 7)
!872 = !DILocation(line: 111, column: 12, scope: !871)
!873 = !DILocation(line: 115, column: 17, scope: !871)
!874 = !DILocation(line: 115, column: 15, scope: !871)
!875 = !DILocation(line: 123, column: 6, scope: !876)
!876 = distinct !DILexicalBlock(scope: !800, file: !3, line: 123, column: 6)
!877 = !DILocation(line: 123, column: 12, scope: !876)
!878 = !DILocation(line: 123, column: 6, scope: !800)
!879 = !DILocation(line: 124, column: 25, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !3, line: 123, column: 20)
!881 = !DILocation(line: 124, column: 3, scope: !880)
!882 = !DILocation(line: 125, column: 2, scope: !880)
!883 = !DILocation(line: 127, column: 6, scope: !884)
!884 = distinct !DILexicalBlock(scope: !800, file: !3, line: 127, column: 6)
!885 = !DILocation(line: 127, column: 6, scope: !800)
!886 = !DILocation(line: 132, column: 25, scope: !887)
!887 = distinct !DILexicalBlock(scope: !884, file: !3, line: 127, column: 16)
!888 = !DILocation(line: 132, column: 3, scope: !887)
!889 = !DILocation(line: 138, column: 19, scope: !887)
!890 = !DILocation(line: 138, column: 17, scope: !887)
!891 = !DILocation(line: 139, column: 3, scope: !887)
!892 = !DILocation(line: 139, column: 10, scope: !887)
!893 = !DILocation(line: 139, column: 25, scope: !887)
!894 = !DILocation(line: 139, column: 32, scope: !887)
!895 = !DILocation(line: 140, column: 20, scope: !896)
!896 = distinct !DILexicalBlock(scope: !887, file: !3, line: 139, column: 45)
!897 = !DILocation(line: 140, column: 35, scope: !896)
!898 = !DILocation(line: 140, column: 42, scope: !896)
!899 = !DILocation(line: 140, column: 18, scope: !896)
!900 = distinct !{!900, !891, !901}
!901 = !DILocation(line: 141, column: 3, scope: !887)
!902 = !DILocation(line: 145, column: 39, scope: !887)
!903 = !DILocation(line: 145, column: 45, scope: !887)
!904 = !DILocation(line: 145, column: 3, scope: !887)
!905 = !DILocation(line: 145, column: 18, scope: !887)
!906 = !DILocation(line: 145, column: 25, scope: !887)
!907 = !DILocation(line: 145, column: 37, scope: !887)
!908 = !DILocation(line: 146, column: 2, scope: !887)
!909 = !DILocation(line: 148, column: 20, scope: !800)
!910 = !DILocation(line: 148, column: 15, scope: !800)
!911 = !DILocation(line: 148, column: 2, scope: !800)
!912 = !DILocation(line: 148, column: 8, scope: !800)
!913 = !DILocation(line: 148, column: 13, scope: !800)
!914 = !DILocation(line: 149, column: 17, scope: !800)
!915 = !DILocation(line: 149, column: 2, scope: !800)
!916 = !DILocation(line: 149, column: 8, scope: !800)
!917 = !DILocation(line: 149, column: 15, scope: !800)
!918 = !DILocation(line: 151, column: 2, scope: !800)
!919 = !DILocation(line: 152, column: 1, scope: !800)
!920 = distinct !DISubprogram(name: "acpi_ns_detach_object", scope: !3, file: !3, line: 168, type: !921, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !83}
!923 = !DILocalVariable(name: "node", arg: 1, scope: !920, file: !3, line: 168, type: !83)
!924 = !DILocation(line: 168, column: 56, scope: !920)
!925 = !DILocalVariable(name: "obj_desc", scope: !920, file: !3, line: 170, type: !33)
!926 = !DILocation(line: 170, column: 29, scope: !920)
!927 = !DILocation(line: 174, column: 13, scope: !920)
!928 = !DILocation(line: 174, column: 19, scope: !920)
!929 = !DILocation(line: 174, column: 11, scope: !920)
!930 = !DILocation(line: 176, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !920, file: !3, line: 176, column: 6)
!932 = !DILocation(line: 176, column: 16, scope: !931)
!933 = !DILocation(line: 176, column: 20, scope: !931)
!934 = !DILocation(line: 176, column: 30, scope: !931)
!935 = !DILocation(line: 176, column: 37, scope: !931)
!936 = !DILocation(line: 176, column: 42, scope: !931)
!937 = !DILocation(line: 176, column: 6, scope: !920)
!938 = !DILocation(line: 177, column: 3, scope: !939)
!939 = distinct !DILexicalBlock(scope: !931, file: !3, line: 176, column: 68)
!940 = !DILocation(line: 180, column: 6, scope: !941)
!941 = distinct !DILexicalBlock(scope: !920, file: !3, line: 180, column: 6)
!942 = !DILocation(line: 180, column: 12, scope: !941)
!943 = !DILocation(line: 180, column: 18, scope: !941)
!944 = !DILocation(line: 180, column: 6, scope: !920)
!945 = !DILocation(line: 184, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !3, line: 184, column: 7)
!947 = distinct !DILexicalBlock(scope: !941, file: !3, line: 180, column: 44)
!948 = !DILocation(line: 184, column: 17, scope: !946)
!949 = !DILocation(line: 184, column: 24, scope: !946)
!950 = !DILocation(line: 184, column: 29, scope: !946)
!951 = !DILocation(line: 184, column: 7, scope: !947)
!952 = !DILocation(line: 185, column: 4, scope: !953)
!953 = distinct !DILexicalBlock(scope: !946, file: !3, line: 184, column: 50)
!954 = !DILocation(line: 186, column: 3, scope: !953)
!955 = !DILocation(line: 187, column: 2, scope: !947)
!956 = !DILocation(line: 189, column: 6, scope: !957)
!957 = distinct !DILexicalBlock(scope: !920, file: !3, line: 189, column: 6)
!958 = !DILocation(line: 189, column: 16, scope: !957)
!959 = !DILocation(line: 189, column: 23, scope: !957)
!960 = !DILocation(line: 189, column: 28, scope: !957)
!961 = !DILocation(line: 189, column: 6, scope: !920)
!962 = !DILocation(line: 190, column: 32, scope: !963)
!963 = distinct !DILexicalBlock(scope: !957, file: !3, line: 189, column: 49)
!964 = !DILocation(line: 190, column: 42, scope: !963)
!965 = !DILocation(line: 190, column: 49, scope: !963)
!966 = !DILocation(line: 190, column: 59, scope: !963)
!967 = !DILocation(line: 190, column: 3, scope: !963)
!968 = !DILocation(line: 191, column: 2, scope: !963)
!969 = !DILocation(line: 195, column: 2, scope: !920)
!970 = !DILocation(line: 195, column: 8, scope: !920)
!971 = !DILocation(line: 195, column: 15, scope: !920)
!972 = !DILocation(line: 196, column: 6, scope: !973)
!973 = distinct !DILexicalBlock(scope: !920, file: !3, line: 196, column: 6)
!974 = !DILocation(line: 196, column: 41, scope: !973)
!975 = !DILocation(line: 196, column: 6, scope: !920)
!976 = !DILocation(line: 200, column: 18, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !3, line: 196, column: 68)
!978 = !DILocation(line: 200, column: 28, scope: !977)
!979 = !DILocation(line: 200, column: 35, scope: !977)
!980 = !DILocation(line: 200, column: 3, scope: !977)
!981 = !DILocation(line: 200, column: 9, scope: !977)
!982 = !DILocation(line: 200, column: 16, scope: !977)
!983 = !DILocation(line: 204, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !977, file: !3, line: 204, column: 7)
!985 = !DILocation(line: 204, column: 13, scope: !984)
!986 = !DILocation(line: 204, column: 20, scope: !984)
!987 = !DILocation(line: 205, column: 8, scope: !984)
!988 = !DILocation(line: 205, column: 14, scope: !984)
!989 = !DILocation(line: 205, column: 22, scope: !984)
!990 = !DILocation(line: 205, column: 29, scope: !984)
!991 = !DILocation(line: 205, column: 34, scope: !984)
!992 = !DILocation(line: 204, column: 7, scope: !977)
!993 = !DILocation(line: 206, column: 19, scope: !994)
!994 = distinct !DILexicalBlock(scope: !984, file: !3, line: 205, column: 60)
!995 = !DILocation(line: 206, column: 25, scope: !994)
!996 = !DILocation(line: 206, column: 33, scope: !994)
!997 = !DILocation(line: 206, column: 40, scope: !994)
!998 = !DILocation(line: 206, column: 4, scope: !994)
!999 = !DILocation(line: 206, column: 10, scope: !994)
!1000 = !DILocation(line: 206, column: 17, scope: !994)
!1001 = !DILocation(line: 207, column: 3, scope: !994)
!1002 = !DILocation(line: 213, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !977, file: !3, line: 213, column: 7)
!1004 = !DILocation(line: 213, column: 17, scope: !1003)
!1005 = !DILocation(line: 213, column: 24, scope: !1003)
!1006 = !DILocation(line: 213, column: 36, scope: !1003)
!1007 = !DILocation(line: 214, column: 9, scope: !1003)
!1008 = !DILocation(line: 214, column: 19, scope: !1003)
!1009 = !DILocation(line: 214, column: 26, scope: !1003)
!1010 = !DILocation(line: 214, column: 40, scope: !1003)
!1011 = !DILocation(line: 214, column: 47, scope: !1003)
!1012 = !DILocation(line: 214, column: 8, scope: !1003)
!1013 = !DILocation(line: 214, column: 52, scope: !1003)
!1014 = !DILocation(line: 213, column: 7, scope: !977)
!1015 = !DILocation(line: 216, column: 4, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 215, column: 31)
!1017 = !DILocation(line: 216, column: 14, scope: !1016)
!1018 = !DILocation(line: 216, column: 21, scope: !1016)
!1019 = !DILocation(line: 216, column: 33, scope: !1016)
!1020 = !DILocation(line: 217, column: 3, scope: !1016)
!1021 = !DILocation(line: 218, column: 2, scope: !977)
!1022 = !DILocation(line: 222, column: 2, scope: !920)
!1023 = !DILocation(line: 222, column: 8, scope: !920)
!1024 = !DILocation(line: 222, column: 13, scope: !920)
!1025 = !DILocation(line: 229, column: 27, scope: !920)
!1026 = !DILocation(line: 229, column: 2, scope: !920)
!1027 = !DILocation(line: 230, column: 2, scope: !920)
!1028 = !DILocation(line: 231, column: 1, scope: !920)
!1029 = distinct !DISubprogram(name: "acpi_os_free", scope: !1030, file: !1030, line: 60, type: !1031, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1030 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !21}
!1033 = !DILocalVariable(name: "memory", arg: 1, scope: !1029, file: !1030, line: 60, type: !21)
!1034 = !DILocation(line: 60, column: 39, scope: !1029)
!1035 = !DILocation(line: 62, column: 8, scope: !1029)
!1036 = !DILocation(line: 62, column: 2, scope: !1029)
!1037 = !DILocation(line: 63, column: 1, scope: !1029)
!1038 = distinct !DISubprogram(name: "acpi_ns_get_attached_object", scope: !3, file: !3, line: 246, type: !1039, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!33, !83}
!1041 = !DILocalVariable(name: "node", arg: 1, scope: !1038, file: !3, line: 248, type: !83)
!1042 = !DILocation(line: 248, column: 15, scope: !1038)
!1043 = !DILocation(line: 252, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 252, column: 6)
!1045 = !DILocation(line: 252, column: 6, scope: !1038)
!1046 = !DILocation(line: 253, column: 3, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 252, column: 13)
!1048 = !DILocation(line: 254, column: 3, scope: !1047)
!1049 = !DILocation(line: 257, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 257, column: 6)
!1051 = !DILocation(line: 257, column: 13, scope: !1050)
!1052 = !DILocation(line: 257, column: 20, scope: !1050)
!1053 = !DILocation(line: 258, column: 8, scope: !1050)
!1054 = !DILocation(line: 258, column: 47, scope: !1050)
!1055 = !DILocation(line: 259, column: 7, scope: !1050)
!1056 = !DILocation(line: 259, column: 11, scope: !1050)
!1057 = !DILocation(line: 259, column: 50, scope: !1050)
!1058 = !DILocation(line: 261, column: 6, scope: !1050)
!1059 = !DILocation(line: 261, column: 11, scope: !1050)
!1060 = !DILocation(line: 261, column: 17, scope: !1050)
!1061 = !DILocation(line: 261, column: 26, scope: !1050)
!1062 = !DILocation(line: 261, column: 33, scope: !1050)
!1063 = !DILocation(line: 261, column: 10, scope: !1050)
!1064 = !DILocation(line: 261, column: 38, scope: !1050)
!1065 = !DILocation(line: 257, column: 6, scope: !1038)
!1066 = !DILocation(line: 262, column: 3, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 261, column: 64)
!1068 = !DILocation(line: 265, column: 2, scope: !1038)
!1069 = !DILocation(line: 266, column: 1, scope: !1038)
!1070 = distinct !DISubprogram(name: "acpi_ns_get_secondary_object", scope: !3, file: !3, line: 281, type: !1071, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!33, !33}
!1073 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1070, file: !3, line: 283, type: !33)
!1074 = !DILocation(line: 283, column: 9, scope: !1070)
!1075 = !DILocation(line: 287, column: 8, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 287, column: 6)
!1077 = !DILocation(line: 287, column: 18, scope: !1076)
!1078 = !DILocation(line: 288, column: 7, scope: !1076)
!1079 = !DILocation(line: 288, column: 17, scope: !1076)
!1080 = !DILocation(line: 288, column: 24, scope: !1076)
!1081 = !DILocation(line: 288, column: 29, scope: !1076)
!1082 = !DILocation(line: 288, column: 54, scope: !1076)
!1083 = !DILocation(line: 289, column: 8, scope: !1076)
!1084 = !DILocation(line: 289, column: 18, scope: !1076)
!1085 = !DILocation(line: 289, column: 25, scope: !1076)
!1086 = !DILocation(line: 289, column: 38, scope: !1076)
!1087 = !DILocation(line: 290, column: 8, scope: !1076)
!1088 = !DILocation(line: 290, column: 18, scope: !1076)
!1089 = !DILocation(line: 290, column: 25, scope: !1076)
!1090 = !DILocation(line: 290, column: 39, scope: !1076)
!1091 = !DILocation(line: 290, column: 46, scope: !1076)
!1092 = !DILocation(line: 290, column: 7, scope: !1076)
!1093 = !DILocation(line: 290, column: 51, scope: !1076)
!1094 = !DILocation(line: 287, column: 6, scope: !1070)
!1095 = !DILocation(line: 292, column: 3, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 291, column: 30)
!1097 = !DILocation(line: 295, column: 2, scope: !1070)
!1098 = !DILocation(line: 296, column: 1, scope: !1070)
!1099 = distinct !DISubprogram(name: "acpi_ns_attach_data", scope: !3, file: !3, line: 313, type: !1100, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!6, !83, !775, !21}
!1102 = !DILocalVariable(name: "node", arg: 1, scope: !1099, file: !3, line: 313, type: !83)
!1103 = !DILocation(line: 313, column: 49, scope: !1099)
!1104 = !DILocalVariable(name: "handler", arg: 2, scope: !1099, file: !3, line: 314, type: !775)
!1105 = !DILocation(line: 314, column: 27, scope: !1099)
!1106 = !DILocalVariable(name: "data", arg: 3, scope: !1099, file: !3, line: 314, type: !21)
!1107 = !DILocation(line: 314, column: 42, scope: !1099)
!1108 = !DILocalVariable(name: "prev_obj_desc", scope: !1099, file: !3, line: 316, type: !33)
!1109 = !DILocation(line: 316, column: 29, scope: !1099)
!1110 = !DILocalVariable(name: "obj_desc", scope: !1099, file: !3, line: 317, type: !33)
!1111 = !DILocation(line: 317, column: 29, scope: !1099)
!1112 = !DILocalVariable(name: "data_desc", scope: !1099, file: !3, line: 318, type: !33)
!1113 = !DILocation(line: 318, column: 29, scope: !1099)
!1114 = !DILocation(line: 322, column: 16, scope: !1099)
!1115 = !DILocation(line: 323, column: 13, scope: !1099)
!1116 = !DILocation(line: 323, column: 19, scope: !1099)
!1117 = !DILocation(line: 323, column: 11, scope: !1099)
!1118 = !DILocation(line: 324, column: 2, scope: !1099)
!1119 = !DILocation(line: 324, column: 9, scope: !1099)
!1120 = !DILocation(line: 325, column: 8, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 325, column: 7)
!1122 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 324, column: 19)
!1123 = !DILocation(line: 325, column: 18, scope: !1121)
!1124 = !DILocation(line: 325, column: 25, scope: !1121)
!1125 = !DILocation(line: 325, column: 30, scope: !1121)
!1126 = !DILocation(line: 325, column: 55, scope: !1121)
!1127 = !DILocation(line: 326, column: 8, scope: !1121)
!1128 = !DILocation(line: 326, column: 18, scope: !1121)
!1129 = !DILocation(line: 326, column: 23, scope: !1121)
!1130 = !DILocation(line: 326, column: 34, scope: !1121)
!1131 = !DILocation(line: 326, column: 31, scope: !1121)
!1132 = !DILocation(line: 325, column: 7, scope: !1122)
!1133 = !DILocation(line: 327, column: 4, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 326, column: 44)
!1135 = !DILocation(line: 330, column: 19, scope: !1122)
!1136 = !DILocation(line: 330, column: 17, scope: !1122)
!1137 = !DILocation(line: 331, column: 14, scope: !1122)
!1138 = !DILocation(line: 331, column: 24, scope: !1122)
!1139 = !DILocation(line: 331, column: 31, scope: !1122)
!1140 = !DILocation(line: 331, column: 12, scope: !1122)
!1141 = distinct !{!1141, !1118, !1142}
!1142 = !DILocation(line: 332, column: 2, scope: !1099)
!1143 = !DILocation(line: 336, column: 14, scope: !1099)
!1144 = !DILocation(line: 336, column: 12, scope: !1099)
!1145 = !DILocation(line: 337, column: 7, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 337, column: 6)
!1147 = !DILocation(line: 337, column: 6, scope: !1099)
!1148 = !DILocation(line: 338, column: 3, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 337, column: 18)
!1150 = !DILocation(line: 341, column: 28, scope: !1099)
!1151 = !DILocation(line: 341, column: 2, scope: !1099)
!1152 = !DILocation(line: 341, column: 13, scope: !1099)
!1153 = !DILocation(line: 341, column: 18, scope: !1099)
!1154 = !DILocation(line: 341, column: 26, scope: !1099)
!1155 = !DILocation(line: 342, column: 28, scope: !1099)
!1156 = !DILocation(line: 342, column: 2, scope: !1099)
!1157 = !DILocation(line: 342, column: 13, scope: !1099)
!1158 = !DILocation(line: 342, column: 18, scope: !1099)
!1159 = !DILocation(line: 342, column: 26, scope: !1099)
!1160 = !DILocation(line: 346, column: 6, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 346, column: 6)
!1162 = !DILocation(line: 346, column: 6, scope: !1099)
!1163 = !DILocation(line: 347, column: 39, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 346, column: 21)
!1165 = !DILocation(line: 347, column: 3, scope: !1164)
!1166 = !DILocation(line: 347, column: 18, scope: !1164)
!1167 = !DILocation(line: 347, column: 25, scope: !1164)
!1168 = !DILocation(line: 347, column: 37, scope: !1164)
!1169 = !DILocation(line: 348, column: 2, scope: !1164)
!1170 = !DILocation(line: 349, column: 18, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 348, column: 9)
!1172 = !DILocation(line: 349, column: 3, scope: !1171)
!1173 = !DILocation(line: 349, column: 9, scope: !1171)
!1174 = !DILocation(line: 349, column: 16, scope: !1171)
!1175 = !DILocation(line: 352, column: 2, scope: !1099)
!1176 = !DILocation(line: 353, column: 1, scope: !1099)
!1177 = distinct !DISubprogram(name: "acpi_ns_detach_data", scope: !3, file: !3, line: 370, type: !1178, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!6, !83, !775}
!1180 = !DILocalVariable(name: "node", arg: 1, scope: !1177, file: !3, line: 370, type: !83)
!1181 = !DILocation(line: 370, column: 49, scope: !1177)
!1182 = !DILocalVariable(name: "handler", arg: 2, scope: !1177, file: !3, line: 371, type: !775)
!1183 = !DILocation(line: 371, column: 27, scope: !1177)
!1184 = !DILocalVariable(name: "obj_desc", scope: !1177, file: !3, line: 373, type: !33)
!1185 = !DILocation(line: 373, column: 29, scope: !1177)
!1186 = !DILocalVariable(name: "prev_obj_desc", scope: !1177, file: !3, line: 374, type: !33)
!1187 = !DILocation(line: 374, column: 29, scope: !1177)
!1188 = !DILocation(line: 376, column: 16, scope: !1177)
!1189 = !DILocation(line: 377, column: 13, scope: !1177)
!1190 = !DILocation(line: 377, column: 19, scope: !1177)
!1191 = !DILocation(line: 377, column: 11, scope: !1177)
!1192 = !DILocation(line: 378, column: 2, scope: !1177)
!1193 = !DILocation(line: 378, column: 9, scope: !1177)
!1194 = !DILocation(line: 379, column: 8, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 379, column: 7)
!1196 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 378, column: 19)
!1197 = !DILocation(line: 379, column: 18, scope: !1195)
!1198 = !DILocation(line: 379, column: 25, scope: !1195)
!1199 = !DILocation(line: 379, column: 30, scope: !1195)
!1200 = !DILocation(line: 379, column: 55, scope: !1195)
!1201 = !DILocation(line: 380, column: 8, scope: !1195)
!1202 = !DILocation(line: 380, column: 18, scope: !1195)
!1203 = !DILocation(line: 380, column: 23, scope: !1195)
!1204 = !DILocation(line: 380, column: 34, scope: !1195)
!1205 = !DILocation(line: 380, column: 31, scope: !1195)
!1206 = !DILocation(line: 379, column: 7, scope: !1196)
!1207 = !DILocation(line: 381, column: 8, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 381, column: 8)
!1209 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 380, column: 44)
!1210 = !DILocation(line: 381, column: 8, scope: !1209)
!1211 = !DILocation(line: 383, column: 9, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 381, column: 23)
!1213 = !DILocation(line: 383, column: 19, scope: !1212)
!1214 = !DILocation(line: 383, column: 26, scope: !1212)
!1215 = !DILocation(line: 382, column: 5, scope: !1212)
!1216 = !DILocation(line: 382, column: 20, scope: !1212)
!1217 = !DILocation(line: 382, column: 27, scope: !1212)
!1218 = !DILocation(line: 382, column: 39, scope: !1212)
!1219 = !DILocation(line: 384, column: 4, scope: !1212)
!1220 = !DILocation(line: 385, column: 20, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 384, column: 11)
!1222 = !DILocation(line: 385, column: 30, scope: !1221)
!1223 = !DILocation(line: 385, column: 37, scope: !1221)
!1224 = !DILocation(line: 385, column: 5, scope: !1221)
!1225 = !DILocation(line: 385, column: 11, scope: !1221)
!1226 = !DILocation(line: 385, column: 18, scope: !1221)
!1227 = !DILocation(line: 388, column: 29, scope: !1209)
!1228 = !DILocation(line: 388, column: 4, scope: !1209)
!1229 = !DILocation(line: 389, column: 4, scope: !1209)
!1230 = !DILocation(line: 392, column: 19, scope: !1196)
!1231 = !DILocation(line: 392, column: 17, scope: !1196)
!1232 = !DILocation(line: 393, column: 14, scope: !1196)
!1233 = !DILocation(line: 393, column: 24, scope: !1196)
!1234 = !DILocation(line: 393, column: 31, scope: !1196)
!1235 = !DILocation(line: 393, column: 12, scope: !1196)
!1236 = distinct !{!1236, !1192, !1237}
!1237 = !DILocation(line: 394, column: 2, scope: !1177)
!1238 = !DILocation(line: 396, column: 2, scope: !1177)
!1239 = !DILocation(line: 397, column: 1, scope: !1177)
!1240 = distinct !DISubprogram(name: "acpi_ns_get_attached_data", scope: !3, file: !3, line: 415, type: !1241, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!6, !83, !775, !733}
!1243 = !DILocalVariable(name: "node", arg: 1, scope: !1240, file: !3, line: 415, type: !83)
!1244 = !DILocation(line: 415, column: 55, scope: !1240)
!1245 = !DILocalVariable(name: "handler", arg: 2, scope: !1240, file: !3, line: 416, type: !775)
!1246 = !DILocation(line: 416, column: 26, scope: !1240)
!1247 = !DILocalVariable(name: "data", arg: 3, scope: !1240, file: !3, line: 416, type: !733)
!1248 = !DILocation(line: 416, column: 42, scope: !1240)
!1249 = !DILocalVariable(name: "obj_desc", scope: !1240, file: !3, line: 418, type: !33)
!1250 = !DILocation(line: 418, column: 29, scope: !1240)
!1251 = !DILocation(line: 420, column: 13, scope: !1240)
!1252 = !DILocation(line: 420, column: 19, scope: !1240)
!1253 = !DILocation(line: 420, column: 11, scope: !1240)
!1254 = !DILocation(line: 421, column: 2, scope: !1240)
!1255 = !DILocation(line: 421, column: 9, scope: !1240)
!1256 = !DILocation(line: 422, column: 8, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 422, column: 7)
!1258 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 421, column: 19)
!1259 = !DILocation(line: 422, column: 18, scope: !1257)
!1260 = !DILocation(line: 422, column: 25, scope: !1257)
!1261 = !DILocation(line: 422, column: 30, scope: !1257)
!1262 = !DILocation(line: 422, column: 55, scope: !1257)
!1263 = !DILocation(line: 423, column: 8, scope: !1257)
!1264 = !DILocation(line: 423, column: 18, scope: !1257)
!1265 = !DILocation(line: 423, column: 23, scope: !1257)
!1266 = !DILocation(line: 423, column: 34, scope: !1257)
!1267 = !DILocation(line: 423, column: 31, scope: !1257)
!1268 = !DILocation(line: 422, column: 7, scope: !1258)
!1269 = !DILocation(line: 424, column: 12, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 423, column: 44)
!1271 = !DILocation(line: 424, column: 22, scope: !1270)
!1272 = !DILocation(line: 424, column: 27, scope: !1270)
!1273 = !DILocation(line: 424, column: 5, scope: !1270)
!1274 = !DILocation(line: 424, column: 10, scope: !1270)
!1275 = !DILocation(line: 425, column: 4, scope: !1270)
!1276 = !DILocation(line: 428, column: 14, scope: !1258)
!1277 = !DILocation(line: 428, column: 24, scope: !1258)
!1278 = !DILocation(line: 428, column: 31, scope: !1258)
!1279 = !DILocation(line: 428, column: 12, scope: !1258)
!1280 = distinct !{!1280, !1254, !1281}
!1281 = !DILocation(line: 429, column: 2, scope: !1240)
!1282 = !DILocation(line: 431, column: 2, scope: !1240)
!1283 = !DILocation(line: 432, column: 1, scope: !1240)
