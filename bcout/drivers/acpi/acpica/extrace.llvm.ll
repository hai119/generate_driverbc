; ModuleID = '../bcout/drivers/acpi/acpica/extrace.llvm.bc'
source_filename = "drivers/acpi/acpica/extrace.c"
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

@acpi_gbl_trace_method_object = internal global %union.acpi_operand_object* null, align 8, !dbg !0
@acpi_dbg_level = external dso_local global i32, align 4
@acpi_gbl_original_dbg_level = external dso_local global i32, align 4
@acpi_dbg_layer = external dso_local global i32, align 4
@acpi_gbl_original_dbg_layer = external dso_local global i32, align 4
@acpi_gbl_trace_dbg_level = external dso_local global i32, align 4
@acpi_gbl_trace_dbg_layer = external dso_local global i32, align 4
@acpi_gbl_trace_flags = external dso_local global i32, align 4
@acpi_gbl_trace_method_name = external dso_local global i8*, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ex_trace_point(i32 %type, i8 zeroext %begin, i8* %aml, i8* %pathname) #0 !dbg !792 {
entry:
  %type.addr = alloca i32, align 4
  %begin.addr = alloca i8, align 1
  %aml.addr = alloca i8*, align 8
  %pathname.addr = alloca i8*, align 8
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !797, metadata !DIExpression()), !dbg !798
  store i8 %begin, i8* %begin.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %begin.addr, metadata !799, metadata !DIExpression()), !dbg !800
  store i8* %aml, i8** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml.addr, metadata !801, metadata !DIExpression()), !dbg !802
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !803, metadata !DIExpression()), !dbg !804
  %0 = load i8*, i8** %pathname.addr, align 8, !dbg !805
  %tobool = icmp ne i8* %0, null, !dbg !805
  br i1 %tobool, label %if.then, label %if.else, !dbg !807

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !808

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !810
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ex_start_trace_method(%struct.acpi_namespace_node* %method_node, %union.acpi_operand_object* %obj_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !811 {
entry:
  %method_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %pathname = alloca i8*, align 8
  %enabled = alloca i8, align 1
  store %struct.acpi_namespace_node* %method_node, %struct.acpi_namespace_node** %method_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %method_node.addr, metadata !814, metadata !DIExpression()), !dbg !815
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !816, metadata !DIExpression()), !dbg !817
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata i8** %pathname, metadata !820, metadata !DIExpression()), !dbg !821
  store i8* null, i8** %pathname, align 8, !dbg !821
  call void @llvm.dbg.declare(metadata i8* %enabled, metadata !822, metadata !DIExpression()), !dbg !823
  store i8 0, i8* %enabled, align 1, !dbg !823
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node.addr, align 8, !dbg !824
  %tobool = icmp ne %struct.acpi_namespace_node* %0, null, !dbg !824
  br i1 %tobool, label %if.then, label %if.end, !dbg !826

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node.addr, align 8, !dbg !827
  %call = call i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node* %1, i8 zeroext 1) #3, !dbg !829
  store i8* %call, i8** %pathname, align 8, !dbg !830
  br label %if.end, !dbg !831

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %pathname, align 8, !dbg !832
  %call1 = call zeroext i8 @acpi_ex_interpreter_trace_enabled(i8* %2) #3, !dbg !833
  store i8 %call1, i8* %enabled, align 1, !dbg !834
  %3 = load i8, i8* %enabled, align 1, !dbg !835
  %conv = zext i8 %3 to i32, !dbg !835
  %tobool2 = icmp ne i32 %conv, 0, !dbg !835
  br i1 %tobool2, label %land.lhs.true, label %if.end11, !dbg !837

land.lhs.true:                                    ; preds = %if.end
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_trace_method_object, align 8, !dbg !838
  %tobool3 = icmp ne %union.acpi_operand_object* %4, null, !dbg !838
  br i1 %tobool3, label %if.end11, label %if.then4, !dbg !839

if.then4:                                         ; preds = %land.lhs.true
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !840
  store %union.acpi_operand_object* %5, %union.acpi_operand_object** @acpi_gbl_trace_method_object, align 8, !dbg !842
  %6 = load i32, i32* @acpi_dbg_level, align 4, !dbg !843
  store i32 %6, i32* @acpi_gbl_original_dbg_level, align 4, !dbg !844
  %7 = load i32, i32* @acpi_dbg_layer, align 4, !dbg !845
  store i32 %7, i32* @acpi_gbl_original_dbg_layer, align 4, !dbg !846
  store i32 16777055, i32* @acpi_dbg_level, align 4, !dbg !847
  store i32 511, i32* @acpi_dbg_layer, align 4, !dbg !848
  %8 = load i32, i32* @acpi_gbl_trace_dbg_level, align 4, !dbg !849
  %tobool5 = icmp ne i32 %8, 0, !dbg !849
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !851

if.then6:                                         ; preds = %if.then4
  %9 = load i32, i32* @acpi_gbl_trace_dbg_level, align 4, !dbg !852
  store i32 %9, i32* @acpi_dbg_level, align 4, !dbg !854
  br label %if.end7, !dbg !855

if.end7:                                          ; preds = %if.then6, %if.then4
  %10 = load i32, i32* @acpi_gbl_trace_dbg_layer, align 4, !dbg !856
  %tobool8 = icmp ne i32 %10, 0, !dbg !856
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !858

if.then9:                                         ; preds = %if.end7
  %11 = load i32, i32* @acpi_gbl_trace_dbg_layer, align 4, !dbg !859
  store i32 %11, i32* @acpi_dbg_layer, align 4, !dbg !861
  br label %if.end10, !dbg !862

if.end10:                                         ; preds = %if.then9, %if.end7
  br label %if.end11, !dbg !863

if.end11:                                         ; preds = %if.end10, %land.lhs.true, %if.end
  %12 = load i8, i8* %enabled, align 1, !dbg !864
  %tobool12 = icmp ne i8 %12, 0, !dbg !864
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !866

if.then13:                                        ; preds = %if.end11
  br label %if.end14, !dbg !867

if.end14:                                         ; preds = %if.then13, %if.end11
  %13 = load i8*, i8** %pathname, align 8, !dbg !869
  %tobool15 = icmp ne i8* %13, null, !dbg !869
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !871

if.then16:                                        ; preds = %if.end14
  %14 = load i8*, i8** %pathname, align 8, !dbg !872
  call void @acpi_os_free(i8* %14) #3, !dbg !872
  br label %if.end17, !dbg !874

if.end17:                                         ; preds = %if.then16, %if.end14
  ret void, !dbg !875
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node*, i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @acpi_ex_interpreter_trace_enabled(i8* %name) #0 !dbg !876 {
entry:
  %retval = alloca i8, align 1
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !879, metadata !DIExpression()), !dbg !880
  %0 = load i32, i32* @acpi_gbl_trace_flags, align 4, !dbg !881
  %and = and i32 %0, 4, !dbg !883
  %tobool = icmp ne i32 %and, 0, !dbg !883
  br i1 %tobool, label %if.end, label %if.then, !dbg !884

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !885
  br label %return, !dbg !885

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_trace_method_object, align 8, !dbg !887
  %tobool1 = icmp ne %union.acpi_operand_object* %1, null, !dbg !887
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !889

if.then2:                                         ; preds = %if.end
  store i8 1, i8* %retval, align 1, !dbg !890
  br label %return, !dbg !890

if.end3:                                          ; preds = %if.end
  %2 = load i8*, i8** %name.addr, align 8, !dbg !892
  %tobool4 = icmp ne i8* %2, null, !dbg !892
  br i1 %tobool4, label %land.lhs.true, label %if.end9, !dbg !894

land.lhs.true:                                    ; preds = %if.end3
  %3 = load i8*, i8** @acpi_gbl_trace_method_name, align 8, !dbg !895
  %tobool5 = icmp ne i8* %3, null, !dbg !895
  br i1 %tobool5, label %land.lhs.true6, label %if.end9, !dbg !896

land.lhs.true6:                                   ; preds = %land.lhs.true
  %4 = load i8*, i8** @acpi_gbl_trace_method_name, align 8, !dbg !897
  %5 = load i8*, i8** %name.addr, align 8, !dbg !898
  %call = call i32 @strcmp(i8* %4, i8* %5) #3, !dbg !899
  %tobool7 = icmp ne i32 %call, 0, !dbg !899
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !900

if.then8:                                         ; preds = %land.lhs.true6
  store i8 0, i8* %retval, align 1, !dbg !901
  br label %return, !dbg !901

if.end9:                                          ; preds = %land.lhs.true6, %land.lhs.true, %if.end3
  %6 = load i32, i32* @acpi_gbl_trace_flags, align 4, !dbg !903
  %and10 = and i32 %6, 2, !dbg !905
  %tobool11 = icmp ne i32 %and10, 0, !dbg !905
  br i1 %tobool11, label %land.lhs.true12, label %if.end15, !dbg !906

land.lhs.true12:                                  ; preds = %if.end9
  %7 = load i8*, i8** @acpi_gbl_trace_method_name, align 8, !dbg !907
  %tobool13 = icmp ne i8* %7, null, !dbg !907
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !908

if.then14:                                        ; preds = %land.lhs.true12
  store i8 0, i8* %retval, align 1, !dbg !909
  br label %return, !dbg !909

if.end15:                                         ; preds = %land.lhs.true12, %if.end9
  store i8 1, i8* %retval, align 1, !dbg !911
  br label %return, !dbg !911

return:                                           ; preds = %if.end15, %if.then14, %if.then8, %if.then2, %if.then
  %8 = load i8, i8* %retval, align 1, !dbg !912
  ret i8 %8, !dbg !912
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !913 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !917, metadata !DIExpression()), !dbg !918
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !919
  call void @kfree(i8* %0) #3, !dbg !920
  ret void, !dbg !921
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ex_stop_trace_method(%struct.acpi_namespace_node* %method_node, %union.acpi_operand_object* %obj_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !922 {
entry:
  %method_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %pathname = alloca i8*, align 8
  %enabled = alloca i8, align 1
  store %struct.acpi_namespace_node* %method_node, %struct.acpi_namespace_node** %method_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %method_node.addr, metadata !923, metadata !DIExpression()), !dbg !924
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !925, metadata !DIExpression()), !dbg !926
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !927, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata i8** %pathname, metadata !929, metadata !DIExpression()), !dbg !930
  store i8* null, i8** %pathname, align 8, !dbg !930
  call void @llvm.dbg.declare(metadata i8* %enabled, metadata !931, metadata !DIExpression()), !dbg !932
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node.addr, align 8, !dbg !933
  %tobool = icmp ne %struct.acpi_namespace_node* %0, null, !dbg !933
  br i1 %tobool, label %if.then, label %if.end, !dbg !935

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node.addr, align 8, !dbg !936
  %call = call i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node* %1, i8 zeroext 1) #3, !dbg !938
  store i8* %call, i8** %pathname, align 8, !dbg !939
  br label %if.end, !dbg !940

if.end:                                           ; preds = %if.then, %entry
  %call1 = call zeroext i8 @acpi_ex_interpreter_trace_enabled(i8* null) #3, !dbg !941
  store i8 %call1, i8* %enabled, align 1, !dbg !942
  %2 = load i8, i8* %enabled, align 1, !dbg !943
  %tobool2 = icmp ne i8 %2, 0, !dbg !943
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !945

if.then3:                                         ; preds = %if.end
  br label %if.end4, !dbg !946

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_trace_method_object, align 8, !dbg !948
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !950
  %cmp = icmp eq %union.acpi_operand_object* %3, %4, !dbg !951
  br i1 %cmp, label %if.then5, label %if.end9, !dbg !952

if.then5:                                         ; preds = %if.end4
  %5 = load i32, i32* @acpi_gbl_trace_flags, align 4, !dbg !953
  %and = and i32 %5, 2, !dbg !956
  %tobool6 = icmp ne i32 %and, 0, !dbg !956
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !957

if.then7:                                         ; preds = %if.then5
  store i8* null, i8** @acpi_gbl_trace_method_name, align 8, !dbg !958
  br label %if.end8, !dbg !960

if.end8:                                          ; preds = %if.then7, %if.then5
  %6 = load i32, i32* @acpi_gbl_original_dbg_level, align 4, !dbg !961
  store i32 %6, i32* @acpi_dbg_level, align 4, !dbg !962
  %7 = load i32, i32* @acpi_gbl_original_dbg_layer, align 4, !dbg !963
  store i32 %7, i32* @acpi_dbg_layer, align 4, !dbg !964
  store %union.acpi_operand_object* null, %union.acpi_operand_object** @acpi_gbl_trace_method_object, align 8, !dbg !965
  br label %if.end9, !dbg !966

if.end9:                                          ; preds = %if.end8, %if.end4
  %8 = load i8*, i8** %pathname, align 8, !dbg !967
  %tobool10 = icmp ne i8* %8, null, !dbg !967
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !969

if.then11:                                        ; preds = %if.end9
  %9 = load i8*, i8** %pathname, align 8, !dbg !970
  call void @acpi_os_free(i8* %9) #3, !dbg !970
  br label %if.end12, !dbg !972

if.end12:                                         ; preds = %if.then11, %if.end9
  ret void, !dbg !973
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ex_start_trace_opcode(%union.acpi_parse_object* %op, %struct.acpi_walk_state* %walk_state) #0 !dbg !974 {
entry:
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !977, metadata !DIExpression()), !dbg !978
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !979, metadata !DIExpression()), !dbg !980
  %call = call zeroext i8 @acpi_ex_interpreter_trace_enabled(i8* null) #3, !dbg !981
  %conv = zext i8 %call to i32, !dbg !981
  %tobool = icmp ne i32 %conv, 0, !dbg !981
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !983

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, i32* @acpi_gbl_trace_flags, align 4, !dbg !984
  %and = and i32 %0, 1, !dbg !985
  %tobool1 = icmp ne i32 %and, 0, !dbg !985
  br i1 %tobool1, label %if.then, label %if.end, !dbg !986

if.then:                                          ; preds = %land.lhs.true
  br label %if.end, !dbg !987

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !989
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ex_stop_trace_opcode(%union.acpi_parse_object* %op, %struct.acpi_walk_state* %walk_state) #0 !dbg !990 {
entry:
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !991, metadata !DIExpression()), !dbg !992
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !993, metadata !DIExpression()), !dbg !994
  %call = call zeroext i8 @acpi_ex_interpreter_trace_enabled(i8* null) #3, !dbg !995
  %conv = zext i8 %call to i32, !dbg !995
  %tobool = icmp ne i32 %conv, 0, !dbg !995
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !997

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, i32* @acpi_gbl_trace_flags, align 4, !dbg !998
  %and = and i32 %0, 1, !dbg !999
  %tobool1 = icmp ne i32 %and, 0, !dbg !999
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1000

if.then:                                          ; preds = %land.lhs.true
  br label %if.end, !dbg !1001

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !1003
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!787, !788, !789, !790}
!llvm.ident = !{!791}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_gbl_trace_method_object", scope: !2, file: !3, line: 18, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/extrace.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 1244, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_TRACE_AML_METHOD", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_TRACE_AML_OPCODE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_TRACE_AML_REGION", value: 2, isUnsigned: true)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !7)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !{!0}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !20, line: 367, size: 576, elements: !21)
!20 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !36, !52, !64, !100, !114, !124, !438, !455, !470, !483, !561, !573, !587, !597, !615, !637, !656, !675, !694, !707, !733, !750, !763, !777, !786}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !19, file: !20, line: 368, baseType: !23, size: 128)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !20, line: 73, size: 128, elements: !24)
!24 = !{!25, !26, !30, !31, !35}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !23, file: !20, line: 74, baseType: !18, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !23, file: !20, line: 74, baseType: !27, size: 8, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !29)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !23, file: !20, line: 74, baseType: !27, size: 8, offset: 72)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !23, file: !20, line: 74, baseType: !32, size: 16, offset: 80)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !34)
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
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !14, line: 23, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !51)
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
!63 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !53, file: !20, line: 94, baseType: !13, size: 32, offset: 192)
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
!74 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !65, file: !20, line: 98, baseType: !13, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !65, file: !20, line: 99, baseType: !13, size: 32, offset: 224)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !65, file: !20, line: 100, baseType: !73, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !65, file: !20, line: 101, baseType: !78, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !80, line: 133, size: 384, elements: !81)
!80 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !85, !86, !95, !96, !97, !98}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !79, file: !80, line: 134, baseType: !18, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !80, line: 135, baseType: !27, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !80, line: 136, baseType: !27, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !80, line: 137, baseType: !32, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !79, file: !80, line: 138, baseType: !87, size: 32, offset: 96)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !88, line: 327, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !87, file: !88, line: 328, baseType: !13, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !87, file: !88, line: 329, baseType: !92, size: 32)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 4)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !79, file: !80, line: 139, baseType: !78, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !79, file: !80, line: 140, baseType: !78, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !79, file: !80, line: 141, baseType: !78, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !79, file: !80, line: 142, baseType: !99, size: 16, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !19, file: !20, line: 372, baseType: !101, size: 384)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !20, line: 104, size: 384, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !111, !112, !113}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !101, file: !20, line: 105, baseType: !18, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !101, file: !20, line: 105, baseType: !27, size: 8, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !20, line: 105, baseType: !27, size: 8, offset: 72)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !101, file: !20, line: 105, baseType: !32, size: 16, offset: 80)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !20, line: 105, baseType: !27, size: 8, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !101, file: !20, line: 105, baseType: !78, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !101, file: !20, line: 106, baseType: !110, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !101, file: !20, line: 107, baseType: !73, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !101, file: !20, line: 108, baseType: !13, size: 32, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !101, file: !20, line: 109, baseType: !13, size: 32, offset: 352)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !19, file: !20, line: 373, baseType: !115, size: 192)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !20, line: 118, size: 192, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !115, file: !20, line: 119, baseType: !18, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !115, file: !20, line: 119, baseType: !27, size: 8, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !20, line: 119, baseType: !27, size: 8, offset: 72)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !115, file: !20, line: 119, baseType: !32, size: 16, offset: 80)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !20, line: 119, baseType: !27, size: 8, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !115, file: !20, line: 119, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !19, file: !20, line: 374, baseType: !125, size: 448)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !20, line: 143, size: 448, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !435, !436, !437}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !125, file: !20, line: 144, baseType: !18, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !20, line: 144, baseType: !27, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !20, line: 144, baseType: !27, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !125, file: !20, line: 144, baseType: !32, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !20, line: 144, baseType: !27, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !125, file: !20, line: 144, baseType: !27, size: 8, offset: 104)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !125, file: !20, line: 145, baseType: !27, size: 8, offset: 112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !125, file: !20, line: 146, baseType: !27, size: 8, offset: 120)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !125, file: !20, line: 147, baseType: !18, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !125, file: !20, line: 148, baseType: !18, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !125, file: !20, line: 149, baseType: !73, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !125, file: !20, line: 153, baseType: !139, size: 64, offset: 320)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !20, line: 150, size: 64, elements: !140)
!140 = !{!141, !434}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !139, file: !20, line: 151, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !80, line: 248, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !13)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !149, line: 37, size: 9024, elements: !150)
!149 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !380, !381, !382, !383, !384, !388, !390, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !417, !418, !419, !420, !421, !422, !423, !424, !426, !432}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !149, line: 38, baseType: !147, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !148, file: !149, line: 39, baseType: !27, size: 8, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !148, file: !149, line: 40, baseType: !27, size: 8, offset: 72)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !148, file: !149, line: 41, baseType: !32, size: 16, offset: 80)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !148, file: !149, line: 42, baseType: !27, size: 8, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !148, file: !149, line: 43, baseType: !27, size: 8, offset: 104)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !148, file: !149, line: 44, baseType: !27, size: 8, offset: 112)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !148, file: !149, line: 45, baseType: !99, size: 16, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !148, file: !149, line: 46, baseType: !27, size: 8, offset: 144)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !148, file: !149, line: 47, baseType: !27, size: 8, offset: 152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !148, file: !149, line: 48, baseType: !27, size: 8, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !148, file: !149, line: 49, baseType: !27, size: 8, offset: 168)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !148, file: !149, line: 50, baseType: !27, size: 8, offset: 176)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !148, file: !149, line: 51, baseType: !27, size: 8, offset: 184)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !148, file: !149, line: 52, baseType: !27, size: 8, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !148, file: !149, line: 53, baseType: !27, size: 8, offset: 200)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !148, file: !149, line: 54, baseType: !73, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !148, file: !149, line: 55, baseType: !13, size: 32, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !148, file: !149, line: 56, baseType: !13, size: 32, offset: 352)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !148, file: !149, line: 57, baseType: !13, size: 32, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !148, file: !149, line: 58, baseType: !13, size: 32, offset: 416)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !148, file: !149, line: 60, baseType: !173, size: 640, offset: 448)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !80, line: 893, size: 640, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !261, !262, !378, !379}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !173, file: !80, line: 894, baseType: !73, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !173, file: !80, line: 895, baseType: !73, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !173, file: !80, line: 896, baseType: !73, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !173, file: !80, line: 897, baseType: !73, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !173, file: !80, line: 898, baseType: !73, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !173, file: !80, line: 899, baseType: !181, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !80, line: 875, size: 1600, elements: !183)
!183 = !{!184, !204, !220}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !182, file: !80, line: 876, baseType: !185, size: 448)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !80, line: 828, size: 448, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !203}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !185, file: !80, line: 829, baseType: !181, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !185, file: !80, line: 829, baseType: !27, size: 8, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !80, line: 829, baseType: !27, size: 8, offset: 72)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !185, file: !80, line: 829, baseType: !32, size: 16, offset: 80)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !185, file: !80, line: 829, baseType: !73, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !80, line: 829, baseType: !181, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !185, file: !80, line: 829, baseType: !78, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !185, file: !80, line: 829, baseType: !195, size: 64, offset: 320)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !80, line: 716, size: 64, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !195, file: !80, line: 717, baseType: !49, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !195, file: !80, line: 718, baseType: !13, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !195, file: !80, line: 719, baseType: !61, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !195, file: !80, line: 720, baseType: !73, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !80, line: 721, baseType: !61, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !195, file: !80, line: 722, baseType: !181, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !185, file: !80, line: 829, baseType: !27, size: 8, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !182, file: !80, line: 877, baseType: !205, size: 640)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !80, line: 835, size: 640, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !205, file: !80, line: 836, baseType: !181, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !205, file: !80, line: 836, baseType: !27, size: 8, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !205, file: !80, line: 836, baseType: !27, size: 8, offset: 72)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !205, file: !80, line: 836, baseType: !32, size: 16, offset: 80)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !205, file: !80, line: 836, baseType: !73, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !80, line: 836, baseType: !181, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !205, file: !80, line: 836, baseType: !78, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !205, file: !80, line: 836, baseType: !195, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !205, file: !80, line: 836, baseType: !27, size: 8, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !205, file: !80, line: 836, baseType: !61, size: 64, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !205, file: !80, line: 837, baseType: !73, size: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !205, file: !80, line: 838, baseType: !13, size: 32, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !80, line: 839, baseType: !13, size: 32, offset: 608)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !182, file: !80, line: 878, baseType: !221, size: 1600)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !80, line: 846, size: 1600, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !221, file: !80, line: 847, baseType: !181, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !221, file: !80, line: 847, baseType: !27, size: 8, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !221, file: !80, line: 847, baseType: !27, size: 8, offset: 72)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !221, file: !80, line: 847, baseType: !32, size: 16, offset: 80)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !221, file: !80, line: 847, baseType: !73, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !80, line: 847, baseType: !181, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !221, file: !80, line: 847, baseType: !78, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !221, file: !80, line: 847, baseType: !195, size: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !221, file: !80, line: 847, baseType: !27, size: 8, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !221, file: !80, line: 847, baseType: !181, size: 64, offset: 448)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !221, file: !80, line: 848, baseType: !181, size: 64, offset: 512)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !221, file: !80, line: 849, baseType: !61, size: 64, offset: 576)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !221, file: !80, line: 850, baseType: !27, size: 8, offset: 640)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !221, file: !80, line: 851, baseType: !61, size: 64, offset: 704)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !221, file: !80, line: 852, baseType: !61, size: 64, offset: 768)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !221, file: !80, line: 853, baseType: !61, size: 64, offset: 832)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !221, file: !80, line: 854, baseType: !92, size: 32, offset: 896)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !221, file: !80, line: 855, baseType: !13, size: 32, offset: 928)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !221, file: !80, line: 856, baseType: !13, size: 32, offset: 960)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !221, file: !80, line: 857, baseType: !13, size: 32, offset: 992)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !221, file: !80, line: 858, baseType: !13, size: 32, offset: 1024)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !221, file: !80, line: 859, baseType: !13, size: 32, offset: 1056)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !221, file: !80, line: 860, baseType: !13, size: 32, offset: 1088)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !221, file: !80, line: 861, baseType: !13, size: 32, offset: 1120)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !221, file: !80, line: 862, baseType: !13, size: 32, offset: 1152)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !221, file: !80, line: 863, baseType: !13, size: 32, offset: 1184)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !221, file: !80, line: 864, baseType: !13, size: 32, offset: 1216)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !221, file: !80, line: 865, baseType: !13, size: 32, offset: 1248)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !221, file: !80, line: 866, baseType: !13, size: 32, offset: 1280)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !221, file: !80, line: 867, baseType: !13, size: 32, offset: 1312)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !221, file: !80, line: 868, baseType: !32, size: 16, offset: 1344)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !221, file: !80, line: 869, baseType: !27, size: 8, offset: 1360)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !221, file: !80, line: 870, baseType: !27, size: 8, offset: 1368)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !221, file: !80, line: 871, baseType: !27, size: 8, offset: 1376)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !221, file: !80, line: 872, baseType: !258, size: 160, offset: 1384)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 160, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 20)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !173, file: !80, line: 900, baseType: !78, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !173, file: !80, line: 901, baseType: !263, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !80, line: 663, size: 640, elements: !265)
!265 = !{!266, !274, !287, !296, !305, !318, !332, !344, !356}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !264, file: !80, line: 664, baseType: !267, size: 128)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !80, line: 567, size: 128, elements: !268)
!268 = !{!269, !270, !271, !272, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !267, file: !80, line: 568, baseType: !123, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !267, file: !80, line: 568, baseType: !27, size: 8, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !267, file: !80, line: 568, baseType: !27, size: 8, offset: 72)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !267, file: !80, line: 568, baseType: !32, size: 16, offset: 80)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !267, file: !80, line: 568, baseType: !32, size: 16, offset: 96)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !264, file: !80, line: 665, baseType: !275, size: 384)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !80, line: 593, size: 384, elements: !276)
!276 = !{!277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !80, line: 594, baseType: !123, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !275, file: !80, line: 594, baseType: !27, size: 8, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !275, file: !80, line: 594, baseType: !27, size: 8, offset: 72)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !275, file: !80, line: 594, baseType: !32, size: 16, offset: 80)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !275, file: !80, line: 594, baseType: !32, size: 16, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !275, file: !80, line: 594, baseType: !32, size: 16, offset: 112)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !275, file: !80, line: 595, baseType: !181, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !275, file: !80, line: 596, baseType: !73, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !275, file: !80, line: 597, baseType: !73, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !275, file: !80, line: 598, baseType: !49, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !264, file: !80, line: 666, baseType: !288, size: 192)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !80, line: 573, size: 192, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !80, line: 574, baseType: !123, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !80, line: 574, baseType: !27, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !80, line: 574, baseType: !27, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !80, line: 574, baseType: !32, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !80, line: 574, baseType: !32, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !288, file: !80, line: 574, baseType: !18, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !264, file: !80, line: 667, baseType: !297, size: 192)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !80, line: 604, size: 192, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !297, file: !80, line: 605, baseType: !123, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !297, file: !80, line: 605, baseType: !27, size: 8, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !80, line: 605, baseType: !27, size: 8, offset: 72)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !297, file: !80, line: 605, baseType: !32, size: 16, offset: 80)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !297, file: !80, line: 605, baseType: !32, size: 16, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !297, file: !80, line: 605, baseType: !78, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !264, file: !80, line: 668, baseType: !306, size: 448)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !80, line: 608, size: 448, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315, !316, !317}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !80, line: 609, baseType: !123, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !306, file: !80, line: 609, baseType: !27, size: 8, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !80, line: 609, baseType: !27, size: 8, offset: 72)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !306, file: !80, line: 609, baseType: !32, size: 16, offset: 80)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !306, file: !80, line: 609, baseType: !32, size: 16, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !306, file: !80, line: 609, baseType: !13, size: 32, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !306, file: !80, line: 610, baseType: !181, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !306, file: !80, line: 611, baseType: !73, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !306, file: !80, line: 612, baseType: !73, size: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !306, file: !80, line: 613, baseType: !13, size: 32, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !264, file: !80, line: 669, baseType: !319, size: 512)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !80, line: 580, size: 512, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !80, line: 581, baseType: !123, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !80, line: 581, baseType: !27, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !80, line: 581, baseType: !27, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !80, line: 581, baseType: !32, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !80, line: 581, baseType: !32, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !319, file: !80, line: 581, baseType: !13, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !319, file: !80, line: 582, baseType: !18, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !319, file: !80, line: 583, baseType: !18, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !319, file: !80, line: 584, baseType: !147, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !319, file: !80, line: 585, baseType: !123, size: 64, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !319, file: !80, line: 586, baseType: !13, size: 32, offset: 448)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !264, file: !80, line: 670, baseType: !333, size: 320)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !80, line: 620, size: 320, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !80, line: 621, baseType: !123, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !333, file: !80, line: 621, baseType: !27, size: 8, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !80, line: 621, baseType: !27, size: 8, offset: 72)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !80, line: 621, baseType: !32, size: 16, offset: 80)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !333, file: !80, line: 621, baseType: !32, size: 16, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !333, file: !80, line: 621, baseType: !27, size: 8, offset: 112)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !333, file: !80, line: 622, baseType: !147, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !333, file: !80, line: 623, baseType: !18, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !333, file: !80, line: 624, baseType: !49, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !264, file: !80, line: 671, baseType: !345, size: 640)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !80, line: 631, size: 640, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !80, line: 632, baseType: !123, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !345, file: !80, line: 632, baseType: !27, size: 8, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !80, line: 632, baseType: !27, size: 8, offset: 72)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !345, file: !80, line: 632, baseType: !32, size: 16, offset: 80)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !345, file: !80, line: 632, baseType: !32, size: 16, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !345, file: !80, line: 633, baseType: !353, size: 512, offset: 128)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 8)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !264, file: !80, line: 672, baseType: !357, size: 320)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !80, line: 654, size: 320, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364, !365, !366, !367}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !80, line: 655, baseType: !123, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !357, file: !80, line: 655, baseType: !27, size: 8, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !80, line: 655, baseType: !27, size: 8, offset: 72)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !357, file: !80, line: 655, baseType: !32, size: 16, offset: 80)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !357, file: !80, line: 655, baseType: !32, size: 16, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !357, file: !80, line: 655, baseType: !27, size: 8, offset: 112)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !357, file: !80, line: 656, baseType: !78, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !357, file: !80, line: 657, baseType: !18, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !357, file: !80, line: 658, baseType: !368, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !80, line: 645, size: 128, elements: !370)
!370 = !{!371, !377}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !369, file: !80, line: 646, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1052, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !376, !13, !123}
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !123)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !369, file: !80, line: 647, baseType: !123, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !173, file: !80, line: 902, baseType: !181, size: 64, offset: 512)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !173, file: !80, line: 903, baseType: !13, size: 32, offset: 576)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !148, file: !149, line: 61, baseType: !13, size: 32, offset: 1088)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !148, file: !149, line: 62, baseType: !13, size: 32, offset: 1120)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !148, file: !149, line: 63, baseType: !32, size: 16, offset: 1152)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !148, file: !149, line: 64, baseType: !27, size: 8, offset: 1168)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !148, file: !149, line: 66, baseType: !385, size: 2688, offset: 1216)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 2688, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 7)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !148, file: !149, line: 67, baseType: !389, size: 3072, offset: 3904)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 3072, elements: !354)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !148, file: !149, line: 68, baseType: !391, size: 576, offset: 6976)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 576, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 9)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !148, file: !149, line: 69, baseType: !110, size: 64, offset: 7552)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !148, file: !149, line: 71, baseType: !73, size: 64, offset: 7616)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !148, file: !149, line: 72, baseType: !110, size: 64, offset: 7680)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !148, file: !149, line: 73, baseType: !263, size: 64, offset: 7744)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !148, file: !149, line: 74, baseType: !78, size: 64, offset: 7808)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !148, file: !149, line: 75, baseType: !18, size: 64, offset: 7872)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !148, file: !149, line: 76, baseType: !78, size: 64, offset: 7936)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !148, file: !149, line: 77, baseType: !181, size: 64, offset: 8000)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !148, file: !149, line: 78, baseType: !18, size: 64, offset: 8064)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !148, file: !149, line: 79, baseType: !78, size: 64, offset: 8128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !148, file: !149, line: 80, baseType: !61, size: 64, offset: 8192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !148, file: !149, line: 81, baseType: !181, size: 64, offset: 8256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !148, file: !149, line: 82, baseType: !407, size: 64, offset: 8320)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !80, line: 702, size: 128, elements: !410)
!410 = !{!411, !412, !413, !414, !415, !416}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !409, file: !80, line: 706, baseType: !13, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !409, file: !80, line: 707, baseType: !13, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !409, file: !80, line: 708, baseType: !32, size: 16, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !409, file: !80, line: 709, baseType: !27, size: 8, offset: 80)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !409, file: !80, line: 710, baseType: !27, size: 8, offset: 88)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !409, file: !80, line: 711, baseType: !27, size: 8, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !148, file: !149, line: 83, baseType: !181, size: 64, offset: 8384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !148, file: !149, line: 84, baseType: !18, size: 64, offset: 8448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !148, file: !149, line: 85, baseType: !263, size: 64, offset: 8512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !148, file: !149, line: 86, baseType: !18, size: 64, offset: 8576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !148, file: !149, line: 87, baseType: !263, size: 64, offset: 8640)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !148, file: !149, line: 88, baseType: !181, size: 64, offset: 8704)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !148, file: !149, line: 89, baseType: !181, size: 64, offset: 8768)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !148, file: !149, line: 90, baseType: !425, size: 64, offset: 8832)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !148, file: !149, line: 91, baseType: !427, size: 64, offset: 8896)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !80, line: 637, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!146, !147, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !148, file: !149, line: 92, baseType: !433, size: 64, offset: 8960)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !80, line: 641, baseType: !143)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !139, file: !20, line: 152, baseType: !18, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !125, file: !20, line: 155, baseType: !13, size: 32, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !125, file: !20, line: 156, baseType: !99, size: 16, offset: 416)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !125, file: !20, line: 157, baseType: !27, size: 8, offset: 432)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !19, file: !20, line: 375, baseType: !439, size: 576)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !20, line: 122, size: 576, elements: !440)
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !439, file: !20, line: 123, baseType: !18, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !439, file: !20, line: 123, baseType: !27, size: 8, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !439, file: !20, line: 123, baseType: !27, size: 8, offset: 72)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !439, file: !20, line: 123, baseType: !32, size: 16, offset: 80)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !439, file: !20, line: 123, baseType: !27, size: 8, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !439, file: !20, line: 123, baseType: !27, size: 8, offset: 104)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !439, file: !20, line: 124, baseType: !32, size: 16, offset: 112)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !439, file: !20, line: 125, baseType: !123, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !439, file: !20, line: 126, baseType: !49, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !439, file: !20, line: 127, baseType: !425, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !439, file: !20, line: 128, baseType: !18, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !20, line: 129, baseType: !18, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !439, file: !20, line: 130, baseType: !78, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !439, file: !20, line: 131, baseType: !27, size: 8, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !19, file: !20, line: 376, baseType: !456, size: 448)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !20, line: 134, size: 448, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !469}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !456, file: !20, line: 135, baseType: !18, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !456, file: !20, line: 135, baseType: !27, size: 8, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !456, file: !20, line: 135, baseType: !27, size: 8, offset: 72)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !456, file: !20, line: 135, baseType: !32, size: 16, offset: 80)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !20, line: 135, baseType: !27, size: 8, offset: 96)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !456, file: !20, line: 135, baseType: !27, size: 8, offset: 104)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !456, file: !20, line: 136, baseType: !78, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !456, file: !20, line: 137, baseType: !18, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !20, line: 138, baseType: !18, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !456, file: !20, line: 139, baseType: !468, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !49)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !456, file: !20, line: 140, baseType: !13, size: 32, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !19, file: !20, line: 377, baseType: !471, size: 320)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !20, line: 184, size: 320, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !482}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !471, file: !20, line: 185, baseType: !18, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !471, file: !20, line: 185, baseType: !27, size: 8, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !471, file: !20, line: 185, baseType: !27, size: 8, offset: 72)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !471, file: !20, line: 185, baseType: !32, size: 16, offset: 80)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !471, file: !20, line: 185, baseType: !27, size: 8, offset: 96)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !471, file: !20, line: 185, baseType: !479, size: 128, offset: 128)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 2)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !471, file: !20, line: 185, baseType: !18, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !19, file: !20, line: 378, baseType: !484, size: 384)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !20, line: 187, size: 384, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !492, !493}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !484, file: !20, line: 188, baseType: !18, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !484, file: !20, line: 188, baseType: !27, size: 8, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !484, file: !20, line: 188, baseType: !27, size: 8, offset: 72)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !484, file: !20, line: 188, baseType: !32, size: 16, offset: 80)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !20, line: 188, baseType: !27, size: 8, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !484, file: !20, line: 189, baseType: !479, size: 128, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !484, file: !20, line: 189, baseType: !18, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !484, file: !20, line: 189, baseType: !494, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !80, line: 480, size: 576, elements: !496)
!496 = !{!497, !498, !499, !500, !508, !523, !555, !556, !557, !558, !559, !560}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !495, file: !80, line: 481, baseType: !78, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !495, file: !80, line: 482, baseType: !494, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !80, line: 483, baseType: !494, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !495, file: !80, line: 484, baseType: !501, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !80, line: 497, size: 256, elements: !503)
!503 = !{!504, !505, !506, !507}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !502, file: !80, line: 498, baseType: !501, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !502, file: !80, line: 499, baseType: !501, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !502, file: !80, line: 500, baseType: !494, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !502, file: !80, line: 501, baseType: !13, size: 32, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !495, file: !80, line: 485, baseType: !509, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !80, line: 466, size: 320, elements: !511)
!511 = !{!512, !517, !518, !519, !520, !521, !522}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !510, file: !80, line: 467, baseType: !513, size: 128)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !80, line: 459, size: 128, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !513, file: !80, line: 460, baseType: !27, size: 8)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !513, file: !80, line: 461, baseType: !49, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !510, file: !80, line: 468, baseType: !513, size: 128, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !510, file: !80, line: 469, baseType: !32, size: 16, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !510, file: !80, line: 470, baseType: !27, size: 8, offset: 272)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !510, file: !80, line: 471, baseType: !27, size: 8, offset: 280)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !510, file: !80, line: 472, baseType: !27, size: 8, offset: 288)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !510, file: !80, line: 473, baseType: !27, size: 8, offset: 296)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !495, file: !80, line: 486, baseType: !524, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !80, line: 448, size: 192, elements: !526)
!526 = !{!527, !550, !551, !552, !553, !554}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !525, file: !80, line: 449, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !80, line: 438, size: 64, elements: !529)
!529 = !{!530, !531, !544}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !528, file: !80, line: 439, baseType: !78, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !528, file: !80, line: 440, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !80, line: 419, size: 256, elements: !534)
!534 = !{!535, !540, !541, !542, !543}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !533, file: !80, line: 420, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1049, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!13, !376, !13, !123}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !533, file: !80, line: 421, baseType: !123, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !533, file: !80, line: 422, baseType: !78, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !533, file: !80, line: 423, baseType: !27, size: 8, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !533, file: !80, line: 424, baseType: !27, size: 8, offset: 200)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !528, file: !80, line: 441, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !80, line: 429, size: 128, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !546, file: !80, line: 430, baseType: !78, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !546, file: !80, line: 431, baseType: !545, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !525, file: !80, line: 450, baseType: !509, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !525, file: !80, line: 451, baseType: !27, size: 8, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !525, file: !80, line: 452, baseType: !27, size: 8, offset: 136)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !525, file: !80, line: 453, baseType: !27, size: 8, offset: 144)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !525, file: !80, line: 454, baseType: !27, size: 8, offset: 152)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !495, file: !80, line: 487, baseType: !49, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !495, file: !80, line: 488, baseType: !13, size: 32, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !495, file: !80, line: 489, baseType: !32, size: 16, offset: 480)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !495, file: !80, line: 490, baseType: !32, size: 16, offset: 496)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !495, file: !80, line: 491, baseType: !27, size: 8, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !495, file: !80, line: 492, baseType: !27, size: 8, offset: 520)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !19, file: !20, line: 379, baseType: !562, size: 384)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !20, line: 192, size: 384, elements: !563)
!563 = !{!564, !565, !566, !567, !568, !569, !570, !571, !572}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !562, file: !20, line: 193, baseType: !18, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !562, file: !20, line: 193, baseType: !27, size: 8, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !562, file: !20, line: 193, baseType: !27, size: 8, offset: 72)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !562, file: !20, line: 193, baseType: !32, size: 16, offset: 80)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !562, file: !20, line: 193, baseType: !27, size: 8, offset: 96)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !562, file: !20, line: 193, baseType: !479, size: 128, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !562, file: !20, line: 193, baseType: !18, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !562, file: !20, line: 193, baseType: !13, size: 32, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !562, file: !20, line: 194, baseType: !13, size: 32, offset: 352)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !19, file: !20, line: 380, baseType: !574, size: 384)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !20, line: 197, size: 384, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !574, file: !20, line: 198, baseType: !18, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !574, file: !20, line: 198, baseType: !27, size: 8, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !574, file: !20, line: 198, baseType: !27, size: 8, offset: 72)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !574, file: !20, line: 198, baseType: !32, size: 16, offset: 80)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !20, line: 198, baseType: !27, size: 8, offset: 96)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !574, file: !20, line: 200, baseType: !27, size: 8, offset: 104)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !574, file: !20, line: 201, baseType: !27, size: 8, offset: 112)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !574, file: !20, line: 202, baseType: !479, size: 128, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !574, file: !20, line: 202, baseType: !18, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !574, file: !20, line: 202, baseType: !586, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !49)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !19, file: !20, line: 381, baseType: !588, size: 320)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !20, line: 205, size: 320, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !588, file: !20, line: 206, baseType: !18, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !20, line: 206, baseType: !27, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !20, line: 206, baseType: !27, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !588, file: !20, line: 206, baseType: !32, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !20, line: 206, baseType: !27, size: 8, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !588, file: !20, line: 206, baseType: !479, size: 128, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !588, file: !20, line: 206, baseType: !18, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !19, file: !20, line: 382, baseType: !598, size: 384)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !20, line: 233, size: 384, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !598, file: !20, line: 234, baseType: !18, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !598, file: !20, line: 234, baseType: !27, size: 8, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !20, line: 234, baseType: !27, size: 8, offset: 72)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !598, file: !20, line: 234, baseType: !32, size: 16, offset: 80)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !20, line: 234, baseType: !27, size: 8, offset: 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !598, file: !20, line: 234, baseType: !27, size: 8, offset: 104)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !598, file: !20, line: 234, baseType: !27, size: 8, offset: 112)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !598, file: !20, line: 234, baseType: !27, size: 8, offset: 120)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !598, file: !20, line: 234, baseType: !78, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !598, file: !20, line: 234, baseType: !13, size: 32, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !598, file: !20, line: 234, baseType: !13, size: 32, offset: 224)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !598, file: !20, line: 234, baseType: !13, size: 32, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !598, file: !20, line: 234, baseType: !27, size: 8, offset: 288)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !598, file: !20, line: 234, baseType: !27, size: 8, offset: 296)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !598, file: !20, line: 234, baseType: !18, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !19, file: !20, line: 383, baseType: !616, size: 576)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !20, line: 237, size: 576, elements: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !616, file: !20, line: 238, baseType: !18, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !616, file: !20, line: 238, baseType: !27, size: 8, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !616, file: !20, line: 238, baseType: !27, size: 8, offset: 72)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !616, file: !20, line: 238, baseType: !32, size: 16, offset: 80)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !20, line: 238, baseType: !27, size: 8, offset: 96)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !616, file: !20, line: 238, baseType: !27, size: 8, offset: 104)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !616, file: !20, line: 238, baseType: !27, size: 8, offset: 112)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !616, file: !20, line: 238, baseType: !27, size: 8, offset: 120)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !616, file: !20, line: 238, baseType: !78, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !616, file: !20, line: 238, baseType: !13, size: 32, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !616, file: !20, line: 238, baseType: !13, size: 32, offset: 224)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !616, file: !20, line: 238, baseType: !13, size: 32, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !616, file: !20, line: 238, baseType: !27, size: 8, offset: 288)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !616, file: !20, line: 238, baseType: !27, size: 8, offset: 296)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !616, file: !20, line: 238, baseType: !32, size: 16, offset: 304)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !616, file: !20, line: 239, baseType: !18, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !616, file: !20, line: 240, baseType: !73, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !616, file: !20, line: 241, baseType: !32, size: 16, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !616, file: !20, line: 242, baseType: !73, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !19, file: !20, line: 384, baseType: !638, size: 384)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !20, line: 262, size: 384, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !20, line: 263, baseType: !18, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !20, line: 263, baseType: !27, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !20, line: 263, baseType: !27, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !20, line: 263, baseType: !32, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !20, line: 263, baseType: !27, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !20, line: 263, baseType: !27, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !20, line: 263, baseType: !27, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !20, line: 263, baseType: !27, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !20, line: 263, baseType: !78, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !20, line: 263, baseType: !13, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !20, line: 263, baseType: !13, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !20, line: 263, baseType: !13, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !20, line: 263, baseType: !27, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !20, line: 263, baseType: !27, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !638, file: !20, line: 263, baseType: !27, size: 8, offset: 304)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !638, file: !20, line: 264, baseType: !18, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !19, file: !20, line: 385, baseType: !657, size: 448)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !20, line: 245, size: 448, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !657, file: !20, line: 246, baseType: !18, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !657, file: !20, line: 246, baseType: !27, size: 8, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !20, line: 246, baseType: !27, size: 8, offset: 72)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !657, file: !20, line: 246, baseType: !32, size: 16, offset: 80)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !20, line: 246, baseType: !27, size: 8, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !657, file: !20, line: 246, baseType: !27, size: 8, offset: 104)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !657, file: !20, line: 246, baseType: !27, size: 8, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !657, file: !20, line: 246, baseType: !27, size: 8, offset: 120)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !20, line: 246, baseType: !78, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !657, file: !20, line: 246, baseType: !13, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !657, file: !20, line: 246, baseType: !13, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !657, file: !20, line: 246, baseType: !13, size: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !657, file: !20, line: 246, baseType: !27, size: 8, offset: 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !657, file: !20, line: 246, baseType: !27, size: 8, offset: 296)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !657, file: !20, line: 246, baseType: !18, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !657, file: !20, line: 247, baseType: !18, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !19, file: !20, line: 386, baseType: !676, size: 448)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !20, line: 250, size: 448, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !676, file: !20, line: 251, baseType: !18, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !20, line: 251, baseType: !27, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !20, line: 251, baseType: !27, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !20, line: 251, baseType: !32, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !20, line: 251, baseType: !27, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !676, file: !20, line: 251, baseType: !27, size: 8, offset: 104)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !676, file: !20, line: 251, baseType: !27, size: 8, offset: 112)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !676, file: !20, line: 251, baseType: !27, size: 8, offset: 120)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !676, file: !20, line: 251, baseType: !78, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !676, file: !20, line: 251, baseType: !13, size: 32, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !676, file: !20, line: 251, baseType: !13, size: 32, offset: 224)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !676, file: !20, line: 251, baseType: !13, size: 32, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !676, file: !20, line: 251, baseType: !27, size: 8, offset: 288)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !676, file: !20, line: 251, baseType: !27, size: 8, offset: 296)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !676, file: !20, line: 256, baseType: !18, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !676, file: !20, line: 257, baseType: !18, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !19, file: !20, line: 387, baseType: !695, size: 512)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !20, line: 273, size: 512, elements: !696)
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !695, file: !20, line: 274, baseType: !18, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !695, file: !20, line: 274, baseType: !27, size: 8, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !695, file: !20, line: 274, baseType: !27, size: 8, offset: 72)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !695, file: !20, line: 274, baseType: !32, size: 16, offset: 80)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !20, line: 274, baseType: !27, size: 8, offset: 96)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !695, file: !20, line: 274, baseType: !78, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !695, file: !20, line: 275, baseType: !13, size: 32, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !695, file: !20, line: 276, baseType: !372, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !695, file: !20, line: 277, baseType: !123, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !695, file: !20, line: 278, baseType: !479, size: 128, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !19, file: !20, line: 388, baseType: !708, size: 512)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !20, line: 281, size: 512, elements: !709)
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !723, !724, !725, !731, !732}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !708, file: !20, line: 282, baseType: !18, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !708, file: !20, line: 282, baseType: !27, size: 8, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !708, file: !20, line: 282, baseType: !27, size: 8, offset: 72)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !708, file: !20, line: 282, baseType: !32, size: 16, offset: 80)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !20, line: 282, baseType: !27, size: 8, offset: 96)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !708, file: !20, line: 282, baseType: !27, size: 8, offset: 104)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !708, file: !20, line: 283, baseType: !27, size: 8, offset: 112)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !708, file: !20, line: 284, baseType: !718, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1084, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!146, !13, !468, !13, !722, !123, !123}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !708, file: !20, line: 285, baseType: !78, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !708, file: !20, line: 286, baseType: !123, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !708, file: !20, line: 287, baseType: !726, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1102, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!146, !376, !13, !123, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !708, file: !20, line: 288, baseType: !18, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !708, file: !20, line: 289, baseType: !18, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !19, file: !20, line: 389, baseType: !734, size: 512)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !20, line: 307, size: 512, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !734, file: !20, line: 308, baseType: !18, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !734, file: !20, line: 308, baseType: !27, size: 8, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !20, line: 308, baseType: !27, size: 8, offset: 72)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !734, file: !20, line: 308, baseType: !32, size: 16, offset: 80)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !734, file: !20, line: 308, baseType: !27, size: 8, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !734, file: !20, line: 308, baseType: !27, size: 8, offset: 104)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !734, file: !20, line: 309, baseType: !27, size: 8, offset: 112)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !734, file: !20, line: 310, baseType: !27, size: 8, offset: 120)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !734, file: !20, line: 311, baseType: !123, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !734, file: !20, line: 312, baseType: !78, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !734, file: !20, line: 313, baseType: !110, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !734, file: !20, line: 314, baseType: !73, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !734, file: !20, line: 315, baseType: !73, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !734, file: !20, line: 316, baseType: !13, size: 32, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !19, file: !20, line: 390, baseType: !751, size: 448)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !20, line: 340, size: 448, elements: !752)
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !761, !762}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !751, file: !20, line: 341, baseType: !18, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !751, file: !20, line: 341, baseType: !27, size: 8, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !751, file: !20, line: 341, baseType: !27, size: 8, offset: 72)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !751, file: !20, line: 341, baseType: !32, size: 16, offset: 80)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !20, line: 341, baseType: !27, size: 8, offset: 96)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !751, file: !20, line: 341, baseType: !78, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !751, file: !20, line: 342, baseType: !78, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !751, file: !20, line: 343, baseType: !123, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !751, file: !20, line: 344, baseType: !73, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !751, file: !20, line: 345, baseType: !13, size: 32, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !19, file: !20, line: 391, baseType: !764, size: 256)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !20, line: 350, size: 256, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !776}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !764, file: !20, line: 351, baseType: !18, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !764, file: !20, line: 351, baseType: !27, size: 8, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !20, line: 351, baseType: !27, size: 8, offset: 72)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !764, file: !20, line: 351, baseType: !32, size: 16, offset: 80)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !20, line: 351, baseType: !27, size: 8, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !764, file: !20, line: 351, baseType: !772, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1055, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !376, !123}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !764, file: !20, line: 352, baseType: !123, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !19, file: !20, line: 392, baseType: !778, size: 192)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !20, line: 357, size: 192, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !778, file: !20, line: 358, baseType: !18, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !778, file: !20, line: 358, baseType: !27, size: 8, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !778, file: !20, line: 358, baseType: !27, size: 8, offset: 72)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !778, file: !20, line: 358, baseType: !32, size: 16, offset: 80)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !778, file: !20, line: 358, baseType: !27, size: 8, offset: 96)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !778, file: !20, line: 358, baseType: !18, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !19, file: !20, line: 399, baseType: !79, size: 384)
!787 = !{i32 7, !"Dwarf Version", i32 4}
!788 = !{i32 2, !"Debug Info Version", i32 3}
!789 = !{i32 1, !"wchar_size", i32 2}
!790 = !{i32 1, !"Code Model", i32 2}
!791 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!792 = distinct !DISubprogram(name: "acpi_ex_trace_point", scope: !3, file: !3, line: 131, type: !793, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !796)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !795, !27, !73, !61}
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_trace_event_type", file: !6, line: 1248, baseType: !5)
!796 = !{}
!797 = !DILocalVariable(name: "type", arg: 1, scope: !792, file: !3, line: 131, type: !795)
!798 = !DILocation(line: 131, column: 43, scope: !792)
!799 = !DILocalVariable(name: "begin", arg: 2, scope: !792, file: !3, line: 132, type: !27)
!800 = !DILocation(line: 132, column: 10, scope: !792)
!801 = !DILocalVariable(name: "aml", arg: 3, scope: !792, file: !3, line: 132, type: !73)
!802 = !DILocation(line: 132, column: 21, scope: !792)
!803 = !DILocalVariable(name: "pathname", arg: 4, scope: !792, file: !3, line: 132, type: !61)
!804 = !DILocation(line: 132, column: 32, scope: !792)
!805 = !DILocation(line: 137, column: 6, scope: !806)
!806 = distinct !DILexicalBlock(scope: !792, file: !3, line: 137, column: 6)
!807 = !DILocation(line: 137, column: 6, scope: !792)
!808 = !DILocation(line: 142, column: 2, scope: !809)
!809 = distinct !DILexicalBlock(scope: !806, file: !3, line: 137, column: 16)
!810 = !DILocation(line: 148, column: 1, scope: !792)
!811 = distinct !DISubprogram(name: "acpi_ex_start_trace_method", scope: !3, file: !3, line: 166, type: !812, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !796)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !78, !18, !147}
!814 = !DILocalVariable(name: "method_node", arg: 1, scope: !811, file: !3, line: 166, type: !78)
!815 = !DILocation(line: 166, column: 56, scope: !811)
!816 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !811, file: !3, line: 167, type: !18)
!817 = !DILocation(line: 167, column: 34, scope: !811)
!818 = !DILocalVariable(name: "walk_state", arg: 3, scope: !811, file: !3, line: 168, type: !147)
!819 = !DILocation(line: 168, column: 31, scope: !811)
!820 = !DILocalVariable(name: "pathname", scope: !811, file: !3, line: 170, type: !61)
!821 = !DILocation(line: 170, column: 8, scope: !811)
!822 = !DILocalVariable(name: "enabled", scope: !811, file: !3, line: 171, type: !27)
!823 = !DILocation(line: 171, column: 5, scope: !811)
!824 = !DILocation(line: 175, column: 6, scope: !825)
!825 = distinct !DILexicalBlock(scope: !811, file: !3, line: 175, column: 6)
!826 = !DILocation(line: 175, column: 6, scope: !811)
!827 = !DILocation(line: 176, column: 46, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !3, line: 175, column: 19)
!829 = !DILocation(line: 176, column: 14, scope: !828)
!830 = !DILocation(line: 176, column: 12, scope: !828)
!831 = !DILocation(line: 177, column: 2, scope: !828)
!832 = !DILocation(line: 179, column: 46, scope: !811)
!833 = !DILocation(line: 179, column: 12, scope: !811)
!834 = !DILocation(line: 179, column: 10, scope: !811)
!835 = !DILocation(line: 180, column: 6, scope: !836)
!836 = distinct !DILexicalBlock(scope: !811, file: !3, line: 180, column: 6)
!837 = !DILocation(line: 180, column: 14, scope: !836)
!838 = !DILocation(line: 180, column: 18, scope: !836)
!839 = !DILocation(line: 180, column: 6, scope: !811)
!840 = !DILocation(line: 181, column: 34, scope: !841)
!841 = distinct !DILexicalBlock(scope: !836, file: !3, line: 180, column: 48)
!842 = !DILocation(line: 181, column: 32, scope: !841)
!843 = !DILocation(line: 182, column: 33, scope: !841)
!844 = !DILocation(line: 182, column: 31, scope: !841)
!845 = !DILocation(line: 183, column: 33, scope: !841)
!846 = !DILocation(line: 183, column: 31, scope: !841)
!847 = !DILocation(line: 184, column: 18, scope: !841)
!848 = !DILocation(line: 185, column: 18, scope: !841)
!849 = !DILocation(line: 187, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !841, file: !3, line: 187, column: 7)
!851 = !DILocation(line: 187, column: 7, scope: !841)
!852 = !DILocation(line: 188, column: 21, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !3, line: 187, column: 33)
!854 = !DILocation(line: 188, column: 19, scope: !853)
!855 = !DILocation(line: 189, column: 3, scope: !853)
!856 = !DILocation(line: 191, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !841, file: !3, line: 191, column: 7)
!858 = !DILocation(line: 191, column: 7, scope: !841)
!859 = !DILocation(line: 192, column: 21, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !3, line: 191, column: 33)
!861 = !DILocation(line: 192, column: 19, scope: !860)
!862 = !DILocation(line: 193, column: 3, scope: !860)
!863 = !DILocation(line: 194, column: 2, scope: !841)
!864 = !DILocation(line: 196, column: 6, scope: !865)
!865 = distinct !DILexicalBlock(scope: !811, file: !3, line: 196, column: 6)
!866 = !DILocation(line: 196, column: 6, scope: !811)
!867 = !DILocation(line: 200, column: 2, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !3, line: 196, column: 15)
!869 = !DILocation(line: 202, column: 6, scope: !870)
!870 = distinct !DILexicalBlock(scope: !811, file: !3, line: 202, column: 6)
!871 = !DILocation(line: 202, column: 6, scope: !811)
!872 = !DILocation(line: 203, column: 3, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !3, line: 202, column: 16)
!874 = !DILocation(line: 204, column: 2, scope: !873)
!875 = !DILocation(line: 205, column: 1, scope: !811)
!876 = distinct !DISubprogram(name: "acpi_ex_interpreter_trace_enabled", scope: !3, file: !3, line: 40, type: !877, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !796)
!877 = !DISubroutineType(types: !878)
!878 = !{!27, !61}
!879 = !DILocalVariable(name: "name", arg: 1, scope: !876, file: !3, line: 40, type: !61)
!880 = !DILocation(line: 40, column: 51, scope: !876)
!881 = !DILocation(line: 45, column: 8, scope: !882)
!882 = distinct !DILexicalBlock(scope: !876, file: !3, line: 45, column: 6)
!883 = !DILocation(line: 45, column: 29, scope: !882)
!884 = !DILocation(line: 45, column: 6, scope: !876)
!885 = !DILocation(line: 46, column: 3, scope: !886)
!886 = distinct !DILexicalBlock(scope: !882, file: !3, line: 45, column: 52)
!887 = !DILocation(line: 59, column: 6, scope: !888)
!888 = distinct !DILexicalBlock(scope: !876, file: !3, line: 59, column: 6)
!889 = !DILocation(line: 59, column: 6, scope: !876)
!890 = !DILocation(line: 60, column: 3, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !3, line: 59, column: 36)
!892 = !DILocation(line: 63, column: 6, scope: !893)
!893 = distinct !DILexicalBlock(scope: !876, file: !3, line: 63, column: 6)
!894 = !DILocation(line: 63, column: 11, scope: !893)
!895 = !DILocation(line: 64, column: 7, scope: !893)
!896 = !DILocation(line: 64, column: 34, scope: !893)
!897 = !DILocation(line: 65, column: 14, scope: !893)
!898 = !DILocation(line: 65, column: 42, scope: !893)
!899 = !DILocation(line: 65, column: 7, scope: !893)
!900 = !DILocation(line: 63, column: 6, scope: !876)
!901 = !DILocation(line: 66, column: 3, scope: !902)
!902 = distinct !DILexicalBlock(scope: !893, file: !3, line: 65, column: 50)
!903 = !DILocation(line: 69, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !876, file: !3, line: 69, column: 6)
!905 = !DILocation(line: 69, column: 28, scope: !904)
!906 = !DILocation(line: 69, column: 50, scope: !904)
!907 = !DILocation(line: 70, column: 7, scope: !904)
!908 = !DILocation(line: 69, column: 6, scope: !876)
!909 = !DILocation(line: 71, column: 3, scope: !910)
!910 = distinct !DILexicalBlock(scope: !904, file: !3, line: 70, column: 35)
!911 = !DILocation(line: 74, column: 2, scope: !876)
!912 = !DILocation(line: 75, column: 1, scope: !876)
!913 = distinct !DISubprogram(name: "acpi_os_free", scope: !914, file: !914, line: 60, type: !915, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !796)
!914 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!915 = !DISubroutineType(types: !916)
!916 = !{null, !123}
!917 = !DILocalVariable(name: "memory", arg: 1, scope: !913, file: !914, line: 60, type: !123)
!918 = !DILocation(line: 60, column: 39, scope: !913)
!919 = !DILocation(line: 62, column: 8, scope: !913)
!920 = !DILocation(line: 62, column: 2, scope: !913)
!921 = !DILocation(line: 63, column: 1, scope: !913)
!922 = distinct !DISubprogram(name: "acpi_ex_stop_trace_method", scope: !3, file: !3, line: 223, type: !812, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !796)
!923 = !DILocalVariable(name: "method_node", arg: 1, scope: !922, file: !3, line: 223, type: !78)
!924 = !DILocation(line: 223, column: 55, scope: !922)
!925 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !922, file: !3, line: 224, type: !18)
!926 = !DILocation(line: 224, column: 33, scope: !922)
!927 = !DILocalVariable(name: "walk_state", arg: 3, scope: !922, file: !3, line: 225, type: !147)
!928 = !DILocation(line: 225, column: 30, scope: !922)
!929 = !DILocalVariable(name: "pathname", scope: !922, file: !3, line: 227, type: !61)
!930 = !DILocation(line: 227, column: 8, scope: !922)
!931 = !DILocalVariable(name: "enabled", scope: !922, file: !3, line: 228, type: !27)
!932 = !DILocation(line: 228, column: 5, scope: !922)
!933 = !DILocation(line: 232, column: 6, scope: !934)
!934 = distinct !DILexicalBlock(scope: !922, file: !3, line: 232, column: 6)
!935 = !DILocation(line: 232, column: 6, scope: !922)
!936 = !DILocation(line: 233, column: 46, scope: !937)
!937 = distinct !DILexicalBlock(scope: !934, file: !3, line: 232, column: 19)
!938 = !DILocation(line: 233, column: 14, scope: !937)
!939 = !DILocation(line: 233, column: 12, scope: !937)
!940 = !DILocation(line: 234, column: 2, scope: !937)
!941 = !DILocation(line: 236, column: 12, scope: !922)
!942 = !DILocation(line: 236, column: 10, scope: !922)
!943 = !DILocation(line: 238, column: 6, scope: !944)
!944 = distinct !DILexicalBlock(scope: !922, file: !3, line: 238, column: 6)
!945 = !DILocation(line: 238, column: 6, scope: !922)
!946 = !DILocation(line: 242, column: 2, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !3, line: 238, column: 15)
!948 = !DILocation(line: 246, column: 6, scope: !949)
!949 = distinct !DILexicalBlock(scope: !922, file: !3, line: 246, column: 6)
!950 = !DILocation(line: 246, column: 38, scope: !949)
!951 = !DILocation(line: 246, column: 35, scope: !949)
!952 = !DILocation(line: 246, column: 6, scope: !922)
!953 = !DILocation(line: 250, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 250, column: 7)
!955 = distinct !DILexicalBlock(scope: !949, file: !3, line: 246, column: 48)
!956 = !DILocation(line: 250, column: 28, scope: !954)
!957 = !DILocation(line: 250, column: 7, scope: !955)
!958 = !DILocation(line: 251, column: 31, scope: !959)
!959 = distinct !DILexicalBlock(scope: !954, file: !3, line: 250, column: 50)
!960 = !DILocation(line: 252, column: 3, scope: !959)
!961 = !DILocation(line: 254, column: 20, scope: !955)
!962 = !DILocation(line: 254, column: 18, scope: !955)
!963 = !DILocation(line: 255, column: 20, scope: !955)
!964 = !DILocation(line: 255, column: 18, scope: !955)
!965 = !DILocation(line: 256, column: 32, scope: !955)
!966 = !DILocation(line: 257, column: 2, scope: !955)
!967 = !DILocation(line: 259, column: 6, scope: !968)
!968 = distinct !DILexicalBlock(scope: !922, file: !3, line: 259, column: 6)
!969 = !DILocation(line: 259, column: 6, scope: !922)
!970 = !DILocation(line: 260, column: 3, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !3, line: 259, column: 16)
!972 = !DILocation(line: 261, column: 2, scope: !971)
!973 = !DILocation(line: 262, column: 1, scope: !922)
!974 = distinct !DISubprogram(name: "acpi_ex_start_trace_opcode", scope: !3, file: !3, line: 279, type: !975, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !796)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !181, !147}
!977 = !DILocalVariable(name: "op", arg: 1, scope: !974, file: !3, line: 279, type: !181)
!978 = !DILocation(line: 279, column: 53, scope: !974)
!979 = !DILocalVariable(name: "walk_state", arg: 2, scope: !974, file: !3, line: 280, type: !147)
!980 = !DILocation(line: 280, column: 31, scope: !974)
!981 = !DILocation(line: 285, column: 6, scope: !982)
!982 = distinct !DILexicalBlock(scope: !974, file: !3, line: 285, column: 6)
!983 = !DILocation(line: 285, column: 46, scope: !982)
!984 = !DILocation(line: 286, column: 7, scope: !982)
!985 = !DILocation(line: 286, column: 28, scope: !982)
!986 = !DILocation(line: 285, column: 6, scope: !974)
!987 = !DILocation(line: 289, column: 2, scope: !988)
!988 = distinct !DILexicalBlock(scope: !982, file: !3, line: 286, column: 50)
!989 = !DILocation(line: 290, column: 1, scope: !974)
!990 = distinct !DISubprogram(name: "acpi_ex_stop_trace_opcode", scope: !3, file: !3, line: 307, type: !975, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !796)
!991 = !DILocalVariable(name: "op", arg: 1, scope: !990, file: !3, line: 307, type: !181)
!992 = !DILocation(line: 307, column: 52, scope: !990)
!993 = !DILocalVariable(name: "walk_state", arg: 2, scope: !990, file: !3, line: 308, type: !147)
!994 = !DILocation(line: 308, column: 30, scope: !990)
!995 = !DILocation(line: 313, column: 6, scope: !996)
!996 = distinct !DILexicalBlock(scope: !990, file: !3, line: 313, column: 6)
!997 = !DILocation(line: 313, column: 46, scope: !996)
!998 = !DILocation(line: 314, column: 7, scope: !996)
!999 = !DILocation(line: 314, column: 28, scope: !996)
!1000 = !DILocation(line: 313, column: 6, scope: !990)
!1001 = !DILocation(line: 317, column: 2, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !996, file: !3, line: 314, column: 50)
!1003 = !DILocation(line: 318, column: 1, scope: !990)
