; ModuleID = '../bcout/drivers/acpi/acpica/exoparg2.llvm.bc'
source_filename = "drivers/acpi/acpica/exoparg2.c"
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
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }

@_acpi_module_name = internal constant [9 x i8] c"exoparg2\00", align 1, !dbg !0
@.str = private unnamed_addr constant [35 x i8] c"Unexpected notify object type [%s]\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid object type: %X\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Index (0x%X%8.8X) is beyond end of object (length 0x%X)\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_opcode_2A_0T_0R(%struct.acpi_walk_state* %walk_state) #0 !dbg !799 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %operand = alloca %union.acpi_operand_object**, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %value = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !801, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !803, metadata !DIExpression()), !dbg !804
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !805
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !806
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !805
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !804
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !807, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.declare(metadata i32* %value, metadata !809, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.declare(metadata i32* %status, metadata !811, metadata !DIExpression()), !dbg !812
  store i32 0, i32* %status, align 4, !dbg !812
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !813
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 3, !dbg !814
  %2 = load i16, i16* %opcode, align 2, !dbg !814
  %conv = zext i16 %2 to i32, !dbg !813
  switch i32 %conv, label %sw.default [
    i32 134, label %sw.bb
  ], !dbg !815

sw.bb:                                            ; preds = %entry
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !816
  %arrayidx1 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %3, i64 0, !dbg !816
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx1, align 8, !dbg !816
  %5 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_namespace_node*, !dbg !818
  store %struct.acpi_namespace_node* %5, %struct.acpi_namespace_node** %node, align 8, !dbg !819
  %6 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !820
  %arrayidx2 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %6, i64 1, !dbg !820
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx2, align 8, !dbg !820
  %integer = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_integer*, !dbg !821
  %value3 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !822
  %8 = load i64, i64* %value3, align 8, !dbg !822
  %conv4 = trunc i64 %8 to i32, !dbg !823
  store i32 %conv4, i32* %value, align 4, !dbg !824
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !825
  %call = call zeroext i8 @acpi_ev_is_notify_object(%struct.acpi_namespace_node* %9) #4, !dbg !827
  %tobool = icmp ne i8 %call, 0, !dbg !827
  br i1 %tobool, label %if.end, label %if.then, !dbg !828

if.then:                                          ; preds = %sw.bb
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !829
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 2, !dbg !829
  %11 = load i8, i8* %type, align 1, !dbg !829
  %conv5 = zext i8 %11 to i32, !dbg !829
  %call6 = call i8* @acpi_ut_get_type_name(i32 %conv5) #4, !dbg !829
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %call6) #4, !dbg !829
  store i32 12291, i32* %status, align 4, !dbg !831
  br label %sw.epilog, !dbg !832

if.end:                                           ; preds = %sw.bb
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !833
  %13 = load i32, i32* %value, align 4, !dbg !834
  %call7 = call i32 @acpi_ev_queue_notify_request(%struct.acpi_namespace_node* %12, i32 %13) #4, !dbg !835
  store i32 %call7, i32* %status, align 4, !dbg !836
  br label %sw.epilog, !dbg !837

sw.default:                                       ; preds = %entry
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !838
  %opcode8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 3, !dbg !838
  %15 = load i16, i16* %opcode8, align 2, !dbg !838
  %conv9 = zext i16 %15 to i32, !dbg !838
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %conv9) #4, !dbg !838
  store i32 12289, i32* %status, align 4, !dbg !839
  br label %sw.epilog, !dbg !840

sw.epilog:                                        ; preds = %sw.default, %if.end, %if.then
  %16 = load i32, i32* %status, align 4, !dbg !841
  ret i32 %16, !dbg !841
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ev_is_notify_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_queue_notify_request(%struct.acpi_namespace_node*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_opcode_2A_2T_1R(%struct.acpi_walk_state* %walk_state) #0 !dbg !842 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %operand = alloca %union.acpi_operand_object**, align 8
  %return_desc1 = alloca %union.acpi_operand_object*, align 8
  %return_desc2 = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !843, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !845, metadata !DIExpression()), !dbg !846
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !847
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !848
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !847
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !846
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc1, metadata !849, metadata !DIExpression()), !dbg !850
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_desc1, align 8, !dbg !850
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc2, metadata !851, metadata !DIExpression()), !dbg !852
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_desc2, align 8, !dbg !852
  call void @llvm.dbg.declare(metadata i32* %status, metadata !853, metadata !DIExpression()), !dbg !854
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !855
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 3, !dbg !856
  %2 = load i16, i16* %opcode, align 2, !dbg !856
  %conv = zext i16 %2 to i32, !dbg !855
  switch i32 %conv, label %sw.default [
    i32 120, label %sw.bb
  ], !dbg !857

sw.bb:                                            ; preds = %entry
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 140, i32 128, i32 1) #4, !dbg !858
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %return_desc1, align 8, !dbg !860
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc1, align 8, !dbg !861
  %tobool = icmp ne %union.acpi_operand_object* %3, null, !dbg !861
  br i1 %tobool, label %if.end, label %if.then, !dbg !863

if.then:                                          ; preds = %sw.bb
  store i32 4, i32* %status, align 4, !dbg !864
  br label %cleanup, !dbg !866

if.end:                                           ; preds = %sw.bb
  %call1 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 147, i32 128, i32 1) #4, !dbg !867
  store %union.acpi_operand_object* %call1, %union.acpi_operand_object** %return_desc2, align 8, !dbg !868
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc2, align 8, !dbg !869
  %tobool2 = icmp ne %union.acpi_operand_object* %4, null, !dbg !869
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !871

if.then3:                                         ; preds = %if.end
  store i32 4, i32* %status, align 4, !dbg !872
  br label %cleanup, !dbg !874

if.end4:                                          ; preds = %if.end
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !875
  %arrayidx5 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %5, i64 0, !dbg !875
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx5, align 8, !dbg !875
  %integer = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_integer*, !dbg !876
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !877
  %7 = load i64, i64* %value, align 8, !dbg !877
  %8 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !878
  %arrayidx6 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %8, i64 1, !dbg !878
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx6, align 8, !dbg !878
  %integer7 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_integer*, !dbg !879
  %value8 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer7, i32 0, i32 6, !dbg !880
  %10 = load i64, i64* %value8, align 8, !dbg !880
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc1, align 8, !dbg !881
  %integer9 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_integer*, !dbg !882
  %value10 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer9, i32 0, i32 6, !dbg !883
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc2, align 8, !dbg !884
  %integer11 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_integer*, !dbg !885
  %value12 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer11, i32 0, i32 6, !dbg !886
  %call13 = call i32 @acpi_ut_divide(i64 %7, i64 %10, i64* %value10, i64* %value12) #4, !dbg !887
  store i32 %call13, i32* %status, align 4, !dbg !888
  %13 = load i32, i32* %status, align 4, !dbg !889
  %tobool14 = icmp ne i32 %13, 0, !dbg !889
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !891

if.then15:                                        ; preds = %if.end4
  br label %cleanup, !dbg !892

if.end16:                                         ; preds = %if.end4
  br label %sw.epilog, !dbg !894

sw.default:                                       ; preds = %entry
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !895
  %opcode17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 3, !dbg !895
  %15 = load i16, i16* %opcode17, align 2, !dbg !895
  %conv18 = zext i16 %15 to i32, !dbg !895
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 166, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %conv18) #4, !dbg !895
  store i32 12289, i32* %status, align 4, !dbg !896
  br label %cleanup, !dbg !897

sw.epilog:                                        ; preds = %if.end16
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc2, align 8, !dbg !898
  %17 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !899
  %arrayidx19 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %17, i64 2, !dbg !899
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx19, align 8, !dbg !899
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !900
  %call20 = call i32 @acpi_ex_store(%union.acpi_operand_object* %16, %union.acpi_operand_object* %18, %struct.acpi_walk_state* %19) #4, !dbg !901
  store i32 %call20, i32* %status, align 4, !dbg !902
  %20 = load i32, i32* %status, align 4, !dbg !903
  %tobool21 = icmp ne i32 %20, 0, !dbg !903
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !905

if.then22:                                        ; preds = %sw.epilog
  br label %cleanup, !dbg !906

if.end23:                                         ; preds = %sw.epilog
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc1, align 8, !dbg !908
  %22 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !909
  %arrayidx24 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %22, i64 3, !dbg !909
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx24, align 8, !dbg !909
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !910
  %call25 = call i32 @acpi_ex_store(%union.acpi_operand_object* %21, %union.acpi_operand_object* %23, %struct.acpi_walk_state* %24) #4, !dbg !911
  store i32 %call25, i32* %status, align 4, !dbg !912
  %25 = load i32, i32* %status, align 4, !dbg !913
  %tobool26 = icmp ne i32 %25, 0, !dbg !913
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !915

if.then27:                                        ; preds = %if.end23
  br label %cleanup, !dbg !916

if.end28:                                         ; preds = %if.end23
  br label %cleanup, !dbg !913

cleanup:                                          ; preds = %if.end28, %if.then27, %if.then22, %sw.default, %if.then15, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !918), !dbg !919
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc2, align 8, !dbg !920
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %26) #4, !dbg !921
  %27 = load i32, i32* %status, align 4, !dbg !922
  %tobool29 = icmp ne i32 %27, 0, !dbg !922
  br i1 %tobool29, label %if.then30, label %if.else, !dbg !924

if.then30:                                        ; preds = %cleanup
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc1, align 8, !dbg !925
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %28) #4, !dbg !927
  br label %if.end31, !dbg !928

if.else:                                          ; preds = %cleanup
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc1, align 8, !dbg !929
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !931
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 43, !dbg !932
  store %union.acpi_operand_object* %29, %union.acpi_operand_object** %result_obj, align 8, !dbg !933
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then30
  %31 = load i32, i32* %status, align 4, !dbg !934
  ret i32 %31, !dbg !934
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_divide(i64, i64, i64*, i64*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_store(%union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_opcode_2A_1T_1R(%struct.acpi_walk_state* %walk_state) #0 !dbg !935 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %operand = alloca %union.acpi_operand_object**, align 8
  %return_desc = alloca %union.acpi_operand_object*, align 8
  %index = alloca i64, align 8
  %status = alloca i32, align 4
  %length = alloca i64, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !936, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !938, metadata !DIExpression()), !dbg !939
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !940
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !941
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !940
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !939
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc, metadata !942, metadata !DIExpression()), !dbg !943
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_desc, align 8, !dbg !943
  call void @llvm.dbg.declare(metadata i64* %index, metadata !944, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.declare(metadata i32* %status, metadata !946, metadata !DIExpression()), !dbg !947
  store i32 0, i32* %status, align 4, !dbg !947
  call void @llvm.dbg.declare(metadata i64* %length, metadata !948, metadata !DIExpression()), !dbg !950
  store i64 0, i64* %length, align 8, !dbg !950
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !951
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 41, !dbg !953
  %2 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !953
  %flags = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %2, i32 0, i32 2, !dbg !954
  %3 = load i16, i16* %flags, align 4, !dbg !954
  %conv = zext i16 %3 to i32, !dbg !951
  %and = and i32 %conv, 4, !dbg !955
  %tobool = icmp ne i32 %and, 0, !dbg !955
  br i1 %tobool, label %if.then, label %if.end10, !dbg !956

if.then:                                          ; preds = %entry
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 238, i32 128, i32 1) #4, !dbg !957
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %return_desc, align 8, !dbg !959
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !960
  %tobool1 = icmp ne %union.acpi_operand_object* %4, null, !dbg !960
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !962

if.then2:                                         ; preds = %if.then
  store i32 4, i32* %status, align 4, !dbg !963
  br label %cleanup, !dbg !965

if.end:                                           ; preds = %if.then
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !966
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 3, !dbg !967
  %6 = load i16, i16* %opcode, align 2, !dbg !967
  %7 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !968
  %arrayidx3 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %7, i64 0, !dbg !968
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx3, align 8, !dbg !968
  %integer = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_integer*, !dbg !969
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !970
  %9 = load i64, i64* %value, align 8, !dbg !970
  %10 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !971
  %arrayidx4 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %10, i64 1, !dbg !971
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx4, align 8, !dbg !971
  %integer5 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_integer*, !dbg !972
  %value6 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer5, i32 0, i32 6, !dbg !973
  %12 = load i64, i64* %value6, align 8, !dbg !973
  %call7 = call i64 @acpi_ex_do_math_op(i16 zeroext %6, i64 %9, i64 %12) #4, !dbg !974
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !975
  %integer8 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_integer*, !dbg !976
  %value9 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer8, i32 0, i32 6, !dbg !977
  store i64 %call7, i64* %value9, align 8, !dbg !978
  br label %store_result_to_target, !dbg !979

if.end10:                                         ; preds = %entry
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !980
  %opcode11 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 3, !dbg !981
  %15 = load i16, i16* %opcode11, align 2, !dbg !981
  %conv12 = zext i16 %15 to i32, !dbg !980
  switch i32 %conv12, label %sw.default142 [
    i32 133, label %sw.bb
    i32 115, label %sw.bb26
    i32 156, label %sw.bb30
    i32 132, label %sw.bb53
    i32 136, label %sw.bb57
  ], !dbg !982

sw.bb:                                            ; preds = %if.end10
  %call13 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 254, i32 128, i32 1) #4, !dbg !983
  store %union.acpi_operand_object* %call13, %union.acpi_operand_object** %return_desc, align 8, !dbg !985
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !986
  %tobool14 = icmp ne %union.acpi_operand_object* %16, null, !dbg !986
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !988

if.then15:                                        ; preds = %sw.bb
  store i32 4, i32* %status, align 4, !dbg !989
  br label %cleanup, !dbg !991

if.end16:                                         ; preds = %sw.bb
  %17 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !992
  %arrayidx17 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %17, i64 0, !dbg !992
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx17, align 8, !dbg !992
  %integer18 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_integer*, !dbg !993
  %value19 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer18, i32 0, i32 6, !dbg !994
  %19 = load i64, i64* %value19, align 8, !dbg !994
  %20 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !995
  %arrayidx20 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %20, i64 1, !dbg !995
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx20, align 8, !dbg !995
  %integer21 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_integer*, !dbg !996
  %value22 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer21, i32 0, i32 6, !dbg !997
  %22 = load i64, i64* %value22, align 8, !dbg !997
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !998
  %integer23 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_integer*, !dbg !999
  %value24 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer23, i32 0, i32 6, !dbg !1000
  %call25 = call i32 @acpi_ut_divide(i64 %19, i64 %22, i64* null, i64* %value24) #4, !dbg !1001
  store i32 %call25, i32* %status, align 4, !dbg !1002
  br label %sw.epilog145, !dbg !1003

sw.bb26:                                          ; preds = %if.end10
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1004
  %arrayidx27 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %24, i64 0, !dbg !1004
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx27, align 8, !dbg !1004
  %26 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1005
  %arrayidx28 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %26, i64 1, !dbg !1005
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx28, align 8, !dbg !1005
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1006
  %call29 = call i32 @acpi_ex_do_concatenate(%union.acpi_operand_object* %25, %union.acpi_operand_object* %27, %union.acpi_operand_object** %return_desc, %struct.acpi_walk_state* %28) #4, !dbg !1007
  store i32 %call29, i32* %status, align 4, !dbg !1008
  br label %sw.epilog145, !dbg !1009

sw.bb30:                                          ; preds = %if.end10
  br label %while.cond, !dbg !1010

while.cond:                                       ; preds = %while.body, %sw.bb30
  %29 = load i64, i64* %length, align 8, !dbg !1011
  %30 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1012
  %arrayidx31 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %30, i64 0, !dbg !1012
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx31, align 8, !dbg !1012
  %buffer = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_buffer*, !dbg !1013
  %length32 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !1014
  %32 = load i32, i32* %length32, align 8, !dbg !1014
  %conv33 = zext i32 %32 to i64, !dbg !1012
  %cmp = icmp ult i64 %29, %conv33, !dbg !1015
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !1016

land.lhs.true:                                    ; preds = %while.cond
  %33 = load i64, i64* %length, align 8, !dbg !1017
  %34 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1018
  %arrayidx35 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %34, i64 1, !dbg !1018
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx35, align 8, !dbg !1018
  %integer36 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_integer*, !dbg !1019
  %value37 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer36, i32 0, i32 6, !dbg !1020
  %36 = load i64, i64* %value37, align 8, !dbg !1020
  %cmp38 = icmp ult i64 %33, %36, !dbg !1021
  br i1 %cmp38, label %land.rhs, label %land.end, !dbg !1022

land.rhs:                                         ; preds = %land.lhs.true
  %37 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1023
  %arrayidx40 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %37, i64 0, !dbg !1023
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx40, align 8, !dbg !1023
  %buffer41 = bitcast %union.acpi_operand_object* %38 to %struct.acpi_object_buffer*, !dbg !1024
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer41, i32 0, i32 5, !dbg !1025
  %39 = load i8*, i8** %pointer, align 8, !dbg !1025
  %40 = load i64, i64* %length, align 8, !dbg !1026
  %arrayidx42 = getelementptr i8, i8* %39, i64 %40, !dbg !1023
  %41 = load i8, i8* %arrayidx42, align 1, !dbg !1023
  %conv43 = zext i8 %41 to i32, !dbg !1027
  %tobool44 = icmp ne i32 %conv43, 0, !dbg !1022
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %42 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool44, %land.rhs ], !dbg !1028
  br i1 %42, label %while.body, label %while.end, !dbg !1010

while.body:                                       ; preds = %land.end
  %43 = load i64, i64* %length, align 8, !dbg !1029
  %inc = add i64 %43, 1, !dbg !1029
  store i64 %inc, i64* %length, align 8, !dbg !1029
  br label %while.cond, !dbg !1010, !llvm.loop !1031

while.end:                                        ; preds = %land.end
  %44 = load i64, i64* %length, align 8, !dbg !1033
  %call45 = call %union.acpi_operand_object* @acpi_ut_create_string_object(i64 %44) #4, !dbg !1034
  store %union.acpi_operand_object* %call45, %union.acpi_operand_object** %return_desc, align 8, !dbg !1035
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1036
  %tobool46 = icmp ne %union.acpi_operand_object* %45, null, !dbg !1036
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !1038

if.then47:                                        ; preds = %while.end
  store i32 4, i32* %status, align 4, !dbg !1039
  br label %cleanup, !dbg !1041

if.end48:                                         ; preds = %while.end
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1042
  %string = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_string*, !dbg !1043
  %pointer49 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 5, !dbg !1044
  %47 = load i8*, i8** %pointer49, align 8, !dbg !1044
  %48 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1045
  %arrayidx50 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %48, i64 0, !dbg !1045
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx50, align 8, !dbg !1045
  %buffer51 = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_buffer*, !dbg !1046
  %pointer52 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer51, i32 0, i32 5, !dbg !1047
  %50 = load i8*, i8** %pointer52, align 8, !dbg !1047
  %51 = load i64, i64* %length, align 8, !dbg !1048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %50, i64 %51, i1 false), !dbg !1049
  br label %sw.epilog145, !dbg !1050

sw.bb53:                                          ; preds = %if.end10
  %52 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1051
  %arrayidx54 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %52, i64 0, !dbg !1051
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx54, align 8, !dbg !1051
  %54 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1052
  %arrayidx55 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %54, i64 1, !dbg !1052
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx55, align 8, !dbg !1052
  %56 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1053
  %call56 = call i32 @acpi_ex_concat_template(%union.acpi_operand_object* %53, %union.acpi_operand_object* %55, %union.acpi_operand_object** %return_desc, %struct.acpi_walk_state* %56) #4, !dbg !1054
  store i32 %call56, i32* %status, align 4, !dbg !1055
  br label %sw.epilog145, !dbg !1056

sw.bb57:                                          ; preds = %if.end10
  %call58 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 326, i32 128, i32 20) #4, !dbg !1057
  store %union.acpi_operand_object* %call58, %union.acpi_operand_object** %return_desc, align 8, !dbg !1058
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1059
  %tobool59 = icmp ne %union.acpi_operand_object* %57, null, !dbg !1059
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !1061

if.then60:                                        ; preds = %sw.bb57
  store i32 4, i32* %status, align 4, !dbg !1062
  br label %cleanup, !dbg !1064

if.end61:                                         ; preds = %sw.bb57
  %58 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1065
  %arrayidx62 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %58, i64 1, !dbg !1065
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx62, align 8, !dbg !1065
  %integer63 = bitcast %union.acpi_operand_object* %59 to %struct.acpi_object_integer*, !dbg !1066
  %value64 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer63, i32 0, i32 6, !dbg !1067
  %60 = load i64, i64* %value64, align 8, !dbg !1067
  store i64 %60, i64* %index, align 8, !dbg !1068
  %61 = load i64, i64* %index, align 8, !dbg !1069
  %conv65 = trunc i64 %61 to i32, !dbg !1070
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1071
  %reference = bitcast %union.acpi_operand_object* %62 to %struct.acpi_object_reference*, !dbg !1072
  %value66 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 13, !dbg !1073
  store i32 %conv65, i32* %value66, align 8, !dbg !1074
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1075
  %reference67 = bitcast %union.acpi_operand_object* %63 to %struct.acpi_object_reference*, !dbg !1076
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference67, i32 0, i32 5, !dbg !1077
  store i8 3, i8* %class, align 1, !dbg !1078
  %64 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1079
  %arrayidx68 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %64, i64 0, !dbg !1079
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx68, align 8, !dbg !1079
  %common = bitcast %union.acpi_operand_object* %65 to %struct.acpi_object_common*, !dbg !1080
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1081
  %66 = load i8, i8* %type, align 1, !dbg !1081
  %conv69 = zext i8 %66 to i32, !dbg !1082
  switch i32 %conv69, label %sw.default [
    i32 2, label %sw.bb70
    i32 3, label %sw.bb89
    i32 4, label %sw.bb110
  ], !dbg !1083

sw.bb70:                                          ; preds = %if.end61
  %67 = load i64, i64* %index, align 8, !dbg !1084
  %68 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1087
  %arrayidx71 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %68, i64 0, !dbg !1087
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx71, align 8, !dbg !1087
  %string72 = bitcast %union.acpi_operand_object* %69 to %struct.acpi_object_string*, !dbg !1088
  %length73 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string72, i32 0, i32 6, !dbg !1089
  %70 = load i32, i32* %length73, align 8, !dbg !1089
  %conv74 = zext i32 %70 to i64, !dbg !1087
  %cmp75 = icmp uge i64 %67, %conv74, !dbg !1090
  br i1 %cmp75, label %if.then77, label %if.end82, !dbg !1091

if.then77:                                        ; preds = %sw.bb70
  %71 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1092
  %arrayidx78 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %71, i64 0, !dbg !1092
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx78, align 8, !dbg !1092
  %string79 = bitcast %union.acpi_operand_object* %72 to %struct.acpi_object_string*, !dbg !1094
  %length80 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string79, i32 0, i32 6, !dbg !1095
  %73 = load i32, i32* %length80, align 8, !dbg !1095
  %conv81 = zext i32 %73 to i64, !dbg !1092
  store i64 %conv81, i64* %length, align 8, !dbg !1096
  store i32 12305, i32* %status, align 4, !dbg !1097
  br label %if.end82, !dbg !1098

if.end82:                                         ; preds = %if.then77, %sw.bb70
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1099
  %reference83 = bitcast %union.acpi_operand_object* %74 to %struct.acpi_object_reference*, !dbg !1100
  %target_type = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference83, i32 0, i32 6, !dbg !1101
  store i8 14, i8* %target_type, align 2, !dbg !1102
  %75 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1103
  %arrayidx84 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %75, i64 0, !dbg !1103
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx84, align 8, !dbg !1103
  %buffer85 = bitcast %union.acpi_operand_object* %76 to %struct.acpi_object_buffer*, !dbg !1104
  %pointer86 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer85, i32 0, i32 5, !dbg !1105
  %77 = load i8*, i8** %pointer86, align 8, !dbg !1105
  %78 = load i64, i64* %index, align 8, !dbg !1106
  %arrayidx87 = getelementptr i8, i8* %77, i64 %78, !dbg !1103
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1107
  %reference88 = bitcast %union.acpi_operand_object* %79 to %struct.acpi_object_reference*, !dbg !1108
  %index_pointer = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference88, i32 0, i32 11, !dbg !1109
  store i8* %arrayidx87, i8** %index_pointer, align 8, !dbg !1110
  br label %sw.epilog, !dbg !1111

sw.bb89:                                          ; preds = %if.end61
  %80 = load i64, i64* %index, align 8, !dbg !1112
  %81 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1114
  %arrayidx90 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %81, i64 0, !dbg !1114
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx90, align 8, !dbg !1114
  %buffer91 = bitcast %union.acpi_operand_object* %82 to %struct.acpi_object_buffer*, !dbg !1115
  %length92 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer91, i32 0, i32 6, !dbg !1116
  %83 = load i32, i32* %length92, align 8, !dbg !1116
  %conv93 = zext i32 %83 to i64, !dbg !1114
  %cmp94 = icmp uge i64 %80, %conv93, !dbg !1117
  br i1 %cmp94, label %if.then96, label %if.end101, !dbg !1118

if.then96:                                        ; preds = %sw.bb89
  %84 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1119
  %arrayidx97 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %84, i64 0, !dbg !1119
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx97, align 8, !dbg !1119
  %buffer98 = bitcast %union.acpi_operand_object* %85 to %struct.acpi_object_buffer*, !dbg !1121
  %length99 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer98, i32 0, i32 6, !dbg !1122
  %86 = load i32, i32* %length99, align 8, !dbg !1122
  %conv100 = zext i32 %86 to i64, !dbg !1119
  store i64 %conv100, i64* %length, align 8, !dbg !1123
  store i32 12298, i32* %status, align 4, !dbg !1124
  br label %if.end101, !dbg !1125

if.end101:                                        ; preds = %if.then96, %sw.bb89
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1126
  %reference102 = bitcast %union.acpi_operand_object* %87 to %struct.acpi_object_reference*, !dbg !1127
  %target_type103 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference102, i32 0, i32 6, !dbg !1128
  store i8 14, i8* %target_type103, align 2, !dbg !1129
  %88 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1130
  %arrayidx104 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %88, i64 0, !dbg !1130
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx104, align 8, !dbg !1130
  %buffer105 = bitcast %union.acpi_operand_object* %89 to %struct.acpi_object_buffer*, !dbg !1131
  %pointer106 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer105, i32 0, i32 5, !dbg !1132
  %90 = load i8*, i8** %pointer106, align 8, !dbg !1132
  %91 = load i64, i64* %index, align 8, !dbg !1133
  %arrayidx107 = getelementptr i8, i8* %90, i64 %91, !dbg !1130
  %92 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1134
  %reference108 = bitcast %union.acpi_operand_object* %92 to %struct.acpi_object_reference*, !dbg !1135
  %index_pointer109 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference108, i32 0, i32 11, !dbg !1136
  store i8* %arrayidx107, i8** %index_pointer109, align 8, !dbg !1137
  br label %sw.epilog, !dbg !1138

sw.bb110:                                         ; preds = %if.end61
  %93 = load i64, i64* %index, align 8, !dbg !1139
  %94 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1141
  %arrayidx111 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %94, i64 0, !dbg !1141
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx111, align 8, !dbg !1141
  %package = bitcast %union.acpi_operand_object* %95 to %struct.acpi_object_package*, !dbg !1142
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 9, !dbg !1143
  %96 = load i32, i32* %count, align 4, !dbg !1143
  %conv112 = zext i32 %96 to i64, !dbg !1141
  %cmp113 = icmp uge i64 %93, %conv112, !dbg !1144
  br i1 %cmp113, label %if.then115, label %if.end120, !dbg !1145

if.then115:                                       ; preds = %sw.bb110
  %97 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1146
  %arrayidx116 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %97, i64 0, !dbg !1146
  %98 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx116, align 8, !dbg !1146
  %package117 = bitcast %union.acpi_operand_object* %98 to %struct.acpi_object_package*, !dbg !1148
  %count118 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package117, i32 0, i32 9, !dbg !1149
  %99 = load i32, i32* %count118, align 4, !dbg !1149
  %conv119 = zext i32 %99 to i64, !dbg !1146
  store i64 %conv119, i64* %length, align 8, !dbg !1150
  store i32 12299, i32* %status, align 4, !dbg !1151
  br label %if.end120, !dbg !1152

if.end120:                                        ; preds = %if.then115, %sw.bb110
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1153
  %reference121 = bitcast %union.acpi_operand_object* %100 to %struct.acpi_object_reference*, !dbg !1154
  %target_type122 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference121, i32 0, i32 6, !dbg !1155
  store i8 4, i8* %target_type122, align 2, !dbg !1156
  %101 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1157
  %arrayidx123 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %101, i64 0, !dbg !1157
  %102 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx123, align 8, !dbg !1157
  %package124 = bitcast %union.acpi_operand_object* %102 to %struct.acpi_object_package*, !dbg !1158
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package124, i32 0, i32 6, !dbg !1159
  %103 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1159
  %104 = load i64, i64* %index, align 8, !dbg !1160
  %arrayidx125 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %103, i64 %104, !dbg !1157
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1161
  %reference126 = bitcast %union.acpi_operand_object* %105 to %struct.acpi_object_reference*, !dbg !1162
  %where = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference126, i32 0, i32 10, !dbg !1163
  store %union.acpi_operand_object** %arrayidx125, %union.acpi_operand_object*** %where, align 8, !dbg !1164
  br label %sw.epilog, !dbg !1165

sw.default:                                       ; preds = %if.end61
  %106 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1166
  %arrayidx127 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %106, i64 0, !dbg !1166
  %107 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx127, align 8, !dbg !1166
  %common128 = bitcast %union.acpi_operand_object* %107 to %struct.acpi_object_common*, !dbg !1166
  %type129 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common128, i32 0, i32 2, !dbg !1166
  %108 = load i8, i8* %type129, align 1, !dbg !1166
  %conv130 = zext i8 %108 to i32, !dbg !1166
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 383, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %conv130) #4, !dbg !1166
  store i32 12303, i32* %status, align 4, !dbg !1167
  br label %cleanup, !dbg !1168

sw.epilog:                                        ; preds = %if.end120, %if.end101, %if.end82
  %109 = load i32, i32* %status, align 4, !dbg !1169
  %tobool131 = icmp ne i32 %109, 0, !dbg !1169
  br i1 %tobool131, label %if.then132, label %if.end136, !dbg !1171

if.then132:                                       ; preds = %sw.epilog
  %110 = load i32, i32* %status, align 4, !dbg !1172
  %111 = load i64, i64* %index, align 8, !dbg !1172
  %shr = lshr i64 %111, 32, !dbg !1172
  %conv133 = trunc i64 %shr to i32, !dbg !1172
  %112 = load i64, i64* %index, align 8, !dbg !1172
  %conv134 = trunc i64 %112 to i32, !dbg !1172
  %113 = load i64, i64* %length, align 8, !dbg !1172
  %conv135 = trunc i64 %113 to i32, !dbg !1172
  call void (i8*, i32, i32, i8*, ...) @acpi_bios_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 393, i32 %110, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %conv133, i32 %conv134, i32 %conv135) #4, !dbg !1172
  br label %cleanup, !dbg !1174

if.end136:                                        ; preds = %sw.epilog
  %114 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1175
  %arrayidx137 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %114, i64 0, !dbg !1175
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx137, align 8, !dbg !1175
  %116 = bitcast %union.acpi_operand_object* %115 to i8*, !dbg !1175
  %117 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1176
  %reference138 = bitcast %union.acpi_operand_object* %117 to %struct.acpi_object_reference*, !dbg !1177
  %object = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference138, i32 0, i32 8, !dbg !1178
  store i8* %116, i8** %object, align 8, !dbg !1179
  %118 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1180
  %arrayidx139 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %118, i64 0, !dbg !1180
  %119 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx139, align 8, !dbg !1180
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %119) #4, !dbg !1181
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1182
  %121 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1183
  %arrayidx140 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %121, i64 2, !dbg !1183
  %122 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx140, align 8, !dbg !1183
  %123 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1184
  %call141 = call i32 @acpi_ex_store(%union.acpi_operand_object* %120, %union.acpi_operand_object* %122, %struct.acpi_walk_state* %123) #4, !dbg !1185
  store i32 %call141, i32* %status, align 4, !dbg !1186
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1187
  %125 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1188
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %125, i32 0, i32 43, !dbg !1189
  store %union.acpi_operand_object* %124, %union.acpi_operand_object** %result_obj, align 8, !dbg !1190
  br label %cleanup, !dbg !1191

sw.default142:                                    ; preds = %if.end10
  %126 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1192
  %opcode143 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %126, i32 0, i32 3, !dbg !1192
  %127 = load i16, i16* %opcode143, align 2, !dbg !1192
  %conv144 = zext i16 %127 to i32, !dbg !1192
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 418, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %conv144) #4, !dbg !1192
  store i32 12289, i32* %status, align 4, !dbg !1193
  br label %sw.epilog145, !dbg !1194

sw.epilog145:                                     ; preds = %sw.default142, %sw.bb53, %if.end48, %sw.bb26, %if.end16
  br label %store_result_to_target, !dbg !1195

store_result_to_target:                           ; preds = %sw.epilog145, %if.end
  call void @llvm.dbg.label(metadata !1196), !dbg !1197
  %128 = load i32, i32* %status, align 4, !dbg !1198
  %tobool146 = icmp ne i32 %128, 0, !dbg !1198
  br i1 %tobool146, label %if.end158, label %if.then147, !dbg !1200

if.then147:                                       ; preds = %store_result_to_target
  %129 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1201
  %130 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1203
  %arrayidx148 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %130, i64 2, !dbg !1203
  %131 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx148, align 8, !dbg !1203
  %132 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1204
  %call149 = call i32 @acpi_ex_store(%union.acpi_operand_object* %129, %union.acpi_operand_object* %131, %struct.acpi_walk_state* %132) #4, !dbg !1205
  store i32 %call149, i32* %status, align 4, !dbg !1206
  %133 = load i32, i32* %status, align 4, !dbg !1207
  %tobool150 = icmp ne i32 %133, 0, !dbg !1207
  br i1 %tobool150, label %if.then151, label %if.end152, !dbg !1209

if.then151:                                       ; preds = %if.then147
  br label %cleanup, !dbg !1210

if.end152:                                        ; preds = %if.then147
  %134 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1212
  %result_obj153 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %134, i32 0, i32 43, !dbg !1214
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj153, align 8, !dbg !1214
  %tobool154 = icmp ne %union.acpi_operand_object* %135, null, !dbg !1212
  br i1 %tobool154, label %if.end157, label %if.then155, !dbg !1215

if.then155:                                       ; preds = %if.end152
  %136 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1216
  %137 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1218
  %result_obj156 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %137, i32 0, i32 43, !dbg !1219
  store %union.acpi_operand_object* %136, %union.acpi_operand_object** %result_obj156, align 8, !dbg !1220
  br label %if.end157, !dbg !1221

if.end157:                                        ; preds = %if.then155, %if.end152
  br label %if.end158, !dbg !1222

if.end158:                                        ; preds = %if.end157, %store_result_to_target
  br label %cleanup, !dbg !1198

cleanup:                                          ; preds = %if.end158, %if.then151, %if.end136, %if.then132, %sw.default, %if.then60, %if.then47, %if.then15, %if.then2
  call void @llvm.dbg.label(metadata !1223), !dbg !1224
  %138 = load i32, i32* %status, align 4, !dbg !1225
  %tobool159 = icmp ne i32 %138, 0, !dbg !1225
  br i1 %tobool159, label %if.then160, label %if.end162, !dbg !1227

if.then160:                                       ; preds = %cleanup
  %139 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1228
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %139) #4, !dbg !1230
  %140 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1231
  %result_obj161 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %140, i32 0, i32 43, !dbg !1232
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %result_obj161, align 8, !dbg !1233
  br label %if.end162, !dbg !1234

if.end162:                                        ; preds = %if.then160, %cleanup
  %141 = load i32, i32* %status, align 4, !dbg !1235
  ret i32 %141, !dbg !1235
}

; Function Attrs: noredzone
declare dso_local i64 @acpi_ex_do_math_op(i16 zeroext, i64, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_do_concatenate(%union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_string_object(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_concat_template(%union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_bios_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_opcode_2A_0T_1R(%struct.acpi_walk_state* %walk_state) #0 !dbg !1236 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %operand = alloca %union.acpi_operand_object**, align 8
  %return_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %logical_result = alloca i8, align 1
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1237, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !1239, metadata !DIExpression()), !dbg !1240
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1241
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !1242
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !1241
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !1240
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc, metadata !1243, metadata !DIExpression()), !dbg !1244
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_desc, align 8, !dbg !1244
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1245, metadata !DIExpression()), !dbg !1246
  store i32 0, i32* %status, align 4, !dbg !1246
  call void @llvm.dbg.declare(metadata i8* %logical_result, metadata !1247, metadata !DIExpression()), !dbg !1248
  store i8 0, i8* %logical_result, align 1, !dbg !1248
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 477, i32 128, i32 1) #4, !dbg !1249
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %return_desc, align 8, !dbg !1250
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1251
  %tobool = icmp ne %union.acpi_operand_object* %1, null, !dbg !1251
  br i1 %tobool, label %if.end, label %if.then, !dbg !1253

if.then:                                          ; preds = %entry
  store i32 4, i32* %status, align 4, !dbg !1254
  br label %cleanup, !dbg !1256

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1257
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 41, !dbg !1259
  %3 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1259
  %flags = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %3, i32 0, i32 2, !dbg !1260
  %4 = load i16, i16* %flags, align 4, !dbg !1260
  %conv = zext i16 %4 to i32, !dbg !1257
  %and = and i32 %conv, 2, !dbg !1261
  %tobool1 = icmp ne i32 %and, 0, !dbg !1261
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !1262

if.then2:                                         ; preds = %if.end
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1263
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 3, !dbg !1265
  %6 = load i16, i16* %opcode, align 2, !dbg !1265
  %7 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1266
  %arrayidx3 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %7, i64 0, !dbg !1266
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx3, align 8, !dbg !1266
  %integer = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_integer*, !dbg !1267
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1268
  %9 = load i64, i64* %value, align 8, !dbg !1268
  %10 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1269
  %arrayidx4 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %10, i64 1, !dbg !1269
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx4, align 8, !dbg !1269
  %integer5 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_integer*, !dbg !1270
  %value6 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer5, i32 0, i32 6, !dbg !1271
  %12 = load i64, i64* %value6, align 8, !dbg !1271
  %call7 = call i32 @acpi_ex_do_logical_numeric_op(i16 zeroext %6, i64 %9, i64 %12, i8* %logical_result) #4, !dbg !1272
  store i32 %call7, i32* %status, align 4, !dbg !1273
  br label %store_logical_result, !dbg !1274

if.else:                                          ; preds = %if.end
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1275
  %op_info8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 41, !dbg !1277
  %14 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info8, align 8, !dbg !1277
  %flags9 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %14, i32 0, i32 2, !dbg !1278
  %15 = load i16, i16* %flags9, align 4, !dbg !1278
  %conv10 = zext i16 %15 to i32, !dbg !1275
  %and11 = and i32 %conv10, 1, !dbg !1279
  %tobool12 = icmp ne i32 %and11, 0, !dbg !1279
  br i1 %tobool12, label %if.then13, label %if.end18, !dbg !1280

if.then13:                                        ; preds = %if.else
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1281
  %opcode14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 3, !dbg !1283
  %17 = load i16, i16* %opcode14, align 2, !dbg !1283
  %18 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1284
  %arrayidx15 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %18, i64 0, !dbg !1284
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx15, align 8, !dbg !1284
  %20 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1285
  %arrayidx16 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %20, i64 1, !dbg !1285
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx16, align 8, !dbg !1285
  %call17 = call i32 @acpi_ex_do_logical_op(i16 zeroext %17, %union.acpi_operand_object* %19, %union.acpi_operand_object* %21, i8* %logical_result) #4, !dbg !1286
  store i32 %call17, i32* %status, align 4, !dbg !1287
  br label %store_logical_result, !dbg !1288

if.end18:                                         ; preds = %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1289
  %opcode20 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 3, !dbg !1290
  %23 = load i16, i16* %opcode20, align 2, !dbg !1290
  %conv21 = zext i16 %23 to i32, !dbg !1289
  switch i32 %conv21, label %sw.default [
    i32 23331, label %sw.bb
    i32 23333, label %sw.bb28
  ], !dbg !1291

sw.bb:                                            ; preds = %if.end19
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1292
  %arrayidx22 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %24, i64 1, !dbg !1292
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx22, align 8, !dbg !1292
  %26 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1294
  %arrayidx23 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %26, i64 0, !dbg !1294
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx23, align 8, !dbg !1294
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1295
  %call24 = call i32 @acpi_ex_acquire_mutex(%union.acpi_operand_object* %25, %union.acpi_operand_object* %27, %struct.acpi_walk_state* %28) #4, !dbg !1296
  store i32 %call24, i32* %status, align 4, !dbg !1297
  %29 = load i32, i32* %status, align 4, !dbg !1298
  %cmp = icmp eq i32 %29, 17, !dbg !1300
  br i1 %cmp, label %if.then26, label %if.end27, !dbg !1301

if.then26:                                        ; preds = %sw.bb
  store i8 1, i8* %logical_result, align 1, !dbg !1302
  store i32 0, i32* %status, align 4, !dbg !1304
  br label %if.end27, !dbg !1305

if.end27:                                         ; preds = %if.then26, %sw.bb
  br label %sw.epilog, !dbg !1306

sw.bb28:                                          ; preds = %if.end19
  %30 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1307
  %arrayidx29 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %30, i64 1, !dbg !1307
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx29, align 8, !dbg !1307
  %32 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1308
  %arrayidx30 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %32, i64 0, !dbg !1308
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx30, align 8, !dbg !1308
  %call31 = call i32 @acpi_ex_system_wait_event(%union.acpi_operand_object* %31, %union.acpi_operand_object* %33) #4, !dbg !1309
  store i32 %call31, i32* %status, align 4, !dbg !1310
  %34 = load i32, i32* %status, align 4, !dbg !1311
  %cmp32 = icmp eq i32 %34, 17, !dbg !1313
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !1314

if.then34:                                        ; preds = %sw.bb28
  store i8 1, i8* %logical_result, align 1, !dbg !1315
  store i32 0, i32* %status, align 4, !dbg !1317
  br label %if.end35, !dbg !1318

if.end35:                                         ; preds = %if.then34, %sw.bb28
  br label %sw.epilog, !dbg !1319

sw.default:                                       ; preds = %if.end19
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1320
  %opcode36 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 3, !dbg !1320
  %36 = load i16, i16* %opcode36, align 2, !dbg !1320
  %conv37 = zext i16 %36 to i32, !dbg !1320
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 526, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %conv37) #4, !dbg !1320
  store i32 12289, i32* %status, align 4, !dbg !1321
  br label %cleanup, !dbg !1322

sw.epilog:                                        ; preds = %if.end35, %if.end27
  br label %store_logical_result, !dbg !1323

store_logical_result:                             ; preds = %sw.epilog, %if.then13, %if.then2
  call void @llvm.dbg.label(metadata !1324), !dbg !1325
  %37 = load i8, i8* %logical_result, align 1, !dbg !1326
  %tobool38 = icmp ne i8 %37, 0, !dbg !1326
  br i1 %tobool38, label %if.then39, label %if.end42, !dbg !1328

if.then39:                                        ; preds = %store_logical_result
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1329
  %integer40 = bitcast %union.acpi_operand_object* %38 to %struct.acpi_object_integer*, !dbg !1331
  %value41 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer40, i32 0, i32 6, !dbg !1332
  store i64 -1, i64* %value41, align 8, !dbg !1333
  br label %if.end42, !dbg !1334

if.end42:                                         ; preds = %if.then39, %store_logical_result
  br label %cleanup, !dbg !1326

cleanup:                                          ; preds = %if.end42, %sw.default, %if.then
  call void @llvm.dbg.label(metadata !1335), !dbg !1336
  %39 = load i32, i32* %status, align 4, !dbg !1337
  %tobool43 = icmp ne i32 %39, 0, !dbg !1337
  br i1 %tobool43, label %if.then44, label %if.else45, !dbg !1339

if.then44:                                        ; preds = %cleanup
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1340
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %40) #4, !dbg !1342
  br label %if.end46, !dbg !1343

if.else45:                                        ; preds = %cleanup
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1344
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1346
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %42, i32 0, i32 43, !dbg !1347
  store %union.acpi_operand_object* %41, %union.acpi_operand_object** %result_obj, align 8, !dbg !1348
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.then44
  %43 = load i32, i32* %status, align 4, !dbg !1349
  ret i32 %43, !dbg !1349
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_do_logical_numeric_op(i16 zeroext, i64, i64, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_do_logical_op(i16 zeroext, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_acquire_mutex(%union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_system_wait_event(%union.acpi_operand_object*, %union.acpi_operand_object*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!794, !795, !796, !797}
!llvm.ident = !{!798}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !792, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !791, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exoparg2.c", directory: "/home/lizy2001/genbc/linux")
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
!17 = !{!18, !24, !20, !59}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !26, line: 133, size: 384, elements: !27)
!26 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !778, !779, !780, !781, !787, !788, !789, !790}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !25, file: !26, line: 134, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 367, size: 576, elements: !31)
!31 = !{!32, !46, !62, !74, !88, !102, !112, !429, !446, !461, !474, !552, !564, !578, !588, !606, !628, !647, !666, !685, !698, !724, !741, !754, !768, !777}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !30, file: !6, line: 368, baseType: !33, size: 128)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !34)
!34 = !{!35, !36, !40, !41, !45}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !33, file: !6, line: 74, baseType: !29, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !33, file: !6, line: 74, baseType: !37, size: 8, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !6, line: 74, baseType: !37, size: 8, offset: 72)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !33, file: !6, line: 74, baseType: !42, size: 16, offset: 80)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !44)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !6, line: 74, baseType: !37, size: 8, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !30, file: !6, line: 369, baseType: !47, size: 192)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !58}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !47, file: !6, line: 77, baseType: !29, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !47, file: !6, line: 77, baseType: !37, size: 8, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !47, file: !6, line: 77, baseType: !37, size: 8, offset: 72)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !47, file: !6, line: 77, baseType: !42, size: 16, offset: 80)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !47, file: !6, line: 77, baseType: !37, size: 8, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !47, file: !6, line: 77, baseType: !55, size: 24, offset: 104)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 24, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 3)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !47, file: !6, line: 78, baseType: !59, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !61)
!61 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !30, file: !6, line: 370, baseType: !63, size: 256)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70, !73}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !63, file: !6, line: 94, baseType: !29, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !63, file: !6, line: 94, baseType: !37, size: 8, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !63, file: !6, line: 94, baseType: !37, size: 8, offset: 72)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !63, file: !6, line: 94, baseType: !42, size: 16, offset: 80)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !63, file: !6, line: 94, baseType: !37, size: 8, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !63, file: !6, line: 94, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !63, file: !6, line: 94, baseType: !20, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !30, file: !6, line: 371, baseType: !75, size: 384)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !84, !85, !86, !87}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !75, file: !6, line: 98, baseType: !29, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !6, line: 98, baseType: !37, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !6, line: 98, baseType: !37, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !75, file: !6, line: 98, baseType: !42, size: 16, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !6, line: 98, baseType: !37, size: 8, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !75, file: !6, line: 98, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !75, file: !6, line: 98, baseType: !20, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !75, file: !6, line: 99, baseType: !20, size: 32, offset: 224)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !75, file: !6, line: 100, baseType: !83, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !75, file: !6, line: 101, baseType: !24, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !30, file: !6, line: 372, baseType: !89, size: 384)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !90)
!90 = !{!91, !92, !93, !94, !95, !96, !97, !99, !100, !101}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !89, file: !6, line: 105, baseType: !29, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !89, file: !6, line: 105, baseType: !37, size: 8, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !6, line: 105, baseType: !37, size: 8, offset: 72)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !89, file: !6, line: 105, baseType: !42, size: 16, offset: 80)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !6, line: 105, baseType: !37, size: 8, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !89, file: !6, line: 105, baseType: !24, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !89, file: !6, line: 106, baseType: !98, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !89, file: !6, line: 107, baseType: !83, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !89, file: !6, line: 108, baseType: !20, size: 32, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !89, file: !6, line: 109, baseType: !20, size: 32, offset: 352)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !30, file: !6, line: 373, baseType: !103, size: 192)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !6, line: 119, baseType: !29, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !6, line: 119, baseType: !37, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !6, line: 119, baseType: !37, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !6, line: 119, baseType: !42, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !6, line: 119, baseType: !37, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !103, file: !6, line: 119, baseType: !111, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !30, file: !6, line: 374, baseType: !113, size: 448)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 143, size: 448, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !426, !427, !428}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !113, file: !6, line: 144, baseType: !29, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !113, file: !6, line: 144, baseType: !37, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !6, line: 144, baseType: !37, size: 8, offset: 72)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !113, file: !6, line: 144, baseType: !42, size: 16, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !6, line: 144, baseType: !37, size: 8, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !113, file: !6, line: 144, baseType: !37, size: 8, offset: 104)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !113, file: !6, line: 145, baseType: !37, size: 8, offset: 112)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !113, file: !6, line: 146, baseType: !37, size: 8, offset: 120)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !113, file: !6, line: 147, baseType: !29, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !113, file: !6, line: 148, baseType: !29, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !113, file: !6, line: 149, baseType: !83, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !113, file: !6, line: 153, baseType: !127, size: 64, offset: 320)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !6, line: 150, size: 64, elements: !128)
!128 = !{!129, !425}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !127, file: !6, line: 151, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !26, line: 248, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!18, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !136, line: 37, size: 9024, elements: !137)
!136 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !371, !372, !373, !374, !375, !379, !381, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !408, !409, !410, !411, !412, !413, !414, !415, !417, !423}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !135, file: !136, line: 38, baseType: !134, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !135, file: !136, line: 39, baseType: !37, size: 8, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !135, file: !136, line: 40, baseType: !37, size: 8, offset: 72)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !135, file: !136, line: 41, baseType: !42, size: 16, offset: 80)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !135, file: !136, line: 42, baseType: !37, size: 8, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !135, file: !136, line: 43, baseType: !37, size: 8, offset: 104)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !135, file: !136, line: 44, baseType: !37, size: 8, offset: 112)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !135, file: !136, line: 45, baseType: !146, size: 16, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !42)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !135, file: !136, line: 46, baseType: !37, size: 8, offset: 144)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !135, file: !136, line: 47, baseType: !37, size: 8, offset: 152)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !135, file: !136, line: 48, baseType: !37, size: 8, offset: 160)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !135, file: !136, line: 49, baseType: !37, size: 8, offset: 168)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !135, file: !136, line: 50, baseType: !37, size: 8, offset: 176)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !135, file: !136, line: 51, baseType: !37, size: 8, offset: 184)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !135, file: !136, line: 52, baseType: !37, size: 8, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !135, file: !136, line: 53, baseType: !37, size: 8, offset: 200)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !135, file: !136, line: 54, baseType: !83, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !135, file: !136, line: 55, baseType: !20, size: 32, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !135, file: !136, line: 56, baseType: !20, size: 32, offset: 352)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !135, file: !136, line: 57, baseType: !20, size: 32, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !135, file: !136, line: 58, baseType: !20, size: 32, offset: 416)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !135, file: !136, line: 60, baseType: !161, size: 640, offset: 448)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !26, line: 893, size: 640, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !252, !253, !369, !370}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !161, file: !26, line: 894, baseType: !83, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !161, file: !26, line: 895, baseType: !83, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !161, file: !26, line: 896, baseType: !83, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !161, file: !26, line: 897, baseType: !83, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !161, file: !26, line: 898, baseType: !83, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !161, file: !26, line: 899, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !26, line: 875, size: 1600, elements: !171)
!171 = !{!172, !192, !208}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !170, file: !26, line: 876, baseType: !173, size: 448)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !26, line: 828, size: 448, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !191}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !173, file: !26, line: 829, baseType: !169, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !173, file: !26, line: 829, baseType: !37, size: 8, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !173, file: !26, line: 829, baseType: !37, size: 8, offset: 72)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !173, file: !26, line: 829, baseType: !42, size: 16, offset: 80)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !173, file: !26, line: 829, baseType: !83, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !26, line: 829, baseType: !169, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !173, file: !26, line: 829, baseType: !24, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !173, file: !26, line: 829, baseType: !183, size: 64, offset: 320)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !26, line: 716, size: 64, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !183, file: !26, line: 717, baseType: !59, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !183, file: !26, line: 718, baseType: !20, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !183, file: !26, line: 719, baseType: !71, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !183, file: !26, line: 720, baseType: !83, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !26, line: 721, baseType: !71, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !183, file: !26, line: 722, baseType: !169, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !173, file: !26, line: 829, baseType: !37, size: 8, offset: 384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !170, file: !26, line: 877, baseType: !193, size: 640)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !26, line: 835, size: 640, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !193, file: !26, line: 836, baseType: !169, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !193, file: !26, line: 836, baseType: !37, size: 8, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !26, line: 836, baseType: !37, size: 8, offset: 72)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !193, file: !26, line: 836, baseType: !42, size: 16, offset: 80)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !193, file: !26, line: 836, baseType: !83, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !26, line: 836, baseType: !169, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !193, file: !26, line: 836, baseType: !24, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !193, file: !26, line: 836, baseType: !183, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !193, file: !26, line: 836, baseType: !37, size: 8, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !193, file: !26, line: 836, baseType: !71, size: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !193, file: !26, line: 837, baseType: !83, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !193, file: !26, line: 838, baseType: !20, size: 32, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !26, line: 839, baseType: !20, size: 32, offset: 608)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !170, file: !26, line: 878, baseType: !209, size: 1600)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !26, line: 846, size: 1600, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !209, file: !26, line: 847, baseType: !169, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !209, file: !26, line: 847, baseType: !37, size: 8, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !209, file: !26, line: 847, baseType: !37, size: 8, offset: 72)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !209, file: !26, line: 847, baseType: !42, size: 16, offset: 80)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !209, file: !26, line: 847, baseType: !83, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !26, line: 847, baseType: !169, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !209, file: !26, line: 847, baseType: !24, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !209, file: !26, line: 847, baseType: !183, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !209, file: !26, line: 847, baseType: !37, size: 8, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !209, file: !26, line: 847, baseType: !169, size: 64, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !209, file: !26, line: 848, baseType: !169, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !209, file: !26, line: 849, baseType: !71, size: 64, offset: 576)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !209, file: !26, line: 850, baseType: !37, size: 8, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !209, file: !26, line: 851, baseType: !71, size: 64, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !209, file: !26, line: 852, baseType: !71, size: 64, offset: 768)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !209, file: !26, line: 853, baseType: !71, size: 64, offset: 832)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !209, file: !26, line: 854, baseType: !228, size: 32, offset: 896)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 4)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !209, file: !26, line: 855, baseType: !20, size: 32, offset: 928)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !209, file: !26, line: 856, baseType: !20, size: 32, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !209, file: !26, line: 857, baseType: !20, size: 32, offset: 992)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !209, file: !26, line: 858, baseType: !20, size: 32, offset: 1024)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !209, file: !26, line: 859, baseType: !20, size: 32, offset: 1056)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !209, file: !26, line: 860, baseType: !20, size: 32, offset: 1088)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !209, file: !26, line: 861, baseType: !20, size: 32, offset: 1120)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !209, file: !26, line: 862, baseType: !20, size: 32, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !209, file: !26, line: 863, baseType: !20, size: 32, offset: 1184)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !209, file: !26, line: 864, baseType: !20, size: 32, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !209, file: !26, line: 865, baseType: !20, size: 32, offset: 1248)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !209, file: !26, line: 866, baseType: !20, size: 32, offset: 1280)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !209, file: !26, line: 867, baseType: !20, size: 32, offset: 1312)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !209, file: !26, line: 868, baseType: !42, size: 16, offset: 1344)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !209, file: !26, line: 869, baseType: !37, size: 8, offset: 1360)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !209, file: !26, line: 870, baseType: !37, size: 8, offset: 1368)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !209, file: !26, line: 871, baseType: !37, size: 8, offset: 1376)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !209, file: !26, line: 872, baseType: !249, size: 160, offset: 1384)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 160, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 20)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !161, file: !26, line: 900, baseType: !24, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !161, file: !26, line: 901, baseType: !254, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !26, line: 663, size: 640, elements: !256)
!256 = !{!257, !265, !278, !287, !296, !309, !323, !335, !347}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !255, file: !26, line: 664, baseType: !258, size: 128)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !26, line: 567, size: 128, elements: !259)
!259 = !{!260, !261, !262, !263, !264}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !26, line: 568, baseType: !111, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !258, file: !26, line: 568, baseType: !37, size: 8, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !258, file: !26, line: 568, baseType: !37, size: 8, offset: 72)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !258, file: !26, line: 568, baseType: !42, size: 16, offset: 80)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !258, file: !26, line: 568, baseType: !42, size: 16, offset: 96)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !255, file: !26, line: 665, baseType: !266, size: 384)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !26, line: 593, size: 384, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !26, line: 594, baseType: !111, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !266, file: !26, line: 594, baseType: !37, size: 8, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !26, line: 594, baseType: !37, size: 8, offset: 72)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !266, file: !26, line: 594, baseType: !42, size: 16, offset: 80)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !266, file: !26, line: 594, baseType: !42, size: 16, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !266, file: !26, line: 594, baseType: !42, size: 16, offset: 112)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !266, file: !26, line: 595, baseType: !169, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !266, file: !26, line: 596, baseType: !83, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !266, file: !26, line: 597, baseType: !83, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !266, file: !26, line: 598, baseType: !59, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !255, file: !26, line: 666, baseType: !279, size: 192)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !26, line: 573, size: 192, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !26, line: 574, baseType: !111, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !26, line: 574, baseType: !37, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !26, line: 574, baseType: !37, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !26, line: 574, baseType: !42, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !26, line: 574, baseType: !42, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !279, file: !26, line: 574, baseType: !29, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !255, file: !26, line: 667, baseType: !288, size: 192)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !26, line: 604, size: 192, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !26, line: 605, baseType: !111, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !26, line: 605, baseType: !37, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !26, line: 605, baseType: !37, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !26, line: 605, baseType: !42, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !26, line: 605, baseType: !42, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !288, file: !26, line: 605, baseType: !24, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !255, file: !26, line: 668, baseType: !297, size: 448)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !26, line: 608, size: 448, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !297, file: !26, line: 609, baseType: !111, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !297, file: !26, line: 609, baseType: !37, size: 8, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !26, line: 609, baseType: !37, size: 8, offset: 72)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !297, file: !26, line: 609, baseType: !42, size: 16, offset: 80)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !297, file: !26, line: 609, baseType: !42, size: 16, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !297, file: !26, line: 609, baseType: !20, size: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !297, file: !26, line: 610, baseType: !169, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !297, file: !26, line: 611, baseType: !83, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !297, file: !26, line: 612, baseType: !83, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !297, file: !26, line: 613, baseType: !20, size: 32, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !255, file: !26, line: 669, baseType: !310, size: 512)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !26, line: 580, size: 512, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !26, line: 581, baseType: !111, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !26, line: 581, baseType: !37, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !26, line: 581, baseType: !37, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !26, line: 581, baseType: !42, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !26, line: 581, baseType: !42, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !310, file: !26, line: 581, baseType: !20, size: 32, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !310, file: !26, line: 582, baseType: !29, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !310, file: !26, line: 583, baseType: !29, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !310, file: !26, line: 584, baseType: !134, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !310, file: !26, line: 585, baseType: !111, size: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !310, file: !26, line: 586, baseType: !20, size: 32, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !255, file: !26, line: 670, baseType: !324, size: 320)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !26, line: 620, size: 320, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !26, line: 621, baseType: !111, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !324, file: !26, line: 621, baseType: !37, size: 8, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !26, line: 621, baseType: !37, size: 8, offset: 72)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !324, file: !26, line: 621, baseType: !42, size: 16, offset: 80)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !324, file: !26, line: 621, baseType: !42, size: 16, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !324, file: !26, line: 621, baseType: !37, size: 8, offset: 112)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !324, file: !26, line: 622, baseType: !134, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !324, file: !26, line: 623, baseType: !29, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !324, file: !26, line: 624, baseType: !59, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !255, file: !26, line: 671, baseType: !336, size: 640)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !26, line: 631, size: 640, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !26, line: 632, baseType: !111, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !26, line: 632, baseType: !37, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !26, line: 632, baseType: !37, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !26, line: 632, baseType: !42, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !26, line: 632, baseType: !42, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !336, file: !26, line: 633, baseType: !344, size: 512, offset: 128)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 512, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 8)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !255, file: !26, line: 672, baseType: !348, size: 320)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !26, line: 654, size: 320, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !26, line: 655, baseType: !111, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !26, line: 655, baseType: !37, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !26, line: 655, baseType: !37, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !26, line: 655, baseType: !42, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !26, line: 655, baseType: !42, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !348, file: !26, line: 655, baseType: !37, size: 8, offset: 112)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !348, file: !26, line: 656, baseType: !24, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !348, file: !26, line: 657, baseType: !29, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !348, file: !26, line: 658, baseType: !359, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !26, line: 645, size: 128, elements: !361)
!361 = !{!362, !368}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !360, file: !26, line: 646, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1052, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !367, !20, !111}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !111)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !360, file: !26, line: 647, baseType: !111, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !161, file: !26, line: 902, baseType: !169, size: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !161, file: !26, line: 903, baseType: !20, size: 32, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !135, file: !136, line: 61, baseType: !20, size: 32, offset: 1088)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !135, file: !136, line: 62, baseType: !20, size: 32, offset: 1120)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !135, file: !136, line: 63, baseType: !42, size: 16, offset: 1152)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !135, file: !136, line: 64, baseType: !37, size: 8, offset: 1168)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !135, file: !136, line: 66, baseType: !376, size: 2688, offset: 1216)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2688, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 7)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !135, file: !136, line: 67, baseType: !380, size: 3072, offset: 3904)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 3072, elements: !345)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !135, file: !136, line: 68, baseType: !382, size: 576, offset: 6976)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 576, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 9)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !135, file: !136, line: 69, baseType: !98, size: 64, offset: 7552)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !135, file: !136, line: 71, baseType: !83, size: 64, offset: 7616)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !135, file: !136, line: 72, baseType: !98, size: 64, offset: 7680)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !135, file: !136, line: 73, baseType: !254, size: 64, offset: 7744)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !135, file: !136, line: 74, baseType: !24, size: 64, offset: 7808)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !135, file: !136, line: 75, baseType: !29, size: 64, offset: 7872)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !135, file: !136, line: 76, baseType: !24, size: 64, offset: 7936)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !135, file: !136, line: 77, baseType: !169, size: 64, offset: 8000)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !135, file: !136, line: 78, baseType: !29, size: 64, offset: 8064)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !135, file: !136, line: 79, baseType: !24, size: 64, offset: 8128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !135, file: !136, line: 80, baseType: !71, size: 64, offset: 8192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !135, file: !136, line: 81, baseType: !169, size: 64, offset: 8256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !135, file: !136, line: 82, baseType: !398, size: 64, offset: 8320)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !26, line: 702, size: 128, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !407}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !400, file: !26, line: 706, baseType: !20, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !400, file: !26, line: 707, baseType: !20, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !26, line: 708, baseType: !42, size: 16, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !400, file: !26, line: 709, baseType: !37, size: 8, offset: 80)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !400, file: !26, line: 710, baseType: !37, size: 8, offset: 88)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !400, file: !26, line: 711, baseType: !37, size: 8, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !135, file: !136, line: 83, baseType: !169, size: 64, offset: 8384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !135, file: !136, line: 84, baseType: !29, size: 64, offset: 8448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !135, file: !136, line: 85, baseType: !254, size: 64, offset: 8512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !135, file: !136, line: 86, baseType: !29, size: 64, offset: 8576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !135, file: !136, line: 87, baseType: !254, size: 64, offset: 8640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !135, file: !136, line: 88, baseType: !169, size: 64, offset: 8704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !135, file: !136, line: 89, baseType: !169, size: 64, offset: 8768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !135, file: !136, line: 90, baseType: !416, size: 64, offset: 8832)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !135, file: !136, line: 91, baseType: !418, size: 64, offset: 8896)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !26, line: 637, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!18, !134, !422}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !135, file: !136, line: 92, baseType: !424, size: 64, offset: 8960)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !26, line: 641, baseType: !131)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !127, file: !6, line: 152, baseType: !29, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !113, file: !6, line: 155, baseType: !20, size: 32, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !113, file: !6, line: 156, baseType: !146, size: 16, offset: 416)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !113, file: !6, line: 157, baseType: !37, size: 8, offset: 432)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !30, file: !6, line: 375, baseType: !430, size: 576)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !430, file: !6, line: 123, baseType: !29, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !430, file: !6, line: 123, baseType: !37, size: 8, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !430, file: !6, line: 123, baseType: !37, size: 8, offset: 72)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !430, file: !6, line: 123, baseType: !42, size: 16, offset: 80)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !6, line: 123, baseType: !37, size: 8, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !430, file: !6, line: 123, baseType: !37, size: 8, offset: 104)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !430, file: !6, line: 124, baseType: !42, size: 16, offset: 112)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !430, file: !6, line: 125, baseType: !111, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !430, file: !6, line: 126, baseType: !59, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !430, file: !6, line: 127, baseType: !416, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !430, file: !6, line: 128, baseType: !29, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !6, line: 129, baseType: !29, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !430, file: !6, line: 130, baseType: !24, size: 64, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !430, file: !6, line: 131, baseType: !37, size: 8, offset: 512)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !30, file: !6, line: 376, baseType: !447, size: 448)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 448, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !460}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !447, file: !6, line: 135, baseType: !29, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !447, file: !6, line: 135, baseType: !37, size: 8, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !447, file: !6, line: 135, baseType: !37, size: 8, offset: 72)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !447, file: !6, line: 135, baseType: !42, size: 16, offset: 80)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !447, file: !6, line: 135, baseType: !37, size: 8, offset: 96)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !447, file: !6, line: 135, baseType: !37, size: 8, offset: 104)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !447, file: !6, line: 136, baseType: !24, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !447, file: !6, line: 137, baseType: !29, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !447, file: !6, line: 138, baseType: !29, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !447, file: !6, line: 139, baseType: !459, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !59)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !447, file: !6, line: 140, baseType: !20, size: 32, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !30, file: !6, line: 377, baseType: !462, size: 320)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 184, size: 320, elements: !463)
!463 = !{!464, !465, !466, !467, !468, !469, !473}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !462, file: !6, line: 185, baseType: !29, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !462, file: !6, line: 185, baseType: !37, size: 8, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !462, file: !6, line: 185, baseType: !37, size: 8, offset: 72)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !462, file: !6, line: 185, baseType: !42, size: 16, offset: 80)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !462, file: !6, line: 185, baseType: !37, size: 8, offset: 96)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !462, file: !6, line: 185, baseType: !470, size: 128, offset: 128)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 2)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !462, file: !6, line: 185, baseType: !29, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !30, file: !6, line: 378, baseType: !475, size: 384)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 187, size: 384, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !475, file: !6, line: 188, baseType: !29, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !475, file: !6, line: 188, baseType: !37, size: 8, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !475, file: !6, line: 188, baseType: !37, size: 8, offset: 72)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !475, file: !6, line: 188, baseType: !42, size: 16, offset: 80)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !6, line: 188, baseType: !37, size: 8, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !475, file: !6, line: 189, baseType: !470, size: 128, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !475, file: !6, line: 189, baseType: !29, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !475, file: !6, line: 189, baseType: !485, size: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !26, line: 480, size: 576, elements: !487)
!487 = !{!488, !489, !490, !491, !499, !514, !546, !547, !548, !549, !550, !551}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !486, file: !26, line: 481, baseType: !24, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !486, file: !26, line: 482, baseType: !485, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !486, file: !26, line: 483, baseType: !485, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !486, file: !26, line: 484, baseType: !492, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !26, line: 497, size: 256, elements: !494)
!494 = !{!495, !496, !497, !498}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !493, file: !26, line: 498, baseType: !492, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !493, file: !26, line: 499, baseType: !492, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !493, file: !26, line: 500, baseType: !485, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !493, file: !26, line: 501, baseType: !20, size: 32, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !486, file: !26, line: 485, baseType: !500, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !26, line: 466, size: 320, elements: !502)
!502 = !{!503, !508, !509, !510, !511, !512, !513}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !501, file: !26, line: 467, baseType: !504, size: 128)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !26, line: 459, size: 128, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !504, file: !26, line: 460, baseType: !37, size: 8)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !504, file: !26, line: 461, baseType: !59, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !501, file: !26, line: 468, baseType: !504, size: 128, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !501, file: !26, line: 469, baseType: !42, size: 16, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !501, file: !26, line: 470, baseType: !37, size: 8, offset: 272)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !501, file: !26, line: 471, baseType: !37, size: 8, offset: 280)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !501, file: !26, line: 472, baseType: !37, size: 8, offset: 288)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !501, file: !26, line: 473, baseType: !37, size: 8, offset: 296)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !486, file: !26, line: 486, baseType: !515, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !26, line: 448, size: 192, elements: !517)
!517 = !{!518, !541, !542, !543, !544, !545}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !516, file: !26, line: 449, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !26, line: 438, size: 64, elements: !520)
!520 = !{!521, !522, !535}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !519, file: !26, line: 439, baseType: !24, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !519, file: !26, line: 440, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !26, line: 419, size: 256, elements: !525)
!525 = !{!526, !531, !532, !533, !534}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !524, file: !26, line: 420, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1049, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!20, !367, !20, !111}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !524, file: !26, line: 421, baseType: !111, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !524, file: !26, line: 422, baseType: !24, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !524, file: !26, line: 423, baseType: !37, size: 8, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !524, file: !26, line: 424, baseType: !37, size: 8, offset: 200)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !519, file: !26, line: 441, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !26, line: 429, size: 128, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !537, file: !26, line: 430, baseType: !24, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !537, file: !26, line: 431, baseType: !536, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !516, file: !26, line: 450, baseType: !500, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !516, file: !26, line: 451, baseType: !37, size: 8, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !516, file: !26, line: 452, baseType: !37, size: 8, offset: 136)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !516, file: !26, line: 453, baseType: !37, size: 8, offset: 144)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !516, file: !26, line: 454, baseType: !37, size: 8, offset: 152)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !486, file: !26, line: 487, baseType: !59, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !486, file: !26, line: 488, baseType: !20, size: 32, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !486, file: !26, line: 489, baseType: !42, size: 16, offset: 480)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !486, file: !26, line: 490, baseType: !42, size: 16, offset: 496)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !486, file: !26, line: 491, baseType: !37, size: 8, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !486, file: !26, line: 492, baseType: !37, size: 8, offset: 520)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !30, file: !6, line: 379, baseType: !553, size: 384)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 192, size: 384, elements: !554)
!554 = !{!555, !556, !557, !558, !559, !560, !561, !562, !563}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !553, file: !6, line: 193, baseType: !29, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !553, file: !6, line: 193, baseType: !37, size: 8, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !553, file: !6, line: 193, baseType: !37, size: 8, offset: 72)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !553, file: !6, line: 193, baseType: !42, size: 16, offset: 80)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !553, file: !6, line: 193, baseType: !37, size: 8, offset: 96)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !553, file: !6, line: 193, baseType: !470, size: 128, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !553, file: !6, line: 193, baseType: !29, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !553, file: !6, line: 193, baseType: !20, size: 32, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !553, file: !6, line: 194, baseType: !20, size: 32, offset: 352)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !30, file: !6, line: 380, baseType: !565, size: 384)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 197, size: 384, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !565, file: !6, line: 198, baseType: !29, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !565, file: !6, line: 198, baseType: !37, size: 8, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !565, file: !6, line: 198, baseType: !37, size: 8, offset: 72)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !565, file: !6, line: 198, baseType: !42, size: 16, offset: 80)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !6, line: 198, baseType: !37, size: 8, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !565, file: !6, line: 200, baseType: !37, size: 8, offset: 104)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !565, file: !6, line: 201, baseType: !37, size: 8, offset: 112)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !565, file: !6, line: 202, baseType: !470, size: 128, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !565, file: !6, line: 202, baseType: !29, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !565, file: !6, line: 202, baseType: !577, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !59)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !30, file: !6, line: 381, baseType: !579, size: 320)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 205, size: 320, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !6, line: 206, baseType: !29, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !6, line: 206, baseType: !37, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !6, line: 206, baseType: !37, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !6, line: 206, baseType: !42, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !6, line: 206, baseType: !37, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !579, file: !6, line: 206, baseType: !470, size: 128, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !579, file: !6, line: 206, baseType: !29, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !30, file: !6, line: 382, baseType: !589, size: 384)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 233, size: 384, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !589, file: !6, line: 234, baseType: !29, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !589, file: !6, line: 234, baseType: !37, size: 8, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !6, line: 234, baseType: !37, size: 8, offset: 72)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !589, file: !6, line: 234, baseType: !42, size: 16, offset: 80)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !6, line: 234, baseType: !37, size: 8, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !589, file: !6, line: 234, baseType: !37, size: 8, offset: 104)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !589, file: !6, line: 234, baseType: !37, size: 8, offset: 112)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !589, file: !6, line: 234, baseType: !37, size: 8, offset: 120)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !589, file: !6, line: 234, baseType: !24, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !589, file: !6, line: 234, baseType: !20, size: 32, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !589, file: !6, line: 234, baseType: !20, size: 32, offset: 224)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !589, file: !6, line: 234, baseType: !20, size: 32, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !589, file: !6, line: 234, baseType: !37, size: 8, offset: 288)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !589, file: !6, line: 234, baseType: !37, size: 8, offset: 296)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !589, file: !6, line: 234, baseType: !29, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !30, file: !6, line: 383, baseType: !607, size: 576)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 237, size: 576, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !607, file: !6, line: 238, baseType: !29, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !607, file: !6, line: 238, baseType: !37, size: 8, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !607, file: !6, line: 238, baseType: !37, size: 8, offset: 72)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !607, file: !6, line: 238, baseType: !42, size: 16, offset: 80)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !607, file: !6, line: 238, baseType: !37, size: 8, offset: 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !607, file: !6, line: 238, baseType: !37, size: 8, offset: 104)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !607, file: !6, line: 238, baseType: !37, size: 8, offset: 112)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !607, file: !6, line: 238, baseType: !37, size: 8, offset: 120)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !607, file: !6, line: 238, baseType: !24, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !607, file: !6, line: 238, baseType: !20, size: 32, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !607, file: !6, line: 238, baseType: !20, size: 32, offset: 224)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !607, file: !6, line: 238, baseType: !20, size: 32, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !607, file: !6, line: 238, baseType: !37, size: 8, offset: 288)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !607, file: !6, line: 238, baseType: !37, size: 8, offset: 296)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !607, file: !6, line: 238, baseType: !42, size: 16, offset: 304)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !607, file: !6, line: 239, baseType: !29, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !607, file: !6, line: 240, baseType: !83, size: 64, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !607, file: !6, line: 241, baseType: !42, size: 16, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !607, file: !6, line: 242, baseType: !83, size: 64, offset: 512)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !30, file: !6, line: 384, baseType: !629, size: 384)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 262, size: 384, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !629, file: !6, line: 263, baseType: !29, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !629, file: !6, line: 263, baseType: !37, size: 8, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !629, file: !6, line: 263, baseType: !37, size: 8, offset: 72)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !629, file: !6, line: 263, baseType: !42, size: 16, offset: 80)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !6, line: 263, baseType: !37, size: 8, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !629, file: !6, line: 263, baseType: !37, size: 8, offset: 104)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !629, file: !6, line: 263, baseType: !37, size: 8, offset: 112)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !629, file: !6, line: 263, baseType: !37, size: 8, offset: 120)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !629, file: !6, line: 263, baseType: !24, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !629, file: !6, line: 263, baseType: !20, size: 32, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !629, file: !6, line: 263, baseType: !20, size: 32, offset: 224)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !629, file: !6, line: 263, baseType: !20, size: 32, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !629, file: !6, line: 263, baseType: !37, size: 8, offset: 288)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !629, file: !6, line: 263, baseType: !37, size: 8, offset: 296)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !629, file: !6, line: 263, baseType: !37, size: 8, offset: 304)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !629, file: !6, line: 264, baseType: !29, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !30, file: !6, line: 385, baseType: !648, size: 448)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 245, size: 448, elements: !649)
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !648, file: !6, line: 246, baseType: !29, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !648, file: !6, line: 246, baseType: !37, size: 8, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !648, file: !6, line: 246, baseType: !37, size: 8, offset: 72)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !648, file: !6, line: 246, baseType: !42, size: 16, offset: 80)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !648, file: !6, line: 246, baseType: !37, size: 8, offset: 96)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !648, file: !6, line: 246, baseType: !37, size: 8, offset: 104)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !648, file: !6, line: 246, baseType: !37, size: 8, offset: 112)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !648, file: !6, line: 246, baseType: !37, size: 8, offset: 120)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !648, file: !6, line: 246, baseType: !24, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !648, file: !6, line: 246, baseType: !20, size: 32, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !648, file: !6, line: 246, baseType: !20, size: 32, offset: 224)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !648, file: !6, line: 246, baseType: !20, size: 32, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !648, file: !6, line: 246, baseType: !37, size: 8, offset: 288)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !648, file: !6, line: 246, baseType: !37, size: 8, offset: 296)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !648, file: !6, line: 246, baseType: !29, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !648, file: !6, line: 247, baseType: !29, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !30, file: !6, line: 386, baseType: !667, size: 448)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 250, size: 448, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !667, file: !6, line: 251, baseType: !29, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !667, file: !6, line: 251, baseType: !37, size: 8, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !667, file: !6, line: 251, baseType: !37, size: 8, offset: 72)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !667, file: !6, line: 251, baseType: !42, size: 16, offset: 80)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !6, line: 251, baseType: !37, size: 8, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !667, file: !6, line: 251, baseType: !37, size: 8, offset: 104)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !667, file: !6, line: 251, baseType: !37, size: 8, offset: 112)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !667, file: !6, line: 251, baseType: !37, size: 8, offset: 120)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !667, file: !6, line: 251, baseType: !24, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !667, file: !6, line: 251, baseType: !20, size: 32, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !667, file: !6, line: 251, baseType: !20, size: 32, offset: 224)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !667, file: !6, line: 251, baseType: !20, size: 32, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !667, file: !6, line: 251, baseType: !37, size: 8, offset: 288)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !667, file: !6, line: 251, baseType: !37, size: 8, offset: 296)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !667, file: !6, line: 256, baseType: !29, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !667, file: !6, line: 257, baseType: !29, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !30, file: !6, line: 387, baseType: !686, size: 512)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 273, size: 512, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !686, file: !6, line: 274, baseType: !29, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !686, file: !6, line: 274, baseType: !37, size: 8, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !686, file: !6, line: 274, baseType: !37, size: 8, offset: 72)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !686, file: !6, line: 274, baseType: !42, size: 16, offset: 80)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !6, line: 274, baseType: !37, size: 8, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !686, file: !6, line: 274, baseType: !24, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !686, file: !6, line: 275, baseType: !20, size: 32, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !686, file: !6, line: 276, baseType: !363, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !686, file: !6, line: 277, baseType: !111, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !686, file: !6, line: 278, baseType: !470, size: 128, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !30, file: !6, line: 388, baseType: !699, size: 512)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 281, size: 512, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706, !707, !708, !714, !715, !716, !722, !723}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !699, file: !6, line: 282, baseType: !29, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !699, file: !6, line: 282, baseType: !37, size: 8, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !699, file: !6, line: 282, baseType: !37, size: 8, offset: 72)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !699, file: !6, line: 282, baseType: !42, size: 16, offset: 80)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !6, line: 282, baseType: !37, size: 8, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !699, file: !6, line: 282, baseType: !37, size: 8, offset: 104)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !699, file: !6, line: 283, baseType: !37, size: 8, offset: 112)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !699, file: !6, line: 284, baseType: !709, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1084, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!18, !20, !459, !20, !713, !111, !111}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !699, file: !6, line: 285, baseType: !24, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !699, file: !6, line: 286, baseType: !111, size: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !699, file: !6, line: 287, baseType: !717, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1102, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!18, !367, !20, !111, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !699, file: !6, line: 288, baseType: !29, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !6, line: 289, baseType: !29, size: 64, offset: 448)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !30, file: !6, line: 389, baseType: !725, size: 512)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 307, size: 512, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !725, file: !6, line: 308, baseType: !29, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !725, file: !6, line: 308, baseType: !37, size: 8, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !725, file: !6, line: 308, baseType: !37, size: 8, offset: 72)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !725, file: !6, line: 308, baseType: !42, size: 16, offset: 80)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !725, file: !6, line: 308, baseType: !37, size: 8, offset: 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !725, file: !6, line: 308, baseType: !37, size: 8, offset: 104)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !725, file: !6, line: 309, baseType: !37, size: 8, offset: 112)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !725, file: !6, line: 310, baseType: !37, size: 8, offset: 120)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !725, file: !6, line: 311, baseType: !111, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !725, file: !6, line: 312, baseType: !24, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !725, file: !6, line: 313, baseType: !98, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !725, file: !6, line: 314, baseType: !83, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !725, file: !6, line: 315, baseType: !83, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !725, file: !6, line: 316, baseType: !20, size: 32, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !30, file: !6, line: 390, baseType: !742, size: 448)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 340, size: 448, elements: !743)
!743 = !{!744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !742, file: !6, line: 341, baseType: !29, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !742, file: !6, line: 341, baseType: !37, size: 8, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !742, file: !6, line: 341, baseType: !37, size: 8, offset: 72)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !742, file: !6, line: 341, baseType: !42, size: 16, offset: 80)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !742, file: !6, line: 341, baseType: !37, size: 8, offset: 96)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !742, file: !6, line: 341, baseType: !24, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !742, file: !6, line: 342, baseType: !24, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !742, file: !6, line: 343, baseType: !111, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !742, file: !6, line: 344, baseType: !83, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !742, file: !6, line: 345, baseType: !20, size: 32, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !30, file: !6, line: 391, baseType: !755, size: 256)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 350, size: 256, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !762, !767}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !755, file: !6, line: 351, baseType: !29, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !755, file: !6, line: 351, baseType: !37, size: 8, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !755, file: !6, line: 351, baseType: !37, size: 8, offset: 72)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !755, file: !6, line: 351, baseType: !42, size: 16, offset: 80)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !6, line: 351, baseType: !37, size: 8, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !755, file: !6, line: 351, baseType: !763, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1055, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !367, !111}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !755, file: !6, line: 352, baseType: !111, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !30, file: !6, line: 392, baseType: !769, size: 192)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 357, size: 192, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !769, file: !6, line: 358, baseType: !29, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !769, file: !6, line: 358, baseType: !37, size: 8, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !769, file: !6, line: 358, baseType: !37, size: 8, offset: 72)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !769, file: !6, line: 358, baseType: !42, size: 16, offset: 80)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !6, line: 358, baseType: !37, size: 8, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !769, file: !6, line: 358, baseType: !29, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !30, file: !6, line: 399, baseType: !25, size: 384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !25, file: !26, line: 135, baseType: !37, size: 8, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !26, line: 136, baseType: !37, size: 8, offset: 72)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !25, file: !26, line: 137, baseType: !42, size: 16, offset: 80)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !26, line: 138, baseType: !782, size: 32, offset: 96)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !783, line: 327, size: 32, elements: !784)
!783 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !782, file: !783, line: 328, baseType: !20, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !782, file: !783, line: 329, baseType: !228, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !25, file: !26, line: 139, baseType: !24, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !25, file: !26, line: 140, baseType: !24, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !25, file: !26, line: 141, baseType: !24, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !25, file: !26, line: 142, baseType: !146, size: 16, offset: 320)
!791 = !{!0}
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 72, elements: !383)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!794 = !{i32 7, !"Dwarf Version", i32 4}
!795 = !{i32 2, !"Debug Info Version", i32 3}
!796 = !{i32 1, !"wchar_size", i32 2}
!797 = !{i32 1, !"Code Model", i32 2}
!798 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!799 = distinct !DISubprogram(name: "acpi_ex_opcode_2A_0T_0R", scope: !3, file: !3, line: 55, type: !132, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !800)
!800 = !{}
!801 = !DILocalVariable(name: "walk_state", arg: 1, scope: !799, file: !3, line: 55, type: !134)
!802 = !DILocation(line: 55, column: 61, scope: !799)
!803 = !DILocalVariable(name: "operand", scope: !799, file: !3, line: 57, type: !98)
!804 = !DILocation(line: 57, column: 30, scope: !799)
!805 = !DILocation(line: 57, column: 41, scope: !799)
!806 = !DILocation(line: 57, column: 53, scope: !799)
!807 = !DILocalVariable(name: "node", scope: !799, file: !3, line: 58, type: !24)
!808 = !DILocation(line: 58, column: 30, scope: !799)
!809 = !DILocalVariable(name: "value", scope: !799, file: !3, line: 59, type: !20)
!810 = !DILocation(line: 59, column: 6, scope: !799)
!811 = !DILocalVariable(name: "status", scope: !799, file: !3, line: 60, type: !18)
!812 = !DILocation(line: 60, column: 14, scope: !799)
!813 = !DILocation(line: 67, column: 10, scope: !799)
!814 = !DILocation(line: 67, column: 22, scope: !799)
!815 = !DILocation(line: 67, column: 2, scope: !799)
!816 = !DILocation(line: 72, column: 40, scope: !817)
!817 = distinct !DILexicalBlock(scope: !799, file: !3, line: 67, column: 30)
!818 = !DILocation(line: 72, column: 10, scope: !817)
!819 = !DILocation(line: 72, column: 8, scope: !817)
!820 = !DILocation(line: 76, column: 17, scope: !817)
!821 = !DILocation(line: 76, column: 29, scope: !817)
!822 = !DILocation(line: 76, column: 37, scope: !817)
!823 = !DILocation(line: 76, column: 11, scope: !817)
!824 = !DILocation(line: 76, column: 9, scope: !817)
!825 = !DILocation(line: 80, column: 33, scope: !826)
!826 = distinct !DILexicalBlock(scope: !817, file: !3, line: 80, column: 7)
!827 = !DILocation(line: 80, column: 8, scope: !826)
!828 = !DILocation(line: 80, column: 7, scope: !817)
!829 = !DILocation(line: 81, column: 4, scope: !830)
!830 = distinct !DILexicalBlock(scope: !826, file: !3, line: 80, column: 40)
!831 = !DILocation(line: 85, column: 11, scope: !830)
!832 = !DILocation(line: 86, column: 4, scope: !830)
!833 = !DILocation(line: 96, column: 41, scope: !817)
!834 = !DILocation(line: 96, column: 47, scope: !817)
!835 = !DILocation(line: 96, column: 12, scope: !817)
!836 = !DILocation(line: 96, column: 10, scope: !817)
!837 = !DILocation(line: 97, column: 3, scope: !817)
!838 = !DILocation(line: 101, column: 3, scope: !817)
!839 = !DILocation(line: 103, column: 10, scope: !817)
!840 = !DILocation(line: 104, column: 2, scope: !817)
!841 = !DILocation(line: 106, column: 2, scope: !799)
!842 = distinct !DISubprogram(name: "acpi_ex_opcode_2A_2T_1R", scope: !3, file: !3, line: 122, type: !132, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !800)
!843 = !DILocalVariable(name: "walk_state", arg: 1, scope: !842, file: !3, line: 122, type: !134)
!844 = !DILocation(line: 122, column: 61, scope: !842)
!845 = !DILocalVariable(name: "operand", scope: !842, file: !3, line: 124, type: !98)
!846 = !DILocation(line: 124, column: 30, scope: !842)
!847 = !DILocation(line: 124, column: 41, scope: !842)
!848 = !DILocation(line: 124, column: 53, scope: !842)
!849 = !DILocalVariable(name: "return_desc1", scope: !842, file: !3, line: 125, type: !29)
!850 = !DILocation(line: 125, column: 29, scope: !842)
!851 = !DILocalVariable(name: "return_desc2", scope: !842, file: !3, line: 126, type: !29)
!852 = !DILocation(line: 126, column: 29, scope: !842)
!853 = !DILocalVariable(name: "status", scope: !842, file: !3, line: 127, type: !18)
!854 = !DILocation(line: 127, column: 14, scope: !842)
!855 = !DILocation(line: 134, column: 10, scope: !842)
!856 = !DILocation(line: 134, column: 22, scope: !842)
!857 = !DILocation(line: 134, column: 2, scope: !842)
!858 = !DILocation(line: 140, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !842, file: !3, line: 134, column: 30)
!860 = !DILocation(line: 139, column: 16, scope: !859)
!861 = !DILocation(line: 141, column: 8, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !3, line: 141, column: 7)
!863 = !DILocation(line: 141, column: 7, scope: !859)
!864 = !DILocation(line: 142, column: 11, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !3, line: 141, column: 22)
!866 = !DILocation(line: 143, column: 4, scope: !865)
!867 = !DILocation(line: 147, column: 7, scope: !859)
!868 = !DILocation(line: 146, column: 16, scope: !859)
!869 = !DILocation(line: 148, column: 8, scope: !870)
!870 = distinct !DILexicalBlock(scope: !859, file: !3, line: 148, column: 7)
!871 = !DILocation(line: 148, column: 7, scope: !859)
!872 = !DILocation(line: 149, column: 11, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !3, line: 148, column: 22)
!874 = !DILocation(line: 150, column: 4, scope: !873)
!875 = !DILocation(line: 155, column: 27, scope: !859)
!876 = !DILocation(line: 155, column: 39, scope: !859)
!877 = !DILocation(line: 155, column: 47, scope: !859)
!878 = !DILocation(line: 156, column: 6, scope: !859)
!879 = !DILocation(line: 156, column: 18, scope: !859)
!880 = !DILocation(line: 156, column: 26, scope: !859)
!881 = !DILocation(line: 157, column: 7, scope: !859)
!882 = !DILocation(line: 157, column: 21, scope: !859)
!883 = !DILocation(line: 157, column: 29, scope: !859)
!884 = !DILocation(line: 158, column: 7, scope: !859)
!885 = !DILocation(line: 158, column: 21, scope: !859)
!886 = !DILocation(line: 158, column: 29, scope: !859)
!887 = !DILocation(line: 155, column: 12, scope: !859)
!888 = !DILocation(line: 155, column: 10, scope: !859)
!889 = !DILocation(line: 159, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !859, file: !3, line: 159, column: 7)
!891 = !DILocation(line: 159, column: 7, scope: !859)
!892 = !DILocation(line: 160, column: 4, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 159, column: 29)
!894 = !DILocation(line: 162, column: 3, scope: !859)
!895 = !DILocation(line: 166, column: 3, scope: !859)
!896 = !DILocation(line: 169, column: 10, scope: !859)
!897 = !DILocation(line: 170, column: 3, scope: !859)
!898 = !DILocation(line: 175, column: 25, scope: !842)
!899 = !DILocation(line: 175, column: 39, scope: !842)
!900 = !DILocation(line: 175, column: 51, scope: !842)
!901 = !DILocation(line: 175, column: 11, scope: !842)
!902 = !DILocation(line: 175, column: 9, scope: !842)
!903 = !DILocation(line: 176, column: 6, scope: !904)
!904 = distinct !DILexicalBlock(scope: !842, file: !3, line: 176, column: 6)
!905 = !DILocation(line: 176, column: 6, scope: !842)
!906 = !DILocation(line: 177, column: 3, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !3, line: 176, column: 28)
!908 = !DILocation(line: 180, column: 25, scope: !842)
!909 = !DILocation(line: 180, column: 39, scope: !842)
!910 = !DILocation(line: 180, column: 51, scope: !842)
!911 = !DILocation(line: 180, column: 11, scope: !842)
!912 = !DILocation(line: 180, column: 9, scope: !842)
!913 = !DILocation(line: 181, column: 6, scope: !914)
!914 = distinct !DILexicalBlock(scope: !842, file: !3, line: 181, column: 6)
!915 = !DILocation(line: 181, column: 6, scope: !842)
!916 = !DILocation(line: 182, column: 3, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !3, line: 181, column: 28)
!918 = !DILabel(scope: !842, name: "cleanup", file: !3, line: 185)
!919 = !DILocation(line: 185, column: 1, scope: !842)
!920 = !DILocation(line: 190, column: 27, scope: !842)
!921 = !DILocation(line: 190, column: 2, scope: !842)
!922 = !DILocation(line: 192, column: 6, scope: !923)
!923 = distinct !DILexicalBlock(scope: !842, file: !3, line: 192, column: 6)
!924 = !DILocation(line: 192, column: 6, scope: !842)
!925 = !DILocation(line: 196, column: 28, scope: !926)
!926 = distinct !DILexicalBlock(scope: !923, file: !3, line: 192, column: 28)
!927 = !DILocation(line: 196, column: 3, scope: !926)
!928 = !DILocation(line: 197, column: 2, scope: !926)
!929 = !DILocation(line: 202, column: 28, scope: !930)
!930 = distinct !DILexicalBlock(scope: !923, file: !3, line: 201, column: 7)
!931 = !DILocation(line: 202, column: 3, scope: !930)
!932 = !DILocation(line: 202, column: 15, scope: !930)
!933 = !DILocation(line: 202, column: 26, scope: !930)
!934 = !DILocation(line: 205, column: 2, scope: !842)
!935 = distinct !DISubprogram(name: "acpi_ex_opcode_2A_1T_1R", scope: !3, file: !3, line: 221, type: !132, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !800)
!936 = !DILocalVariable(name: "walk_state", arg: 1, scope: !935, file: !3, line: 221, type: !134)
!937 = !DILocation(line: 221, column: 61, scope: !935)
!938 = !DILocalVariable(name: "operand", scope: !935, file: !3, line: 223, type: !98)
!939 = !DILocation(line: 223, column: 30, scope: !935)
!940 = !DILocation(line: 223, column: 41, scope: !935)
!941 = !DILocation(line: 223, column: 53, scope: !935)
!942 = !DILocalVariable(name: "return_desc", scope: !935, file: !3, line: 224, type: !29)
!943 = !DILocation(line: 224, column: 29, scope: !935)
!944 = !DILocalVariable(name: "index", scope: !935, file: !3, line: 225, type: !59)
!945 = !DILocation(line: 225, column: 6, scope: !935)
!946 = !DILocalVariable(name: "status", scope: !935, file: !3, line: 226, type: !18)
!947 = !DILocation(line: 226, column: 14, scope: !935)
!948 = !DILocalVariable(name: "length", scope: !935, file: !3, line: 227, type: !949)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !19, line: 127, baseType: !59)
!950 = !DILocation(line: 227, column: 12, scope: !935)
!951 = !DILocation(line: 234, column: 6, scope: !952)
!952 = distinct !DILexicalBlock(scope: !935, file: !3, line: 234, column: 6)
!953 = !DILocation(line: 234, column: 18, scope: !952)
!954 = !DILocation(line: 234, column: 27, scope: !952)
!955 = !DILocation(line: 234, column: 33, scope: !952)
!956 = !DILocation(line: 234, column: 6, scope: !935)
!957 = !DILocation(line: 238, column: 17, scope: !958)
!958 = distinct !DILexicalBlock(scope: !952, file: !3, line: 234, column: 45)
!959 = !DILocation(line: 238, column: 15, scope: !958)
!960 = !DILocation(line: 239, column: 8, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !3, line: 239, column: 7)
!962 = !DILocation(line: 239, column: 7, scope: !958)
!963 = !DILocation(line: 240, column: 11, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !3, line: 239, column: 21)
!965 = !DILocation(line: 241, column: 4, scope: !964)
!966 = !DILocation(line: 245, column: 26, scope: !958)
!967 = !DILocation(line: 245, column: 38, scope: !958)
!968 = !DILocation(line: 246, column: 12, scope: !958)
!969 = !DILocation(line: 246, column: 24, scope: !958)
!970 = !DILocation(line: 246, column: 32, scope: !958)
!971 = !DILocation(line: 247, column: 12, scope: !958)
!972 = !DILocation(line: 247, column: 24, scope: !958)
!973 = !DILocation(line: 247, column: 32, scope: !958)
!974 = !DILocation(line: 245, column: 7, scope: !958)
!975 = !DILocation(line: 244, column: 3, scope: !958)
!976 = !DILocation(line: 244, column: 16, scope: !958)
!977 = !DILocation(line: 244, column: 24, scope: !958)
!978 = !DILocation(line: 244, column: 30, scope: !958)
!979 = !DILocation(line: 248, column: 3, scope: !958)
!980 = !DILocation(line: 251, column: 10, scope: !935)
!981 = !DILocation(line: 251, column: 22, scope: !935)
!982 = !DILocation(line: 251, column: 2, scope: !935)
!983 = !DILocation(line: 254, column: 17, scope: !984)
!984 = distinct !DILexicalBlock(scope: !935, file: !3, line: 251, column: 30)
!985 = !DILocation(line: 254, column: 15, scope: !984)
!986 = !DILocation(line: 255, column: 8, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !3, line: 255, column: 7)
!988 = !DILocation(line: 255, column: 7, scope: !984)
!989 = !DILocation(line: 256, column: 11, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !3, line: 255, column: 21)
!991 = !DILocation(line: 257, column: 4, scope: !990)
!992 = !DILocation(line: 262, column: 27, scope: !984)
!993 = !DILocation(line: 262, column: 39, scope: !984)
!994 = !DILocation(line: 262, column: 47, scope: !984)
!995 = !DILocation(line: 263, column: 6, scope: !984)
!996 = !DILocation(line: 263, column: 18, scope: !984)
!997 = !DILocation(line: 263, column: 26, scope: !984)
!998 = !DILocation(line: 264, column: 13, scope: !984)
!999 = !DILocation(line: 264, column: 26, scope: !984)
!1000 = !DILocation(line: 264, column: 34, scope: !984)
!1001 = !DILocation(line: 262, column: 12, scope: !984)
!1002 = !DILocation(line: 262, column: 10, scope: !984)
!1003 = !DILocation(line: 265, column: 3, scope: !984)
!1004 = !DILocation(line: 270, column: 30, scope: !984)
!1005 = !DILocation(line: 270, column: 42, scope: !984)
!1006 = !DILocation(line: 271, column: 9, scope: !984)
!1007 = !DILocation(line: 270, column: 7, scope: !984)
!1008 = !DILocation(line: 269, column: 10, scope: !984)
!1009 = !DILocation(line: 272, column: 3, scope: !984)
!1010 = !DILocation(line: 290, column: 3, scope: !984)
!1011 = !DILocation(line: 290, column: 11, scope: !984)
!1012 = !DILocation(line: 290, column: 20, scope: !984)
!1013 = !DILocation(line: 290, column: 32, scope: !984)
!1014 = !DILocation(line: 290, column: 39, scope: !984)
!1015 = !DILocation(line: 290, column: 18, scope: !984)
!1016 = !DILocation(line: 290, column: 47, scope: !984)
!1017 = !DILocation(line: 291, column: 11, scope: !984)
!1018 = !DILocation(line: 291, column: 20, scope: !984)
!1019 = !DILocation(line: 291, column: 32, scope: !984)
!1020 = !DILocation(line: 291, column: 40, scope: !984)
!1021 = !DILocation(line: 291, column: 18, scope: !984)
!1022 = !DILocation(line: 291, column: 47, scope: !984)
!1023 = !DILocation(line: 292, column: 11, scope: !984)
!1024 = !DILocation(line: 292, column: 23, scope: !984)
!1025 = !DILocation(line: 292, column: 30, scope: !984)
!1026 = !DILocation(line: 292, column: 38, scope: !984)
!1027 = !DILocation(line: 292, column: 10, scope: !984)
!1028 = !DILocation(line: 0, scope: !984)
!1029 = !DILocation(line: 293, column: 10, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !984, file: !3, line: 292, column: 48)
!1031 = distinct !{!1031, !1010, !1032}
!1032 = !DILocation(line: 294, column: 3, scope: !984)
!1033 = !DILocation(line: 298, column: 46, scope: !984)
!1034 = !DILocation(line: 298, column: 17, scope: !984)
!1035 = !DILocation(line: 298, column: 15, scope: !984)
!1036 = !DILocation(line: 299, column: 8, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !984, file: !3, line: 299, column: 7)
!1038 = !DILocation(line: 299, column: 7, scope: !984)
!1039 = !DILocation(line: 300, column: 11, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 299, column: 21)
!1041 = !DILocation(line: 301, column: 4, scope: !1040)
!1042 = !DILocation(line: 308, column: 10, scope: !984)
!1043 = !DILocation(line: 308, column: 23, scope: !984)
!1044 = !DILocation(line: 308, column: 30, scope: !984)
!1045 = !DILocation(line: 309, column: 10, scope: !984)
!1046 = !DILocation(line: 309, column: 22, scope: !984)
!1047 = !DILocation(line: 309, column: 29, scope: !984)
!1048 = !DILocation(line: 309, column: 38, scope: !984)
!1049 = !DILocation(line: 308, column: 3, scope: !984)
!1050 = !DILocation(line: 310, column: 3, scope: !984)
!1051 = !DILocation(line: 317, column: 31, scope: !984)
!1052 = !DILocation(line: 317, column: 43, scope: !984)
!1053 = !DILocation(line: 318, column: 24, scope: !984)
!1054 = !DILocation(line: 317, column: 7, scope: !984)
!1055 = !DILocation(line: 316, column: 10, scope: !984)
!1056 = !DILocation(line: 319, column: 3, scope: !984)
!1057 = !DILocation(line: 326, column: 7, scope: !984)
!1058 = !DILocation(line: 325, column: 15, scope: !984)
!1059 = !DILocation(line: 327, column: 8, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !984, file: !3, line: 327, column: 7)
!1061 = !DILocation(line: 327, column: 7, scope: !984)
!1062 = !DILocation(line: 328, column: 11, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 327, column: 21)
!1064 = !DILocation(line: 329, column: 4, scope: !1063)
!1065 = !DILocation(line: 334, column: 11, scope: !984)
!1066 = !DILocation(line: 334, column: 23, scope: !984)
!1067 = !DILocation(line: 334, column: 31, scope: !984)
!1068 = !DILocation(line: 334, column: 9, scope: !984)
!1069 = !DILocation(line: 335, column: 40, scope: !984)
!1070 = !DILocation(line: 335, column: 34, scope: !984)
!1071 = !DILocation(line: 335, column: 3, scope: !984)
!1072 = !DILocation(line: 335, column: 16, scope: !984)
!1073 = !DILocation(line: 335, column: 26, scope: !984)
!1074 = !DILocation(line: 335, column: 32, scope: !984)
!1075 = !DILocation(line: 336, column: 3, scope: !984)
!1076 = !DILocation(line: 336, column: 16, scope: !984)
!1077 = !DILocation(line: 336, column: 26, scope: !984)
!1078 = !DILocation(line: 336, column: 32, scope: !984)
!1079 = !DILocation(line: 342, column: 12, scope: !984)
!1080 = !DILocation(line: 342, column: 25, scope: !984)
!1081 = !DILocation(line: 342, column: 32, scope: !984)
!1082 = !DILocation(line: 342, column: 11, scope: !984)
!1083 = !DILocation(line: 342, column: 3, scope: !984)
!1084 = !DILocation(line: 345, column: 8, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 345, column: 8)
!1086 = distinct !DILexicalBlock(scope: !984, file: !3, line: 342, column: 38)
!1087 = !DILocation(line: 345, column: 17, scope: !1085)
!1088 = !DILocation(line: 345, column: 29, scope: !1085)
!1089 = !DILocation(line: 345, column: 36, scope: !1085)
!1090 = !DILocation(line: 345, column: 14, scope: !1085)
!1091 = !DILocation(line: 345, column: 8, scope: !1086)
!1092 = !DILocation(line: 346, column: 14, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 345, column: 44)
!1094 = !DILocation(line: 346, column: 26, scope: !1093)
!1095 = !DILocation(line: 346, column: 33, scope: !1093)
!1096 = !DILocation(line: 346, column: 12, scope: !1093)
!1097 = !DILocation(line: 347, column: 12, scope: !1093)
!1098 = !DILocation(line: 348, column: 4, scope: !1093)
!1099 = !DILocation(line: 350, column: 4, scope: !1086)
!1100 = !DILocation(line: 350, column: 17, scope: !1086)
!1101 = !DILocation(line: 350, column: 27, scope: !1086)
!1102 = !DILocation(line: 350, column: 39, scope: !1086)
!1103 = !DILocation(line: 353, column: 10, scope: !1086)
!1104 = !DILocation(line: 353, column: 22, scope: !1086)
!1105 = !DILocation(line: 353, column: 29, scope: !1086)
!1106 = !DILocation(line: 353, column: 37, scope: !1086)
!1107 = !DILocation(line: 352, column: 4, scope: !1086)
!1108 = !DILocation(line: 352, column: 17, scope: !1086)
!1109 = !DILocation(line: 352, column: 27, scope: !1086)
!1110 = !DILocation(line: 352, column: 41, scope: !1086)
!1111 = !DILocation(line: 354, column: 4, scope: !1086)
!1112 = !DILocation(line: 358, column: 8, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 358, column: 8)
!1114 = !DILocation(line: 358, column: 17, scope: !1113)
!1115 = !DILocation(line: 358, column: 29, scope: !1113)
!1116 = !DILocation(line: 358, column: 36, scope: !1113)
!1117 = !DILocation(line: 358, column: 14, scope: !1113)
!1118 = !DILocation(line: 358, column: 8, scope: !1086)
!1119 = !DILocation(line: 359, column: 14, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 358, column: 44)
!1121 = !DILocation(line: 359, column: 26, scope: !1120)
!1122 = !DILocation(line: 359, column: 33, scope: !1120)
!1123 = !DILocation(line: 359, column: 12, scope: !1120)
!1124 = !DILocation(line: 360, column: 12, scope: !1120)
!1125 = !DILocation(line: 361, column: 4, scope: !1120)
!1126 = !DILocation(line: 363, column: 4, scope: !1086)
!1127 = !DILocation(line: 363, column: 17, scope: !1086)
!1128 = !DILocation(line: 363, column: 27, scope: !1086)
!1129 = !DILocation(line: 363, column: 39, scope: !1086)
!1130 = !DILocation(line: 366, column: 10, scope: !1086)
!1131 = !DILocation(line: 366, column: 22, scope: !1086)
!1132 = !DILocation(line: 366, column: 29, scope: !1086)
!1133 = !DILocation(line: 366, column: 37, scope: !1086)
!1134 = !DILocation(line: 365, column: 4, scope: !1086)
!1135 = !DILocation(line: 365, column: 17, scope: !1086)
!1136 = !DILocation(line: 365, column: 27, scope: !1086)
!1137 = !DILocation(line: 365, column: 41, scope: !1086)
!1138 = !DILocation(line: 367, column: 4, scope: !1086)
!1139 = !DILocation(line: 371, column: 8, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 371, column: 8)
!1141 = !DILocation(line: 371, column: 17, scope: !1140)
!1142 = !DILocation(line: 371, column: 29, scope: !1140)
!1143 = !DILocation(line: 371, column: 37, scope: !1140)
!1144 = !DILocation(line: 371, column: 14, scope: !1140)
!1145 = !DILocation(line: 371, column: 8, scope: !1086)
!1146 = !DILocation(line: 372, column: 14, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 371, column: 44)
!1148 = !DILocation(line: 372, column: 26, scope: !1147)
!1149 = !DILocation(line: 372, column: 34, scope: !1147)
!1150 = !DILocation(line: 372, column: 12, scope: !1147)
!1151 = !DILocation(line: 373, column: 12, scope: !1147)
!1152 = !DILocation(line: 374, column: 4, scope: !1147)
!1153 = !DILocation(line: 376, column: 4, scope: !1086)
!1154 = !DILocation(line: 376, column: 17, scope: !1086)
!1155 = !DILocation(line: 376, column: 27, scope: !1086)
!1156 = !DILocation(line: 376, column: 39, scope: !1086)
!1157 = !DILocation(line: 378, column: 9, scope: !1086)
!1158 = !DILocation(line: 378, column: 21, scope: !1086)
!1159 = !DILocation(line: 378, column: 29, scope: !1086)
!1160 = !DILocation(line: 378, column: 38, scope: !1086)
!1161 = !DILocation(line: 377, column: 4, scope: !1086)
!1162 = !DILocation(line: 377, column: 17, scope: !1086)
!1163 = !DILocation(line: 377, column: 27, scope: !1086)
!1164 = !DILocation(line: 377, column: 33, scope: !1086)
!1165 = !DILocation(line: 379, column: 4, scope: !1086)
!1166 = !DILocation(line: 383, column: 4, scope: !1086)
!1167 = !DILocation(line: 386, column: 11, scope: !1086)
!1168 = !DILocation(line: 387, column: 4, scope: !1086)
!1169 = !DILocation(line: 392, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !984, file: !3, line: 392, column: 7)
!1171 = !DILocation(line: 392, column: 7, scope: !984)
!1172 = !DILocation(line: 393, column: 4, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 392, column: 29)
!1174 = !DILocation(line: 397, column: 4, scope: !1173)
!1175 = !DILocation(line: 404, column: 35, scope: !984)
!1176 = !DILocation(line: 404, column: 3, scope: !984)
!1177 = !DILocation(line: 404, column: 16, scope: !984)
!1178 = !DILocation(line: 404, column: 26, scope: !984)
!1179 = !DILocation(line: 404, column: 33, scope: !984)
!1180 = !DILocation(line: 405, column: 25, scope: !984)
!1181 = !DILocation(line: 405, column: 3, scope: !984)
!1182 = !DILocation(line: 409, column: 26, scope: !984)
!1183 = !DILocation(line: 409, column: 39, scope: !984)
!1184 = !DILocation(line: 409, column: 51, scope: !984)
!1185 = !DILocation(line: 409, column: 12, scope: !984)
!1186 = !DILocation(line: 409, column: 10, scope: !984)
!1187 = !DILocation(line: 413, column: 28, scope: !984)
!1188 = !DILocation(line: 413, column: 3, scope: !984)
!1189 = !DILocation(line: 413, column: 15, scope: !984)
!1190 = !DILocation(line: 413, column: 26, scope: !984)
!1191 = !DILocation(line: 414, column: 3, scope: !984)
!1192 = !DILocation(line: 418, column: 3, scope: !984)
!1193 = !DILocation(line: 420, column: 10, scope: !984)
!1194 = !DILocation(line: 421, column: 3, scope: !984)
!1195 = !DILocation(line: 422, column: 2, scope: !984)
!1196 = !DILabel(scope: !935, name: "store_result_to_target", file: !3, line: 424)
!1197 = !DILocation(line: 424, column: 1, scope: !935)
!1198 = !DILocation(line: 426, column: 6, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !935, file: !3, line: 426, column: 6)
!1200 = !DILocation(line: 426, column: 6, scope: !935)
!1201 = !DILocation(line: 431, column: 26, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 426, column: 28)
!1203 = !DILocation(line: 431, column: 39, scope: !1202)
!1204 = !DILocation(line: 431, column: 51, scope: !1202)
!1205 = !DILocation(line: 431, column: 12, scope: !1202)
!1206 = !DILocation(line: 431, column: 10, scope: !1202)
!1207 = !DILocation(line: 432, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 432, column: 7)
!1209 = !DILocation(line: 432, column: 7, scope: !1202)
!1210 = !DILocation(line: 433, column: 4, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 432, column: 29)
!1212 = !DILocation(line: 436, column: 8, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 436, column: 7)
!1214 = !DILocation(line: 436, column: 20, scope: !1213)
!1215 = !DILocation(line: 436, column: 7, scope: !1202)
!1216 = !DILocation(line: 437, column: 29, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 436, column: 32)
!1218 = !DILocation(line: 437, column: 4, scope: !1217)
!1219 = !DILocation(line: 437, column: 16, scope: !1217)
!1220 = !DILocation(line: 437, column: 27, scope: !1217)
!1221 = !DILocation(line: 438, column: 3, scope: !1217)
!1222 = !DILocation(line: 439, column: 2, scope: !1202)
!1223 = !DILabel(scope: !935, name: "cleanup", file: !3, line: 441)
!1224 = !DILocation(line: 441, column: 1, scope: !935)
!1225 = !DILocation(line: 445, column: 6, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !935, file: !3, line: 445, column: 6)
!1227 = !DILocation(line: 445, column: 6, scope: !935)
!1228 = !DILocation(line: 446, column: 28, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 445, column: 28)
!1230 = !DILocation(line: 446, column: 3, scope: !1229)
!1231 = !DILocation(line: 447, column: 3, scope: !1229)
!1232 = !DILocation(line: 447, column: 15, scope: !1229)
!1233 = !DILocation(line: 447, column: 26, scope: !1229)
!1234 = !DILocation(line: 448, column: 2, scope: !1229)
!1235 = !DILocation(line: 450, column: 2, scope: !935)
!1236 = distinct !DISubprogram(name: "acpi_ex_opcode_2A_0T_1R", scope: !3, file: !3, line: 465, type: !132, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !800)
!1237 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1236, file: !3, line: 465, type: !134)
!1238 = !DILocation(line: 465, column: 61, scope: !1236)
!1239 = !DILocalVariable(name: "operand", scope: !1236, file: !3, line: 467, type: !98)
!1240 = !DILocation(line: 467, column: 30, scope: !1236)
!1241 = !DILocation(line: 467, column: 41, scope: !1236)
!1242 = !DILocation(line: 467, column: 53, scope: !1236)
!1243 = !DILocalVariable(name: "return_desc", scope: !1236, file: !3, line: 468, type: !29)
!1244 = !DILocation(line: 468, column: 29, scope: !1236)
!1245 = !DILocalVariable(name: "status", scope: !1236, file: !3, line: 469, type: !18)
!1246 = !DILocation(line: 469, column: 14, scope: !1236)
!1247 = !DILocalVariable(name: "logical_result", scope: !1236, file: !3, line: 470, type: !37)
!1248 = !DILocation(line: 470, column: 5, scope: !1236)
!1249 = !DILocation(line: 477, column: 16, scope: !1236)
!1250 = !DILocation(line: 477, column: 14, scope: !1236)
!1251 = !DILocation(line: 478, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 478, column: 6)
!1253 = !DILocation(line: 478, column: 6, scope: !1236)
!1254 = !DILocation(line: 479, column: 10, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 478, column: 20)
!1256 = !DILocation(line: 480, column: 3, scope: !1255)
!1257 = !DILocation(line: 485, column: 6, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 485, column: 6)
!1259 = !DILocation(line: 485, column: 18, scope: !1258)
!1260 = !DILocation(line: 485, column: 27, scope: !1258)
!1261 = !DILocation(line: 485, column: 33, scope: !1258)
!1262 = !DILocation(line: 485, column: 6, scope: !1236)
!1263 = !DILocation(line: 489, column: 42, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 485, column: 56)
!1265 = !DILocation(line: 489, column: 54, scope: !1264)
!1266 = !DILocation(line: 490, column: 14, scope: !1264)
!1267 = !DILocation(line: 490, column: 26, scope: !1264)
!1268 = !DILocation(line: 491, column: 14, scope: !1264)
!1269 = !DILocation(line: 492, column: 14, scope: !1264)
!1270 = !DILocation(line: 492, column: 26, scope: !1264)
!1271 = !DILocation(line: 493, column: 14, scope: !1264)
!1272 = !DILocation(line: 489, column: 12, scope: !1264)
!1273 = !DILocation(line: 489, column: 10, scope: !1264)
!1274 = !DILocation(line: 494, column: 3, scope: !1264)
!1275 = !DILocation(line: 495, column: 13, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 495, column: 13)
!1277 = !DILocation(line: 495, column: 25, scope: !1276)
!1278 = !DILocation(line: 495, column: 34, scope: !1276)
!1279 = !DILocation(line: 495, column: 40, scope: !1276)
!1280 = !DILocation(line: 495, column: 13, scope: !1258)
!1281 = !DILocation(line: 499, column: 34, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 495, column: 55)
!1283 = !DILocation(line: 499, column: 46, scope: !1282)
!1284 = !DILocation(line: 499, column: 54, scope: !1282)
!1285 = !DILocation(line: 500, column: 13, scope: !1282)
!1286 = !DILocation(line: 499, column: 12, scope: !1282)
!1287 = !DILocation(line: 499, column: 10, scope: !1282)
!1288 = !DILocation(line: 501, column: 3, scope: !1282)
!1289 = !DILocation(line: 504, column: 10, scope: !1236)
!1290 = !DILocation(line: 504, column: 22, scope: !1236)
!1291 = !DILocation(line: 504, column: 2, scope: !1236)
!1292 = !DILocation(line: 508, column: 29, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 504, column: 30)
!1294 = !DILocation(line: 508, column: 41, scope: !1293)
!1295 = !DILocation(line: 508, column: 53, scope: !1293)
!1296 = !DILocation(line: 508, column: 7, scope: !1293)
!1297 = !DILocation(line: 507, column: 10, scope: !1293)
!1298 = !DILocation(line: 509, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 509, column: 7)
!1300 = !DILocation(line: 509, column: 14, scope: !1299)
!1301 = !DILocation(line: 509, column: 7, scope: !1293)
!1302 = !DILocation(line: 510, column: 19, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 509, column: 26)
!1304 = !DILocation(line: 511, column: 11, scope: !1303)
!1305 = !DILocation(line: 512, column: 3, scope: !1303)
!1306 = !DILocation(line: 513, column: 3, scope: !1293)
!1307 = !DILocation(line: 517, column: 38, scope: !1293)
!1308 = !DILocation(line: 517, column: 50, scope: !1293)
!1309 = !DILocation(line: 517, column: 12, scope: !1293)
!1310 = !DILocation(line: 517, column: 10, scope: !1293)
!1311 = !DILocation(line: 518, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 518, column: 7)
!1313 = !DILocation(line: 518, column: 14, scope: !1312)
!1314 = !DILocation(line: 518, column: 7, scope: !1293)
!1315 = !DILocation(line: 519, column: 19, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 518, column: 26)
!1317 = !DILocation(line: 520, column: 11, scope: !1316)
!1318 = !DILocation(line: 521, column: 3, scope: !1316)
!1319 = !DILocation(line: 522, column: 3, scope: !1293)
!1320 = !DILocation(line: 526, column: 3, scope: !1293)
!1321 = !DILocation(line: 529, column: 10, scope: !1293)
!1322 = !DILocation(line: 530, column: 3, scope: !1293)
!1323 = !DILocation(line: 531, column: 2, scope: !1293)
!1324 = !DILabel(scope: !1236, name: "store_logical_result", file: !3, line: 533)
!1325 = !DILocation(line: 533, column: 1, scope: !1236)
!1326 = !DILocation(line: 538, column: 6, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 538, column: 6)
!1328 = !DILocation(line: 538, column: 6, scope: !1236)
!1329 = !DILocation(line: 539, column: 3, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 538, column: 22)
!1331 = !DILocation(line: 539, column: 16, scope: !1330)
!1332 = !DILocation(line: 539, column: 24, scope: !1330)
!1333 = !DILocation(line: 539, column: 30, scope: !1330)
!1334 = !DILocation(line: 540, column: 2, scope: !1330)
!1335 = !DILabel(scope: !1236, name: "cleanup", file: !3, line: 542)
!1336 = !DILocation(line: 542, column: 1, scope: !1236)
!1337 = !DILocation(line: 546, column: 6, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 546, column: 6)
!1339 = !DILocation(line: 546, column: 6, scope: !1236)
!1340 = !DILocation(line: 547, column: 28, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 546, column: 28)
!1342 = !DILocation(line: 547, column: 3, scope: !1341)
!1343 = !DILocation(line: 548, column: 2, scope: !1341)
!1344 = !DILocation(line: 553, column: 28, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 552, column: 7)
!1346 = !DILocation(line: 553, column: 3, scope: !1345)
!1347 = !DILocation(line: 553, column: 15, scope: !1345)
!1348 = !DILocation(line: 553, column: 26, scope: !1345)
!1349 = !DILocation(line: 556, column: 2, scope: !1236)
