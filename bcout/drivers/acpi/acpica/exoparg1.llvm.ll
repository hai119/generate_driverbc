; ModuleID = '../bcout/drivers/acpi/acpica/exoparg1.llvm.bc'
source_filename = "drivers/acpi/acpica/exoparg1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
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
%union.acpi_name_union = type { i32 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }
%struct.acpi_scope_state = type { i8*, i8, i8, i16, i16, %struct.acpi_namespace_node* }

@_acpi_module_name = internal constant [9 x i8] c"exoparg1\00", align 1, !dbg !0
@.str = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1
@acpi_gbl_integer_nybble_width = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"BCD digit too large (not decimal): 0x%X\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Integer too large to convert to BCD: 0x%8.8X%8.8X\00", align 1
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"%s is obsolete and not implemented\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"While resolving operands for [%s]\00", align 1
@acpi_gbl_integer_byte_width = external dso_local global i8, align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"Operand must be Buffer/Integer/String/Package - found type %s\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Unknown Index TargetType 0x%X in reference object %p\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Unknown class in reference(%p) - 0x%2.2X\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_opcode_0A_0T_1R(%struct.acpi_walk_state* %walk_state) #0 !dbg !801 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %return_desc = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !802, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.declare(metadata i32* %status, metadata !804, metadata !DIExpression()), !dbg !805
  store i32 0, i32* %status, align 4, !dbg !805
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc, metadata !806, metadata !DIExpression()), !dbg !807
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_desc, align 8, !dbg !807
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !808
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 3, !dbg !809
  %1 = load i16, i16* %opcode, align 2, !dbg !809
  %conv = zext i16 %1 to i32, !dbg !808
  switch i32 %conv, label %sw.default [
    i32 23347, label %sw.bb
  ], !dbg !810

sw.bb:                                            ; preds = %entry
  %call = call i64 @acpi_os_get_timer() #3, !dbg !811
  %call1 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 %call) #3, !dbg !813
  store %union.acpi_operand_object* %call1, %union.acpi_operand_object** %return_desc, align 8, !dbg !814
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !815
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !815
  br i1 %tobool, label %if.end, label %if.then, !dbg !817

if.then:                                          ; preds = %sw.bb
  store i32 4, i32* %status, align 4, !dbg !818
  br label %cleanup, !dbg !820

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !821

sw.default:                                       ; preds = %entry
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !822
  %opcode2 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 3, !dbg !822
  %4 = load i16, i16* %opcode2, align 2, !dbg !822
  %conv3 = zext i16 %4 to i32, !dbg !822
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %conv3) #3, !dbg !822
  store i32 12289, i32* %status, align 4, !dbg !823
  br label %sw.epilog, !dbg !824

sw.epilog:                                        ; preds = %sw.default, %if.end
  br label %cleanup, !dbg !825

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.dbg.label(metadata !826), !dbg !827
  %5 = load i32, i32* %status, align 4, !dbg !828
  %tobool4 = icmp ne i32 %5, 0, !dbg !830
  br i1 %tobool4, label %if.then6, label %lor.lhs.false, !dbg !831

lor.lhs.false:                                    ; preds = %cleanup
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !832
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 43, !dbg !833
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj, align 8, !dbg !833
  %tobool5 = icmp ne %union.acpi_operand_object* %7, null, !dbg !832
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !834

if.then6:                                         ; preds = %lor.lhs.false, %cleanup
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !835
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %8) #3, !dbg !837
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !838
  %result_obj7 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 43, !dbg !839
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %result_obj7, align 8, !dbg !840
  br label %if.end9, !dbg !841

if.else:                                          ; preds = %lor.lhs.false
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !842
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !844
  %result_obj8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 43, !dbg !845
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %result_obj8, align 8, !dbg !846
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %12 = load i32, i32* %status, align 4, !dbg !847
  ret i32 %12, !dbg !847
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i64) #2

; Function Attrs: noredzone
declare dso_local i64 @acpi_os_get_timer() #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_opcode_1A_0T_0R(%struct.acpi_walk_state* %walk_state) #0 !dbg !848 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %operand = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !849, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !851, metadata !DIExpression()), !dbg !852
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !853
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !854
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !853
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !852
  call void @llvm.dbg.declare(metadata i32* %status, metadata !855, metadata !DIExpression()), !dbg !856
  store i32 0, i32* %status, align 4, !dbg !856
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !857
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 3, !dbg !858
  %2 = load i16, i16* %opcode, align 2, !dbg !858
  %conv = zext i16 %2 to i32, !dbg !857
  switch i32 %conv, label %sw.default [
    i32 23335, label %sw.bb
    i32 23334, label %sw.bb2
    i32 23332, label %sw.bb5
    i32 23330, label %sw.bb8
    i32 23329, label %sw.bb11
    i32 23338, label %sw.bb17
  ], !dbg !859

sw.bb:                                            ; preds = %entry
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !860
  %arrayidx1 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %3, i64 0, !dbg !860
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx1, align 8, !dbg !860
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !862
  %call = call i32 @acpi_ex_release_mutex(%union.acpi_operand_object* %4, %struct.acpi_walk_state* %5) #3, !dbg !863
  store i32 %call, i32* %status, align 4, !dbg !864
  br label %sw.epilog, !dbg !865

sw.bb2:                                           ; preds = %entry
  %6 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !866
  %arrayidx3 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %6, i64 0, !dbg !866
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx3, align 8, !dbg !866
  %call4 = call i32 @acpi_ex_system_reset_event(%union.acpi_operand_object* %7) #3, !dbg !867
  store i32 %call4, i32* %status, align 4, !dbg !868
  br label %sw.epilog, !dbg !869

sw.bb5:                                           ; preds = %entry
  %8 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !870
  %arrayidx6 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %8, i64 0, !dbg !870
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx6, align 8, !dbg !870
  %call7 = call i32 @acpi_ex_system_signal_event(%union.acpi_operand_object* %9) #3, !dbg !871
  store i32 %call7, i32* %status, align 4, !dbg !872
  br label %sw.epilog, !dbg !873

sw.bb8:                                           ; preds = %entry
  %10 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !874
  %arrayidx9 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %10, i64 0, !dbg !874
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx9, align 8, !dbg !874
  %integer = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_integer*, !dbg !875
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !876
  %12 = load i64, i64* %value, align 8, !dbg !876
  %call10 = call i32 @acpi_ex_system_do_sleep(i64 %12) #3, !dbg !877
  store i32 %call10, i32* %status, align 4, !dbg !878
  br label %sw.epilog, !dbg !879

sw.bb11:                                          ; preds = %entry
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !880
  %arrayidx12 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %13, i64 0, !dbg !880
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx12, align 8, !dbg !880
  %integer13 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_integer*, !dbg !881
  %value14 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer13, i32 0, i32 6, !dbg !882
  %15 = load i64, i64* %value14, align 8, !dbg !882
  %conv15 = trunc i64 %15 to i32, !dbg !883
  %call16 = call i32 @acpi_ex_system_do_stall(i32 %conv15) #3, !dbg !884
  store i32 %call16, i32* %status, align 4, !dbg !885
  br label %sw.epilog, !dbg !886

sw.bb17:                                          ; preds = %entry
  %16 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !887
  %arrayidx18 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %16, i64 0, !dbg !887
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx18, align 8, !dbg !887
  %call19 = call i32 @acpi_ex_unload_table(%union.acpi_operand_object* %17) #3, !dbg !888
  store i32 %call19, i32* %status, align 4, !dbg !889
  br label %sw.epilog, !dbg !890

sw.default:                                       ; preds = %entry
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !891
  %opcode20 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 3, !dbg !891
  %19 = load i16, i16* %opcode20, align 2, !dbg !891
  %conv21 = zext i16 %19 to i32, !dbg !891
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %conv21) #3, !dbg !891
  store i32 12289, i32* %status, align 4, !dbg !892
  br label %sw.epilog, !dbg !893

sw.epilog:                                        ; preds = %sw.default, %sw.bb17, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %20 = load i32, i32* %status, align 4, !dbg !894
  ret i32 %20, !dbg !894
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_release_mutex(%union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_system_reset_event(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_system_signal_event(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_system_do_sleep(i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_system_do_stall(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_unload_table(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_opcode_1A_1T_0R(%struct.acpi_walk_state* %walk_state) #0 !dbg !895 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %operand = alloca %union.acpi_operand_object**, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !896, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.declare(metadata i32* %status, metadata !898, metadata !DIExpression()), !dbg !899
  store i32 0, i32* %status, align 4, !dbg !899
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !900, metadata !DIExpression()), !dbg !901
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !902
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !903
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !902
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !901
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !904
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 3, !dbg !905
  %2 = load i16, i16* %opcode, align 2, !dbg !905
  %conv = zext i16 %2 to i32, !dbg !904
  switch i32 %conv, label %sw.default [
    i32 23328, label %sw.bb
  ], !dbg !906

sw.bb:                                            ; preds = %entry
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !907
  %arrayidx1 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %3, i64 0, !dbg !907
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx1, align 8, !dbg !907
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !909
  %arrayidx2 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %5, i64 1, !dbg !909
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx2, align 8, !dbg !909
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !910
  %call = call i32 @acpi_ex_load_op(%union.acpi_operand_object* %4, %union.acpi_operand_object* %6, %struct.acpi_walk_state* %7) #3, !dbg !911
  store i32 %call, i32* %status, align 4, !dbg !912
  br label %sw.epilog, !dbg !913

sw.default:                                       ; preds = %entry
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !914
  %opcode3 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 3, !dbg !914
  %9 = load i16, i16* %opcode3, align 2, !dbg !914
  %conv4 = zext i16 %9 to i32, !dbg !914
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 197, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %conv4) #3, !dbg !914
  store i32 12289, i32* %status, align 4, !dbg !915
  br label %cleanup, !dbg !916

sw.epilog:                                        ; preds = %sw.bb
  br label %cleanup, !dbg !917

cleanup:                                          ; preds = %sw.epilog, %sw.default
  call void @llvm.dbg.label(metadata !918), !dbg !919
  %10 = load i32, i32* %status, align 4, !dbg !920
  ret i32 %10, !dbg !920
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_load_op(%union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_opcode_1A_1T_1R(%struct.acpi_walk_state* %walk_state) #0 !dbg !921 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %operand = alloca %union.acpi_operand_object**, align 8
  %return_desc = alloca %union.acpi_operand_object*, align 8
  %return_desc2 = alloca %union.acpi_operand_object*, align 8
  %temp32 = alloca i32, align 4
  %i = alloca i32, align 4
  %power_of_ten = alloca i64, align 8
  %digit = alloca i64, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.declare(metadata i32* %status, metadata !924, metadata !DIExpression()), !dbg !925
  store i32 0, i32* %status, align 4, !dbg !925
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !926, metadata !DIExpression()), !dbg !927
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !928
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !929
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !928
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !927
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc, metadata !930, metadata !DIExpression()), !dbg !931
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_desc, align 8, !dbg !931
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc2, metadata !932, metadata !DIExpression()), !dbg !933
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_desc2, align 8, !dbg !933
  call void @llvm.dbg.declare(metadata i32* %temp32, metadata !934, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.declare(metadata i32* %i, metadata !936, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.declare(metadata i64* %power_of_ten, metadata !938, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.declare(metadata i64* %digit, metadata !940, metadata !DIExpression()), !dbg !941
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !942
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 3, !dbg !943
  %2 = load i16, i16* %opcode, align 2, !dbg !943
  %conv = zext i16 %2 to i32, !dbg !942
  switch i32 %conv, label %sw.default181 [
    i32 128, label %sw.bb
    i32 129, label %sw.bb
    i32 130, label %sw.bb
    i32 23336, label %sw.bb
    i32 23337, label %sw.bb
    i32 23314, label %sw.bb
    i32 112, label %sw.bb129
    i32 157, label %sw.bb143
    i32 151, label %sw.bb146
    i32 152, label %sw.bb154
    i32 150, label %sw.bb162
    i32 153, label %sw.bb170
    i32 23313, label %sw.bb178
    i32 23312, label %sw.bb178
  ], !dbg !944

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 247, i32 128, i32 1) #3, !dbg !945
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %return_desc, align 8, !dbg !947
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !948
  %tobool = icmp ne %union.acpi_operand_object* %3, null, !dbg !948
  br i1 %tobool, label %if.end, label %if.then, !dbg !950

if.then:                                          ; preds = %sw.bb
  store i32 4, i32* %status, align 4, !dbg !951
  br label %cleanup, !dbg !953

if.end:                                           ; preds = %sw.bb
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !954
  %opcode1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 3, !dbg !955
  %5 = load i16, i16* %opcode1, align 2, !dbg !955
  %conv2 = zext i16 %5 to i32, !dbg !954
  switch i32 %conv2, label %sw.default [
    i32 128, label %sw.bb3
    i32 129, label %sw.bb7
    i32 130, label %sw.bb22
    i32 23336, label %sw.bb47
    i32 23337, label %sw.bb75
    i32 23314, label %sw.bb112
  ], !dbg !956

sw.bb3:                                           ; preds = %if.end
  %6 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !957
  %arrayidx4 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %6, i64 0, !dbg !957
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx4, align 8, !dbg !957
  %integer = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_integer*, !dbg !959
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !960
  %8 = load i64, i64* %value, align 8, !dbg !960
  %neg = xor i64 %8, -1, !dbg !961
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !962
  %integer5 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_integer*, !dbg !963
  %value6 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer5, i32 0, i32 6, !dbg !964
  store i64 %neg, i64* %value6, align 8, !dbg !965
  br label %sw.epilog, !dbg !966

sw.bb7:                                           ; preds = %if.end
  %10 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !967
  %arrayidx8 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %10, i64 0, !dbg !967
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx8, align 8, !dbg !967
  %integer9 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_integer*, !dbg !968
  %value10 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer9, i32 0, i32 6, !dbg !969
  %12 = load i64, i64* %value10, align 8, !dbg !969
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !970
  %integer11 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_integer*, !dbg !971
  %value12 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer11, i32 0, i32 6, !dbg !972
  store i64 %12, i64* %value12, align 8, !dbg !973
  store i32 0, i32* %temp32, align 4, !dbg !974
  br label %for.cond, !dbg !976

for.cond:                                         ; preds = %for.inc, %sw.bb7
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !977
  %integer13 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_integer*, !dbg !979
  %value14 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer13, i32 0, i32 6, !dbg !980
  %15 = load i64, i64* %value14, align 8, !dbg !980
  %tobool15 = icmp ne i64 %15, 0, !dbg !977
  br i1 %tobool15, label %land.rhs, label %land.end, !dbg !981

land.rhs:                                         ; preds = %for.cond
  %16 = load i32, i32* %temp32, align 4, !dbg !982
  %cmp = icmp ult i32 %16, 64, !dbg !983
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !984
  br i1 %17, label %for.body, label %for.end, !dbg !985

for.body:                                         ; preds = %land.end
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !986
  %integer17 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_integer*, !dbg !988
  %value18 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer17, i32 0, i32 6, !dbg !989
  %19 = load i64, i64* %value18, align 8, !dbg !990
  %shr = lshr i64 %19, 1, !dbg !990
  store i64 %shr, i64* %value18, align 8, !dbg !990
  br label %for.inc, !dbg !991

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %temp32, align 4, !dbg !992
  %inc = add i32 %20, 1, !dbg !992
  store i32 %inc, i32* %temp32, align 4, !dbg !992
  br label %for.cond, !dbg !993, !llvm.loop !994

for.end:                                          ; preds = %land.end
  %21 = load i32, i32* %temp32, align 4, !dbg !996
  %conv19 = zext i32 %21 to i64, !dbg !996
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !997
  %integer20 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_integer*, !dbg !998
  %value21 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer20, i32 0, i32 6, !dbg !999
  store i64 %conv19, i64* %value21, align 8, !dbg !1000
  br label %sw.epilog, !dbg !1001

sw.bb22:                                          ; preds = %if.end
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1002
  %arrayidx23 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %23, i64 0, !dbg !1002
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx23, align 8, !dbg !1002
  %integer24 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_integer*, !dbg !1003
  %value25 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer24, i32 0, i32 6, !dbg !1004
  %25 = load i64, i64* %value25, align 8, !dbg !1004
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1005
  %integer26 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_integer*, !dbg !1006
  %value27 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer26, i32 0, i32 6, !dbg !1007
  store i64 %25, i64* %value27, align 8, !dbg !1008
  store i32 0, i32* %temp32, align 4, !dbg !1009
  br label %for.cond28, !dbg !1011

for.cond28:                                       ; preds = %for.inc39, %sw.bb22
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1012
  %integer29 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_integer*, !dbg !1014
  %value30 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer29, i32 0, i32 6, !dbg !1015
  %28 = load i64, i64* %value30, align 8, !dbg !1015
  %tobool31 = icmp ne i64 %28, 0, !dbg !1012
  br i1 %tobool31, label %land.rhs32, label %land.end35, !dbg !1016

land.rhs32:                                       ; preds = %for.cond28
  %29 = load i32, i32* %temp32, align 4, !dbg !1017
  %cmp33 = icmp ult i32 %29, 64, !dbg !1018
  br label %land.end35

land.end35:                                       ; preds = %land.rhs32, %for.cond28
  %30 = phi i1 [ false, %for.cond28 ], [ %cmp33, %land.rhs32 ], !dbg !1019
  br i1 %30, label %for.body36, label %for.end41, !dbg !1020

for.body36:                                       ; preds = %land.end35
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1021
  %integer37 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_integer*, !dbg !1023
  %value38 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer37, i32 0, i32 6, !dbg !1024
  %32 = load i64, i64* %value38, align 8, !dbg !1025
  %shl = shl i64 %32, 1, !dbg !1025
  store i64 %shl, i64* %value38, align 8, !dbg !1025
  br label %for.inc39, !dbg !1026

for.inc39:                                        ; preds = %for.body36
  %33 = load i32, i32* %temp32, align 4, !dbg !1027
  %inc40 = add i32 %33, 1, !dbg !1027
  store i32 %inc40, i32* %temp32, align 4, !dbg !1027
  br label %for.cond28, !dbg !1028, !llvm.loop !1029

for.end41:                                        ; preds = %land.end35
  %34 = load i32, i32* %temp32, align 4, !dbg !1031
  %cmp42 = icmp eq i32 %34, 0, !dbg !1032
  br i1 %cmp42, label %cond.true, label %cond.false, !dbg !1031

cond.true:                                        ; preds = %for.end41
  br label %cond.end, !dbg !1031

cond.false:                                       ; preds = %for.end41
  %35 = load i32, i32* %temp32, align 4, !dbg !1033
  %sub = sub i32 65, %35, !dbg !1034
  br label %cond.end, !dbg !1031

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub, %cond.false ], !dbg !1031
  %conv44 = zext i32 %cond to i64, !dbg !1031
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1035
  %integer45 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_integer*, !dbg !1036
  %value46 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer45, i32 0, i32 6, !dbg !1037
  store i64 %conv44, i64* %value46, align 8, !dbg !1038
  br label %sw.epilog, !dbg !1039

sw.bb47:                                          ; preds = %if.end
  store i64 1, i64* %power_of_ten, align 8, !dbg !1040
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1041
  %integer48 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_integer*, !dbg !1042
  %value49 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer48, i32 0, i32 6, !dbg !1043
  store i64 0, i64* %value49, align 8, !dbg !1044
  %38 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1045
  %arrayidx50 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %38, i64 0, !dbg !1045
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx50, align 8, !dbg !1045
  %integer51 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_integer*, !dbg !1046
  %value52 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer51, i32 0, i32 6, !dbg !1047
  %40 = load i64, i64* %value52, align 8, !dbg !1047
  store i64 %40, i64* %digit, align 8, !dbg !1048
  store i32 0, i32* %i, align 4, !dbg !1049
  br label %for.cond53, !dbg !1051

for.cond53:                                       ; preds = %for.inc72, %sw.bb47
  %41 = load i32, i32* %i, align 4, !dbg !1052
  %42 = load i8, i8* @acpi_gbl_integer_nybble_width, align 1, !dbg !1054
  %conv54 = zext i8 %42 to i32, !dbg !1054
  %cmp55 = icmp ult i32 %41, %conv54, !dbg !1055
  br i1 %cmp55, label %land.rhs57, label %land.end60, !dbg !1056

land.rhs57:                                       ; preds = %for.cond53
  %43 = load i64, i64* %digit, align 8, !dbg !1057
  %cmp58 = icmp ugt i64 %43, 0, !dbg !1058
  br label %land.end60

land.end60:                                       ; preds = %land.rhs57, %for.cond53
  %44 = phi i1 [ false, %for.cond53 ], [ %cmp58, %land.rhs57 ], !dbg !1059
  br i1 %44, label %for.body61, label %for.end74, !dbg !1060

for.body61:                                       ; preds = %land.end60
  %45 = load i64, i64* %digit, align 8, !dbg !1061
  %conv62 = trunc i64 %45 to i32, !dbg !1063
  %and = and i32 %conv62, 15, !dbg !1064
  store i32 %and, i32* %temp32, align 4, !dbg !1065
  %46 = load i32, i32* %temp32, align 4, !dbg !1066
  %cmp63 = icmp ugt i32 %46, 9, !dbg !1068
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !1069

if.then65:                                        ; preds = %for.body61
  %47 = load i32, i32* %temp32, align 4, !dbg !1070
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 318, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %47) #3, !dbg !1070
  store i32 12296, i32* %status, align 4, !dbg !1072
  br label %cleanup, !dbg !1073

if.end66:                                         ; preds = %for.body61
  %48 = load i32, i32* %temp32, align 4, !dbg !1074
  %conv67 = zext i32 %48 to i64, !dbg !1075
  %49 = load i64, i64* %power_of_ten, align 8, !dbg !1076
  %mul = mul i64 %conv67, %49, !dbg !1077
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1078
  %integer68 = bitcast %union.acpi_operand_object* %50 to %struct.acpi_object_integer*, !dbg !1079
  %value69 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer68, i32 0, i32 6, !dbg !1080
  %51 = load i64, i64* %value69, align 8, !dbg !1081
  %add = add i64 %51, %mul, !dbg !1081
  store i64 %add, i64* %value69, align 8, !dbg !1081
  %52 = load i64, i64* %digit, align 8, !dbg !1082
  %shr70 = lshr i64 %52, 4, !dbg !1082
  store i64 %shr70, i64* %digit, align 8, !dbg !1082
  %53 = load i64, i64* %power_of_ten, align 8, !dbg !1083
  %mul71 = mul i64 %53, 10, !dbg !1083
  store i64 %mul71, i64* %power_of_ten, align 8, !dbg !1083
  br label %for.inc72, !dbg !1084

for.inc72:                                        ; preds = %if.end66
  %54 = load i32, i32* %i, align 4, !dbg !1085
  %inc73 = add i32 %54, 1, !dbg !1085
  store i32 %inc73, i32* %i, align 4, !dbg !1085
  br label %for.cond53, !dbg !1086, !llvm.loop !1087

for.end74:                                        ; preds = %land.end60
  br label %sw.epilog, !dbg !1089

sw.bb75:                                          ; preds = %if.end
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1090
  %integer76 = bitcast %union.acpi_operand_object* %55 to %struct.acpi_object_integer*, !dbg !1091
  %value77 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer76, i32 0, i32 6, !dbg !1092
  store i64 0, i64* %value77, align 8, !dbg !1093
  %56 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1094
  %arrayidx78 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %56, i64 0, !dbg !1094
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx78, align 8, !dbg !1094
  %integer79 = bitcast %union.acpi_operand_object* %57 to %struct.acpi_object_integer*, !dbg !1095
  %value80 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer79, i32 0, i32 6, !dbg !1096
  %58 = load i64, i64* %value80, align 8, !dbg !1096
  store i64 %58, i64* %digit, align 8, !dbg !1097
  store i32 0, i32* %i, align 4, !dbg !1098
  br label %for.cond81, !dbg !1100

for.cond81:                                       ; preds = %for.inc96, %sw.bb75
  %59 = load i32, i32* %i, align 4, !dbg !1101
  %60 = load i8, i8* @acpi_gbl_integer_nybble_width, align 1, !dbg !1103
  %conv82 = zext i8 %60 to i32, !dbg !1103
  %cmp83 = icmp ult i32 %59, %conv82, !dbg !1104
  br i1 %cmp83, label %land.rhs85, label %land.end88, !dbg !1105

land.rhs85:                                       ; preds = %for.cond81
  %61 = load i64, i64* %digit, align 8, !dbg !1106
  %cmp86 = icmp ugt i64 %61, 0, !dbg !1107
  br label %land.end88

land.end88:                                       ; preds = %land.rhs85, %for.cond81
  %62 = phi i1 [ false, %for.cond81 ], [ %cmp86, %land.rhs85 ], !dbg !1108
  br i1 %62, label %for.body89, label %for.end98, !dbg !1109

for.body89:                                       ; preds = %land.end88
  %63 = load i64, i64* %digit, align 8, !dbg !1110
  %call90 = call i32 @acpi_ut_short_divide(i64 %63, i32 10, i64* %digit, i32* %temp32) #3, !dbg !1112
  %64 = load i32, i32* %temp32, align 4, !dbg !1113
  %conv91 = zext i32 %64 to i64, !dbg !1114
  %65 = load i32, i32* %i, align 4, !dbg !1115
  %shl92 = shl i32 %65, 2, !dbg !1115
  %sh_prom = zext i32 %shl92 to i64, !dbg !1116
  %shl93 = shl i64 %conv91, %sh_prom, !dbg !1116
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1117
  %integer94 = bitcast %union.acpi_operand_object* %66 to %struct.acpi_object_integer*, !dbg !1118
  %value95 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer94, i32 0, i32 6, !dbg !1119
  %67 = load i64, i64* %value95, align 8, !dbg !1120
  %or = or i64 %67, %shl93, !dbg !1120
  store i64 %or, i64* %value95, align 8, !dbg !1120
  br label %for.inc96, !dbg !1121

for.inc96:                                        ; preds = %for.body89
  %68 = load i32, i32* %i, align 4, !dbg !1122
  %inc97 = add i32 %68, 1, !dbg !1122
  store i32 %inc97, i32* %i, align 4, !dbg !1122
  br label %for.cond81, !dbg !1123, !llvm.loop !1124

for.end98:                                        ; preds = %land.end88
  %69 = load i64, i64* %digit, align 8, !dbg !1126
  %cmp99 = icmp ugt i64 %69, 0, !dbg !1128
  br i1 %cmp99, label %if.then101, label %if.end111, !dbg !1129

if.then101:                                       ; preds = %for.end98
  %70 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1130
  %arrayidx102 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %70, i64 0, !dbg !1130
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx102, align 8, !dbg !1130
  %integer103 = bitcast %union.acpi_operand_object* %71 to %struct.acpi_object_integer*, !dbg !1130
  %value104 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer103, i32 0, i32 6, !dbg !1130
  %72 = load i64, i64* %value104, align 8, !dbg !1130
  %shr105 = lshr i64 %72, 32, !dbg !1130
  %conv106 = trunc i64 %shr105 to i32, !dbg !1130
  %73 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1130
  %arrayidx107 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %73, i64 0, !dbg !1130
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx107, align 8, !dbg !1130
  %integer108 = bitcast %union.acpi_operand_object* %74 to %struct.acpi_object_integer*, !dbg !1130
  %value109 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer108, i32 0, i32 6, !dbg !1130
  %75 = load i64, i64* %value109, align 8, !dbg !1130
  %conv110 = trunc i64 %75 to i32, !dbg !1130
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 365, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %conv106, i32 %conv110) #3, !dbg !1130
  store i32 12296, i32* %status, align 4, !dbg !1132
  br label %cleanup, !dbg !1133

if.end111:                                        ; preds = %for.end98
  br label %sw.epilog, !dbg !1134

sw.bb112:                                         ; preds = %if.end
  %76 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1135
  %arrayidx113 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %76, i64 0, !dbg !1135
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx113, align 8, !dbg !1135
  %78 = bitcast %union.acpi_operand_object* %77 to %struct.acpi_namespace_node*, !dbg !1137
  %79 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1138
  %cmp114 = icmp eq %struct.acpi_namespace_node* %78, %79, !dbg !1139
  br i1 %cmp114, label %if.then116, label %if.end119, !dbg !1140

if.then116:                                       ; preds = %sw.bb112
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1141
  %integer117 = bitcast %union.acpi_operand_object* %80 to %struct.acpi_object_integer*, !dbg !1143
  %value118 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer117, i32 0, i32 6, !dbg !1144
  store i64 0, i64* %value118, align 8, !dbg !1145
  br label %cleanup, !dbg !1146

if.end119:                                        ; preds = %sw.bb112
  %81 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1147
  %arrayidx120 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %81, i64 0, !dbg !1147
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx120, align 8, !dbg !1147
  %83 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1148
  %call121 = call i32 @acpi_ex_get_object_reference(%union.acpi_operand_object* %82, %union.acpi_operand_object** %return_desc2, %struct.acpi_walk_state* %83) #3, !dbg !1149
  store i32 %call121, i32* %status, align 4, !dbg !1150
  %84 = load i32, i32* %status, align 4, !dbg !1151
  %tobool122 = icmp ne i32 %84, 0, !dbg !1151
  br i1 %tobool122, label %if.then123, label %if.end124, !dbg !1153

if.then123:                                       ; preds = %if.end119
  br label %cleanup, !dbg !1154

if.end124:                                        ; preds = %if.end119
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc2, align 8, !dbg !1156
  %86 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1157
  %arrayidx125 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %86, i64 1, !dbg !1157
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx125, align 8, !dbg !1157
  %88 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1158
  %call126 = call i32 @acpi_ex_store(%union.acpi_operand_object* %85, %union.acpi_operand_object* %87, %struct.acpi_walk_state* %88) #3, !dbg !1159
  store i32 %call126, i32* %status, align 4, !dbg !1160
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc2, align 8, !dbg !1161
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %89) #3, !dbg !1162
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1163
  %integer127 = bitcast %union.acpi_operand_object* %90 to %struct.acpi_object_integer*, !dbg !1164
  %value128 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer127, i32 0, i32 6, !dbg !1165
  store i64 -1, i64* %value128, align 8, !dbg !1166
  br label %cleanup, !dbg !1167

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1168

sw.epilog:                                        ; preds = %sw.default, %if.end111, %for.end74, %cond.end, %for.end, %sw.bb3
  br label %sw.epilog184, !dbg !1169

sw.bb129:                                         ; preds = %entry
  %91 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1170
  %arrayidx130 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %91, i64 0, !dbg !1170
  %92 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx130, align 8, !dbg !1170
  %93 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1171
  %arrayidx131 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %93, i64 1, !dbg !1171
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx131, align 8, !dbg !1171
  %95 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1172
  %call132 = call i32 @acpi_ex_store(%union.acpi_operand_object* %92, %union.acpi_operand_object* %94, %struct.acpi_walk_state* %95) #3, !dbg !1173
  store i32 %call132, i32* %status, align 4, !dbg !1174
  %96 = load i32, i32* %status, align 4, !dbg !1175
  %tobool133 = icmp ne i32 %96, 0, !dbg !1175
  br i1 %tobool133, label %if.then134, label %if.end135, !dbg !1177

if.then134:                                       ; preds = %sw.bb129
  %97 = load i32, i32* %status, align 4, !dbg !1178
  store i32 %97, i32* %retval, align 4, !dbg !1178
  br label %return, !dbg !1178

if.end135:                                        ; preds = %sw.bb129
  %98 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1180
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %98, i32 0, i32 43, !dbg !1182
  %99 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj, align 8, !dbg !1182
  %tobool136 = icmp ne %union.acpi_operand_object* %99, null, !dbg !1180
  br i1 %tobool136, label %if.end142, label %if.then137, !dbg !1183

if.then137:                                       ; preds = %if.end135
  %100 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1184
  %arrayidx138 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %100, i64 0, !dbg !1184
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx138, align 8, !dbg !1184
  %102 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1186
  %result_obj139 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %102, i32 0, i32 43, !dbg !1187
  store %union.acpi_operand_object* %101, %union.acpi_operand_object** %result_obj139, align 8, !dbg !1188
  %103 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1189
  %operands140 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %103, i32 0, i32 28, !dbg !1190
  %arrayidx141 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands140, i64 0, i64 0, !dbg !1189
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx141, align 8, !dbg !1191
  br label %if.end142, !dbg !1192

if.end142:                                        ; preds = %if.then137, %if.end135
  %104 = load i32, i32* %status, align 4, !dbg !1193
  store i32 %104, i32* %retval, align 4, !dbg !1193
  br label %return, !dbg !1193

sw.bb143:                                         ; preds = %entry
  %105 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1194
  %arrayidx144 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %105, i64 0, !dbg !1194
  %106 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx144, align 8, !dbg !1194
  %107 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1195
  %call145 = call i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %106, %union.acpi_operand_object** %return_desc, %struct.acpi_walk_state* %107) #3, !dbg !1196
  store i32 %call145, i32* %status, align 4, !dbg !1197
  br label %sw.epilog184, !dbg !1198

sw.bb146:                                         ; preds = %entry
  %108 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1199
  %arrayidx147 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %108, i64 0, !dbg !1199
  %109 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx147, align 8, !dbg !1199
  %call148 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %109, %union.acpi_operand_object** %return_desc, i32 3) #3, !dbg !1200
  store i32 %call148, i32* %status, align 4, !dbg !1201
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1202
  %111 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1204
  %arrayidx149 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %111, i64 0, !dbg !1204
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx149, align 8, !dbg !1204
  %cmp150 = icmp eq %union.acpi_operand_object* %110, %112, !dbg !1205
  br i1 %cmp150, label %if.then152, label %if.end153, !dbg !1206

if.then152:                                       ; preds = %sw.bb146
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1207
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %113) #3, !dbg !1209
  br label %if.end153, !dbg !1210

if.end153:                                        ; preds = %if.then152, %sw.bb146
  br label %sw.epilog184, !dbg !1211

sw.bb154:                                         ; preds = %entry
  %114 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1212
  %arrayidx155 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %114, i64 0, !dbg !1212
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx155, align 8, !dbg !1212
  %call156 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %115, %union.acpi_operand_object** %return_desc, i32 1) #3, !dbg !1213
  store i32 %call156, i32* %status, align 4, !dbg !1214
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1215
  %117 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1217
  %arrayidx157 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %117, i64 0, !dbg !1217
  %118 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx157, align 8, !dbg !1217
  %cmp158 = icmp eq %union.acpi_operand_object* %116, %118, !dbg !1218
  br i1 %cmp158, label %if.then160, label %if.end161, !dbg !1219

if.then160:                                       ; preds = %sw.bb154
  %119 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1220
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %119) #3, !dbg !1222
  br label %if.end161, !dbg !1223

if.end161:                                        ; preds = %if.then160, %sw.bb154
  br label %sw.epilog184, !dbg !1224

sw.bb162:                                         ; preds = %entry
  %120 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1225
  %arrayidx163 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %120, i64 0, !dbg !1225
  %121 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx163, align 8, !dbg !1225
  %call164 = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %121, %union.acpi_operand_object** %return_desc) #3, !dbg !1226
  store i32 %call164, i32* %status, align 4, !dbg !1227
  %122 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1228
  %123 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1230
  %arrayidx165 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %123, i64 0, !dbg !1230
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx165, align 8, !dbg !1230
  %cmp166 = icmp eq %union.acpi_operand_object* %122, %124, !dbg !1231
  br i1 %cmp166, label %if.then168, label %if.end169, !dbg !1232

if.then168:                                       ; preds = %sw.bb162
  %125 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1233
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %125) #3, !dbg !1235
  br label %if.end169, !dbg !1236

if.end169:                                        ; preds = %if.then168, %sw.bb162
  br label %sw.epilog184, !dbg !1237

sw.bb170:                                         ; preds = %entry
  %126 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1238
  %arrayidx171 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %126, i64 0, !dbg !1238
  %127 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx171, align 8, !dbg !1238
  %call172 = call i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %127, %union.acpi_operand_object** %return_desc, i32 0) #3, !dbg !1239
  store i32 %call172, i32* %status, align 4, !dbg !1240
  %128 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1241
  %129 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1243
  %arrayidx173 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %129, i64 0, !dbg !1243
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx173, align 8, !dbg !1243
  %cmp174 = icmp eq %union.acpi_operand_object* %128, %130, !dbg !1244
  br i1 %cmp174, label %if.then176, label %if.end177, !dbg !1245

if.then176:                                       ; preds = %sw.bb170
  %131 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1246
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %131) #3, !dbg !1248
  br label %if.end177, !dbg !1249

if.end177:                                        ; preds = %if.then176, %sw.bb170
  br label %sw.epilog184, !dbg !1250

sw.bb178:                                         ; preds = %entry, %entry
  %132 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1251
  %opcode179 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %132, i32 0, i32 3, !dbg !1251
  %133 = load i16, i16* %opcode179, align 2, !dbg !1251
  %call180 = call i8* @acpi_ps_get_opcode_name(i16 zeroext %133) #3, !dbg !1251
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 507, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %call180) #3, !dbg !1251
  store i32 15, i32* %status, align 4, !dbg !1252
  br label %cleanup, !dbg !1253

sw.default181:                                    ; preds = %entry
  %134 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1254
  %opcode182 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %134, i32 0, i32 3, !dbg !1254
  %135 = load i16, i16* %opcode182, align 2, !dbg !1254
  %conv183 = zext i16 %135 to i32, !dbg !1254
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 515, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %conv183) #3, !dbg !1254
  store i32 12289, i32* %status, align 4, !dbg !1255
  br label %cleanup, !dbg !1256

sw.epilog184:                                     ; preds = %if.end177, %if.end169, %if.end161, %if.end153, %sw.bb143, %sw.epilog
  %136 = load i32, i32* %status, align 4, !dbg !1257
  %tobool185 = icmp ne i32 %136, 0, !dbg !1257
  br i1 %tobool185, label %if.end189, label %if.then186, !dbg !1259

if.then186:                                       ; preds = %sw.epilog184
  %137 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1260
  %138 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1262
  %arrayidx187 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %138, i64 1, !dbg !1262
  %139 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx187, align 8, !dbg !1262
  %140 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1263
  %call188 = call i32 @acpi_ex_store(%union.acpi_operand_object* %137, %union.acpi_operand_object* %139, %struct.acpi_walk_state* %140) #3, !dbg !1264
  store i32 %call188, i32* %status, align 4, !dbg !1265
  br label %if.end189, !dbg !1266

if.end189:                                        ; preds = %if.then186, %sw.epilog184
  br label %cleanup, !dbg !1257

cleanup:                                          ; preds = %if.end189, %sw.default181, %sw.bb178, %if.end124, %if.then123, %if.then116, %if.then101, %if.then65, %if.then
  call void @llvm.dbg.label(metadata !1267), !dbg !1268
  %141 = load i32, i32* %status, align 4, !dbg !1269
  %tobool190 = icmp ne i32 %141, 0, !dbg !1269
  br i1 %tobool190, label %if.then191, label %if.else, !dbg !1271

if.then191:                                       ; preds = %cleanup
  %142 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1272
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %142) #3, !dbg !1274
  br label %if.end197, !dbg !1275

if.else:                                          ; preds = %cleanup
  %143 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1276
  %result_obj192 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %143, i32 0, i32 43, !dbg !1278
  %144 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj192, align 8, !dbg !1278
  %tobool193 = icmp ne %union.acpi_operand_object* %144, null, !dbg !1276
  br i1 %tobool193, label %if.end196, label %if.then194, !dbg !1279

if.then194:                                       ; preds = %if.else
  %145 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1280
  %146 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1282
  %result_obj195 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %146, i32 0, i32 43, !dbg !1283
  store %union.acpi_operand_object* %145, %union.acpi_operand_object** %result_obj195, align 8, !dbg !1284
  br label %if.end196, !dbg !1285

if.end196:                                        ; preds = %if.then194, %if.else
  br label %if.end197

if.end197:                                        ; preds = %if.end196, %if.then191
  %147 = load i32, i32* %status, align 4, !dbg !1286
  store i32 %147, i32* %retval, align 4, !dbg !1286
  br label %return, !dbg !1286

return:                                           ; preds = %if.end197, %if.end142, %if.then134
  %148 = load i32, i32* %retval, align 4, !dbg !1287
  ret i32 %148, !dbg !1287
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_short_divide(i64, i32, i64*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_get_object_reference(%union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_store(%union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_string(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ps_get_opcode_name(i16 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_opcode_1A_0T_1R(%struct.acpi_walk_state* %walk_state) #0 !dbg !1288 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %operand = alloca %union.acpi_operand_object**, align 8
  %temp_desc = alloca %union.acpi_operand_object*, align 8
  %return_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %type = alloca i32, align 4
  %value = alloca i64, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1289, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !1291, metadata !DIExpression()), !dbg !1292
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1293
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !1294
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !1293
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !1292
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %temp_desc, metadata !1295, metadata !DIExpression()), !dbg !1296
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc, metadata !1297, metadata !DIExpression()), !dbg !1298
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_desc, align 8, !dbg !1298
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1299, metadata !DIExpression()), !dbg !1300
  store i32 0, i32* %status, align 4, !dbg !1300
  call void @llvm.dbg.declare(metadata i32* %type, metadata !1301, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.declare(metadata i64* %value, metadata !1303, metadata !DIExpression()), !dbg !1304
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1305
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 3, !dbg !1306
  %2 = load i16, i16* %opcode, align 2, !dbg !1306
  %conv = zext i16 %2 to i32, !dbg !1305
  switch i32 %conv, label %sw.default248 [
    i32 146, label %sw.bb
    i32 118, label %sw.bb8
    i32 117, label %sw.bb8
    i32 142, label %sw.bb40
    i32 135, label %sw.bb51
    i32 113, label %sw.bb76
    i32 131, label %sw.bb82
  ], !dbg !1307

sw.bb:                                            ; preds = %entry
  %call = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 0) #3, !dbg !1308
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %return_desc, align 8, !dbg !1310
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1311
  %tobool = icmp ne %union.acpi_operand_object* %3, null, !dbg !1311
  br i1 %tobool, label %if.end, label %if.then, !dbg !1313

if.then:                                          ; preds = %sw.bb
  store i32 4, i32* %status, align 4, !dbg !1314
  br label %cleanup, !dbg !1316

if.end:                                           ; preds = %sw.bb
  %4 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1317
  %arrayidx1 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %4, i64 0, !dbg !1317
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx1, align 8, !dbg !1317
  %integer = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_integer*, !dbg !1319
  %value2 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1320
  %6 = load i64, i64* %value2, align 8, !dbg !1320
  %tobool3 = icmp ne i64 %6, 0, !dbg !1317
  br i1 %tobool3, label %if.end7, label %if.then4, !dbg !1321

if.then4:                                         ; preds = %if.end
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1322
  %integer5 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_integer*, !dbg !1324
  %value6 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer5, i32 0, i32 6, !dbg !1325
  store i64 -1, i64* %value6, align 8, !dbg !1326
  br label %if.end7, !dbg !1327

if.end7:                                          ; preds = %if.then4, %if.end
  br label %sw.epilog251, !dbg !1328

sw.bb8:                                           ; preds = %entry, %entry
  %call9 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 595, i32 128, i32 1) #3, !dbg !1329
  store %union.acpi_operand_object* %call9, %union.acpi_operand_object** %return_desc, align 8, !dbg !1330
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1331
  %tobool10 = icmp ne %union.acpi_operand_object* %8, null, !dbg !1331
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1333

if.then11:                                        ; preds = %sw.bb8
  store i32 4, i32* %status, align 4, !dbg !1334
  br label %cleanup, !dbg !1336

if.end12:                                         ; preds = %sw.bb8
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1337
  %arrayidx13 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %9, i64 0, !dbg !1337
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx13, align 8, !dbg !1337
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1338
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1339
  %12 = bitcast %union.acpi_operand_object* %11 to i8*, !dbg !1339
  %13 = bitcast i8* %12 to %union.acpi_descriptor*, !dbg !1339
  %common = bitcast %union.acpi_descriptor* %13 to %struct.acpi_common_descriptor*, !dbg !1339
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !1339
  %14 = load i8, i8* %descriptor_type, align 8, !dbg !1339
  %conv14 = zext i8 %14 to i32, !dbg !1339
  %cmp = icmp eq i32 %conv14, 14, !dbg !1341
  br i1 %cmp, label %if.then16, label %if.end17, !dbg !1342

if.then16:                                        ; preds = %if.end12
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1343
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %15) #3, !dbg !1345
  br label %if.end17, !dbg !1346

if.end17:                                         ; preds = %if.then16, %if.end12
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1347
  %call18 = call i32 @acpi_ex_resolve_operands(i16 zeroext 146, %union.acpi_operand_object** %temp_desc, %struct.acpi_walk_state* %16) #3, !dbg !1348
  store i32 %call18, i32* %status, align 4, !dbg !1349
  %17 = load i32, i32* %status, align 4, !dbg !1350
  %tobool19 = icmp ne i32 %17, 0, !dbg !1350
  br i1 %tobool19, label %if.then20, label %if.end23, !dbg !1352

if.then20:                                        ; preds = %if.end17
  %18 = load i32, i32* %status, align 4, !dbg !1353
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1353
  %opcode21 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 3, !dbg !1353
  %20 = load i16, i16* %opcode21, align 2, !dbg !1353
  %call22 = call i8* @acpi_ps_get_opcode_name(i16 zeroext %20) #3, !dbg !1353
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 624, i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %call22) #3, !dbg !1353
  br label %cleanup, !dbg !1355

if.end23:                                         ; preds = %if.end17
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1356
  %opcode24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %21, i32 0, i32 3, !dbg !1358
  %22 = load i16, i16* %opcode24, align 2, !dbg !1358
  %conv25 = zext i16 %22 to i32, !dbg !1356
  %cmp26 = icmp eq i32 %conv25, 117, !dbg !1359
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !1360

if.then28:                                        ; preds = %if.end23
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1361
  %integer29 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_integer*, !dbg !1363
  %value30 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer29, i32 0, i32 6, !dbg !1364
  %24 = load i64, i64* %value30, align 8, !dbg !1364
  %add = add i64 %24, 1, !dbg !1365
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1366
  %integer31 = bitcast %union.acpi_operand_object* %25 to %struct.acpi_object_integer*, !dbg !1367
  %value32 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer31, i32 0, i32 6, !dbg !1368
  store i64 %add, i64* %value32, align 8, !dbg !1369
  br label %if.end37, !dbg !1370

if.else:                                          ; preds = %if.end23
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1371
  %integer33 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_integer*, !dbg !1373
  %value34 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer33, i32 0, i32 6, !dbg !1374
  %27 = load i64, i64* %value34, align 8, !dbg !1374
  %sub = sub i64 %27, 1, !dbg !1375
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1376
  %integer35 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_integer*, !dbg !1377
  %value36 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer35, i32 0, i32 6, !dbg !1378
  store i64 %sub, i64* %value36, align 8, !dbg !1379
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then28
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1380
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %29) #3, !dbg !1381
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1382
  %31 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1383
  %arrayidx38 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %31, i64 0, !dbg !1383
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx38, align 8, !dbg !1383
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1384
  %call39 = call i32 @acpi_ex_store(%union.acpi_operand_object* %30, %union.acpi_operand_object* %32, %struct.acpi_walk_state* %33) #3, !dbg !1385
  store i32 %call39, i32* %status, align 4, !dbg !1386
  br label %sw.epilog251, !dbg !1387

sw.bb40:                                          ; preds = %entry
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1388
  %35 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1389
  %arrayidx41 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %35, i64 0, !dbg !1389
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx41, align 8, !dbg !1389
  %call42 = call i32 @acpi_ex_resolve_multiple(%struct.acpi_walk_state* %34, %union.acpi_operand_object* %36, i32* %type, %union.acpi_operand_object** null) #3, !dbg !1390
  store i32 %call42, i32* %status, align 4, !dbg !1391
  %37 = load i32, i32* %status, align 4, !dbg !1392
  %tobool43 = icmp ne i32 %37, 0, !dbg !1392
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !1394

if.then44:                                        ; preds = %sw.bb40
  br label %cleanup, !dbg !1395

if.end45:                                         ; preds = %sw.bb40
  %38 = load i32, i32* %type, align 4, !dbg !1397
  %conv46 = zext i32 %38 to i64, !dbg !1398
  %call47 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 %conv46) #3, !dbg !1399
  store %union.acpi_operand_object* %call47, %union.acpi_operand_object** %return_desc, align 8, !dbg !1400
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1401
  %tobool48 = icmp ne %union.acpi_operand_object* %39, null, !dbg !1401
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !1403

if.then49:                                        ; preds = %if.end45
  store i32 4, i32* %status, align 4, !dbg !1404
  br label %cleanup, !dbg !1406

if.end50:                                         ; preds = %if.end45
  br label %sw.epilog251, !dbg !1407

sw.bb51:                                          ; preds = %entry
  %40 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1408
  %41 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1409
  %arrayidx52 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %41, i64 0, !dbg !1409
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx52, align 8, !dbg !1409
  %call53 = call i32 @acpi_ex_resolve_multiple(%struct.acpi_walk_state* %40, %union.acpi_operand_object* %42, i32* %type, %union.acpi_operand_object** %temp_desc) #3, !dbg !1410
  store i32 %call53, i32* %status, align 4, !dbg !1411
  %43 = load i32, i32* %status, align 4, !dbg !1412
  %tobool54 = icmp ne i32 %43, 0, !dbg !1412
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !1414

if.then55:                                        ; preds = %sw.bb51
  br label %cleanup, !dbg !1415

if.end56:                                         ; preds = %sw.bb51
  %44 = load i32, i32* %type, align 4, !dbg !1417
  switch i32 %44, label %sw.default [
    i32 1, label %sw.bb57
    i32 2, label %sw.bb59
    i32 3, label %sw.bb61
    i32 4, label %sw.bb65
  ], !dbg !1418

sw.bb57:                                          ; preds = %if.end56
  %45 = load i8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !1419
  %conv58 = zext i8 %45 to i64, !dbg !1419
  store i64 %conv58, i64* %value, align 8, !dbg !1421
  br label %sw.epilog, !dbg !1422

sw.bb59:                                          ; preds = %if.end56
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1423
  %string = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_string*, !dbg !1424
  %length = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 6, !dbg !1425
  %47 = load i32, i32* %length, align 8, !dbg !1425
  %conv60 = zext i32 %47 to i64, !dbg !1423
  store i64 %conv60, i64* %value, align 8, !dbg !1426
  br label %sw.epilog, !dbg !1427

sw.bb61:                                          ; preds = %if.end56
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1428
  %call62 = call i32 @acpi_ds_get_buffer_arguments(%union.acpi_operand_object* %48) #3, !dbg !1429
  store i32 %call62, i32* %status, align 4, !dbg !1430
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1431
  %buffer = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_buffer*, !dbg !1432
  %length63 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !1433
  %50 = load i32, i32* %length63, align 8, !dbg !1433
  %conv64 = zext i32 %50 to i64, !dbg !1431
  store i64 %conv64, i64* %value, align 8, !dbg !1434
  br label %sw.epilog, !dbg !1435

sw.bb65:                                          ; preds = %if.end56
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1436
  %call66 = call i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object* %51) #3, !dbg !1437
  store i32 %call66, i32* %status, align 4, !dbg !1438
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1439
  %package = bitcast %union.acpi_operand_object* %52 to %struct.acpi_object_package*, !dbg !1440
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 9, !dbg !1441
  %53 = load i32, i32* %count, align 4, !dbg !1441
  %conv67 = zext i32 %53 to i64, !dbg !1439
  store i64 %conv67, i64* %value, align 8, !dbg !1442
  br label %sw.epilog, !dbg !1443

sw.default:                                       ; preds = %if.end56
  %54 = load i32, i32* %type, align 4, !dbg !1444
  %call68 = call i8* @acpi_ut_get_type_name(i32 %54) #3, !dbg !1444
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 734, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* %call68) #3, !dbg !1444
  store i32 12291, i32* %status, align 4, !dbg !1445
  br label %cleanup, !dbg !1446

sw.epilog:                                        ; preds = %sw.bb65, %sw.bb61, %sw.bb59, %sw.bb57
  %55 = load i32, i32* %status, align 4, !dbg !1447
  %tobool69 = icmp ne i32 %55, 0, !dbg !1447
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !1449

if.then70:                                        ; preds = %sw.epilog
  br label %cleanup, !dbg !1450

if.end71:                                         ; preds = %sw.epilog
  %56 = load i64, i64* %value, align 8, !dbg !1452
  %call72 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 %56) #3, !dbg !1453
  store %union.acpi_operand_object* %call72, %union.acpi_operand_object** %return_desc, align 8, !dbg !1454
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1455
  %tobool73 = icmp ne %union.acpi_operand_object* %57, null, !dbg !1455
  br i1 %tobool73, label %if.end75, label %if.then74, !dbg !1457

if.then74:                                        ; preds = %if.end71
  store i32 4, i32* %status, align 4, !dbg !1458
  br label %cleanup, !dbg !1460

if.end75:                                         ; preds = %if.end71
  br label %sw.epilog251, !dbg !1461

sw.bb76:                                          ; preds = %entry
  %58 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1462
  %arrayidx77 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %58, i64 0, !dbg !1462
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx77, align 8, !dbg !1462
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1463
  %call78 = call i32 @acpi_ex_get_object_reference(%union.acpi_operand_object* %59, %union.acpi_operand_object** %return_desc, %struct.acpi_walk_state* %60) #3, !dbg !1464
  store i32 %call78, i32* %status, align 4, !dbg !1465
  %61 = load i32, i32* %status, align 4, !dbg !1466
  %tobool79 = icmp ne i32 %61, 0, !dbg !1466
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !1468

if.then80:                                        ; preds = %sw.bb76
  br label %cleanup, !dbg !1469

if.end81:                                         ; preds = %sw.bb76
  br label %sw.epilog251, !dbg !1471

sw.bb82:                                          ; preds = %entry
  %62 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1472
  %arrayidx83 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %62, i64 0, !dbg !1472
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx83, align 8, !dbg !1472
  %64 = bitcast %union.acpi_operand_object* %63 to i8*, !dbg !1472
  %65 = bitcast i8* %64 to %union.acpi_descriptor*, !dbg !1472
  %common84 = bitcast %union.acpi_descriptor* %65 to %struct.acpi_common_descriptor*, !dbg !1472
  %descriptor_type85 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common84, i32 0, i32 1, !dbg !1472
  %66 = load i8, i8* %descriptor_type85, align 8, !dbg !1472
  %conv86 = zext i8 %66 to i32, !dbg !1472
  %cmp87 = icmp eq i32 %conv86, 15, !dbg !1474
  br i1 %cmp87, label %if.then89, label %if.else107, !dbg !1475

if.then89:                                        ; preds = %sw.bb82
  %67 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1476
  %arrayidx90 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %67, i64 0, !dbg !1476
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx90, align 8, !dbg !1476
  %69 = bitcast %union.acpi_operand_object* %68 to %struct.acpi_namespace_node*, !dbg !1478
  %call91 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %69) #3, !dbg !1479
  store %union.acpi_operand_object* %call91, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1480
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1481
  %tobool92 = icmp ne %union.acpi_operand_object* %70, null, !dbg !1481
  br i1 %tobool92, label %land.lhs.true, label %if.else105, !dbg !1483

land.lhs.true:                                    ; preds = %if.then89
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1484
  %common93 = bitcast %union.acpi_operand_object* %71 to %struct.acpi_object_common*, !dbg !1485
  %type94 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common93, i32 0, i32 2, !dbg !1486
  %72 = load i8, i8* %type94, align 1, !dbg !1486
  %conv95 = zext i8 %72 to i32, !dbg !1484
  %cmp96 = icmp eq i32 %conv95, 2, !dbg !1487
  br i1 %cmp96, label %if.then103, label %lor.lhs.false, !dbg !1488

lor.lhs.false:                                    ; preds = %land.lhs.true
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1489
  %common98 = bitcast %union.acpi_operand_object* %73 to %struct.acpi_object_common*, !dbg !1490
  %type99 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common98, i32 0, i32 2, !dbg !1491
  %74 = load i8, i8* %type99, align 1, !dbg !1491
  %conv100 = zext i8 %74 to i32, !dbg !1489
  %cmp101 = icmp eq i32 %conv100, 20, !dbg !1492
  br i1 %cmp101, label %if.then103, label %if.else105, !dbg !1493

if.then103:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1494
  %76 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1496
  %arrayidx104 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %76, i64 0, !dbg !1496
  store %union.acpi_operand_object* %75, %union.acpi_operand_object** %arrayidx104, align 8, !dbg !1497
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1498
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %77) #3, !dbg !1499
  br label %if.end106, !dbg !1500

if.else105:                                       ; preds = %lor.lhs.false, %if.then89
  store i32 12291, i32* %status, align 4, !dbg !1501
  br label %cleanup, !dbg !1503

if.end106:                                        ; preds = %if.then103
  br label %if.end138, !dbg !1504

if.else107:                                       ; preds = %sw.bb82
  %78 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1505
  %arrayidx108 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %78, i64 0, !dbg !1505
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx108, align 8, !dbg !1505
  %common109 = bitcast %union.acpi_operand_object* %79 to %struct.acpi_object_common*, !dbg !1507
  %type110 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common109, i32 0, i32 2, !dbg !1508
  %80 = load i8, i8* %type110, align 1, !dbg !1508
  %conv111 = zext i8 %80 to i32, !dbg !1509
  switch i32 %conv111, label %sw.default136 [
    i32 20, label %sw.bb112
    i32 2, label %sw.bb135
  ], !dbg !1510

sw.bb112:                                         ; preds = %if.else107
  %81 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1511
  %arrayidx113 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %81, i64 0, !dbg !1511
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx113, align 8, !dbg !1511
  %reference = bitcast %union.acpi_operand_object* %82 to %struct.acpi_object_reference*, !dbg !1513
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1514
  %83 = load i8, i8* %class, align 1, !dbg !1514
  %conv114 = zext i8 %83 to i32, !dbg !1511
  switch i32 %conv114, label %sw.default133 [
    i32 0, label %sw.bb115
    i32 1, label %sw.bb115
    i32 2, label %sw.bb128
  ], !dbg !1515

sw.bb115:                                         ; preds = %sw.bb112, %sw.bb112
  %84 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1516
  %arrayidx116 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %84, i64 0, !dbg !1516
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx116, align 8, !dbg !1516
  %reference117 = bitcast %union.acpi_operand_object* %85 to %struct.acpi_object_reference*, !dbg !1518
  %class118 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference117, i32 0, i32 5, !dbg !1519
  %86 = load i8, i8* %class118, align 1, !dbg !1519
  %87 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1520
  %arrayidx119 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %87, i64 0, !dbg !1520
  %88 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx119, align 8, !dbg !1520
  %reference120 = bitcast %union.acpi_operand_object* %88 to %struct.acpi_object_reference*, !dbg !1521
  %value121 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference120, i32 0, i32 13, !dbg !1522
  %89 = load i32, i32* %value121, align 8, !dbg !1522
  %90 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1523
  %call122 = call i32 @acpi_ds_method_data_get_value(i8 zeroext %86, i32 %89, %struct.acpi_walk_state* %90, %union.acpi_operand_object** %temp_desc) #3, !dbg !1524
  store i32 %call122, i32* %status, align 4, !dbg !1525
  %91 = load i32, i32* %status, align 4, !dbg !1526
  %tobool123 = icmp ne i32 %91, 0, !dbg !1526
  br i1 %tobool123, label %if.then124, label %if.end125, !dbg !1528

if.then124:                                       ; preds = %sw.bb115
  br label %cleanup, !dbg !1529

if.end125:                                        ; preds = %sw.bb115
  %92 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1531
  %arrayidx126 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %92, i64 0, !dbg !1531
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx126, align 8, !dbg !1531
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %93) #3, !dbg !1532
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1533
  %95 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1534
  %arrayidx127 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %95, i64 0, !dbg !1534
  store %union.acpi_operand_object* %94, %union.acpi_operand_object** %arrayidx127, align 8, !dbg !1535
  br label %sw.epilog134, !dbg !1536

sw.bb128:                                         ; preds = %sw.bb112
  %96 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1537
  %arrayidx129 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %96, i64 0, !dbg !1537
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx129, align 8, !dbg !1537
  %reference130 = bitcast %union.acpi_operand_object* %97 to %struct.acpi_object_reference*, !dbg !1538
  %object = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference130, i32 0, i32 8, !dbg !1539
  %98 = load i8*, i8** %object, align 8, !dbg !1539
  %99 = bitcast i8* %98 to %union.acpi_operand_object*, !dbg !1537
  store %union.acpi_operand_object* %99, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1540
  %100 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1541
  %arrayidx131 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %100, i64 0, !dbg !1541
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx131, align 8, !dbg !1541
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %101) #3, !dbg !1542
  %102 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1543
  %103 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1544
  %arrayidx132 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %103, i64 0, !dbg !1544
  store %union.acpi_operand_object* %102, %union.acpi_operand_object** %arrayidx132, align 8, !dbg !1545
  br label %sw.epilog134, !dbg !1546

sw.default133:                                    ; preds = %sw.bb112
  br label %sw.epilog134, !dbg !1547

sw.epilog134:                                     ; preds = %sw.default133, %sw.bb128, %if.end125
  br label %sw.epilog137, !dbg !1548

sw.bb135:                                         ; preds = %if.else107
  br label %sw.epilog137, !dbg !1549

sw.default136:                                    ; preds = %if.else107
  store i32 12291, i32* %status, align 4, !dbg !1550
  br label %cleanup, !dbg !1551

sw.epilog137:                                     ; preds = %sw.bb135, %sw.epilog134
  br label %if.end138

if.end138:                                        ; preds = %sw.epilog137, %if.end106
  %104 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1552
  %arrayidx139 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %104, i64 0, !dbg !1552
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx139, align 8, !dbg !1552
  %106 = bitcast %union.acpi_operand_object* %105 to i8*, !dbg !1552
  %107 = bitcast i8* %106 to %union.acpi_descriptor*, !dbg !1552
  %common140 = bitcast %union.acpi_descriptor* %107 to %struct.acpi_common_descriptor*, !dbg !1552
  %descriptor_type141 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common140, i32 0, i32 1, !dbg !1552
  %108 = load i8, i8* %descriptor_type141, align 8, !dbg !1552
  %conv142 = zext i8 %108 to i32, !dbg !1552
  %cmp143 = icmp ne i32 %conv142, 15, !dbg !1554
  br i1 %cmp143, label %if.then145, label %if.end161, !dbg !1555

if.then145:                                       ; preds = %if.end138
  %109 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1556
  %arrayidx146 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %109, i64 0, !dbg !1556
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx146, align 8, !dbg !1556
  %common147 = bitcast %union.acpi_operand_object* %110 to %struct.acpi_object_common*, !dbg !1559
  %type148 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common147, i32 0, i32 2, !dbg !1560
  %111 = load i8, i8* %type148, align 1, !dbg !1560
  %conv149 = zext i8 %111 to i32, !dbg !1561
  %cmp150 = icmp eq i32 %conv149, 2, !dbg !1562
  br i1 %cmp150, label %if.then152, label %if.end160, !dbg !1563

if.then152:                                       ; preds = %if.then145
  %112 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1564
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %112, i32 0, i32 46, !dbg !1566
  %113 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !1566
  %scope = bitcast %union.acpi_generic_state* %113 to %struct.acpi_scope_state*, !dbg !1567
  %node = getelementptr inbounds %struct.acpi_scope_state, %struct.acpi_scope_state* %scope, i32 0, i32 5, !dbg !1568
  %114 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1568
  %115 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1569
  %arrayidx153 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %115, i64 0, !dbg !1569
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx153, align 8, !dbg !1569
  %string154 = bitcast %union.acpi_operand_object* %116 to %struct.acpi_object_string*, !dbg !1570
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string154, i32 0, i32 5, !dbg !1571
  %117 = load i8*, i8** %pointer, align 8, !dbg !1571
  %118 = bitcast %union.acpi_operand_object** %return_desc to i8*, !dbg !1572
  %119 = bitcast i8* %118 to %struct.acpi_namespace_node**, !dbg !1572
  %call155 = call i32 @acpi_ns_get_node_unlocked(%struct.acpi_namespace_node* %114, i8* %117, i32 1, %struct.acpi_namespace_node** %119) #3, !dbg !1573
  store i32 %call155, i32* %status, align 4, !dbg !1574
  %120 = load i32, i32* %status, align 4, !dbg !1575
  %tobool156 = icmp ne i32 %120, 0, !dbg !1575
  br i1 %tobool156, label %if.then157, label %if.end158, !dbg !1577

if.then157:                                       ; preds = %if.then152
  br label %cleanup, !dbg !1578

if.end158:                                        ; preds = %if.then152
  %121 = bitcast %union.acpi_operand_object** %return_desc to i8*, !dbg !1580
  %122 = bitcast i8* %121 to %struct.acpi_namespace_node**, !dbg !1580
  %123 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1581
  %call159 = call i32 @acpi_ex_resolve_node_to_value(%struct.acpi_namespace_node** %122, %struct.acpi_walk_state* %123) #3, !dbg !1582
  store i32 %call159, i32* %status, align 4, !dbg !1583
  br label %cleanup, !dbg !1584

if.end160:                                        ; preds = %if.then145
  br label %if.end161, !dbg !1585

if.end161:                                        ; preds = %if.end160, %if.end138
  %124 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1586
  %arrayidx162 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %124, i64 0, !dbg !1586
  %125 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx162, align 8, !dbg !1586
  %126 = bitcast %union.acpi_operand_object* %125 to i8*, !dbg !1586
  %127 = bitcast i8* %126 to %union.acpi_descriptor*, !dbg !1586
  %common163 = bitcast %union.acpi_descriptor* %127 to %struct.acpi_common_descriptor*, !dbg !1586
  %descriptor_type164 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common163, i32 0, i32 1, !dbg !1586
  %128 = load i8, i8* %descriptor_type164, align 8, !dbg !1586
  %conv165 = zext i8 %128 to i32, !dbg !1586
  %cmp166 = icmp eq i32 %conv165, 15, !dbg !1588
  br i1 %cmp166, label %if.then168, label %if.else178, !dbg !1589

if.then168:                                       ; preds = %if.end161
  %129 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1590
  %arrayidx169 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %129, i64 0, !dbg !1590
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx169, align 8, !dbg !1590
  %131 = bitcast %union.acpi_operand_object* %130 to %struct.acpi_namespace_node*, !dbg !1592
  %type170 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %131, i32 0, i32 2, !dbg !1592
  %132 = load i8, i8* %type170, align 1, !dbg !1592
  %conv171 = zext i8 %132 to i32, !dbg !1593
  switch i32 %conv171, label %sw.default174 [
    i32 6, label %sw.bb172
    i32 13, label %sw.bb172
  ], !dbg !1594

sw.bb172:                                         ; preds = %if.then168, %if.then168
  %133 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1595
  %arrayidx173 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %133, i64 0, !dbg !1595
  %134 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx173, align 8, !dbg !1595
  store %union.acpi_operand_object* %134, %union.acpi_operand_object** %return_desc, align 8, !dbg !1597
  br label %sw.epilog177, !dbg !1598

sw.default174:                                    ; preds = %if.then168
  %135 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1599
  %arrayidx175 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %135, i64 0, !dbg !1599
  %136 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx175, align 8, !dbg !1599
  %137 = bitcast %union.acpi_operand_object* %136 to %struct.acpi_namespace_node*, !dbg !1600
  %call176 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %137) #3, !dbg !1601
  store %union.acpi_operand_object* %call176, %union.acpi_operand_object** %return_desc, align 8, !dbg !1602
  %138 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1603
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %138) #3, !dbg !1604
  br label %sw.epilog177, !dbg !1605

sw.epilog177:                                     ; preds = %sw.default174, %sw.bb172
  br label %if.end247, !dbg !1606

if.else178:                                       ; preds = %if.end161
  %139 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1607
  %arrayidx179 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %139, i64 0, !dbg !1607
  %140 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx179, align 8, !dbg !1607
  %reference180 = bitcast %union.acpi_operand_object* %140 to %struct.acpi_object_reference*, !dbg !1609
  %class181 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference180, i32 0, i32 5, !dbg !1610
  %141 = load i8, i8* %class181, align 1, !dbg !1610
  %conv182 = zext i8 %141 to i32, !dbg !1607
  switch i32 %conv182, label %sw.default240 [
    i32 3, label %sw.bb183
    i32 2, label %sw.bb215
  ], !dbg !1611

sw.bb183:                                         ; preds = %if.else178
  %142 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1612
  %arrayidx184 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %142, i64 0, !dbg !1612
  %143 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx184, align 8, !dbg !1612
  %reference185 = bitcast %union.acpi_operand_object* %143 to %struct.acpi_object_reference*, !dbg !1614
  %target_type = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference185, i32 0, i32 6, !dbg !1615
  %144 = load i8, i8* %target_type, align 2, !dbg !1615
  %conv186 = zext i8 %144 to i32, !dbg !1612
  switch i32 %conv186, label %sw.default208 [
    i32 14, label %sw.bb187
    i32 4, label %sw.bb202
  ], !dbg !1616

sw.bb187:                                         ; preds = %sw.bb183
  %145 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1617
  %arrayidx188 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %145, i64 0, !dbg !1617
  %146 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx188, align 8, !dbg !1617
  %reference189 = bitcast %union.acpi_operand_object* %146 to %struct.acpi_object_reference*, !dbg !1619
  %object190 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference189, i32 0, i32 8, !dbg !1620
  %147 = load i8*, i8** %object190, align 8, !dbg !1620
  %148 = bitcast i8* %147 to %union.acpi_operand_object*, !dbg !1617
  store %union.acpi_operand_object* %148, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1621
  %149 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1622
  %buffer191 = bitcast %union.acpi_operand_object* %149 to %struct.acpi_object_buffer*, !dbg !1623
  %pointer192 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer191, i32 0, i32 5, !dbg !1624
  %150 = load i8*, i8** %pointer192, align 8, !dbg !1624
  %151 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1625
  %arrayidx193 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %151, i64 0, !dbg !1625
  %152 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx193, align 8, !dbg !1625
  %reference194 = bitcast %union.acpi_operand_object* %152 to %struct.acpi_object_reference*, !dbg !1626
  %value195 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference194, i32 0, i32 13, !dbg !1627
  %153 = load i32, i32* %value195, align 8, !dbg !1627
  %idxprom = zext i32 %153 to i64, !dbg !1622
  %arrayidx196 = getelementptr i8, i8* %150, i64 %idxprom, !dbg !1622
  %154 = load i8, i8* %arrayidx196, align 1, !dbg !1622
  %conv197 = zext i8 %154 to i64, !dbg !1628
  %call198 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 %conv197) #3, !dbg !1629
  store %union.acpi_operand_object* %call198, %union.acpi_operand_object** %return_desc, align 8, !dbg !1630
  %155 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1631
  %tobool199 = icmp ne %union.acpi_operand_object* %155, null, !dbg !1631
  br i1 %tobool199, label %if.end201, label %if.then200, !dbg !1633

if.then200:                                       ; preds = %sw.bb187
  store i32 4, i32* %status, align 4, !dbg !1634
  br label %cleanup, !dbg !1636

if.end201:                                        ; preds = %sw.bb187
  br label %sw.epilog214, !dbg !1637

sw.bb202:                                         ; preds = %sw.bb183
  %156 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1638
  %arrayidx203 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %156, i64 0, !dbg !1638
  %157 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx203, align 8, !dbg !1638
  %reference204 = bitcast %union.acpi_operand_object* %157 to %struct.acpi_object_reference*, !dbg !1639
  %where = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference204, i32 0, i32 10, !dbg !1640
  %158 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %where, align 8, !dbg !1640
  %159 = load %union.acpi_operand_object*, %union.acpi_operand_object** %158, align 8, !dbg !1641
  store %union.acpi_operand_object* %159, %union.acpi_operand_object** %return_desc, align 8, !dbg !1642
  %160 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1643
  %tobool205 = icmp ne %union.acpi_operand_object* %160, null, !dbg !1643
  br i1 %tobool205, label %if.end207, label %if.then206, !dbg !1645

if.then206:                                       ; preds = %sw.bb202
  store i32 12295, i32* %retval, align 4, !dbg !1646
  br label %return, !dbg !1646

if.end207:                                        ; preds = %sw.bb202
  %161 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1648
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %161) #3, !dbg !1649
  br label %sw.epilog214, !dbg !1650

sw.default208:                                    ; preds = %sw.bb183
  %162 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1651
  %arrayidx209 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %162, i64 0, !dbg !1651
  %163 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx209, align 8, !dbg !1651
  %reference210 = bitcast %union.acpi_operand_object* %163 to %struct.acpi_object_reference*, !dbg !1651
  %target_type211 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference210, i32 0, i32 6, !dbg !1651
  %164 = load i8, i8* %target_type211, align 2, !dbg !1651
  %conv212 = zext i8 %164 to i32, !dbg !1651
  %165 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1651
  %arrayidx213 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %165, i64 0, !dbg !1651
  %166 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx213, align 8, !dbg !1651
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 970, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %conv212, %union.acpi_operand_object* %166) #3, !dbg !1651
  store i32 12291, i32* %status, align 4, !dbg !1652
  br label %cleanup, !dbg !1653

sw.epilog214:                                     ; preds = %if.end207, %if.end201
  br label %sw.epilog246, !dbg !1654

sw.bb215:                                         ; preds = %if.else178
  %167 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1655
  %arrayidx216 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %167, i64 0, !dbg !1655
  %168 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx216, align 8, !dbg !1655
  %reference217 = bitcast %union.acpi_operand_object* %168 to %struct.acpi_object_reference*, !dbg !1656
  %object218 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference217, i32 0, i32 8, !dbg !1657
  %169 = load i8*, i8** %object218, align 8, !dbg !1657
  %170 = bitcast i8* %169 to %union.acpi_operand_object*, !dbg !1655
  store %union.acpi_operand_object* %170, %union.acpi_operand_object** %return_desc, align 8, !dbg !1658
  %171 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1659
  %172 = bitcast %union.acpi_operand_object* %171 to i8*, !dbg !1659
  %173 = bitcast i8* %172 to %union.acpi_descriptor*, !dbg !1659
  %common219 = bitcast %union.acpi_descriptor* %173 to %struct.acpi_common_descriptor*, !dbg !1659
  %descriptor_type220 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common219, i32 0, i32 1, !dbg !1659
  %174 = load i8, i8* %descriptor_type220, align 8, !dbg !1659
  %conv221 = zext i8 %174 to i32, !dbg !1659
  %cmp222 = icmp eq i32 %conv221, 15, !dbg !1661
  br i1 %cmp222, label %if.then224, label %if.end239, !dbg !1662

if.then224:                                       ; preds = %sw.bb215
  %175 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1663
  %176 = bitcast %union.acpi_operand_object* %175 to %struct.acpi_namespace_node*, !dbg !1665
  %call225 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %176) #3, !dbg !1666
  store %union.acpi_operand_object* %call225, %union.acpi_operand_object** %return_desc, align 8, !dbg !1667
  %177 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1668
  %tobool226 = icmp ne %union.acpi_operand_object* %177, null, !dbg !1668
  br i1 %tobool226, label %if.end228, label %if.then227, !dbg !1670

if.then227:                                       ; preds = %if.then224
  br label %sw.epilog246, !dbg !1671

if.end228:                                        ; preds = %if.then224
  %178 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1673
  %common229 = bitcast %union.acpi_operand_object* %178 to %struct.acpi_object_common*, !dbg !1674
  %type230 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common229, i32 0, i32 2, !dbg !1675
  %179 = load i8, i8* %type230, align 1, !dbg !1675
  %conv231 = zext i8 %179 to i32, !dbg !1673
  switch i32 %conv231, label %sw.default237 [
    i32 14, label %sw.bb232
    i32 17, label %sw.bb232
    i32 18, label %sw.bb232
    i32 19, label %sw.bb232
  ], !dbg !1676

sw.bb232:                                         ; preds = %if.end228, %if.end228, %if.end228, %if.end228
  %180 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1677
  %181 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1679
  %call233 = call i32 @acpi_ex_read_data_from_field(%struct.acpi_walk_state* %180, %union.acpi_operand_object* %181, %union.acpi_operand_object** %temp_desc) #3, !dbg !1680
  store i32 %call233, i32* %status, align 4, !dbg !1681
  %182 = load i32, i32* %status, align 4, !dbg !1682
  %tobool234 = icmp ne i32 %182, 0, !dbg !1682
  br i1 %tobool234, label %if.then235, label %if.end236, !dbg !1684

if.then235:                                       ; preds = %sw.bb232
  br label %cleanup, !dbg !1685

if.end236:                                        ; preds = %sw.bb232
  %183 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_desc, align 8, !dbg !1687
  store %union.acpi_operand_object* %183, %union.acpi_operand_object** %return_desc, align 8, !dbg !1688
  br label %sw.epilog238, !dbg !1689

sw.default237:                                    ; preds = %if.end228
  %184 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1690
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %184) #3, !dbg !1691
  br label %sw.epilog238, !dbg !1692

sw.epilog238:                                     ; preds = %sw.default237, %if.end236
  br label %if.end239, !dbg !1693

if.end239:                                        ; preds = %sw.epilog238, %sw.bb215
  br label %sw.epilog246, !dbg !1694

sw.default240:                                    ; preds = %if.else178
  %185 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1695
  %arrayidx241 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %185, i64 0, !dbg !1695
  %186 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx241, align 8, !dbg !1695
  %187 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1695
  %arrayidx242 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %187, i64 0, !dbg !1695
  %188 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx242, align 8, !dbg !1695
  %reference243 = bitcast %union.acpi_operand_object* %188 to %struct.acpi_object_reference*, !dbg !1695
  %class244 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference243, i32 0, i32 5, !dbg !1695
  %189 = load i8, i8* %class244, align 1, !dbg !1695
  %conv245 = zext i8 %189 to i32, !dbg !1695
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 1029, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), %union.acpi_operand_object* %186, i32 %conv245) #3, !dbg !1695
  store i32 8, i32* %status, align 4, !dbg !1696
  br label %cleanup, !dbg !1697

sw.epilog246:                                     ; preds = %if.end239, %if.then227, %sw.epilog214
  br label %if.end247

if.end247:                                        ; preds = %sw.epilog246, %sw.epilog177
  br label %sw.epilog251, !dbg !1698

sw.default248:                                    ; preds = %entry
  %190 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1699
  %opcode249 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %190, i32 0, i32 3, !dbg !1699
  %191 = load i16, i16* %opcode249, align 2, !dbg !1699
  %conv250 = zext i16 %191 to i32, !dbg !1699
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 1042, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %conv250) #3, !dbg !1699
  store i32 12289, i32* %status, align 4, !dbg !1700
  br label %cleanup, !dbg !1701

sw.epilog251:                                     ; preds = %if.end247, %if.end81, %if.end75, %if.end50, %if.end37, %if.end7
  br label %cleanup, !dbg !1702

cleanup:                                          ; preds = %sw.epilog251, %sw.default248, %sw.default240, %if.then235, %sw.default208, %if.then200, %if.end158, %if.then157, %sw.default136, %if.then124, %if.else105, %if.then80, %if.then74, %if.then70, %sw.default, %if.then55, %if.then49, %if.then44, %if.then20, %if.then11, %if.then
  call void @llvm.dbg.label(metadata !1703), !dbg !1704
  %192 = load i32, i32* %status, align 4, !dbg !1705
  %tobool252 = icmp ne i32 %192, 0, !dbg !1705
  br i1 %tobool252, label %if.then253, label %if.else254, !dbg !1707

if.then253:                                       ; preds = %cleanup
  %193 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1708
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %193) #3, !dbg !1710
  br label %if.end255, !dbg !1711

if.else254:                                       ; preds = %cleanup
  %194 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1712
  %195 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1714
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %195, i32 0, i32 43, !dbg !1715
  store %union.acpi_operand_object* %194, %union.acpi_operand_object** %result_obj, align 8, !dbg !1716
  br label %if.end255

if.end255:                                        ; preds = %if.else254, %if.then253
  %196 = load i32, i32* %status, align 4, !dbg !1717
  store i32 %196, i32* %retval, align 4, !dbg !1717
  br label %return, !dbg !1717

return:                                           ; preds = %if.end255, %if.then206
  %197 = load i32, i32* %retval, align 4, !dbg !1718
  ret i32 %197, !dbg !1718
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_operands(i16 zeroext, %union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_multiple(%struct.acpi_walk_state*, %union.acpi_operand_object*, i32*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_get_buffer_arguments(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_method_data_get_value(i8 zeroext, i32, %struct.acpi_walk_state*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_node_unlocked(%struct.acpi_namespace_node*, i8*, i32, %struct.acpi_namespace_node**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_node_to_value(%struct.acpi_namespace_node**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_read_data_from_field(%struct.acpi_walk_state*, %union.acpi_operand_object*, %union.acpi_operand_object**) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!796, !797, !798, !799}
!llvm.ident = !{!800}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !794, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !793, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exoparg1.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !8, !13, !16, !781, !101, !35, !792}
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
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !18, line: 133, size: 384, elements: !19)
!18 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !768, !769, !770, !771, !777, !778, !779, !780}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !17, file: !18, line: 134, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !23, line: 367, size: 576, elements: !24)
!23 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !39, !52, !64, !78, !92, !102, !419, !436, !451, !464, !542, !554, !568, !578, !596, !618, !637, !656, !675, !688, !714, !731, !744, !758, !767}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !22, file: !23, line: 368, baseType: !26, size: 128)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !23, line: 73, size: 128, elements: !27)
!27 = !{!28, !29, !33, !34, !38}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !26, file: !23, line: 74, baseType: !21, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !26, file: !23, line: 74, baseType: !30, size: 8, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !23, line: 74, baseType: !30, size: 8, offset: 72)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !26, file: !23, line: 74, baseType: !35, size: 16, offset: 80)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !37)
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !26, file: !23, line: 74, baseType: !30, size: 8, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !22, file: !23, line: 369, baseType: !40, size: 192)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !23, line: 76, size: 192, elements: !41)
!41 = !{!42, !43, !44, !45, !46, !47, !51}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !40, file: !23, line: 77, baseType: !21, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !40, file: !23, line: 77, baseType: !30, size: 8, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !23, line: 77, baseType: !30, size: 8, offset: 72)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !40, file: !23, line: 77, baseType: !35, size: 16, offset: 80)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !23, line: 77, baseType: !30, size: 8, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !40, file: !23, line: 77, baseType: !48, size: 24, offset: 104)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 3)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !40, file: !23, line: 78, baseType: !13, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !22, file: !23, line: 370, baseType: !53, size: 256)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !23, line: 93, size: 256, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !63}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !53, file: !23, line: 94, baseType: !21, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !53, file: !23, line: 94, baseType: !30, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !23, line: 94, baseType: !30, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !53, file: !23, line: 94, baseType: !35, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !23, line: 94, baseType: !30, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !53, file: !23, line: 94, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !53, file: !23, line: 94, baseType: !8, size: 32, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !22, file: !23, line: 371, baseType: !65, size: 384)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !23, line: 97, size: 384, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !74, !75, !76, !77}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !65, file: !23, line: 98, baseType: !21, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !65, file: !23, line: 98, baseType: !30, size: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !23, line: 98, baseType: !30, size: 8, offset: 72)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !65, file: !23, line: 98, baseType: !35, size: 16, offset: 80)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !23, line: 98, baseType: !30, size: 8, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !65, file: !23, line: 98, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !65, file: !23, line: 98, baseType: !8, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !65, file: !23, line: 99, baseType: !8, size: 32, offset: 224)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !65, file: !23, line: 100, baseType: !73, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !65, file: !23, line: 101, baseType: !16, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !22, file: !23, line: 372, baseType: !79, size: 384)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !23, line: 104, size: 384, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !89, !90, !91}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !79, file: !23, line: 105, baseType: !21, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !23, line: 105, baseType: !30, size: 8, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !23, line: 105, baseType: !30, size: 8, offset: 72)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !79, file: !23, line: 105, baseType: !35, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !23, line: 105, baseType: !30, size: 8, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !79, file: !23, line: 105, baseType: !16, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !79, file: !23, line: 106, baseType: !88, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !79, file: !23, line: 107, baseType: !73, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !79, file: !23, line: 108, baseType: !8, size: 32, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !79, file: !23, line: 109, baseType: !8, size: 32, offset: 352)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !22, file: !23, line: 373, baseType: !93, size: 192)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !23, line: 118, size: 192, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !93, file: !23, line: 119, baseType: !21, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !23, line: 119, baseType: !30, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !23, line: 119, baseType: !30, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !93, file: !23, line: 119, baseType: !35, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !23, line: 119, baseType: !30, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !93, file: !23, line: 119, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !22, file: !23, line: 374, baseType: !103, size: 448)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !23, line: 143, size: 448, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !416, !417, !418}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !23, line: 144, baseType: !21, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !23, line: 144, baseType: !30, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !23, line: 144, baseType: !30, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !23, line: 144, baseType: !35, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !23, line: 144, baseType: !30, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !103, file: !23, line: 144, baseType: !30, size: 8, offset: 104)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !103, file: !23, line: 145, baseType: !30, size: 8, offset: 112)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !103, file: !23, line: 146, baseType: !30, size: 8, offset: 120)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !103, file: !23, line: 147, baseType: !21, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !103, file: !23, line: 148, baseType: !21, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !103, file: !23, line: 149, baseType: !73, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !103, file: !23, line: 153, baseType: !117, size: 64, offset: 320)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !23, line: 150, size: 64, elements: !118)
!118 = !{!119, !415}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !117, file: !23, line: 151, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !18, line: 248, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!6, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !126, line: 37, size: 9024, elements: !127)
!126 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !361, !362, !363, !364, !365, !369, !371, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !398, !399, !400, !401, !402, !403, !404, !405, !407, !413}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !126, line: 38, baseType: !124, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !126, line: 39, baseType: !30, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !125, file: !126, line: 40, baseType: !30, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !125, file: !126, line: 41, baseType: !35, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !125, file: !126, line: 42, baseType: !30, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !125, file: !126, line: 43, baseType: !30, size: 8, offset: 104)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !125, file: !126, line: 44, baseType: !30, size: 8, offset: 112)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !125, file: !126, line: 45, baseType: !136, size: 16, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !35)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !125, file: !126, line: 46, baseType: !30, size: 8, offset: 144)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !125, file: !126, line: 47, baseType: !30, size: 8, offset: 152)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !125, file: !126, line: 48, baseType: !30, size: 8, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !125, file: !126, line: 49, baseType: !30, size: 8, offset: 168)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !125, file: !126, line: 50, baseType: !30, size: 8, offset: 176)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !125, file: !126, line: 51, baseType: !30, size: 8, offset: 184)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !125, file: !126, line: 52, baseType: !30, size: 8, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !125, file: !126, line: 53, baseType: !30, size: 8, offset: 200)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !125, file: !126, line: 54, baseType: !73, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !125, file: !126, line: 55, baseType: !8, size: 32, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !125, file: !126, line: 56, baseType: !8, size: 32, offset: 352)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !125, file: !126, line: 57, baseType: !8, size: 32, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !125, file: !126, line: 58, baseType: !8, size: 32, offset: 416)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !125, file: !126, line: 60, baseType: !151, size: 640, offset: 448)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !18, line: 893, size: 640, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !242, !243, !359, !360}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !151, file: !18, line: 894, baseType: !73, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !151, file: !18, line: 895, baseType: !73, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !151, file: !18, line: 896, baseType: !73, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !151, file: !18, line: 897, baseType: !73, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !151, file: !18, line: 898, baseType: !73, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !151, file: !18, line: 899, baseType: !159, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !18, line: 875, size: 1600, elements: !161)
!161 = !{!162, !182, !198}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !160, file: !18, line: 876, baseType: !163, size: 448)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !18, line: 828, size: 448, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !181}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !163, file: !18, line: 829, baseType: !159, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !163, file: !18, line: 829, baseType: !30, size: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !18, line: 829, baseType: !30, size: 8, offset: 72)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !163, file: !18, line: 829, baseType: !35, size: 16, offset: 80)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !163, file: !18, line: 829, baseType: !73, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !18, line: 829, baseType: !159, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !163, file: !18, line: 829, baseType: !16, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !163, file: !18, line: 829, baseType: !173, size: 64, offset: 320)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !18, line: 716, size: 64, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !173, file: !18, line: 717, baseType: !13, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !173, file: !18, line: 718, baseType: !8, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !173, file: !18, line: 719, baseType: !61, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !173, file: !18, line: 720, baseType: !73, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !18, line: 721, baseType: !61, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !173, file: !18, line: 722, baseType: !159, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !163, file: !18, line: 829, baseType: !30, size: 8, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !160, file: !18, line: 877, baseType: !183, size: 640)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !18, line: 835, size: 640, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !18, line: 836, baseType: !159, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !183, file: !18, line: 836, baseType: !30, size: 8, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !18, line: 836, baseType: !30, size: 8, offset: 72)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !183, file: !18, line: 836, baseType: !35, size: 16, offset: 80)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !183, file: !18, line: 836, baseType: !73, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !18, line: 836, baseType: !159, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !183, file: !18, line: 836, baseType: !16, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !183, file: !18, line: 836, baseType: !173, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !183, file: !18, line: 836, baseType: !30, size: 8, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !183, file: !18, line: 836, baseType: !61, size: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !183, file: !18, line: 837, baseType: !73, size: 64, offset: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !183, file: !18, line: 838, baseType: !8, size: 32, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !18, line: 839, baseType: !8, size: 32, offset: 608)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !160, file: !18, line: 878, baseType: !199, size: 1600)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !18, line: 846, size: 1600, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !18, line: 847, baseType: !159, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !18, line: 847, baseType: !30, size: 8, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !18, line: 847, baseType: !30, size: 8, offset: 72)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !199, file: !18, line: 847, baseType: !35, size: 16, offset: 80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !199, file: !18, line: 847, baseType: !73, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !18, line: 847, baseType: !159, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !18, line: 847, baseType: !16, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !18, line: 847, baseType: !173, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !199, file: !18, line: 847, baseType: !30, size: 8, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !199, file: !18, line: 847, baseType: !159, size: 64, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !199, file: !18, line: 848, baseType: !159, size: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !199, file: !18, line: 849, baseType: !61, size: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !199, file: !18, line: 850, baseType: !30, size: 8, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !199, file: !18, line: 851, baseType: !61, size: 64, offset: 704)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !199, file: !18, line: 852, baseType: !61, size: 64, offset: 768)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !199, file: !18, line: 853, baseType: !61, size: 64, offset: 832)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !199, file: !18, line: 854, baseType: !218, size: 32, offset: 896)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 4)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !199, file: !18, line: 855, baseType: !8, size: 32, offset: 928)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !199, file: !18, line: 856, baseType: !8, size: 32, offset: 960)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !199, file: !18, line: 857, baseType: !8, size: 32, offset: 992)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !199, file: !18, line: 858, baseType: !8, size: 32, offset: 1024)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !199, file: !18, line: 859, baseType: !8, size: 32, offset: 1056)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !199, file: !18, line: 860, baseType: !8, size: 32, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !199, file: !18, line: 861, baseType: !8, size: 32, offset: 1120)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !199, file: !18, line: 862, baseType: !8, size: 32, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !199, file: !18, line: 863, baseType: !8, size: 32, offset: 1184)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !199, file: !18, line: 864, baseType: !8, size: 32, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !199, file: !18, line: 865, baseType: !8, size: 32, offset: 1248)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !199, file: !18, line: 866, baseType: !8, size: 32, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !199, file: !18, line: 867, baseType: !8, size: 32, offset: 1312)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !199, file: !18, line: 868, baseType: !35, size: 16, offset: 1344)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !199, file: !18, line: 869, baseType: !30, size: 8, offset: 1360)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !199, file: !18, line: 870, baseType: !30, size: 8, offset: 1368)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !199, file: !18, line: 871, baseType: !30, size: 8, offset: 1376)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !199, file: !18, line: 872, baseType: !239, size: 160, offset: 1384)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 160, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 20)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !151, file: !18, line: 900, baseType: !16, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !151, file: !18, line: 901, baseType: !244, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !18, line: 663, size: 640, elements: !246)
!246 = !{!247, !255, !268, !277, !286, !299, !313, !325, !337}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !245, file: !18, line: 664, baseType: !248, size: 128)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !18, line: 567, size: 128, elements: !249)
!249 = !{!250, !251, !252, !253, !254}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !18, line: 568, baseType: !101, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !248, file: !18, line: 568, baseType: !30, size: 8, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !18, line: 568, baseType: !30, size: 8, offset: 72)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !248, file: !18, line: 568, baseType: !35, size: 16, offset: 80)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !248, file: !18, line: 568, baseType: !35, size: 16, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !245, file: !18, line: 665, baseType: !256, size: 384)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !18, line: 593, size: 384, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !18, line: 594, baseType: !101, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !256, file: !18, line: 594, baseType: !30, size: 8, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !256, file: !18, line: 594, baseType: !30, size: 8, offset: 72)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !256, file: !18, line: 594, baseType: !35, size: 16, offset: 80)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !256, file: !18, line: 594, baseType: !35, size: 16, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !256, file: !18, line: 594, baseType: !35, size: 16, offset: 112)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !256, file: !18, line: 595, baseType: !159, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !256, file: !18, line: 596, baseType: !73, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !256, file: !18, line: 597, baseType: !73, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !256, file: !18, line: 598, baseType: !13, size: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !245, file: !18, line: 666, baseType: !269, size: 192)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !18, line: 573, size: 192, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !18, line: 574, baseType: !101, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !269, file: !18, line: 574, baseType: !30, size: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !18, line: 574, baseType: !30, size: 8, offset: 72)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !269, file: !18, line: 574, baseType: !35, size: 16, offset: 80)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !18, line: 574, baseType: !35, size: 16, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !269, file: !18, line: 574, baseType: !21, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !245, file: !18, line: 667, baseType: !278, size: 192)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !18, line: 604, size: 192, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !18, line: 605, baseType: !101, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !18, line: 605, baseType: !30, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !18, line: 605, baseType: !30, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !18, line: 605, baseType: !35, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !18, line: 605, baseType: !35, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !278, file: !18, line: 605, baseType: !16, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !245, file: !18, line: 668, baseType: !287, size: 448)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !18, line: 608, size: 448, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !18, line: 609, baseType: !101, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !18, line: 609, baseType: !30, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !18, line: 609, baseType: !30, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !18, line: 609, baseType: !35, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !18, line: 609, baseType: !35, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !287, file: !18, line: 609, baseType: !8, size: 32, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !287, file: !18, line: 610, baseType: !159, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !287, file: !18, line: 611, baseType: !73, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !287, file: !18, line: 612, baseType: !73, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !287, file: !18, line: 613, baseType: !8, size: 32, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !245, file: !18, line: 669, baseType: !300, size: 512)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !18, line: 580, size: 512, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !18, line: 581, baseType: !101, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !18, line: 581, baseType: !30, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !18, line: 581, baseType: !30, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !18, line: 581, baseType: !35, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !18, line: 581, baseType: !35, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !300, file: !18, line: 581, baseType: !8, size: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !300, file: !18, line: 582, baseType: !21, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !300, file: !18, line: 583, baseType: !21, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !300, file: !18, line: 584, baseType: !124, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !300, file: !18, line: 585, baseType: !101, size: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !300, file: !18, line: 586, baseType: !8, size: 32, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !245, file: !18, line: 670, baseType: !314, size: 320)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !18, line: 620, size: 320, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !18, line: 621, baseType: !101, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !18, line: 621, baseType: !30, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !18, line: 621, baseType: !30, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !18, line: 621, baseType: !35, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !18, line: 621, baseType: !35, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !314, file: !18, line: 621, baseType: !30, size: 8, offset: 112)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !314, file: !18, line: 622, baseType: !124, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !314, file: !18, line: 623, baseType: !21, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !314, file: !18, line: 624, baseType: !13, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !245, file: !18, line: 671, baseType: !326, size: 640)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !18, line: 631, size: 640, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !18, line: 632, baseType: !101, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !326, file: !18, line: 632, baseType: !30, size: 8, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !18, line: 632, baseType: !30, size: 8, offset: 72)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !326, file: !18, line: 632, baseType: !35, size: 16, offset: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !326, file: !18, line: 632, baseType: !35, size: 16, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !326, file: !18, line: 633, baseType: !334, size: 512, offset: 128)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 8)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !245, file: !18, line: 672, baseType: !338, size: 320)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !18, line: 654, size: 320, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !338, file: !18, line: 655, baseType: !101, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !338, file: !18, line: 655, baseType: !30, size: 8, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !18, line: 655, baseType: !30, size: 8, offset: 72)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !338, file: !18, line: 655, baseType: !35, size: 16, offset: 80)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !338, file: !18, line: 655, baseType: !35, size: 16, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !338, file: !18, line: 655, baseType: !30, size: 8, offset: 112)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !338, file: !18, line: 656, baseType: !16, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !338, file: !18, line: 657, baseType: !21, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !338, file: !18, line: 658, baseType: !349, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !18, line: 645, size: 128, elements: !351)
!351 = !{!352, !358}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !350, file: !18, line: 646, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357, !8, !101}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !101)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !350, file: !18, line: 647, baseType: !101, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !151, file: !18, line: 902, baseType: !159, size: 64, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !151, file: !18, line: 903, baseType: !8, size: 32, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !125, file: !126, line: 61, baseType: !8, size: 32, offset: 1088)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !125, file: !126, line: 62, baseType: !8, size: 32, offset: 1120)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !125, file: !126, line: 63, baseType: !35, size: 16, offset: 1152)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !125, file: !126, line: 64, baseType: !30, size: 8, offset: 1168)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !125, file: !126, line: 66, baseType: !366, size: 2688, offset: 1216)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2688, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 7)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !125, file: !126, line: 67, baseType: !370, size: 3072, offset: 3904)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 3072, elements: !335)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !125, file: !126, line: 68, baseType: !372, size: 576, offset: 6976)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 576, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 9)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !125, file: !126, line: 69, baseType: !88, size: 64, offset: 7552)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !125, file: !126, line: 71, baseType: !73, size: 64, offset: 7616)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !125, file: !126, line: 72, baseType: !88, size: 64, offset: 7680)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !125, file: !126, line: 73, baseType: !244, size: 64, offset: 7744)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !125, file: !126, line: 74, baseType: !16, size: 64, offset: 7808)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !125, file: !126, line: 75, baseType: !21, size: 64, offset: 7872)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !125, file: !126, line: 76, baseType: !16, size: 64, offset: 7936)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !125, file: !126, line: 77, baseType: !159, size: 64, offset: 8000)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !125, file: !126, line: 78, baseType: !21, size: 64, offset: 8064)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !125, file: !126, line: 79, baseType: !16, size: 64, offset: 8128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !125, file: !126, line: 80, baseType: !61, size: 64, offset: 8192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !125, file: !126, line: 81, baseType: !159, size: 64, offset: 8256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !125, file: !126, line: 82, baseType: !388, size: 64, offset: 8320)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !18, line: 702, size: 128, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !390, file: !18, line: 706, baseType: !8, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !390, file: !18, line: 707, baseType: !8, size: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !18, line: 708, baseType: !35, size: 16, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !390, file: !18, line: 709, baseType: !30, size: 8, offset: 80)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !390, file: !18, line: 710, baseType: !30, size: 8, offset: 88)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !18, line: 711, baseType: !30, size: 8, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !125, file: !126, line: 83, baseType: !159, size: 64, offset: 8384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !125, file: !126, line: 84, baseType: !21, size: 64, offset: 8448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !125, file: !126, line: 85, baseType: !244, size: 64, offset: 8512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !125, file: !126, line: 86, baseType: !21, size: 64, offset: 8576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !125, file: !126, line: 87, baseType: !244, size: 64, offset: 8640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !125, file: !126, line: 88, baseType: !159, size: 64, offset: 8704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !125, file: !126, line: 89, baseType: !159, size: 64, offset: 8768)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !125, file: !126, line: 90, baseType: !406, size: 64, offset: 8832)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !125, file: !126, line: 91, baseType: !408, size: 64, offset: 8896)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !18, line: 637, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!6, !124, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !125, file: !126, line: 92, baseType: !414, size: 64, offset: 8960)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !18, line: 641, baseType: !121)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !117, file: !23, line: 152, baseType: !21, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !103, file: !23, line: 155, baseType: !8, size: 32, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !103, file: !23, line: 156, baseType: !136, size: 16, offset: 416)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !103, file: !23, line: 157, baseType: !30, size: 8, offset: 432)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !22, file: !23, line: 375, baseType: !420, size: 576)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !23, line: 122, size: 576, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !420, file: !23, line: 123, baseType: !21, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !420, file: !23, line: 123, baseType: !30, size: 8, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !420, file: !23, line: 123, baseType: !30, size: 8, offset: 72)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !420, file: !23, line: 123, baseType: !35, size: 16, offset: 80)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !23, line: 123, baseType: !30, size: 8, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !420, file: !23, line: 123, baseType: !30, size: 8, offset: 104)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !420, file: !23, line: 124, baseType: !35, size: 16, offset: 112)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !420, file: !23, line: 125, baseType: !101, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !420, file: !23, line: 126, baseType: !13, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !420, file: !23, line: 127, baseType: !406, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !420, file: !23, line: 128, baseType: !21, size: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !420, file: !23, line: 129, baseType: !21, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !420, file: !23, line: 130, baseType: !16, size: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !420, file: !23, line: 131, baseType: !30, size: 8, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !22, file: !23, line: 376, baseType: !437, size: 448)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !23, line: 134, size: 448, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !450}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !437, file: !23, line: 135, baseType: !21, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !437, file: !23, line: 135, baseType: !30, size: 8, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !437, file: !23, line: 135, baseType: !30, size: 8, offset: 72)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !437, file: !23, line: 135, baseType: !35, size: 16, offset: 80)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !437, file: !23, line: 135, baseType: !30, size: 8, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !437, file: !23, line: 135, baseType: !30, size: 8, offset: 104)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !437, file: !23, line: 136, baseType: !16, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !437, file: !23, line: 137, baseType: !21, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !23, line: 138, baseType: !21, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !437, file: !23, line: 139, baseType: !449, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !13)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !437, file: !23, line: 140, baseType: !8, size: 32, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !22, file: !23, line: 377, baseType: !452, size: 320)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !23, line: 184, size: 320, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !463}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !23, line: 185, baseType: !21, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !23, line: 185, baseType: !30, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !23, line: 185, baseType: !30, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !23, line: 185, baseType: !35, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !23, line: 185, baseType: !30, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !452, file: !23, line: 185, baseType: !460, size: 128, offset: 128)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 2)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !452, file: !23, line: 185, baseType: !21, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !22, file: !23, line: 378, baseType: !465, size: 384)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !23, line: 187, size: 384, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !465, file: !23, line: 188, baseType: !21, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !465, file: !23, line: 188, baseType: !30, size: 8, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !465, file: !23, line: 188, baseType: !30, size: 8, offset: 72)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !465, file: !23, line: 188, baseType: !35, size: 16, offset: 80)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !23, line: 188, baseType: !30, size: 8, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !465, file: !23, line: 189, baseType: !460, size: 128, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !465, file: !23, line: 189, baseType: !21, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !465, file: !23, line: 189, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !18, line: 480, size: 576, elements: !477)
!477 = !{!478, !479, !480, !481, !489, !504, !536, !537, !538, !539, !540, !541}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !476, file: !18, line: 481, baseType: !16, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !476, file: !18, line: 482, baseType: !475, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !18, line: 483, baseType: !475, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !476, file: !18, line: 484, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !18, line: 497, size: 256, elements: !484)
!484 = !{!485, !486, !487, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !483, file: !18, line: 498, baseType: !482, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !483, file: !18, line: 499, baseType: !482, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !483, file: !18, line: 500, baseType: !475, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !483, file: !18, line: 501, baseType: !8, size: 32, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !476, file: !18, line: 485, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !18, line: 466, size: 320, elements: !492)
!492 = !{!493, !498, !499, !500, !501, !502, !503}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !491, file: !18, line: 467, baseType: !494, size: 128)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !18, line: 459, size: 128, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !494, file: !18, line: 460, baseType: !30, size: 8)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !494, file: !18, line: 461, baseType: !13, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !491, file: !18, line: 468, baseType: !494, size: 128, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !491, file: !18, line: 469, baseType: !35, size: 16, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !491, file: !18, line: 470, baseType: !30, size: 8, offset: 272)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !491, file: !18, line: 471, baseType: !30, size: 8, offset: 280)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !491, file: !18, line: 472, baseType: !30, size: 8, offset: 288)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !491, file: !18, line: 473, baseType: !30, size: 8, offset: 296)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !476, file: !18, line: 486, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !18, line: 448, size: 192, elements: !507)
!507 = !{!508, !531, !532, !533, !534, !535}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !506, file: !18, line: 449, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !18, line: 438, size: 64, elements: !510)
!510 = !{!511, !512, !525}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !509, file: !18, line: 439, baseType: !16, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !509, file: !18, line: 440, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !18, line: 419, size: 256, elements: !515)
!515 = !{!516, !521, !522, !523, !524}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !18, line: 420, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!8, !357, !8, !101}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !514, file: !18, line: 421, baseType: !101, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !514, file: !18, line: 422, baseType: !16, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !514, file: !18, line: 423, baseType: !30, size: 8, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !514, file: !18, line: 424, baseType: !30, size: 8, offset: 200)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !509, file: !18, line: 441, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !18, line: 429, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !527, file: !18, line: 430, baseType: !16, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !18, line: 431, baseType: !526, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !506, file: !18, line: 450, baseType: !490, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !18, line: 451, baseType: !30, size: 8, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !506, file: !18, line: 452, baseType: !30, size: 8, offset: 136)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !506, file: !18, line: 453, baseType: !30, size: 8, offset: 144)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !506, file: !18, line: 454, baseType: !30, size: 8, offset: 152)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !476, file: !18, line: 487, baseType: !13, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !476, file: !18, line: 488, baseType: !8, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !476, file: !18, line: 489, baseType: !35, size: 16, offset: 480)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !476, file: !18, line: 490, baseType: !35, size: 16, offset: 496)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !476, file: !18, line: 491, baseType: !30, size: 8, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !476, file: !18, line: 492, baseType: !30, size: 8, offset: 520)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !22, file: !23, line: 379, baseType: !543, size: 384)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !23, line: 192, size: 384, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !543, file: !23, line: 193, baseType: !21, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !543, file: !23, line: 193, baseType: !30, size: 8, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !543, file: !23, line: 193, baseType: !30, size: 8, offset: 72)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !543, file: !23, line: 193, baseType: !35, size: 16, offset: 80)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !23, line: 193, baseType: !30, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !543, file: !23, line: 193, baseType: !460, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !23, line: 193, baseType: !21, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !543, file: !23, line: 193, baseType: !8, size: 32, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !543, file: !23, line: 194, baseType: !8, size: 32, offset: 352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !22, file: !23, line: 380, baseType: !555, size: 384)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !23, line: 197, size: 384, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !555, file: !23, line: 198, baseType: !21, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !555, file: !23, line: 198, baseType: !30, size: 8, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !23, line: 198, baseType: !30, size: 8, offset: 72)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !555, file: !23, line: 198, baseType: !35, size: 16, offset: 80)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !23, line: 198, baseType: !30, size: 8, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !555, file: !23, line: 200, baseType: !30, size: 8, offset: 104)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !555, file: !23, line: 201, baseType: !30, size: 8, offset: 112)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !555, file: !23, line: 202, baseType: !460, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !555, file: !23, line: 202, baseType: !21, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !555, file: !23, line: 202, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !13)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !22, file: !23, line: 381, baseType: !569, size: 320)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !23, line: 205, size: 320, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !23, line: 206, baseType: !21, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !23, line: 206, baseType: !30, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !23, line: 206, baseType: !30, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !23, line: 206, baseType: !35, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !23, line: 206, baseType: !30, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !23, line: 206, baseType: !460, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !23, line: 206, baseType: !21, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !22, file: !23, line: 382, baseType: !579, size: 384)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !23, line: 233, size: 384, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !23, line: 234, baseType: !21, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !23, line: 234, baseType: !30, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !23, line: 234, baseType: !30, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !23, line: 234, baseType: !35, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !23, line: 234, baseType: !30, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !579, file: !23, line: 234, baseType: !30, size: 8, offset: 104)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !579, file: !23, line: 234, baseType: !30, size: 8, offset: 112)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !579, file: !23, line: 234, baseType: !30, size: 8, offset: 120)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !579, file: !23, line: 234, baseType: !16, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !579, file: !23, line: 234, baseType: !8, size: 32, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !579, file: !23, line: 234, baseType: !8, size: 32, offset: 224)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !579, file: !23, line: 234, baseType: !8, size: 32, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !579, file: !23, line: 234, baseType: !30, size: 8, offset: 288)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !579, file: !23, line: 234, baseType: !30, size: 8, offset: 296)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !579, file: !23, line: 234, baseType: !21, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !22, file: !23, line: 383, baseType: !597, size: 576)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !23, line: 237, size: 576, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !23, line: 238, baseType: !21, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !23, line: 238, baseType: !30, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !23, line: 238, baseType: !30, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !23, line: 238, baseType: !35, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !23, line: 238, baseType: !30, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !597, file: !23, line: 238, baseType: !30, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !597, file: !23, line: 238, baseType: !30, size: 8, offset: 112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !597, file: !23, line: 238, baseType: !30, size: 8, offset: 120)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !23, line: 238, baseType: !16, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !597, file: !23, line: 238, baseType: !8, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !597, file: !23, line: 238, baseType: !8, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !23, line: 238, baseType: !8, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !597, file: !23, line: 238, baseType: !30, size: 8, offset: 288)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !597, file: !23, line: 238, baseType: !30, size: 8, offset: 296)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !597, file: !23, line: 238, baseType: !35, size: 16, offset: 304)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !597, file: !23, line: 239, baseType: !21, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !597, file: !23, line: 240, baseType: !73, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !597, file: !23, line: 241, baseType: !35, size: 16, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !597, file: !23, line: 242, baseType: !73, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !22, file: !23, line: 384, baseType: !619, size: 384)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !23, line: 262, size: 384, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !23, line: 263, baseType: !21, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !23, line: 263, baseType: !30, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !23, line: 263, baseType: !30, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !23, line: 263, baseType: !35, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !23, line: 263, baseType: !30, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !619, file: !23, line: 263, baseType: !30, size: 8, offset: 104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !619, file: !23, line: 263, baseType: !30, size: 8, offset: 112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !619, file: !23, line: 263, baseType: !30, size: 8, offset: 120)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !23, line: 263, baseType: !16, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !619, file: !23, line: 263, baseType: !8, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !619, file: !23, line: 263, baseType: !8, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !23, line: 263, baseType: !8, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !619, file: !23, line: 263, baseType: !30, size: 8, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !619, file: !23, line: 263, baseType: !30, size: 8, offset: 296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !619, file: !23, line: 263, baseType: !30, size: 8, offset: 304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !619, file: !23, line: 264, baseType: !21, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !22, file: !23, line: 385, baseType: !638, size: 448)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !23, line: 245, size: 448, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !23, line: 246, baseType: !21, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !23, line: 246, baseType: !30, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !23, line: 246, baseType: !30, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !23, line: 246, baseType: !35, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !23, line: 246, baseType: !30, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !23, line: 246, baseType: !30, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !23, line: 246, baseType: !30, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !23, line: 246, baseType: !30, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !23, line: 246, baseType: !16, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !23, line: 246, baseType: !8, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !23, line: 246, baseType: !8, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !23, line: 246, baseType: !8, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !23, line: 246, baseType: !30, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !23, line: 246, baseType: !30, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !638, file: !23, line: 246, baseType: !21, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !638, file: !23, line: 247, baseType: !21, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !22, file: !23, line: 386, baseType: !657, size: 448)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !23, line: 250, size: 448, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !657, file: !23, line: 251, baseType: !21, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !657, file: !23, line: 251, baseType: !30, size: 8, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !23, line: 251, baseType: !30, size: 8, offset: 72)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !657, file: !23, line: 251, baseType: !35, size: 16, offset: 80)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !23, line: 251, baseType: !30, size: 8, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !657, file: !23, line: 251, baseType: !30, size: 8, offset: 104)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !657, file: !23, line: 251, baseType: !30, size: 8, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !657, file: !23, line: 251, baseType: !30, size: 8, offset: 120)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !23, line: 251, baseType: !16, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !657, file: !23, line: 251, baseType: !8, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !657, file: !23, line: 251, baseType: !8, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !657, file: !23, line: 251, baseType: !8, size: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !657, file: !23, line: 251, baseType: !30, size: 8, offset: 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !657, file: !23, line: 251, baseType: !30, size: 8, offset: 296)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !657, file: !23, line: 256, baseType: !21, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !657, file: !23, line: 257, baseType: !21, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !22, file: !23, line: 387, baseType: !676, size: 512)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !23, line: 273, size: 512, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !676, file: !23, line: 274, baseType: !21, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !23, line: 274, baseType: !30, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !23, line: 274, baseType: !30, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !23, line: 274, baseType: !35, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !23, line: 274, baseType: !30, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !676, file: !23, line: 274, baseType: !16, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !676, file: !23, line: 275, baseType: !8, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !676, file: !23, line: 276, baseType: !353, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !676, file: !23, line: 277, baseType: !101, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !23, line: 278, baseType: !460, size: 128, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !22, file: !23, line: 388, baseType: !689, size: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !23, line: 281, size: 512, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !704, !705, !706, !712, !713}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !23, line: 282, baseType: !21, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !23, line: 282, baseType: !30, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !23, line: 282, baseType: !30, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !23, line: 282, baseType: !35, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !23, line: 282, baseType: !30, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !689, file: !23, line: 282, baseType: !30, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !689, file: !23, line: 283, baseType: !30, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !689, file: !23, line: 284, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!6, !8, !449, !8, !703, !101, !101}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !23, line: 285, baseType: !16, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !689, file: !23, line: 286, baseType: !101, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !689, file: !23, line: 287, baseType: !707, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!6, !357, !8, !101, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !689, file: !23, line: 288, baseType: !21, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !23, line: 289, baseType: !21, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !22, file: !23, line: 389, baseType: !715, size: 512)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !23, line: 307, size: 512, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !23, line: 308, baseType: !21, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !23, line: 308, baseType: !30, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !23, line: 308, baseType: !30, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !23, line: 308, baseType: !35, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !23, line: 308, baseType: !30, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !715, file: !23, line: 308, baseType: !30, size: 8, offset: 104)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !715, file: !23, line: 309, baseType: !30, size: 8, offset: 112)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !715, file: !23, line: 310, baseType: !30, size: 8, offset: 120)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !715, file: !23, line: 311, baseType: !101, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !23, line: 312, baseType: !16, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !715, file: !23, line: 313, baseType: !88, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !715, file: !23, line: 314, baseType: !73, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !715, file: !23, line: 315, baseType: !73, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !715, file: !23, line: 316, baseType: !8, size: 32, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !22, file: !23, line: 390, baseType: !732, size: 448)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !23, line: 340, size: 448, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !732, file: !23, line: 341, baseType: !21, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !23, line: 341, baseType: !30, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !23, line: 341, baseType: !30, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !732, file: !23, line: 341, baseType: !35, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !23, line: 341, baseType: !30, size: 8, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !732, file: !23, line: 341, baseType: !16, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !732, file: !23, line: 342, baseType: !16, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !732, file: !23, line: 343, baseType: !101, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !732, file: !23, line: 344, baseType: !73, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !732, file: !23, line: 345, baseType: !8, size: 32, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !22, file: !23, line: 391, baseType: !745, size: 256)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !23, line: 350, size: 256, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !757}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !745, file: !23, line: 351, baseType: !21, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !23, line: 351, baseType: !30, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !23, line: 351, baseType: !30, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !745, file: !23, line: 351, baseType: !35, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !23, line: 351, baseType: !30, size: 8, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !745, file: !23, line: 351, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !357, !101}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !745, file: !23, line: 352, baseType: !101, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !22, file: !23, line: 392, baseType: !759, size: 192)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !23, line: 357, size: 192, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !759, file: !23, line: 358, baseType: !21, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !759, file: !23, line: 358, baseType: !30, size: 8, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !759, file: !23, line: 358, baseType: !30, size: 8, offset: 72)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !759, file: !23, line: 358, baseType: !35, size: 16, offset: 80)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !23, line: 358, baseType: !30, size: 8, offset: 96)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !759, file: !23, line: 358, baseType: !21, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !22, file: !23, line: 399, baseType: !17, size: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !17, file: !18, line: 135, baseType: !30, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !17, file: !18, line: 136, baseType: !30, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !17, file: !18, line: 137, baseType: !35, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !17, file: !18, line: 138, baseType: !772, size: 32, offset: 96)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !773, line: 327, size: 32, elements: !774)
!773 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !772, file: !773, line: 328, baseType: !8, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !772, file: !773, line: 329, baseType: !218, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !17, file: !18, line: 139, baseType: !16, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !17, file: !18, line: 140, baseType: !16, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !17, file: !18, line: 141, baseType: !16, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !17, file: !18, line: 142, baseType: !136, size: 16, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !23, line: 432, size: 1600, elements: !783)
!783 = !{!784, !789, !790, !791}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !782, file: !23, line: 433, baseType: !785, size: 128)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !23, line: 427, size: 128, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !785, file: !23, line: 428, baseType: !101, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !785, file: !23, line: 429, baseType: !30, size: 8, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !782, file: !23, line: 434, baseType: !22, size: 576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !782, file: !23, line: 435, baseType: !17, size: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !782, file: !23, line: 436, baseType: !160, size: 1600)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!793 = !{!0}
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 72, elements: !373)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!796 = !{i32 7, !"Dwarf Version", i32 4}
!797 = !{i32 2, !"Debug Info Version", i32 3}
!798 = !{i32 1, !"wchar_size", i32 2}
!799 = !{i32 1, !"Code Model", i32 2}
!800 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!801 = distinct !DISubprogram(name: "acpi_ex_opcode_0A_0T_1R", scope: !3, file: !3, line: 53, type: !122, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!802 = !DILocalVariable(name: "walk_state", arg: 1, scope: !801, file: !3, line: 53, type: !124)
!803 = !DILocation(line: 53, column: 61, scope: !801)
!804 = !DILocalVariable(name: "status", scope: !801, file: !3, line: 55, type: !6)
!805 = !DILocation(line: 55, column: 14, scope: !801)
!806 = !DILocalVariable(name: "return_desc", scope: !801, file: !3, line: 56, type: !21)
!807 = !DILocation(line: 56, column: 29, scope: !801)
!808 = !DILocation(line: 63, column: 10, scope: !801)
!809 = !DILocation(line: 63, column: 22, scope: !801)
!810 = !DILocation(line: 63, column: 2, scope: !801)
!811 = !DILocation(line: 69, column: 37, scope: !812)
!812 = distinct !DILexicalBlock(scope: !801, file: !3, line: 63, column: 30)
!813 = !DILocation(line: 69, column: 7, scope: !812)
!814 = !DILocation(line: 68, column: 15, scope: !812)
!815 = !DILocation(line: 70, column: 8, scope: !816)
!816 = distinct !DILexicalBlock(scope: !812, file: !3, line: 70, column: 7)
!817 = !DILocation(line: 70, column: 7, scope: !812)
!818 = !DILocation(line: 71, column: 11, scope: !819)
!819 = distinct !DILexicalBlock(scope: !816, file: !3, line: 70, column: 21)
!820 = !DILocation(line: 72, column: 4, scope: !819)
!821 = !DILocation(line: 74, column: 3, scope: !812)
!822 = !DILocation(line: 78, column: 3, scope: !812)
!823 = !DILocation(line: 80, column: 10, scope: !812)
!824 = !DILocation(line: 81, column: 3, scope: !812)
!825 = !DILocation(line: 82, column: 2, scope: !812)
!826 = !DILabel(scope: !801, name: "cleanup", file: !3, line: 84)
!827 = !DILocation(line: 84, column: 1, scope: !801)
!828 = !DILocation(line: 88, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !801, file: !3, line: 88, column: 6)
!830 = !DILocation(line: 88, column: 6, scope: !829)
!831 = !DILocation(line: 88, column: 29, scope: !829)
!832 = !DILocation(line: 88, column: 32, scope: !829)
!833 = !DILocation(line: 88, column: 44, scope: !829)
!834 = !DILocation(line: 88, column: 6, scope: !801)
!835 = !DILocation(line: 89, column: 28, scope: !836)
!836 = distinct !DILexicalBlock(scope: !829, file: !3, line: 88, column: 56)
!837 = !DILocation(line: 89, column: 3, scope: !836)
!838 = !DILocation(line: 90, column: 3, scope: !836)
!839 = !DILocation(line: 90, column: 15, scope: !836)
!840 = !DILocation(line: 90, column: 26, scope: !836)
!841 = !DILocation(line: 91, column: 2, scope: !836)
!842 = !DILocation(line: 94, column: 28, scope: !843)
!843 = distinct !DILexicalBlock(scope: !829, file: !3, line: 91, column: 9)
!844 = !DILocation(line: 94, column: 3, scope: !843)
!845 = !DILocation(line: 94, column: 15, scope: !843)
!846 = !DILocation(line: 94, column: 26, scope: !843)
!847 = !DILocation(line: 97, column: 2, scope: !801)
!848 = distinct !DISubprogram(name: "acpi_ex_opcode_1A_0T_0R", scope: !3, file: !3, line: 113, type: !122, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!849 = !DILocalVariable(name: "walk_state", arg: 1, scope: !848, file: !3, line: 113, type: !124)
!850 = !DILocation(line: 113, column: 61, scope: !848)
!851 = !DILocalVariable(name: "operand", scope: !848, file: !3, line: 115, type: !88)
!852 = !DILocation(line: 115, column: 30, scope: !848)
!853 = !DILocation(line: 115, column: 41, scope: !848)
!854 = !DILocation(line: 115, column: 53, scope: !848)
!855 = !DILocalVariable(name: "status", scope: !848, file: !3, line: 116, type: !6)
!856 = !DILocation(line: 116, column: 14, scope: !848)
!857 = !DILocation(line: 123, column: 10, scope: !848)
!858 = !DILocation(line: 123, column: 22, scope: !848)
!859 = !DILocation(line: 123, column: 2, scope: !848)
!860 = !DILocation(line: 126, column: 34, scope: !861)
!861 = distinct !DILexicalBlock(scope: !848, file: !3, line: 123, column: 30)
!862 = !DILocation(line: 126, column: 46, scope: !861)
!863 = !DILocation(line: 126, column: 12, scope: !861)
!864 = !DILocation(line: 126, column: 10, scope: !861)
!865 = !DILocation(line: 127, column: 3, scope: !861)
!866 = !DILocation(line: 131, column: 39, scope: !861)
!867 = !DILocation(line: 131, column: 12, scope: !861)
!868 = !DILocation(line: 131, column: 10, scope: !861)
!869 = !DILocation(line: 132, column: 3, scope: !861)
!870 = !DILocation(line: 136, column: 40, scope: !861)
!871 = !DILocation(line: 136, column: 12, scope: !861)
!872 = !DILocation(line: 136, column: 10, scope: !861)
!873 = !DILocation(line: 137, column: 3, scope: !861)
!874 = !DILocation(line: 141, column: 36, scope: !861)
!875 = !DILocation(line: 141, column: 48, scope: !861)
!876 = !DILocation(line: 141, column: 56, scope: !861)
!877 = !DILocation(line: 141, column: 12, scope: !861)
!878 = !DILocation(line: 141, column: 10, scope: !861)
!879 = !DILocation(line: 142, column: 3, scope: !861)
!880 = !DILocation(line: 147, column: 37, scope: !861)
!881 = !DILocation(line: 147, column: 49, scope: !861)
!882 = !DILocation(line: 147, column: 57, scope: !861)
!883 = !DILocation(line: 147, column: 31, scope: !861)
!884 = !DILocation(line: 147, column: 7, scope: !861)
!885 = !DILocation(line: 146, column: 10, scope: !861)
!886 = !DILocation(line: 148, column: 3, scope: !861)
!887 = !DILocation(line: 152, column: 33, scope: !861)
!888 = !DILocation(line: 152, column: 12, scope: !861)
!889 = !DILocation(line: 152, column: 10, scope: !861)
!890 = !DILocation(line: 153, column: 3, scope: !861)
!891 = !DILocation(line: 157, column: 3, scope: !861)
!892 = !DILocation(line: 159, column: 10, scope: !861)
!893 = !DILocation(line: 160, column: 3, scope: !861)
!894 = !DILocation(line: 163, column: 2, scope: !848)
!895 = distinct !DISubprogram(name: "acpi_ex_opcode_1A_1T_0R", scope: !3, file: !3, line: 179, type: !122, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!896 = !DILocalVariable(name: "walk_state", arg: 1, scope: !895, file: !3, line: 179, type: !124)
!897 = !DILocation(line: 179, column: 61, scope: !895)
!898 = !DILocalVariable(name: "status", scope: !895, file: !3, line: 181, type: !6)
!899 = !DILocation(line: 181, column: 14, scope: !895)
!900 = !DILocalVariable(name: "operand", scope: !895, file: !3, line: 182, type: !88)
!901 = !DILocation(line: 182, column: 30, scope: !895)
!902 = !DILocation(line: 182, column: 41, scope: !895)
!903 = !DILocation(line: 182, column: 53, scope: !895)
!904 = !DILocation(line: 189, column: 10, scope: !895)
!905 = !DILocation(line: 189, column: 22, scope: !895)
!906 = !DILocation(line: 189, column: 2, scope: !895)
!907 = !DILocation(line: 192, column: 28, scope: !908)
!908 = distinct !DILexicalBlock(scope: !895, file: !3, line: 189, column: 30)
!909 = !DILocation(line: 192, column: 40, scope: !908)
!910 = !DILocation(line: 192, column: 52, scope: !908)
!911 = !DILocation(line: 192, column: 12, scope: !908)
!912 = !DILocation(line: 192, column: 10, scope: !908)
!913 = !DILocation(line: 193, column: 3, scope: !908)
!914 = !DILocation(line: 197, column: 3, scope: !908)
!915 = !DILocation(line: 199, column: 10, scope: !908)
!916 = !DILocation(line: 200, column: 3, scope: !908)
!917 = !DILocation(line: 201, column: 2, scope: !908)
!918 = !DILabel(scope: !895, name: "cleanup", file: !3, line: 203)
!919 = !DILocation(line: 203, column: 1, scope: !895)
!920 = !DILocation(line: 205, column: 2, scope: !895)
!921 = distinct !DISubprogram(name: "acpi_ex_opcode_1A_1T_1R", scope: !3, file: !3, line: 221, type: !122, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!922 = !DILocalVariable(name: "walk_state", arg: 1, scope: !921, file: !3, line: 221, type: !124)
!923 = !DILocation(line: 221, column: 61, scope: !921)
!924 = !DILocalVariable(name: "status", scope: !921, file: !3, line: 223, type: !6)
!925 = !DILocation(line: 223, column: 14, scope: !921)
!926 = !DILocalVariable(name: "operand", scope: !921, file: !3, line: 224, type: !88)
!927 = !DILocation(line: 224, column: 30, scope: !921)
!928 = !DILocation(line: 224, column: 41, scope: !921)
!929 = !DILocation(line: 224, column: 53, scope: !921)
!930 = !DILocalVariable(name: "return_desc", scope: !921, file: !3, line: 225, type: !21)
!931 = !DILocation(line: 225, column: 29, scope: !921)
!932 = !DILocalVariable(name: "return_desc2", scope: !921, file: !3, line: 226, type: !21)
!933 = !DILocation(line: 226, column: 29, scope: !921)
!934 = !DILocalVariable(name: "temp32", scope: !921, file: !3, line: 227, type: !8)
!935 = !DILocation(line: 227, column: 6, scope: !921)
!936 = !DILocalVariable(name: "i", scope: !921, file: !3, line: 228, type: !8)
!937 = !DILocation(line: 228, column: 6, scope: !921)
!938 = !DILocalVariable(name: "power_of_ten", scope: !921, file: !3, line: 229, type: !13)
!939 = !DILocation(line: 229, column: 6, scope: !921)
!940 = !DILocalVariable(name: "digit", scope: !921, file: !3, line: 230, type: !13)
!941 = !DILocation(line: 230, column: 6, scope: !921)
!942 = !DILocation(line: 237, column: 10, scope: !921)
!943 = !DILocation(line: 237, column: 22, scope: !921)
!944 = !DILocation(line: 237, column: 2, scope: !921)
!945 = !DILocation(line: 247, column: 17, scope: !946)
!946 = distinct !DILexicalBlock(scope: !921, file: !3, line: 237, column: 30)
!947 = !DILocation(line: 247, column: 15, scope: !946)
!948 = !DILocation(line: 248, column: 8, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !3, line: 248, column: 7)
!950 = !DILocation(line: 248, column: 7, scope: !946)
!951 = !DILocation(line: 249, column: 11, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !3, line: 248, column: 21)
!953 = !DILocation(line: 250, column: 4, scope: !952)
!954 = !DILocation(line: 253, column: 11, scope: !946)
!955 = !DILocation(line: 253, column: 23, scope: !946)
!956 = !DILocation(line: 253, column: 3, scope: !946)
!957 = !DILocation(line: 256, column: 34, scope: !958)
!958 = distinct !DILexicalBlock(scope: !946, file: !3, line: 253, column: 31)
!959 = !DILocation(line: 256, column: 46, scope: !958)
!960 = !DILocation(line: 256, column: 54, scope: !958)
!961 = !DILocation(line: 256, column: 33, scope: !958)
!962 = !DILocation(line: 256, column: 4, scope: !958)
!963 = !DILocation(line: 256, column: 17, scope: !958)
!964 = !DILocation(line: 256, column: 25, scope: !958)
!965 = !DILocation(line: 256, column: 31, scope: !958)
!966 = !DILocation(line: 257, column: 4, scope: !958)
!967 = !DILocation(line: 261, column: 33, scope: !958)
!968 = !DILocation(line: 261, column: 45, scope: !958)
!969 = !DILocation(line: 261, column: 53, scope: !958)
!970 = !DILocation(line: 261, column: 4, scope: !958)
!971 = !DILocation(line: 261, column: 17, scope: !958)
!972 = !DILocation(line: 261, column: 25, scope: !958)
!973 = !DILocation(line: 261, column: 31, scope: !958)
!974 = !DILocation(line: 267, column: 16, scope: !975)
!975 = distinct !DILexicalBlock(scope: !958, file: !3, line: 267, column: 4)
!976 = !DILocation(line: 267, column: 9, scope: !975)
!977 = !DILocation(line: 267, column: 21, scope: !978)
!978 = distinct !DILexicalBlock(scope: !975, file: !3, line: 267, column: 4)
!979 = !DILocation(line: 267, column: 34, scope: !978)
!980 = !DILocation(line: 267, column: 42, scope: !978)
!981 = !DILocation(line: 267, column: 48, scope: !978)
!982 = !DILocation(line: 268, column: 9, scope: !978)
!983 = !DILocation(line: 268, column: 16, scope: !978)
!984 = !DILocation(line: 0, scope: !978)
!985 = !DILocation(line: 267, column: 4, scope: !975)
!986 = !DILocation(line: 269, column: 5, scope: !987)
!987 = distinct !DILexicalBlock(scope: !978, file: !3, line: 268, column: 51)
!988 = !DILocation(line: 269, column: 18, scope: !987)
!989 = !DILocation(line: 269, column: 26, scope: !987)
!990 = !DILocation(line: 269, column: 32, scope: !987)
!991 = !DILocation(line: 270, column: 4, scope: !987)
!992 = !DILocation(line: 268, column: 41, scope: !978)
!993 = !DILocation(line: 267, column: 4, scope: !978)
!994 = distinct !{!994, !985, !995}
!995 = !DILocation(line: 270, column: 4, scope: !975)
!996 = !DILocation(line: 272, column: 33, scope: !958)
!997 = !DILocation(line: 272, column: 4, scope: !958)
!998 = !DILocation(line: 272, column: 17, scope: !958)
!999 = !DILocation(line: 272, column: 25, scope: !958)
!1000 = !DILocation(line: 272, column: 31, scope: !958)
!1001 = !DILocation(line: 273, column: 4, scope: !958)
!1002 = !DILocation(line: 277, column: 33, scope: !958)
!1003 = !DILocation(line: 277, column: 45, scope: !958)
!1004 = !DILocation(line: 277, column: 53, scope: !958)
!1005 = !DILocation(line: 277, column: 4, scope: !958)
!1006 = !DILocation(line: 277, column: 17, scope: !958)
!1007 = !DILocation(line: 277, column: 25, scope: !958)
!1008 = !DILocation(line: 277, column: 31, scope: !958)
!1009 = !DILocation(line: 283, column: 16, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !958, file: !3, line: 283, column: 4)
!1011 = !DILocation(line: 283, column: 9, scope: !1010)
!1012 = !DILocation(line: 283, column: 21, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 283, column: 4)
!1014 = !DILocation(line: 283, column: 34, scope: !1013)
!1015 = !DILocation(line: 283, column: 42, scope: !1013)
!1016 = !DILocation(line: 283, column: 48, scope: !1013)
!1017 = !DILocation(line: 284, column: 9, scope: !1013)
!1018 = !DILocation(line: 284, column: 16, scope: !1013)
!1019 = !DILocation(line: 0, scope: !1013)
!1020 = !DILocation(line: 283, column: 4, scope: !1010)
!1021 = !DILocation(line: 285, column: 5, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 284, column: 51)
!1023 = !DILocation(line: 285, column: 18, scope: !1022)
!1024 = !DILocation(line: 285, column: 26, scope: !1022)
!1025 = !DILocation(line: 285, column: 32, scope: !1022)
!1026 = !DILocation(line: 286, column: 4, scope: !1022)
!1027 = !DILocation(line: 284, column: 41, scope: !1013)
!1028 = !DILocation(line: 283, column: 4, scope: !1013)
!1029 = distinct !{!1029, !1020, !1030}
!1030 = !DILocation(line: 286, column: 4, scope: !1010)
!1031 = !DILocation(line: 291, column: 8, scope: !958)
!1032 = !DILocation(line: 291, column: 15, scope: !958)
!1033 = !DILocation(line: 292, column: 46, scope: !958)
!1034 = !DILocation(line: 292, column: 44, scope: !958)
!1035 = !DILocation(line: 290, column: 4, scope: !958)
!1036 = !DILocation(line: 290, column: 17, scope: !958)
!1037 = !DILocation(line: 290, column: 25, scope: !958)
!1038 = !DILocation(line: 290, column: 31, scope: !958)
!1039 = !DILocation(line: 293, column: 4, scope: !958)
!1040 = !DILocation(line: 301, column: 17, scope: !958)
!1041 = !DILocation(line: 302, column: 4, scope: !958)
!1042 = !DILocation(line: 302, column: 17, scope: !958)
!1043 = !DILocation(line: 302, column: 25, scope: !958)
!1044 = !DILocation(line: 302, column: 31, scope: !958)
!1045 = !DILocation(line: 303, column: 12, scope: !958)
!1046 = !DILocation(line: 303, column: 24, scope: !958)
!1047 = !DILocation(line: 303, column: 32, scope: !958)
!1048 = !DILocation(line: 303, column: 10, scope: !958)
!1049 = !DILocation(line: 307, column: 11, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !958, file: !3, line: 307, column: 4)
!1051 = !DILocation(line: 307, column: 9, scope: !1050)
!1052 = !DILocation(line: 308, column: 10, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 307, column: 4)
!1054 = !DILocation(line: 308, column: 14, scope: !1053)
!1055 = !DILocation(line: 308, column: 12, scope: !1053)
!1056 = !DILocation(line: 308, column: 45, scope: !1053)
!1057 = !DILocation(line: 308, column: 49, scope: !1053)
!1058 = !DILocation(line: 308, column: 55, scope: !1053)
!1059 = !DILocation(line: 0, scope: !1053)
!1060 = !DILocation(line: 307, column: 4, scope: !1050)
!1061 = !DILocation(line: 313, column: 21, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 309, column: 14)
!1063 = !DILocation(line: 313, column: 15, scope: !1062)
!1064 = !DILocation(line: 313, column: 28, scope: !1062)
!1065 = !DILocation(line: 313, column: 12, scope: !1062)
!1066 = !DILocation(line: 317, column: 9, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 317, column: 9)
!1068 = !DILocation(line: 317, column: 16, scope: !1067)
!1069 = !DILocation(line: 317, column: 9, scope: !1062)
!1070 = !DILocation(line: 318, column: 6, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 317, column: 21)
!1072 = !DILocation(line: 322, column: 13, scope: !1071)
!1073 = !DILocation(line: 323, column: 6, scope: !1071)
!1074 = !DILocation(line: 329, column: 17, scope: !1062)
!1075 = !DILocation(line: 329, column: 11, scope: !1062)
!1076 = !DILocation(line: 329, column: 27, scope: !1062)
!1077 = !DILocation(line: 329, column: 25, scope: !1062)
!1078 = !DILocation(line: 328, column: 5, scope: !1062)
!1079 = !DILocation(line: 328, column: 18, scope: !1062)
!1080 = !DILocation(line: 328, column: 26, scope: !1062)
!1081 = !DILocation(line: 328, column: 32, scope: !1062)
!1082 = !DILocation(line: 333, column: 11, scope: !1062)
!1083 = !DILocation(line: 337, column: 18, scope: !1062)
!1084 = !DILocation(line: 338, column: 4, scope: !1062)
!1085 = !DILocation(line: 309, column: 10, scope: !1053)
!1086 = !DILocation(line: 307, column: 4, scope: !1053)
!1087 = distinct !{!1087, !1060, !1088}
!1088 = !DILocation(line: 338, column: 4, scope: !1050)
!1089 = !DILocation(line: 339, column: 4, scope: !958)
!1090 = !DILocation(line: 343, column: 4, scope: !958)
!1091 = !DILocation(line: 343, column: 17, scope: !958)
!1092 = !DILocation(line: 343, column: 25, scope: !958)
!1093 = !DILocation(line: 343, column: 31, scope: !958)
!1094 = !DILocation(line: 344, column: 12, scope: !958)
!1095 = !DILocation(line: 344, column: 24, scope: !958)
!1096 = !DILocation(line: 344, column: 32, scope: !958)
!1097 = !DILocation(line: 344, column: 10, scope: !958)
!1098 = !DILocation(line: 348, column: 11, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !958, file: !3, line: 348, column: 4)
!1100 = !DILocation(line: 348, column: 9, scope: !1099)
!1101 = !DILocation(line: 349, column: 10, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 348, column: 4)
!1103 = !DILocation(line: 349, column: 14, scope: !1102)
!1104 = !DILocation(line: 349, column: 12, scope: !1102)
!1105 = !DILocation(line: 349, column: 45, scope: !1102)
!1106 = !DILocation(line: 349, column: 49, scope: !1102)
!1107 = !DILocation(line: 349, column: 55, scope: !1102)
!1108 = !DILocation(line: 0, scope: !1102)
!1109 = !DILocation(line: 348, column: 4, scope: !1099)
!1110 = !DILocation(line: 351, column: 32, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 350, column: 14)
!1112 = !DILocation(line: 351, column: 11, scope: !1111)
!1113 = !DILocation(line: 359, column: 17, scope: !1111)
!1114 = !DILocation(line: 359, column: 11, scope: !1111)
!1115 = !DILocation(line: 359, column: 28, scope: !1111)
!1116 = !DILocation(line: 359, column: 25, scope: !1111)
!1117 = !DILocation(line: 358, column: 5, scope: !1111)
!1118 = !DILocation(line: 358, column: 18, scope: !1111)
!1119 = !DILocation(line: 358, column: 26, scope: !1111)
!1120 = !DILocation(line: 358, column: 32, scope: !1111)
!1121 = !DILocation(line: 360, column: 4, scope: !1111)
!1122 = !DILocation(line: 350, column: 10, scope: !1102)
!1123 = !DILocation(line: 348, column: 4, scope: !1102)
!1124 = distinct !{!1124, !1109, !1125}
!1125 = !DILocation(line: 360, column: 4, scope: !1099)
!1126 = !DILocation(line: 364, column: 8, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !958, file: !3, line: 364, column: 8)
!1128 = !DILocation(line: 364, column: 14, scope: !1127)
!1129 = !DILocation(line: 364, column: 8, scope: !958)
!1130 = !DILocation(line: 365, column: 5, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 364, column: 19)
!1132 = !DILocation(line: 369, column: 12, scope: !1131)
!1133 = !DILocation(line: 370, column: 5, scope: !1131)
!1134 = !DILocation(line: 372, column: 4, scope: !958)
!1135 = !DILocation(line: 380, column: 38, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !958, file: !3, line: 380, column: 8)
!1137 = !DILocation(line: 380, column: 8, scope: !1136)
!1138 = !DILocation(line: 381, column: 8, scope: !1136)
!1139 = !DILocation(line: 380, column: 49, scope: !1136)
!1140 = !DILocation(line: 380, column: 8, scope: !958)
!1141 = !DILocation(line: 386, column: 5, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 381, column: 28)
!1143 = !DILocation(line: 386, column: 18, scope: !1142)
!1144 = !DILocation(line: 386, column: 26, scope: !1142)
!1145 = !DILocation(line: 386, column: 32, scope: !1142)
!1146 = !DILocation(line: 387, column: 5, scope: !1142)
!1147 = !DILocation(line: 392, column: 42, scope: !958)
!1148 = !DILocation(line: 394, column: 14, scope: !958)
!1149 = !DILocation(line: 392, column: 13, scope: !958)
!1150 = !DILocation(line: 392, column: 11, scope: !958)
!1151 = !DILocation(line: 395, column: 8, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !958, file: !3, line: 395, column: 8)
!1153 = !DILocation(line: 395, column: 8, scope: !958)
!1154 = !DILocation(line: 396, column: 5, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 395, column: 30)
!1156 = !DILocation(line: 400, column: 22, scope: !958)
!1157 = !DILocation(line: 400, column: 36, scope: !958)
!1158 = !DILocation(line: 400, column: 48, scope: !958)
!1159 = !DILocation(line: 400, column: 8, scope: !958)
!1160 = !DILocation(line: 399, column: 11, scope: !958)
!1161 = !DILocation(line: 401, column: 29, scope: !958)
!1162 = !DILocation(line: 401, column: 4, scope: !958)
!1163 = !DILocation(line: 405, column: 4, scope: !958)
!1164 = !DILocation(line: 405, column: 17, scope: !958)
!1165 = !DILocation(line: 405, column: 25, scope: !958)
!1166 = !DILocation(line: 405, column: 31, scope: !958)
!1167 = !DILocation(line: 406, column: 4, scope: !958)
!1168 = !DILocation(line: 412, column: 4, scope: !958)
!1169 = !DILocation(line: 414, column: 3, scope: !946)
!1170 = !DILocation(line: 422, column: 26, scope: !946)
!1171 = !DILocation(line: 422, column: 38, scope: !946)
!1172 = !DILocation(line: 422, column: 50, scope: !946)
!1173 = !DILocation(line: 422, column: 12, scope: !946)
!1174 = !DILocation(line: 422, column: 10, scope: !946)
!1175 = !DILocation(line: 423, column: 7, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !946, file: !3, line: 423, column: 7)
!1177 = !DILocation(line: 423, column: 7, scope: !946)
!1178 = !DILocation(line: 424, column: 4, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 423, column: 29)
!1180 = !DILocation(line: 429, column: 8, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !946, file: !3, line: 429, column: 7)
!1182 = !DILocation(line: 429, column: 20, scope: !1181)
!1183 = !DILocation(line: 429, column: 7, scope: !946)
!1184 = !DILocation(line: 436, column: 29, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 429, column: 32)
!1186 = !DILocation(line: 436, column: 4, scope: !1185)
!1187 = !DILocation(line: 436, column: 16, scope: !1185)
!1188 = !DILocation(line: 436, column: 27, scope: !1185)
!1189 = !DILocation(line: 437, column: 4, scope: !1185)
!1190 = !DILocation(line: 437, column: 16, scope: !1185)
!1191 = !DILocation(line: 437, column: 28, scope: !1185)
!1192 = !DILocation(line: 438, column: 3, scope: !1185)
!1193 = !DILocation(line: 439, column: 3, scope: !946)
!1194 = !DILocation(line: 447, column: 39, scope: !946)
!1195 = !DILocation(line: 448, column: 11, scope: !946)
!1196 = !DILocation(line: 447, column: 7, scope: !946)
!1197 = !DILocation(line: 446, column: 10, scope: !946)
!1198 = !DILocation(line: 449, column: 3, scope: !946)
!1199 = !DILocation(line: 454, column: 33, scope: !946)
!1200 = !DILocation(line: 454, column: 7, scope: !946)
!1201 = !DILocation(line: 453, column: 10, scope: !946)
!1202 = !DILocation(line: 456, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !946, file: !3, line: 456, column: 7)
!1204 = !DILocation(line: 456, column: 22, scope: !1203)
!1205 = !DILocation(line: 456, column: 19, scope: !1203)
!1206 = !DILocation(line: 456, column: 7, scope: !946)
!1207 = !DILocation(line: 460, column: 26, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 456, column: 34)
!1209 = !DILocation(line: 460, column: 4, scope: !1208)
!1210 = !DILocation(line: 461, column: 3, scope: !1208)
!1211 = !DILocation(line: 462, column: 3, scope: !946)
!1212 = !DILocation(line: 467, column: 33, scope: !946)
!1213 = !DILocation(line: 467, column: 7, scope: !946)
!1214 = !DILocation(line: 466, column: 10, scope: !946)
!1215 = !DILocation(line: 469, column: 7, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !946, file: !3, line: 469, column: 7)
!1217 = !DILocation(line: 469, column: 22, scope: !1216)
!1218 = !DILocation(line: 469, column: 19, scope: !1216)
!1219 = !DILocation(line: 469, column: 7, scope: !946)
!1220 = !DILocation(line: 473, column: 26, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 469, column: 34)
!1222 = !DILocation(line: 473, column: 4, scope: !1221)
!1223 = !DILocation(line: 474, column: 3, scope: !1221)
!1224 = !DILocation(line: 475, column: 3, scope: !946)
!1225 = !DILocation(line: 479, column: 38, scope: !946)
!1226 = !DILocation(line: 479, column: 12, scope: !946)
!1227 = !DILocation(line: 479, column: 10, scope: !946)
!1228 = !DILocation(line: 480, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !946, file: !3, line: 480, column: 7)
!1230 = !DILocation(line: 480, column: 22, scope: !1229)
!1231 = !DILocation(line: 480, column: 19, scope: !1229)
!1232 = !DILocation(line: 480, column: 7, scope: !946)
!1233 = !DILocation(line: 484, column: 26, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 480, column: 34)
!1235 = !DILocation(line: 484, column: 4, scope: !1234)
!1236 = !DILocation(line: 485, column: 3, scope: !1234)
!1237 = !DILocation(line: 486, column: 3, scope: !946)
!1238 = !DILocation(line: 493, column: 34, scope: !946)
!1239 = !DILocation(line: 493, column: 7, scope: !946)
!1240 = !DILocation(line: 492, column: 10, scope: !946)
!1241 = !DILocation(line: 494, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !946, file: !3, line: 494, column: 7)
!1243 = !DILocation(line: 494, column: 22, scope: !1242)
!1244 = !DILocation(line: 494, column: 19, scope: !1242)
!1245 = !DILocation(line: 494, column: 7, scope: !946)
!1246 = !DILocation(line: 498, column: 26, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 494, column: 34)
!1248 = !DILocation(line: 498, column: 4, scope: !1247)
!1249 = !DILocation(line: 499, column: 3, scope: !1247)
!1250 = !DILocation(line: 500, column: 3, scope: !946)
!1251 = !DILocation(line: 507, column: 3, scope: !946)
!1252 = !DILocation(line: 510, column: 10, scope: !946)
!1253 = !DILocation(line: 511, column: 3, scope: !946)
!1254 = !DILocation(line: 515, column: 3, scope: !946)
!1255 = !DILocation(line: 517, column: 10, scope: !946)
!1256 = !DILocation(line: 518, column: 3, scope: !946)
!1257 = !DILocation(line: 521, column: 6, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !921, file: !3, line: 521, column: 6)
!1259 = !DILocation(line: 521, column: 6, scope: !921)
!1260 = !DILocation(line: 525, column: 26, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 521, column: 28)
!1262 = !DILocation(line: 525, column: 39, scope: !1261)
!1263 = !DILocation(line: 525, column: 51, scope: !1261)
!1264 = !DILocation(line: 525, column: 12, scope: !1261)
!1265 = !DILocation(line: 525, column: 10, scope: !1261)
!1266 = !DILocation(line: 526, column: 2, scope: !1261)
!1267 = !DILabel(scope: !921, name: "cleanup", file: !3, line: 528)
!1268 = !DILocation(line: 528, column: 1, scope: !921)
!1269 = !DILocation(line: 532, column: 6, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !921, file: !3, line: 532, column: 6)
!1271 = !DILocation(line: 532, column: 6, scope: !921)
!1272 = !DILocation(line: 533, column: 28, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 532, column: 28)
!1274 = !DILocation(line: 533, column: 3, scope: !1273)
!1275 = !DILocation(line: 534, column: 2, scope: !1273)
!1276 = !DILocation(line: 538, column: 12, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 538, column: 11)
!1278 = !DILocation(line: 538, column: 24, scope: !1277)
!1279 = !DILocation(line: 538, column: 11, scope: !1270)
!1280 = !DILocation(line: 539, column: 28, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 538, column: 36)
!1282 = !DILocation(line: 539, column: 3, scope: !1281)
!1283 = !DILocation(line: 539, column: 15, scope: !1281)
!1284 = !DILocation(line: 539, column: 26, scope: !1281)
!1285 = !DILocation(line: 540, column: 2, scope: !1281)
!1286 = !DILocation(line: 542, column: 2, scope: !921)
!1287 = !DILocation(line: 543, column: 1, scope: !921)
!1288 = distinct !DISubprogram(name: "acpi_ex_opcode_1A_0T_1R", scope: !3, file: !3, line: 557, type: !122, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1289 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1288, file: !3, line: 557, type: !124)
!1290 = !DILocation(line: 557, column: 61, scope: !1288)
!1291 = !DILocalVariable(name: "operand", scope: !1288, file: !3, line: 559, type: !88)
!1292 = !DILocation(line: 559, column: 30, scope: !1288)
!1293 = !DILocation(line: 559, column: 41, scope: !1288)
!1294 = !DILocation(line: 559, column: 53, scope: !1288)
!1295 = !DILocalVariable(name: "temp_desc", scope: !1288, file: !3, line: 560, type: !21)
!1296 = !DILocation(line: 560, column: 29, scope: !1288)
!1297 = !DILocalVariable(name: "return_desc", scope: !1288, file: !3, line: 561, type: !21)
!1298 = !DILocation(line: 561, column: 29, scope: !1288)
!1299 = !DILocalVariable(name: "status", scope: !1288, file: !3, line: 562, type: !6)
!1300 = !DILocation(line: 562, column: 14, scope: !1288)
!1301 = !DILocalVariable(name: "type", scope: !1288, file: !3, line: 563, type: !8)
!1302 = !DILocation(line: 563, column: 6, scope: !1288)
!1303 = !DILocalVariable(name: "value", scope: !1288, file: !3, line: 564, type: !13)
!1304 = !DILocation(line: 564, column: 6, scope: !1288)
!1305 = !DILocation(line: 571, column: 10, scope: !1288)
!1306 = !DILocation(line: 571, column: 22, scope: !1288)
!1307 = !DILocation(line: 571, column: 2, scope: !1288)
!1308 = !DILocation(line: 574, column: 17, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 571, column: 30)
!1310 = !DILocation(line: 574, column: 15, scope: !1309)
!1311 = !DILocation(line: 575, column: 8, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 575, column: 7)
!1313 = !DILocation(line: 575, column: 7, scope: !1309)
!1314 = !DILocation(line: 576, column: 11, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 575, column: 21)
!1316 = !DILocation(line: 577, column: 4, scope: !1315)
!1317 = !DILocation(line: 584, column: 8, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 584, column: 7)
!1319 = !DILocation(line: 584, column: 20, scope: !1318)
!1320 = !DILocation(line: 584, column: 28, scope: !1318)
!1321 = !DILocation(line: 584, column: 7, scope: !1309)
!1322 = !DILocation(line: 585, column: 4, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 584, column: 35)
!1324 = !DILocation(line: 585, column: 17, scope: !1323)
!1325 = !DILocation(line: 585, column: 25, scope: !1323)
!1326 = !DILocation(line: 585, column: 31, scope: !1323)
!1327 = !DILocation(line: 586, column: 3, scope: !1323)
!1328 = !DILocation(line: 587, column: 3, scope: !1309)
!1329 = !DILocation(line: 595, column: 17, scope: !1309)
!1330 = !DILocation(line: 595, column: 15, scope: !1309)
!1331 = !DILocation(line: 596, column: 8, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 596, column: 7)
!1333 = !DILocation(line: 596, column: 7, scope: !1309)
!1334 = !DILocation(line: 597, column: 11, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 596, column: 21)
!1336 = !DILocation(line: 598, column: 4, scope: !1335)
!1337 = !DILocation(line: 605, column: 15, scope: !1309)
!1338 = !DILocation(line: 605, column: 13, scope: !1309)
!1339 = !DILocation(line: 606, column: 7, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 606, column: 7)
!1341 = !DILocation(line: 606, column: 43, scope: !1340)
!1342 = !DILocation(line: 606, column: 7, scope: !1309)
!1343 = !DILocation(line: 611, column: 26, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 607, column: 31)
!1345 = !DILocation(line: 611, column: 4, scope: !1344)
!1346 = !DILocation(line: 612, column: 3, scope: !1344)
!1347 = !DILocation(line: 622, column: 21, scope: !1309)
!1348 = !DILocation(line: 621, column: 12, scope: !1309)
!1349 = !DILocation(line: 621, column: 10, scope: !1309)
!1350 = !DILocation(line: 623, column: 7, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 623, column: 7)
!1352 = !DILocation(line: 623, column: 7, scope: !1309)
!1353 = !DILocation(line: 624, column: 4, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 623, column: 29)
!1355 = !DILocation(line: 629, column: 4, scope: !1354)
!1356 = !DILocation(line: 636, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 636, column: 7)
!1358 = !DILocation(line: 636, column: 19, scope: !1357)
!1359 = !DILocation(line: 636, column: 26, scope: !1357)
!1360 = !DILocation(line: 636, column: 7, scope: !1309)
!1361 = !DILocation(line: 638, column: 8, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 636, column: 47)
!1363 = !DILocation(line: 638, column: 19, scope: !1362)
!1364 = !DILocation(line: 638, column: 27, scope: !1362)
!1365 = !DILocation(line: 638, column: 33, scope: !1362)
!1366 = !DILocation(line: 637, column: 4, scope: !1362)
!1367 = !DILocation(line: 637, column: 17, scope: !1362)
!1368 = !DILocation(line: 637, column: 25, scope: !1362)
!1369 = !DILocation(line: 637, column: 31, scope: !1362)
!1370 = !DILocation(line: 639, column: 3, scope: !1362)
!1371 = !DILocation(line: 641, column: 8, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 639, column: 10)
!1373 = !DILocation(line: 641, column: 19, scope: !1372)
!1374 = !DILocation(line: 641, column: 27, scope: !1372)
!1375 = !DILocation(line: 641, column: 33, scope: !1372)
!1376 = !DILocation(line: 640, column: 4, scope: !1372)
!1377 = !DILocation(line: 640, column: 17, scope: !1372)
!1378 = !DILocation(line: 640, column: 25, scope: !1372)
!1379 = !DILocation(line: 640, column: 31, scope: !1372)
!1380 = !DILocation(line: 646, column: 28, scope: !1309)
!1381 = !DILocation(line: 646, column: 3, scope: !1309)
!1382 = !DILocation(line: 652, column: 26, scope: !1309)
!1383 = !DILocation(line: 652, column: 39, scope: !1309)
!1384 = !DILocation(line: 652, column: 51, scope: !1309)
!1385 = !DILocation(line: 652, column: 12, scope: !1309)
!1386 = !DILocation(line: 652, column: 10, scope: !1309)
!1387 = !DILocation(line: 653, column: 3, scope: !1309)
!1388 = !DILocation(line: 666, column: 32, scope: !1309)
!1389 = !DILocation(line: 666, column: 44, scope: !1309)
!1390 = !DILocation(line: 666, column: 7, scope: !1309)
!1391 = !DILocation(line: 665, column: 10, scope: !1309)
!1392 = !DILocation(line: 668, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 668, column: 7)
!1394 = !DILocation(line: 668, column: 7, scope: !1309)
!1395 = !DILocation(line: 669, column: 4, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 668, column: 29)
!1397 = !DILocation(line: 674, column: 53, scope: !1309)
!1398 = !DILocation(line: 674, column: 47, scope: !1309)
!1399 = !DILocation(line: 674, column: 17, scope: !1309)
!1400 = !DILocation(line: 674, column: 15, scope: !1309)
!1401 = !DILocation(line: 675, column: 8, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 675, column: 7)
!1403 = !DILocation(line: 675, column: 7, scope: !1309)
!1404 = !DILocation(line: 676, column: 11, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 675, column: 21)
!1406 = !DILocation(line: 677, column: 4, scope: !1405)
!1407 = !DILocation(line: 679, column: 3, scope: !1309)
!1408 = !DILocation(line: 690, column: 32, scope: !1309)
!1409 = !DILocation(line: 690, column: 44, scope: !1309)
!1410 = !DILocation(line: 690, column: 7, scope: !1309)
!1411 = !DILocation(line: 689, column: 10, scope: !1309)
!1412 = !DILocation(line: 692, column: 7, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 692, column: 7)
!1414 = !DILocation(line: 692, column: 7, scope: !1309)
!1415 = !DILocation(line: 693, column: 4, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 692, column: 29)
!1417 = !DILocation(line: 705, column: 11, scope: !1309)
!1418 = !DILocation(line: 705, column: 3, scope: !1309)
!1419 = !DILocation(line: 708, column: 12, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 705, column: 17)
!1421 = !DILocation(line: 708, column: 10, scope: !1420)
!1422 = !DILocation(line: 709, column: 4, scope: !1420)
!1423 = !DILocation(line: 713, column: 12, scope: !1420)
!1424 = !DILocation(line: 713, column: 23, scope: !1420)
!1425 = !DILocation(line: 713, column: 30, scope: !1420)
!1426 = !DILocation(line: 713, column: 10, scope: !1420)
!1427 = !DILocation(line: 714, column: 4, scope: !1420)
!1428 = !DILocation(line: 720, column: 42, scope: !1420)
!1429 = !DILocation(line: 720, column: 13, scope: !1420)
!1430 = !DILocation(line: 720, column: 11, scope: !1420)
!1431 = !DILocation(line: 721, column: 12, scope: !1420)
!1432 = !DILocation(line: 721, column: 23, scope: !1420)
!1433 = !DILocation(line: 721, column: 30, scope: !1420)
!1434 = !DILocation(line: 721, column: 10, scope: !1420)
!1435 = !DILocation(line: 722, column: 4, scope: !1420)
!1436 = !DILocation(line: 728, column: 43, scope: !1420)
!1437 = !DILocation(line: 728, column: 13, scope: !1420)
!1438 = !DILocation(line: 728, column: 11, scope: !1420)
!1439 = !DILocation(line: 729, column: 12, scope: !1420)
!1440 = !DILocation(line: 729, column: 23, scope: !1420)
!1441 = !DILocation(line: 729, column: 31, scope: !1420)
!1442 = !DILocation(line: 729, column: 10, scope: !1420)
!1443 = !DILocation(line: 730, column: 4, scope: !1420)
!1444 = !DILocation(line: 734, column: 4, scope: !1420)
!1445 = !DILocation(line: 739, column: 11, scope: !1420)
!1446 = !DILocation(line: 740, column: 4, scope: !1420)
!1447 = !DILocation(line: 743, column: 7, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 743, column: 7)
!1449 = !DILocation(line: 743, column: 7, scope: !1309)
!1450 = !DILocation(line: 744, column: 4, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 743, column: 29)
!1452 = !DILocation(line: 751, column: 47, scope: !1309)
!1453 = !DILocation(line: 751, column: 17, scope: !1309)
!1454 = !DILocation(line: 751, column: 15, scope: !1309)
!1455 = !DILocation(line: 752, column: 8, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 752, column: 7)
!1457 = !DILocation(line: 752, column: 7, scope: !1309)
!1458 = !DILocation(line: 753, column: 11, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 752, column: 21)
!1460 = !DILocation(line: 754, column: 4, scope: !1459)
!1461 = !DILocation(line: 756, column: 3, scope: !1309)
!1462 = !DILocation(line: 761, column: 36, scope: !1309)
!1463 = !DILocation(line: 762, column: 8, scope: !1309)
!1464 = !DILocation(line: 761, column: 7, scope: !1309)
!1465 = !DILocation(line: 760, column: 10, scope: !1309)
!1466 = !DILocation(line: 763, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 763, column: 7)
!1468 = !DILocation(line: 763, column: 7, scope: !1309)
!1469 = !DILocation(line: 764, column: 4, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 763, column: 29)
!1471 = !DILocation(line: 766, column: 3, scope: !1309)
!1472 = !DILocation(line: 772, column: 7, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 772, column: 7)
!1474 = !DILocation(line: 772, column: 44, scope: !1473)
!1475 = !DILocation(line: 772, column: 7, scope: !1309)
!1476 = !DILocation(line: 777, column: 8, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 773, column: 29)
!1478 = !DILocation(line: 775, column: 36, scope: !1477)
!1479 = !DILocation(line: 775, column: 8, scope: !1477)
!1480 = !DILocation(line: 774, column: 14, scope: !1477)
!1481 = !DILocation(line: 778, column: 8, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 778, column: 8)
!1483 = !DILocation(line: 779, column: 8, scope: !1482)
!1484 = !DILocation(line: 779, column: 13, scope: !1482)
!1485 = !DILocation(line: 779, column: 24, scope: !1482)
!1486 = !DILocation(line: 779, column: 31, scope: !1482)
!1487 = !DILocation(line: 779, column: 36, scope: !1482)
!1488 = !DILocation(line: 780, column: 5, scope: !1482)
!1489 = !DILocation(line: 780, column: 9, scope: !1482)
!1490 = !DILocation(line: 780, column: 20, scope: !1482)
!1491 = !DILocation(line: 780, column: 27, scope: !1482)
!1492 = !DILocation(line: 780, column: 32, scope: !1482)
!1493 = !DILocation(line: 778, column: 8, scope: !1477)
!1494 = !DILocation(line: 782, column: 18, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 781, column: 38)
!1496 = !DILocation(line: 782, column: 5, scope: !1495)
!1497 = !DILocation(line: 782, column: 16, scope: !1495)
!1498 = !DILocation(line: 783, column: 27, scope: !1495)
!1499 = !DILocation(line: 783, column: 5, scope: !1495)
!1500 = !DILocation(line: 784, column: 4, scope: !1495)
!1501 = !DILocation(line: 785, column: 12, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 784, column: 11)
!1503 = !DILocation(line: 786, column: 5, scope: !1502)
!1504 = !DILocation(line: 788, column: 3, scope: !1477)
!1505 = !DILocation(line: 789, column: 13, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 788, column: 10)
!1507 = !DILocation(line: 789, column: 26, scope: !1506)
!1508 = !DILocation(line: 789, column: 33, scope: !1506)
!1509 = !DILocation(line: 789, column: 12, scope: !1506)
!1510 = !DILocation(line: 789, column: 4, scope: !1506)
!1511 = !DILocation(line: 796, column: 13, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 789, column: 39)
!1513 = !DILocation(line: 796, column: 25, scope: !1512)
!1514 = !DILocation(line: 796, column: 35, scope: !1512)
!1515 = !DILocation(line: 796, column: 5, scope: !1512)
!1516 = !DILocation(line: 804, column: 11, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 796, column: 42)
!1518 = !DILocation(line: 804, column: 23, scope: !1517)
!1519 = !DILocation(line: 804, column: 33, scope: !1517)
!1520 = !DILocation(line: 805, column: 11, scope: !1517)
!1521 = !DILocation(line: 805, column: 23, scope: !1517)
!1522 = !DILocation(line: 805, column: 33, scope: !1517)
!1523 = !DILocation(line: 806, column: 11, scope: !1517)
!1524 = !DILocation(line: 803, column: 10, scope: !1517)
!1525 = !DILocation(line: 802, column: 13, scope: !1517)
!1526 = !DILocation(line: 807, column: 10, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 807, column: 10)
!1528 = !DILocation(line: 807, column: 10, scope: !1517)
!1529 = !DILocation(line: 808, column: 7, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 807, column: 32)
!1531 = !DILocation(line: 815, column: 31, scope: !1517)
!1532 = !DILocation(line: 815, column: 6, scope: !1517)
!1533 = !DILocation(line: 816, column: 19, scope: !1517)
!1534 = !DILocation(line: 816, column: 6, scope: !1517)
!1535 = !DILocation(line: 816, column: 17, scope: !1517)
!1536 = !DILocation(line: 817, column: 6, scope: !1517)
!1537 = !DILocation(line: 824, column: 10, scope: !1517)
!1538 = !DILocation(line: 824, column: 22, scope: !1517)
!1539 = !DILocation(line: 824, column: 32, scope: !1517)
!1540 = !DILocation(line: 823, column: 16, scope: !1517)
!1541 = !DILocation(line: 825, column: 31, scope: !1517)
!1542 = !DILocation(line: 825, column: 6, scope: !1517)
!1543 = !DILocation(line: 826, column: 19, scope: !1517)
!1544 = !DILocation(line: 826, column: 6, scope: !1517)
!1545 = !DILocation(line: 826, column: 17, scope: !1517)
!1546 = !DILocation(line: 827, column: 6, scope: !1517)
!1547 = !DILocation(line: 832, column: 6, scope: !1517)
!1548 = !DILocation(line: 834, column: 5, scope: !1512)
!1549 = !DILocation(line: 838, column: 5, scope: !1512)
!1550 = !DILocation(line: 842, column: 12, scope: !1512)
!1551 = !DILocation(line: 843, column: 5, scope: !1512)
!1552 = !DILocation(line: 847, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 847, column: 7)
!1554 = !DILocation(line: 847, column: 44, scope: !1553)
!1555 = !DILocation(line: 847, column: 7, scope: !1309)
!1556 = !DILocation(line: 849, column: 9, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 849, column: 8)
!1558 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 848, column: 29)
!1559 = !DILocation(line: 849, column: 22, scope: !1557)
!1560 = !DILocation(line: 849, column: 29, scope: !1557)
!1561 = !DILocation(line: 849, column: 8, scope: !1557)
!1562 = !DILocation(line: 849, column: 34, scope: !1557)
!1563 = !DILocation(line: 849, column: 8, scope: !1558)
!1564 = !DILocation(line: 859, column: 35, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 849, column: 55)
!1566 = !DILocation(line: 860, column: 14, scope: !1565)
!1567 = !DILocation(line: 860, column: 26, scope: !1565)
!1568 = !DILocation(line: 861, column: 14, scope: !1565)
!1569 = !DILocation(line: 862, column: 14, scope: !1565)
!1570 = !DILocation(line: 863, column: 14, scope: !1565)
!1571 = !DILocation(line: 863, column: 21, scope: !1565)
!1572 = !DILocation(line: 865, column: 14, scope: !1565)
!1573 = !DILocation(line: 859, column: 9, scope: !1565)
!1574 = !DILocation(line: 858, column: 12, scope: !1565)
!1575 = !DILocation(line: 869, column: 9, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 869, column: 9)
!1577 = !DILocation(line: 869, column: 9, scope: !1565)
!1578 = !DILocation(line: 870, column: 6, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 869, column: 31)
!1580 = !DILocation(line: 875, column: 10, scope: !1565)
!1581 = !DILocation(line: 877, column: 10, scope: !1565)
!1582 = !DILocation(line: 874, column: 9, scope: !1565)
!1583 = !DILocation(line: 873, column: 12, scope: !1565)
!1584 = !DILocation(line: 878, column: 5, scope: !1565)
!1585 = !DILocation(line: 880, column: 3, scope: !1558)
!1586 = !DILocation(line: 884, column: 7, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 884, column: 7)
!1588 = !DILocation(line: 884, column: 44, scope: !1587)
!1589 = !DILocation(line: 884, column: 7, scope: !1309)
!1590 = !DILocation(line: 893, column: 43, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 885, column: 29)
!1592 = !DILocation(line: 894, column: 5, scope: !1591)
!1593 = !DILocation(line: 893, column: 12, scope: !1591)
!1594 = !DILocation(line: 893, column: 4, scope: !1591)
!1595 = !DILocation(line: 900, column: 19, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 894, column: 11)
!1597 = !DILocation(line: 900, column: 17, scope: !1596)
!1598 = !DILocation(line: 901, column: 5, scope: !1596)
!1599 = !DILocation(line: 906, column: 77, scope: !1596)
!1600 = !DILocation(line: 906, column: 47, scope: !1596)
!1601 = !DILocation(line: 906, column: 19, scope: !1596)
!1602 = !DILocation(line: 906, column: 17, scope: !1596)
!1603 = !DILocation(line: 907, column: 27, scope: !1596)
!1604 = !DILocation(line: 907, column: 5, scope: !1596)
!1605 = !DILocation(line: 908, column: 5, scope: !1596)
!1606 = !DILocation(line: 910, column: 3, scope: !1591)
!1607 = !DILocation(line: 915, column: 12, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 910, column: 10)
!1609 = !DILocation(line: 915, column: 24, scope: !1608)
!1610 = !DILocation(line: 915, column: 34, scope: !1608)
!1611 = !DILocation(line: 915, column: 4, scope: !1608)
!1612 = !DILocation(line: 921, column: 13, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 915, column: 41)
!1614 = !DILocation(line: 921, column: 25, scope: !1613)
!1615 = !DILocation(line: 921, column: 35, scope: !1613)
!1616 = !DILocation(line: 921, column: 5, scope: !1613)
!1617 = !DILocation(line: 925, column: 10, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 921, column: 48)
!1619 = !DILocation(line: 925, column: 22, scope: !1618)
!1620 = !DILocation(line: 925, column: 32, scope: !1618)
!1621 = !DILocation(line: 924, column: 16, scope: !1618)
!1622 = !DILocation(line: 941, column: 12, scope: !1618)
!1623 = !DILocation(line: 941, column: 23, scope: !1618)
!1624 = !DILocation(line: 941, column: 30, scope: !1618)
!1625 = !DILocation(line: 941, column: 38, scope: !1618)
!1626 = !DILocation(line: 941, column: 50, scope: !1618)
!1627 = !DILocation(line: 941, column: 60, scope: !1618)
!1628 = !DILocation(line: 940, column: 40, scope: !1618)
!1629 = !DILocation(line: 940, column: 10, scope: !1618)
!1630 = !DILocation(line: 939, column: 18, scope: !1618)
!1631 = !DILocation(line: 942, column: 11, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 942, column: 10)
!1633 = !DILocation(line: 942, column: 10, scope: !1618)
!1634 = !DILocation(line: 943, column: 14, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 942, column: 24)
!1636 = !DILocation(line: 944, column: 7, scope: !1635)
!1637 = !DILocation(line: 946, column: 6, scope: !1618)
!1638 = !DILocation(line: 954, column: 12, scope: !1618)
!1639 = !DILocation(line: 954, column: 24, scope: !1618)
!1640 = !DILocation(line: 954, column: 34, scope: !1618)
!1641 = !DILocation(line: 954, column: 10, scope: !1618)
!1642 = !DILocation(line: 953, column: 18, scope: !1618)
!1643 = !DILocation(line: 955, column: 11, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 955, column: 10)
!1645 = !DILocation(line: 955, column: 10, scope: !1618)
!1646 = !DILocation(line: 961, column: 7, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 955, column: 24)
!1648 = !DILocation(line: 965, column: 28, scope: !1618)
!1649 = !DILocation(line: 965, column: 6, scope: !1618)
!1650 = !DILocation(line: 966, column: 6, scope: !1618)
!1651 = !DILocation(line: 970, column: 6, scope: !1618)
!1652 = !DILocation(line: 975, column: 13, scope: !1618)
!1653 = !DILocation(line: 976, column: 6, scope: !1618)
!1654 = !DILocation(line: 978, column: 5, scope: !1613)
!1655 = !DILocation(line: 982, column: 19, scope: !1613)
!1656 = !DILocation(line: 982, column: 31, scope: !1613)
!1657 = !DILocation(line: 982, column: 41, scope: !1613)
!1658 = !DILocation(line: 982, column: 17, scope: !1613)
!1659 = !DILocation(line: 984, column: 9, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 984, column: 9)
!1661 = !DILocation(line: 984, column: 47, scope: !1660)
!1662 = !DILocation(line: 984, column: 9, scope: !1613)
!1663 = !DILocation(line: 990, column: 10, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 985, column: 31)
!1665 = !DILocation(line: 987, column: 38, scope: !1664)
!1666 = !DILocation(line: 987, column: 10, scope: !1664)
!1667 = !DILocation(line: 986, column: 18, scope: !1664)
!1668 = !DILocation(line: 991, column: 11, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 991, column: 10)
!1670 = !DILocation(line: 991, column: 10, scope: !1664)
!1671 = !DILocation(line: 992, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 991, column: 24)
!1673 = !DILocation(line: 999, column: 14, scope: !1664)
!1674 = !DILocation(line: 999, column: 27, scope: !1664)
!1675 = !DILocation(line: 999, column: 34, scope: !1664)
!1676 = !DILocation(line: 999, column: 6, scope: !1664)
!1677 = !DILocation(line: 1007, column: 12, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 999, column: 40)
!1679 = !DILocation(line: 1007, column: 24, scope: !1678)
!1680 = !DILocation(line: 1006, column: 11, scope: !1678)
!1681 = !DILocation(line: 1005, column: 14, scope: !1678)
!1682 = !DILocation(line: 1009, column: 11, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 1009, column: 11)
!1684 = !DILocation(line: 1009, column: 11, scope: !1678)
!1685 = !DILocation(line: 1010, column: 8, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 1009, column: 33)
!1687 = !DILocation(line: 1013, column: 21, scope: !1678)
!1688 = !DILocation(line: 1013, column: 19, scope: !1678)
!1689 = !DILocation(line: 1014, column: 7, scope: !1678)
!1690 = !DILocation(line: 1021, column: 12, scope: !1678)
!1691 = !DILocation(line: 1020, column: 7, scope: !1678)
!1692 = !DILocation(line: 1022, column: 7, scope: !1678)
!1693 = !DILocation(line: 1024, column: 5, scope: !1664)
!1694 = !DILocation(line: 1025, column: 5, scope: !1613)
!1695 = !DILocation(line: 1029, column: 5, scope: !1613)
!1696 = !DILocation(line: 1034, column: 12, scope: !1613)
!1697 = !DILocation(line: 1035, column: 5, scope: !1613)
!1698 = !DILocation(line: 1038, column: 3, scope: !1309)
!1699 = !DILocation(line: 1042, column: 3, scope: !1309)
!1700 = !DILocation(line: 1045, column: 10, scope: !1309)
!1701 = !DILocation(line: 1046, column: 3, scope: !1309)
!1702 = !DILocation(line: 1047, column: 2, scope: !1309)
!1703 = !DILabel(scope: !1288, name: "cleanup", file: !3, line: 1049)
!1704 = !DILocation(line: 1049, column: 1, scope: !1288)
!1705 = !DILocation(line: 1053, column: 6, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 1053, column: 6)
!1707 = !DILocation(line: 1053, column: 6, scope: !1288)
!1708 = !DILocation(line: 1054, column: 28, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 1053, column: 28)
!1710 = !DILocation(line: 1054, column: 3, scope: !1709)
!1711 = !DILocation(line: 1055, column: 2, scope: !1709)
!1712 = !DILocation(line: 1060, column: 28, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 1059, column: 7)
!1714 = !DILocation(line: 1060, column: 3, scope: !1713)
!1715 = !DILocation(line: 1060, column: 15, scope: !1713)
!1716 = !DILocation(line: 1060, column: 26, scope: !1713)
!1717 = !DILocation(line: 1063, column: 2, scope: !1288)
!1718 = !DILocation(line: 1064, column: 1, scope: !1288)
