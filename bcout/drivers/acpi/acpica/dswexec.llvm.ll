; ModuleID = '../bcout/drivers/acpi/acpica/dswexec.llvm.bc'
source_filename = "drivers/acpi/acpica/dswexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.acpi_common_state = type { i8*, i8, i8, i16, i16 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }
%struct.acpi_control_state = type { i8*, i8, i8, i16, i16, i16, %union.acpi_parse_object*, i8*, i8*, i64 }
%struct.acpi_parse_obj_named = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, i8*, i8*, i32, i32 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }

@_acpi_module_name = internal constant [8 x i8] c"dswexec\00", align 1, !dbg !0
@.str = private unnamed_addr constant [47 x i8] c"Could not get result from predicate evaluation\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"No predicate ObjDesc=%p State=%p\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Bad predicate (not an integer) ObjDesc=%p State=%p Type=0x%X\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unknown opcode 0x%X\00", align 1
@acpi_gbl_op_type_dispatch = internal global [12 x i32 (%struct.acpi_walk_state*)*] [i32 (%struct.acpi_walk_state*)* @acpi_ex_opcode_0A_0T_1R, i32 (%struct.acpi_walk_state*)* @acpi_ex_opcode_1A_0T_0R, i32 (%struct.acpi_walk_state*)* @acpi_ex_opcode_1A_0T_1R, i32 (%struct.acpi_walk_state*)* @acpi_ex_opcode_1A_1T_0R, i32 (%struct.acpi_walk_state*)* @acpi_ex_opcode_1A_1T_1R, i32 (%struct.acpi_walk_state*)* @acpi_ex_opcode_2A_0T_0R, i32 (%struct.acpi_walk_state*)* @acpi_ex_opcode_2A_0T_1R, i32 (%struct.acpi_walk_state*)* @acpi_ex_opcode_2A_1T_1R, i32 (%struct.acpi_walk_state*)* @acpi_ex_opcode_2A_2T_1R, i32 (%struct.acpi_walk_state*)* @acpi_ex_opcode_3A_0T_0R, i32 (%struct.acpi_walk_state*)* @acpi_ex_opcode_3A_1T_1R, i32 (%struct.acpi_walk_state*)* @acpi_ex_opcode_6A_0T_1R], align 16, !dbg !782
@.str.4 = private unnamed_addr constant [34 x i8] c"While resolving operands for [%s]\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Undefined opcode type Op=%p\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Unimplemented opcode, class=0x%X type=0x%X Opcode=0x%X Op=%p\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_get_predicate_value(%struct.acpi_walk_state* %walk_state, %union.acpi_operand_object* %result_obj) #0 !dbg !795 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %result_obj.addr = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %local_obj_desc = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !798, metadata !DIExpression()), !dbg !799
  store %union.acpi_operand_object* %result_obj, %union.acpi_operand_object** %result_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %result_obj.addr, metadata !800, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.declare(metadata i32* %status, metadata !802, metadata !DIExpression()), !dbg !803
  store i32 0, i32* %status, align 4, !dbg !803
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !804, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %local_obj_desc, metadata !806, metadata !DIExpression()), !dbg !807
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %local_obj_desc, align 8, !dbg !807
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !808
  %control_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 32, !dbg !809
  %1 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !809
  %common = bitcast %union.acpi_generic_state* %1 to %struct.acpi_common_state*, !dbg !810
  %state = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common, i32 0, i32 4, !dbg !811
  store i16 0, i16* %state, align 4, !dbg !812
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj.addr, align 8, !dbg !813
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !813
  br i1 %tobool, label %if.then, label %if.else, !dbg !815

if.then:                                          ; preds = %entry
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !816
  %call = call i32 @acpi_ds_result_pop(%union.acpi_operand_object** %obj_desc, %struct.acpi_walk_state* %3) #3, !dbg !818
  store i32 %call, i32* %status, align 4, !dbg !819
  %4 = load i32, i32* %status, align 4, !dbg !820
  %tobool1 = icmp ne i32 %4, 0, !dbg !820
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !822

if.then2:                                         ; preds = %if.then
  %5 = load i32, i32* %status, align 4, !dbg !823
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 72, i32 %5, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0)) #3, !dbg !823
  %6 = load i32, i32* %status, align 4, !dbg !825
  store i32 %6, i32* %retval, align 4, !dbg !825
  br label %return, !dbg !825

if.end:                                           ; preds = %if.then
  br label %if.end13, !dbg !826

if.else:                                          ; preds = %entry
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !827
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !829
  %op = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 40, !dbg !830
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !830
  %call3 = call i32 @acpi_ds_create_operand(%struct.acpi_walk_state* %7, %union.acpi_parse_object* %9, i32 0) #3, !dbg !831
  store i32 %call3, i32* %status, align 4, !dbg !832
  %10 = load i32, i32* %status, align 4, !dbg !833
  %tobool4 = icmp ne i32 %10, 0, !dbg !833
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !835

if.then5:                                         ; preds = %if.else
  %11 = load i32, i32* %status, align 4, !dbg !836
  store i32 %11, i32* %retval, align 4, !dbg !836
  br label %return, !dbg !836

if.end6:                                          ; preds = %if.else
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !838
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 28, !dbg !839
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !838
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !840
  %call7 = call i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %arrayidx, %struct.acpi_walk_state* %13) #3, !dbg !841
  store i32 %call7, i32* %status, align 4, !dbg !842
  %14 = load i32, i32* %status, align 4, !dbg !843
  %tobool8 = icmp ne i32 %14, 0, !dbg !843
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !845

if.then9:                                         ; preds = %if.end6
  %15 = load i32, i32* %status, align 4, !dbg !846
  store i32 %15, i32* %retval, align 4, !dbg !846
  br label %return, !dbg !846

if.end10:                                         ; preds = %if.end6
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !848
  %operands11 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 28, !dbg !849
  %arrayidx12 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands11, i64 0, i64 0, !dbg !848
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx12, align 8, !dbg !848
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %obj_desc, align 8, !dbg !850
  br label %if.end13

if.end13:                                         ; preds = %if.end10, %if.end
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !851
  %tobool14 = icmp ne %union.acpi_operand_object* %18, null, !dbg !851
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !853

if.then15:                                        ; preds = %if.end13
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !854
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !854
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %union.acpi_operand_object* %19, %struct.acpi_walk_state* %20) #3, !dbg !854
  store i32 12290, i32* %retval, align 4, !dbg !856
  br label %return, !dbg !856

if.end16:                                         ; preds = %if.end13
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !857
  %call17 = call i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %21, %union.acpi_operand_object** %local_obj_desc, i32 1) #3, !dbg !858
  store i32 %call17, i32* %status, align 4, !dbg !859
  %22 = load i32, i32* %status, align 4, !dbg !860
  %tobool18 = icmp ne i32 %22, 0, !dbg !860
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !862

if.then19:                                        ; preds = %if.end16
  br label %cleanup, !dbg !863

if.end20:                                         ; preds = %if.end16
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_obj_desc, align 8, !dbg !865
  %common21 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_common*, !dbg !867
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common21, i32 0, i32 2, !dbg !868
  %24 = load i8, i8* %type, align 1, !dbg !868
  %conv = zext i8 %24 to i32, !dbg !865
  %cmp = icmp ne i32 %conv, 1, !dbg !869
  br i1 %cmp, label %if.then23, label %if.end27, !dbg !870

if.then23:                                        ; preds = %if.end20
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !871
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !871
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !871
  %common24 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_common*, !dbg !871
  %type25 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common24, i32 0, i32 2, !dbg !871
  %28 = load i8, i8* %type25, align 1, !dbg !871
  %conv26 = zext i8 %28 to i32, !dbg !871
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 112, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), %union.acpi_operand_object* %25, %struct.acpi_walk_state* %26, i32 %conv26) #3, !dbg !871
  store i32 12291, i32* %status, align 4, !dbg !873
  br label %cleanup, !dbg !874

if.end27:                                         ; preds = %if.end20
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_obj_desc, align 8, !dbg !875
  %call28 = call zeroext i8 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object* %29) #3, !dbg !876
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_obj_desc, align 8, !dbg !877
  %integer = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_integer*, !dbg !879
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !880
  %31 = load i64, i64* %value, align 8, !dbg !880
  %tobool29 = icmp ne i64 %31, 0, !dbg !877
  br i1 %tobool29, label %if.then30, label %if.else34, !dbg !881

if.then30:                                        ; preds = %if.end27
  %32 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !882
  %control_state31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %32, i32 0, i32 32, !dbg !884
  %33 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state31, align 8, !dbg !884
  %common32 = bitcast %union.acpi_generic_state* %33 to %struct.acpi_common_state*, !dbg !885
  %value33 = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common32, i32 0, i32 3, !dbg !886
  store i16 1, i16* %value33, align 2, !dbg !887
  br label %if.end38, !dbg !888

if.else34:                                        ; preds = %if.end27
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !889
  %control_state35 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %34, i32 0, i32 32, !dbg !891
  %35 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state35, align 8, !dbg !891
  %common36 = bitcast %union.acpi_generic_state* %35 to %struct.acpi_common_state*, !dbg !892
  %value37 = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common36, i32 0, i32 3, !dbg !893
  store i16 0, i16* %value37, align 2, !dbg !894
  store i32 16389, i32* %status, align 4, !dbg !895
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then30
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_obj_desc, align 8, !dbg !896
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !897
  %call39 = call zeroext i8 @acpi_ds_do_implicit_return(%union.acpi_operand_object* %36, %struct.acpi_walk_state* %37, i8 zeroext 1) #3, !dbg !898
  br label %cleanup, !dbg !899

cleanup:                                          ; preds = %if.end38, %if.then23, %if.then19
  call void @llvm.dbg.label(metadata !900), !dbg !901
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_obj_desc, align 8, !dbg !902
  %39 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !903
  call void @acpi_db_display_result_object(%union.acpi_operand_object* %38, %struct.acpi_walk_state* %39) #3, !dbg !904
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_obj_desc, align 8, !dbg !905
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !907
  %cmp40 = icmp ne %union.acpi_operand_object* %40, %41, !dbg !908
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !909

if.then42:                                        ; preds = %cleanup
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_obj_desc, align 8, !dbg !910
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %42) #3, !dbg !912
  br label %if.end43, !dbg !913

if.end43:                                         ; preds = %if.then42, %cleanup
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !914
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %43) #3, !dbg !915
  %44 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !916
  %control_state44 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %44, i32 0, i32 32, !dbg !917
  %45 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state44, align 8, !dbg !917
  %common45 = bitcast %union.acpi_generic_state* %45 to %struct.acpi_common_state*, !dbg !918
  %state46 = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common45, i32 0, i32 4, !dbg !919
  store i16 192, i16* %state46, align 4, !dbg !920
  %46 = load i32, i32* %status, align 4, !dbg !921
  store i32 %46, i32* %retval, align 4, !dbg !921
  br label %return, !dbg !921

return:                                           ; preds = %if.end43, %if.then15, %if.then9, %if.then5, %if.then2
  %47 = load i32, i32* %retval, align 4, !dbg !922
  ret i32 %47, !dbg !922
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_result_pop(%union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_create_operand(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ds_do_implicit_return(%union.acpi_operand_object*, %struct.acpi_walk_state*, i8 zeroext) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_db_display_result_object(%union.acpi_operand_object* %obj_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !923 {
entry:
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !927, metadata !DIExpression()), !dbg !928
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !929, metadata !DIExpression()), !dbg !928
  ret void, !dbg !928
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_exec_begin_op(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object** %out_op) #0 !dbg !930 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %out_op.addr = alloca %union.acpi_parse_object**, align 8
  %op = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %opcode_class = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !931, metadata !DIExpression()), !dbg !932
  store %union.acpi_parse_object** %out_op, %union.acpi_parse_object*** %out_op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object*** %out_op.addr, metadata !933, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op, metadata !935, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.declare(metadata i32* %status, metadata !937, metadata !DIExpression()), !dbg !938
  store i32 0, i32* %status, align 4, !dbg !938
  call void @llvm.dbg.declare(metadata i32* %opcode_class, metadata !939, metadata !DIExpression()), !dbg !940
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !941
  %op1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 40, !dbg !942
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op1, align 8, !dbg !942
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %op, align 8, !dbg !943
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !944
  %tobool = icmp ne %union.acpi_parse_object* %2, null, !dbg !944
  br i1 %tobool, label %if.end17, label %if.then, !dbg !946

if.then:                                          ; preds = %entry
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !947
  %4 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %out_op.addr, align 8, !dbg !949
  %call = call i32 @acpi_ds_load2_begin_op(%struct.acpi_walk_state* %3, %union.acpi_parse_object** %4) #3, !dbg !950
  store i32 %call, i32* %status, align 4, !dbg !951
  %5 = load i32, i32* %status, align 4, !dbg !952
  %tobool2 = icmp ne i32 %5, 0, !dbg !952
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !954

if.then3:                                         ; preds = %if.then
  br label %error_exit, !dbg !955

if.end:                                           ; preds = %if.then
  %6 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %out_op.addr, align 8, !dbg !957
  %7 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8, !dbg !958
  store %union.acpi_parse_object* %7, %union.acpi_parse_object** %op, align 8, !dbg !959
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !960
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !961
  %op4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 40, !dbg !962
  store %union.acpi_parse_object* %8, %union.acpi_parse_object** %op4, align 8, !dbg !963
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !964
  %common = bitcast %union.acpi_parse_object* %10 to %struct.acpi_parse_obj_common*, !dbg !965
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !966
  %11 = load i16, i16* %aml_opcode, align 2, !dbg !966
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !967
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 3, !dbg !968
  store i16 %11, i16* %opcode, align 2, !dbg !969
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !970
  %common5 = bitcast %union.acpi_parse_object* %13 to %struct.acpi_parse_obj_common*, !dbg !971
  %aml_opcode6 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common5, i32 0, i32 3, !dbg !972
  %14 = load i16, i16* %aml_opcode6, align 2, !dbg !972
  %call7 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %14) #3, !dbg !973
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !974
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 41, !dbg !975
  store %struct.acpi_opcode_info* %call7, %struct.acpi_opcode_info** %op_info, align 8, !dbg !976
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !977
  %op_info8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 41, !dbg !979
  %17 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info8, align 8, !dbg !979
  %object_type = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %17, i32 0, i32 3, !dbg !980
  %18 = load i8, i8* %object_type, align 2, !dbg !980
  %conv = zext i8 %18 to i32, !dbg !977
  %call9 = call i32 @acpi_ns_opens_scope(i32 %conv) #3, !dbg !981
  %tobool10 = icmp ne i32 %call9, 0, !dbg !981
  br i1 %tobool10, label %if.then11, label %if.end16, !dbg !982

if.then11:                                        ; preds = %if.end
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !983
  %call12 = call i32 @acpi_ds_scope_stack_pop(%struct.acpi_walk_state* %19) #3, !dbg !985
  store i32 %call12, i32* %status, align 4, !dbg !986
  %20 = load i32, i32* %status, align 4, !dbg !987
  %tobool13 = icmp ne i32 %20, 0, !dbg !987
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !989

if.then14:                                        ; preds = %if.then11
  br label %error_exit, !dbg !990

if.end15:                                         ; preds = %if.then11
  br label %if.end16, !dbg !992

if.end16:                                         ; preds = %if.end15, %if.end
  br label %if.end17, !dbg !993

if.end17:                                         ; preds = %if.end16, %entry
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !994
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !996
  %origin = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 42, !dbg !997
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %origin, align 8, !dbg !997
  %cmp = icmp eq %union.acpi_parse_object* %21, %23, !dbg !998
  br i1 %cmp, label %if.then19, label %if.end23, !dbg !999

if.then19:                                        ; preds = %if.end17
  %24 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %out_op.addr, align 8, !dbg !1000
  %tobool20 = icmp ne %union.acpi_parse_object** %24, null, !dbg !1000
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !1003

if.then21:                                        ; preds = %if.then19
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1004
  %26 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %out_op.addr, align 8, !dbg !1006
  store %union.acpi_parse_object* %25, %union.acpi_parse_object** %26, align 8, !dbg !1007
  br label %if.end22, !dbg !1008

if.end22:                                         ; preds = %if.then21, %if.then19
  store i32 0, i32* %retval, align 4, !dbg !1009
  br label %return, !dbg !1009

if.end23:                                         ; preds = %if.end17
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1010
  %control_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %27, i32 0, i32 32, !dbg !1012
  %28 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !1012
  %tobool24 = icmp ne %union.acpi_generic_state* %28, null, !dbg !1013
  br i1 %tobool24, label %land.lhs.true, label %if.end35, !dbg !1014

land.lhs.true:                                    ; preds = %if.end23
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1015
  %control_state25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %29, i32 0, i32 32, !dbg !1016
  %30 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state25, align 8, !dbg !1016
  %common26 = bitcast %union.acpi_generic_state* %30 to %struct.acpi_common_state*, !dbg !1017
  %state = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common26, i32 0, i32 4, !dbg !1018
  %31 = load i16, i16* %state, align 4, !dbg !1018
  %conv27 = zext i16 %31 to i32, !dbg !1015
  %cmp28 = icmp eq i32 %conv27, 193, !dbg !1019
  br i1 %cmp28, label %if.then30, label %if.end35, !dbg !1020

if.then30:                                        ; preds = %land.lhs.true
  %32 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1021
  %control_state31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %32, i32 0, i32 32, !dbg !1023
  %33 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state31, align 8, !dbg !1023
  %common32 = bitcast %union.acpi_generic_state* %33 to %struct.acpi_common_state*, !dbg !1024
  %state33 = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common32, i32 0, i32 4, !dbg !1025
  store i16 194, i16* %state33, align 4, !dbg !1026
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1027
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1028
  %control_state34 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 32, !dbg !1029
  %36 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state34, align 8, !dbg !1029
  %control = bitcast %union.acpi_generic_state* %36 to %struct.acpi_control_state*, !dbg !1030
  %predicate_op = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control, i32 0, i32 6, !dbg !1031
  store %union.acpi_parse_object* %34, %union.acpi_parse_object** %predicate_op, align 8, !dbg !1032
  br label %if.end35, !dbg !1033

if.end35:                                         ; preds = %if.then30, %land.lhs.true, %if.end23
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1034
  %op_info36 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %37, i32 0, i32 41, !dbg !1035
  %38 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info36, align 8, !dbg !1035
  %class = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %38, i32 0, i32 4, !dbg !1036
  %39 = load i8, i8* %class, align 1, !dbg !1036
  %conv37 = zext i8 %39 to i32, !dbg !1034
  store i32 %conv37, i32* %opcode_class, align 4, !dbg !1037
  %40 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1038
  %common38 = bitcast %union.acpi_parse_object* %40 to %struct.acpi_parse_obj_common*, !dbg !1040
  %aml_opcode39 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common38, i32 0, i32 3, !dbg !1041
  %41 = load i16, i16* %aml_opcode39, align 2, !dbg !1041
  %conv40 = zext i16 %41 to i32, !dbg !1038
  %cmp41 = icmp eq i32 %conv40, 45, !dbg !1042
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !1043

if.then43:                                        ; preds = %if.end35
  store i32 3, i32* %opcode_class, align 4, !dbg !1044
  br label %if.end44, !dbg !1046

if.end44:                                         ; preds = %if.then43, %if.end35
  %42 = load i32, i32* %opcode_class, align 4, !dbg !1047
  switch i32 %42, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb46
    i32 0, label %sw.bb66
    i32 1, label %sw.bb66
  ], !dbg !1048

sw.bb:                                            ; preds = %if.end44
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1049
  %44 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1051
  %call45 = call i32 @acpi_ds_exec_begin_control_op(%struct.acpi_walk_state* %43, %union.acpi_parse_object* %44) #3, !dbg !1052
  store i32 %call45, i32* %status, align 4, !dbg !1053
  br label %sw.epilog, !dbg !1054

sw.bb46:                                          ; preds = %if.end44
  %45 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1055
  %walk_type = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %45, i32 0, i32 2, !dbg !1057
  %46 = load i8, i8* %walk_type, align 1, !dbg !1057
  %conv47 = zext i8 %46 to i32, !dbg !1055
  %and = and i32 %conv47, 1, !dbg !1058
  %tobool48 = icmp ne i32 %and, 0, !dbg !1058
  br i1 %tobool48, label %if.then49, label %if.end65, !dbg !1059

if.then49:                                        ; preds = %sw.bb46
  %47 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1060
  %common50 = bitcast %union.acpi_parse_object* %47 to %struct.acpi_parse_obj_common*, !dbg !1063
  %aml_opcode51 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common50, i32 0, i32 3, !dbg !1064
  %48 = load i16, i16* %aml_opcode51, align 2, !dbg !1064
  %conv52 = zext i16 %48 to i32, !dbg !1060
  %cmp53 = icmp ne i32 %conv52, 16, !dbg !1065
  br i1 %cmp53, label %if.then55, label %if.else, !dbg !1066

if.then55:                                        ; preds = %if.then49
  %49 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1067
  %call56 = call i32 @acpi_ds_load2_begin_op(%struct.acpi_walk_state* %49, %union.acpi_parse_object** null) #3, !dbg !1069
  store i32 %call56, i32* %status, align 4, !dbg !1070
  br label %if.end64, !dbg !1071

if.else:                                          ; preds = %if.then49
  %50 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1072
  %named = bitcast %union.acpi_parse_object* %50 to %struct.acpi_parse_obj_named*, !dbg !1074
  %node = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 6, !dbg !1075
  %51 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1075
  %52 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1076
  %named57 = bitcast %union.acpi_parse_object* %52 to %struct.acpi_parse_obj_named*, !dbg !1077
  %node58 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named57, i32 0, i32 6, !dbg !1078
  %53 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node58, align 8, !dbg !1078
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %53, i32 0, i32 2, !dbg !1079
  %54 = load i8, i8* %type, align 1, !dbg !1079
  %conv59 = zext i8 %54 to i32, !dbg !1076
  %55 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1080
  %call60 = call i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %51, i32 %conv59, %struct.acpi_walk_state* %55) #3, !dbg !1081
  store i32 %call60, i32* %status, align 4, !dbg !1082
  %56 = load i32, i32* %status, align 4, !dbg !1083
  %tobool61 = icmp ne i32 %56, 0, !dbg !1083
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !1085

if.then62:                                        ; preds = %if.else
  %57 = load i32, i32* %status, align 4, !dbg !1086
  store i32 %57, i32* %retval, align 4, !dbg !1086
  br label %return, !dbg !1086

if.end63:                                         ; preds = %if.else
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then55
  br label %if.end65, !dbg !1088

if.end65:                                         ; preds = %if.end64, %sw.bb46
  br label %sw.epilog, !dbg !1089

sw.bb66:                                          ; preds = %if.end44, %if.end44
  br label %sw.epilog, !dbg !1090

sw.default:                                       ; preds = %if.end44
  br label %sw.epilog, !dbg !1091

sw.epilog:                                        ; preds = %sw.default, %sw.bb66, %if.end65, %sw.bb
  %58 = load i32, i32* %status, align 4, !dbg !1092
  store i32 %58, i32* %retval, align 4, !dbg !1092
  br label %return, !dbg !1092

error_exit:                                       ; preds = %if.then14, %if.then3
  call void @llvm.dbg.label(metadata !1093), !dbg !1094
  %59 = load i32, i32* %status, align 4, !dbg !1095
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1096
  %call67 = call i32 @acpi_ds_method_error(i32 %59, %struct.acpi_walk_state* %60) #3, !dbg !1097
  store i32 %call67, i32* %status, align 4, !dbg !1098
  %61 = load i32, i32* %status, align 4, !dbg !1099
  store i32 %61, i32* %retval, align 4, !dbg !1099
  br label %return, !dbg !1099

return:                                           ; preds = %error_exit, %sw.epilog, %if.then62, %if.end22
  %62 = load i32, i32* %retval, align 4, !dbg !1100
  ret i32 %62, !dbg !1100
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_load2_begin_op(%struct.acpi_walk_state*, %union.acpi_parse_object**) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_opens_scope(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_scope_stack_pop(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_exec_begin_control_op(%struct.acpi_walk_state*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node*, i32, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_method_error(i32, %struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_exec_end_op(%struct.acpi_walk_state* %walk_state) #0 !dbg !1101 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %op_type = alloca i32, align 4
  %op_class = alloca i32, align 4
  %next_op = alloca %union.acpi_parse_object*, align 8
  %first_arg = alloca %union.acpi_parse_object*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1102, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1106, metadata !DIExpression()), !dbg !1107
  store i32 0, i32* %status, align 4, !dbg !1107
  call void @llvm.dbg.declare(metadata i32* %op_type, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata i32* %op_class, metadata !1110, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %next_op, metadata !1112, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %first_arg, metadata !1114, metadata !DIExpression()), !dbg !1115
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1116
  %op1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 40, !dbg !1117
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op1, align 8, !dbg !1117
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %op, align 8, !dbg !1118
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1119
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 41, !dbg !1120
  %3 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1120
  %type = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %3, i32 0, i32 5, !dbg !1121
  %4 = load i8, i8* %type, align 4, !dbg !1121
  %conv = zext i8 %4 to i32, !dbg !1119
  store i32 %conv, i32* %op_type, align 4, !dbg !1122
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1123
  %op_info2 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 41, !dbg !1124
  %6 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info2, align 8, !dbg !1124
  %class = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %6, i32 0, i32 4, !dbg !1125
  %7 = load i8, i8* %class, align 1, !dbg !1125
  %conv3 = zext i8 %7 to i32, !dbg !1123
  store i32 %conv3, i32* %op_class, align 4, !dbg !1126
  %8 = load i32, i32* %op_class, align 4, !dbg !1127
  %cmp = icmp eq i32 %8, 10, !dbg !1129
  br i1 %cmp, label %if.then, label %if.end, !dbg !1130

if.then:                                          ; preds = %entry
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1131
  %common = bitcast %union.acpi_parse_object* %9 to %struct.acpi_parse_obj_common*, !dbg !1131
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !1131
  %10 = load i16, i16* %aml_opcode, align 2, !dbg !1131
  %conv5 = zext i16 %10 to i32, !dbg !1131
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 347, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %conv5) #3, !dbg !1131
  store i32 14, i32* %retval, align 4, !dbg !1133
  br label %return, !dbg !1133

if.end:                                           ; preds = %entry
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1134
  %common6 = bitcast %union.acpi_parse_object* %11 to %struct.acpi_parse_obj_common*, !dbg !1135
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common6, i32 0, i32 7, !dbg !1136
  %arg = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !1137
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1137
  store %union.acpi_parse_object* %12, %union.acpi_parse_object** %first_arg, align 8, !dbg !1138
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1139
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 5, !dbg !1140
  store i8 0, i8* %num_operands, align 1, !dbg !1141
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1142
  %operand_index = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 6, !dbg !1143
  store i8 0, i8* %operand_index, align 2, !dbg !1144
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1145
  %return_desc = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 45, !dbg !1146
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_desc, align 8, !dbg !1147
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1148
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 43, !dbg !1149
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %result_obj, align 8, !dbg !1150
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1151
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1152
  %19 = load i32, i32* %op_class, align 4, !dbg !1153
  %call = call i32 @acpi_db_single_step(%struct.acpi_walk_state* %17, %union.acpi_parse_object* %18, i32 %19) #3, !dbg !1154
  store i32 %call, i32* %status, align 4, !dbg !1155
  %20 = load i32, i32* %status, align 4, !dbg !1156
  %tobool = icmp ne i32 %20, 0, !dbg !1156
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !1158

if.then7:                                         ; preds = %if.end
  %21 = load i32, i32* %status, align 4, !dbg !1159
  store i32 %21, i32* %retval, align 4, !dbg !1159
  br label %return, !dbg !1159

if.end8:                                          ; preds = %if.end
  %22 = load i32, i32* %op_class, align 4, !dbg !1161
  switch i32 %22, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb18
  ], !dbg !1162

sw.bb:                                            ; preds = %if.end8
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1163
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 3, !dbg !1166
  %24 = load i16, i16* %opcode, align 2, !dbg !1166
  %conv9 = zext i16 %24 to i32, !dbg !1163
  %cmp10 = icmp eq i32 %conv9, 45, !dbg !1167
  br i1 %cmp10, label %if.then12, label %if.end17, !dbg !1168

if.then12:                                        ; preds = %sw.bb
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1169
  %call13 = call i32 @acpi_ds_evaluate_name_path(%struct.acpi_walk_state* %25) #3, !dbg !1171
  store i32 %call13, i32* %status, align 4, !dbg !1172
  %26 = load i32, i32* %status, align 4, !dbg !1173
  %tobool14 = icmp ne i32 %26, 0, !dbg !1173
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1175

if.then15:                                        ; preds = %if.then12
  br label %cleanup, !dbg !1176

if.end16:                                         ; preds = %if.then12
  br label %if.end17, !dbg !1178

if.end17:                                         ; preds = %if.end16, %sw.bb
  br label %sw.epilog232, !dbg !1179

sw.bb18:                                          ; preds = %if.end8
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1180
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %first_arg, align 8, !dbg !1181
  %call19 = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %27, %union.acpi_parse_object* %28) #3, !dbg !1182
  store i32 %call19, i32* %status, align 4, !dbg !1183
  %29 = load i32, i32* %status, align 4, !dbg !1184
  %tobool20 = icmp ne i32 %29, 0, !dbg !1184
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !1186

if.then21:                                        ; preds = %sw.bb18
  br label %cleanup, !dbg !1187

if.end22:                                         ; preds = %sw.bb18
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1189
  %op_info23 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 41, !dbg !1191
  %31 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info23, align 8, !dbg !1191
  %flags = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %31, i32 0, i32 2, !dbg !1192
  %32 = load i16, i16* %flags, align 4, !dbg !1192
  %conv24 = zext i16 %32 to i32, !dbg !1189
  %and = and i32 %conv24, 16384, !dbg !1193
  %tobool25 = icmp ne i32 %and, 0, !dbg !1193
  br i1 %tobool25, label %if.end31, label %if.then26, !dbg !1194

if.then26:                                        ; preds = %if.end22
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1195
  %opcode27 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %33, i32 0, i32 3, !dbg !1197
  %34 = load i16, i16* %opcode27, align 2, !dbg !1197
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1198
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 28, !dbg !1199
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1200
  %num_operands28 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %36, i32 0, i32 5, !dbg !1201
  %37 = load i8, i8* %num_operands28, align 1, !dbg !1201
  %conv29 = zext i8 %37 to i32, !dbg !1200
  %sub = sub i32 %conv29, 1, !dbg !1202
  %idxprom = sext i32 %sub to i64, !dbg !1198
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 %idxprom, !dbg !1198
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1203
  %call30 = call i32 @acpi_ex_resolve_operands(i16 zeroext %34, %union.acpi_operand_object** %arrayidx, %struct.acpi_walk_state* %38) #3, !dbg !1204
  store i32 %call30, i32* %status, align 4, !dbg !1205
  br label %if.end31, !dbg !1206

if.end31:                                         ; preds = %if.then26, %if.end22
  %39 = load i32, i32* %status, align 4, !dbg !1207
  %tobool32 = icmp ne i32 %39, 0, !dbg !1207
  br i1 %tobool32, label %if.else, label %if.then33, !dbg !1209

if.then33:                                        ; preds = %if.end31
  %40 = load i32, i32* %op_type, align 4, !dbg !1210
  %idxprom34 = zext i32 %40 to i64, !dbg !1212
  %arrayidx35 = getelementptr [12 x i32 (%struct.acpi_walk_state*)*], [12 x i32 (%struct.acpi_walk_state*)*]* @acpi_gbl_op_type_dispatch, i64 0, i64 %idxprom34, !dbg !1212
  %41 = load i32 (%struct.acpi_walk_state*)*, i32 (%struct.acpi_walk_state*)** %arrayidx35, align 8, !dbg !1212
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1213
  %call36 = call i32 %41(%struct.acpi_walk_state* %42) #3, !dbg !1212
  store i32 %call36, i32* %status, align 4, !dbg !1214
  br label %if.end87, !dbg !1215

if.else:                                          ; preds = %if.end31
  %43 = load i32, i32* %status, align 4, !dbg !1216
  %cmp37 = icmp eq i32 %43, 12293, !dbg !1219
  br i1 %cmp37, label %land.lhs.true, label %if.else83, !dbg !1220

land.lhs.true:                                    ; preds = %if.else
  %44 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1221
  %opcode39 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %44, i32 0, i32 3, !dbg !1222
  %45 = load i16, i16* %opcode39, align 2, !dbg !1222
  %conv40 = zext i16 %45 to i32, !dbg !1221
  %cmp41 = icmp eq i32 %conv40, 112, !dbg !1223
  br i1 %cmp41, label %land.lhs.true43, label %if.else83, !dbg !1224

land.lhs.true43:                                  ; preds = %land.lhs.true
  %46 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1225
  %operands44 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %46, i32 0, i32 28, !dbg !1226
  %arrayidx45 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands44, i64 0, i64 0, !dbg !1225
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx45, align 8, !dbg !1225
  %common46 = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_common*, !dbg !1227
  %type47 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common46, i32 0, i32 2, !dbg !1228
  %48 = load i8, i8* %type47, align 1, !dbg !1228
  %conv48 = zext i8 %48 to i32, !dbg !1225
  %cmp49 = icmp eq i32 %conv48, 20, !dbg !1229
  br i1 %cmp49, label %land.lhs.true51, label %if.else83, !dbg !1230

land.lhs.true51:                                  ; preds = %land.lhs.true43
  %49 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1231
  %operands52 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %49, i32 0, i32 28, !dbg !1232
  %arrayidx53 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands52, i64 0, i64 1, !dbg !1231
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx53, align 8, !dbg !1231
  %common54 = bitcast %union.acpi_operand_object* %50 to %struct.acpi_object_common*, !dbg !1233
  %type55 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common54, i32 0, i32 2, !dbg !1234
  %51 = load i8, i8* %type55, align 1, !dbg !1234
  %conv56 = zext i8 %51 to i32, !dbg !1231
  %cmp57 = icmp eq i32 %conv56, 20, !dbg !1235
  br i1 %cmp57, label %land.lhs.true59, label %if.else83, !dbg !1236

land.lhs.true59:                                  ; preds = %land.lhs.true51
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1237
  %operands60 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %52, i32 0, i32 28, !dbg !1238
  %arrayidx61 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands60, i64 0, i64 0, !dbg !1237
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx61, align 8, !dbg !1237
  %reference = bitcast %union.acpi_operand_object* %53 to %struct.acpi_object_reference*, !dbg !1239
  %class62 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1240
  %54 = load i8, i8* %class62, align 1, !dbg !1240
  %conv63 = zext i8 %54 to i32, !dbg !1237
  %55 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1241
  %operands64 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %55, i32 0, i32 28, !dbg !1242
  %arrayidx65 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands64, i64 0, i64 1, !dbg !1241
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx65, align 8, !dbg !1241
  %reference66 = bitcast %union.acpi_operand_object* %56 to %struct.acpi_object_reference*, !dbg !1243
  %class67 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference66, i32 0, i32 5, !dbg !1244
  %57 = load i8, i8* %class67, align 1, !dbg !1244
  %conv68 = zext i8 %57 to i32, !dbg !1241
  %cmp69 = icmp eq i32 %conv63, %conv68, !dbg !1245
  br i1 %cmp69, label %land.lhs.true71, label %if.else83, !dbg !1246

land.lhs.true71:                                  ; preds = %land.lhs.true59
  %58 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1247
  %operands72 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %58, i32 0, i32 28, !dbg !1248
  %arrayidx73 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands72, i64 0, i64 0, !dbg !1247
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx73, align 8, !dbg !1247
  %reference74 = bitcast %union.acpi_operand_object* %59 to %struct.acpi_object_reference*, !dbg !1249
  %value75 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference74, i32 0, i32 13, !dbg !1250
  %60 = load i32, i32* %value75, align 8, !dbg !1250
  %61 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1251
  %operands76 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %61, i32 0, i32 28, !dbg !1252
  %arrayidx77 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands76, i64 0, i64 1, !dbg !1251
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx77, align 8, !dbg !1251
  %reference78 = bitcast %union.acpi_operand_object* %62 to %struct.acpi_object_reference*, !dbg !1253
  %value79 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference78, i32 0, i32 13, !dbg !1254
  %63 = load i32, i32* %value79, align 8, !dbg !1254
  %cmp80 = icmp eq i32 %60, %63, !dbg !1255
  br i1 %cmp80, label %if.then82, label %if.else83, !dbg !1256

if.then82:                                        ; preds = %land.lhs.true71
  store i32 0, i32* %status, align 4, !dbg !1257
  br label %if.end86, !dbg !1259

if.else83:                                        ; preds = %land.lhs.true71, %land.lhs.true59, %land.lhs.true51, %land.lhs.true43, %land.lhs.true, %if.else
  %64 = load i32, i32* %status, align 4, !dbg !1260
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1260
  %opcode84 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %65, i32 0, i32 3, !dbg !1260
  %66 = load i16, i16* %opcode84, align 2, !dbg !1260
  %call85 = call i8* @acpi_ps_get_opcode_name(i16 zeroext %66) #3, !dbg !1260
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 431, i32 %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %call85) #3, !dbg !1260
  br label %if.end86

if.end86:                                         ; preds = %if.else83, %if.then82
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then33
  %67 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1262
  call void @acpi_ds_clear_operands(%struct.acpi_walk_state* %67) #3, !dbg !1263
  %68 = load i32, i32* %status, align 4, !dbg !1264
  %tobool88 = icmp ne i32 %68, 0, !dbg !1264
  br i1 %tobool88, label %if.end95, label %land.lhs.true89, !dbg !1266

land.lhs.true89:                                  ; preds = %if.end87
  %69 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1267
  %result_obj90 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %69, i32 0, i32 43, !dbg !1268
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj90, align 8, !dbg !1268
  %tobool91 = icmp ne %union.acpi_operand_object* %70, null, !dbg !1267
  br i1 %tobool91, label %if.then92, label %if.end95, !dbg !1269

if.then92:                                        ; preds = %land.lhs.true89
  %71 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1270
  %result_obj93 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %71, i32 0, i32 43, !dbg !1272
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj93, align 8, !dbg !1272
  %73 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1273
  %call94 = call i32 @acpi_ds_result_push(%union.acpi_operand_object* %72, %struct.acpi_walk_state* %73) #3, !dbg !1274
  store i32 %call94, i32* %status, align 4, !dbg !1275
  br label %if.end95, !dbg !1276

if.end95:                                         ; preds = %if.then92, %land.lhs.true89, %if.end87
  br label %sw.epilog232, !dbg !1277

sw.default:                                       ; preds = %if.end8
  %74 = load i32, i32* %op_type, align 4, !dbg !1278
  switch i32 %74, label %sw.default227 [
    i32 20, label %sw.bb96
    i32 17, label %sw.bb98
    i32 18, label %sw.bb137
    i32 19, label %sw.bb146
    i32 22, label %sw.bb185
    i32 24, label %sw.bb185
    i32 23, label %sw.bb185
    i32 21, label %sw.bb185
    i32 26, label %sw.bb225
    i32 27, label %sw.bb226
  ], !dbg !1279

sw.bb96:                                          ; preds = %sw.default
  %75 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1280
  %76 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1282
  %call97 = call i32 @acpi_ds_exec_end_control_op(%struct.acpi_walk_state* %75, %union.acpi_parse_object* %76) #3, !dbg !1283
  store i32 %call97, i32* %status, align 4, !dbg !1284
  br label %sw.epilog231, !dbg !1285

sw.bb98:                                          ; preds = %sw.default
  %77 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1286
  %asl = bitcast %union.acpi_parse_object* %77 to %struct.acpi_parse_obj_asl*, !dbg !1288
  %parent = getelementptr inbounds %struct.acpi_parse_obj_asl, %struct.acpi_parse_obj_asl* %asl, i32 0, i32 0, !dbg !1289
  %78 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !1289
  %tobool99 = icmp ne %union.acpi_parse_object* %78, null, !dbg !1290
  br i1 %tobool99, label %land.lhs.true100, label %if.end127, !dbg !1291

land.lhs.true100:                                 ; preds = %sw.bb98
  %79 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1292
  %asl101 = bitcast %union.acpi_parse_object* %79 to %struct.acpi_parse_obj_asl*, !dbg !1293
  %parent102 = getelementptr inbounds %struct.acpi_parse_obj_asl, %struct.acpi_parse_obj_asl* %asl101, i32 0, i32 0, !dbg !1294
  %80 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent102, align 8, !dbg !1294
  %asl103 = bitcast %union.acpi_parse_object* %80 to %struct.acpi_parse_obj_asl*, !dbg !1295
  %aml_opcode104 = getelementptr inbounds %struct.acpi_parse_obj_asl, %struct.acpi_parse_obj_asl* %asl103, i32 0, i32 3, !dbg !1296
  %81 = load i16, i16* %aml_opcode104, align 2, !dbg !1296
  %conv105 = zext i16 %81 to i32, !dbg !1292
  %cmp106 = icmp eq i32 %conv105, 18, !dbg !1297
  br i1 %cmp106, label %if.then115, label %lor.lhs.false, !dbg !1298

lor.lhs.false:                                    ; preds = %land.lhs.true100
  %82 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1299
  %asl108 = bitcast %union.acpi_parse_object* %82 to %struct.acpi_parse_obj_asl*, !dbg !1300
  %parent109 = getelementptr inbounds %struct.acpi_parse_obj_asl, %struct.acpi_parse_obj_asl* %asl108, i32 0, i32 0, !dbg !1301
  %83 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent109, align 8, !dbg !1301
  %asl110 = bitcast %union.acpi_parse_object* %83 to %struct.acpi_parse_obj_asl*, !dbg !1302
  %aml_opcode111 = getelementptr inbounds %struct.acpi_parse_obj_asl, %struct.acpi_parse_obj_asl* %asl110, i32 0, i32 3, !dbg !1303
  %84 = load i16, i16* %aml_opcode111, align 2, !dbg !1303
  %conv112 = zext i16 %84 to i32, !dbg !1299
  %cmp113 = icmp eq i32 %conv112, 19, !dbg !1304
  br i1 %cmp113, label %if.then115, label %if.end127, !dbg !1305

if.then115:                                       ; preds = %lor.lhs.false, %land.lhs.true100
  %85 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1306
  %asl116 = bitcast %union.acpi_parse_object* %85 to %struct.acpi_parse_obj_asl*, !dbg !1308
  %value117 = getelementptr inbounds %struct.acpi_parse_obj_asl, %struct.acpi_parse_obj_asl* %asl116, i32 0, i32 7, !dbg !1309
  %arg118 = bitcast %union.acpi_parse_value* %value117 to %union.acpi_parse_object**, !dbg !1310
  %86 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg118, align 8, !dbg !1310
  %asl119 = bitcast %union.acpi_parse_object* %86 to %struct.acpi_parse_obj_asl*, !dbg !1311
  %node = getelementptr inbounds %struct.acpi_parse_obj_asl, %struct.acpi_parse_obj_asl* %asl119, i32 0, i32 6, !dbg !1312
  %87 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1312
  %88 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1313
  %common120 = bitcast %union.acpi_parse_object* %88 to %struct.acpi_parse_obj_common*, !dbg !1314
  %node121 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common120, i32 0, i32 6, !dbg !1315
  store %struct.acpi_namespace_node* %87, %struct.acpi_namespace_node** %node121, align 8, !dbg !1316
  %89 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1317
  %asl122 = bitcast %union.acpi_parse_object* %89 to %struct.acpi_parse_obj_asl*, !dbg !1318
  %value123 = getelementptr inbounds %struct.acpi_parse_obj_asl, %struct.acpi_parse_obj_asl* %asl122, i32 0, i32 7, !dbg !1319
  %arg124 = bitcast %union.acpi_parse_value* %value123 to %union.acpi_parse_object**, !dbg !1320
  %90 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg124, align 8, !dbg !1320
  %asl125 = bitcast %union.acpi_parse_object* %90 to %struct.acpi_parse_obj_asl*, !dbg !1321
  %node126 = getelementptr inbounds %struct.acpi_parse_obj_asl, %struct.acpi_parse_obj_asl* %asl125, i32 0, i32 6, !dbg !1322
  %91 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node126, align 8, !dbg !1322
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %91, i32 0, i32 0, !dbg !1323
  %92 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1323
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %92) #3, !dbg !1324
  store i32 0, i32* %retval, align 4, !dbg !1325
  br label %return, !dbg !1325

if.end127:                                        ; preds = %lor.lhs.false, %sw.bb98
  %93 = load %union.acpi_parse_object*, %union.acpi_parse_object** %first_arg, align 8, !dbg !1326
  store %union.acpi_parse_object* %93, %union.acpi_parse_object** %next_op, align 8, !dbg !1327
  %94 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next_op, align 8, !dbg !1328
  %common128 = bitcast %union.acpi_parse_object* %94 to %struct.acpi_parse_obj_common*, !dbg !1329
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common128, i32 0, i32 5, !dbg !1330
  %95 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !1330
  store %union.acpi_parse_object* %95, %union.acpi_parse_object** %next_op, align 8, !dbg !1331
  %96 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1332
  %97 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next_op, align 8, !dbg !1333
  %call129 = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %96, %union.acpi_parse_object* %97) #3, !dbg !1334
  store i32 %call129, i32* %status, align 4, !dbg !1335
  %98 = load i32, i32* %status, align 4, !dbg !1336
  %tobool130 = icmp ne i32 %98, 0, !dbg !1336
  br i1 %tobool130, label %if.then131, label %if.end132, !dbg !1338

if.then131:                                       ; preds = %if.end127
  br label %sw.epilog231, !dbg !1339

if.end132:                                        ; preds = %if.end127
  %99 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1341
  %call133 = call i32 @acpi_ds_resolve_operands(%struct.acpi_walk_state* %99) #3, !dbg !1342
  store i32 %call133, i32* %status, align 4, !dbg !1343
  %100 = load i32, i32* %status, align 4, !dbg !1344
  %tobool134 = icmp ne i32 %100, 0, !dbg !1344
  br i1 %tobool134, label %if.then135, label %if.end136, !dbg !1346

if.then135:                                       ; preds = %if.end132
  %101 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1347
  call void @acpi_ds_clear_operands(%struct.acpi_walk_state* %101) #3, !dbg !1349
  br label %sw.epilog231, !dbg !1350

if.end136:                                        ; preds = %if.end132
  store i32 16392, i32* %status, align 4, !dbg !1351
  %102 = load i32, i32* %status, align 4, !dbg !1352
  store i32 %102, i32* %retval, align 4, !dbg !1352
  br label %return, !dbg !1352

sw.bb137:                                         ; preds = %sw.default
  %103 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1353
  %call138 = call i32 @acpi_ds_load2_end_op(%struct.acpi_walk_state* %103) #3, !dbg !1354
  store i32 %call138, i32* %status, align 4, !dbg !1355
  %104 = load i32, i32* %status, align 4, !dbg !1356
  %tobool139 = icmp ne i32 %104, 0, !dbg !1356
  br i1 %tobool139, label %if.then140, label %if.end141, !dbg !1358

if.then140:                                       ; preds = %sw.bb137
  br label %sw.epilog231, !dbg !1359

if.end141:                                        ; preds = %sw.bb137
  %105 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1361
  %106 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1362
  %call142 = call i32 @acpi_ds_eval_buffer_field_operands(%struct.acpi_walk_state* %105, %union.acpi_parse_object* %106) #3, !dbg !1363
  store i32 %call142, i32* %status, align 4, !dbg !1364
  %107 = load i32, i32* %status, align 4, !dbg !1365
  %tobool143 = icmp ne i32 %107, 0, !dbg !1365
  br i1 %tobool143, label %if.then144, label %if.end145, !dbg !1367

if.then144:                                       ; preds = %if.end141
  br label %sw.epilog231, !dbg !1368

if.end145:                                        ; preds = %if.end141
  br label %sw.epilog231, !dbg !1370

sw.bb146:                                         ; preds = %sw.default
  %108 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1371
  %common147 = bitcast %union.acpi_parse_object* %108 to %struct.acpi_parse_obj_common*, !dbg !1372
  %parent148 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common147, i32 0, i32 0, !dbg !1373
  %109 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent148, align 8, !dbg !1373
  %common149 = bitcast %union.acpi_parse_object* %109 to %struct.acpi_parse_obj_common*, !dbg !1374
  %aml_opcode150 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common149, i32 0, i32 3, !dbg !1375
  %110 = load i16, i16* %aml_opcode150, align 2, !dbg !1375
  %conv151 = zext i16 %110 to i32, !dbg !1371
  switch i32 %conv151, label %sw.default177 [
    i32 8, label %sw.bb152
    i32 55, label %sw.bb170
  ], !dbg !1376

sw.bb152:                                         ; preds = %sw.bb146
  %111 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1377
  %common153 = bitcast %union.acpi_parse_object* %111 to %struct.acpi_parse_obj_common*, !dbg !1379
  %parent154 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common153, i32 0, i32 0, !dbg !1380
  %112 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent154, align 8, !dbg !1380
  %common155 = bitcast %union.acpi_parse_object* %112 to %struct.acpi_parse_obj_common*, !dbg !1381
  %node156 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common155, i32 0, i32 6, !dbg !1382
  %113 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node156, align 8, !dbg !1382
  %114 = bitcast %struct.acpi_namespace_node* %113 to i8*, !dbg !1383
  %115 = bitcast i8* %114 to %union.acpi_operand_object*, !dbg !1383
  %116 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1384
  %operands157 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %116, i32 0, i32 28, !dbg !1385
  %arrayidx158 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands157, i64 0, i64 0, !dbg !1384
  store %union.acpi_operand_object* %115, %union.acpi_operand_object** %arrayidx158, align 8, !dbg !1386
  %117 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1387
  %num_operands159 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %117, i32 0, i32 5, !dbg !1388
  store i8 1, i8* %num_operands159, align 1, !dbg !1389
  %118 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1390
  %119 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1391
  %common160 = bitcast %union.acpi_parse_object* %119 to %struct.acpi_parse_obj_common*, !dbg !1392
  %parent161 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common160, i32 0, i32 0, !dbg !1393
  %120 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent161, align 8, !dbg !1393
  %common162 = bitcast %union.acpi_parse_object* %120 to %struct.acpi_parse_obj_common*, !dbg !1394
  %node163 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common162, i32 0, i32 6, !dbg !1395
  %121 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node163, align 8, !dbg !1395
  %122 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1396
  %common164 = bitcast %union.acpi_parse_object* %122 to %struct.acpi_parse_obj_common*, !dbg !1397
  %parent165 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common164, i32 0, i32 0, !dbg !1398
  %123 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent165, align 8, !dbg !1398
  %call166 = call i32 @acpi_ds_create_node(%struct.acpi_walk_state* %118, %struct.acpi_namespace_node* %121, %union.acpi_parse_object* %123) #3, !dbg !1399
  store i32 %call166, i32* %status, align 4, !dbg !1400
  %124 = load i32, i32* %status, align 4, !dbg !1401
  %tobool167 = icmp ne i32 %124, 0, !dbg !1401
  br i1 %tobool167, label %if.then168, label %if.end169, !dbg !1403

if.then168:                                       ; preds = %sw.bb152
  br label %sw.epilog, !dbg !1404

if.end169:                                        ; preds = %sw.bb152
  br label %sw.bb170, !dbg !1401

sw.bb170:                                         ; preds = %sw.bb146, %if.end169
  %125 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1406
  %126 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1407
  %127 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1408
  %common171 = bitcast %union.acpi_parse_object* %127 to %struct.acpi_parse_obj_common*, !dbg !1409
  %parent172 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common171, i32 0, i32 0, !dbg !1410
  %128 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent172, align 8, !dbg !1410
  %common173 = bitcast %union.acpi_parse_object* %128 to %struct.acpi_parse_obj_common*, !dbg !1411
  %node174 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common173, i32 0, i32 6, !dbg !1412
  %129 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node174, align 8, !dbg !1412
  %call175 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %129) #3, !dbg !1413
  %call176 = call i32 @acpi_ds_eval_data_object_operands(%struct.acpi_walk_state* %125, %union.acpi_parse_object* %126, %union.acpi_operand_object* %call175) #3, !dbg !1414
  store i32 %call176, i32* %status, align 4, !dbg !1415
  br label %sw.epilog, !dbg !1416

sw.default177:                                    ; preds = %sw.bb146
  %130 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1417
  %131 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1418
  %call178 = call i32 @acpi_ds_eval_data_object_operands(%struct.acpi_walk_state* %130, %union.acpi_parse_object* %131, %union.acpi_operand_object* null) #3, !dbg !1419
  store i32 %call178, i32* %status, align 4, !dbg !1420
  br label %sw.epilog, !dbg !1421

sw.epilog:                                        ; preds = %sw.default177, %sw.bb170, %if.then168
  %132 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1422
  %result_obj179 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %132, i32 0, i32 43, !dbg !1424
  %133 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj179, align 8, !dbg !1424
  %tobool180 = icmp ne %union.acpi_operand_object* %133, null, !dbg !1422
  br i1 %tobool180, label %if.then181, label %if.end184, !dbg !1425

if.then181:                                       ; preds = %sw.epilog
  %134 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1426
  %result_obj182 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %134, i32 0, i32 43, !dbg !1428
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj182, align 8, !dbg !1428
  %136 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1429
  %call183 = call i32 @acpi_ds_result_push(%union.acpi_operand_object* %135, %struct.acpi_walk_state* %136) #3, !dbg !1430
  store i32 %call183, i32* %status, align 4, !dbg !1431
  br label %if.end184, !dbg !1432

if.end184:                                        ; preds = %if.then181, %sw.epilog
  br label %sw.epilog231, !dbg !1433

sw.bb185:                                         ; preds = %sw.default, %sw.default, %sw.default, %sw.default
  %137 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1434
  %call186 = call i32 @acpi_ds_load2_end_op(%struct.acpi_walk_state* %137) #3, !dbg !1435
  store i32 %call186, i32* %status, align 4, !dbg !1436
  %138 = load i32, i32* %status, align 4, !dbg !1437
  %tobool187 = icmp ne i32 %138, 0, !dbg !1437
  br i1 %tobool187, label %if.then188, label %if.end189, !dbg !1439

if.then188:                                       ; preds = %sw.bb185
  br label %sw.epilog231, !dbg !1440

if.end189:                                        ; preds = %sw.bb185
  %139 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1442
  %common190 = bitcast %union.acpi_parse_object* %139 to %struct.acpi_parse_obj_common*, !dbg !1444
  %aml_opcode191 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common190, i32 0, i32 3, !dbg !1445
  %140 = load i16, i16* %aml_opcode191, align 2, !dbg !1445
  %conv192 = zext i16 %140 to i32, !dbg !1442
  %cmp193 = icmp eq i32 %conv192, 23424, !dbg !1446
  br i1 %cmp193, label %if.then195, label %if.else200, !dbg !1447

if.then195:                                       ; preds = %if.end189
  %141 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1448
  %142 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1450
  %call196 = call i32 @acpi_ds_eval_region_operands(%struct.acpi_walk_state* %141, %union.acpi_parse_object* %142) #3, !dbg !1451
  store i32 %call196, i32* %status, align 4, !dbg !1452
  %143 = load i32, i32* %status, align 4, !dbg !1453
  %tobool197 = icmp ne i32 %143, 0, !dbg !1453
  br i1 %tobool197, label %if.then198, label %if.end199, !dbg !1455

if.then198:                                       ; preds = %if.then195
  br label %sw.epilog231, !dbg !1456

if.end199:                                        ; preds = %if.then195
  br label %if.end224, !dbg !1458

if.else200:                                       ; preds = %if.end189
  %144 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1459
  %common201 = bitcast %union.acpi_parse_object* %144 to %struct.acpi_parse_obj_common*, !dbg !1461
  %aml_opcode202 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common201, i32 0, i32 3, !dbg !1462
  %145 = load i16, i16* %aml_opcode202, align 2, !dbg !1462
  %conv203 = zext i16 %145 to i32, !dbg !1459
  %cmp204 = icmp eq i32 %conv203, 23432, !dbg !1463
  br i1 %cmp204, label %if.then206, label %if.else211, !dbg !1464

if.then206:                                       ; preds = %if.else200
  %146 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1465
  %147 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1467
  %call207 = call i32 @acpi_ds_eval_table_region_operands(%struct.acpi_walk_state* %146, %union.acpi_parse_object* %147) #3, !dbg !1468
  store i32 %call207, i32* %status, align 4, !dbg !1469
  %148 = load i32, i32* %status, align 4, !dbg !1470
  %tobool208 = icmp ne i32 %148, 0, !dbg !1470
  br i1 %tobool208, label %if.then209, label %if.end210, !dbg !1472

if.then209:                                       ; preds = %if.then206
  br label %sw.epilog231, !dbg !1473

if.end210:                                        ; preds = %if.then206
  br label %if.end223, !dbg !1475

if.else211:                                       ; preds = %if.else200
  %149 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1476
  %common212 = bitcast %union.acpi_parse_object* %149 to %struct.acpi_parse_obj_common*, !dbg !1478
  %aml_opcode213 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common212, i32 0, i32 3, !dbg !1479
  %150 = load i16, i16* %aml_opcode213, align 2, !dbg !1479
  %conv214 = zext i16 %150 to i32, !dbg !1476
  %cmp215 = icmp eq i32 %conv214, 23431, !dbg !1480
  br i1 %cmp215, label %if.then217, label %if.end222, !dbg !1481

if.then217:                                       ; preds = %if.else211
  %151 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1482
  %152 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1484
  %call218 = call i32 @acpi_ds_eval_bank_field_operands(%struct.acpi_walk_state* %151, %union.acpi_parse_object* %152) #3, !dbg !1485
  store i32 %call218, i32* %status, align 4, !dbg !1486
  %153 = load i32, i32* %status, align 4, !dbg !1487
  %tobool219 = icmp ne i32 %153, 0, !dbg !1487
  br i1 %tobool219, label %if.then220, label %if.end221, !dbg !1489

if.then220:                                       ; preds = %if.then217
  br label %sw.epilog231, !dbg !1490

if.end221:                                        ; preds = %if.then217
  br label %if.end222, !dbg !1492

if.end222:                                        ; preds = %if.end221, %if.else211
  br label %if.end223

if.end223:                                        ; preds = %if.end222, %if.end210
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %if.end199
  br label %sw.epilog231, !dbg !1493

sw.bb225:                                         ; preds = %sw.default
  %154 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1494
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 681, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), %union.acpi_parse_object* %154) #3, !dbg !1494
  store i32 14, i32* %retval, align 4, !dbg !1495
  br label %return, !dbg !1495

sw.bb226:                                         ; preds = %sw.default
  br label %sw.epilog231, !dbg !1496

sw.default227:                                    ; preds = %sw.default
  %155 = load i32, i32* %op_class, align 4, !dbg !1497
  %156 = load i32, i32* %op_type, align 4, !dbg !1497
  %157 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1497
  %common228 = bitcast %union.acpi_parse_object* %157 to %struct.acpi_parse_obj_common*, !dbg !1497
  %aml_opcode229 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common228, i32 0, i32 3, !dbg !1497
  %158 = load i16, i16* %aml_opcode229, align 2, !dbg !1497
  %conv230 = zext i16 %158 to i32, !dbg !1497
  %159 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1497
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 694, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %155, i32 %156, i32 %conv230, %union.acpi_parse_object* %159) #3, !dbg !1497
  store i32 14, i32* %status, align 4, !dbg !1498
  br label %sw.epilog231, !dbg !1499

sw.epilog231:                                     ; preds = %sw.default227, %sw.bb226, %if.end224, %if.then220, %if.then209, %if.then198, %if.then188, %if.end184, %if.end145, %if.then144, %if.then140, %if.then135, %if.then131, %sw.bb96
  br label %sw.epilog232, !dbg !1500

sw.epilog232:                                     ; preds = %sw.epilog231, %if.end95, %if.end17
  %160 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1501
  %result_obj233 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %160, i32 0, i32 43, !dbg !1502
  %161 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj233, align 8, !dbg !1502
  %call234 = call zeroext i8 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object* %161) #3, !dbg !1503
  %162 = load i32, i32* %status, align 4, !dbg !1504
  %tobool235 = icmp ne i32 %162, 0, !dbg !1504
  br i1 %tobool235, label %if.end252, label %land.lhs.true236, !dbg !1506

land.lhs.true236:                                 ; preds = %sw.epilog232
  %163 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1507
  %control_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %163, i32 0, i32 32, !dbg !1508
  %164 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !1508
  %tobool237 = icmp ne %union.acpi_generic_state* %164, null, !dbg !1509
  br i1 %tobool237, label %land.lhs.true238, label %if.end252, !dbg !1510

land.lhs.true238:                                 ; preds = %land.lhs.true236
  %165 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1511
  %control_state239 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %165, i32 0, i32 32, !dbg !1512
  %166 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state239, align 8, !dbg !1512
  %common240 = bitcast %union.acpi_generic_state* %166 to %struct.acpi_common_state*, !dbg !1513
  %state = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common240, i32 0, i32 4, !dbg !1514
  %167 = load i16, i16* %state, align 4, !dbg !1514
  %conv241 = zext i16 %167 to i32, !dbg !1511
  %cmp242 = icmp eq i32 %conv241, 194, !dbg !1515
  br i1 %cmp242, label %land.lhs.true244, label %if.end252, !dbg !1516

land.lhs.true244:                                 ; preds = %land.lhs.true238
  %168 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1517
  %control_state245 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %168, i32 0, i32 32, !dbg !1518
  %169 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state245, align 8, !dbg !1518
  %control = bitcast %union.acpi_generic_state* %169 to %struct.acpi_control_state*, !dbg !1519
  %predicate_op = getelementptr inbounds %struct.acpi_control_state, %struct.acpi_control_state* %control, i32 0, i32 6, !dbg !1520
  %170 = load %union.acpi_parse_object*, %union.acpi_parse_object** %predicate_op, align 8, !dbg !1520
  %171 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1521
  %cmp246 = icmp eq %union.acpi_parse_object* %170, %171, !dbg !1522
  br i1 %cmp246, label %if.then248, label %if.end252, !dbg !1523

if.then248:                                       ; preds = %land.lhs.true244
  %172 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1524
  %173 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1526
  %result_obj249 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %173, i32 0, i32 43, !dbg !1527
  %174 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj249, align 8, !dbg !1527
  %call250 = call i32 @acpi_ds_get_predicate_value(%struct.acpi_walk_state* %172, %union.acpi_operand_object* %174) #3, !dbg !1528
  store i32 %call250, i32* %status, align 4, !dbg !1529
  %175 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1530
  %result_obj251 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %175, i32 0, i32 43, !dbg !1531
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %result_obj251, align 8, !dbg !1532
  br label %if.end252, !dbg !1533

if.end252:                                        ; preds = %if.then248, %land.lhs.true244, %land.lhs.true238, %land.lhs.true236, %sw.epilog232
  br label %cleanup, !dbg !1534

cleanup:                                          ; preds = %if.end252, %if.then21, %if.then15
  call void @llvm.dbg.label(metadata !1535), !dbg !1536
  %176 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1537
  %result_obj253 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %176, i32 0, i32 43, !dbg !1539
  %177 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj253, align 8, !dbg !1539
  %tobool254 = icmp ne %union.acpi_operand_object* %177, null, !dbg !1537
  br i1 %tobool254, label %if.then255, label %if.end258, !dbg !1540

if.then255:                                       ; preds = %cleanup
  %178 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1541
  %result_obj256 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %178, i32 0, i32 43, !dbg !1543
  %179 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj256, align 8, !dbg !1543
  %180 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1544
  call void @acpi_db_display_result_object(%union.acpi_operand_object* %179, %struct.acpi_walk_state* %180) #3, !dbg !1545
  %181 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1546
  %182 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1547
  %result_obj257 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %182, i32 0, i32 43, !dbg !1548
  %183 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj257, align 8, !dbg !1548
  %184 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1549
  call void @acpi_ds_delete_result_if_not_used(%union.acpi_parse_object* %181, %union.acpi_operand_object* %183, %struct.acpi_walk_state* %184) #3, !dbg !1550
  br label %if.end258, !dbg !1551

if.end258:                                        ; preds = %if.then255, %cleanup
  %185 = load i32, i32* %status, align 4, !dbg !1552
  %tobool259 = icmp ne i32 %185, 0, !dbg !1552
  br i1 %tobool259, label %if.then260, label %if.end262, !dbg !1554

if.then260:                                       ; preds = %if.end258
  %186 = load i32, i32* %status, align 4, !dbg !1555
  %187 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1557
  %call261 = call i32 @acpi_ds_method_error(i32 %186, %struct.acpi_walk_state* %187) #3, !dbg !1558
  store i32 %call261, i32* %status, align 4, !dbg !1559
  br label %if.end262, !dbg !1560

if.end262:                                        ; preds = %if.then260, %if.end258
  %188 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1561
  %num_operands263 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %188, i32 0, i32 5, !dbg !1562
  store i8 0, i8* %num_operands263, align 1, !dbg !1563
  %189 = load i32, i32* %status, align 4, !dbg !1564
  store i32 %189, i32* %retval, align 4, !dbg !1564
  br label %return, !dbg !1564

return:                                           ; preds = %if.end262, %sw.bb225, %if.end136, %if.then115, %if.then7, %if.then
  %190 = load i32, i32* %retval, align 4, !dbg !1565
  ret i32 %190, !dbg !1565
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_db_single_step(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op, i32 %op_type) #0 !dbg !1566 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %op_type.addr = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1569, metadata !DIExpression()), !dbg !1570
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1571, metadata !DIExpression()), !dbg !1570
  store i32 %op_type, i32* %op_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op_type.addr, metadata !1572, metadata !DIExpression()), !dbg !1570
  ret i32 0, !dbg !1570
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_evaluate_name_path(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_create_operands(%struct.acpi_walk_state*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_operands(i16 zeroext, %union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ps_get_opcode_name(i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_clear_operands(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_result_push(%union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_exec_end_control_op(%struct.acpi_walk_state*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_resolve_operands(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_load2_end_op(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_eval_buffer_field_operands(%struct.acpi_walk_state*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_create_node(%struct.acpi_walk_state*, %struct.acpi_namespace_node*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_eval_data_object_operands(%struct.acpi_walk_state*, %union.acpi_parse_object*, %union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_eval_region_operands(%struct.acpi_walk_state*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_eval_table_region_operands(%struct.acpi_walk_state*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_eval_bank_field_operands(%struct.acpi_walk_state*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_delete_result_if_not_used(%union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_opcode_0A_0T_1R(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_opcode_1A_0T_0R(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_opcode_1A_0T_1R(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_opcode_1A_1T_0R(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_opcode_1A_1T_1R(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_opcode_2A_0T_0R(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_opcode_2A_0T_1R(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_opcode_2A_1T_1R(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_opcode_2A_2T_1R(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_opcode_3A_0T_0R(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_opcode_3A_1T_1R(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_opcode_6A_0T_1R(%struct.acpi_walk_state*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!790, !791, !792, !793}
!llvm.ident = !{!794}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 24, type: !788, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !781, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dswexec.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !16, !101}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !15)
!15 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !18, line: 133, size: 384, elements: !19)
!18 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !768, !769, !770, !771, !777, !778, !779, !780}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !17, file: !18, line: 134, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !23, line: 367, size: 576, elements: !24)
!23 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !36, !52, !64, !78, !92, !102, !419, !436, !451, !464, !542, !554, !568, !578, !596, !618, !637, !656, !675, !688, !714, !731, !744, !758, !767}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !22, file: !23, line: 368, baseType: !26, size: 128)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !23, line: 73, size: 128, elements: !27)
!27 = !{!28, !29, !33, !34, !35}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !26, file: !23, line: 74, baseType: !21, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !26, file: !23, line: 74, baseType: !30, size: 8, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !23, line: 74, baseType: !30, size: 8, offset: 72)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !26, file: !23, line: 74, baseType: !13, size: 16, offset: 80)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !26, file: !23, line: 74, baseType: !30, size: 8, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !22, file: !23, line: 369, baseType: !37, size: 192)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !23, line: 76, size: 192, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !48}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !37, file: !23, line: 77, baseType: !21, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !37, file: !23, line: 77, baseType: !30, size: 8, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !37, file: !23, line: 77, baseType: !30, size: 8, offset: 72)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !37, file: !23, line: 77, baseType: !13, size: 16, offset: 80)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !37, file: !23, line: 77, baseType: !30, size: 8, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !37, file: !23, line: 77, baseType: !45, size: 24, offset: 104)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 3)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !37, file: !23, line: 78, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !51)
!51 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !22, file: !23, line: 370, baseType: !53, size: 256)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !23, line: 93, size: 256, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !63}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !53, file: !23, line: 94, baseType: !21, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !53, file: !23, line: 94, baseType: !30, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !23, line: 94, baseType: !30, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !53, file: !23, line: 94, baseType: !13, size: 16, offset: 80)
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
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !65, file: !23, line: 98, baseType: !13, size: 16, offset: 80)
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
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !79, file: !23, line: 105, baseType: !13, size: 16, offset: 80)
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
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !93, file: !23, line: 119, baseType: !13, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !23, line: 119, baseType: !30, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !93, file: !23, line: 119, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !22, file: !23, line: 374, baseType: !103, size: 448)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !23, line: 143, size: 448, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !416, !417, !418}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !23, line: 144, baseType: !21, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !23, line: 144, baseType: !30, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !23, line: 144, baseType: !30, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !23, line: 144, baseType: !13, size: 16, offset: 80)
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
!131 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !125, file: !126, line: 41, baseType: !13, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !125, file: !126, line: 42, baseType: !30, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !125, file: !126, line: 43, baseType: !30, size: 8, offset: 104)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !125, file: !126, line: 44, baseType: !30, size: 8, offset: 112)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !125, file: !126, line: 45, baseType: !136, size: 16, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !13)
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
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !163, file: !18, line: 829, baseType: !13, size: 16, offset: 80)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !163, file: !18, line: 829, baseType: !73, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !18, line: 829, baseType: !159, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !163, file: !18, line: 829, baseType: !16, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !163, file: !18, line: 829, baseType: !173, size: 64, offset: 320)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !18, line: 716, size: 64, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !173, file: !18, line: 717, baseType: !49, size: 64)
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
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !183, file: !18, line: 836, baseType: !13, size: 16, offset: 80)
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
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !199, file: !18, line: 847, baseType: !13, size: 16, offset: 80)
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
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !199, file: !18, line: 868, baseType: !13, size: 16, offset: 1344)
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
!253 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !248, file: !18, line: 568, baseType: !13, size: 16, offset: 80)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !248, file: !18, line: 568, baseType: !13, size: 16, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !245, file: !18, line: 665, baseType: !256, size: 384)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !18, line: 593, size: 384, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !18, line: 594, baseType: !101, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !256, file: !18, line: 594, baseType: !30, size: 8, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !256, file: !18, line: 594, baseType: !30, size: 8, offset: 72)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !256, file: !18, line: 594, baseType: !13, size: 16, offset: 80)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !256, file: !18, line: 594, baseType: !13, size: 16, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !256, file: !18, line: 594, baseType: !13, size: 16, offset: 112)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !256, file: !18, line: 595, baseType: !159, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !256, file: !18, line: 596, baseType: !73, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !256, file: !18, line: 597, baseType: !73, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !256, file: !18, line: 598, baseType: !49, size: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !245, file: !18, line: 666, baseType: !269, size: 192)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !18, line: 573, size: 192, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !18, line: 574, baseType: !101, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !269, file: !18, line: 574, baseType: !30, size: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !18, line: 574, baseType: !30, size: 8, offset: 72)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !269, file: !18, line: 574, baseType: !13, size: 16, offset: 80)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !18, line: 574, baseType: !13, size: 16, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !269, file: !18, line: 574, baseType: !21, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !245, file: !18, line: 667, baseType: !278, size: 192)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !18, line: 604, size: 192, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !18, line: 605, baseType: !101, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !18, line: 605, baseType: !30, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !18, line: 605, baseType: !30, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !18, line: 605, baseType: !13, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !18, line: 605, baseType: !13, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !278, file: !18, line: 605, baseType: !16, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !245, file: !18, line: 668, baseType: !287, size: 448)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !18, line: 608, size: 448, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !18, line: 609, baseType: !101, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !18, line: 609, baseType: !30, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !18, line: 609, baseType: !30, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !18, line: 609, baseType: !13, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !18, line: 609, baseType: !13, size: 16, offset: 96)
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
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !18, line: 581, baseType: !13, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !18, line: 581, baseType: !13, size: 16, offset: 96)
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
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !18, line: 621, baseType: !13, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !18, line: 621, baseType: !13, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !314, file: !18, line: 621, baseType: !30, size: 8, offset: 112)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !314, file: !18, line: 622, baseType: !124, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !314, file: !18, line: 623, baseType: !21, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !314, file: !18, line: 624, baseType: !49, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !245, file: !18, line: 671, baseType: !326, size: 640)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !18, line: 631, size: 640, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !18, line: 632, baseType: !101, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !326, file: !18, line: 632, baseType: !30, size: 8, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !18, line: 632, baseType: !30, size: 8, offset: 72)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !326, file: !18, line: 632, baseType: !13, size: 16, offset: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !326, file: !18, line: 632, baseType: !13, size: 16, offset: 96)
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
!343 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !338, file: !18, line: 655, baseType: !13, size: 16, offset: 80)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !338, file: !18, line: 655, baseType: !13, size: 16, offset: 96)
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
!363 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !125, file: !126, line: 63, baseType: !13, size: 16, offset: 1152)
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
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !18, line: 708, baseType: !13, size: 16, offset: 64)
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
!425 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !420, file: !23, line: 123, baseType: !13, size: 16, offset: 80)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !23, line: 123, baseType: !30, size: 8, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !420, file: !23, line: 123, baseType: !30, size: 8, offset: 104)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !420, file: !23, line: 124, baseType: !13, size: 16, offset: 112)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !420, file: !23, line: 125, baseType: !101, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !420, file: !23, line: 126, baseType: !49, size: 64, offset: 192)
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
!442 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !437, file: !23, line: 135, baseType: !13, size: 16, offset: 80)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !437, file: !23, line: 135, baseType: !30, size: 8, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !437, file: !23, line: 135, baseType: !30, size: 8, offset: 104)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !437, file: !23, line: 136, baseType: !16, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !437, file: !23, line: 137, baseType: !21, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !23, line: 138, baseType: !21, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !437, file: !23, line: 139, baseType: !449, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !49)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !437, file: !23, line: 140, baseType: !8, size: 32, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !22, file: !23, line: 377, baseType: !452, size: 320)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !23, line: 184, size: 320, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !463}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !23, line: 185, baseType: !21, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !23, line: 185, baseType: !30, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !23, line: 185, baseType: !30, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !23, line: 185, baseType: !13, size: 16, offset: 80)
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
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !465, file: !23, line: 188, baseType: !13, size: 16, offset: 80)
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
!497 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !494, file: !18, line: 461, baseType: !49, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !491, file: !18, line: 468, baseType: !494, size: 128, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !491, file: !18, line: 469, baseType: !13, size: 16, offset: 256)
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
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !476, file: !18, line: 487, baseType: !49, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !476, file: !18, line: 488, baseType: !8, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !476, file: !18, line: 489, baseType: !13, size: 16, offset: 480)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !476, file: !18, line: 490, baseType: !13, size: 16, offset: 496)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !476, file: !18, line: 491, baseType: !30, size: 8, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !476, file: !18, line: 492, baseType: !30, size: 8, offset: 520)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !22, file: !23, line: 379, baseType: !543, size: 384)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !23, line: 192, size: 384, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !543, file: !23, line: 193, baseType: !21, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !543, file: !23, line: 193, baseType: !30, size: 8, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !543, file: !23, line: 193, baseType: !30, size: 8, offset: 72)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !543, file: !23, line: 193, baseType: !13, size: 16, offset: 80)
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
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !555, file: !23, line: 198, baseType: !13, size: 16, offset: 80)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !23, line: 198, baseType: !30, size: 8, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !555, file: !23, line: 200, baseType: !30, size: 8, offset: 104)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !555, file: !23, line: 201, baseType: !30, size: 8, offset: 112)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !555, file: !23, line: 202, baseType: !460, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !555, file: !23, line: 202, baseType: !21, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !555, file: !23, line: 202, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !49)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !22, file: !23, line: 381, baseType: !569, size: 320)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !23, line: 205, size: 320, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !23, line: 206, baseType: !21, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !23, line: 206, baseType: !30, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !23, line: 206, baseType: !30, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !23, line: 206, baseType: !13, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !23, line: 206, baseType: !30, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !23, line: 206, baseType: !460, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !23, line: 206, baseType: !21, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !22, file: !23, line: 382, baseType: !579, size: 384)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !23, line: 233, size: 384, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !23, line: 234, baseType: !21, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !23, line: 234, baseType: !30, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !23, line: 234, baseType: !30, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !23, line: 234, baseType: !13, size: 16, offset: 80)
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
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !23, line: 238, baseType: !13, size: 16, offset: 80)
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
!613 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !597, file: !23, line: 238, baseType: !13, size: 16, offset: 304)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !597, file: !23, line: 239, baseType: !21, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !597, file: !23, line: 240, baseType: !73, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !597, file: !23, line: 241, baseType: !13, size: 16, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !597, file: !23, line: 242, baseType: !73, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !22, file: !23, line: 384, baseType: !619, size: 384)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !23, line: 262, size: 384, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !23, line: 263, baseType: !21, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !23, line: 263, baseType: !30, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !23, line: 263, baseType: !30, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !23, line: 263, baseType: !13, size: 16, offset: 80)
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
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !23, line: 246, baseType: !13, size: 16, offset: 80)
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
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !657, file: !23, line: 251, baseType: !13, size: 16, offset: 80)
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
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !23, line: 274, baseType: !13, size: 16, offset: 80)
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
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !23, line: 282, baseType: !13, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !23, line: 282, baseType: !30, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !689, file: !23, line: 282, baseType: !30, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !689, file: !23, line: 283, baseType: !30, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !689, file: !23, line: 284, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!6, !8, !449, !8, !703, !101, !101}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
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
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !23, line: 308, baseType: !13, size: 16, offset: 80)
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
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !732, file: !23, line: 341, baseType: !13, size: 16, offset: 80)
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
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !745, file: !23, line: 351, baseType: !13, size: 16, offset: 80)
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
!764 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !759, file: !23, line: 358, baseType: !13, size: 16, offset: 80)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !23, line: 358, baseType: !30, size: 8, offset: 96)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !759, file: !23, line: 358, baseType: !21, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !22, file: !23, line: 399, baseType: !17, size: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !17, file: !18, line: 135, baseType: !30, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !17, file: !18, line: 136, baseType: !30, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !17, file: !18, line: 137, baseType: !13, size: 16, offset: 80)
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
!781 = !{!0, !782}
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "acpi_gbl_op_type_dispatch", scope: !2, file: !3, line: 29, type: !784, isLocal: true, isDefinition: true)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 768, elements: !786)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_execute_op", file: !18, line: 682, baseType: !121)
!786 = !{!787}
!787 = !DISubrange(count: 12)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 64, elements: !335)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!790 = !{i32 7, !"Dwarf Version", i32 4}
!791 = !{i32 2, !"Debug Info Version", i32 3}
!792 = !{i32 1, !"wchar_size", i32 2}
!793 = !{i32 1, !"Code Model", i32 2}
!794 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!795 = distinct !DISubprogram(name: "acpi_ds_get_predicate_value", scope: !3, file: !3, line: 58, type: !796, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!796 = !DISubroutineType(types: !797)
!797 = !{!6, !124, !21}
!798 = !DILocalVariable(name: "walk_state", arg: 1, scope: !795, file: !3, line: 58, type: !124)
!799 = !DILocation(line: 58, column: 53, scope: !795)
!800 = !DILocalVariable(name: "result_obj", arg: 2, scope: !795, file: !3, line: 59, type: !21)
!801 = !DILocation(line: 59, column: 35, scope: !795)
!802 = !DILocalVariable(name: "status", scope: !795, file: !3, line: 61, type: !6)
!803 = !DILocation(line: 61, column: 14, scope: !795)
!804 = !DILocalVariable(name: "obj_desc", scope: !795, file: !3, line: 62, type: !21)
!805 = !DILocation(line: 62, column: 29, scope: !795)
!806 = !DILocalVariable(name: "local_obj_desc", scope: !795, file: !3, line: 63, type: !21)
!807 = !DILocation(line: 63, column: 29, scope: !795)
!808 = !DILocation(line: 67, column: 2, scope: !795)
!809 = !DILocation(line: 67, column: 14, scope: !795)
!810 = !DILocation(line: 67, column: 29, scope: !795)
!811 = !DILocation(line: 67, column: 36, scope: !795)
!812 = !DILocation(line: 67, column: 42, scope: !795)
!813 = !DILocation(line: 69, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !795, file: !3, line: 69, column: 6)
!815 = !DILocation(line: 69, column: 6, scope: !795)
!816 = !DILocation(line: 70, column: 42, scope: !817)
!817 = distinct !DILexicalBlock(scope: !814, file: !3, line: 69, column: 18)
!818 = !DILocation(line: 70, column: 12, scope: !817)
!819 = !DILocation(line: 70, column: 10, scope: !817)
!820 = !DILocation(line: 71, column: 7, scope: !821)
!821 = distinct !DILexicalBlock(scope: !817, file: !3, line: 71, column: 7)
!822 = !DILocation(line: 71, column: 7, scope: !817)
!823 = !DILocation(line: 72, column: 4, scope: !824)
!824 = distinct !DILexicalBlock(scope: !821, file: !3, line: 71, column: 29)
!825 = !DILocation(line: 75, column: 4, scope: !824)
!826 = !DILocation(line: 77, column: 2, scope: !817)
!827 = !DILocation(line: 78, column: 35, scope: !828)
!828 = distinct !DILexicalBlock(scope: !814, file: !3, line: 77, column: 9)
!829 = !DILocation(line: 78, column: 47, scope: !828)
!830 = !DILocation(line: 78, column: 59, scope: !828)
!831 = !DILocation(line: 78, column: 12, scope: !828)
!832 = !DILocation(line: 78, column: 10, scope: !828)
!833 = !DILocation(line: 79, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !828, file: !3, line: 79, column: 7)
!835 = !DILocation(line: 79, column: 7, scope: !828)
!836 = !DILocation(line: 80, column: 4, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !3, line: 79, column: 29)
!838 = !DILocation(line: 84, column: 33, scope: !828)
!839 = !DILocation(line: 84, column: 45, scope: !828)
!840 = !DILocation(line: 85, column: 11, scope: !828)
!841 = !DILocation(line: 84, column: 7, scope: !828)
!842 = !DILocation(line: 83, column: 10, scope: !828)
!843 = !DILocation(line: 86, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !828, file: !3, line: 86, column: 7)
!845 = !DILocation(line: 86, column: 7, scope: !828)
!846 = !DILocation(line: 87, column: 4, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !3, line: 86, column: 29)
!848 = !DILocation(line: 90, column: 14, scope: !828)
!849 = !DILocation(line: 90, column: 26, scope: !828)
!850 = !DILocation(line: 90, column: 12, scope: !828)
!851 = !DILocation(line: 93, column: 7, scope: !852)
!852 = distinct !DILexicalBlock(scope: !795, file: !3, line: 93, column: 6)
!853 = !DILocation(line: 93, column: 6, scope: !795)
!854 = !DILocation(line: 94, column: 3, scope: !855)
!855 = distinct !DILexicalBlock(scope: !852, file: !3, line: 93, column: 17)
!856 = !DILocation(line: 98, column: 3, scope: !855)
!857 = !DILocation(line: 105, column: 38, scope: !795)
!858 = !DILocation(line: 105, column: 11, scope: !795)
!859 = !DILocation(line: 105, column: 9, scope: !795)
!860 = !DILocation(line: 107, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !795, file: !3, line: 107, column: 6)
!862 = !DILocation(line: 107, column: 6, scope: !795)
!863 = !DILocation(line: 108, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !3, line: 107, column: 28)
!865 = !DILocation(line: 111, column: 6, scope: !866)
!866 = distinct !DILexicalBlock(scope: !795, file: !3, line: 111, column: 6)
!867 = !DILocation(line: 111, column: 22, scope: !866)
!868 = !DILocation(line: 111, column: 29, scope: !866)
!869 = !DILocation(line: 111, column: 34, scope: !866)
!870 = !DILocation(line: 111, column: 6, scope: !795)
!871 = !DILocation(line: 112, column: 3, scope: !872)
!872 = distinct !DILexicalBlock(scope: !866, file: !3, line: 111, column: 56)
!873 = !DILocation(line: 116, column: 10, scope: !872)
!874 = !DILocation(line: 117, column: 3, scope: !872)
!875 = !DILocation(line: 122, column: 40, scope: !795)
!876 = !DILocation(line: 122, column: 8, scope: !795)
!877 = !DILocation(line: 128, column: 6, scope: !878)
!878 = distinct !DILexicalBlock(scope: !795, file: !3, line: 128, column: 6)
!879 = !DILocation(line: 128, column: 22, scope: !878)
!880 = !DILocation(line: 128, column: 30, scope: !878)
!881 = !DILocation(line: 128, column: 6, scope: !795)
!882 = !DILocation(line: 129, column: 3, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !3, line: 128, column: 37)
!884 = !DILocation(line: 129, column: 15, scope: !883)
!885 = !DILocation(line: 129, column: 30, scope: !883)
!886 = !DILocation(line: 129, column: 37, scope: !883)
!887 = !DILocation(line: 129, column: 43, scope: !883)
!888 = !DILocation(line: 130, column: 2, scope: !883)
!889 = !DILocation(line: 135, column: 3, scope: !890)
!890 = distinct !DILexicalBlock(scope: !878, file: !3, line: 130, column: 9)
!891 = !DILocation(line: 135, column: 15, scope: !890)
!892 = !DILocation(line: 135, column: 30, scope: !890)
!893 = !DILocation(line: 135, column: 37, scope: !890)
!894 = !DILocation(line: 135, column: 43, scope: !890)
!895 = !DILocation(line: 136, column: 10, scope: !890)
!896 = !DILocation(line: 141, column: 35, scope: !795)
!897 = !DILocation(line: 141, column: 51, scope: !795)
!898 = !DILocation(line: 141, column: 8, scope: !795)
!899 = !DILocation(line: 141, column: 2, scope: !795)
!900 = !DILabel(scope: !795, name: "cleanup", file: !3, line: 143)
!901 = !DILocation(line: 143, column: 1, scope: !795)
!902 = !DILocation(line: 152, column: 32, scope: !795)
!903 = !DILocation(line: 152, column: 48, scope: !795)
!904 = !DILocation(line: 152, column: 2, scope: !795)
!905 = !DILocation(line: 158, column: 6, scope: !906)
!906 = distinct !DILexicalBlock(scope: !795, file: !3, line: 158, column: 6)
!907 = !DILocation(line: 158, column: 24, scope: !906)
!908 = !DILocation(line: 158, column: 21, scope: !906)
!909 = !DILocation(line: 158, column: 6, scope: !795)
!910 = !DILocation(line: 159, column: 28, scope: !911)
!911 = distinct !DILexicalBlock(scope: !906, file: !3, line: 158, column: 34)
!912 = !DILocation(line: 159, column: 3, scope: !911)
!913 = !DILocation(line: 160, column: 2, scope: !911)
!914 = !DILocation(line: 161, column: 27, scope: !795)
!915 = !DILocation(line: 161, column: 2, scope: !795)
!916 = !DILocation(line: 163, column: 2, scope: !795)
!917 = !DILocation(line: 163, column: 14, scope: !795)
!918 = !DILocation(line: 163, column: 29, scope: !795)
!919 = !DILocation(line: 163, column: 36, scope: !795)
!920 = !DILocation(line: 163, column: 42, scope: !795)
!921 = !DILocation(line: 164, column: 2, scope: !795)
!922 = !DILocation(line: 165, column: 1, scope: !795)
!923 = distinct !DISubprogram(name: "acpi_db_display_result_object", scope: !924, file: !924, line: 164, type: !925, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!924 = !DIFile(filename: "drivers/acpi/acpica/acdebug.h", directory: "/home/lizy2001/genbc/linux")
!925 = !DISubroutineType(types: !926)
!926 = !{null, !21, !124}
!927 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !923, file: !924, line: 164, type: !21)
!928 = !DILocation(line: 164, column: 1, scope: !923)
!929 = !DILocalVariable(name: "walk_state", arg: 2, scope: !923, file: !924, line: 164, type: !124)
!930 = distinct !DISubprogram(name: "acpi_ds_exec_begin_op", scope: !3, file: !3, line: 183, type: !410, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!931 = !DILocalVariable(name: "walk_state", arg: 1, scope: !930, file: !3, line: 183, type: !124)
!932 = !DILocation(line: 183, column: 47, scope: !930)
!933 = !DILocalVariable(name: "out_op", arg: 2, scope: !930, file: !3, line: 184, type: !412)
!934 = !DILocation(line: 184, column: 35, scope: !930)
!935 = !DILocalVariable(name: "op", scope: !930, file: !3, line: 186, type: !159)
!936 = !DILocation(line: 186, column: 27, scope: !930)
!937 = !DILocalVariable(name: "status", scope: !930, file: !3, line: 187, type: !6)
!938 = !DILocation(line: 187, column: 14, scope: !930)
!939 = !DILocalVariable(name: "opcode_class", scope: !930, file: !3, line: 188, type: !8)
!940 = !DILocation(line: 188, column: 6, scope: !930)
!941 = !DILocation(line: 192, column: 7, scope: !930)
!942 = !DILocation(line: 192, column: 19, scope: !930)
!943 = !DILocation(line: 192, column: 5, scope: !930)
!944 = !DILocation(line: 193, column: 7, scope: !945)
!945 = distinct !DILexicalBlock(scope: !930, file: !3, line: 193, column: 6)
!946 = !DILocation(line: 193, column: 6, scope: !930)
!947 = !DILocation(line: 194, column: 35, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !3, line: 193, column: 11)
!949 = !DILocation(line: 194, column: 47, scope: !948)
!950 = !DILocation(line: 194, column: 12, scope: !948)
!951 = !DILocation(line: 194, column: 10, scope: !948)
!952 = !DILocation(line: 195, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !948, file: !3, line: 195, column: 7)
!954 = !DILocation(line: 195, column: 7, scope: !948)
!955 = !DILocation(line: 196, column: 4, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !3, line: 195, column: 29)
!957 = !DILocation(line: 199, column: 9, scope: !948)
!958 = !DILocation(line: 199, column: 8, scope: !948)
!959 = !DILocation(line: 199, column: 6, scope: !948)
!960 = !DILocation(line: 200, column: 20, scope: !948)
!961 = !DILocation(line: 200, column: 3, scope: !948)
!962 = !DILocation(line: 200, column: 15, scope: !948)
!963 = !DILocation(line: 200, column: 18, scope: !948)
!964 = !DILocation(line: 201, column: 24, scope: !948)
!965 = !DILocation(line: 201, column: 28, scope: !948)
!966 = !DILocation(line: 201, column: 35, scope: !948)
!967 = !DILocation(line: 201, column: 3, scope: !948)
!968 = !DILocation(line: 201, column: 15, scope: !948)
!969 = !DILocation(line: 201, column: 22, scope: !948)
!970 = !DILocation(line: 203, column: 31, scope: !948)
!971 = !DILocation(line: 203, column: 35, scope: !948)
!972 = !DILocation(line: 203, column: 42, scope: !948)
!973 = !DILocation(line: 203, column: 7, scope: !948)
!974 = !DILocation(line: 202, column: 3, scope: !948)
!975 = !DILocation(line: 202, column: 15, scope: !948)
!976 = !DILocation(line: 202, column: 23, scope: !948)
!977 = !DILocation(line: 205, column: 27, scope: !978)
!978 = distinct !DILexicalBlock(scope: !948, file: !3, line: 205, column: 7)
!979 = !DILocation(line: 205, column: 39, scope: !978)
!980 = !DILocation(line: 205, column: 48, scope: !978)
!981 = !DILocation(line: 205, column: 7, scope: !978)
!982 = !DILocation(line: 205, column: 7, scope: !948)
!983 = !DILocation(line: 213, column: 37, scope: !984)
!984 = distinct !DILexicalBlock(scope: !978, file: !3, line: 205, column: 62)
!985 = !DILocation(line: 213, column: 13, scope: !984)
!986 = !DILocation(line: 213, column: 11, scope: !984)
!987 = !DILocation(line: 214, column: 8, scope: !988)
!988 = distinct !DILexicalBlock(scope: !984, file: !3, line: 214, column: 8)
!989 = !DILocation(line: 214, column: 8, scope: !984)
!990 = !DILocation(line: 215, column: 5, scope: !991)
!991 = distinct !DILexicalBlock(scope: !988, file: !3, line: 214, column: 30)
!992 = !DILocation(line: 217, column: 3, scope: !984)
!993 = !DILocation(line: 218, column: 2, scope: !948)
!994 = !DILocation(line: 220, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !930, file: !3, line: 220, column: 6)
!996 = !DILocation(line: 220, column: 12, scope: !995)
!997 = !DILocation(line: 220, column: 24, scope: !995)
!998 = !DILocation(line: 220, column: 9, scope: !995)
!999 = !DILocation(line: 220, column: 6, scope: !930)
!1000 = !DILocation(line: 221, column: 7, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 221, column: 7)
!1002 = distinct !DILexicalBlock(scope: !995, file: !3, line: 220, column: 32)
!1003 = !DILocation(line: 221, column: 7, scope: !1002)
!1004 = !DILocation(line: 222, column: 14, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 221, column: 15)
!1006 = !DILocation(line: 222, column: 5, scope: !1005)
!1007 = !DILocation(line: 222, column: 12, scope: !1005)
!1008 = !DILocation(line: 223, column: 3, scope: !1005)
!1009 = !DILocation(line: 225, column: 3, scope: !1002)
!1010 = !DILocation(line: 233, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !930, file: !3, line: 233, column: 6)
!1012 = !DILocation(line: 233, column: 19, scope: !1011)
!1013 = !DILocation(line: 233, column: 6, scope: !1011)
!1014 = !DILocation(line: 233, column: 34, scope: !1011)
!1015 = !DILocation(line: 234, column: 7, scope: !1011)
!1016 = !DILocation(line: 234, column: 19, scope: !1011)
!1017 = !DILocation(line: 234, column: 34, scope: !1011)
!1018 = !DILocation(line: 234, column: 41, scope: !1011)
!1019 = !DILocation(line: 234, column: 47, scope: !1011)
!1020 = !DILocation(line: 233, column: 6, scope: !930)
!1021 = !DILocation(line: 240, column: 3, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 235, column: 44)
!1023 = !DILocation(line: 240, column: 15, scope: !1022)
!1024 = !DILocation(line: 240, column: 30, scope: !1022)
!1025 = !DILocation(line: 240, column: 37, scope: !1022)
!1026 = !DILocation(line: 240, column: 43, scope: !1022)
!1027 = !DILocation(line: 245, column: 53, scope: !1022)
!1028 = !DILocation(line: 245, column: 3, scope: !1022)
!1029 = !DILocation(line: 245, column: 15, scope: !1022)
!1030 = !DILocation(line: 245, column: 30, scope: !1022)
!1031 = !DILocation(line: 245, column: 38, scope: !1022)
!1032 = !DILocation(line: 245, column: 51, scope: !1022)
!1033 = !DILocation(line: 246, column: 2, scope: !1022)
!1034 = !DILocation(line: 248, column: 17, scope: !930)
!1035 = !DILocation(line: 248, column: 29, scope: !930)
!1036 = !DILocation(line: 248, column: 38, scope: !930)
!1037 = !DILocation(line: 248, column: 15, scope: !930)
!1038 = !DILocation(line: 252, column: 6, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !930, file: !3, line: 252, column: 6)
!1040 = !DILocation(line: 252, column: 10, scope: !1039)
!1041 = !DILocation(line: 252, column: 17, scope: !1039)
!1042 = !DILocation(line: 252, column: 28, scope: !1039)
!1043 = !DILocation(line: 252, column: 6, scope: !930)
!1044 = !DILocation(line: 253, column: 16, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 252, column: 52)
!1046 = !DILocation(line: 254, column: 2, scope: !1045)
!1047 = !DILocation(line: 259, column: 10, scope: !930)
!1048 = !DILocation(line: 259, column: 2, scope: !930)
!1049 = !DILocation(line: 262, column: 42, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !930, file: !3, line: 259, column: 24)
!1051 = !DILocation(line: 262, column: 54, scope: !1050)
!1052 = !DILocation(line: 262, column: 12, scope: !1050)
!1053 = !DILocation(line: 262, column: 10, scope: !1050)
!1054 = !DILocation(line: 263, column: 3, scope: !1050)
!1055 = !DILocation(line: 267, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 267, column: 7)
!1057 = !DILocation(line: 267, column: 19, scope: !1056)
!1058 = !DILocation(line: 267, column: 29, scope: !1056)
!1059 = !DILocation(line: 267, column: 7, scope: !1050)
!1060 = !DILocation(line: 279, column: 8, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 279, column: 8)
!1062 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 267, column: 49)
!1063 = !DILocation(line: 279, column: 12, scope: !1061)
!1064 = !DILocation(line: 279, column: 19, scope: !1061)
!1065 = !DILocation(line: 279, column: 30, scope: !1061)
!1066 = !DILocation(line: 279, column: 8, scope: !1062)
!1067 = !DILocation(line: 281, column: 32, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 279, column: 47)
!1069 = !DILocation(line: 281, column: 9, scope: !1068)
!1070 = !DILocation(line: 280, column: 12, scope: !1068)
!1071 = !DILocation(line: 282, column: 4, scope: !1068)
!1072 = !DILocation(line: 284, column: 34, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 282, column: 11)
!1074 = !DILocation(line: 284, column: 38, scope: !1073)
!1075 = !DILocation(line: 284, column: 44, scope: !1073)
!1076 = !DILocation(line: 285, column: 13, scope: !1073)
!1077 = !DILocation(line: 285, column: 17, scope: !1073)
!1078 = !DILocation(line: 285, column: 23, scope: !1073)
!1079 = !DILocation(line: 286, column: 13, scope: !1073)
!1080 = !DILocation(line: 286, column: 19, scope: !1073)
!1081 = !DILocation(line: 284, column: 9, scope: !1073)
!1082 = !DILocation(line: 283, column: 12, scope: !1073)
!1083 = !DILocation(line: 287, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 287, column: 9)
!1085 = !DILocation(line: 287, column: 9, scope: !1073)
!1086 = !DILocation(line: 288, column: 6, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 287, column: 31)
!1088 = !DILocation(line: 291, column: 3, scope: !1062)
!1089 = !DILocation(line: 292, column: 3, scope: !1050)
!1090 = !DILocation(line: 297, column: 3, scope: !1050)
!1091 = !DILocation(line: 301, column: 3, scope: !1050)
!1092 = !DILocation(line: 306, column: 2, scope: !930)
!1093 = !DILabel(scope: !930, name: "error_exit", file: !3, line: 308)
!1094 = !DILocation(line: 308, column: 1, scope: !930)
!1095 = !DILocation(line: 309, column: 32, scope: !930)
!1096 = !DILocation(line: 309, column: 40, scope: !930)
!1097 = !DILocation(line: 309, column: 11, scope: !930)
!1098 = !DILocation(line: 309, column: 9, scope: !930)
!1099 = !DILocation(line: 310, column: 2, scope: !930)
!1100 = !DILocation(line: 311, column: 1, scope: !930)
!1101 = distinct !DISubprogram(name: "acpi_ds_exec_end_op", scope: !3, file: !3, line: 327, type: !122, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1102 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1101, file: !3, line: 327, type: !124)
!1103 = !DILocation(line: 327, column: 57, scope: !1101)
!1104 = !DILocalVariable(name: "op", scope: !1101, file: !3, line: 329, type: !159)
!1105 = !DILocation(line: 329, column: 27, scope: !1101)
!1106 = !DILocalVariable(name: "status", scope: !1101, file: !3, line: 330, type: !6)
!1107 = !DILocation(line: 330, column: 14, scope: !1101)
!1108 = !DILocalVariable(name: "op_type", scope: !1101, file: !3, line: 331, type: !8)
!1109 = !DILocation(line: 331, column: 6, scope: !1101)
!1110 = !DILocalVariable(name: "op_class", scope: !1101, file: !3, line: 332, type: !8)
!1111 = !DILocation(line: 332, column: 6, scope: !1101)
!1112 = !DILocalVariable(name: "next_op", scope: !1101, file: !3, line: 333, type: !159)
!1113 = !DILocation(line: 333, column: 27, scope: !1101)
!1114 = !DILocalVariable(name: "first_arg", scope: !1101, file: !3, line: 334, type: !159)
!1115 = !DILocation(line: 334, column: 27, scope: !1101)
!1116 = !DILocation(line: 342, column: 7, scope: !1101)
!1117 = !DILocation(line: 342, column: 19, scope: !1101)
!1118 = !DILocation(line: 342, column: 5, scope: !1101)
!1119 = !DILocation(line: 343, column: 12, scope: !1101)
!1120 = !DILocation(line: 343, column: 24, scope: !1101)
!1121 = !DILocation(line: 343, column: 33, scope: !1101)
!1122 = !DILocation(line: 343, column: 10, scope: !1101)
!1123 = !DILocation(line: 344, column: 13, scope: !1101)
!1124 = !DILocation(line: 344, column: 25, scope: !1101)
!1125 = !DILocation(line: 344, column: 34, scope: !1101)
!1126 = !DILocation(line: 344, column: 11, scope: !1101)
!1127 = !DILocation(line: 346, column: 6, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 346, column: 6)
!1129 = !DILocation(line: 346, column: 15, scope: !1128)
!1130 = !DILocation(line: 346, column: 6, scope: !1101)
!1131 = !DILocation(line: 347, column: 3, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 346, column: 37)
!1133 = !DILocation(line: 349, column: 3, scope: !1132)
!1134 = !DILocation(line: 352, column: 14, scope: !1101)
!1135 = !DILocation(line: 352, column: 18, scope: !1101)
!1136 = !DILocation(line: 352, column: 25, scope: !1101)
!1137 = !DILocation(line: 352, column: 31, scope: !1101)
!1138 = !DILocation(line: 352, column: 12, scope: !1101)
!1139 = !DILocation(line: 356, column: 2, scope: !1101)
!1140 = !DILocation(line: 356, column: 14, scope: !1101)
!1141 = !DILocation(line: 356, column: 27, scope: !1101)
!1142 = !DILocation(line: 357, column: 2, scope: !1101)
!1143 = !DILocation(line: 357, column: 14, scope: !1101)
!1144 = !DILocation(line: 357, column: 28, scope: !1101)
!1145 = !DILocation(line: 358, column: 2, scope: !1101)
!1146 = !DILocation(line: 358, column: 14, scope: !1101)
!1147 = !DILocation(line: 358, column: 26, scope: !1101)
!1148 = !DILocation(line: 359, column: 2, scope: !1101)
!1149 = !DILocation(line: 359, column: 14, scope: !1101)
!1150 = !DILocation(line: 359, column: 25, scope: !1101)
!1151 = !DILocation(line: 363, column: 31, scope: !1101)
!1152 = !DILocation(line: 363, column: 43, scope: !1101)
!1153 = !DILocation(line: 363, column: 47, scope: !1101)
!1154 = !DILocation(line: 363, column: 11, scope: !1101)
!1155 = !DILocation(line: 363, column: 9, scope: !1101)
!1156 = !DILocation(line: 364, column: 6, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 364, column: 6)
!1158 = !DILocation(line: 364, column: 6, scope: !1101)
!1159 = !DILocation(line: 365, column: 3, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 364, column: 28)
!1161 = !DILocation(line: 370, column: 10, scope: !1101)
!1162 = !DILocation(line: 370, column: 2, scope: !1101)
!1163 = !DILocation(line: 373, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 373, column: 7)
!1165 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 370, column: 20)
!1166 = !DILocation(line: 373, column: 19, scope: !1164)
!1167 = !DILocation(line: 373, column: 26, scope: !1164)
!1168 = !DILocation(line: 373, column: 7, scope: !1165)
!1169 = !DILocation(line: 374, column: 40, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 373, column: 50)
!1171 = !DILocation(line: 374, column: 13, scope: !1170)
!1172 = !DILocation(line: 374, column: 11, scope: !1170)
!1173 = !DILocation(line: 375, column: 8, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 375, column: 8)
!1175 = !DILocation(line: 375, column: 8, scope: !1170)
!1176 = !DILocation(line: 376, column: 5, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 375, column: 30)
!1178 = !DILocation(line: 378, column: 3, scope: !1170)
!1179 = !DILocation(line: 379, column: 3, scope: !1165)
!1180 = !DILocation(line: 385, column: 36, scope: !1165)
!1181 = !DILocation(line: 385, column: 48, scope: !1165)
!1182 = !DILocation(line: 385, column: 12, scope: !1165)
!1183 = !DILocation(line: 385, column: 10, scope: !1165)
!1184 = !DILocation(line: 386, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 386, column: 7)
!1186 = !DILocation(line: 386, column: 7, scope: !1165)
!1187 = !DILocation(line: 387, column: 4, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 386, column: 29)
!1189 = !DILocation(line: 394, column: 9, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 394, column: 7)
!1191 = !DILocation(line: 394, column: 21, scope: !1190)
!1192 = !DILocation(line: 394, column: 30, scope: !1190)
!1193 = !DILocation(line: 394, column: 36, scope: !1190)
!1194 = !DILocation(line: 394, column: 7, scope: !1165)
!1195 = !DILocation(line: 398, column: 38, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 394, column: 63)
!1197 = !DILocation(line: 398, column: 50, scope: !1196)
!1198 = !DILocation(line: 399, column: 12, scope: !1196)
!1199 = !DILocation(line: 400, column: 12, scope: !1196)
!1200 = !DILocation(line: 401, column: 13, scope: !1196)
!1201 = !DILocation(line: 402, column: 13, scope: !1196)
!1202 = !DILocation(line: 402, column: 26, scope: !1196)
!1203 = !DILocation(line: 403, column: 10, scope: !1196)
!1204 = !DILocation(line: 398, column: 13, scope: !1196)
!1205 = !DILocation(line: 398, column: 11, scope: !1196)
!1206 = !DILocation(line: 404, column: 3, scope: !1196)
!1207 = !DILocation(line: 406, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 406, column: 7)
!1209 = !DILocation(line: 406, column: 7, scope: !1165)
!1210 = !DILocation(line: 413, column: 34, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 406, column: 29)
!1212 = !DILocation(line: 413, column: 8, scope: !1211)
!1213 = !DILocation(line: 413, column: 44, scope: !1211)
!1214 = !DILocation(line: 412, column: 11, scope: !1211)
!1215 = !DILocation(line: 414, column: 3, scope: !1211)
!1216 = !DILocation(line: 419, column: 9, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 419, column: 8)
!1218 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 414, column: 10)
!1219 = !DILocation(line: 419, column: 16, scope: !1217)
!1220 = !DILocation(line: 419, column: 47, scope: !1217)
!1221 = !DILocation(line: 420, column: 9, scope: !1217)
!1222 = !DILocation(line: 420, column: 21, scope: !1217)
!1223 = !DILocation(line: 420, column: 28, scope: !1217)
!1224 = !DILocation(line: 420, column: 45, scope: !1217)
!1225 = !DILocation(line: 421, column: 9, scope: !1217)
!1226 = !DILocation(line: 421, column: 21, scope: !1217)
!1227 = !DILocation(line: 421, column: 34, scope: !1217)
!1228 = !DILocation(line: 421, column: 41, scope: !1217)
!1229 = !DILocation(line: 421, column: 46, scope: !1217)
!1230 = !DILocation(line: 423, column: 8, scope: !1217)
!1231 = !DILocation(line: 423, column: 12, scope: !1217)
!1232 = !DILocation(line: 423, column: 24, scope: !1217)
!1233 = !DILocation(line: 423, column: 37, scope: !1217)
!1234 = !DILocation(line: 423, column: 44, scope: !1217)
!1235 = !DILocation(line: 423, column: 49, scope: !1217)
!1236 = !DILocation(line: 425, column: 8, scope: !1217)
!1237 = !DILocation(line: 425, column: 12, scope: !1217)
!1238 = !DILocation(line: 425, column: 24, scope: !1217)
!1239 = !DILocation(line: 425, column: 37, scope: !1217)
!1240 = !DILocation(line: 425, column: 47, scope: !1217)
!1241 = !DILocation(line: 426, column: 5, scope: !1217)
!1242 = !DILocation(line: 426, column: 17, scope: !1217)
!1243 = !DILocation(line: 426, column: 30, scope: !1217)
!1244 = !DILocation(line: 426, column: 40, scope: !1217)
!1245 = !DILocation(line: 425, column: 53, scope: !1217)
!1246 = !DILocation(line: 427, column: 8, scope: !1217)
!1247 = !DILocation(line: 427, column: 12, scope: !1217)
!1248 = !DILocation(line: 427, column: 24, scope: !1217)
!1249 = !DILocation(line: 427, column: 37, scope: !1217)
!1250 = !DILocation(line: 427, column: 47, scope: !1217)
!1251 = !DILocation(line: 428, column: 5, scope: !1217)
!1252 = !DILocation(line: 428, column: 17, scope: !1217)
!1253 = !DILocation(line: 428, column: 30, scope: !1217)
!1254 = !DILocation(line: 428, column: 40, scope: !1217)
!1255 = !DILocation(line: 427, column: 53, scope: !1217)
!1256 = !DILocation(line: 419, column: 8, scope: !1218)
!1257 = !DILocation(line: 429, column: 12, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 428, column: 48)
!1259 = !DILocation(line: 430, column: 4, scope: !1258)
!1260 = !DILocation(line: 431, column: 5, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 430, column: 11)
!1262 = !DILocation(line: 440, column: 26, scope: !1165)
!1263 = !DILocation(line: 440, column: 3, scope: !1165)
!1264 = !DILocation(line: 446, column: 7, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 446, column: 7)
!1266 = !DILocation(line: 446, column: 28, scope: !1265)
!1267 = !DILocation(line: 446, column: 31, scope: !1265)
!1268 = !DILocation(line: 446, column: 43, scope: !1265)
!1269 = !DILocation(line: 446, column: 7, scope: !1165)
!1270 = !DILocation(line: 448, column: 28, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 446, column: 55)
!1272 = !DILocation(line: 448, column: 40, scope: !1271)
!1273 = !DILocation(line: 449, column: 7, scope: !1271)
!1274 = !DILocation(line: 448, column: 8, scope: !1271)
!1275 = !DILocation(line: 447, column: 11, scope: !1271)
!1276 = !DILocation(line: 450, column: 3, scope: !1271)
!1277 = !DILocation(line: 451, column: 3, scope: !1165)
!1278 = !DILocation(line: 455, column: 11, scope: !1165)
!1279 = !DILocation(line: 455, column: 3, scope: !1165)
!1280 = !DILocation(line: 460, column: 41, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 455, column: 20)
!1282 = !DILocation(line: 460, column: 53, scope: !1281)
!1283 = !DILocation(line: 460, column: 13, scope: !1281)
!1284 = !DILocation(line: 460, column: 11, scope: !1281)
!1285 = !DILocation(line: 462, column: 4, scope: !1281)
!1286 = !DILocation(line: 470, column: 9, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 470, column: 8)
!1288 = !DILocation(line: 470, column: 13, scope: !1287)
!1289 = !DILocation(line: 470, column: 17, scope: !1287)
!1290 = !DILocation(line: 470, column: 8, scope: !1287)
!1291 = !DILocation(line: 470, column: 25, scope: !1287)
!1292 = !DILocation(line: 471, column: 10, scope: !1287)
!1293 = !DILocation(line: 471, column: 14, scope: !1287)
!1294 = !DILocation(line: 471, column: 18, scope: !1287)
!1295 = !DILocation(line: 471, column: 26, scope: !1287)
!1296 = !DILocation(line: 471, column: 30, scope: !1287)
!1297 = !DILocation(line: 471, column: 41, scope: !1287)
!1298 = !DILocation(line: 472, column: 9, scope: !1287)
!1299 = !DILocation(line: 472, column: 13, scope: !1287)
!1300 = !DILocation(line: 472, column: 17, scope: !1287)
!1301 = !DILocation(line: 472, column: 21, scope: !1287)
!1302 = !DILocation(line: 472, column: 29, scope: !1287)
!1303 = !DILocation(line: 472, column: 33, scope: !1287)
!1304 = !DILocation(line: 472, column: 44, scope: !1287)
!1305 = !DILocation(line: 470, column: 8, scope: !1281)
!1306 = !DILocation(line: 479, column: 9, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 473, column: 33)
!1308 = !DILocation(line: 479, column: 13, scope: !1307)
!1309 = !DILocation(line: 479, column: 17, scope: !1307)
!1310 = !DILocation(line: 479, column: 23, scope: !1307)
!1311 = !DILocation(line: 479, column: 28, scope: !1307)
!1312 = !DILocation(line: 479, column: 32, scope: !1307)
!1313 = !DILocation(line: 478, column: 5, scope: !1307)
!1314 = !DILocation(line: 478, column: 9, scope: !1307)
!1315 = !DILocation(line: 478, column: 16, scope: !1307)
!1316 = !DILocation(line: 478, column: 21, scope: !1307)
!1317 = !DILocation(line: 480, column: 27, scope: !1307)
!1318 = !DILocation(line: 480, column: 31, scope: !1307)
!1319 = !DILocation(line: 480, column: 35, scope: !1307)
!1320 = !DILocation(line: 480, column: 41, scope: !1307)
!1321 = !DILocation(line: 480, column: 46, scope: !1307)
!1322 = !DILocation(line: 481, column: 13, scope: !1307)
!1323 = !DILocation(line: 481, column: 19, scope: !1307)
!1324 = !DILocation(line: 480, column: 5, scope: !1307)
!1325 = !DILocation(line: 482, column: 5, scope: !1307)
!1326 = !DILocation(line: 494, column: 14, scope: !1281)
!1327 = !DILocation(line: 494, column: 12, scope: !1281)
!1328 = !DILocation(line: 498, column: 14, scope: !1281)
!1329 = !DILocation(line: 498, column: 23, scope: !1281)
!1330 = !DILocation(line: 498, column: 30, scope: !1281)
!1331 = !DILocation(line: 498, column: 12, scope: !1281)
!1332 = !DILocation(line: 503, column: 37, scope: !1281)
!1333 = !DILocation(line: 503, column: 49, scope: !1281)
!1334 = !DILocation(line: 503, column: 13, scope: !1281)
!1335 = !DILocation(line: 503, column: 11, scope: !1281)
!1336 = !DILocation(line: 504, column: 8, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 504, column: 8)
!1338 = !DILocation(line: 504, column: 8, scope: !1281)
!1339 = !DILocation(line: 505, column: 5, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 504, column: 30)
!1341 = !DILocation(line: 513, column: 38, scope: !1281)
!1342 = !DILocation(line: 513, column: 13, scope: !1281)
!1343 = !DILocation(line: 513, column: 11, scope: !1281)
!1344 = !DILocation(line: 514, column: 8, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 514, column: 8)
!1346 = !DILocation(line: 514, column: 8, scope: !1281)
!1347 = !DILocation(line: 518, column: 28, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 514, column: 30)
!1349 = !DILocation(line: 518, column: 5, scope: !1348)
!1350 = !DILocation(line: 519, column: 5, scope: !1348)
!1351 = !DILocation(line: 526, column: 11, scope: !1281)
!1352 = !DILocation(line: 532, column: 4, scope: !1281)
!1353 = !DILocation(line: 540, column: 34, scope: !1281)
!1354 = !DILocation(line: 540, column: 13, scope: !1281)
!1355 = !DILocation(line: 540, column: 11, scope: !1281)
!1356 = !DILocation(line: 541, column: 8, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 541, column: 8)
!1358 = !DILocation(line: 541, column: 8, scope: !1281)
!1359 = !DILocation(line: 542, column: 5, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 541, column: 30)
!1361 = !DILocation(line: 546, column: 43, scope: !1281)
!1362 = !DILocation(line: 546, column: 55, scope: !1281)
!1363 = !DILocation(line: 546, column: 8, scope: !1281)
!1364 = !DILocation(line: 545, column: 11, scope: !1281)
!1365 = !DILocation(line: 547, column: 8, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 547, column: 8)
!1367 = !DILocation(line: 547, column: 8, scope: !1281)
!1368 = !DILocation(line: 548, column: 5, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 547, column: 30)
!1370 = !DILocation(line: 573, column: 4, scope: !1281)
!1371 = !DILocation(line: 583, column: 12, scope: !1281)
!1372 = !DILocation(line: 583, column: 16, scope: !1281)
!1373 = !DILocation(line: 583, column: 23, scope: !1281)
!1374 = !DILocation(line: 583, column: 31, scope: !1281)
!1375 = !DILocation(line: 583, column: 38, scope: !1281)
!1376 = !DILocation(line: 583, column: 4, scope: !1281)
!1377 = !DILocation(line: 590, column: 9, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 583, column: 50)
!1379 = !DILocation(line: 590, column: 13, scope: !1378)
!1380 = !DILocation(line: 590, column: 20, scope: !1378)
!1381 = !DILocation(line: 590, column: 28, scope: !1378)
!1382 = !DILocation(line: 590, column: 35, scope: !1378)
!1383 = !DILocation(line: 589, column: 31, scope: !1378)
!1384 = !DILocation(line: 589, column: 5, scope: !1378)
!1385 = !DILocation(line: 589, column: 17, scope: !1378)
!1386 = !DILocation(line: 589, column: 29, scope: !1378)
!1387 = !DILocation(line: 591, column: 5, scope: !1378)
!1388 = !DILocation(line: 591, column: 17, scope: !1378)
!1389 = !DILocation(line: 591, column: 30, scope: !1378)
!1390 = !DILocation(line: 593, column: 34, scope: !1378)
!1391 = !DILocation(line: 594, column: 13, scope: !1378)
!1392 = !DILocation(line: 594, column: 17, scope: !1378)
!1393 = !DILocation(line: 594, column: 24, scope: !1378)
!1394 = !DILocation(line: 595, column: 13, scope: !1378)
!1395 = !DILocation(line: 595, column: 20, scope: !1378)
!1396 = !DILocation(line: 596, column: 13, scope: !1378)
!1397 = !DILocation(line: 596, column: 17, scope: !1378)
!1398 = !DILocation(line: 596, column: 24, scope: !1378)
!1399 = !DILocation(line: 593, column: 14, scope: !1378)
!1400 = !DILocation(line: 593, column: 12, scope: !1378)
!1401 = !DILocation(line: 597, column: 9, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 597, column: 9)
!1403 = !DILocation(line: 597, column: 9, scope: !1378)
!1404 = !DILocation(line: 598, column: 6, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 597, column: 31)
!1406 = !DILocation(line: 608, column: 10, scope: !1378)
!1407 = !DILocation(line: 608, column: 22, scope: !1378)
!1408 = !DILocation(line: 609, column: 38, scope: !1378)
!1409 = !DILocation(line: 609, column: 42, scope: !1378)
!1410 = !DILocation(line: 610, column: 10, scope: !1378)
!1411 = !DILocation(line: 610, column: 18, scope: !1378)
!1412 = !DILocation(line: 611, column: 10, scope: !1378)
!1413 = !DILocation(line: 609, column: 10, scope: !1378)
!1414 = !DILocation(line: 607, column: 9, scope: !1378)
!1415 = !DILocation(line: 606, column: 12, scope: !1378)
!1416 = !DILocation(line: 612, column: 5, scope: !1378)
!1417 = !DILocation(line: 618, column: 10, scope: !1378)
!1418 = !DILocation(line: 618, column: 22, scope: !1378)
!1419 = !DILocation(line: 617, column: 9, scope: !1378)
!1420 = !DILocation(line: 616, column: 12, scope: !1378)
!1421 = !DILocation(line: 619, column: 5, scope: !1378)
!1422 = !DILocation(line: 626, column: 8, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 626, column: 8)
!1424 = !DILocation(line: 626, column: 20, scope: !1423)
!1425 = !DILocation(line: 626, column: 8, scope: !1281)
!1426 = !DILocation(line: 628, column: 29, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 626, column: 32)
!1428 = !DILocation(line: 628, column: 41, scope: !1427)
!1429 = !DILocation(line: 629, column: 8, scope: !1427)
!1430 = !DILocation(line: 628, column: 9, scope: !1427)
!1431 = !DILocation(line: 627, column: 12, scope: !1427)
!1432 = !DILocation(line: 630, column: 4, scope: !1427)
!1433 = !DILocation(line: 631, column: 4, scope: !1281)
!1434 = !DILocation(line: 638, column: 34, scope: !1281)
!1435 = !DILocation(line: 638, column: 13, scope: !1281)
!1436 = !DILocation(line: 638, column: 11, scope: !1281)
!1437 = !DILocation(line: 639, column: 8, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 639, column: 8)
!1439 = !DILocation(line: 639, column: 8, scope: !1281)
!1440 = !DILocation(line: 640, column: 5, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 639, column: 30)
!1442 = !DILocation(line: 643, column: 8, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 643, column: 8)
!1444 = !DILocation(line: 643, column: 12, scope: !1443)
!1445 = !DILocation(line: 643, column: 19, scope: !1443)
!1446 = !DILocation(line: 643, column: 30, scope: !1443)
!1447 = !DILocation(line: 643, column: 8, scope: !1281)
!1448 = !DILocation(line: 649, column: 38, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 643, column: 48)
!1450 = !DILocation(line: 650, column: 10, scope: !1449)
!1451 = !DILocation(line: 649, column: 9, scope: !1449)
!1452 = !DILocation(line: 648, column: 12, scope: !1449)
!1453 = !DILocation(line: 651, column: 9, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 651, column: 9)
!1455 = !DILocation(line: 651, column: 9, scope: !1449)
!1456 = !DILocation(line: 652, column: 6, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 651, column: 31)
!1458 = !DILocation(line: 654, column: 4, scope: !1449)
!1459 = !DILocation(line: 654, column: 15, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 654, column: 15)
!1461 = !DILocation(line: 654, column: 19, scope: !1460)
!1462 = !DILocation(line: 654, column: 26, scope: !1460)
!1463 = !DILocation(line: 654, column: 37, scope: !1460)
!1464 = !DILocation(line: 654, column: 15, scope: !1443)
!1465 = !DILocation(line: 661, column: 10, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 654, column: 60)
!1467 = !DILocation(line: 661, column: 22, scope: !1466)
!1468 = !DILocation(line: 660, column: 9, scope: !1466)
!1469 = !DILocation(line: 659, column: 12, scope: !1466)
!1470 = !DILocation(line: 662, column: 9, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 662, column: 9)
!1472 = !DILocation(line: 662, column: 9, scope: !1466)
!1473 = !DILocation(line: 663, column: 6, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 662, column: 31)
!1475 = !DILocation(line: 665, column: 4, scope: !1466)
!1476 = !DILocation(line: 665, column: 15, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 665, column: 15)
!1478 = !DILocation(line: 665, column: 19, scope: !1477)
!1479 = !DILocation(line: 665, column: 26, scope: !1477)
!1480 = !DILocation(line: 665, column: 37, scope: !1477)
!1481 = !DILocation(line: 665, column: 15, scope: !1460)
!1482 = !DILocation(line: 671, column: 42, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 665, column: 59)
!1484 = !DILocation(line: 672, column: 14, scope: !1483)
!1485 = !DILocation(line: 671, column: 9, scope: !1483)
!1486 = !DILocation(line: 670, column: 12, scope: !1483)
!1487 = !DILocation(line: 673, column: 9, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 673, column: 9)
!1489 = !DILocation(line: 673, column: 9, scope: !1483)
!1490 = !DILocation(line: 674, column: 6, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 673, column: 31)
!1492 = !DILocation(line: 676, column: 4, scope: !1483)
!1493 = !DILocation(line: 677, column: 4, scope: !1281)
!1494 = !DILocation(line: 681, column: 4, scope: !1281)
!1495 = !DILocation(line: 683, column: 4, scope: !1281)
!1496 = !DILocation(line: 690, column: 4, scope: !1281)
!1497 = !DILocation(line: 694, column: 4, scope: !1281)
!1498 = !DILocation(line: 700, column: 11, scope: !1281)
!1499 = !DILocation(line: 701, column: 4, scope: !1281)
!1500 = !DILocation(line: 703, column: 2, scope: !1165)
!1501 = !DILocation(line: 709, column: 40, scope: !1101)
!1502 = !DILocation(line: 709, column: 52, scope: !1101)
!1503 = !DILocation(line: 709, column: 8, scope: !1101)
!1504 = !DILocation(line: 715, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 715, column: 6)
!1506 = !DILocation(line: 715, column: 29, scope: !1505)
!1507 = !DILocation(line: 716, column: 7, scope: !1505)
!1508 = !DILocation(line: 716, column: 19, scope: !1505)
!1509 = !DILocation(line: 716, column: 6, scope: !1505)
!1510 = !DILocation(line: 716, column: 34, scope: !1505)
!1511 = !DILocation(line: 717, column: 7, scope: !1505)
!1512 = !DILocation(line: 717, column: 19, scope: !1505)
!1513 = !DILocation(line: 717, column: 34, scope: !1505)
!1514 = !DILocation(line: 717, column: 41, scope: !1505)
!1515 = !DILocation(line: 717, column: 47, scope: !1505)
!1516 = !DILocation(line: 718, column: 41, scope: !1505)
!1517 = !DILocation(line: 719, column: 7, scope: !1505)
!1518 = !DILocation(line: 719, column: 19, scope: !1505)
!1519 = !DILocation(line: 719, column: 34, scope: !1505)
!1520 = !DILocation(line: 719, column: 42, scope: !1505)
!1521 = !DILocation(line: 719, column: 58, scope: !1505)
!1522 = !DILocation(line: 719, column: 55, scope: !1505)
!1523 = !DILocation(line: 715, column: 6, scope: !1101)
!1524 = !DILocation(line: 721, column: 35, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 719, column: 63)
!1526 = !DILocation(line: 722, column: 7, scope: !1525)
!1527 = !DILocation(line: 722, column: 19, scope: !1525)
!1528 = !DILocation(line: 721, column: 7, scope: !1525)
!1529 = !DILocation(line: 720, column: 10, scope: !1525)
!1530 = !DILocation(line: 723, column: 3, scope: !1525)
!1531 = !DILocation(line: 723, column: 15, scope: !1525)
!1532 = !DILocation(line: 723, column: 26, scope: !1525)
!1533 = !DILocation(line: 724, column: 2, scope: !1525)
!1534 = !DILocation(line: 719, column: 60, scope: !1505)
!1535 = !DILabel(scope: !1101, name: "cleanup", file: !3, line: 726)
!1536 = !DILocation(line: 726, column: 1, scope: !1101)
!1537 = !DILocation(line: 728, column: 6, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 728, column: 6)
!1539 = !DILocation(line: 728, column: 18, scope: !1538)
!1540 = !DILocation(line: 728, column: 6, scope: !1101)
!1541 = !DILocation(line: 732, column: 33, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 728, column: 30)
!1543 = !DILocation(line: 732, column: 45, scope: !1542)
!1544 = !DILocation(line: 733, column: 12, scope: !1542)
!1545 = !DILocation(line: 732, column: 3, scope: !1542)
!1546 = !DILocation(line: 740, column: 37, scope: !1542)
!1547 = !DILocation(line: 740, column: 41, scope: !1542)
!1548 = !DILocation(line: 740, column: 53, scope: !1542)
!1549 = !DILocation(line: 741, column: 9, scope: !1542)
!1550 = !DILocation(line: 740, column: 3, scope: !1542)
!1551 = !DILocation(line: 742, column: 2, scope: !1542)
!1552 = !DILocation(line: 752, column: 6, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 752, column: 6)
!1554 = !DILocation(line: 752, column: 6, scope: !1101)
!1555 = !DILocation(line: 753, column: 33, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 752, column: 28)
!1557 = !DILocation(line: 753, column: 41, scope: !1556)
!1558 = !DILocation(line: 753, column: 12, scope: !1556)
!1559 = !DILocation(line: 753, column: 10, scope: !1556)
!1560 = !DILocation(line: 754, column: 2, scope: !1556)
!1561 = !DILocation(line: 758, column: 2, scope: !1101)
!1562 = !DILocation(line: 758, column: 14, scope: !1101)
!1563 = !DILocation(line: 758, column: 27, scope: !1101)
!1564 = !DILocation(line: 759, column: 2, scope: !1101)
!1565 = !DILocation(line: 760, column: 1, scope: !1101)
!1566 = distinct !DISubprogram(name: "acpi_db_single_step", scope: !924, file: !924, line: 52, type: !1567, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!6, !124, !159, !8}
!1569 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1566, file: !924, line: 52, type: !124)
!1570 = !DILocation(line: 52, column: 1, scope: !1566)
!1571 = !DILocalVariable(name: "op", arg: 2, scope: !1566, file: !924, line: 52, type: !159)
!1572 = !DILocalVariable(name: "op_type", arg: 3, scope: !1566, file: !924, line: 52, type: !8)
