; ModuleID = '../bcout/drivers/acpi/acpica/exresnte.llvm.bc'
source_filename = "drivers/acpi/acpica/exresnte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%union.acpi_name_union = type { i32 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }

@_acpi_module_name = internal constant [9 x i8] c"exresnte\00", align 1, !dbg !0
@.str = private unnamed_addr constant [38 x i8] c"No object attached to node [%4.4s] %p\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Object not a Package, type %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Object not a Buffer, type %s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Object not a String, type %s\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Object not a Integer, type %s\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Untyped entry %p, no attached object!\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Unsupported Reference type 0x%X\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Node %p - Unknown object type 0x%X\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_resolve_node_to_value(%struct.acpi_namespace_node** %object_ptr, %struct.acpi_walk_state* %walk_state) #0 !dbg !789 {
entry:
  %retval = alloca i32, align 4
  %object_ptr.addr = alloca %struct.acpi_namespace_node**, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %source_desc = alloca %union.acpi_operand_object*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %entry_type = alloca i32, align 4
  store %struct.acpi_namespace_node** %object_ptr, %struct.acpi_namespace_node*** %object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node*** %object_ptr.addr, metadata !793, metadata !DIExpression()), !dbg !794
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !795, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.declare(metadata i32* %status, metadata !797, metadata !DIExpression()), !dbg !798
  store i32 0, i32* %status, align 4, !dbg !798
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc, metadata !799, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !801, metadata !DIExpression()), !dbg !802
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %obj_desc, align 8, !dbg !802
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !803, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.declare(metadata i32* %entry_type, metadata !805, metadata !DIExpression()), !dbg !807
  %0 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %object_ptr.addr, align 8, !dbg !808
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %0, align 8, !dbg !809
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %node, align 8, !dbg !810
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !811
  %call = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %2) #3, !dbg !812
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %source_desc, align 8, !dbg !813
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !814
  %4 = bitcast %struct.acpi_namespace_node* %3 to i8*, !dbg !815
  %5 = bitcast i8* %4 to %struct.acpi_namespace_node*, !dbg !815
  %call1 = call i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %5) #3, !dbg !816
  store i32 %call1, i32* %entry_type, align 4, !dbg !817
  %6 = load i32, i32* %entry_type, align 4, !dbg !818
  %cmp = icmp eq i32 %6, 21, !dbg !820
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !821

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %entry_type, align 4, !dbg !822
  %cmp2 = icmp eq i32 %7, 22, !dbg !823
  br i1 %cmp2, label %if.then, label %if.end, !dbg !824

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !825
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %8, i32 0, i32 0, !dbg !825
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !825
  %10 = bitcast %union.acpi_operand_object* %9 to i8*, !dbg !825
  %11 = bitcast i8* %10 to %struct.acpi_namespace_node*, !dbg !825
  store %struct.acpi_namespace_node* %11, %struct.acpi_namespace_node** %node, align 8, !dbg !827
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !828
  %call3 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %12) #3, !dbg !829
  store %union.acpi_operand_object* %call3, %union.acpi_operand_object** %source_desc, align 8, !dbg !830
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !831
  %14 = bitcast %struct.acpi_namespace_node* %13 to i8*, !dbg !832
  %15 = bitcast i8* %14 to %struct.acpi_namespace_node*, !dbg !832
  %call4 = call i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %15) #3, !dbg !833
  store i32 %call4, i32* %entry_type, align 4, !dbg !834
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !835
  %17 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %object_ptr.addr, align 8, !dbg !836
  store %struct.acpi_namespace_node* %16, %struct.acpi_namespace_node** %17, align 8, !dbg !837
  br label %if.end, !dbg !838

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %18 = load i32, i32* %entry_type, align 4, !dbg !839
  %cmp5 = icmp eq i32 %18, 6, !dbg !841
  br i1 %cmp5, label %if.then11, label %lor.lhs.false6, !dbg !842

lor.lhs.false6:                                   ; preds = %if.end
  %19 = load i32, i32* %entry_type, align 4, !dbg !843
  %cmp7 = icmp eq i32 %19, 13, !dbg !844
  br i1 %cmp7, label %if.then11, label %lor.lhs.false8, !dbg !845

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %20 = load i32, i32* %entry_type, align 4, !dbg !846
  %cmp9 = icmp eq i32 %20, 8, !dbg !847
  br i1 %cmp9, label %if.then11, label %lor.lhs.false10, !dbg !848

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !849
  %flags = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %21, i32 0, i32 3, !dbg !850
  %22 = load i16, i16* %flags, align 2, !dbg !850
  %conv = zext i16 %22 to i32, !dbg !849
  %and = and i32 %conv, 12, !dbg !851
  %tobool = icmp ne i32 %and, 0, !dbg !851
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !852

if.then11:                                        ; preds = %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %if.end
  store i32 0, i32* %retval, align 4, !dbg !853
  br label %return, !dbg !853

if.end12:                                         ; preds = %lor.lhs.false10
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !855
  %tobool13 = icmp ne %union.acpi_operand_object* %23, null, !dbg !855
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !857

if.then14:                                        ; preds = %if.end12
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !858
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %24, i32 0, i32 4, !dbg !858
  %ascii = bitcast %union.acpi_name_union* %name to [4 x i8]*, !dbg !858
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !858
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !858
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %arraydecay, %struct.acpi_namespace_node* %25) #3, !dbg !858
  store i32 12322, i32* %retval, align 4, !dbg !860
  br label %return, !dbg !860

if.end15:                                         ; preds = %if.end12
  %26 = load i32, i32* %entry_type, align 4, !dbg !861
  switch i32 %26, label %sw.default67 [
    i32 4, label %sw.bb
    i32 3, label %sw.bb26
    i32 2, label %sw.bb39
    i32 1, label %sw.bb48
    i32 14, label %sw.bb57
    i32 17, label %sw.bb57
    i32 18, label %sw.bb57
    i32 19, label %sw.bb57
    i32 9, label %sw.bb59
    i32 11, label %sw.bb59
    i32 12, label %sw.bb59
    i32 7, label %sw.bb59
    i32 10, label %sw.bb59
    i32 0, label %sw.bb60
    i32 20, label %sw.bb61
  ], !dbg !862

sw.bb:                                            ; preds = %if.end15
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !863
  %common = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_common*, !dbg !866
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !867
  %28 = load i8, i8* %type, align 1, !dbg !867
  %conv16 = zext i8 %28 to i32, !dbg !863
  %cmp17 = icmp ne i32 %conv16, 4, !dbg !868
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !869

if.then19:                                        ; preds = %sw.bb
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !870
  %call20 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %29) #3, !dbg !870
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %call20) #3, !dbg !870
  store i32 12291, i32* %retval, align 4, !dbg !872
  br label %return, !dbg !872

if.end21:                                         ; preds = %sw.bb
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !873
  %call22 = call i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object* %30) #3, !dbg !874
  store i32 %call22, i32* %status, align 4, !dbg !875
  %31 = load i32, i32* %status, align 4, !dbg !876
  %tobool23 = icmp ne i32 %31, 0, !dbg !876
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !878

if.then24:                                        ; preds = %if.end21
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !879
  store %union.acpi_operand_object* %32, %union.acpi_operand_object** %obj_desc, align 8, !dbg !881
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !882
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %33) #3, !dbg !883
  br label %if.end25, !dbg !884

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %sw.epilog68, !dbg !885

sw.bb26:                                          ; preds = %if.end15
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !886
  %common27 = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_common*, !dbg !888
  %type28 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common27, i32 0, i32 2, !dbg !889
  %35 = load i8, i8* %type28, align 1, !dbg !889
  %conv29 = zext i8 %35 to i32, !dbg !886
  %cmp30 = icmp ne i32 %conv29, 3, !dbg !890
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !891

if.then32:                                        ; preds = %sw.bb26
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !892
  %call33 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %36) #3, !dbg !892
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %call33) #3, !dbg !892
  store i32 12291, i32* %retval, align 4, !dbg !894
  br label %return, !dbg !894

if.end34:                                         ; preds = %sw.bb26
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !895
  %call35 = call i32 @acpi_ds_get_buffer_arguments(%union.acpi_operand_object* %37) #3, !dbg !896
  store i32 %call35, i32* %status, align 4, !dbg !897
  %38 = load i32, i32* %status, align 4, !dbg !898
  %tobool36 = icmp ne i32 %38, 0, !dbg !898
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !900

if.then37:                                        ; preds = %if.end34
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !901
  store %union.acpi_operand_object* %39, %union.acpi_operand_object** %obj_desc, align 8, !dbg !903
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !904
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %40) #3, !dbg !905
  br label %if.end38, !dbg !906

if.end38:                                         ; preds = %if.then37, %if.end34
  br label %sw.epilog68, !dbg !907

sw.bb39:                                          ; preds = %if.end15
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !908
  %common40 = bitcast %union.acpi_operand_object* %41 to %struct.acpi_object_common*, !dbg !910
  %type41 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common40, i32 0, i32 2, !dbg !911
  %42 = load i8, i8* %type41, align 1, !dbg !911
  %conv42 = zext i8 %42 to i32, !dbg !908
  %cmp43 = icmp ne i32 %conv42, 2, !dbg !912
  br i1 %cmp43, label %if.then45, label %if.end47, !dbg !913

if.then45:                                        ; preds = %sw.bb39
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !914
  %call46 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %43) #3, !dbg !914
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 142, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %call46) #3, !dbg !914
  store i32 12291, i32* %retval, align 4, !dbg !916
  br label %return, !dbg !916

if.end47:                                         ; preds = %sw.bb39
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !917
  store %union.acpi_operand_object* %44, %union.acpi_operand_object** %obj_desc, align 8, !dbg !918
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !919
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %45) #3, !dbg !920
  br label %sw.epilog68, !dbg !921

sw.bb48:                                          ; preds = %if.end15
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !922
  %common49 = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_common*, !dbg !924
  %type50 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common49, i32 0, i32 2, !dbg !925
  %47 = load i8, i8* %type50, align 1, !dbg !925
  %conv51 = zext i8 %47 to i32, !dbg !922
  %cmp52 = icmp ne i32 %conv51, 1, !dbg !926
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !927

if.then54:                                        ; preds = %sw.bb48
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !928
  %call55 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %48) #3, !dbg !928
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 156, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %call55) #3, !dbg !928
  store i32 12291, i32* %retval, align 4, !dbg !930
  br label %return, !dbg !930

if.end56:                                         ; preds = %sw.bb48
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !931
  store %union.acpi_operand_object* %49, %union.acpi_operand_object** %obj_desc, align 8, !dbg !932
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !933
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %50) #3, !dbg !934
  br label %sw.epilog68, !dbg !935

sw.bb57:                                          ; preds = %if.end15, %if.end15, %if.end15, %if.end15
  %51 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !936
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !937
  %call58 = call i32 @acpi_ex_read_data_from_field(%struct.acpi_walk_state* %51, %union.acpi_operand_object* %52, %union.acpi_operand_object** %obj_desc) #3, !dbg !938
  store i32 %call58, i32* %status, align 4, !dbg !939
  br label %sw.epilog68, !dbg !940

sw.bb59:                                          ; preds = %if.end15, %if.end15, %if.end15, %if.end15, %if.end15
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !941
  store %union.acpi_operand_object* %53, %union.acpi_operand_object** %obj_desc, align 8, !dbg !942
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !943
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %54) #3, !dbg !944
  br label %sw.epilog68, !dbg !945

sw.bb60:                                          ; preds = %if.end15
  %55 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !946
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 199, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), %struct.acpi_namespace_node* %55) #3, !dbg !946
  store i32 12291, i32* %retval, align 4, !dbg !947
  br label %return, !dbg !947

sw.bb61:                                          ; preds = %if.end15
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !948
  %reference = bitcast %union.acpi_operand_object* %56 to %struct.acpi_object_reference*, !dbg !949
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !950
  %57 = load i8, i8* %class, align 1, !dbg !950
  %conv62 = zext i8 %57 to i32, !dbg !948
  switch i32 %conv62, label %sw.default [
    i32 4, label %sw.bb63
    i32 2, label %sw.bb63
    i32 3, label %sw.bb63
  ], !dbg !951

sw.bb63:                                          ; preds = %sw.bb61, %sw.bb61, %sw.bb61
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !952
  store %union.acpi_operand_object* %58, %union.acpi_operand_object** %obj_desc, align 8, !dbg !954
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !955
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %59) #3, !dbg !956
  br label %sw.epilog, !dbg !957

sw.default:                                       ; preds = %sw.bb61
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !958
  %reference64 = bitcast %union.acpi_operand_object* %60 to %struct.acpi_object_reference*, !dbg !958
  %class65 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference64, i32 0, i32 5, !dbg !958
  %61 = load i8, i8* %class65, align 1, !dbg !958
  %conv66 = zext i8 %61 to i32, !dbg !958
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 221, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %conv66) #3, !dbg !958
  store i32 12291, i32* %retval, align 4, !dbg !959
  br label %return, !dbg !959

sw.epilog:                                        ; preds = %sw.bb63
  br label %sw.epilog68, !dbg !960

sw.default67:                                     ; preds = %if.end15
  %62 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !961
  %63 = load i32, i32* %entry_type, align 4, !dbg !961
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 233, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), %struct.acpi_namespace_node* %62, i32 %63) #3, !dbg !961
  store i32 12291, i32* %retval, align 4, !dbg !962
  br label %return, !dbg !962

sw.epilog68:                                      ; preds = %sw.epilog, %sw.bb59, %sw.bb57, %if.end56, %if.end47, %if.end38, %if.end25
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !963
  %65 = bitcast %union.acpi_operand_object* %64 to i8*, !dbg !964
  %66 = bitcast i8* %65 to %struct.acpi_namespace_node*, !dbg !964
  %67 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %object_ptr.addr, align 8, !dbg !965
  store %struct.acpi_namespace_node* %66, %struct.acpi_namespace_node** %67, align 8, !dbg !966
  %68 = load i32, i32* %status, align 4, !dbg !967
  store i32 %68, i32* %retval, align 4, !dbg !967
  br label %return, !dbg !967

return:                                           ; preds = %sw.epilog68, %sw.default67, %sw.default, %sw.bb60, %if.then54, %if.then45, %if.then32, %if.then19, %if.then14, %if.then11
  %69 = load i32, i32* %retval, align 4, !dbg !968
  ret i32 %69, !dbg !968
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_type(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_get_buffer_arguments(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_read_data_from_field(%struct.acpi_walk_state*, %union.acpi_operand_object*, %union.acpi_operand_object**) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!784, !785, !786, !787}
!llvm.ident = !{!788}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !782, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !781, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exresnte.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !15, !14}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !17, line: 133, size: 384, elements: !18)
!17 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!18 = !{!19, !768, !769, !770, !771, !777, !778, !779, !780}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !16, file: !17, line: 134, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !22, line: 367, size: 576, elements: !23)
!22 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !38, !54, !66, !80, !94, !103, !419, !436, !451, !464, !542, !554, !568, !578, !596, !618, !637, !656, !675, !688, !714, !731, !744, !758, !767}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !21, file: !22, line: 368, baseType: !25, size: 128)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !22, line: 73, size: 128, elements: !26)
!26 = !{!27, !28, !32, !33, !37}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !25, file: !22, line: 74, baseType: !20, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !25, file: !22, line: 74, baseType: !29, size: 8, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !31)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !22, line: 74, baseType: !29, size: 8, offset: 72)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !25, file: !22, line: 74, baseType: !34, size: 16, offset: 80)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !36)
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !25, file: !22, line: 74, baseType: !29, size: 8, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !21, file: !22, line: 369, baseType: !39, size: 192)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !22, line: 76, size: 192, elements: !40)
!40 = !{!41, !42, !43, !44, !45, !46, !50}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !39, file: !22, line: 77, baseType: !20, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !39, file: !22, line: 77, baseType: !29, size: 8, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !39, file: !22, line: 77, baseType: !29, size: 8, offset: 72)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !39, file: !22, line: 77, baseType: !34, size: 16, offset: 80)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !22, line: 77, baseType: !29, size: 8, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !39, file: !22, line: 77, baseType: !47, size: 24, offset: 104)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 24, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 3)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !39, file: !22, line: 78, baseType: !51, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !53)
!53 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !21, file: !22, line: 370, baseType: !55, size: 256)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !22, line: 93, size: 256, elements: !56)
!56 = !{!57, !58, !59, !60, !61, !62, !65}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !55, file: !22, line: 94, baseType: !20, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !55, file: !22, line: 94, baseType: !29, size: 8, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !22, line: 94, baseType: !29, size: 8, offset: 72)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !55, file: !22, line: 94, baseType: !34, size: 16, offset: 80)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !22, line: 94, baseType: !29, size: 8, offset: 96)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !55, file: !22, line: 94, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !55, file: !22, line: 94, baseType: !8, size: 32, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !21, file: !22, line: 371, baseType: !67, size: 384)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !22, line: 97, size: 384, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74, !76, !77, !78, !79}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !67, file: !22, line: 98, baseType: !20, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !67, file: !22, line: 98, baseType: !29, size: 8, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !22, line: 98, baseType: !29, size: 8, offset: 72)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !67, file: !22, line: 98, baseType: !34, size: 16, offset: 80)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !67, file: !22, line: 98, baseType: !29, size: 8, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !67, file: !22, line: 98, baseType: !75, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !67, file: !22, line: 98, baseType: !8, size: 32, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !67, file: !22, line: 99, baseType: !8, size: 32, offset: 224)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !67, file: !22, line: 100, baseType: !75, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !67, file: !22, line: 101, baseType: !15, size: 64, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !21, file: !22, line: 372, baseType: !81, size: 384)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !22, line: 104, size: 384, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !91, !92, !93}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !81, file: !22, line: 105, baseType: !20, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !81, file: !22, line: 105, baseType: !29, size: 8, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !22, line: 105, baseType: !29, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !81, file: !22, line: 105, baseType: !34, size: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !22, line: 105, baseType: !29, size: 8, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !81, file: !22, line: 105, baseType: !15, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !81, file: !22, line: 106, baseType: !90, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !81, file: !22, line: 107, baseType: !75, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !81, file: !22, line: 108, baseType: !8, size: 32, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !81, file: !22, line: 109, baseType: !8, size: 32, offset: 352)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !21, file: !22, line: 373, baseType: !95, size: 192)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !22, line: 118, size: 192, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !95, file: !22, line: 119, baseType: !20, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !95, file: !22, line: 119, baseType: !29, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !22, line: 119, baseType: !29, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !95, file: !22, line: 119, baseType: !34, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !95, file: !22, line: 119, baseType: !29, size: 8, offset: 96)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !95, file: !22, line: 119, baseType: !14, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !21, file: !22, line: 374, baseType: !104, size: 448)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !22, line: 143, size: 448, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !416, !417, !418}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !104, file: !22, line: 144, baseType: !20, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !104, file: !22, line: 144, baseType: !29, size: 8, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !22, line: 144, baseType: !29, size: 8, offset: 72)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !104, file: !22, line: 144, baseType: !34, size: 16, offset: 80)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !22, line: 144, baseType: !29, size: 8, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !104, file: !22, line: 144, baseType: !29, size: 8, offset: 104)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !104, file: !22, line: 145, baseType: !29, size: 8, offset: 112)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !104, file: !22, line: 146, baseType: !29, size: 8, offset: 120)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !104, file: !22, line: 147, baseType: !20, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !104, file: !22, line: 148, baseType: !20, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !104, file: !22, line: 149, baseType: !75, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !104, file: !22, line: 153, baseType: !118, size: 64, offset: 320)
!118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !22, line: 150, size: 64, elements: !119)
!119 = !{!120, !415}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !118, file: !22, line: 151, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !17, line: 248, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!6, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !127, line: 37, size: 9024, elements: !128)
!127 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !361, !362, !363, !364, !365, !369, !371, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !398, !399, !400, !401, !402, !403, !404, !405, !407, !413}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !127, line: 38, baseType: !125, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !127, line: 39, baseType: !29, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !126, file: !127, line: 40, baseType: !29, size: 8, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !126, file: !127, line: 41, baseType: !34, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !126, file: !127, line: 42, baseType: !29, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !126, file: !127, line: 43, baseType: !29, size: 8, offset: 104)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !126, file: !127, line: 44, baseType: !29, size: 8, offset: 112)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !126, file: !127, line: 45, baseType: !137, size: 16, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !34)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !126, file: !127, line: 46, baseType: !29, size: 8, offset: 144)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !126, file: !127, line: 47, baseType: !29, size: 8, offset: 152)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !126, file: !127, line: 48, baseType: !29, size: 8, offset: 160)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !126, file: !127, line: 49, baseType: !29, size: 8, offset: 168)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !126, file: !127, line: 50, baseType: !29, size: 8, offset: 176)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !126, file: !127, line: 51, baseType: !29, size: 8, offset: 184)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !126, file: !127, line: 52, baseType: !29, size: 8, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !126, file: !127, line: 53, baseType: !29, size: 8, offset: 200)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !126, file: !127, line: 54, baseType: !75, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !126, file: !127, line: 55, baseType: !8, size: 32, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !126, file: !127, line: 56, baseType: !8, size: 32, offset: 352)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !126, file: !127, line: 57, baseType: !8, size: 32, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !126, file: !127, line: 58, baseType: !8, size: 32, offset: 416)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !126, file: !127, line: 60, baseType: !152, size: 640, offset: 448)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !17, line: 893, size: 640, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !243, !244, !359, !360}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !152, file: !17, line: 894, baseType: !75, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !152, file: !17, line: 895, baseType: !75, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !152, file: !17, line: 896, baseType: !75, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !152, file: !17, line: 897, baseType: !75, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !152, file: !17, line: 898, baseType: !75, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !152, file: !17, line: 899, baseType: !160, size: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !17, line: 875, size: 1600, elements: !162)
!162 = !{!163, !183, !199}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !161, file: !17, line: 876, baseType: !164, size: 448)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !17, line: 828, size: 448, elements: !165)
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !182}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !164, file: !17, line: 829, baseType: !160, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !164, file: !17, line: 829, baseType: !29, size: 8, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !17, line: 829, baseType: !29, size: 8, offset: 72)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !164, file: !17, line: 829, baseType: !34, size: 16, offset: 80)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !164, file: !17, line: 829, baseType: !75, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !17, line: 829, baseType: !160, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !164, file: !17, line: 829, baseType: !15, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !164, file: !17, line: 829, baseType: !174, size: 64, offset: 320)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !17, line: 716, size: 64, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !174, file: !17, line: 717, baseType: !51, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !174, file: !17, line: 718, baseType: !8, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !174, file: !17, line: 719, baseType: !63, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !174, file: !17, line: 720, baseType: !75, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !17, line: 721, baseType: !63, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !174, file: !17, line: 722, baseType: !160, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !164, file: !17, line: 829, baseType: !29, size: 8, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !161, file: !17, line: 877, baseType: !184, size: 640)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !17, line: 835, size: 640, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !184, file: !17, line: 836, baseType: !160, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !184, file: !17, line: 836, baseType: !29, size: 8, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !184, file: !17, line: 836, baseType: !29, size: 8, offset: 72)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !184, file: !17, line: 836, baseType: !34, size: 16, offset: 80)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !184, file: !17, line: 836, baseType: !75, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !17, line: 836, baseType: !160, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !184, file: !17, line: 836, baseType: !15, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !184, file: !17, line: 836, baseType: !174, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !184, file: !17, line: 836, baseType: !29, size: 8, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !184, file: !17, line: 836, baseType: !63, size: 64, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !184, file: !17, line: 837, baseType: !75, size: 64, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !184, file: !17, line: 838, baseType: !8, size: 32, offset: 576)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !17, line: 839, baseType: !8, size: 32, offset: 608)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !161, file: !17, line: 878, baseType: !200, size: 1600)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !17, line: 846, size: 1600, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !200, file: !17, line: 847, baseType: !160, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !200, file: !17, line: 847, baseType: !29, size: 8, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !200, file: !17, line: 847, baseType: !29, size: 8, offset: 72)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !200, file: !17, line: 847, baseType: !34, size: 16, offset: 80)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !200, file: !17, line: 847, baseType: !75, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !200, file: !17, line: 847, baseType: !160, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !200, file: !17, line: 847, baseType: !15, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !200, file: !17, line: 847, baseType: !174, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !200, file: !17, line: 847, baseType: !29, size: 8, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !200, file: !17, line: 847, baseType: !160, size: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !200, file: !17, line: 848, baseType: !160, size: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !200, file: !17, line: 849, baseType: !63, size: 64, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !200, file: !17, line: 850, baseType: !29, size: 8, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !200, file: !17, line: 851, baseType: !63, size: 64, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !200, file: !17, line: 852, baseType: !63, size: 64, offset: 768)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !200, file: !17, line: 853, baseType: !63, size: 64, offset: 832)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !200, file: !17, line: 854, baseType: !219, size: 32, offset: 896)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 32, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 4)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !200, file: !17, line: 855, baseType: !8, size: 32, offset: 928)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !200, file: !17, line: 856, baseType: !8, size: 32, offset: 960)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !200, file: !17, line: 857, baseType: !8, size: 32, offset: 992)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !200, file: !17, line: 858, baseType: !8, size: 32, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !200, file: !17, line: 859, baseType: !8, size: 32, offset: 1056)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !200, file: !17, line: 860, baseType: !8, size: 32, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !200, file: !17, line: 861, baseType: !8, size: 32, offset: 1120)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !200, file: !17, line: 862, baseType: !8, size: 32, offset: 1152)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !200, file: !17, line: 863, baseType: !8, size: 32, offset: 1184)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !200, file: !17, line: 864, baseType: !8, size: 32, offset: 1216)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !200, file: !17, line: 865, baseType: !8, size: 32, offset: 1248)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !200, file: !17, line: 866, baseType: !8, size: 32, offset: 1280)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !200, file: !17, line: 867, baseType: !8, size: 32, offset: 1312)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !200, file: !17, line: 868, baseType: !34, size: 16, offset: 1344)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !200, file: !17, line: 869, baseType: !29, size: 8, offset: 1360)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !200, file: !17, line: 870, baseType: !29, size: 8, offset: 1368)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !200, file: !17, line: 871, baseType: !29, size: 8, offset: 1376)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !200, file: !17, line: 872, baseType: !240, size: 160, offset: 1384)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 160, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 20)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !152, file: !17, line: 900, baseType: !15, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !152, file: !17, line: 901, baseType: !245, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !17, line: 663, size: 640, elements: !247)
!247 = !{!248, !256, !269, !278, !287, !300, !314, !326, !338}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !246, file: !17, line: 664, baseType: !249, size: 128)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !17, line: 567, size: 128, elements: !250)
!250 = !{!251, !252, !253, !254, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !17, line: 568, baseType: !14, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !249, file: !17, line: 568, baseType: !29, size: 8, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !249, file: !17, line: 568, baseType: !29, size: 8, offset: 72)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !249, file: !17, line: 568, baseType: !34, size: 16, offset: 80)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !249, file: !17, line: 568, baseType: !34, size: 16, offset: 96)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !246, file: !17, line: 665, baseType: !257, size: 384)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !17, line: 593, size: 384, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !17, line: 594, baseType: !14, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !257, file: !17, line: 594, baseType: !29, size: 8, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !17, line: 594, baseType: !29, size: 8, offset: 72)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !257, file: !17, line: 594, baseType: !34, size: 16, offset: 80)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !257, file: !17, line: 594, baseType: !34, size: 16, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !257, file: !17, line: 594, baseType: !34, size: 16, offset: 112)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !257, file: !17, line: 595, baseType: !160, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !257, file: !17, line: 596, baseType: !75, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !257, file: !17, line: 597, baseType: !75, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !257, file: !17, line: 598, baseType: !51, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !246, file: !17, line: 666, baseType: !270, size: 192)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !17, line: 573, size: 192, elements: !271)
!271 = !{!272, !273, !274, !275, !276, !277}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !17, line: 574, baseType: !14, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !270, file: !17, line: 574, baseType: !29, size: 8, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !17, line: 574, baseType: !29, size: 8, offset: 72)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !270, file: !17, line: 574, baseType: !34, size: 16, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !270, file: !17, line: 574, baseType: !34, size: 16, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !270, file: !17, line: 574, baseType: !20, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !246, file: !17, line: 667, baseType: !279, size: 192)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !17, line: 604, size: 192, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !17, line: 605, baseType: !14, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !17, line: 605, baseType: !29, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !17, line: 605, baseType: !29, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !17, line: 605, baseType: !34, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !17, line: 605, baseType: !34, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !279, file: !17, line: 605, baseType: !15, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !246, file: !17, line: 668, baseType: !288, size: 448)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !17, line: 608, size: 448, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !17, line: 609, baseType: !14, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !17, line: 609, baseType: !29, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !17, line: 609, baseType: !29, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !17, line: 609, baseType: !34, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !17, line: 609, baseType: !34, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !288, file: !17, line: 609, baseType: !8, size: 32, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !288, file: !17, line: 610, baseType: !160, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !288, file: !17, line: 611, baseType: !75, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !288, file: !17, line: 612, baseType: !75, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !288, file: !17, line: 613, baseType: !8, size: 32, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !246, file: !17, line: 669, baseType: !301, size: 512)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !17, line: 580, size: 512, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !17, line: 581, baseType: !14, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !17, line: 581, baseType: !29, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !17, line: 581, baseType: !29, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !17, line: 581, baseType: !34, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !17, line: 581, baseType: !34, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !301, file: !17, line: 581, baseType: !8, size: 32, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !301, file: !17, line: 582, baseType: !20, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !301, file: !17, line: 583, baseType: !20, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !301, file: !17, line: 584, baseType: !125, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !301, file: !17, line: 585, baseType: !14, size: 64, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !301, file: !17, line: 586, baseType: !8, size: 32, offset: 448)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !246, file: !17, line: 670, baseType: !315, size: 320)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !17, line: 620, size: 320, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !17, line: 621, baseType: !14, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !315, file: !17, line: 621, baseType: !29, size: 8, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !17, line: 621, baseType: !29, size: 8, offset: 72)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !315, file: !17, line: 621, baseType: !34, size: 16, offset: 80)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !315, file: !17, line: 621, baseType: !34, size: 16, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !315, file: !17, line: 621, baseType: !29, size: 8, offset: 112)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !315, file: !17, line: 622, baseType: !125, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !315, file: !17, line: 623, baseType: !20, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !315, file: !17, line: 624, baseType: !51, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !246, file: !17, line: 671, baseType: !327, size: 640)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !17, line: 631, size: 640, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !17, line: 632, baseType: !14, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !17, line: 632, baseType: !29, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !17, line: 632, baseType: !29, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !17, line: 632, baseType: !34, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !17, line: 632, baseType: !34, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !327, file: !17, line: 633, baseType: !335, size: 512, offset: 128)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 512, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 8)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !246, file: !17, line: 672, baseType: !339, size: 320)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !17, line: 654, size: 320, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !17, line: 655, baseType: !14, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !339, file: !17, line: 655, baseType: !29, size: 8, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !17, line: 655, baseType: !29, size: 8, offset: 72)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !339, file: !17, line: 655, baseType: !34, size: 16, offset: 80)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !339, file: !17, line: 655, baseType: !34, size: 16, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !339, file: !17, line: 655, baseType: !29, size: 8, offset: 112)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !339, file: !17, line: 656, baseType: !15, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !339, file: !17, line: 657, baseType: !20, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !339, file: !17, line: 658, baseType: !350, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !17, line: 645, size: 128, elements: !352)
!352 = !{!353, !358}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !351, file: !17, line: 646, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !13, !8, !14}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !351, file: !17, line: 647, baseType: !14, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !152, file: !17, line: 902, baseType: !160, size: 64, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !152, file: !17, line: 903, baseType: !8, size: 32, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !126, file: !127, line: 61, baseType: !8, size: 32, offset: 1088)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !126, file: !127, line: 62, baseType: !8, size: 32, offset: 1120)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !126, file: !127, line: 63, baseType: !34, size: 16, offset: 1152)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !126, file: !127, line: 64, baseType: !29, size: 8, offset: 1168)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !126, file: !127, line: 66, baseType: !366, size: 2688, offset: 1216)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 2688, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 7)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !126, file: !127, line: 67, baseType: !370, size: 3072, offset: 3904)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 3072, elements: !336)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !126, file: !127, line: 68, baseType: !372, size: 576, offset: 6976)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 576, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 9)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !126, file: !127, line: 69, baseType: !90, size: 64, offset: 7552)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !126, file: !127, line: 71, baseType: !75, size: 64, offset: 7616)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !126, file: !127, line: 72, baseType: !90, size: 64, offset: 7680)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !126, file: !127, line: 73, baseType: !245, size: 64, offset: 7744)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !126, file: !127, line: 74, baseType: !15, size: 64, offset: 7808)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !126, file: !127, line: 75, baseType: !20, size: 64, offset: 7872)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !126, file: !127, line: 76, baseType: !15, size: 64, offset: 7936)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !126, file: !127, line: 77, baseType: !160, size: 64, offset: 8000)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !126, file: !127, line: 78, baseType: !20, size: 64, offset: 8064)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !126, file: !127, line: 79, baseType: !15, size: 64, offset: 8128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !126, file: !127, line: 80, baseType: !63, size: 64, offset: 8192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !126, file: !127, line: 81, baseType: !160, size: 64, offset: 8256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !126, file: !127, line: 82, baseType: !388, size: 64, offset: 8320)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !17, line: 702, size: 128, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !390, file: !17, line: 706, baseType: !8, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !390, file: !17, line: 707, baseType: !8, size: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !17, line: 708, baseType: !34, size: 16, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !390, file: !17, line: 709, baseType: !29, size: 8, offset: 80)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !390, file: !17, line: 710, baseType: !29, size: 8, offset: 88)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !17, line: 711, baseType: !29, size: 8, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !126, file: !127, line: 83, baseType: !160, size: 64, offset: 8384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !126, file: !127, line: 84, baseType: !20, size: 64, offset: 8448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !126, file: !127, line: 85, baseType: !245, size: 64, offset: 8512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !126, file: !127, line: 86, baseType: !20, size: 64, offset: 8576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !126, file: !127, line: 87, baseType: !245, size: 64, offset: 8640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !126, file: !127, line: 88, baseType: !160, size: 64, offset: 8704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !126, file: !127, line: 89, baseType: !160, size: 64, offset: 8768)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !126, file: !127, line: 90, baseType: !406, size: 64, offset: 8832)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !126, file: !127, line: 91, baseType: !408, size: 64, offset: 8896)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !17, line: 637, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!6, !125, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !126, file: !127, line: 92, baseType: !414, size: 64, offset: 8960)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !17, line: 641, baseType: !122)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !118, file: !22, line: 152, baseType: !20, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !104, file: !22, line: 155, baseType: !8, size: 32, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !104, file: !22, line: 156, baseType: !137, size: 16, offset: 416)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !104, file: !22, line: 157, baseType: !29, size: 8, offset: 432)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !21, file: !22, line: 375, baseType: !420, size: 576)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !22, line: 122, size: 576, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !420, file: !22, line: 123, baseType: !20, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !420, file: !22, line: 123, baseType: !29, size: 8, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !420, file: !22, line: 123, baseType: !29, size: 8, offset: 72)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !420, file: !22, line: 123, baseType: !34, size: 16, offset: 80)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !22, line: 123, baseType: !29, size: 8, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !420, file: !22, line: 123, baseType: !29, size: 8, offset: 104)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !420, file: !22, line: 124, baseType: !34, size: 16, offset: 112)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !420, file: !22, line: 125, baseType: !14, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !420, file: !22, line: 126, baseType: !51, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !420, file: !22, line: 127, baseType: !406, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !420, file: !22, line: 128, baseType: !20, size: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !420, file: !22, line: 129, baseType: !20, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !420, file: !22, line: 130, baseType: !15, size: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !420, file: !22, line: 131, baseType: !29, size: 8, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !21, file: !22, line: 376, baseType: !437, size: 448)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !22, line: 134, size: 448, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !450}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !437, file: !22, line: 135, baseType: !20, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !437, file: !22, line: 135, baseType: !29, size: 8, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !437, file: !22, line: 135, baseType: !29, size: 8, offset: 72)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !437, file: !22, line: 135, baseType: !34, size: 16, offset: 80)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !437, file: !22, line: 135, baseType: !29, size: 8, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !437, file: !22, line: 135, baseType: !29, size: 8, offset: 104)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !437, file: !22, line: 136, baseType: !15, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !437, file: !22, line: 137, baseType: !20, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !22, line: 138, baseType: !20, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !437, file: !22, line: 139, baseType: !449, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !51)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !437, file: !22, line: 140, baseType: !8, size: 32, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !21, file: !22, line: 377, baseType: !452, size: 320)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !22, line: 184, size: 320, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !463}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !22, line: 185, baseType: !20, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !22, line: 185, baseType: !29, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !22, line: 185, baseType: !29, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !22, line: 185, baseType: !34, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !22, line: 185, baseType: !29, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !452, file: !22, line: 185, baseType: !460, size: 128, offset: 128)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 2)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !452, file: !22, line: 185, baseType: !20, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !21, file: !22, line: 378, baseType: !465, size: 384)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !22, line: 187, size: 384, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !465, file: !22, line: 188, baseType: !20, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !465, file: !22, line: 188, baseType: !29, size: 8, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !465, file: !22, line: 188, baseType: !29, size: 8, offset: 72)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !465, file: !22, line: 188, baseType: !34, size: 16, offset: 80)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !22, line: 188, baseType: !29, size: 8, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !465, file: !22, line: 189, baseType: !460, size: 128, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !465, file: !22, line: 189, baseType: !20, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !465, file: !22, line: 189, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !17, line: 480, size: 576, elements: !477)
!477 = !{!478, !479, !480, !481, !489, !504, !536, !537, !538, !539, !540, !541}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !476, file: !17, line: 481, baseType: !15, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !476, file: !17, line: 482, baseType: !475, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !17, line: 483, baseType: !475, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !476, file: !17, line: 484, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !17, line: 497, size: 256, elements: !484)
!484 = !{!485, !486, !487, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !483, file: !17, line: 498, baseType: !482, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !483, file: !17, line: 499, baseType: !482, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !483, file: !17, line: 500, baseType: !475, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !483, file: !17, line: 501, baseType: !8, size: 32, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !476, file: !17, line: 485, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !17, line: 466, size: 320, elements: !492)
!492 = !{!493, !498, !499, !500, !501, !502, !503}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !491, file: !17, line: 467, baseType: !494, size: 128)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !17, line: 459, size: 128, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !494, file: !17, line: 460, baseType: !29, size: 8)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !494, file: !17, line: 461, baseType: !51, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !491, file: !17, line: 468, baseType: !494, size: 128, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !491, file: !17, line: 469, baseType: !34, size: 16, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !491, file: !17, line: 470, baseType: !29, size: 8, offset: 272)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !491, file: !17, line: 471, baseType: !29, size: 8, offset: 280)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !491, file: !17, line: 472, baseType: !29, size: 8, offset: 288)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !491, file: !17, line: 473, baseType: !29, size: 8, offset: 296)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !476, file: !17, line: 486, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !17, line: 448, size: 192, elements: !507)
!507 = !{!508, !531, !532, !533, !534, !535}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !506, file: !17, line: 449, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !17, line: 438, size: 64, elements: !510)
!510 = !{!511, !512, !525}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !509, file: !17, line: 439, baseType: !15, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !509, file: !17, line: 440, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !17, line: 419, size: 256, elements: !515)
!515 = !{!516, !521, !522, !523, !524}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !17, line: 420, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!8, !13, !8, !14}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !514, file: !17, line: 421, baseType: !14, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !514, file: !17, line: 422, baseType: !15, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !514, file: !17, line: 423, baseType: !29, size: 8, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !514, file: !17, line: 424, baseType: !29, size: 8, offset: 200)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !509, file: !17, line: 441, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !17, line: 429, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !527, file: !17, line: 430, baseType: !15, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !17, line: 431, baseType: !526, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !506, file: !17, line: 450, baseType: !490, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !17, line: 451, baseType: !29, size: 8, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !506, file: !17, line: 452, baseType: !29, size: 8, offset: 136)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !506, file: !17, line: 453, baseType: !29, size: 8, offset: 144)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !506, file: !17, line: 454, baseType: !29, size: 8, offset: 152)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !476, file: !17, line: 487, baseType: !51, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !476, file: !17, line: 488, baseType: !8, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !476, file: !17, line: 489, baseType: !34, size: 16, offset: 480)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !476, file: !17, line: 490, baseType: !34, size: 16, offset: 496)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !476, file: !17, line: 491, baseType: !29, size: 8, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !476, file: !17, line: 492, baseType: !29, size: 8, offset: 520)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !21, file: !22, line: 379, baseType: !543, size: 384)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !22, line: 192, size: 384, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !543, file: !22, line: 193, baseType: !20, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !543, file: !22, line: 193, baseType: !29, size: 8, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !543, file: !22, line: 193, baseType: !29, size: 8, offset: 72)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !543, file: !22, line: 193, baseType: !34, size: 16, offset: 80)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !22, line: 193, baseType: !29, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !543, file: !22, line: 193, baseType: !460, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !22, line: 193, baseType: !20, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !543, file: !22, line: 193, baseType: !8, size: 32, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !543, file: !22, line: 194, baseType: !8, size: 32, offset: 352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !21, file: !22, line: 380, baseType: !555, size: 384)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !22, line: 197, size: 384, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !555, file: !22, line: 198, baseType: !20, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !555, file: !22, line: 198, baseType: !29, size: 8, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !22, line: 198, baseType: !29, size: 8, offset: 72)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !555, file: !22, line: 198, baseType: !34, size: 16, offset: 80)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !22, line: 198, baseType: !29, size: 8, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !555, file: !22, line: 200, baseType: !29, size: 8, offset: 104)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !555, file: !22, line: 201, baseType: !29, size: 8, offset: 112)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !555, file: !22, line: 202, baseType: !460, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !555, file: !22, line: 202, baseType: !20, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !555, file: !22, line: 202, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !51)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !21, file: !22, line: 381, baseType: !569, size: 320)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !22, line: 205, size: 320, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !22, line: 206, baseType: !20, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !22, line: 206, baseType: !29, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !22, line: 206, baseType: !29, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !22, line: 206, baseType: !34, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !22, line: 206, baseType: !29, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !22, line: 206, baseType: !460, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !22, line: 206, baseType: !20, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !21, file: !22, line: 382, baseType: !579, size: 384)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !22, line: 233, size: 384, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !22, line: 234, baseType: !20, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !22, line: 234, baseType: !29, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !22, line: 234, baseType: !29, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !22, line: 234, baseType: !34, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !22, line: 234, baseType: !29, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !579, file: !22, line: 234, baseType: !29, size: 8, offset: 104)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !579, file: !22, line: 234, baseType: !29, size: 8, offset: 112)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !579, file: !22, line: 234, baseType: !29, size: 8, offset: 120)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !579, file: !22, line: 234, baseType: !15, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !579, file: !22, line: 234, baseType: !8, size: 32, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !579, file: !22, line: 234, baseType: !8, size: 32, offset: 224)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !579, file: !22, line: 234, baseType: !8, size: 32, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !579, file: !22, line: 234, baseType: !29, size: 8, offset: 288)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !579, file: !22, line: 234, baseType: !29, size: 8, offset: 296)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !579, file: !22, line: 234, baseType: !20, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !21, file: !22, line: 383, baseType: !597, size: 576)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !22, line: 237, size: 576, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !22, line: 238, baseType: !20, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !22, line: 238, baseType: !29, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !22, line: 238, baseType: !29, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !22, line: 238, baseType: !34, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !22, line: 238, baseType: !29, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !597, file: !22, line: 238, baseType: !29, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !597, file: !22, line: 238, baseType: !29, size: 8, offset: 112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !597, file: !22, line: 238, baseType: !29, size: 8, offset: 120)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !22, line: 238, baseType: !15, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !597, file: !22, line: 238, baseType: !8, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !597, file: !22, line: 238, baseType: !8, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !22, line: 238, baseType: !8, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !597, file: !22, line: 238, baseType: !29, size: 8, offset: 288)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !597, file: !22, line: 238, baseType: !29, size: 8, offset: 296)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !597, file: !22, line: 238, baseType: !34, size: 16, offset: 304)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !597, file: !22, line: 239, baseType: !20, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !597, file: !22, line: 240, baseType: !75, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !597, file: !22, line: 241, baseType: !34, size: 16, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !597, file: !22, line: 242, baseType: !75, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !21, file: !22, line: 384, baseType: !619, size: 384)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !22, line: 262, size: 384, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !22, line: 263, baseType: !20, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !22, line: 263, baseType: !29, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !22, line: 263, baseType: !29, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !22, line: 263, baseType: !34, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !22, line: 263, baseType: !29, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !619, file: !22, line: 263, baseType: !29, size: 8, offset: 104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !619, file: !22, line: 263, baseType: !29, size: 8, offset: 112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !619, file: !22, line: 263, baseType: !29, size: 8, offset: 120)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !22, line: 263, baseType: !15, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !619, file: !22, line: 263, baseType: !8, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !619, file: !22, line: 263, baseType: !8, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !22, line: 263, baseType: !8, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !619, file: !22, line: 263, baseType: !29, size: 8, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !619, file: !22, line: 263, baseType: !29, size: 8, offset: 296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !619, file: !22, line: 263, baseType: !29, size: 8, offset: 304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !619, file: !22, line: 264, baseType: !20, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !21, file: !22, line: 385, baseType: !638, size: 448)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !22, line: 245, size: 448, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !22, line: 246, baseType: !20, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !22, line: 246, baseType: !29, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !22, line: 246, baseType: !29, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !22, line: 246, baseType: !34, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !22, line: 246, baseType: !29, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !22, line: 246, baseType: !29, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !22, line: 246, baseType: !29, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !22, line: 246, baseType: !29, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !22, line: 246, baseType: !15, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !22, line: 246, baseType: !8, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !22, line: 246, baseType: !8, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !22, line: 246, baseType: !8, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !22, line: 246, baseType: !29, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !22, line: 246, baseType: !29, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !638, file: !22, line: 246, baseType: !20, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !638, file: !22, line: 247, baseType: !20, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !21, file: !22, line: 386, baseType: !657, size: 448)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !22, line: 250, size: 448, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !657, file: !22, line: 251, baseType: !20, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !657, file: !22, line: 251, baseType: !29, size: 8, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !22, line: 251, baseType: !29, size: 8, offset: 72)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !657, file: !22, line: 251, baseType: !34, size: 16, offset: 80)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !22, line: 251, baseType: !29, size: 8, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !657, file: !22, line: 251, baseType: !29, size: 8, offset: 104)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !657, file: !22, line: 251, baseType: !29, size: 8, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !657, file: !22, line: 251, baseType: !29, size: 8, offset: 120)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !22, line: 251, baseType: !15, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !657, file: !22, line: 251, baseType: !8, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !657, file: !22, line: 251, baseType: !8, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !657, file: !22, line: 251, baseType: !8, size: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !657, file: !22, line: 251, baseType: !29, size: 8, offset: 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !657, file: !22, line: 251, baseType: !29, size: 8, offset: 296)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !657, file: !22, line: 256, baseType: !20, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !657, file: !22, line: 257, baseType: !20, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !21, file: !22, line: 387, baseType: !676, size: 512)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !22, line: 273, size: 512, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !676, file: !22, line: 274, baseType: !20, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !22, line: 274, baseType: !29, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !22, line: 274, baseType: !29, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !22, line: 274, baseType: !34, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !22, line: 274, baseType: !29, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !676, file: !22, line: 274, baseType: !15, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !676, file: !22, line: 275, baseType: !8, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !676, file: !22, line: 276, baseType: !354, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !676, file: !22, line: 277, baseType: !14, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !22, line: 278, baseType: !460, size: 128, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !21, file: !22, line: 388, baseType: !689, size: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !22, line: 281, size: 512, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !704, !705, !706, !712, !713}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !22, line: 282, baseType: !20, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !22, line: 282, baseType: !29, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !22, line: 282, baseType: !29, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !22, line: 282, baseType: !34, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !22, line: 282, baseType: !29, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !689, file: !22, line: 282, baseType: !29, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !689, file: !22, line: 283, baseType: !29, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !689, file: !22, line: 284, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!6, !8, !449, !8, !703, !14, !14}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !22, line: 285, baseType: !15, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !689, file: !22, line: 286, baseType: !14, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !689, file: !22, line: 287, baseType: !707, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!6, !13, !8, !14, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !689, file: !22, line: 288, baseType: !20, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !22, line: 289, baseType: !20, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !21, file: !22, line: 389, baseType: !715, size: 512)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !22, line: 307, size: 512, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !22, line: 308, baseType: !20, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !22, line: 308, baseType: !29, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !22, line: 308, baseType: !29, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !22, line: 308, baseType: !34, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !22, line: 308, baseType: !29, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !715, file: !22, line: 308, baseType: !29, size: 8, offset: 104)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !715, file: !22, line: 309, baseType: !29, size: 8, offset: 112)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !715, file: !22, line: 310, baseType: !29, size: 8, offset: 120)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !715, file: !22, line: 311, baseType: !14, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !22, line: 312, baseType: !15, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !715, file: !22, line: 313, baseType: !90, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !715, file: !22, line: 314, baseType: !75, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !715, file: !22, line: 315, baseType: !75, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !715, file: !22, line: 316, baseType: !8, size: 32, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !21, file: !22, line: 390, baseType: !732, size: 448)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !22, line: 340, size: 448, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !732, file: !22, line: 341, baseType: !20, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !22, line: 341, baseType: !29, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !22, line: 341, baseType: !29, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !732, file: !22, line: 341, baseType: !34, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !22, line: 341, baseType: !29, size: 8, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !732, file: !22, line: 341, baseType: !15, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !732, file: !22, line: 342, baseType: !15, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !732, file: !22, line: 343, baseType: !14, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !732, file: !22, line: 344, baseType: !75, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !732, file: !22, line: 345, baseType: !8, size: 32, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !21, file: !22, line: 391, baseType: !745, size: 256)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !22, line: 350, size: 256, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !757}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !745, file: !22, line: 351, baseType: !20, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !22, line: 351, baseType: !29, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !22, line: 351, baseType: !29, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !745, file: !22, line: 351, baseType: !34, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !22, line: 351, baseType: !29, size: 8, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !745, file: !22, line: 351, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !13, !14}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !745, file: !22, line: 352, baseType: !14, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !21, file: !22, line: 392, baseType: !759, size: 192)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !22, line: 357, size: 192, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !759, file: !22, line: 358, baseType: !20, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !759, file: !22, line: 358, baseType: !29, size: 8, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !759, file: !22, line: 358, baseType: !29, size: 8, offset: 72)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !759, file: !22, line: 358, baseType: !34, size: 16, offset: 80)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !22, line: 358, baseType: !29, size: 8, offset: 96)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !759, file: !22, line: 358, baseType: !20, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !21, file: !22, line: 399, baseType: !16, size: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !16, file: !17, line: 135, baseType: !29, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !16, file: !17, line: 136, baseType: !29, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !16, file: !17, line: 137, baseType: !34, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !16, file: !17, line: 138, baseType: !772, size: 32, offset: 96)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !773, line: 327, size: 32, elements: !774)
!773 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !772, file: !773, line: 328, baseType: !8, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !772, file: !773, line: 329, baseType: !219, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !16, file: !17, line: 139, baseType: !15, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !16, file: !17, line: 140, baseType: !15, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !16, file: !17, line: 141, baseType: !15, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !16, file: !17, line: 142, baseType: !137, size: 16, offset: 320)
!781 = !{!0}
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 72, elements: !373)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!784 = !{i32 7, !"Dwarf Version", i32 4}
!785 = !{i32 2, !"Debug Info Version", i32 3}
!786 = !{i32 1, !"wchar_size", i32 2}
!787 = !{i32 1, !"Code Model", i32 2}
!788 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!789 = distinct !DISubprogram(name: "acpi_ex_resolve_node_to_value", scope: !3, file: !3, line: 45, type: !790, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!790 = !DISubroutineType(types: !791)
!791 = !{!6, !792, !125}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!793 = !DILocalVariable(name: "object_ptr", arg: 1, scope: !789, file: !3, line: 45, type: !792)
!794 = !DILocation(line: 45, column: 60, scope: !789)
!795 = !DILocalVariable(name: "walk_state", arg: 2, scope: !789, file: !3, line: 46, type: !125)
!796 = !DILocation(line: 46, column: 34, scope: !789)
!797 = !DILocalVariable(name: "status", scope: !789, file: !3, line: 48, type: !6)
!798 = !DILocation(line: 48, column: 14, scope: !789)
!799 = !DILocalVariable(name: "source_desc", scope: !789, file: !3, line: 49, type: !20)
!800 = !DILocation(line: 49, column: 29, scope: !789)
!801 = !DILocalVariable(name: "obj_desc", scope: !789, file: !3, line: 50, type: !20)
!802 = !DILocation(line: 50, column: 29, scope: !789)
!803 = !DILocalVariable(name: "node", scope: !789, file: !3, line: 51, type: !15)
!804 = !DILocation(line: 51, column: 30, scope: !789)
!805 = !DILocalVariable(name: "entry_type", scope: !789, file: !3, line: 52, type: !806)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !7, line: 635, baseType: !8)
!807 = !DILocation(line: 52, column: 19, scope: !789)
!808 = !DILocation(line: 60, column: 10, scope: !789)
!809 = !DILocation(line: 60, column: 9, scope: !789)
!810 = !DILocation(line: 60, column: 7, scope: !789)
!811 = !DILocation(line: 61, column: 44, scope: !789)
!812 = !DILocation(line: 61, column: 16, scope: !789)
!813 = !DILocation(line: 61, column: 14, scope: !789)
!814 = !DILocation(line: 62, column: 45, scope: !789)
!815 = !DILocation(line: 62, column: 32, scope: !789)
!816 = !DILocation(line: 62, column: 15, scope: !789)
!817 = !DILocation(line: 62, column: 13, scope: !789)
!818 = !DILocation(line: 68, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !789, file: !3, line: 68, column: 6)
!820 = !DILocation(line: 68, column: 18, scope: !819)
!821 = !DILocation(line: 68, column: 44, scope: !819)
!822 = !DILocation(line: 69, column: 7, scope: !819)
!823 = !DILocation(line: 69, column: 18, scope: !819)
!824 = !DILocation(line: 68, column: 6, scope: !789)
!825 = !DILocation(line: 73, column: 10, scope: !826)
!826 = distinct !DILexicalBlock(scope: !819, file: !3, line: 69, column: 52)
!827 = !DILocation(line: 73, column: 8, scope: !826)
!828 = !DILocation(line: 74, column: 45, scope: !826)
!829 = !DILocation(line: 74, column: 17, scope: !826)
!830 = !DILocation(line: 74, column: 15, scope: !826)
!831 = !DILocation(line: 75, column: 46, scope: !826)
!832 = !DILocation(line: 75, column: 33, scope: !826)
!833 = !DILocation(line: 75, column: 16, scope: !826)
!834 = !DILocation(line: 75, column: 14, scope: !826)
!835 = !DILocation(line: 76, column: 17, scope: !826)
!836 = !DILocation(line: 76, column: 4, scope: !826)
!837 = !DILocation(line: 76, column: 15, scope: !826)
!838 = !DILocation(line: 77, column: 2, scope: !826)
!839 = !DILocation(line: 85, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !789, file: !3, line: 85, column: 6)
!841 = !DILocation(line: 85, column: 18, scope: !840)
!842 = !DILocation(line: 85, column: 39, scope: !840)
!843 = !DILocation(line: 86, column: 7, scope: !840)
!844 = !DILocation(line: 86, column: 18, scope: !840)
!845 = !DILocation(line: 86, column: 40, scope: !840)
!846 = !DILocation(line: 87, column: 7, scope: !840)
!847 = !DILocation(line: 87, column: 18, scope: !840)
!848 = !DILocation(line: 87, column: 39, scope: !840)
!849 = !DILocation(line: 88, column: 7, scope: !840)
!850 = !DILocation(line: 88, column: 13, scope: !840)
!851 = !DILocation(line: 88, column: 19, scope: !840)
!852 = !DILocation(line: 85, column: 6, scope: !789)
!853 = !DILocation(line: 89, column: 3, scope: !854)
!854 = distinct !DILexicalBlock(scope: !840, file: !3, line: 88, column: 63)
!855 = !DILocation(line: 92, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !789, file: !3, line: 92, column: 6)
!857 = !DILocation(line: 92, column: 6, scope: !789)
!858 = !DILocation(line: 93, column: 3, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !3, line: 92, column: 20)
!860 = !DILocation(line: 95, column: 3, scope: !859)
!861 = !DILocation(line: 102, column: 10, scope: !789)
!862 = !DILocation(line: 102, column: 2, scope: !789)
!863 = !DILocation(line: 105, column: 7, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 105, column: 7)
!865 = distinct !DILexicalBlock(scope: !789, file: !3, line: 102, column: 22)
!866 = !DILocation(line: 105, column: 20, scope: !864)
!867 = !DILocation(line: 105, column: 27, scope: !864)
!868 = !DILocation(line: 105, column: 32, scope: !864)
!869 = !DILocation(line: 105, column: 7, scope: !865)
!870 = !DILocation(line: 106, column: 4, scope: !871)
!871 = distinct !DILexicalBlock(scope: !864, file: !3, line: 105, column: 54)
!872 = !DILocation(line: 108, column: 4, scope: !871)
!873 = !DILocation(line: 111, column: 42, scope: !865)
!874 = !DILocation(line: 111, column: 12, scope: !865)
!875 = !DILocation(line: 111, column: 10, scope: !865)
!876 = !DILocation(line: 112, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !865, file: !3, line: 112, column: 7)
!878 = !DILocation(line: 112, column: 7, scope: !865)
!879 = !DILocation(line: 116, column: 15, scope: !880)
!880 = distinct !DILexicalBlock(scope: !877, file: !3, line: 112, column: 29)
!881 = !DILocation(line: 116, column: 13, scope: !880)
!882 = !DILocation(line: 117, column: 26, scope: !880)
!883 = !DILocation(line: 117, column: 4, scope: !880)
!884 = !DILocation(line: 118, column: 3, scope: !880)
!885 = !DILocation(line: 119, column: 3, scope: !865)
!886 = !DILocation(line: 123, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !865, file: !3, line: 123, column: 7)
!888 = !DILocation(line: 123, column: 20, scope: !887)
!889 = !DILocation(line: 123, column: 27, scope: !887)
!890 = !DILocation(line: 123, column: 32, scope: !887)
!891 = !DILocation(line: 123, column: 7, scope: !865)
!892 = !DILocation(line: 124, column: 4, scope: !893)
!893 = distinct !DILexicalBlock(scope: !887, file: !3, line: 123, column: 53)
!894 = !DILocation(line: 126, column: 4, scope: !893)
!895 = !DILocation(line: 129, column: 41, scope: !865)
!896 = !DILocation(line: 129, column: 12, scope: !865)
!897 = !DILocation(line: 129, column: 10, scope: !865)
!898 = !DILocation(line: 130, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !865, file: !3, line: 130, column: 7)
!900 = !DILocation(line: 130, column: 7, scope: !865)
!901 = !DILocation(line: 134, column: 15, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !3, line: 130, column: 29)
!903 = !DILocation(line: 134, column: 13, scope: !902)
!904 = !DILocation(line: 135, column: 26, scope: !902)
!905 = !DILocation(line: 135, column: 4, scope: !902)
!906 = !DILocation(line: 136, column: 3, scope: !902)
!907 = !DILocation(line: 137, column: 3, scope: !865)
!908 = !DILocation(line: 141, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !865, file: !3, line: 141, column: 7)
!910 = !DILocation(line: 141, column: 20, scope: !909)
!911 = !DILocation(line: 141, column: 27, scope: !909)
!912 = !DILocation(line: 141, column: 32, scope: !909)
!913 = !DILocation(line: 141, column: 7, scope: !865)
!914 = !DILocation(line: 142, column: 4, scope: !915)
!915 = distinct !DILexicalBlock(scope: !909, file: !3, line: 141, column: 53)
!916 = !DILocation(line: 144, column: 4, scope: !915)
!917 = !DILocation(line: 149, column: 14, scope: !865)
!918 = !DILocation(line: 149, column: 12, scope: !865)
!919 = !DILocation(line: 150, column: 25, scope: !865)
!920 = !DILocation(line: 150, column: 3, scope: !865)
!921 = !DILocation(line: 151, column: 3, scope: !865)
!922 = !DILocation(line: 155, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !865, file: !3, line: 155, column: 7)
!924 = !DILocation(line: 155, column: 20, scope: !923)
!925 = !DILocation(line: 155, column: 27, scope: !923)
!926 = !DILocation(line: 155, column: 32, scope: !923)
!927 = !DILocation(line: 155, column: 7, scope: !865)
!928 = !DILocation(line: 156, column: 4, scope: !929)
!929 = distinct !DILexicalBlock(scope: !923, file: !3, line: 155, column: 54)
!930 = !DILocation(line: 158, column: 4, scope: !929)
!931 = !DILocation(line: 163, column: 14, scope: !865)
!932 = !DILocation(line: 163, column: 12, scope: !865)
!933 = !DILocation(line: 164, column: 25, scope: !865)
!934 = !DILocation(line: 164, column: 3, scope: !865)
!935 = !DILocation(line: 165, column: 3, scope: !865)
!936 = !DILocation(line: 177, column: 36, scope: !865)
!937 = !DILocation(line: 177, column: 48, scope: !865)
!938 = !DILocation(line: 177, column: 7, scope: !865)
!939 = !DILocation(line: 176, column: 10, scope: !865)
!940 = !DILocation(line: 179, column: 3, scope: !865)
!941 = !DILocation(line: 191, column: 14, scope: !865)
!942 = !DILocation(line: 191, column: 12, scope: !865)
!943 = !DILocation(line: 192, column: 25, scope: !865)
!944 = !DILocation(line: 192, column: 3, scope: !865)
!945 = !DILocation(line: 193, column: 3, scope: !865)
!946 = !DILocation(line: 199, column: 3, scope: !865)
!947 = !DILocation(line: 202, column: 3, scope: !865)
!948 = !DILocation(line: 206, column: 11, scope: !865)
!949 = !DILocation(line: 206, column: 24, scope: !865)
!950 = !DILocation(line: 206, column: 34, scope: !865)
!951 = !DILocation(line: 206, column: 3, scope: !865)
!952 = !DILocation(line: 213, column: 15, scope: !953)
!953 = distinct !DILexicalBlock(scope: !865, file: !3, line: 206, column: 41)
!954 = !DILocation(line: 213, column: 13, scope: !953)
!955 = !DILocation(line: 214, column: 26, scope: !953)
!956 = !DILocation(line: 214, column: 4, scope: !953)
!957 = !DILocation(line: 215, column: 4, scope: !953)
!958 = !DILocation(line: 221, column: 4, scope: !953)
!959 = !DILocation(line: 225, column: 4, scope: !953)
!960 = !DILocation(line: 227, column: 3, scope: !865)
!961 = !DILocation(line: 233, column: 3, scope: !865)
!962 = !DILocation(line: 237, column: 3, scope: !865)
!963 = !DILocation(line: 243, column: 24, scope: !789)
!964 = !DILocation(line: 243, column: 16, scope: !789)
!965 = !DILocation(line: 243, column: 3, scope: !789)
!966 = !DILocation(line: 243, column: 14, scope: !789)
!967 = !DILocation(line: 244, column: 2, scope: !789)
!968 = !DILocation(line: 245, column: 1, scope: !789)
