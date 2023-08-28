; ModuleID = '../bcout/drivers/acpi/acpica/pstree.llvm.bc'
source_filename = "drivers/acpi/acpica/pstree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_name_union = type { i32 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }

@_acpi_module_name = internal constant [7 x i8] c"pstree\00", align 1, !dbg !0
@.str = private unnamed_addr constant [28 x i8] c"Invalid AML Opcode: 0x%2.2X\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %op, i32 %argn) #0 !dbg !16 {
entry:
  %retval = alloca %union.acpi_parse_object*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %argn.addr = alloca i32, align 4
  %arg = alloca %union.acpi_parse_object*, align 8
  %op_info = alloca %struct.acpi_opcode_info*, align 8
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !791, metadata !DIExpression()), !dbg !792
  store i32 %argn, i32* %argn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argn.addr, metadata !793, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !795, metadata !DIExpression()), !dbg !796
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %arg, align 8, !dbg !796
  call void @llvm.dbg.declare(metadata %struct.acpi_opcode_info** %op_info, metadata !797, metadata !DIExpression()), !dbg !798
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !799
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !800
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !801
  %1 = load i16, i16* %aml_opcode, align 2, !dbg !801
  %call = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %1) #3, !dbg !802
  store %struct.acpi_opcode_info* %call, %struct.acpi_opcode_info** %op_info, align 8, !dbg !803
  %2 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !804
  %class = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %2, i32 0, i32 4, !dbg !806
  %3 = load i8, i8* %class, align 1, !dbg !806
  %conv = zext i8 %3 to i32, !dbg !804
  %cmp = icmp eq i32 %conv, 10, !dbg !807
  br i1 %cmp, label %if.then, label %if.end, !dbg !808

if.then:                                          ; preds = %entry
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %retval, align 8, !dbg !809
  br label %return, !dbg !809

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !811
  %flags = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %4, i32 0, i32 2, !dbg !813
  %5 = load i16, i16* %flags, align 4, !dbg !813
  %conv2 = zext i16 %5 to i32, !dbg !811
  %and = and i32 %conv2, 4096, !dbg !814
  %tobool = icmp ne i32 %and, 0, !dbg !814
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !815

if.then3:                                         ; preds = %if.end
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %retval, align 8, !dbg !816
  br label %return, !dbg !816

if.end4:                                          ; preds = %if.end
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !818
  %common5 = bitcast %union.acpi_parse_object* %6 to %struct.acpi_parse_obj_common*, !dbg !819
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common5, i32 0, i32 7, !dbg !820
  %arg6 = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !821
  %7 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg6, align 8, !dbg !821
  store %union.acpi_parse_object* %7, %union.acpi_parse_object** %arg, align 8, !dbg !822
  br label %while.cond, !dbg !823

while.cond:                                       ; preds = %while.body, %if.end4
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !824
  %tobool7 = icmp ne %union.acpi_parse_object* %8, null, !dbg !824
  br i1 %tobool7, label %land.rhs, label %land.end, !dbg !825

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, i32* %argn.addr, align 4, !dbg !826
  %tobool8 = icmp ne i32 %9, 0, !dbg !825
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool8, %land.rhs ], !dbg !827
  br i1 %10, label %while.body, label %while.end, !dbg !823

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %argn.addr, align 4, !dbg !828
  %dec = add i32 %11, -1, !dbg !828
  store i32 %dec, i32* %argn.addr, align 4, !dbg !828
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !830
  %common9 = bitcast %union.acpi_parse_object* %12 to %struct.acpi_parse_obj_common*, !dbg !831
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common9, i32 0, i32 5, !dbg !832
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !832
  store %union.acpi_parse_object* %13, %union.acpi_parse_object** %arg, align 8, !dbg !833
  br label %while.cond, !dbg !823, !llvm.loop !834

while.end:                                        ; preds = %land.end
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !836
  store %union.acpi_parse_object* %14, %union.acpi_parse_object** %retval, align 8, !dbg !837
  br label %return, !dbg !837

return:                                           ; preds = %while.end, %if.then3, %if.then
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %retval, align 8, !dbg !838
  ret %union.acpi_parse_object* %15, !dbg !838
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ps_append_arg(%union.acpi_parse_object* %op, %union.acpi_parse_object* %arg) #0 !dbg !839 {
entry:
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %arg.addr = alloca %union.acpi_parse_object*, align 8
  %prev_arg = alloca %union.acpi_parse_object*, align 8
  %op_info = alloca %struct.acpi_opcode_info*, align 8
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !842, metadata !DIExpression()), !dbg !843
  store %union.acpi_parse_object* %arg, %union.acpi_parse_object** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg.addr, metadata !844, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %prev_arg, metadata !846, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.declare(metadata %struct.acpi_opcode_info** %op_info, metadata !848, metadata !DIExpression()), !dbg !849
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !850
  %tobool = icmp ne %union.acpi_parse_object* %0, null, !dbg !850
  br i1 %tobool, label %if.end, label %if.then, !dbg !852

if.then:                                          ; preds = %entry
  br label %return, !dbg !853

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !855
  %common = bitcast %union.acpi_parse_object* %1 to %struct.acpi_parse_obj_common*, !dbg !856
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !857
  %2 = load i16, i16* %aml_opcode, align 2, !dbg !857
  %call = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %2) #3, !dbg !858
  store %struct.acpi_opcode_info* %call, %struct.acpi_opcode_info** %op_info, align 8, !dbg !859
  %3 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !860
  %class = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %3, i32 0, i32 4, !dbg !862
  %4 = load i8, i8* %class, align 1, !dbg !862
  %conv = zext i8 %4 to i32, !dbg !860
  %cmp = icmp eq i32 %conv, 10, !dbg !863
  br i1 %cmp, label %if.then2, label %if.end6, !dbg !864

if.then2:                                         ; preds = %if.end
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !865
  %common3 = bitcast %union.acpi_parse_object* %5 to %struct.acpi_parse_obj_common*, !dbg !865
  %aml_opcode4 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common3, i32 0, i32 3, !dbg !865
  %6 = load i16, i16* %aml_opcode4, align 2, !dbg !865
  %conv5 = zext i16 %6 to i32, !dbg !865
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %conv5) #3, !dbg !865
  br label %return, !dbg !867

if.end6:                                          ; preds = %if.end
  %7 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !868
  %flags = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %7, i32 0, i32 2, !dbg !870
  %8 = load i16, i16* %flags, align 4, !dbg !870
  %conv7 = zext i16 %8 to i32, !dbg !868
  %and = and i32 %conv7, 4096, !dbg !871
  %tobool8 = icmp ne i32 %and, 0, !dbg !871
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !872

if.then9:                                         ; preds = %if.end6
  br label %return, !dbg !873

if.end10:                                         ; preds = %if.end6
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !875
  %common11 = bitcast %union.acpi_parse_object* %9 to %struct.acpi_parse_obj_common*, !dbg !877
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common11, i32 0, i32 7, !dbg !878
  %arg12 = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !879
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg12, align 8, !dbg !879
  %tobool13 = icmp ne %union.acpi_parse_object* %10, null, !dbg !875
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !880

if.then14:                                        ; preds = %if.end10
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !881
  %common15 = bitcast %union.acpi_parse_object* %11 to %struct.acpi_parse_obj_common*, !dbg !883
  %value16 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common15, i32 0, i32 7, !dbg !884
  %arg17 = bitcast %union.acpi_parse_value* %value16 to %union.acpi_parse_object**, !dbg !885
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg17, align 8, !dbg !885
  store %union.acpi_parse_object* %12, %union.acpi_parse_object** %prev_arg, align 8, !dbg !886
  br label %while.cond, !dbg !887

while.cond:                                       ; preds = %while.body, %if.then14
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %prev_arg, align 8, !dbg !888
  %common18 = bitcast %union.acpi_parse_object* %13 to %struct.acpi_parse_obj_common*, !dbg !889
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common18, i32 0, i32 5, !dbg !890
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !890
  %tobool19 = icmp ne %union.acpi_parse_object* %14, null, !dbg !887
  br i1 %tobool19, label %while.body, label %while.end, !dbg !887

while.body:                                       ; preds = %while.cond
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %prev_arg, align 8, !dbg !891
  %common20 = bitcast %union.acpi_parse_object* %15 to %struct.acpi_parse_obj_common*, !dbg !893
  %next21 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common20, i32 0, i32 5, !dbg !894
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next21, align 8, !dbg !894
  store %union.acpi_parse_object* %16, %union.acpi_parse_object** %prev_arg, align 8, !dbg !895
  br label %while.cond, !dbg !887, !llvm.loop !896

while.end:                                        ; preds = %while.cond
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !898
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %prev_arg, align 8, !dbg !899
  %common22 = bitcast %union.acpi_parse_object* %18 to %struct.acpi_parse_obj_common*, !dbg !900
  %next23 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common22, i32 0, i32 5, !dbg !901
  store %union.acpi_parse_object* %17, %union.acpi_parse_object** %next23, align 8, !dbg !902
  br label %if.end27, !dbg !903

if.else:                                          ; preds = %if.end10
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !904
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !906
  %common24 = bitcast %union.acpi_parse_object* %20 to %struct.acpi_parse_obj_common*, !dbg !907
  %value25 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common24, i32 0, i32 7, !dbg !908
  %arg26 = bitcast %union.acpi_parse_value* %value25 to %union.acpi_parse_object**, !dbg !909
  store %union.acpi_parse_object* %19, %union.acpi_parse_object** %arg26, align 8, !dbg !910
  br label %if.end27

if.end27:                                         ; preds = %if.else, %while.end
  br label %while.cond28, !dbg !911

while.cond28:                                     ; preds = %while.body30, %if.end27
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !912
  %tobool29 = icmp ne %union.acpi_parse_object* %21, null, !dbg !911
  br i1 %tobool29, label %while.body30, label %while.end35, !dbg !911

while.body30:                                     ; preds = %while.cond28
  %22 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !913
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !915
  %common31 = bitcast %union.acpi_parse_object* %23 to %struct.acpi_parse_obj_common*, !dbg !916
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common31, i32 0, i32 0, !dbg !917
  store %union.acpi_parse_object* %22, %union.acpi_parse_object** %parent, align 8, !dbg !918
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !919
  %common32 = bitcast %union.acpi_parse_object* %24 to %struct.acpi_parse_obj_common*, !dbg !920
  %next33 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common32, i32 0, i32 5, !dbg !921
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next33, align 8, !dbg !921
  store %union.acpi_parse_object* %25, %union.acpi_parse_object** %arg.addr, align 8, !dbg !922
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !923
  %common34 = bitcast %union.acpi_parse_object* %26 to %struct.acpi_parse_obj_common*, !dbg !924
  %arg_list_length = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common34, i32 0, i32 8, !dbg !925
  %27 = load i8, i8* %arg_list_length, align 8, !dbg !926
  %inc = add i8 %27, 1, !dbg !926
  store i8 %inc, i8* %arg_list_length, align 8, !dbg !926
  br label %while.cond28, !dbg !911, !llvm.loop !927

while.end35:                                      ; preds = %while.cond28
  br label %return, !dbg !929

return:                                           ; preds = %while.end35, %if.then9, %if.then2, %if.then
  ret void, !dbg !930
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_parse_object* @acpi_ps_get_depth_next(%union.acpi_parse_object* %origin, %union.acpi_parse_object* %op) #0 !dbg !931 {
entry:
  %retval = alloca %union.acpi_parse_object*, align 8
  %origin.addr = alloca %union.acpi_parse_object*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %next = alloca %union.acpi_parse_object*, align 8
  %parent = alloca %union.acpi_parse_object*, align 8
  %arg = alloca %union.acpi_parse_object*, align 8
  store %union.acpi_parse_object* %origin, %union.acpi_parse_object** %origin.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %origin.addr, metadata !934, metadata !DIExpression()), !dbg !935
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !936, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %next, metadata !938, metadata !DIExpression()), !dbg !939
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %next, align 8, !dbg !939
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %parent, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !942, metadata !DIExpression()), !dbg !943
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !944
  %tobool = icmp ne %union.acpi_parse_object* %0, null, !dbg !944
  br i1 %tobool, label %if.end, label %if.then, !dbg !946

if.then:                                          ; preds = %entry
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %retval, align 8, !dbg !947
  br label %return, !dbg !947

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !949
  %call = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %1, i32 0) #3, !dbg !950
  store %union.acpi_parse_object* %call, %union.acpi_parse_object** %next, align 8, !dbg !951
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !952
  %tobool1 = icmp ne %union.acpi_parse_object* %2, null, !dbg !952
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !954

if.then2:                                         ; preds = %if.end
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !955
  store %union.acpi_parse_object* %3, %union.acpi_parse_object** %retval, align 8, !dbg !957
  br label %return, !dbg !957

if.end3:                                          ; preds = %if.end
  %4 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !958
  %common = bitcast %union.acpi_parse_object* %4 to %struct.acpi_parse_obj_common*, !dbg !959
  %next4 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 5, !dbg !960
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next4, align 8, !dbg !960
  store %union.acpi_parse_object* %5, %union.acpi_parse_object** %next, align 8, !dbg !961
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !962
  %tobool5 = icmp ne %union.acpi_parse_object* %6, null, !dbg !962
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !964

if.then6:                                         ; preds = %if.end3
  %7 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !965
  store %union.acpi_parse_object* %7, %union.acpi_parse_object** %retval, align 8, !dbg !967
  br label %return, !dbg !967

if.end7:                                          ; preds = %if.end3
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !968
  %common8 = bitcast %union.acpi_parse_object* %8 to %struct.acpi_parse_obj_common*, !dbg !969
  %parent9 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common8, i32 0, i32 0, !dbg !970
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent9, align 8, !dbg !970
  store %union.acpi_parse_object* %9, %union.acpi_parse_object** %parent, align 8, !dbg !971
  br label %while.cond, !dbg !972

while.cond:                                       ; preds = %if.end27, %if.end7
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !973
  %tobool10 = icmp ne %union.acpi_parse_object* %10, null, !dbg !972
  br i1 %tobool10, label %while.body, label %while.end30, !dbg !972

while.body:                                       ; preds = %while.cond
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !974
  %call11 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %11, i32 0) #3, !dbg !976
  store %union.acpi_parse_object* %call11, %union.acpi_parse_object** %arg, align 8, !dbg !977
  br label %while.cond12, !dbg !978

while.cond12:                                     ; preds = %while.body15, %while.body
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !979
  %tobool13 = icmp ne %union.acpi_parse_object* %12, null, !dbg !979
  br i1 %tobool13, label %land.lhs.true, label %land.end, !dbg !980

land.lhs.true:                                    ; preds = %while.cond12
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !981
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %origin.addr, align 8, !dbg !982
  %cmp = icmp ne %union.acpi_parse_object* %13, %14, !dbg !983
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !984

land.rhs:                                         ; preds = %land.lhs.true
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !985
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !986
  %cmp14 = icmp ne %union.acpi_parse_object* %15, %16, !dbg !987
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond12
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond12 ], [ %cmp14, %land.rhs ], !dbg !988
  br i1 %17, label %while.body15, label %while.end, !dbg !978

while.body15:                                     ; preds = %land.end
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !989
  %common16 = bitcast %union.acpi_parse_object* %18 to %struct.acpi_parse_obj_common*, !dbg !991
  %next17 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common16, i32 0, i32 5, !dbg !992
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next17, align 8, !dbg !992
  store %union.acpi_parse_object* %19, %union.acpi_parse_object** %arg, align 8, !dbg !993
  br label %while.cond12, !dbg !978, !llvm.loop !994

while.end:                                        ; preds = %land.end
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !996
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %origin.addr, align 8, !dbg !998
  %cmp18 = icmp eq %union.acpi_parse_object* %20, %21, !dbg !999
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1000

if.then19:                                        ; preds = %while.end
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %retval, align 8, !dbg !1001
  br label %return, !dbg !1001

if.end20:                                         ; preds = %while.end
  %22 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !1003
  %common21 = bitcast %union.acpi_parse_object* %22 to %struct.acpi_parse_obj_common*, !dbg !1005
  %next22 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common21, i32 0, i32 5, !dbg !1006
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next22, align 8, !dbg !1006
  %tobool23 = icmp ne %union.acpi_parse_object* %23, null, !dbg !1003
  br i1 %tobool23, label %if.then24, label %if.end27, !dbg !1007

if.then24:                                        ; preds = %if.end20
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !1008
  %common25 = bitcast %union.acpi_parse_object* %24 to %struct.acpi_parse_obj_common*, !dbg !1010
  %next26 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common25, i32 0, i32 5, !dbg !1011
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next26, align 8, !dbg !1011
  store %union.acpi_parse_object* %25, %union.acpi_parse_object** %retval, align 8, !dbg !1012
  br label %return, !dbg !1012

if.end27:                                         ; preds = %if.end20
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !1013
  store %union.acpi_parse_object* %26, %union.acpi_parse_object** %op.addr, align 8, !dbg !1014
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !1015
  %common28 = bitcast %union.acpi_parse_object* %27 to %struct.acpi_parse_obj_common*, !dbg !1016
  %parent29 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common28, i32 0, i32 0, !dbg !1017
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent29, align 8, !dbg !1017
  store %union.acpi_parse_object* %28, %union.acpi_parse_object** %parent, align 8, !dbg !1018
  br label %while.cond, !dbg !972, !llvm.loop !1019

while.end30:                                      ; preds = %while.cond
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !1021
  store %union.acpi_parse_object* %29, %union.acpi_parse_object** %retval, align 8, !dbg !1022
  br label %return, !dbg !1022

return:                                           ; preds = %while.end30, %if.then24, %if.then19, %if.then6, %if.then2, %if.then
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %retval, align 8, !dbg !1023
  ret %union.acpi_parse_object* %30, !dbg !1023
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/pstree.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 56, elements: !9)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{!10}
!10 = !DISubrange(count: 7)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"Code Model", i32 2}
!15 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!16 = distinct !DISubprogram(name: "acpi_ps_get_arg", scope: !3, file: !3, line: 37, type: !17, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19, !85}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !21, line: 875, size: 1600, elements: !22)
!21 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!22 = !{!23, !734, !750}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !20, file: !21, line: 876, baseType: !24, size: 448)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !21, line: 828, size: 448, elements: !25)
!25 = !{!26, !27, !33, !34, !38, !40, !41, !724, !733}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !24, file: !21, line: 829, baseType: !19, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !24, file: !21, line: 829, baseType: !28, size: 8, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !29, line: 17, baseType: !30)
!29 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !31, line: 21, baseType: !32)
!31 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !24, file: !21, line: 829, baseType: !28, size: 8, offset: 72)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !24, file: !21, line: 829, baseType: !35, size: 16, offset: 80)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !29, line: 19, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !31, line: 24, baseType: !37)
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !24, file: !21, line: 829, baseType: !39, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !24, file: !21, line: 829, baseType: !19, size: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !24, file: !21, line: 829, baseType: !42, size: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !21, line: 133, size: 384, elements: !44)
!44 = !{!45, !708, !709, !710, !711, !720, !721, !722, !723}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !43, file: !21, line: 134, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !48, line: 367, size: 576, elements: !49)
!48 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !58, !74, !88, !101, !115, !125, !359, !376, !391, !404, !482, !494, !508, !518, !536, !558, !577, !596, !615, !628, !654, !671, !684, !698, !707}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !47, file: !48, line: 368, baseType: !51, size: 128)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !48, line: 73, size: 128, elements: !52)
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !51, file: !48, line: 74, baseType: !46, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !51, file: !48, line: 74, baseType: !28, size: 8, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !48, line: 74, baseType: !28, size: 8, offset: 72)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !51, file: !48, line: 74, baseType: !35, size: 16, offset: 80)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !48, line: 74, baseType: !28, size: 8, offset: 96)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !47, file: !48, line: 369, baseType: !59, size: 192)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !48, line: 76, size: 192, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !70}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !59, file: !48, line: 77, baseType: !46, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !59, file: !48, line: 77, baseType: !28, size: 8, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !48, line: 77, baseType: !28, size: 8, offset: 72)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !59, file: !48, line: 77, baseType: !35, size: 16, offset: 80)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !48, line: 77, baseType: !28, size: 8, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !59, file: !48, line: 77, baseType: !67, size: 24, offset: 104)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 24, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !59, file: !48, line: 78, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !29, line: 23, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !31, line: 31, baseType: !73)
!73 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !47, file: !48, line: 370, baseType: !75, size: 256)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !48, line: 93, size: 256, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !84}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !75, file: !48, line: 94, baseType: !46, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !48, line: 94, baseType: !28, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !48, line: 94, baseType: !28, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !75, file: !48, line: 94, baseType: !35, size: 16, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !48, line: 94, baseType: !28, size: 8, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !75, file: !48, line: 94, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !75, file: !48, line: 94, baseType: !85, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !29, line: 21, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !31, line: 27, baseType: !87)
!87 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !47, file: !48, line: 371, baseType: !89, size: 384)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !48, line: 97, size: 384, elements: !90)
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !89, file: !48, line: 98, baseType: !46, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !89, file: !48, line: 98, baseType: !28, size: 8, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !48, line: 98, baseType: !28, size: 8, offset: 72)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !89, file: !48, line: 98, baseType: !35, size: 16, offset: 80)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !48, line: 98, baseType: !28, size: 8, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !89, file: !48, line: 98, baseType: !39, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !89, file: !48, line: 98, baseType: !85, size: 32, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !89, file: !48, line: 99, baseType: !85, size: 32, offset: 224)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !89, file: !48, line: 100, baseType: !39, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !89, file: !48, line: 101, baseType: !42, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !47, file: !48, line: 372, baseType: !102, size: 384)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !48, line: 104, size: 384, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !112, !113, !114}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !102, file: !48, line: 105, baseType: !46, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !48, line: 105, baseType: !28, size: 8, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !48, line: 105, baseType: !28, size: 8, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !102, file: !48, line: 105, baseType: !35, size: 16, offset: 80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !48, line: 105, baseType: !28, size: 8, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !102, file: !48, line: 105, baseType: !42, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !102, file: !48, line: 106, baseType: !111, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !102, file: !48, line: 107, baseType: !39, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !102, file: !48, line: 108, baseType: !85, size: 32, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !102, file: !48, line: 109, baseType: !85, size: 32, offset: 352)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !47, file: !48, line: 373, baseType: !116, size: 192)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !48, line: 118, size: 192, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !48, line: 119, baseType: !46, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !48, line: 119, baseType: !28, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !48, line: 119, baseType: !28, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !48, line: 119, baseType: !35, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !48, line: 119, baseType: !28, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !116, file: !48, line: 119, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !47, file: !48, line: 374, baseType: !126, size: 448)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !48, line: 143, size: 448, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !356, !357, !358}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !126, file: !48, line: 144, baseType: !46, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !48, line: 144, baseType: !28, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !48, line: 144, baseType: !28, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !126, file: !48, line: 144, baseType: !35, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !48, line: 144, baseType: !28, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !126, file: !48, line: 144, baseType: !28, size: 8, offset: 104)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !126, file: !48, line: 145, baseType: !28, size: 8, offset: 112)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !126, file: !48, line: 146, baseType: !28, size: 8, offset: 120)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !126, file: !48, line: 147, baseType: !46, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !126, file: !48, line: 148, baseType: !46, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !126, file: !48, line: 149, baseType: !39, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !126, file: !48, line: 153, baseType: !140, size: 64, offset: 320)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !48, line: 150, size: 64, elements: !141)
!141 = !{!142, !355}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !140, file: !48, line: 151, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !21, line: 248, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!147, !149}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !148, line: 421, baseType: !85)
!148 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !151, line: 37, size: 9024, elements: !152)
!151 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !303, !304, !305, !306, !307, !309, !311, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !338, !339, !340, !341, !342, !343, !344, !345, !347, !353}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !151, line: 38, baseType: !149, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !150, file: !151, line: 39, baseType: !28, size: 8, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !150, file: !151, line: 40, baseType: !28, size: 8, offset: 72)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !150, file: !151, line: 41, baseType: !35, size: 16, offset: 80)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !150, file: !151, line: 42, baseType: !28, size: 8, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !150, file: !151, line: 43, baseType: !28, size: 8, offset: 104)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !150, file: !151, line: 44, baseType: !28, size: 8, offset: 112)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !150, file: !151, line: 45, baseType: !161, size: 16, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !148, line: 445, baseType: !35)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !150, file: !151, line: 46, baseType: !28, size: 8, offset: 144)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !150, file: !151, line: 47, baseType: !28, size: 8, offset: 152)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !150, file: !151, line: 48, baseType: !28, size: 8, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !150, file: !151, line: 49, baseType: !28, size: 8, offset: 168)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !150, file: !151, line: 50, baseType: !28, size: 8, offset: 176)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !150, file: !151, line: 51, baseType: !28, size: 8, offset: 184)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !150, file: !151, line: 52, baseType: !28, size: 8, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !150, file: !151, line: 53, baseType: !28, size: 8, offset: 200)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !150, file: !151, line: 54, baseType: !39, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !150, file: !151, line: 55, baseType: !85, size: 32, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !150, file: !151, line: 56, baseType: !85, size: 32, offset: 352)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !150, file: !151, line: 57, baseType: !85, size: 32, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !150, file: !151, line: 58, baseType: !85, size: 32, offset: 416)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !150, file: !151, line: 60, baseType: !176, size: 640, offset: 448)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !21, line: 893, size: 640, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !301, !302}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !176, file: !21, line: 894, baseType: !39, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !176, file: !21, line: 895, baseType: !39, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !176, file: !21, line: 896, baseType: !39, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !176, file: !21, line: 897, baseType: !39, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !176, file: !21, line: 898, baseType: !39, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !176, file: !21, line: 899, baseType: !19, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !176, file: !21, line: 900, baseType: !42, size: 64, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !176, file: !21, line: 901, baseType: !186, size: 64, offset: 448)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !21, line: 663, size: 640, elements: !188)
!188 = !{!189, !197, !210, !219, !228, !241, !255, !267, !279}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !187, file: !21, line: 664, baseType: !190, size: 128)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !21, line: 567, size: 128, elements: !191)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !21, line: 568, baseType: !124, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !190, file: !21, line: 568, baseType: !28, size: 8, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !190, file: !21, line: 568, baseType: !28, size: 8, offset: 72)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !190, file: !21, line: 568, baseType: !35, size: 16, offset: 80)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !190, file: !21, line: 568, baseType: !35, size: 16, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !187, file: !21, line: 665, baseType: !198, size: 384)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !21, line: 593, size: 384, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !21, line: 594, baseType: !124, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !21, line: 594, baseType: !28, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !21, line: 594, baseType: !28, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !21, line: 594, baseType: !35, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !198, file: !21, line: 594, baseType: !35, size: 16, offset: 96)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !198, file: !21, line: 594, baseType: !35, size: 16, offset: 112)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !198, file: !21, line: 595, baseType: !19, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !198, file: !21, line: 596, baseType: !39, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !198, file: !21, line: 597, baseType: !39, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !198, file: !21, line: 598, baseType: !71, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !187, file: !21, line: 666, baseType: !211, size: 192)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !21, line: 573, size: 192, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !21, line: 574, baseType: !124, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !211, file: !21, line: 574, baseType: !28, size: 8, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !211, file: !21, line: 574, baseType: !28, size: 8, offset: 72)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !211, file: !21, line: 574, baseType: !35, size: 16, offset: 80)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !211, file: !21, line: 574, baseType: !35, size: 16, offset: 96)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !211, file: !21, line: 574, baseType: !46, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !187, file: !21, line: 667, baseType: !220, size: 192)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !21, line: 604, size: 192, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !21, line: 605, baseType: !124, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !220, file: !21, line: 605, baseType: !28, size: 8, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !220, file: !21, line: 605, baseType: !28, size: 8, offset: 72)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !220, file: !21, line: 605, baseType: !35, size: 16, offset: 80)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !220, file: !21, line: 605, baseType: !35, size: 16, offset: 96)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !220, file: !21, line: 605, baseType: !42, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !187, file: !21, line: 668, baseType: !229, size: 448)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !21, line: 608, size: 448, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !21, line: 609, baseType: !124, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !229, file: !21, line: 609, baseType: !28, size: 8, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !21, line: 609, baseType: !28, size: 8, offset: 72)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !229, file: !21, line: 609, baseType: !35, size: 16, offset: 80)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !229, file: !21, line: 609, baseType: !35, size: 16, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !229, file: !21, line: 609, baseType: !85, size: 32, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !229, file: !21, line: 610, baseType: !19, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !229, file: !21, line: 611, baseType: !39, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !229, file: !21, line: 612, baseType: !39, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !229, file: !21, line: 613, baseType: !85, size: 32, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !187, file: !21, line: 669, baseType: !242, size: 512)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !21, line: 580, size: 512, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !21, line: 581, baseType: !124, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !242, file: !21, line: 581, baseType: !28, size: 8, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !242, file: !21, line: 581, baseType: !28, size: 8, offset: 72)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !242, file: !21, line: 581, baseType: !35, size: 16, offset: 80)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !242, file: !21, line: 581, baseType: !35, size: 16, offset: 96)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !242, file: !21, line: 581, baseType: !85, size: 32, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !242, file: !21, line: 582, baseType: !46, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !242, file: !21, line: 583, baseType: !46, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !242, file: !21, line: 584, baseType: !149, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !242, file: !21, line: 585, baseType: !124, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !242, file: !21, line: 586, baseType: !85, size: 32, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !187, file: !21, line: 670, baseType: !256, size: 320)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !21, line: 620, size: 320, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !21, line: 621, baseType: !124, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !256, file: !21, line: 621, baseType: !28, size: 8, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !256, file: !21, line: 621, baseType: !28, size: 8, offset: 72)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !256, file: !21, line: 621, baseType: !35, size: 16, offset: 80)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !256, file: !21, line: 621, baseType: !35, size: 16, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !256, file: !21, line: 621, baseType: !28, size: 8, offset: 112)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !256, file: !21, line: 622, baseType: !149, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !256, file: !21, line: 623, baseType: !46, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !256, file: !21, line: 624, baseType: !71, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !187, file: !21, line: 671, baseType: !268, size: 640)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !21, line: 631, size: 640, elements: !269)
!269 = !{!270, !271, !272, !273, !274, !275}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !21, line: 632, baseType: !124, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !268, file: !21, line: 632, baseType: !28, size: 8, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !21, line: 632, baseType: !28, size: 8, offset: 72)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !268, file: !21, line: 632, baseType: !35, size: 16, offset: 80)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !268, file: !21, line: 632, baseType: !35, size: 16, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !268, file: !21, line: 633, baseType: !276, size: 512, offset: 128)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 512, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !187, file: !21, line: 672, baseType: !280, size: 320)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !21, line: 654, size: 320, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !21, line: 655, baseType: !124, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !280, file: !21, line: 655, baseType: !28, size: 8, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !21, line: 655, baseType: !28, size: 8, offset: 72)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !280, file: !21, line: 655, baseType: !35, size: 16, offset: 80)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !21, line: 655, baseType: !35, size: 16, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !280, file: !21, line: 655, baseType: !28, size: 8, offset: 112)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !280, file: !21, line: 656, baseType: !42, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !280, file: !21, line: 657, baseType: !46, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !280, file: !21, line: 658, baseType: !291, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !21, line: 645, size: 128, elements: !293)
!293 = !{!294, !300}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !292, file: !21, line: 646, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !148, line: 1052, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !299, !85, !124}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !148, line: 424, baseType: !124)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !292, file: !21, line: 647, baseType: !124, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !176, file: !21, line: 902, baseType: !19, size: 64, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !176, file: !21, line: 903, baseType: !85, size: 32, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !150, file: !151, line: 61, baseType: !85, size: 32, offset: 1088)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !150, file: !151, line: 62, baseType: !85, size: 32, offset: 1120)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !150, file: !151, line: 63, baseType: !35, size: 16, offset: 1152)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !150, file: !151, line: 64, baseType: !28, size: 8, offset: 1168)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !150, file: !151, line: 66, baseType: !308, size: 2688, offset: 1216)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2688, elements: !9)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !150, file: !151, line: 67, baseType: !310, size: 3072, offset: 3904)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 3072, elements: !277)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !150, file: !151, line: 68, baseType: !312, size: 576, offset: 6976)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 576, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 9)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !150, file: !151, line: 69, baseType: !111, size: 64, offset: 7552)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !150, file: !151, line: 71, baseType: !39, size: 64, offset: 7616)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !150, file: !151, line: 72, baseType: !111, size: 64, offset: 7680)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !150, file: !151, line: 73, baseType: !186, size: 64, offset: 7744)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !150, file: !151, line: 74, baseType: !42, size: 64, offset: 7808)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !150, file: !151, line: 75, baseType: !46, size: 64, offset: 7872)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !150, file: !151, line: 76, baseType: !42, size: 64, offset: 7936)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !150, file: !151, line: 77, baseType: !19, size: 64, offset: 8000)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !150, file: !151, line: 78, baseType: !46, size: 64, offset: 8064)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !150, file: !151, line: 79, baseType: !42, size: 64, offset: 8128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !150, file: !151, line: 80, baseType: !83, size: 64, offset: 8192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !150, file: !151, line: 81, baseType: !19, size: 64, offset: 8256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !150, file: !151, line: 82, baseType: !328, size: 64, offset: 8320)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !21, line: 702, size: 128, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !330, file: !21, line: 706, baseType: !85, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !330, file: !21, line: 707, baseType: !85, size: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !21, line: 708, baseType: !35, size: 16, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !330, file: !21, line: 709, baseType: !28, size: 8, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !330, file: !21, line: 710, baseType: !28, size: 8, offset: 88)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !330, file: !21, line: 711, baseType: !28, size: 8, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !150, file: !151, line: 83, baseType: !19, size: 64, offset: 8384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !150, file: !151, line: 84, baseType: !46, size: 64, offset: 8448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !150, file: !151, line: 85, baseType: !186, size: 64, offset: 8512)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !150, file: !151, line: 86, baseType: !46, size: 64, offset: 8576)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !150, file: !151, line: 87, baseType: !186, size: 64, offset: 8640)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !150, file: !151, line: 88, baseType: !19, size: 64, offset: 8704)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !150, file: !151, line: 89, baseType: !19, size: 64, offset: 8768)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !150, file: !151, line: 90, baseType: !346, size: 64, offset: 8832)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !150, file: !151, line: 91, baseType: !348, size: 64, offset: 8896)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !21, line: 637, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!147, !149, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !150, file: !151, line: 92, baseType: !354, size: 64, offset: 8960)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !21, line: 641, baseType: !144)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !140, file: !48, line: 152, baseType: !46, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !126, file: !48, line: 155, baseType: !85, size: 32, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !126, file: !48, line: 156, baseType: !161, size: 16, offset: 416)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !126, file: !48, line: 157, baseType: !28, size: 8, offset: 432)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !47, file: !48, line: 375, baseType: !360, size: 576)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !48, line: 122, size: 576, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !360, file: !48, line: 123, baseType: !46, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !48, line: 123, baseType: !28, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !360, file: !48, line: 123, baseType: !28, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !360, file: !48, line: 123, baseType: !35, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !48, line: 123, baseType: !28, size: 8, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !360, file: !48, line: 123, baseType: !28, size: 8, offset: 104)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !360, file: !48, line: 124, baseType: !35, size: 16, offset: 112)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !360, file: !48, line: 125, baseType: !124, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !360, file: !48, line: 126, baseType: !71, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !360, file: !48, line: 127, baseType: !346, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !360, file: !48, line: 128, baseType: !46, size: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !48, line: 129, baseType: !46, size: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !360, file: !48, line: 130, baseType: !42, size: 64, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !360, file: !48, line: 131, baseType: !28, size: 8, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !47, file: !48, line: 376, baseType: !377, size: 448)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !48, line: 134, size: 448, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !390}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !377, file: !48, line: 135, baseType: !46, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !377, file: !48, line: 135, baseType: !28, size: 8, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !377, file: !48, line: 135, baseType: !28, size: 8, offset: 72)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !377, file: !48, line: 135, baseType: !35, size: 16, offset: 80)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !48, line: 135, baseType: !28, size: 8, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !377, file: !48, line: 135, baseType: !28, size: 8, offset: 104)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !377, file: !48, line: 136, baseType: !42, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !377, file: !48, line: 137, baseType: !46, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !48, line: 138, baseType: !46, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !377, file: !48, line: 139, baseType: !389, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !148, line: 129, baseType: !71)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !377, file: !48, line: 140, baseType: !85, size: 32, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !47, file: !48, line: 377, baseType: !392, size: 320)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !48, line: 184, size: 320, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !399, !403}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !392, file: !48, line: 185, baseType: !46, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !392, file: !48, line: 185, baseType: !28, size: 8, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !392, file: !48, line: 185, baseType: !28, size: 8, offset: 72)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !392, file: !48, line: 185, baseType: !35, size: 16, offset: 80)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !48, line: 185, baseType: !28, size: 8, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !392, file: !48, line: 185, baseType: !400, size: 128, offset: 128)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 2)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !392, file: !48, line: 185, baseType: !46, size: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !47, file: !48, line: 378, baseType: !405, size: 384)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !48, line: 187, size: 384, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !405, file: !48, line: 188, baseType: !46, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !405, file: !48, line: 188, baseType: !28, size: 8, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !405, file: !48, line: 188, baseType: !28, size: 8, offset: 72)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !405, file: !48, line: 188, baseType: !35, size: 16, offset: 80)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !48, line: 188, baseType: !28, size: 8, offset: 96)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !405, file: !48, line: 189, baseType: !400, size: 128, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !405, file: !48, line: 189, baseType: !46, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !405, file: !48, line: 189, baseType: !415, size: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !21, line: 480, size: 576, elements: !417)
!417 = !{!418, !419, !420, !421, !429, !444, !476, !477, !478, !479, !480, !481}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !416, file: !21, line: 481, baseType: !42, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !416, file: !21, line: 482, baseType: !415, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !21, line: 483, baseType: !415, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !416, file: !21, line: 484, baseType: !422, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !21, line: 497, size: 256, elements: !424)
!424 = !{!425, !426, !427, !428}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !423, file: !21, line: 498, baseType: !422, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !423, file: !21, line: 499, baseType: !422, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !423, file: !21, line: 500, baseType: !415, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !423, file: !21, line: 501, baseType: !85, size: 32, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !416, file: !21, line: 485, baseType: !430, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !21, line: 466, size: 320, elements: !432)
!432 = !{!433, !438, !439, !440, !441, !442, !443}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !431, file: !21, line: 467, baseType: !434, size: 128)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !21, line: 459, size: 128, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !434, file: !21, line: 460, baseType: !28, size: 8)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !434, file: !21, line: 461, baseType: !71, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !431, file: !21, line: 468, baseType: !434, size: 128, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !431, file: !21, line: 469, baseType: !35, size: 16, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !431, file: !21, line: 470, baseType: !28, size: 8, offset: 272)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !431, file: !21, line: 471, baseType: !28, size: 8, offset: 280)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !431, file: !21, line: 472, baseType: !28, size: 8, offset: 288)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !431, file: !21, line: 473, baseType: !28, size: 8, offset: 296)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !416, file: !21, line: 486, baseType: !445, size: 64, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !21, line: 448, size: 192, elements: !447)
!447 = !{!448, !471, !472, !473, !474, !475}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !446, file: !21, line: 449, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !21, line: 438, size: 64, elements: !450)
!450 = !{!451, !452, !465}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !449, file: !21, line: 439, baseType: !42, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !449, file: !21, line: 440, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !21, line: 419, size: 256, elements: !455)
!455 = !{!456, !461, !462, !463, !464}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !454, file: !21, line: 420, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !148, line: 1049, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!85, !299, !85, !124}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !454, file: !21, line: 421, baseType: !124, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !454, file: !21, line: 422, baseType: !42, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !454, file: !21, line: 423, baseType: !28, size: 8, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !454, file: !21, line: 424, baseType: !28, size: 8, offset: 200)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !449, file: !21, line: 441, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !21, line: 429, size: 128, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !467, file: !21, line: 430, baseType: !42, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !467, file: !21, line: 431, baseType: !466, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !446, file: !21, line: 450, baseType: !430, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !21, line: 451, baseType: !28, size: 8, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !446, file: !21, line: 452, baseType: !28, size: 8, offset: 136)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !446, file: !21, line: 453, baseType: !28, size: 8, offset: 144)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !446, file: !21, line: 454, baseType: !28, size: 8, offset: 152)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !416, file: !21, line: 487, baseType: !71, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !416, file: !21, line: 488, baseType: !85, size: 32, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !416, file: !21, line: 489, baseType: !35, size: 16, offset: 480)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !416, file: !21, line: 490, baseType: !35, size: 16, offset: 496)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !416, file: !21, line: 491, baseType: !28, size: 8, offset: 512)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !416, file: !21, line: 492, baseType: !28, size: 8, offset: 520)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !47, file: !48, line: 379, baseType: !483, size: 384)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !48, line: 192, size: 384, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !491, !492, !493}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !483, file: !48, line: 193, baseType: !46, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !483, file: !48, line: 193, baseType: !28, size: 8, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !483, file: !48, line: 193, baseType: !28, size: 8, offset: 72)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !483, file: !48, line: 193, baseType: !35, size: 16, offset: 80)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !48, line: 193, baseType: !28, size: 8, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !483, file: !48, line: 193, baseType: !400, size: 128, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !483, file: !48, line: 193, baseType: !46, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !483, file: !48, line: 193, baseType: !85, size: 32, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !483, file: !48, line: 194, baseType: !85, size: 32, offset: 352)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !47, file: !48, line: 380, baseType: !495, size: 384)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !48, line: 197, size: 384, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !495, file: !48, line: 198, baseType: !46, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !495, file: !48, line: 198, baseType: !28, size: 8, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !48, line: 198, baseType: !28, size: 8, offset: 72)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !495, file: !48, line: 198, baseType: !35, size: 16, offset: 80)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !48, line: 198, baseType: !28, size: 8, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !495, file: !48, line: 200, baseType: !28, size: 8, offset: 104)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !495, file: !48, line: 201, baseType: !28, size: 8, offset: 112)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !495, file: !48, line: 202, baseType: !400, size: 128, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !495, file: !48, line: 202, baseType: !46, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !495, file: !48, line: 202, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !148, line: 128, baseType: !71)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !47, file: !48, line: 381, baseType: !509, size: 320)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !48, line: 205, size: 320, elements: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !517}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !509, file: !48, line: 206, baseType: !46, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !509, file: !48, line: 206, baseType: !28, size: 8, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !509, file: !48, line: 206, baseType: !28, size: 8, offset: 72)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !509, file: !48, line: 206, baseType: !35, size: 16, offset: 80)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !509, file: !48, line: 206, baseType: !28, size: 8, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !509, file: !48, line: 206, baseType: !400, size: 128, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !509, file: !48, line: 206, baseType: !46, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !47, file: !48, line: 382, baseType: !519, size: 384)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !48, line: 233, size: 384, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !519, file: !48, line: 234, baseType: !46, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !519, file: !48, line: 234, baseType: !28, size: 8, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !519, file: !48, line: 234, baseType: !28, size: 8, offset: 72)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !519, file: !48, line: 234, baseType: !35, size: 16, offset: 80)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !48, line: 234, baseType: !28, size: 8, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !519, file: !48, line: 234, baseType: !28, size: 8, offset: 104)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !519, file: !48, line: 234, baseType: !28, size: 8, offset: 112)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !519, file: !48, line: 234, baseType: !28, size: 8, offset: 120)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !519, file: !48, line: 234, baseType: !42, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !519, file: !48, line: 234, baseType: !85, size: 32, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !519, file: !48, line: 234, baseType: !85, size: 32, offset: 224)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !519, file: !48, line: 234, baseType: !85, size: 32, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !519, file: !48, line: 234, baseType: !28, size: 8, offset: 288)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !519, file: !48, line: 234, baseType: !28, size: 8, offset: 296)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !519, file: !48, line: 234, baseType: !46, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !47, file: !48, line: 383, baseType: !537, size: 576)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !48, line: 237, size: 576, elements: !538)
!538 = !{!539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !537, file: !48, line: 238, baseType: !46, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !537, file: !48, line: 238, baseType: !28, size: 8, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !537, file: !48, line: 238, baseType: !28, size: 8, offset: 72)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !537, file: !48, line: 238, baseType: !35, size: 16, offset: 80)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !48, line: 238, baseType: !28, size: 8, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !537, file: !48, line: 238, baseType: !28, size: 8, offset: 104)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !537, file: !48, line: 238, baseType: !28, size: 8, offset: 112)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !537, file: !48, line: 238, baseType: !28, size: 8, offset: 120)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !537, file: !48, line: 238, baseType: !42, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !537, file: !48, line: 238, baseType: !85, size: 32, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !537, file: !48, line: 238, baseType: !85, size: 32, offset: 224)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !537, file: !48, line: 238, baseType: !85, size: 32, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !537, file: !48, line: 238, baseType: !28, size: 8, offset: 288)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !537, file: !48, line: 238, baseType: !28, size: 8, offset: 296)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !537, file: !48, line: 238, baseType: !35, size: 16, offset: 304)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !537, file: !48, line: 239, baseType: !46, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !537, file: !48, line: 240, baseType: !39, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !537, file: !48, line: 241, baseType: !35, size: 16, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !537, file: !48, line: 242, baseType: !39, size: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !47, file: !48, line: 384, baseType: !559, size: 384)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !48, line: 262, size: 384, elements: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !559, file: !48, line: 263, baseType: !46, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !559, file: !48, line: 263, baseType: !28, size: 8, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !559, file: !48, line: 263, baseType: !28, size: 8, offset: 72)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !559, file: !48, line: 263, baseType: !35, size: 16, offset: 80)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !559, file: !48, line: 263, baseType: !28, size: 8, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !559, file: !48, line: 263, baseType: !28, size: 8, offset: 104)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !559, file: !48, line: 263, baseType: !28, size: 8, offset: 112)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !559, file: !48, line: 263, baseType: !28, size: 8, offset: 120)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !559, file: !48, line: 263, baseType: !42, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !559, file: !48, line: 263, baseType: !85, size: 32, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !559, file: !48, line: 263, baseType: !85, size: 32, offset: 224)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !559, file: !48, line: 263, baseType: !85, size: 32, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !559, file: !48, line: 263, baseType: !28, size: 8, offset: 288)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !559, file: !48, line: 263, baseType: !28, size: 8, offset: 296)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !559, file: !48, line: 263, baseType: !28, size: 8, offset: 304)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !559, file: !48, line: 264, baseType: !46, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !47, file: !48, line: 385, baseType: !578, size: 448)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !48, line: 245, size: 448, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !578, file: !48, line: 246, baseType: !46, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !578, file: !48, line: 246, baseType: !28, size: 8, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !578, file: !48, line: 246, baseType: !28, size: 8, offset: 72)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !578, file: !48, line: 246, baseType: !35, size: 16, offset: 80)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !48, line: 246, baseType: !28, size: 8, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !578, file: !48, line: 246, baseType: !28, size: 8, offset: 104)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !578, file: !48, line: 246, baseType: !28, size: 8, offset: 112)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !578, file: !48, line: 246, baseType: !28, size: 8, offset: 120)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !578, file: !48, line: 246, baseType: !42, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !578, file: !48, line: 246, baseType: !85, size: 32, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !578, file: !48, line: 246, baseType: !85, size: 32, offset: 224)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !578, file: !48, line: 246, baseType: !85, size: 32, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !578, file: !48, line: 246, baseType: !28, size: 8, offset: 288)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !578, file: !48, line: 246, baseType: !28, size: 8, offset: 296)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !578, file: !48, line: 246, baseType: !46, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !578, file: !48, line: 247, baseType: !46, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !47, file: !48, line: 386, baseType: !597, size: 448)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !48, line: 250, size: 448, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !48, line: 251, baseType: !46, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !48, line: 251, baseType: !28, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !48, line: 251, baseType: !28, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !48, line: 251, baseType: !35, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !48, line: 251, baseType: !28, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !597, file: !48, line: 251, baseType: !28, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !597, file: !48, line: 251, baseType: !28, size: 8, offset: 112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !597, file: !48, line: 251, baseType: !28, size: 8, offset: 120)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !48, line: 251, baseType: !42, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !597, file: !48, line: 251, baseType: !85, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !597, file: !48, line: 251, baseType: !85, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !48, line: 251, baseType: !85, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !597, file: !48, line: 251, baseType: !28, size: 8, offset: 288)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !597, file: !48, line: 251, baseType: !28, size: 8, offset: 296)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !597, file: !48, line: 256, baseType: !46, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !597, file: !48, line: 257, baseType: !46, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !47, file: !48, line: 387, baseType: !616, size: 512)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !48, line: 273, size: 512, elements: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !616, file: !48, line: 274, baseType: !46, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !616, file: !48, line: 274, baseType: !28, size: 8, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !616, file: !48, line: 274, baseType: !28, size: 8, offset: 72)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !616, file: !48, line: 274, baseType: !35, size: 16, offset: 80)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !48, line: 274, baseType: !28, size: 8, offset: 96)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !616, file: !48, line: 274, baseType: !42, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !616, file: !48, line: 275, baseType: !85, size: 32, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !616, file: !48, line: 276, baseType: !295, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !616, file: !48, line: 277, baseType: !124, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !616, file: !48, line: 278, baseType: !400, size: 128, offset: 384)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !47, file: !48, line: 388, baseType: !629, size: 512)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !48, line: 281, size: 512, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !644, !645, !646, !652, !653}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !629, file: !48, line: 282, baseType: !46, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !629, file: !48, line: 282, baseType: !28, size: 8, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !629, file: !48, line: 282, baseType: !28, size: 8, offset: 72)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !629, file: !48, line: 282, baseType: !35, size: 16, offset: 80)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !48, line: 282, baseType: !28, size: 8, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !629, file: !48, line: 282, baseType: !28, size: 8, offset: 104)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !629, file: !48, line: 283, baseType: !28, size: 8, offset: 112)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !629, file: !48, line: 284, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !148, line: 1084, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!147, !85, !389, !85, !643, !124, !124}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !629, file: !48, line: 285, baseType: !42, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !629, file: !48, line: 286, baseType: !124, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !629, file: !48, line: 287, baseType: !647, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !148, line: 1102, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!147, !299, !85, !124, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !629, file: !48, line: 288, baseType: !46, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !629, file: !48, line: 289, baseType: !46, size: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !47, file: !48, line: 389, baseType: !655, size: 512)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !48, line: 307, size: 512, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !655, file: !48, line: 308, baseType: !46, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !655, file: !48, line: 308, baseType: !28, size: 8, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !655, file: !48, line: 308, baseType: !28, size: 8, offset: 72)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !655, file: !48, line: 308, baseType: !35, size: 16, offset: 80)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !48, line: 308, baseType: !28, size: 8, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !655, file: !48, line: 308, baseType: !28, size: 8, offset: 104)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !655, file: !48, line: 309, baseType: !28, size: 8, offset: 112)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !655, file: !48, line: 310, baseType: !28, size: 8, offset: 120)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !655, file: !48, line: 311, baseType: !124, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !655, file: !48, line: 312, baseType: !42, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !655, file: !48, line: 313, baseType: !111, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !655, file: !48, line: 314, baseType: !39, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !655, file: !48, line: 315, baseType: !39, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !655, file: !48, line: 316, baseType: !85, size: 32, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !47, file: !48, line: 390, baseType: !672, size: 448)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !48, line: 340, size: 448, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682, !683}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !672, file: !48, line: 341, baseType: !46, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !672, file: !48, line: 341, baseType: !28, size: 8, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !672, file: !48, line: 341, baseType: !28, size: 8, offset: 72)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !672, file: !48, line: 341, baseType: !35, size: 16, offset: 80)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !48, line: 341, baseType: !28, size: 8, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !672, file: !48, line: 341, baseType: !42, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !672, file: !48, line: 342, baseType: !42, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !672, file: !48, line: 343, baseType: !124, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !672, file: !48, line: 344, baseType: !39, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !672, file: !48, line: 345, baseType: !85, size: 32, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !47, file: !48, line: 391, baseType: !685, size: 256)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !48, line: 350, size: 256, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !697}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !685, file: !48, line: 351, baseType: !46, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !685, file: !48, line: 351, baseType: !28, size: 8, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !685, file: !48, line: 351, baseType: !28, size: 8, offset: 72)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !685, file: !48, line: 351, baseType: !35, size: 16, offset: 80)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !48, line: 351, baseType: !28, size: 8, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !685, file: !48, line: 351, baseType: !693, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !148, line: 1055, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !299, !124}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !685, file: !48, line: 352, baseType: !124, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !47, file: !48, line: 392, baseType: !699, size: 192)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !48, line: 357, size: 192, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !699, file: !48, line: 358, baseType: !46, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !699, file: !48, line: 358, baseType: !28, size: 8, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !699, file: !48, line: 358, baseType: !28, size: 8, offset: 72)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !699, file: !48, line: 358, baseType: !35, size: 16, offset: 80)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !48, line: 358, baseType: !28, size: 8, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !48, line: 358, baseType: !46, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !47, file: !48, line: 399, baseType: !43, size: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !43, file: !21, line: 135, baseType: !28, size: 8, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !43, file: !21, line: 136, baseType: !28, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !43, file: !21, line: 137, baseType: !35, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !43, file: !21, line: 138, baseType: !712, size: 32, offset: 96)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !713, line: 327, size: 32, elements: !714)
!713 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !712, file: !713, line: 328, baseType: !85, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !712, file: !713, line: 329, baseType: !717, size: 32)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 4)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !43, file: !21, line: 139, baseType: !42, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !43, file: !21, line: 140, baseType: !42, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !43, file: !21, line: 141, baseType: !42, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !43, file: !21, line: 142, baseType: !161, size: 16, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !24, file: !21, line: 829, baseType: !725, size: 64, offset: 320)
!725 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !21, line: 716, size: 64, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !725, file: !21, line: 717, baseType: !71, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !725, file: !21, line: 718, baseType: !85, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !725, file: !21, line: 719, baseType: !83, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !725, file: !21, line: 720, baseType: !39, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !725, file: !21, line: 721, baseType: !83, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !725, file: !21, line: 722, baseType: !19, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !24, file: !21, line: 829, baseType: !28, size: 8, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !20, file: !21, line: 877, baseType: !735, size: 640)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !21, line: 835, size: 640, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !735, file: !21, line: 836, baseType: !19, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !735, file: !21, line: 836, baseType: !28, size: 8, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !21, line: 836, baseType: !28, size: 8, offset: 72)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !735, file: !21, line: 836, baseType: !35, size: 16, offset: 80)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !735, file: !21, line: 836, baseType: !39, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !735, file: !21, line: 836, baseType: !19, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !21, line: 836, baseType: !42, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !735, file: !21, line: 836, baseType: !725, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !735, file: !21, line: 836, baseType: !28, size: 8, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !735, file: !21, line: 836, baseType: !83, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !735, file: !21, line: 837, baseType: !39, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !735, file: !21, line: 838, baseType: !85, size: 32, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !735, file: !21, line: 839, baseType: !85, size: 32, offset: 608)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !20, file: !21, line: 878, baseType: !751, size: 1600)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !21, line: 846, size: 1600, elements: !752)
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !751, file: !21, line: 847, baseType: !19, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !751, file: !21, line: 847, baseType: !28, size: 8, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !21, line: 847, baseType: !28, size: 8, offset: 72)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !751, file: !21, line: 847, baseType: !35, size: 16, offset: 80)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !751, file: !21, line: 847, baseType: !39, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !751, file: !21, line: 847, baseType: !19, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !751, file: !21, line: 847, baseType: !42, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !751, file: !21, line: 847, baseType: !725, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !751, file: !21, line: 847, baseType: !28, size: 8, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !751, file: !21, line: 847, baseType: !19, size: 64, offset: 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !751, file: !21, line: 848, baseType: !19, size: 64, offset: 512)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !751, file: !21, line: 849, baseType: !83, size: 64, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !751, file: !21, line: 850, baseType: !28, size: 8, offset: 640)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !751, file: !21, line: 851, baseType: !83, size: 64, offset: 704)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !751, file: !21, line: 852, baseType: !83, size: 64, offset: 768)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !751, file: !21, line: 853, baseType: !83, size: 64, offset: 832)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !751, file: !21, line: 854, baseType: !717, size: 32, offset: 896)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !751, file: !21, line: 855, baseType: !85, size: 32, offset: 928)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !751, file: !21, line: 856, baseType: !85, size: 32, offset: 960)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !751, file: !21, line: 857, baseType: !85, size: 32, offset: 992)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !751, file: !21, line: 858, baseType: !85, size: 32, offset: 1024)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !751, file: !21, line: 859, baseType: !85, size: 32, offset: 1056)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !751, file: !21, line: 860, baseType: !85, size: 32, offset: 1088)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !751, file: !21, line: 861, baseType: !85, size: 32, offset: 1120)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !751, file: !21, line: 862, baseType: !85, size: 32, offset: 1152)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !751, file: !21, line: 863, baseType: !85, size: 32, offset: 1184)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !751, file: !21, line: 864, baseType: !85, size: 32, offset: 1216)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !751, file: !21, line: 865, baseType: !85, size: 32, offset: 1248)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !751, file: !21, line: 866, baseType: !85, size: 32, offset: 1280)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !751, file: !21, line: 867, baseType: !85, size: 32, offset: 1312)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !751, file: !21, line: 868, baseType: !35, size: 16, offset: 1344)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !751, file: !21, line: 869, baseType: !28, size: 8, offset: 1360)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !751, file: !21, line: 870, baseType: !28, size: 8, offset: 1368)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !751, file: !21, line: 871, baseType: !28, size: 8, offset: 1376)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !751, file: !21, line: 872, baseType: !788, size: 160, offset: 1384)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 20)
!791 = !DILocalVariable(name: "op", arg: 1, scope: !16, file: !3, line: 37, type: !19)
!792 = !DILocation(line: 37, column: 67, scope: !16)
!793 = !DILocalVariable(name: "argn", arg: 2, scope: !16, file: !3, line: 37, type: !85)
!794 = !DILocation(line: 37, column: 75, scope: !16)
!795 = !DILocalVariable(name: "arg", scope: !16, file: !3, line: 39, type: !19)
!796 = !DILocation(line: 39, column: 27, scope: !16)
!797 = !DILocalVariable(name: "op_info", scope: !16, file: !3, line: 40, type: !328)
!798 = !DILocation(line: 40, column: 33, scope: !16)
!799 = !DILocation(line: 52, column: 36, scope: !16)
!800 = !DILocation(line: 52, column: 40, scope: !16)
!801 = !DILocation(line: 52, column: 47, scope: !16)
!802 = !DILocation(line: 52, column: 12, scope: !16)
!803 = !DILocation(line: 52, column: 10, scope: !16)
!804 = !DILocation(line: 53, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !16, file: !3, line: 53, column: 6)
!806 = !DILocation(line: 53, column: 15, scope: !805)
!807 = !DILocation(line: 53, column: 21, scope: !805)
!808 = !DILocation(line: 53, column: 6, scope: !16)
!809 = !DILocation(line: 57, column: 3, scope: !810)
!810 = distinct !DILexicalBlock(scope: !805, file: !3, line: 53, column: 43)
!811 = !DILocation(line: 62, column: 8, scope: !812)
!812 = distinct !DILexicalBlock(scope: !16, file: !3, line: 62, column: 6)
!813 = !DILocation(line: 62, column: 17, scope: !812)
!814 = !DILocation(line: 62, column: 23, scope: !812)
!815 = !DILocation(line: 62, column: 6, scope: !16)
!816 = !DILocation(line: 66, column: 3, scope: !817)
!817 = distinct !DILexicalBlock(scope: !812, file: !3, line: 62, column: 40)
!818 = !DILocation(line: 71, column: 8, scope: !16)
!819 = !DILocation(line: 71, column: 12, scope: !16)
!820 = !DILocation(line: 71, column: 19, scope: !16)
!821 = !DILocation(line: 71, column: 25, scope: !16)
!822 = !DILocation(line: 71, column: 6, scope: !16)
!823 = !DILocation(line: 72, column: 2, scope: !16)
!824 = !DILocation(line: 72, column: 9, scope: !16)
!825 = !DILocation(line: 72, column: 13, scope: !16)
!826 = !DILocation(line: 72, column: 16, scope: !16)
!827 = !DILocation(line: 0, scope: !16)
!828 = !DILocation(line: 73, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !16, file: !3, line: 72, column: 22)
!830 = !DILocation(line: 74, column: 9, scope: !829)
!831 = !DILocation(line: 74, column: 14, scope: !829)
!832 = !DILocation(line: 74, column: 21, scope: !829)
!833 = !DILocation(line: 74, column: 7, scope: !829)
!834 = distinct !{!834, !823, !835}
!835 = !DILocation(line: 75, column: 2, scope: !16)
!836 = !DILocation(line: 77, column: 10, scope: !16)
!837 = !DILocation(line: 77, column: 2, scope: !16)
!838 = !DILocation(line: 78, column: 1, scope: !16)
!839 = distinct !DISubprogram(name: "acpi_ps_append_arg", scope: !3, file: !3, line: 94, type: !840, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !19, !19}
!842 = !DILocalVariable(name: "op", arg: 1, scope: !839, file: !3, line: 94, type: !19)
!843 = !DILocation(line: 94, column: 45, scope: !839)
!844 = !DILocalVariable(name: "arg", arg: 2, scope: !839, file: !3, line: 94, type: !19)
!845 = !DILocation(line: 94, column: 74, scope: !839)
!846 = !DILocalVariable(name: "prev_arg", scope: !839, file: !3, line: 96, type: !19)
!847 = !DILocation(line: 96, column: 27, scope: !839)
!848 = !DILocalVariable(name: "op_info", scope: !839, file: !3, line: 97, type: !328)
!849 = !DILocation(line: 97, column: 33, scope: !839)
!850 = !DILocation(line: 101, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !839, file: !3, line: 101, column: 6)
!852 = !DILocation(line: 101, column: 6, scope: !839)
!853 = !DILocation(line: 102, column: 3, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !3, line: 101, column: 11)
!855 = !DILocation(line: 107, column: 36, scope: !839)
!856 = !DILocation(line: 107, column: 40, scope: !839)
!857 = !DILocation(line: 107, column: 47, scope: !839)
!858 = !DILocation(line: 107, column: 12, scope: !839)
!859 = !DILocation(line: 107, column: 10, scope: !839)
!860 = !DILocation(line: 108, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !839, file: !3, line: 108, column: 6)
!862 = !DILocation(line: 108, column: 15, scope: !861)
!863 = !DILocation(line: 108, column: 21, scope: !861)
!864 = !DILocation(line: 108, column: 6, scope: !839)
!865 = !DILocation(line: 112, column: 3, scope: !866)
!866 = distinct !DILexicalBlock(scope: !861, file: !3, line: 108, column: 43)
!867 = !DILocation(line: 114, column: 3, scope: !866)
!868 = !DILocation(line: 119, column: 8, scope: !869)
!869 = distinct !DILexicalBlock(scope: !839, file: !3, line: 119, column: 6)
!870 = !DILocation(line: 119, column: 17, scope: !869)
!871 = !DILocation(line: 119, column: 23, scope: !869)
!872 = !DILocation(line: 119, column: 6, scope: !839)
!873 = !DILocation(line: 123, column: 3, scope: !874)
!874 = distinct !DILexicalBlock(scope: !869, file: !3, line: 119, column: 40)
!875 = !DILocation(line: 128, column: 6, scope: !876)
!876 = distinct !DILexicalBlock(scope: !839, file: !3, line: 128, column: 6)
!877 = !DILocation(line: 128, column: 10, scope: !876)
!878 = !DILocation(line: 128, column: 17, scope: !876)
!879 = !DILocation(line: 128, column: 23, scope: !876)
!880 = !DILocation(line: 128, column: 6, scope: !839)
!881 = !DILocation(line: 132, column: 14, scope: !882)
!882 = distinct !DILexicalBlock(scope: !876, file: !3, line: 128, column: 28)
!883 = !DILocation(line: 132, column: 18, scope: !882)
!884 = !DILocation(line: 132, column: 25, scope: !882)
!885 = !DILocation(line: 132, column: 31, scope: !882)
!886 = !DILocation(line: 132, column: 12, scope: !882)
!887 = !DILocation(line: 133, column: 3, scope: !882)
!888 = !DILocation(line: 133, column: 10, scope: !882)
!889 = !DILocation(line: 133, column: 20, scope: !882)
!890 = !DILocation(line: 133, column: 27, scope: !882)
!891 = !DILocation(line: 134, column: 15, scope: !892)
!892 = distinct !DILexicalBlock(scope: !882, file: !3, line: 133, column: 33)
!893 = !DILocation(line: 134, column: 25, scope: !892)
!894 = !DILocation(line: 134, column: 32, scope: !892)
!895 = !DILocation(line: 134, column: 13, scope: !892)
!896 = distinct !{!896, !887, !897}
!897 = !DILocation(line: 135, column: 3, scope: !882)
!898 = !DILocation(line: 136, column: 27, scope: !882)
!899 = !DILocation(line: 136, column: 3, scope: !882)
!900 = !DILocation(line: 136, column: 13, scope: !882)
!901 = !DILocation(line: 136, column: 20, scope: !882)
!902 = !DILocation(line: 136, column: 25, scope: !882)
!903 = !DILocation(line: 137, column: 2, scope: !882)
!904 = !DILocation(line: 140, column: 26, scope: !905)
!905 = distinct !DILexicalBlock(scope: !876, file: !3, line: 137, column: 9)
!906 = !DILocation(line: 140, column: 3, scope: !905)
!907 = !DILocation(line: 140, column: 7, scope: !905)
!908 = !DILocation(line: 140, column: 14, scope: !905)
!909 = !DILocation(line: 140, column: 20, scope: !905)
!910 = !DILocation(line: 140, column: 24, scope: !905)
!911 = !DILocation(line: 145, column: 2, scope: !839)
!912 = !DILocation(line: 145, column: 9, scope: !839)
!913 = !DILocation(line: 146, column: 24, scope: !914)
!914 = distinct !DILexicalBlock(scope: !839, file: !3, line: 145, column: 14)
!915 = !DILocation(line: 146, column: 3, scope: !914)
!916 = !DILocation(line: 146, column: 8, scope: !914)
!917 = !DILocation(line: 146, column: 15, scope: !914)
!918 = !DILocation(line: 146, column: 22, scope: !914)
!919 = !DILocation(line: 147, column: 9, scope: !914)
!920 = !DILocation(line: 147, column: 14, scope: !914)
!921 = !DILocation(line: 147, column: 21, scope: !914)
!922 = !DILocation(line: 147, column: 7, scope: !914)
!923 = !DILocation(line: 149, column: 3, scope: !914)
!924 = !DILocation(line: 149, column: 7, scope: !914)
!925 = !DILocation(line: 149, column: 14, scope: !914)
!926 = !DILocation(line: 149, column: 29, scope: !914)
!927 = distinct !{!927, !911, !928}
!928 = !DILocation(line: 150, column: 2, scope: !839)
!929 = !DILocation(line: 152, column: 2, scope: !839)
!930 = !DILocation(line: 153, column: 1, scope: !839)
!931 = distinct !DISubprogram(name: "acpi_ps_get_depth_next", scope: !3, file: !3, line: 169, type: !932, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!932 = !DISubroutineType(types: !933)
!933 = !{!19, !19, !19}
!934 = !DILocalVariable(name: "origin", arg: 1, scope: !931, file: !3, line: 169, type: !19)
!935 = !DILocation(line: 169, column: 74, scope: !931)
!936 = !DILocalVariable(name: "op", arg: 2, scope: !931, file: !3, line: 170, type: !19)
!937 = !DILocation(line: 170, column: 32, scope: !931)
!938 = !DILocalVariable(name: "next", scope: !931, file: !3, line: 172, type: !19)
!939 = !DILocation(line: 172, column: 27, scope: !931)
!940 = !DILocalVariable(name: "parent", scope: !931, file: !3, line: 173, type: !19)
!941 = !DILocation(line: 173, column: 27, scope: !931)
!942 = !DILocalVariable(name: "arg", scope: !931, file: !3, line: 174, type: !19)
!943 = !DILocation(line: 174, column: 27, scope: !931)
!944 = !DILocation(line: 178, column: 7, scope: !945)
!945 = distinct !DILexicalBlock(scope: !931, file: !3, line: 178, column: 6)
!946 = !DILocation(line: 178, column: 6, scope: !931)
!947 = !DILocation(line: 179, column: 3, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !3, line: 178, column: 11)
!949 = !DILocation(line: 184, column: 25, scope: !931)
!950 = !DILocation(line: 184, column: 9, scope: !931)
!951 = !DILocation(line: 184, column: 7, scope: !931)
!952 = !DILocation(line: 185, column: 6, scope: !953)
!953 = distinct !DILexicalBlock(scope: !931, file: !3, line: 185, column: 6)
!954 = !DILocation(line: 185, column: 6, scope: !931)
!955 = !DILocation(line: 187, column: 11, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !3, line: 185, column: 12)
!957 = !DILocation(line: 187, column: 3, scope: !956)
!958 = !DILocation(line: 192, column: 9, scope: !931)
!959 = !DILocation(line: 192, column: 13, scope: !931)
!960 = !DILocation(line: 192, column: 20, scope: !931)
!961 = !DILocation(line: 192, column: 7, scope: !931)
!962 = !DILocation(line: 193, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !931, file: !3, line: 193, column: 6)
!964 = !DILocation(line: 193, column: 6, scope: !931)
!965 = !DILocation(line: 195, column: 11, scope: !966)
!966 = distinct !DILexicalBlock(scope: !963, file: !3, line: 193, column: 12)
!967 = !DILocation(line: 195, column: 3, scope: !966)
!968 = !DILocation(line: 200, column: 11, scope: !931)
!969 = !DILocation(line: 200, column: 15, scope: !931)
!970 = !DILocation(line: 200, column: 22, scope: !931)
!971 = !DILocation(line: 200, column: 9, scope: !931)
!972 = !DILocation(line: 202, column: 2, scope: !931)
!973 = !DILocation(line: 202, column: 9, scope: !931)
!974 = !DILocation(line: 203, column: 25, scope: !975)
!975 = distinct !DILexicalBlock(scope: !931, file: !3, line: 202, column: 17)
!976 = !DILocation(line: 203, column: 9, scope: !975)
!977 = !DILocation(line: 203, column: 7, scope: !975)
!978 = !DILocation(line: 204, column: 3, scope: !975)
!979 = !DILocation(line: 204, column: 10, scope: !975)
!980 = !DILocation(line: 204, column: 14, scope: !975)
!981 = !DILocation(line: 204, column: 18, scope: !975)
!982 = !DILocation(line: 204, column: 25, scope: !975)
!983 = !DILocation(line: 204, column: 22, scope: !975)
!984 = !DILocation(line: 204, column: 33, scope: !975)
!985 = !DILocation(line: 204, column: 37, scope: !975)
!986 = !DILocation(line: 204, column: 44, scope: !975)
!987 = !DILocation(line: 204, column: 41, scope: !975)
!988 = !DILocation(line: 0, scope: !975)
!989 = !DILocation(line: 207, column: 10, scope: !990)
!990 = distinct !DILexicalBlock(scope: !975, file: !3, line: 204, column: 49)
!991 = !DILocation(line: 207, column: 15, scope: !990)
!992 = !DILocation(line: 207, column: 22, scope: !990)
!993 = !DILocation(line: 207, column: 8, scope: !990)
!994 = distinct !{!994, !978, !995}
!995 = !DILocation(line: 208, column: 3, scope: !975)
!996 = !DILocation(line: 210, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !975, file: !3, line: 210, column: 7)
!998 = !DILocation(line: 210, column: 14, scope: !997)
!999 = !DILocation(line: 210, column: 11, scope: !997)
!1000 = !DILocation(line: 210, column: 7, scope: !975)
!1001 = !DILocation(line: 214, column: 4, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !997, file: !3, line: 210, column: 22)
!1003 = !DILocation(line: 217, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !975, file: !3, line: 217, column: 7)
!1005 = !DILocation(line: 217, column: 15, scope: !1004)
!1006 = !DILocation(line: 217, column: 22, scope: !1004)
!1007 = !DILocation(line: 217, column: 7, scope: !975)
!1008 = !DILocation(line: 222, column: 12, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 217, column: 28)
!1010 = !DILocation(line: 222, column: 20, scope: !1009)
!1011 = !DILocation(line: 222, column: 27, scope: !1009)
!1012 = !DILocation(line: 222, column: 4, scope: !1009)
!1013 = !DILocation(line: 225, column: 8, scope: !975)
!1014 = !DILocation(line: 225, column: 6, scope: !975)
!1015 = !DILocation(line: 226, column: 12, scope: !975)
!1016 = !DILocation(line: 226, column: 20, scope: !975)
!1017 = !DILocation(line: 226, column: 27, scope: !975)
!1018 = !DILocation(line: 226, column: 10, scope: !975)
!1019 = distinct !{!1019, !972, !1020}
!1020 = !DILocation(line: 227, column: 2, scope: !931)
!1021 = !DILocation(line: 230, column: 10, scope: !931)
!1022 = !DILocation(line: 230, column: 2, scope: !931)
!1023 = !DILocation(line: 231, column: 1, scope: !931)
