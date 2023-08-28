; ModuleID = '../bcout/drivers/acpi/acpica/excreate.llvm.bc'
source_filename = "drivers/acpi/acpica/excreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
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
%struct.acpi_object_event = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8* }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }
%struct.acpi_object_extra = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i8*, i8*, i32 }
%struct.acpi_scope_state = type { i8*, i8, i8, i16, i16, %struct.acpi_namespace_node* }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_processor = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, [2 x %union.acpi_operand_object*], %union.acpi_operand_object*, i64 }
%struct.acpi_object_power_resource = type { %union.acpi_operand_object*, i8, i8, i16, i8, [2 x %union.acpi_operand_object*], %union.acpi_operand_object*, i32, i32 }
%struct.acpi_object_method = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*, %union.anon, i32, i16, i8 }
%union.anon = type { {}* }

@_acpi_module_name = internal constant [9 x i8] c"excreate\00", align 1, !dbg !0
@.str = private unnamed_addr constant [42 x i8] c"Invalid/unknown Address Space ID: 0x%2.2X\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_create_alias(%struct.acpi_walk_state* %walk_state) #0 !dbg !789 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %target_node = alloca %struct.acpi_namespace_node*, align 8
  %alias_node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !790, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %target_node, metadata !792, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %alias_node, metadata !794, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.declare(metadata i32* %status, metadata !796, metadata !DIExpression()), !dbg !797
  store i32 0, i32* %status, align 4, !dbg !797
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !798
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !799
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !798
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !798
  %2 = bitcast %union.acpi_operand_object* %1 to %struct.acpi_namespace_node*, !dbg !800
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %alias_node, align 8, !dbg !801
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !802
  %operands1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 28, !dbg !803
  %arrayidx2 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands1, i64 0, i64 1, !dbg !802
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx2, align 8, !dbg !802
  %5 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_namespace_node*, !dbg !804
  store %struct.acpi_namespace_node* %5, %struct.acpi_namespace_node** %target_node, align 8, !dbg !805
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %target_node, align 8, !dbg !806
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %6, i32 0, i32 2, !dbg !808
  %7 = load i8, i8* %type, align 1, !dbg !808
  %conv = zext i8 %7 to i32, !dbg !806
  %cmp = icmp eq i32 %conv, 21, !dbg !809
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !810

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %target_node, align 8, !dbg !811
  %type4 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %8, i32 0, i32 2, !dbg !812
  %9 = load i8, i8* %type4, align 1, !dbg !812
  %conv5 = zext i8 %9 to i32, !dbg !811
  %cmp6 = icmp eq i32 %conv5, 22, !dbg !813
  br i1 %cmp6, label %if.then, label %if.end, !dbg !814

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %target_node, align 8, !dbg !815
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 0, !dbg !815
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !815
  %12 = bitcast %union.acpi_operand_object* %11 to i8*, !dbg !815
  %13 = bitcast i8* %12 to %struct.acpi_namespace_node*, !dbg !815
  store %struct.acpi_namespace_node* %13, %struct.acpi_namespace_node** %target_node, align 8, !dbg !817
  br label %if.end, !dbg !818

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %target_node, align 8, !dbg !819
  %tobool = icmp ne %struct.acpi_namespace_node* %14, null, !dbg !819
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !821

if.then8:                                         ; preds = %if.end
  store i32 9, i32* %retval, align 4, !dbg !822
  br label %return, !dbg !822

if.end9:                                          ; preds = %if.end
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %target_node, align 8, !dbg !824
  %type10 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %15, i32 0, i32 2, !dbg !825
  %16 = load i8, i8* %type10, align 1, !dbg !825
  %conv11 = zext i8 %16 to i32, !dbg !824
  switch i32 %conv11, label %sw.default [
    i32 8, label %sw.bb
  ], !dbg !826

sw.bb:                                            ; preds = %if.end9
  %17 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %alias_node, align 8, !dbg !827
  %type12 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %17, i32 0, i32 2, !dbg !829
  store i8 22, i8* %type12, align 1, !dbg !830
  br label %sw.epilog, !dbg !831

sw.default:                                       ; preds = %if.end9
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %alias_node, align 8, !dbg !832
  %type13 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %18, i32 0, i32 2, !dbg !833
  store i8 21, i8* %type13, align 1, !dbg !834
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %target_node, align 8, !dbg !835
  %20 = bitcast %struct.acpi_namespace_node* %19 to i8*, !dbg !835
  %21 = bitcast i8* %20 to %union.acpi_operand_object*, !dbg !835
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %alias_node, align 8, !dbg !836
  %object14 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %22, i32 0, i32 0, !dbg !837
  store %union.acpi_operand_object* %21, %union.acpi_operand_object** %object14, align 8, !dbg !838
  br label %sw.epilog, !dbg !839

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %target_node, align 8, !dbg !840
  %24 = bitcast %struct.acpi_namespace_node* %23 to i8*, !dbg !840
  %25 = bitcast i8* %24 to %union.acpi_operand_object*, !dbg !840
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %alias_node, align 8, !dbg !841
  %object15 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %26, i32 0, i32 0, !dbg !842
  store %union.acpi_operand_object* %25, %union.acpi_operand_object** %object15, align 8, !dbg !843
  %27 = load i32, i32* %status, align 4, !dbg !844
  store i32 %27, i32* %retval, align 4, !dbg !844
  br label %return, !dbg !844

return:                                           ; preds = %sw.epilog, %if.then8
  %28 = load i32, i32* %retval, align 4, !dbg !845
  ret i32 %28, !dbg !845
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_create_event(%struct.acpi_walk_state* %walk_state) #0 !dbg !846 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !847, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.declare(metadata i32* %status, metadata !849, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !851, metadata !DIExpression()), !dbg !852
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 111, i32 128, i32 7) #3, !dbg !853
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !854
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !855
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !855
  br i1 %tobool, label %if.end, label %if.then, !dbg !857

if.then:                                          ; preds = %entry
  store i32 4, i32* %status, align 4, !dbg !858
  br label %cleanup, !dbg !860

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !861
  %event = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_event*, !dbg !862
  %os_semaphore = getelementptr inbounds %struct.acpi_object_event, %struct.acpi_object_event* %event, i32 0, i32 5, !dbg !863
  %call1 = call i32 @acpi_os_create_semaphore(i32 -1, i32 0, i8** %os_semaphore) #3, !dbg !864
  store i32 %call1, i32* %status, align 4, !dbg !865
  %2 = load i32, i32* %status, align 4, !dbg !866
  %tobool2 = icmp ne i32 %2, 0, !dbg !866
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !868

if.then3:                                         ; preds = %if.end
  br label %cleanup, !dbg !869

if.end4:                                          ; preds = %if.end
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !871
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 28, !dbg !872
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !871
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !871
  %5 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_namespace_node*, !dbg !873
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !874
  %call5 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %5, %union.acpi_operand_object* %6, i32 7) #3, !dbg !875
  store i32 %call5, i32* %status, align 4, !dbg !876
  br label %cleanup, !dbg !877

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !878), !dbg !879
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !880
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %7) #3, !dbg !881
  %8 = load i32, i32* %status, align 4, !dbg !882
  ret i32 %8, !dbg !882
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_create_semaphore(i32, i32, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_create_mutex(%struct.acpi_walk_state* %walk_state) #0 !dbg !883 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !884, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.declare(metadata i32* %status, metadata !886, metadata !DIExpression()), !dbg !887
  store i32 0, i32* %status, align 4, !dbg !887
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !888, metadata !DIExpression()), !dbg !889
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 165, i32 128, i32 9) #3, !dbg !890
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !891
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !892
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !892
  br i1 %tobool, label %if.end, label %if.then, !dbg !894

if.then:                                          ; preds = %entry
  store i32 4, i32* %status, align 4, !dbg !895
  br label %cleanup, !dbg !897

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !898
  %mutex = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_mutex*, !dbg !898
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 7, !dbg !898
  %call1 = call i32 @acpi_os_create_semaphore(i32 1, i32 1, i8** %os_mutex) #3, !dbg !898
  store i32 %call1, i32* %status, align 4, !dbg !899
  %2 = load i32, i32* %status, align 4, !dbg !900
  %tobool2 = icmp ne i32 %2, 0, !dbg !900
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !902

if.then3:                                         ; preds = %if.end
  br label %cleanup, !dbg !903

if.end4:                                          ; preds = %if.end
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !905
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 28, !dbg !906
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 1, !dbg !905
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !905
  %integer = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_integer*, !dbg !907
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !908
  %5 = load i64, i64* %value, align 8, !dbg !908
  %conv = trunc i64 %5 to i8, !dbg !909
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !910
  %mutex5 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_mutex*, !dbg !911
  %sync_level = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex5, i32 0, i32 5, !dbg !912
  store i8 %conv, i8* %sync_level, align 1, !dbg !913
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !914
  %operands6 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 28, !dbg !915
  %arrayidx7 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands6, i64 0, i64 0, !dbg !914
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx7, align 8, !dbg !914
  %9 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_namespace_node*, !dbg !916
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !917
  %mutex8 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_mutex*, !dbg !918
  %node = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex8, i32 0, i32 12, !dbg !919
  store %struct.acpi_namespace_node* %9, %struct.acpi_namespace_node** %node, align 8, !dbg !920
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !921
  %mutex9 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_mutex*, !dbg !922
  %node10 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex9, i32 0, i32 12, !dbg !923
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node10, align 8, !dbg !923
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !924
  %call11 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %12, %union.acpi_operand_object* %13, i32 9) #3, !dbg !925
  store i32 %call11, i32* %status, align 4, !dbg !926
  br label %cleanup, !dbg !927

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !928), !dbg !929
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !930
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %14) #3, !dbg !931
  %15 = load i32, i32* %status, align 4, !dbg !932
  ret i32 %15, !dbg !932
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_create_region(i8* %aml_start, i32 %aml_length, i8 zeroext %space_id, %struct.acpi_walk_state* %walk_state) #0 !dbg !933 {
entry:
  %retval = alloca i32, align 4
  %aml_start.addr = alloca i8*, align 8
  %aml_length.addr = alloca i32, align 4
  %space_id.addr = alloca i8, align 1
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %region_obj2 = alloca %union.acpi_operand_object*, align 8
  store i8* %aml_start, i8** %aml_start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml_start.addr, metadata !936, metadata !DIExpression()), !dbg !937
  store i32 %aml_length, i32* %aml_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %aml_length.addr, metadata !938, metadata !DIExpression()), !dbg !939
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !940, metadata !DIExpression()), !dbg !941
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.declare(metadata i32* %status, metadata !944, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !946, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !948, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %region_obj2, metadata !950, metadata !DIExpression()), !dbg !951
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !952
  %op = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 40, !dbg !953
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !953
  %common = bitcast %union.acpi_parse_object* %1 to %struct.acpi_parse_obj_common*, !dbg !954
  %node1 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 6, !dbg !955
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node1, align 8, !dbg !955
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %node, align 8, !dbg !956
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !957
  %call = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %3) #3, !dbg !959
  %tobool = icmp ne %union.acpi_operand_object* %call, null, !dbg !959
  br i1 %tobool, label %if.then, label %if.end, !dbg !960

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !961
  br label %return, !dbg !961

if.end:                                           ; preds = %entry
  %4 = load i8, i8* %space_id.addr, align 1, !dbg !963
  %call2 = call zeroext i8 @acpi_is_valid_space_id(i8 zeroext %4) #3, !dbg !965
  %tobool3 = icmp ne i8 %call2, 0, !dbg !965
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !966

if.then4:                                         ; preds = %if.end
  %5 = load i8, i8* %space_id.addr, align 1, !dbg !967
  %conv = zext i8 %5 to i32, !dbg !967
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 246, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %conv) #3, !dbg !967
  br label %if.end5, !dbg !969

if.end5:                                          ; preds = %if.then4, %if.end
  %call6 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 256, i32 128, i32 10) #3, !dbg !970
  store %union.acpi_operand_object* %call6, %union.acpi_operand_object** %obj_desc, align 8, !dbg !971
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !972
  %tobool7 = icmp ne %union.acpi_operand_object* %6, null, !dbg !972
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !974

if.then8:                                         ; preds = %if.end5
  store i32 4, i32* %status, align 4, !dbg !975
  br label %cleanup, !dbg !977

if.end9:                                          ; preds = %if.end5
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !978
  %call10 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %7) #3, !dbg !979
  store %union.acpi_operand_object* %call10, %union.acpi_operand_object** %region_obj2, align 8, !dbg !980
  %8 = load i8*, i8** %aml_start.addr, align 8, !dbg !981
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !982
  %extra = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_extra*, !dbg !983
  %aml_start11 = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra, i32 0, i32 8, !dbg !984
  store i8* %8, i8** %aml_start11, align 8, !dbg !985
  %10 = load i32, i32* %aml_length.addr, align 4, !dbg !986
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !987
  %extra12 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_extra*, !dbg !988
  %aml_length13 = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra12, i32 0, i32 9, !dbg !989
  store i32 %10, i32* %aml_length13, align 8, !dbg !990
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !991
  %extra14 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_extra*, !dbg !992
  %method_REG = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra14, i32 0, i32 5, !dbg !993
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %method_REG, align 8, !dbg !994
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !995
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 46, !dbg !997
  %14 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !997
  %tobool15 = icmp ne %union.acpi_generic_state* %14, null, !dbg !995
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !998

if.then16:                                        ; preds = %if.end9
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !999
  %scope_info17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 46, !dbg !1001
  %16 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info17, align 8, !dbg !1001
  %scope = bitcast %union.acpi_generic_state* %16 to %struct.acpi_scope_state*, !dbg !1002
  %node18 = getelementptr inbounds %struct.acpi_scope_state, %struct.acpi_scope_state* %scope, i32 0, i32 5, !dbg !1003
  %17 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node18, align 8, !dbg !1003
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !1004
  %extra19 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_extra*, !dbg !1005
  %scope_node = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra19, i32 0, i32 6, !dbg !1006
  store %struct.acpi_namespace_node* %17, %struct.acpi_namespace_node** %scope_node, align 8, !dbg !1007
  br label %if.end22, !dbg !1008

if.else:                                          ; preds = %if.end9
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1009
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !1011
  %extra20 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_extra*, !dbg !1012
  %scope_node21 = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra20, i32 0, i32 6, !dbg !1013
  store %struct.acpi_namespace_node* %19, %struct.acpi_namespace_node** %scope_node21, align 8, !dbg !1014
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then16
  %21 = load i8, i8* %space_id.addr, align 1, !dbg !1015
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1016
  %region = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_region*, !dbg !1017
  %space_id23 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !1018
  store i8 %21, i8* %space_id23, align 1, !dbg !1019
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1020
  %region24 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_region*, !dbg !1021
  %address = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region24, i32 0, i32 9, !dbg !1022
  store i64 0, i64* %address, align 8, !dbg !1023
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1024
  %region25 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_region*, !dbg !1025
  %length = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region25, i32 0, i32 10, !dbg !1026
  store i32 0, i32* %length, align 8, !dbg !1027
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1028
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1029
  %region26 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_region*, !dbg !1030
  %node27 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region26, i32 0, i32 6, !dbg !1031
  store %struct.acpi_namespace_node* %25, %struct.acpi_namespace_node** %node27, align 8, !dbg !1032
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1033
  %region28 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_region*, !dbg !1034
  %handler = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region28, i32 0, i32 7, !dbg !1035
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %handler, align 8, !dbg !1036
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1037
  %common29 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_common*, !dbg !1038
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common29, i32 0, i32 4, !dbg !1039
  %29 = load i8, i8* %flags, align 4, !dbg !1040
  %conv30 = zext i8 %29 to i32, !dbg !1040
  %and = and i32 %conv30, -57, !dbg !1040
  %conv31 = trunc i32 %and to i8, !dbg !1040
  store i8 %conv31, i8* %flags, align 4, !dbg !1040
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1041
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1042
  %call32 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %30, %union.acpi_operand_object* %31, i32 10) #3, !dbg !1043
  store i32 %call32, i32* %status, align 4, !dbg !1044
  br label %cleanup, !dbg !1045

cleanup:                                          ; preds = %if.end22, %if.then8
  call void @llvm.dbg.label(metadata !1046), !dbg !1047
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1048
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %32) #3, !dbg !1049
  %33 = load i32, i32* %status, align 4, !dbg !1050
  store i32 %33, i32* %retval, align 4, !dbg !1050
  br label %return, !dbg !1050

return:                                           ; preds = %cleanup, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !1051
  ret i32 %34, !dbg !1051
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_is_valid_space_id(i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_create_processor(%struct.acpi_walk_state* %walk_state) #0 !dbg !1052 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %operand = alloca %union.acpi_operand_object**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1053, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !1055, metadata !DIExpression()), !dbg !1056
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1057
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !1058
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !1057
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !1056
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1059, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1061, metadata !DIExpression()), !dbg !1062
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 324, i32 128, i32 12) #3, !dbg !1063
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1064
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1065
  %tobool = icmp ne %union.acpi_operand_object* %1, null, !dbg !1065
  br i1 %tobool, label %if.end, label %if.then, !dbg !1067

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !1068
  br label %return, !dbg !1068

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1070
  %arrayidx1 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %2, i64 1, !dbg !1070
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx1, align 8, !dbg !1070
  %integer = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_integer*, !dbg !1071
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1072
  %4 = load i64, i64* %value, align 8, !dbg !1072
  %conv = trunc i64 %4 to i8, !dbg !1073
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1074
  %processor = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_processor*, !dbg !1075
  %proc_id = getelementptr inbounds %struct.acpi_object_processor, %struct.acpi_object_processor* %processor, i32 0, i32 5, !dbg !1076
  store i8 %conv, i8* %proc_id, align 1, !dbg !1077
  %6 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1078
  %arrayidx2 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %6, i64 3, !dbg !1078
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx2, align 8, !dbg !1078
  %integer3 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_integer*, !dbg !1079
  %value4 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer3, i32 0, i32 6, !dbg !1080
  %8 = load i64, i64* %value4, align 8, !dbg !1080
  %conv5 = trunc i64 %8 to i8, !dbg !1081
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1082
  %processor6 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_processor*, !dbg !1083
  %length = getelementptr inbounds %struct.acpi_object_processor, %struct.acpi_object_processor* %processor6, i32 0, i32 6, !dbg !1084
  store i8 %conv5, i8* %length, align 2, !dbg !1085
  %10 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1086
  %arrayidx7 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %10, i64 2, !dbg !1086
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx7, align 8, !dbg !1086
  %integer8 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_integer*, !dbg !1087
  %value9 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer8, i32 0, i32 6, !dbg !1088
  %12 = load i64, i64* %value9, align 8, !dbg !1088
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1089
  %processor10 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_processor*, !dbg !1090
  %address = getelementptr inbounds %struct.acpi_object_processor, %struct.acpi_object_processor* %processor10, i32 0, i32 9, !dbg !1091
  store i64 %12, i64* %address, align 8, !dbg !1092
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1093
  %arrayidx11 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %14, i64 0, !dbg !1093
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx11, align 8, !dbg !1093
  %16 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_namespace_node*, !dbg !1094
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1095
  %call12 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %16, %union.acpi_operand_object* %17, i32 12) #3, !dbg !1096
  store i32 %call12, i32* %status, align 4, !dbg !1097
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1098
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %18) #3, !dbg !1099
  %19 = load i32, i32* %status, align 4, !dbg !1100
  store i32 %19, i32* %retval, align 4, !dbg !1100
  br label %return, !dbg !1100

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !1101
  ret i32 %20, !dbg !1101
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_create_power_resource(%struct.acpi_walk_state* %walk_state) #0 !dbg !1102 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %operand = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1103, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !1105, metadata !DIExpression()), !dbg !1106
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1107
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !1108
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !1107
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !1106
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1109, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1111, metadata !DIExpression()), !dbg !1112
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 371, i32 128, i32 11) #3, !dbg !1113
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1114
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1115
  %tobool = icmp ne %union.acpi_operand_object* %1, null, !dbg !1115
  br i1 %tobool, label %if.end, label %if.then, !dbg !1117

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !1118
  br label %return, !dbg !1118

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1120
  %arrayidx1 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %2, i64 1, !dbg !1120
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx1, align 8, !dbg !1120
  %integer = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_integer*, !dbg !1121
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1122
  %4 = load i64, i64* %value, align 8, !dbg !1122
  %conv = trunc i64 %4 to i8, !dbg !1123
  %conv2 = zext i8 %conv to i32, !dbg !1123
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1124
  %power_resource = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_power_resource*, !dbg !1125
  %system_level = getelementptr inbounds %struct.acpi_object_power_resource, %struct.acpi_object_power_resource* %power_resource, i32 0, i32 7, !dbg !1126
  store i32 %conv2, i32* %system_level, align 8, !dbg !1127
  %6 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1128
  %arrayidx3 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %6, i64 2, !dbg !1128
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx3, align 8, !dbg !1128
  %integer4 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_integer*, !dbg !1129
  %value5 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer4, i32 0, i32 6, !dbg !1130
  %8 = load i64, i64* %value5, align 8, !dbg !1130
  %conv6 = trunc i64 %8 to i16, !dbg !1131
  %conv7 = zext i16 %conv6 to i32, !dbg !1131
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1132
  %power_resource8 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_power_resource*, !dbg !1133
  %resource_order = getelementptr inbounds %struct.acpi_object_power_resource, %struct.acpi_object_power_resource* %power_resource8, i32 0, i32 8, !dbg !1134
  store i32 %conv7, i32* %resource_order, align 4, !dbg !1135
  %10 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1136
  %arrayidx9 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %10, i64 0, !dbg !1136
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx9, align 8, !dbg !1136
  %12 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_namespace_node*, !dbg !1137
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1138
  %call10 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %12, %union.acpi_operand_object* %13, i32 11) #3, !dbg !1139
  store i32 %call10, i32* %status, align 4, !dbg !1140
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1141
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %14) #3, !dbg !1142
  %15 = load i32, i32* %status, align 4, !dbg !1143
  store i32 %15, i32* %retval, align 4, !dbg !1143
  br label %return, !dbg !1143

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !1144
  ret i32 %16, !dbg !1144
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_create_method(i8* %aml_start, i32 %aml_length, %struct.acpi_walk_state* %walk_state) #0 !dbg !1145 {
entry:
  %aml_start.addr = alloca i8*, align 8
  %aml_length.addr = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %operand = alloca %union.acpi_operand_object**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %method_flags = alloca i8, align 1
  store i8* %aml_start, i8** %aml_start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml_start.addr, metadata !1148, metadata !DIExpression()), !dbg !1149
  store i32 %aml_length, i32* %aml_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %aml_length.addr, metadata !1150, metadata !DIExpression()), !dbg !1151
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1152, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !1154, metadata !DIExpression()), !dbg !1155
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1156
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !1157
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !1156
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !1155
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1158, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1160, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.declare(metadata i8* %method_flags, metadata !1162, metadata !DIExpression()), !dbg !1163
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 420, i32 128, i32 8) #3, !dbg !1164
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1165
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1166
  %tobool = icmp ne %union.acpi_operand_object* %1, null, !dbg !1166
  br i1 %tobool, label %if.end, label %if.then, !dbg !1168

if.then:                                          ; preds = %entry
  store i32 4, i32* %status, align 4, !dbg !1169
  br label %exit, !dbg !1171

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %aml_start.addr, align 8, !dbg !1172
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1173
  %method = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_method*, !dbg !1174
  %aml_start1 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 10, !dbg !1175
  store i8* %2, i8** %aml_start1, align 8, !dbg !1176
  %4 = load i32, i32* %aml_length.addr, align 4, !dbg !1177
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1178
  %method2 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_method*, !dbg !1179
  %aml_length3 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method2, i32 0, i32 12, !dbg !1180
  store i32 %4, i32* %aml_length3, align 8, !dbg !1181
  %6 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1182
  %arrayidx4 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %6, i64 0, !dbg !1182
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx4, align 8, !dbg !1182
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1183
  %method5 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_method*, !dbg !1184
  %node = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method5, i32 0, i32 9, !dbg !1185
  store %union.acpi_operand_object* %7, %union.acpi_operand_object** %node, align 8, !dbg !1186
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1187
  %arrayidx6 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %9, i64 1, !dbg !1187
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx6, align 8, !dbg !1187
  %integer = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_integer*, !dbg !1188
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1189
  %11 = load i64, i64* %value, align 8, !dbg !1189
  %conv = trunc i64 %11 to i8, !dbg !1190
  store i8 %conv, i8* %method_flags, align 1, !dbg !1191
  %12 = load i8, i8* %method_flags, align 1, !dbg !1192
  %conv7 = zext i8 %12 to i32, !dbg !1192
  %and = and i32 %conv7, 7, !dbg !1193
  %conv8 = trunc i32 %and to i8, !dbg !1194
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1195
  %method9 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_method*, !dbg !1196
  %param_count = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method9, i32 0, i32 6, !dbg !1197
  store i8 %conv8, i8* %param_count, align 2, !dbg !1198
  %14 = load i8, i8* %method_flags, align 1, !dbg !1199
  %conv10 = zext i8 %14 to i32, !dbg !1199
  %and11 = and i32 %conv10, 8, !dbg !1201
  %tobool12 = icmp ne i32 %and11, 0, !dbg !1201
  br i1 %tobool12, label %if.then13, label %if.end19, !dbg !1202

if.then13:                                        ; preds = %if.end
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1203
  %method14 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_method*, !dbg !1205
  %info_flags = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method14, i32 0, i32 5, !dbg !1206
  store i8 4, i8* %info_flags, align 1, !dbg !1207
  %16 = load i8, i8* %method_flags, align 1, !dbg !1208
  %conv15 = zext i8 %16 to i32, !dbg !1208
  %and16 = and i32 %conv15, 240, !dbg !1209
  %shr = ashr i32 %and16, 4, !dbg !1210
  %conv17 = trunc i32 %shr to i8, !dbg !1211
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1212
  %method18 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_method*, !dbg !1213
  %sync_level = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method18, i32 0, i32 7, !dbg !1214
  store i8 %conv17, i8* %sync_level, align 1, !dbg !1215
  br label %if.end19, !dbg !1216

if.end19:                                         ; preds = %if.then13, %if.end
  %18 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1217
  %arrayidx20 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %18, i64 0, !dbg !1217
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx20, align 8, !dbg !1217
  %20 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_namespace_node*, !dbg !1218
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1219
  %call21 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %20, %union.acpi_operand_object* %21, i32 8) #3, !dbg !1220
  store i32 %call21, i32* %status, align 4, !dbg !1221
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1222
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %22) #3, !dbg !1223
  br label %exit, !dbg !1223

exit:                                             ; preds = %if.end19, %if.then
  call void @llvm.dbg.label(metadata !1224), !dbg !1225
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1226
  %arrayidx22 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %23, i64 1, !dbg !1226
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx22, align 8, !dbg !1226
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %24) #3, !dbg !1227
  %25 = load i32, i32* %status, align 4, !dbg !1228
  ret i32 %25, !dbg !1228
}

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
!3 = !DIFile(filename: "drivers/acpi/acpica/excreate.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !101, !18, !8, !27, !567, !32}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !15, line: 133, size: 384, elements: !16)
!15 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!16 = !{!17, !768, !769, !770, !771, !777, !778, !779, !780}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !14, file: !15, line: 134, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !20, line: 367, size: 576, elements: !21)
!20 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !36, !52, !64, !78, !92, !102, !419, !436, !451, !464, !542, !554, !568, !578, !596, !618, !637, !656, !675, !688, !714, !731, !744, !758, !767}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !19, file: !20, line: 368, baseType: !23, size: 128)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !20, line: 73, size: 128, elements: !24)
!24 = !{!25, !26, !30, !31, !35}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !23, file: !20, line: 74, baseType: !18, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !23, file: !20, line: 74, baseType: !27, size: 8, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !29)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !23, file: !20, line: 74, baseType: !27, size: 8, offset: 72)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !23, file: !20, line: 74, baseType: !32, size: 16, offset: 80)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !34)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !20, line: 74, baseType: !27, size: 8, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !19, file: !20, line: 369, baseType: !37, size: 192)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !20, line: 76, size: 192, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !48}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !37, file: !20, line: 77, baseType: !18, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !37, file: !20, line: 77, baseType: !27, size: 8, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !37, file: !20, line: 77, baseType: !27, size: 8, offset: 72)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !37, file: !20, line: 77, baseType: !32, size: 16, offset: 80)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !37, file: !20, line: 77, baseType: !27, size: 8, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !37, file: !20, line: 77, baseType: !45, size: 24, offset: 104)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 3)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !37, file: !20, line: 78, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !51)
!51 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !19, file: !20, line: 370, baseType: !53, size: 256)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !20, line: 93, size: 256, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !63}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !53, file: !20, line: 94, baseType: !18, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !53, file: !20, line: 94, baseType: !27, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !20, line: 94, baseType: !27, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !53, file: !20, line: 94, baseType: !32, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !20, line: 94, baseType: !27, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !53, file: !20, line: 94, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !53, file: !20, line: 94, baseType: !8, size: 32, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !19, file: !20, line: 371, baseType: !65, size: 384)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !20, line: 97, size: 384, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !74, !75, !76, !77}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !65, file: !20, line: 98, baseType: !18, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !65, file: !20, line: 98, baseType: !27, size: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !20, line: 98, baseType: !27, size: 8, offset: 72)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !65, file: !20, line: 98, baseType: !32, size: 16, offset: 80)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !20, line: 98, baseType: !27, size: 8, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !65, file: !20, line: 98, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !65, file: !20, line: 98, baseType: !8, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !65, file: !20, line: 99, baseType: !8, size: 32, offset: 224)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !65, file: !20, line: 100, baseType: !73, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !65, file: !20, line: 101, baseType: !13, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !19, file: !20, line: 372, baseType: !79, size: 384)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !20, line: 104, size: 384, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !89, !90, !91}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !79, file: !20, line: 105, baseType: !18, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !20, line: 105, baseType: !27, size: 8, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !20, line: 105, baseType: !27, size: 8, offset: 72)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !79, file: !20, line: 105, baseType: !32, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !20, line: 105, baseType: !27, size: 8, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !79, file: !20, line: 105, baseType: !13, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !79, file: !20, line: 106, baseType: !88, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !79, file: !20, line: 107, baseType: !73, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !79, file: !20, line: 108, baseType: !8, size: 32, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !79, file: !20, line: 109, baseType: !8, size: 32, offset: 352)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !19, file: !20, line: 373, baseType: !93, size: 192)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !20, line: 118, size: 192, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !93, file: !20, line: 119, baseType: !18, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !20, line: 119, baseType: !27, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !20, line: 119, baseType: !27, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !93, file: !20, line: 119, baseType: !32, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !20, line: 119, baseType: !27, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !93, file: !20, line: 119, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !19, file: !20, line: 374, baseType: !103, size: 448)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !20, line: 143, size: 448, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !416, !417, !418}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !20, line: 144, baseType: !18, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !20, line: 144, baseType: !27, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !20, line: 144, baseType: !27, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !20, line: 144, baseType: !32, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !20, line: 144, baseType: !27, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !103, file: !20, line: 144, baseType: !27, size: 8, offset: 104)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !103, file: !20, line: 145, baseType: !27, size: 8, offset: 112)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !103, file: !20, line: 146, baseType: !27, size: 8, offset: 120)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !103, file: !20, line: 147, baseType: !18, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !103, file: !20, line: 148, baseType: !18, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !103, file: !20, line: 149, baseType: !73, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !103, file: !20, line: 153, baseType: !117, size: 64, offset: 320)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !20, line: 150, size: 64, elements: !118)
!118 = !{!119, !415}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !117, file: !20, line: 151, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !15, line: 248, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!6, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !126, line: 37, size: 9024, elements: !127)
!126 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !361, !362, !363, !364, !365, !369, !371, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !398, !399, !400, !401, !402, !403, !404, !405, !407, !413}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !126, line: 38, baseType: !124, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !126, line: 39, baseType: !27, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !125, file: !126, line: 40, baseType: !27, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !125, file: !126, line: 41, baseType: !32, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !125, file: !126, line: 42, baseType: !27, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !125, file: !126, line: 43, baseType: !27, size: 8, offset: 104)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !125, file: !126, line: 44, baseType: !27, size: 8, offset: 112)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !125, file: !126, line: 45, baseType: !136, size: 16, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !125, file: !126, line: 46, baseType: !27, size: 8, offset: 144)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !125, file: !126, line: 47, baseType: !27, size: 8, offset: 152)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !125, file: !126, line: 48, baseType: !27, size: 8, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !125, file: !126, line: 49, baseType: !27, size: 8, offset: 168)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !125, file: !126, line: 50, baseType: !27, size: 8, offset: 176)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !125, file: !126, line: 51, baseType: !27, size: 8, offset: 184)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !125, file: !126, line: 52, baseType: !27, size: 8, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !125, file: !126, line: 53, baseType: !27, size: 8, offset: 200)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !125, file: !126, line: 54, baseType: !73, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !125, file: !126, line: 55, baseType: !8, size: 32, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !125, file: !126, line: 56, baseType: !8, size: 32, offset: 352)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !125, file: !126, line: 57, baseType: !8, size: 32, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !125, file: !126, line: 58, baseType: !8, size: 32, offset: 416)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !125, file: !126, line: 60, baseType: !151, size: 640, offset: 448)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !15, line: 893, size: 640, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !242, !243, !359, !360}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !151, file: !15, line: 894, baseType: !73, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !151, file: !15, line: 895, baseType: !73, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !151, file: !15, line: 896, baseType: !73, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !151, file: !15, line: 897, baseType: !73, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !151, file: !15, line: 898, baseType: !73, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !151, file: !15, line: 899, baseType: !159, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !15, line: 875, size: 1600, elements: !161)
!161 = !{!162, !182, !198}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !160, file: !15, line: 876, baseType: !163, size: 448)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !15, line: 828, size: 448, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !181}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !163, file: !15, line: 829, baseType: !159, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !163, file: !15, line: 829, baseType: !27, size: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !15, line: 829, baseType: !27, size: 8, offset: 72)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !163, file: !15, line: 829, baseType: !32, size: 16, offset: 80)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !163, file: !15, line: 829, baseType: !73, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !15, line: 829, baseType: !159, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !163, file: !15, line: 829, baseType: !13, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !163, file: !15, line: 829, baseType: !173, size: 64, offset: 320)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !15, line: 716, size: 64, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !173, file: !15, line: 717, baseType: !49, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !173, file: !15, line: 718, baseType: !8, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !173, file: !15, line: 719, baseType: !61, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !173, file: !15, line: 720, baseType: !73, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !15, line: 721, baseType: !61, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !173, file: !15, line: 722, baseType: !159, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !163, file: !15, line: 829, baseType: !27, size: 8, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !160, file: !15, line: 877, baseType: !183, size: 640)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !15, line: 835, size: 640, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !15, line: 836, baseType: !159, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !183, file: !15, line: 836, baseType: !27, size: 8, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !15, line: 836, baseType: !27, size: 8, offset: 72)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !183, file: !15, line: 836, baseType: !32, size: 16, offset: 80)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !183, file: !15, line: 836, baseType: !73, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !15, line: 836, baseType: !159, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !183, file: !15, line: 836, baseType: !13, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !183, file: !15, line: 836, baseType: !173, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !183, file: !15, line: 836, baseType: !27, size: 8, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !183, file: !15, line: 836, baseType: !61, size: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !183, file: !15, line: 837, baseType: !73, size: 64, offset: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !183, file: !15, line: 838, baseType: !8, size: 32, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !15, line: 839, baseType: !8, size: 32, offset: 608)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !160, file: !15, line: 878, baseType: !199, size: 1600)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !15, line: 846, size: 1600, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !15, line: 847, baseType: !159, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !15, line: 847, baseType: !27, size: 8, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !15, line: 847, baseType: !27, size: 8, offset: 72)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !199, file: !15, line: 847, baseType: !32, size: 16, offset: 80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !199, file: !15, line: 847, baseType: !73, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !15, line: 847, baseType: !159, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !15, line: 847, baseType: !13, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !15, line: 847, baseType: !173, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !199, file: !15, line: 847, baseType: !27, size: 8, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !199, file: !15, line: 847, baseType: !159, size: 64, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !199, file: !15, line: 848, baseType: !159, size: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !199, file: !15, line: 849, baseType: !61, size: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !199, file: !15, line: 850, baseType: !27, size: 8, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !199, file: !15, line: 851, baseType: !61, size: 64, offset: 704)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !199, file: !15, line: 852, baseType: !61, size: 64, offset: 768)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !199, file: !15, line: 853, baseType: !61, size: 64, offset: 832)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !199, file: !15, line: 854, baseType: !218, size: 32, offset: 896)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 4)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !199, file: !15, line: 855, baseType: !8, size: 32, offset: 928)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !199, file: !15, line: 856, baseType: !8, size: 32, offset: 960)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !199, file: !15, line: 857, baseType: !8, size: 32, offset: 992)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !199, file: !15, line: 858, baseType: !8, size: 32, offset: 1024)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !199, file: !15, line: 859, baseType: !8, size: 32, offset: 1056)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !199, file: !15, line: 860, baseType: !8, size: 32, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !199, file: !15, line: 861, baseType: !8, size: 32, offset: 1120)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !199, file: !15, line: 862, baseType: !8, size: 32, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !199, file: !15, line: 863, baseType: !8, size: 32, offset: 1184)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !199, file: !15, line: 864, baseType: !8, size: 32, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !199, file: !15, line: 865, baseType: !8, size: 32, offset: 1248)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !199, file: !15, line: 866, baseType: !8, size: 32, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !199, file: !15, line: 867, baseType: !8, size: 32, offset: 1312)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !199, file: !15, line: 868, baseType: !32, size: 16, offset: 1344)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !199, file: !15, line: 869, baseType: !27, size: 8, offset: 1360)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !199, file: !15, line: 870, baseType: !27, size: 8, offset: 1368)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !199, file: !15, line: 871, baseType: !27, size: 8, offset: 1376)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !199, file: !15, line: 872, baseType: !239, size: 160, offset: 1384)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 160, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 20)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !151, file: !15, line: 900, baseType: !13, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !151, file: !15, line: 901, baseType: !244, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !15, line: 663, size: 640, elements: !246)
!246 = !{!247, !255, !268, !277, !286, !299, !313, !325, !337}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !245, file: !15, line: 664, baseType: !248, size: 128)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !15, line: 567, size: 128, elements: !249)
!249 = !{!250, !251, !252, !253, !254}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !15, line: 568, baseType: !101, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !248, file: !15, line: 568, baseType: !27, size: 8, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !15, line: 568, baseType: !27, size: 8, offset: 72)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !248, file: !15, line: 568, baseType: !32, size: 16, offset: 80)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !248, file: !15, line: 568, baseType: !32, size: 16, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !245, file: !15, line: 665, baseType: !256, size: 384)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !15, line: 593, size: 384, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !15, line: 594, baseType: !101, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !256, file: !15, line: 594, baseType: !27, size: 8, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !256, file: !15, line: 594, baseType: !27, size: 8, offset: 72)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !256, file: !15, line: 594, baseType: !32, size: 16, offset: 80)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !256, file: !15, line: 594, baseType: !32, size: 16, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !256, file: !15, line: 594, baseType: !32, size: 16, offset: 112)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !256, file: !15, line: 595, baseType: !159, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !256, file: !15, line: 596, baseType: !73, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !256, file: !15, line: 597, baseType: !73, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !256, file: !15, line: 598, baseType: !49, size: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !245, file: !15, line: 666, baseType: !269, size: 192)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !15, line: 573, size: 192, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !15, line: 574, baseType: !101, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !269, file: !15, line: 574, baseType: !27, size: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !15, line: 574, baseType: !27, size: 8, offset: 72)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !269, file: !15, line: 574, baseType: !32, size: 16, offset: 80)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !15, line: 574, baseType: !32, size: 16, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !269, file: !15, line: 574, baseType: !18, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !245, file: !15, line: 667, baseType: !278, size: 192)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !15, line: 604, size: 192, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !15, line: 605, baseType: !101, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !15, line: 605, baseType: !27, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !15, line: 605, baseType: !27, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !15, line: 605, baseType: !32, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !15, line: 605, baseType: !32, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !278, file: !15, line: 605, baseType: !13, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !245, file: !15, line: 668, baseType: !287, size: 448)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !15, line: 608, size: 448, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !15, line: 609, baseType: !101, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !15, line: 609, baseType: !27, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !15, line: 609, baseType: !27, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !15, line: 609, baseType: !32, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !15, line: 609, baseType: !32, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !287, file: !15, line: 609, baseType: !8, size: 32, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !287, file: !15, line: 610, baseType: !159, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !287, file: !15, line: 611, baseType: !73, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !287, file: !15, line: 612, baseType: !73, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !287, file: !15, line: 613, baseType: !8, size: 32, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !245, file: !15, line: 669, baseType: !300, size: 512)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !15, line: 580, size: 512, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !15, line: 581, baseType: !101, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !15, line: 581, baseType: !27, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !15, line: 581, baseType: !27, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !15, line: 581, baseType: !32, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !15, line: 581, baseType: !32, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !300, file: !15, line: 581, baseType: !8, size: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !300, file: !15, line: 582, baseType: !18, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !300, file: !15, line: 583, baseType: !18, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !300, file: !15, line: 584, baseType: !124, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !300, file: !15, line: 585, baseType: !101, size: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !300, file: !15, line: 586, baseType: !8, size: 32, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !245, file: !15, line: 670, baseType: !314, size: 320)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !15, line: 620, size: 320, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !15, line: 621, baseType: !101, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !15, line: 621, baseType: !27, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !15, line: 621, baseType: !27, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !15, line: 621, baseType: !32, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !15, line: 621, baseType: !32, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !314, file: !15, line: 621, baseType: !27, size: 8, offset: 112)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !314, file: !15, line: 622, baseType: !124, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !314, file: !15, line: 623, baseType: !18, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !314, file: !15, line: 624, baseType: !49, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !245, file: !15, line: 671, baseType: !326, size: 640)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !15, line: 631, size: 640, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !15, line: 632, baseType: !101, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !326, file: !15, line: 632, baseType: !27, size: 8, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !15, line: 632, baseType: !27, size: 8, offset: 72)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !326, file: !15, line: 632, baseType: !32, size: 16, offset: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !326, file: !15, line: 632, baseType: !32, size: 16, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !326, file: !15, line: 633, baseType: !334, size: 512, offset: 128)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 8)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !245, file: !15, line: 672, baseType: !338, size: 320)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !15, line: 654, size: 320, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !338, file: !15, line: 655, baseType: !101, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !338, file: !15, line: 655, baseType: !27, size: 8, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !15, line: 655, baseType: !27, size: 8, offset: 72)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !338, file: !15, line: 655, baseType: !32, size: 16, offset: 80)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !338, file: !15, line: 655, baseType: !32, size: 16, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !338, file: !15, line: 655, baseType: !27, size: 8, offset: 112)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !338, file: !15, line: 656, baseType: !13, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !338, file: !15, line: 657, baseType: !18, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !338, file: !15, line: 658, baseType: !349, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !15, line: 645, size: 128, elements: !351)
!351 = !{!352, !358}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !350, file: !15, line: 646, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357, !8, !101}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !101)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !350, file: !15, line: 647, baseType: !101, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !151, file: !15, line: 902, baseType: !159, size: 64, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !151, file: !15, line: 903, baseType: !8, size: 32, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !125, file: !126, line: 61, baseType: !8, size: 32, offset: 1088)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !125, file: !126, line: 62, baseType: !8, size: 32, offset: 1120)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !125, file: !126, line: 63, baseType: !32, size: 16, offset: 1152)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !125, file: !126, line: 64, baseType: !27, size: 8, offset: 1168)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !125, file: !126, line: 66, baseType: !366, size: 2688, offset: 1216)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2688, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 7)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !125, file: !126, line: 67, baseType: !370, size: 3072, offset: 3904)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 3072, elements: !335)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !125, file: !126, line: 68, baseType: !372, size: 576, offset: 6976)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 576, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 9)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !125, file: !126, line: 69, baseType: !88, size: 64, offset: 7552)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !125, file: !126, line: 71, baseType: !73, size: 64, offset: 7616)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !125, file: !126, line: 72, baseType: !88, size: 64, offset: 7680)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !125, file: !126, line: 73, baseType: !244, size: 64, offset: 7744)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !125, file: !126, line: 74, baseType: !13, size: 64, offset: 7808)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !125, file: !126, line: 75, baseType: !18, size: 64, offset: 7872)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !125, file: !126, line: 76, baseType: !13, size: 64, offset: 7936)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !125, file: !126, line: 77, baseType: !159, size: 64, offset: 8000)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !125, file: !126, line: 78, baseType: !18, size: 64, offset: 8064)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !125, file: !126, line: 79, baseType: !13, size: 64, offset: 8128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !125, file: !126, line: 80, baseType: !61, size: 64, offset: 8192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !125, file: !126, line: 81, baseType: !159, size: 64, offset: 8256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !125, file: !126, line: 82, baseType: !388, size: 64, offset: 8320)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !15, line: 702, size: 128, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !390, file: !15, line: 706, baseType: !8, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !390, file: !15, line: 707, baseType: !8, size: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !15, line: 708, baseType: !32, size: 16, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !390, file: !15, line: 709, baseType: !27, size: 8, offset: 80)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !390, file: !15, line: 710, baseType: !27, size: 8, offset: 88)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !15, line: 711, baseType: !27, size: 8, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !125, file: !126, line: 83, baseType: !159, size: 64, offset: 8384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !125, file: !126, line: 84, baseType: !18, size: 64, offset: 8448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !125, file: !126, line: 85, baseType: !244, size: 64, offset: 8512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !125, file: !126, line: 86, baseType: !18, size: 64, offset: 8576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !125, file: !126, line: 87, baseType: !244, size: 64, offset: 8640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !125, file: !126, line: 88, baseType: !159, size: 64, offset: 8704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !125, file: !126, line: 89, baseType: !159, size: 64, offset: 8768)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !125, file: !126, line: 90, baseType: !406, size: 64, offset: 8832)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !125, file: !126, line: 91, baseType: !408, size: 64, offset: 8896)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !15, line: 637, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!6, !124, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !125, file: !126, line: 92, baseType: !414, size: 64, offset: 8960)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !15, line: 641, baseType: !121)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !117, file: !20, line: 152, baseType: !18, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !103, file: !20, line: 155, baseType: !8, size: 32, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !103, file: !20, line: 156, baseType: !136, size: 16, offset: 416)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !103, file: !20, line: 157, baseType: !27, size: 8, offset: 432)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !19, file: !20, line: 375, baseType: !420, size: 576)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !20, line: 122, size: 576, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !420, file: !20, line: 123, baseType: !18, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !420, file: !20, line: 123, baseType: !27, size: 8, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !420, file: !20, line: 123, baseType: !27, size: 8, offset: 72)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !420, file: !20, line: 123, baseType: !32, size: 16, offset: 80)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !20, line: 123, baseType: !27, size: 8, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !420, file: !20, line: 123, baseType: !27, size: 8, offset: 104)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !420, file: !20, line: 124, baseType: !32, size: 16, offset: 112)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !420, file: !20, line: 125, baseType: !101, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !420, file: !20, line: 126, baseType: !49, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !420, file: !20, line: 127, baseType: !406, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !420, file: !20, line: 128, baseType: !18, size: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !420, file: !20, line: 129, baseType: !18, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !420, file: !20, line: 130, baseType: !13, size: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !420, file: !20, line: 131, baseType: !27, size: 8, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !19, file: !20, line: 376, baseType: !437, size: 448)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !20, line: 134, size: 448, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !450}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !437, file: !20, line: 135, baseType: !18, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !437, file: !20, line: 135, baseType: !27, size: 8, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !437, file: !20, line: 135, baseType: !27, size: 8, offset: 72)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !437, file: !20, line: 135, baseType: !32, size: 16, offset: 80)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !437, file: !20, line: 135, baseType: !27, size: 8, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !437, file: !20, line: 135, baseType: !27, size: 8, offset: 104)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !437, file: !20, line: 136, baseType: !13, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !437, file: !20, line: 137, baseType: !18, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !20, line: 138, baseType: !18, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !437, file: !20, line: 139, baseType: !449, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !49)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !437, file: !20, line: 140, baseType: !8, size: 32, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !19, file: !20, line: 377, baseType: !452, size: 320)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !20, line: 184, size: 320, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !463}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !20, line: 185, baseType: !18, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !20, line: 185, baseType: !27, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !20, line: 185, baseType: !27, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !20, line: 185, baseType: !32, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !20, line: 185, baseType: !27, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !452, file: !20, line: 185, baseType: !460, size: 128, offset: 128)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 2)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !452, file: !20, line: 185, baseType: !18, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !19, file: !20, line: 378, baseType: !465, size: 384)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !20, line: 187, size: 384, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !465, file: !20, line: 188, baseType: !18, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !465, file: !20, line: 188, baseType: !27, size: 8, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !465, file: !20, line: 188, baseType: !27, size: 8, offset: 72)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !465, file: !20, line: 188, baseType: !32, size: 16, offset: 80)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !20, line: 188, baseType: !27, size: 8, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !465, file: !20, line: 189, baseType: !460, size: 128, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !465, file: !20, line: 189, baseType: !18, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !465, file: !20, line: 189, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !15, line: 480, size: 576, elements: !477)
!477 = !{!478, !479, !480, !481, !489, !504, !536, !537, !538, !539, !540, !541}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !476, file: !15, line: 481, baseType: !13, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !476, file: !15, line: 482, baseType: !475, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !15, line: 483, baseType: !475, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !476, file: !15, line: 484, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !15, line: 497, size: 256, elements: !484)
!484 = !{!485, !486, !487, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !483, file: !15, line: 498, baseType: !482, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !483, file: !15, line: 499, baseType: !482, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !483, file: !15, line: 500, baseType: !475, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !483, file: !15, line: 501, baseType: !8, size: 32, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !476, file: !15, line: 485, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !15, line: 466, size: 320, elements: !492)
!492 = !{!493, !498, !499, !500, !501, !502, !503}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !491, file: !15, line: 467, baseType: !494, size: 128)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !15, line: 459, size: 128, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !494, file: !15, line: 460, baseType: !27, size: 8)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !494, file: !15, line: 461, baseType: !49, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !491, file: !15, line: 468, baseType: !494, size: 128, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !491, file: !15, line: 469, baseType: !32, size: 16, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !491, file: !15, line: 470, baseType: !27, size: 8, offset: 272)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !491, file: !15, line: 471, baseType: !27, size: 8, offset: 280)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !491, file: !15, line: 472, baseType: !27, size: 8, offset: 288)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !491, file: !15, line: 473, baseType: !27, size: 8, offset: 296)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !476, file: !15, line: 486, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !15, line: 448, size: 192, elements: !507)
!507 = !{!508, !531, !532, !533, !534, !535}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !506, file: !15, line: 449, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !15, line: 438, size: 64, elements: !510)
!510 = !{!511, !512, !525}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !509, file: !15, line: 439, baseType: !13, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !509, file: !15, line: 440, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !15, line: 419, size: 256, elements: !515)
!515 = !{!516, !521, !522, !523, !524}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !15, line: 420, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!8, !357, !8, !101}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !514, file: !15, line: 421, baseType: !101, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !514, file: !15, line: 422, baseType: !13, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !514, file: !15, line: 423, baseType: !27, size: 8, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !514, file: !15, line: 424, baseType: !27, size: 8, offset: 200)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !509, file: !15, line: 441, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !15, line: 429, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !527, file: !15, line: 430, baseType: !13, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !15, line: 431, baseType: !526, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !506, file: !15, line: 450, baseType: !490, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !15, line: 451, baseType: !27, size: 8, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !506, file: !15, line: 452, baseType: !27, size: 8, offset: 136)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !506, file: !15, line: 453, baseType: !27, size: 8, offset: 144)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !506, file: !15, line: 454, baseType: !27, size: 8, offset: 152)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !476, file: !15, line: 487, baseType: !49, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !476, file: !15, line: 488, baseType: !8, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !476, file: !15, line: 489, baseType: !32, size: 16, offset: 480)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !476, file: !15, line: 490, baseType: !32, size: 16, offset: 496)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !476, file: !15, line: 491, baseType: !27, size: 8, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !476, file: !15, line: 492, baseType: !27, size: 8, offset: 520)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !19, file: !20, line: 379, baseType: !543, size: 384)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !20, line: 192, size: 384, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !543, file: !20, line: 193, baseType: !18, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !543, file: !20, line: 193, baseType: !27, size: 8, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !543, file: !20, line: 193, baseType: !27, size: 8, offset: 72)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !543, file: !20, line: 193, baseType: !32, size: 16, offset: 80)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !20, line: 193, baseType: !27, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !543, file: !20, line: 193, baseType: !460, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !20, line: 193, baseType: !18, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !543, file: !20, line: 193, baseType: !8, size: 32, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !543, file: !20, line: 194, baseType: !8, size: 32, offset: 352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !19, file: !20, line: 380, baseType: !555, size: 384)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !20, line: 197, size: 384, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !555, file: !20, line: 198, baseType: !18, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !555, file: !20, line: 198, baseType: !27, size: 8, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !20, line: 198, baseType: !27, size: 8, offset: 72)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !555, file: !20, line: 198, baseType: !32, size: 16, offset: 80)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !20, line: 198, baseType: !27, size: 8, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !555, file: !20, line: 200, baseType: !27, size: 8, offset: 104)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !555, file: !20, line: 201, baseType: !27, size: 8, offset: 112)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !555, file: !20, line: 202, baseType: !460, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !555, file: !20, line: 202, baseType: !18, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !555, file: !20, line: 202, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !49)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !19, file: !20, line: 381, baseType: !569, size: 320)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !20, line: 205, size: 320, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !20, line: 206, baseType: !18, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !20, line: 206, baseType: !27, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !20, line: 206, baseType: !27, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !20, line: 206, baseType: !32, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !20, line: 206, baseType: !27, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !20, line: 206, baseType: !460, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !20, line: 206, baseType: !18, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !19, file: !20, line: 382, baseType: !579, size: 384)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !20, line: 233, size: 384, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !20, line: 234, baseType: !18, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !20, line: 234, baseType: !32, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 104)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 112)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 120)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !579, file: !20, line: 234, baseType: !13, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !579, file: !20, line: 234, baseType: !8, size: 32, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !579, file: !20, line: 234, baseType: !8, size: 32, offset: 224)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !579, file: !20, line: 234, baseType: !8, size: 32, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 288)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !579, file: !20, line: 234, baseType: !27, size: 8, offset: 296)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !579, file: !20, line: 234, baseType: !18, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !19, file: !20, line: 383, baseType: !597, size: 576)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !20, line: 237, size: 576, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !20, line: 238, baseType: !18, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !20, line: 238, baseType: !32, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 120)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !20, line: 238, baseType: !13, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !597, file: !20, line: 238, baseType: !8, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !597, file: !20, line: 238, baseType: !8, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !20, line: 238, baseType: !8, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 288)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !597, file: !20, line: 238, baseType: !27, size: 8, offset: 296)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !597, file: !20, line: 238, baseType: !32, size: 16, offset: 304)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !597, file: !20, line: 239, baseType: !18, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !597, file: !20, line: 240, baseType: !73, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !597, file: !20, line: 241, baseType: !32, size: 16, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !597, file: !20, line: 242, baseType: !73, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !19, file: !20, line: 384, baseType: !619, size: 384)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !20, line: 262, size: 384, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !20, line: 263, baseType: !18, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !20, line: 263, baseType: !32, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 120)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !20, line: 263, baseType: !13, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !619, file: !20, line: 263, baseType: !8, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !619, file: !20, line: 263, baseType: !8, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !20, line: 263, baseType: !8, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !619, file: !20, line: 263, baseType: !27, size: 8, offset: 304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !619, file: !20, line: 264, baseType: !18, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !19, file: !20, line: 385, baseType: !638, size: 448)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !20, line: 245, size: 448, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !20, line: 246, baseType: !18, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !20, line: 246, baseType: !32, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !20, line: 246, baseType: !13, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !20, line: 246, baseType: !8, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !20, line: 246, baseType: !8, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !20, line: 246, baseType: !8, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !20, line: 246, baseType: !27, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !638, file: !20, line: 246, baseType: !18, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !638, file: !20, line: 247, baseType: !18, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !19, file: !20, line: 386, baseType: !657, size: 448)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !20, line: 250, size: 448, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !657, file: !20, line: 251, baseType: !18, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 72)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !657, file: !20, line: 251, baseType: !32, size: 16, offset: 80)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 104)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 120)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !20, line: 251, baseType: !13, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !657, file: !20, line: 251, baseType: !8, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !657, file: !20, line: 251, baseType: !8, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !657, file: !20, line: 251, baseType: !8, size: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !657, file: !20, line: 251, baseType: !27, size: 8, offset: 296)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !657, file: !20, line: 256, baseType: !18, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !657, file: !20, line: 257, baseType: !18, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !19, file: !20, line: 387, baseType: !676, size: 512)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !20, line: 273, size: 512, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !676, file: !20, line: 274, baseType: !18, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !20, line: 274, baseType: !27, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !20, line: 274, baseType: !27, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !20, line: 274, baseType: !32, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !20, line: 274, baseType: !27, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !676, file: !20, line: 274, baseType: !13, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !676, file: !20, line: 275, baseType: !8, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !676, file: !20, line: 276, baseType: !353, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !676, file: !20, line: 277, baseType: !101, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !20, line: 278, baseType: !460, size: 128, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !19, file: !20, line: 388, baseType: !689, size: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !20, line: 281, size: 512, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !704, !705, !706, !712, !713}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !20, line: 282, baseType: !18, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !20, line: 282, baseType: !27, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !20, line: 282, baseType: !27, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !20, line: 282, baseType: !32, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !20, line: 282, baseType: !27, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !689, file: !20, line: 282, baseType: !27, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !689, file: !20, line: 283, baseType: !27, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !689, file: !20, line: 284, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!6, !8, !449, !8, !703, !101, !101}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !20, line: 285, baseType: !13, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !689, file: !20, line: 286, baseType: !101, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !689, file: !20, line: 287, baseType: !707, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!6, !357, !8, !101, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !689, file: !20, line: 288, baseType: !18, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !20, line: 289, baseType: !18, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !19, file: !20, line: 389, baseType: !715, size: 512)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !20, line: 307, size: 512, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !20, line: 308, baseType: !18, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !20, line: 308, baseType: !27, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !20, line: 308, baseType: !27, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !20, line: 308, baseType: !32, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !20, line: 308, baseType: !27, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !715, file: !20, line: 308, baseType: !27, size: 8, offset: 104)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !715, file: !20, line: 309, baseType: !27, size: 8, offset: 112)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !715, file: !20, line: 310, baseType: !27, size: 8, offset: 120)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !715, file: !20, line: 311, baseType: !101, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !20, line: 312, baseType: !13, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !715, file: !20, line: 313, baseType: !88, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !715, file: !20, line: 314, baseType: !73, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !715, file: !20, line: 315, baseType: !73, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !715, file: !20, line: 316, baseType: !8, size: 32, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !19, file: !20, line: 390, baseType: !732, size: 448)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !20, line: 340, size: 448, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !732, file: !20, line: 341, baseType: !18, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !20, line: 341, baseType: !27, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !20, line: 341, baseType: !27, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !732, file: !20, line: 341, baseType: !32, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !20, line: 341, baseType: !27, size: 8, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !732, file: !20, line: 341, baseType: !13, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !732, file: !20, line: 342, baseType: !13, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !732, file: !20, line: 343, baseType: !101, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !732, file: !20, line: 344, baseType: !73, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !732, file: !20, line: 345, baseType: !8, size: 32, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !19, file: !20, line: 391, baseType: !745, size: 256)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !20, line: 350, size: 256, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !757}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !745, file: !20, line: 351, baseType: !18, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !20, line: 351, baseType: !27, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !20, line: 351, baseType: !27, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !745, file: !20, line: 351, baseType: !32, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !20, line: 351, baseType: !27, size: 8, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !745, file: !20, line: 351, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !357, !101}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !745, file: !20, line: 352, baseType: !101, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !19, file: !20, line: 392, baseType: !759, size: 192)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !20, line: 357, size: 192, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !759, file: !20, line: 358, baseType: !18, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !759, file: !20, line: 358, baseType: !27, size: 8, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !759, file: !20, line: 358, baseType: !27, size: 8, offset: 72)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !759, file: !20, line: 358, baseType: !32, size: 16, offset: 80)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !20, line: 358, baseType: !27, size: 8, offset: 96)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !759, file: !20, line: 358, baseType: !18, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !19, file: !20, line: 399, baseType: !14, size: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !14, file: !15, line: 135, baseType: !27, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !15, line: 136, baseType: !27, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !14, file: !15, line: 137, baseType: !32, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !15, line: 138, baseType: !772, size: 32, offset: 96)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !773, line: 327, size: 32, elements: !774)
!773 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !772, file: !773, line: 328, baseType: !8, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !772, file: !773, line: 329, baseType: !218, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !14, file: !15, line: 139, baseType: !13, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !14, file: !15, line: 140, baseType: !13, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !14, file: !15, line: 141, baseType: !13, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !14, file: !15, line: 142, baseType: !136, size: 16, offset: 320)
!781 = !{!0}
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 72, elements: !373)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!784 = !{i32 7, !"Dwarf Version", i32 4}
!785 = !{i32 2, !"Debug Info Version", i32 3}
!786 = !{i32 1, !"wchar_size", i32 2}
!787 = !{i32 1, !"Code Model", i32 2}
!788 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!789 = distinct !DISubprogram(name: "acpi_ex_create_alias", scope: !3, file: !3, line: 29, type: !122, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!790 = !DILocalVariable(name: "walk_state", arg: 1, scope: !789, file: !3, line: 29, type: !124)
!791 = !DILocation(line: 29, column: 58, scope: !789)
!792 = !DILocalVariable(name: "target_node", scope: !789, file: !3, line: 31, type: !13)
!793 = !DILocation(line: 31, column: 30, scope: !789)
!794 = !DILocalVariable(name: "alias_node", scope: !789, file: !3, line: 32, type: !13)
!795 = !DILocation(line: 32, column: 30, scope: !789)
!796 = !DILocalVariable(name: "status", scope: !789, file: !3, line: 33, type: !6)
!797 = !DILocation(line: 33, column: 14, scope: !789)
!798 = !DILocation(line: 39, column: 45, scope: !789)
!799 = !DILocation(line: 39, column: 57, scope: !789)
!800 = !DILocation(line: 39, column: 15, scope: !789)
!801 = !DILocation(line: 39, column: 13, scope: !789)
!802 = !DILocation(line: 40, column: 46, scope: !789)
!803 = !DILocation(line: 40, column: 58, scope: !789)
!804 = !DILocation(line: 40, column: 16, scope: !789)
!805 = !DILocation(line: 40, column: 14, scope: !789)
!806 = !DILocation(line: 42, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !789, file: !3, line: 42, column: 6)
!808 = !DILocation(line: 42, column: 20, scope: !807)
!809 = !DILocation(line: 42, column: 25, scope: !807)
!810 = !DILocation(line: 42, column: 51, scope: !807)
!811 = !DILocation(line: 43, column: 7, scope: !807)
!812 = !DILocation(line: 43, column: 20, scope: !807)
!813 = !DILocation(line: 43, column: 25, scope: !807)
!814 = !DILocation(line: 42, column: 6, scope: !789)
!815 = !DILocation(line: 51, column: 7, scope: !816)
!816 = distinct !DILexicalBlock(scope: !807, file: !3, line: 43, column: 59)
!817 = !DILocation(line: 50, column: 15, scope: !816)
!818 = !DILocation(line: 53, column: 2, scope: !816)
!819 = !DILocation(line: 57, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !789, file: !3, line: 57, column: 6)
!821 = !DILocation(line: 57, column: 6, scope: !789)
!822 = !DILocation(line: 58, column: 3, scope: !823)
!823 = distinct !DILexicalBlock(scope: !820, file: !3, line: 57, column: 20)
!824 = !DILocation(line: 63, column: 10, scope: !789)
!825 = !DILocation(line: 63, column: 23, scope: !789)
!826 = !DILocation(line: 63, column: 2, scope: !789)
!827 = !DILocation(line: 69, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !789, file: !3, line: 63, column: 29)
!829 = !DILocation(line: 69, column: 15, scope: !828)
!830 = !DILocation(line: 69, column: 20, scope: !828)
!831 = !DILocation(line: 70, column: 3, scope: !828)
!832 = !DILocation(line: 79, column: 3, scope: !828)
!833 = !DILocation(line: 79, column: 15, scope: !828)
!834 = !DILocation(line: 79, column: 20, scope: !828)
!835 = !DILocation(line: 81, column: 7, scope: !828)
!836 = !DILocation(line: 80, column: 3, scope: !828)
!837 = !DILocation(line: 80, column: 15, scope: !828)
!838 = !DILocation(line: 80, column: 22, scope: !828)
!839 = !DILocation(line: 82, column: 3, scope: !828)
!840 = !DILocation(line: 88, column: 6, scope: !789)
!841 = !DILocation(line: 87, column: 2, scope: !789)
!842 = !DILocation(line: 87, column: 14, scope: !789)
!843 = !DILocation(line: 87, column: 21, scope: !789)
!844 = !DILocation(line: 89, column: 2, scope: !789)
!845 = !DILocation(line: 90, column: 1, scope: !789)
!846 = distinct !DISubprogram(name: "acpi_ex_create_event", scope: !3, file: !3, line: 104, type: !122, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!847 = !DILocalVariable(name: "walk_state", arg: 1, scope: !846, file: !3, line: 104, type: !124)
!848 = !DILocation(line: 104, column: 58, scope: !846)
!849 = !DILocalVariable(name: "status", scope: !846, file: !3, line: 106, type: !6)
!850 = !DILocation(line: 106, column: 14, scope: !846)
!851 = !DILocalVariable(name: "obj_desc", scope: !846, file: !3, line: 107, type: !18)
!852 = !DILocation(line: 107, column: 29, scope: !846)
!853 = !DILocation(line: 111, column: 13, scope: !846)
!854 = !DILocation(line: 111, column: 11, scope: !846)
!855 = !DILocation(line: 112, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !846, file: !3, line: 112, column: 6)
!857 = !DILocation(line: 112, column: 6, scope: !846)
!858 = !DILocation(line: 113, column: 10, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !3, line: 112, column: 17)
!860 = !DILocation(line: 114, column: 3, scope: !859)
!861 = !DILocation(line: 122, column: 9, scope: !846)
!862 = !DILocation(line: 122, column: 19, scope: !846)
!863 = !DILocation(line: 122, column: 25, scope: !846)
!864 = !DILocation(line: 121, column: 11, scope: !846)
!865 = !DILocation(line: 121, column: 9, scope: !846)
!866 = !DILocation(line: 123, column: 6, scope: !867)
!867 = distinct !DILexicalBlock(scope: !846, file: !3, line: 123, column: 6)
!868 = !DILocation(line: 123, column: 6, scope: !846)
!869 = !DILocation(line: 124, column: 3, scope: !870)
!870 = distinct !DILexicalBlock(scope: !867, file: !3, line: 123, column: 28)
!871 = !DILocation(line: 130, column: 12, scope: !846)
!872 = !DILocation(line: 130, column: 24, scope: !846)
!873 = !DILocation(line: 129, column: 33, scope: !846)
!874 = !DILocation(line: 130, column: 37, scope: !846)
!875 = !DILocation(line: 129, column: 11, scope: !846)
!876 = !DILocation(line: 129, column: 9, scope: !846)
!877 = !DILocation(line: 129, column: 2, scope: !846)
!878 = !DILabel(scope: !846, name: "cleanup", file: !3, line: 133)
!879 = !DILocation(line: 133, column: 1, scope: !846)
!880 = !DILocation(line: 138, column: 27, scope: !846)
!881 = !DILocation(line: 138, column: 2, scope: !846)
!882 = !DILocation(line: 139, column: 2, scope: !846)
!883 = distinct !DISubprogram(name: "acpi_ex_create_mutex", scope: !3, file: !3, line: 156, type: !122, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!884 = !DILocalVariable(name: "walk_state", arg: 1, scope: !883, file: !3, line: 156, type: !124)
!885 = !DILocation(line: 156, column: 58, scope: !883)
!886 = !DILocalVariable(name: "status", scope: !883, file: !3, line: 158, type: !6)
!887 = !DILocation(line: 158, column: 14, scope: !883)
!888 = !DILocalVariable(name: "obj_desc", scope: !883, file: !3, line: 159, type: !18)
!889 = !DILocation(line: 159, column: 29, scope: !883)
!890 = !DILocation(line: 165, column: 13, scope: !883)
!891 = !DILocation(line: 165, column: 11, scope: !883)
!892 = !DILocation(line: 166, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !883, file: !3, line: 166, column: 6)
!894 = !DILocation(line: 166, column: 6, scope: !883)
!895 = !DILocation(line: 167, column: 10, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 166, column: 17)
!897 = !DILocation(line: 168, column: 3, scope: !896)
!898 = !DILocation(line: 173, column: 11, scope: !883)
!899 = !DILocation(line: 173, column: 9, scope: !883)
!900 = !DILocation(line: 174, column: 6, scope: !901)
!901 = distinct !DILexicalBlock(scope: !883, file: !3, line: 174, column: 6)
!902 = !DILocation(line: 174, column: 6, scope: !883)
!903 = !DILocation(line: 175, column: 3, scope: !904)
!904 = distinct !DILexicalBlock(scope: !901, file: !3, line: 174, column: 28)
!905 = !DILocation(line: 180, column: 35, scope: !883)
!906 = !DILocation(line: 180, column: 47, scope: !883)
!907 = !DILocation(line: 180, column: 60, scope: !883)
!908 = !DILocation(line: 180, column: 68, scope: !883)
!909 = !DILocation(line: 180, column: 31, scope: !883)
!910 = !DILocation(line: 180, column: 2, scope: !883)
!911 = !DILocation(line: 180, column: 12, scope: !883)
!912 = !DILocation(line: 180, column: 18, scope: !883)
!913 = !DILocation(line: 180, column: 29, scope: !883)
!914 = !DILocation(line: 182, column: 36, scope: !883)
!915 = !DILocation(line: 182, column: 48, scope: !883)
!916 = !DILocation(line: 182, column: 6, scope: !883)
!917 = !DILocation(line: 181, column: 2, scope: !883)
!918 = !DILocation(line: 181, column: 12, scope: !883)
!919 = !DILocation(line: 181, column: 18, scope: !883)
!920 = !DILocation(line: 181, column: 23, scope: !883)
!921 = !DILocation(line: 185, column: 28, scope: !883)
!922 = !DILocation(line: 185, column: 38, scope: !883)
!923 = !DILocation(line: 185, column: 44, scope: !883)
!924 = !DILocation(line: 185, column: 50, scope: !883)
!925 = !DILocation(line: 185, column: 6, scope: !883)
!926 = !DILocation(line: 184, column: 9, scope: !883)
!927 = !DILocation(line: 184, column: 2, scope: !883)
!928 = !DILabel(scope: !883, name: "cleanup", file: !3, line: 188)
!929 = !DILocation(line: 188, column: 1, scope: !883)
!930 = !DILocation(line: 193, column: 27, scope: !883)
!931 = !DILocation(line: 193, column: 2, scope: !883)
!932 = !DILocation(line: 194, column: 2, scope: !883)
!933 = distinct !DISubprogram(name: "acpi_ex_create_region", scope: !3, file: !3, line: 213, type: !934, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!934 = !DISubroutineType(types: !935)
!935 = !{!6, !73, !8, !27, !124}
!936 = !DILocalVariable(name: "aml_start", arg: 1, scope: !933, file: !3, line: 213, type: !73)
!937 = !DILocation(line: 213, column: 28, scope: !933)
!938 = !DILocalVariable(name: "aml_length", arg: 2, scope: !933, file: !3, line: 214, type: !8)
!939 = !DILocation(line: 214, column: 13, scope: !933)
!940 = !DILocalVariable(name: "space_id", arg: 3, scope: !933, file: !3, line: 215, type: !27)
!941 = !DILocation(line: 215, column: 12, scope: !933)
!942 = !DILocalVariable(name: "walk_state", arg: 4, scope: !933, file: !3, line: 215, type: !124)
!943 = !DILocation(line: 215, column: 46, scope: !933)
!944 = !DILocalVariable(name: "status", scope: !933, file: !3, line: 217, type: !6)
!945 = !DILocation(line: 217, column: 14, scope: !933)
!946 = !DILocalVariable(name: "obj_desc", scope: !933, file: !3, line: 218, type: !18)
!947 = !DILocation(line: 218, column: 29, scope: !933)
!948 = !DILocalVariable(name: "node", scope: !933, file: !3, line: 219, type: !13)
!949 = !DILocation(line: 219, column: 30, scope: !933)
!950 = !DILocalVariable(name: "region_obj2", scope: !933, file: !3, line: 220, type: !18)
!951 = !DILocation(line: 220, column: 29, scope: !933)
!952 = !DILocation(line: 226, column: 9, scope: !933)
!953 = !DILocation(line: 226, column: 21, scope: !933)
!954 = !DILocation(line: 226, column: 25, scope: !933)
!955 = !DILocation(line: 226, column: 32, scope: !933)
!956 = !DILocation(line: 226, column: 7, scope: !933)
!957 = !DILocation(line: 232, column: 34, scope: !958)
!958 = distinct !DILexicalBlock(scope: !933, file: !3, line: 232, column: 6)
!959 = !DILocation(line: 232, column: 6, scope: !958)
!960 = !DILocation(line: 232, column: 6, scope: !933)
!961 = !DILocation(line: 233, column: 3, scope: !962)
!962 = distinct !DILexicalBlock(scope: !958, file: !3, line: 232, column: 41)
!963 = !DILocation(line: 240, column: 30, scope: !964)
!964 = distinct !DILexicalBlock(scope: !933, file: !3, line: 240, column: 6)
!965 = !DILocation(line: 240, column: 7, scope: !964)
!966 = !DILocation(line: 240, column: 6, scope: !933)
!967 = !DILocation(line: 246, column: 3, scope: !968)
!968 = distinct !DILexicalBlock(scope: !964, file: !3, line: 240, column: 41)
!969 = !DILocation(line: 249, column: 2, scope: !968)
!970 = !DILocation(line: 256, column: 13, scope: !933)
!971 = !DILocation(line: 256, column: 11, scope: !933)
!972 = !DILocation(line: 257, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !933, file: !3, line: 257, column: 6)
!974 = !DILocation(line: 257, column: 6, scope: !933)
!975 = !DILocation(line: 258, column: 10, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !3, line: 257, column: 17)
!977 = !DILocation(line: 259, column: 3, scope: !976)
!978 = !DILocation(line: 266, column: 45, scope: !933)
!979 = !DILocation(line: 266, column: 16, scope: !933)
!980 = !DILocation(line: 266, column: 14, scope: !933)
!981 = !DILocation(line: 267, column: 33, scope: !933)
!982 = !DILocation(line: 267, column: 2, scope: !933)
!983 = !DILocation(line: 267, column: 15, scope: !933)
!984 = !DILocation(line: 267, column: 21, scope: !933)
!985 = !DILocation(line: 267, column: 31, scope: !933)
!986 = !DILocation(line: 268, column: 34, scope: !933)
!987 = !DILocation(line: 268, column: 2, scope: !933)
!988 = !DILocation(line: 268, column: 15, scope: !933)
!989 = !DILocation(line: 268, column: 21, scope: !933)
!990 = !DILocation(line: 268, column: 32, scope: !933)
!991 = !DILocation(line: 269, column: 2, scope: !933)
!992 = !DILocation(line: 269, column: 15, scope: !933)
!993 = !DILocation(line: 269, column: 21, scope: !933)
!994 = !DILocation(line: 269, column: 32, scope: !933)
!995 = !DILocation(line: 270, column: 6, scope: !996)
!996 = distinct !DILexicalBlock(scope: !933, file: !3, line: 270, column: 6)
!997 = !DILocation(line: 270, column: 18, scope: !996)
!998 = !DILocation(line: 270, column: 6, scope: !933)
!999 = !DILocation(line: 272, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !996, file: !3, line: 270, column: 30)
!1001 = !DILocation(line: 272, column: 19, scope: !1000)
!1002 = !DILocation(line: 272, column: 31, scope: !1000)
!1003 = !DILocation(line: 272, column: 37, scope: !1000)
!1004 = !DILocation(line: 271, column: 3, scope: !1000)
!1005 = !DILocation(line: 271, column: 16, scope: !1000)
!1006 = !DILocation(line: 271, column: 22, scope: !1000)
!1007 = !DILocation(line: 271, column: 33, scope: !1000)
!1008 = !DILocation(line: 273, column: 2, scope: !1000)
!1009 = !DILocation(line: 274, column: 35, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !996, file: !3, line: 273, column: 9)
!1011 = !DILocation(line: 274, column: 3, scope: !1010)
!1012 = !DILocation(line: 274, column: 16, scope: !1010)
!1013 = !DILocation(line: 274, column: 22, scope: !1010)
!1014 = !DILocation(line: 274, column: 33, scope: !1010)
!1015 = !DILocation(line: 279, column: 30, scope: !933)
!1016 = !DILocation(line: 279, column: 2, scope: !933)
!1017 = !DILocation(line: 279, column: 12, scope: !933)
!1018 = !DILocation(line: 279, column: 19, scope: !933)
!1019 = !DILocation(line: 279, column: 28, scope: !933)
!1020 = !DILocation(line: 280, column: 2, scope: !933)
!1021 = !DILocation(line: 280, column: 12, scope: !933)
!1022 = !DILocation(line: 280, column: 19, scope: !933)
!1023 = !DILocation(line: 280, column: 27, scope: !933)
!1024 = !DILocation(line: 281, column: 2, scope: !933)
!1025 = !DILocation(line: 281, column: 12, scope: !933)
!1026 = !DILocation(line: 281, column: 19, scope: !933)
!1027 = !DILocation(line: 281, column: 26, scope: !933)
!1028 = !DILocation(line: 282, column: 26, scope: !933)
!1029 = !DILocation(line: 282, column: 2, scope: !933)
!1030 = !DILocation(line: 282, column: 12, scope: !933)
!1031 = !DILocation(line: 282, column: 19, scope: !933)
!1032 = !DILocation(line: 282, column: 24, scope: !933)
!1033 = !DILocation(line: 283, column: 2, scope: !933)
!1034 = !DILocation(line: 283, column: 12, scope: !933)
!1035 = !DILocation(line: 283, column: 19, scope: !933)
!1036 = !DILocation(line: 283, column: 27, scope: !933)
!1037 = !DILocation(line: 284, column: 2, scope: !933)
!1038 = !DILocation(line: 284, column: 12, scope: !933)
!1039 = !DILocation(line: 284, column: 19, scope: !933)
!1040 = !DILocation(line: 284, column: 25, scope: !933)
!1041 = !DILocation(line: 290, column: 33, scope: !933)
!1042 = !DILocation(line: 290, column: 39, scope: !933)
!1043 = !DILocation(line: 290, column: 11, scope: !933)
!1044 = !DILocation(line: 290, column: 9, scope: !933)
!1045 = !DILocation(line: 290, column: 2, scope: !933)
!1046 = !DILabel(scope: !933, name: "cleanup", file: !3, line: 292)
!1047 = !DILocation(line: 292, column: 1, scope: !933)
!1048 = !DILocation(line: 296, column: 27, scope: !933)
!1049 = !DILocation(line: 296, column: 2, scope: !933)
!1050 = !DILocation(line: 297, column: 2, scope: !933)
!1051 = !DILocation(line: 298, column: 1, scope: !933)
!1052 = distinct !DISubprogram(name: "acpi_ex_create_processor", scope: !3, file: !3, line: 314, type: !122, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1053 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1052, file: !3, line: 314, type: !124)
!1054 = !DILocation(line: 314, column: 62, scope: !1052)
!1055 = !DILocalVariable(name: "operand", scope: !1052, file: !3, line: 316, type: !88)
!1056 = !DILocation(line: 316, column: 30, scope: !1052)
!1057 = !DILocation(line: 316, column: 41, scope: !1052)
!1058 = !DILocation(line: 316, column: 53, scope: !1052)
!1059 = !DILocalVariable(name: "obj_desc", scope: !1052, file: !3, line: 317, type: !18)
!1060 = !DILocation(line: 317, column: 29, scope: !1052)
!1061 = !DILocalVariable(name: "status", scope: !1052, file: !3, line: 318, type: !6)
!1062 = !DILocation(line: 318, column: 14, scope: !1052)
!1063 = !DILocation(line: 324, column: 13, scope: !1052)
!1064 = !DILocation(line: 324, column: 11, scope: !1052)
!1065 = !DILocation(line: 325, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 325, column: 6)
!1067 = !DILocation(line: 325, column: 6, scope: !1052)
!1068 = !DILocation(line: 326, column: 3, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 325, column: 17)
!1070 = !DILocation(line: 331, column: 37, scope: !1052)
!1071 = !DILocation(line: 331, column: 49, scope: !1052)
!1072 = !DILocation(line: 331, column: 57, scope: !1052)
!1073 = !DILocation(line: 331, column: 32, scope: !1052)
!1074 = !DILocation(line: 331, column: 2, scope: !1052)
!1075 = !DILocation(line: 331, column: 12, scope: !1052)
!1076 = !DILocation(line: 331, column: 22, scope: !1052)
!1077 = !DILocation(line: 331, column: 30, scope: !1052)
!1078 = !DILocation(line: 332, column: 36, scope: !1052)
!1079 = !DILocation(line: 332, column: 48, scope: !1052)
!1080 = !DILocation(line: 332, column: 56, scope: !1052)
!1081 = !DILocation(line: 332, column: 31, scope: !1052)
!1082 = !DILocation(line: 332, column: 2, scope: !1052)
!1083 = !DILocation(line: 332, column: 12, scope: !1052)
!1084 = !DILocation(line: 332, column: 22, scope: !1052)
!1085 = !DILocation(line: 332, column: 29, scope: !1052)
!1086 = !DILocation(line: 334, column: 23, scope: !1052)
!1087 = !DILocation(line: 334, column: 35, scope: !1052)
!1088 = !DILocation(line: 334, column: 43, scope: !1052)
!1089 = !DILocation(line: 333, column: 2, scope: !1052)
!1090 = !DILocation(line: 333, column: 12, scope: !1052)
!1091 = !DILocation(line: 333, column: 22, scope: !1052)
!1092 = !DILocation(line: 333, column: 30, scope: !1052)
!1093 = !DILocation(line: 338, column: 63, scope: !1052)
!1094 = !DILocation(line: 338, column: 33, scope: !1052)
!1095 = !DILocation(line: 339, column: 12, scope: !1052)
!1096 = !DILocation(line: 338, column: 11, scope: !1052)
!1097 = !DILocation(line: 338, column: 9, scope: !1052)
!1098 = !DILocation(line: 343, column: 27, scope: !1052)
!1099 = !DILocation(line: 343, column: 2, scope: !1052)
!1100 = !DILocation(line: 344, column: 2, scope: !1052)
!1101 = !DILocation(line: 345, column: 1, scope: !1052)
!1102 = distinct !DISubprogram(name: "acpi_ex_create_power_resource", scope: !3, file: !3, line: 361, type: !122, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1103 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1102, file: !3, line: 361, type: !124)
!1104 = !DILocation(line: 361, column: 67, scope: !1102)
!1105 = !DILocalVariable(name: "operand", scope: !1102, file: !3, line: 363, type: !88)
!1106 = !DILocation(line: 363, column: 30, scope: !1102)
!1107 = !DILocation(line: 363, column: 41, scope: !1102)
!1108 = !DILocation(line: 363, column: 53, scope: !1102)
!1109 = !DILocalVariable(name: "status", scope: !1102, file: !3, line: 364, type: !6)
!1110 = !DILocation(line: 364, column: 14, scope: !1102)
!1111 = !DILocalVariable(name: "obj_desc", scope: !1102, file: !3, line: 365, type: !18)
!1112 = !DILocation(line: 365, column: 29, scope: !1102)
!1113 = !DILocation(line: 371, column: 13, scope: !1102)
!1114 = !DILocation(line: 371, column: 11, scope: !1102)
!1115 = !DILocation(line: 372, column: 7, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 372, column: 6)
!1117 = !DILocation(line: 372, column: 6, scope: !1102)
!1118 = !DILocation(line: 373, column: 3, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 372, column: 17)
!1120 = !DILocation(line: 378, column: 47, scope: !1102)
!1121 = !DILocation(line: 378, column: 59, scope: !1102)
!1122 = !DILocation(line: 378, column: 67, scope: !1102)
!1123 = !DILocation(line: 378, column: 42, scope: !1102)
!1124 = !DILocation(line: 378, column: 2, scope: !1102)
!1125 = !DILocation(line: 378, column: 12, scope: !1102)
!1126 = !DILocation(line: 378, column: 27, scope: !1102)
!1127 = !DILocation(line: 378, column: 40, scope: !1102)
!1128 = !DILocation(line: 380, column: 12, scope: !1102)
!1129 = !DILocation(line: 380, column: 24, scope: !1102)
!1130 = !DILocation(line: 380, column: 32, scope: !1102)
!1131 = !DILocation(line: 380, column: 6, scope: !1102)
!1132 = !DILocation(line: 379, column: 2, scope: !1102)
!1133 = !DILocation(line: 379, column: 12, scope: !1102)
!1134 = !DILocation(line: 379, column: 27, scope: !1102)
!1135 = !DILocation(line: 379, column: 42, scope: !1102)
!1136 = !DILocation(line: 384, column: 63, scope: !1102)
!1137 = !DILocation(line: 384, column: 33, scope: !1102)
!1138 = !DILocation(line: 385, column: 12, scope: !1102)
!1139 = !DILocation(line: 384, column: 11, scope: !1102)
!1140 = !DILocation(line: 384, column: 9, scope: !1102)
!1141 = !DILocation(line: 389, column: 27, scope: !1102)
!1142 = !DILocation(line: 389, column: 2, scope: !1102)
!1143 = !DILocation(line: 390, column: 2, scope: !1102)
!1144 = !DILocation(line: 391, column: 1, scope: !1102)
!1145 = distinct !DISubprogram(name: "acpi_ex_create_method", scope: !3, file: !3, line: 408, type: !1146, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!6, !73, !8, !124}
!1148 = !DILocalVariable(name: "aml_start", arg: 1, scope: !1145, file: !3, line: 408, type: !73)
!1149 = !DILocation(line: 408, column: 28, scope: !1145)
!1150 = !DILocalVariable(name: "aml_length", arg: 2, scope: !1145, file: !3, line: 409, type: !8)
!1151 = !DILocation(line: 409, column: 13, scope: !1145)
!1152 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1145, file: !3, line: 409, type: !124)
!1153 = !DILocation(line: 409, column: 49, scope: !1145)
!1154 = !DILocalVariable(name: "operand", scope: !1145, file: !3, line: 411, type: !88)
!1155 = !DILocation(line: 411, column: 30, scope: !1145)
!1156 = !DILocation(line: 411, column: 41, scope: !1145)
!1157 = !DILocation(line: 411, column: 53, scope: !1145)
!1158 = !DILocalVariable(name: "obj_desc", scope: !1145, file: !3, line: 412, type: !18)
!1159 = !DILocation(line: 412, column: 29, scope: !1145)
!1160 = !DILocalVariable(name: "status", scope: !1145, file: !3, line: 413, type: !6)
!1161 = !DILocation(line: 413, column: 14, scope: !1145)
!1162 = !DILocalVariable(name: "method_flags", scope: !1145, file: !3, line: 414, type: !27)
!1163 = !DILocation(line: 414, column: 5, scope: !1145)
!1164 = !DILocation(line: 420, column: 13, scope: !1145)
!1165 = !DILocation(line: 420, column: 11, scope: !1145)
!1166 = !DILocation(line: 421, column: 7, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 421, column: 6)
!1168 = !DILocation(line: 421, column: 6, scope: !1145)
!1169 = !DILocation(line: 422, column: 10, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 421, column: 17)
!1171 = !DILocation(line: 423, column: 3, scope: !1170)
!1172 = !DILocation(line: 428, column: 31, scope: !1145)
!1173 = !DILocation(line: 428, column: 2, scope: !1145)
!1174 = !DILocation(line: 428, column: 12, scope: !1145)
!1175 = !DILocation(line: 428, column: 19, scope: !1145)
!1176 = !DILocation(line: 428, column: 29, scope: !1145)
!1177 = !DILocation(line: 429, column: 32, scope: !1145)
!1178 = !DILocation(line: 429, column: 2, scope: !1145)
!1179 = !DILocation(line: 429, column: 12, scope: !1145)
!1180 = !DILocation(line: 429, column: 19, scope: !1145)
!1181 = !DILocation(line: 429, column: 30, scope: !1145)
!1182 = !DILocation(line: 430, column: 26, scope: !1145)
!1183 = !DILocation(line: 430, column: 2, scope: !1145)
!1184 = !DILocation(line: 430, column: 12, scope: !1145)
!1185 = !DILocation(line: 430, column: 19, scope: !1145)
!1186 = !DILocation(line: 430, column: 24, scope: !1145)
!1187 = !DILocation(line: 436, column: 21, scope: !1145)
!1188 = !DILocation(line: 436, column: 33, scope: !1145)
!1189 = !DILocation(line: 436, column: 41, scope: !1145)
!1190 = !DILocation(line: 436, column: 17, scope: !1145)
!1191 = !DILocation(line: 436, column: 15, scope: !1145)
!1192 = !DILocation(line: 438, column: 7, scope: !1145)
!1193 = !DILocation(line: 438, column: 20, scope: !1145)
!1194 = !DILocation(line: 437, column: 33, scope: !1145)
!1195 = !DILocation(line: 437, column: 2, scope: !1145)
!1196 = !DILocation(line: 437, column: 12, scope: !1145)
!1197 = !DILocation(line: 437, column: 19, scope: !1145)
!1198 = !DILocation(line: 437, column: 31, scope: !1145)
!1199 = !DILocation(line: 444, column: 6, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 444, column: 6)
!1201 = !DILocation(line: 444, column: 19, scope: !1200)
!1202 = !DILocation(line: 444, column: 6, scope: !1145)
!1203 = !DILocation(line: 445, column: 3, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 444, column: 44)
!1205 = !DILocation(line: 445, column: 13, scope: !1204)
!1206 = !DILocation(line: 445, column: 20, scope: !1204)
!1207 = !DILocation(line: 445, column: 31, scope: !1204)
!1208 = !DILocation(line: 452, column: 9, scope: !1204)
!1209 = !DILocation(line: 452, column: 22, scope: !1204)
!1210 = !DILocation(line: 452, column: 47, scope: !1204)
!1211 = !DILocation(line: 451, column: 33, scope: !1204)
!1212 = !DILocation(line: 451, column: 3, scope: !1204)
!1213 = !DILocation(line: 451, column: 13, scope: !1204)
!1214 = !DILocation(line: 451, column: 20, scope: !1204)
!1215 = !DILocation(line: 451, column: 31, scope: !1204)
!1216 = !DILocation(line: 453, column: 2, scope: !1204)
!1217 = !DILocation(line: 457, column: 63, scope: !1145)
!1218 = !DILocation(line: 457, column: 33, scope: !1145)
!1219 = !DILocation(line: 458, column: 12, scope: !1145)
!1220 = !DILocation(line: 457, column: 11, scope: !1145)
!1221 = !DILocation(line: 457, column: 9, scope: !1145)
!1222 = !DILocation(line: 462, column: 27, scope: !1145)
!1223 = !DILocation(line: 462, column: 2, scope: !1145)
!1224 = !DILabel(scope: !1145, name: "exit", file: !3, line: 464)
!1225 = !DILocation(line: 464, column: 1, scope: !1145)
!1226 = !DILocation(line: 467, column: 27, scope: !1145)
!1227 = !DILocation(line: 467, column: 2, scope: !1145)
!1228 = !DILocation(line: 468, column: 2, scope: !1145)
