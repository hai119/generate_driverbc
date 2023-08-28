; ModuleID = '../bcout/drivers/acpi/acpica/exresop.llvm.bc'
source_filename = "drivers/acpi/acpica/exresop.c"
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

@_acpi_module_name = internal constant [8 x i8] c"exresop\00", align 1, !dbg !0
@.str = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Null stack entry at %p\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Bad operand object type [0x%X]\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unknown Reference Class 0x%2.2X in %p\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Invalid descriptor %p [%s]\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Needed [Integer/String/Buffer], found [%s] %p\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Needed [Buffer/String/Package/Reference], found [%s] %p\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Needed [Buffer/String/Package], found [%s] %p\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Needed [Region/Buffer], found [%s] %p\00", align 1
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"Needed Integer/Buffer/String/Package/Ref/Ddb], found [%s] %p\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Internal - Unknown ARGI (required operand) type 0x%X\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Needed type [%s], found [%s] %p\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_resolve_operands(i16 zeroext %opcode, %union.acpi_operand_object** %stack_ptr, %struct.acpi_walk_state* %walk_state) #0 !dbg !810 {
entry:
  %retval = alloca i32, align 4
  %opcode.addr = alloca i16, align 2
  %stack_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %object_type = alloca i8, align 1
  %arg_types = alloca i32, align 4
  %op_info = alloca %struct.acpi_opcode_info*, align 8
  %this_arg_type = alloca i32, align 4
  %type_needed = alloca i32, align 4
  %target_op = alloca i16, align 2
  store i16 %opcode, i16* %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %opcode.addr, metadata !814, metadata !DIExpression()), !dbg !815
  store %union.acpi_operand_object** %stack_ptr, %union.acpi_operand_object*** %stack_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %stack_ptr.addr, metadata !816, metadata !DIExpression()), !dbg !817
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !820, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.declare(metadata i32* %status, metadata !822, metadata !DIExpression()), !dbg !823
  store i32 0, i32* %status, align 4, !dbg !823
  call void @llvm.dbg.declare(metadata i8* %object_type, metadata !824, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.declare(metadata i32* %arg_types, metadata !826, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.declare(metadata %struct.acpi_opcode_info** %op_info, metadata !828, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.declare(metadata i32* %this_arg_type, metadata !830, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata i32* %type_needed, metadata !832, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.declare(metadata i16* %target_op, metadata !835, metadata !DIExpression()), !dbg !836
  store i16 0, i16* %target_op, align 2, !dbg !836
  %0 = load i16, i16* %opcode.addr, align 2, !dbg !837
  %call = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %0) #3, !dbg !838
  store %struct.acpi_opcode_info* %call, %struct.acpi_opcode_info** %op_info, align 8, !dbg !839
  %1 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !840
  %class = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %1, i32 0, i32 4, !dbg !842
  %2 = load i8, i8* %class, align 1, !dbg !842
  %conv = zext i8 %2 to i32, !dbg !840
  %cmp = icmp eq i32 %conv, 10, !dbg !843
  br i1 %cmp, label %if.then, label %if.end, !dbg !844

if.then:                                          ; preds = %entry
  store i32 12289, i32* %retval, align 4, !dbg !845
  br label %return, !dbg !845

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !847
  %runtime_args = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %3, i32 0, i32 1, !dbg !848
  %4 = load i32, i32* %runtime_args, align 4, !dbg !848
  store i32 %4, i32* %arg_types, align 4, !dbg !849
  %5 = load i32, i32* %arg_types, align 4, !dbg !850
  %cmp2 = icmp eq i32 %5, -1, !dbg !852
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !853

if.then4:                                         ; preds = %if.end
  %6 = load i16, i16* %opcode.addr, align 2, !dbg !854
  %conv5 = zext i16 %6 to i32, !dbg !854
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %conv5) #3, !dbg !854
  store i32 12303, i32* %retval, align 4, !dbg !856
  br label %return, !dbg !856

if.end6:                                          ; preds = %if.end
  br label %while.cond, !dbg !857

while.cond:                                       ; preds = %if.end218, %if.end6
  %7 = load i32, i32* %arg_types, align 4, !dbg !858
  %and = and i32 %7, 31, !dbg !858
  %tobool = icmp ne i32 %and, 0, !dbg !857
  br i1 %tobool, label %while.body, label %while.end, !dbg !857

while.body:                                       ; preds = %while.cond
  %8 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !859
  %tobool7 = icmp ne %union.acpi_operand_object** %8, null, !dbg !859
  br i1 %tobool7, label %lor.lhs.false, label %if.then9, !dbg !862

lor.lhs.false:                                    ; preds = %while.body
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !863
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8, !dbg !864
  %tobool8 = icmp ne %union.acpi_operand_object* %10, null, !dbg !864
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !865

if.then9:                                         ; preds = %lor.lhs.false, %while.body
  %11 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !866
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %union.acpi_operand_object** %11) #3, !dbg !866
  store i32 12303, i32* %retval, align 4, !dbg !868
  br label %return, !dbg !868

if.end10:                                         ; preds = %lor.lhs.false
  %12 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !869
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8, !dbg !870
  store %union.acpi_operand_object* %13, %union.acpi_operand_object** %obj_desc, align 8, !dbg !871
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !872
  %15 = bitcast %union.acpi_operand_object* %14 to i8*, !dbg !872
  %16 = bitcast i8* %15 to %union.acpi_descriptor*, !dbg !872
  %common = bitcast %union.acpi_descriptor* %16 to %struct.acpi_common_descriptor*, !dbg !872
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !872
  %17 = load i8, i8* %descriptor_type, align 8, !dbg !872
  %conv11 = zext i8 %17 to i32, !dbg !872
  switch i32 %conv11, label %sw.default40 [
    i32 15, label %sw.bb
    i32 14, label %sw.bb19
  ], !dbg !873

sw.bb:                                            ; preds = %if.end10
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !874
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_namespace_node*, !dbg !876
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %19, i32 0, i32 2, !dbg !876
  %20 = load i8, i8* %type, align 1, !dbg !876
  store i8 %20, i8* %object_type, align 1, !dbg !877
  %21 = load i8, i8* %object_type, align 1, !dbg !878
  %conv12 = zext i8 %21 to i32, !dbg !878
  %cmp13 = icmp eq i32 %conv12, 21, !dbg !880
  br i1 %cmp13, label %if.then15, label %if.end18, !dbg !881

if.then15:                                        ; preds = %sw.bb
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !882
  %23 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_namespace_node*, !dbg !884
  %call16 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %23) #3, !dbg !885
  store %union.acpi_operand_object* %call16, %union.acpi_operand_object** %obj_desc, align 8, !dbg !886
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !887
  %25 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !888
  store %union.acpi_operand_object* %24, %union.acpi_operand_object** %25, align 8, !dbg !889
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !890
  %27 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_namespace_node*, !dbg !891
  %type17 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %27, i32 0, i32 2, !dbg !891
  %28 = load i8, i8* %type17, align 1, !dbg !891
  store i8 %28, i8* %object_type, align 1, !dbg !892
  br label %if.end18, !dbg !893

if.end18:                                         ; preds = %if.then15, %sw.bb
  br label %sw.epilog42, !dbg !894

sw.bb19:                                          ; preds = %if.end10
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !895
  %common20 = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_common*, !dbg !896
  %type21 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common20, i32 0, i32 2, !dbg !897
  %30 = load i8, i8* %type21, align 1, !dbg !897
  store i8 %30, i8* %object_type, align 1, !dbg !898
  %31 = load i8, i8* %object_type, align 1, !dbg !899
  %conv22 = zext i8 %31 to i32, !dbg !899
  %call23 = call zeroext i8 @acpi_ut_valid_object_type(i32 %conv22) #3, !dbg !901
  %tobool24 = icmp ne i8 %call23, 0, !dbg !901
  br i1 %tobool24, label %if.end27, label %if.then25, !dbg !902

if.then25:                                        ; preds = %sw.bb19
  %32 = load i8, i8* %object_type, align 1, !dbg !903
  %conv26 = zext i8 %32 to i32, !dbg !903
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 185, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %conv26) #3, !dbg !903
  store i32 12291, i32* %retval, align 4, !dbg !905
  br label %return, !dbg !905

if.end27:                                         ; preds = %sw.bb19
  %33 = load i8, i8* %object_type, align 1, !dbg !906
  %conv28 = zext i8 %33 to i32, !dbg !906
  %cmp29 = icmp eq i32 %conv28, 20, !dbg !908
  br i1 %cmp29, label %if.then31, label %if.end39, !dbg !909

if.then31:                                        ; preds = %if.end27
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !910
  %reference = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_reference*, !dbg !912
  %class32 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !913
  %35 = load i8, i8* %class32, align 1, !dbg !913
  %conv33 = zext i8 %35 to i32, !dbg !910
  switch i32 %conv33, label %sw.default [
    i32 6, label %sw.bb34
    i32 1, label %sw.bb35
    i32 0, label %sw.bb35
    i32 3, label %sw.bb35
    i32 2, label %sw.bb35
    i32 4, label %sw.bb35
    i32 5, label %sw.bb35
  ], !dbg !914

sw.bb34:                                          ; preds = %if.then31
  store i16 23345, i16* %target_op, align 2, !dbg !915
  br label %sw.bb35, !dbg !917

sw.bb35:                                          ; preds = %if.then31, %if.then31, %if.then31, %if.then31, %if.then31, %if.then31, %sw.bb34
  br label %sw.epilog, !dbg !918

sw.default:                                       ; preds = %if.then31
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !919
  %reference36 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_reference*, !dbg !919
  %class37 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference36, i32 0, i32 5, !dbg !919
  %37 = load i8, i8* %class37, align 1, !dbg !919
  %conv38 = zext i8 %37 to i32, !dbg !919
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !919
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 220, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %conv38, %union.acpi_operand_object* %38) #3, !dbg !919
  store i32 12291, i32* %retval, align 4, !dbg !920
  br label %return, !dbg !920

sw.epilog:                                        ; preds = %sw.bb35
  br label %if.end39, !dbg !921

if.end39:                                         ; preds = %sw.epilog, %if.end27
  br label %sw.epilog42, !dbg !922

sw.default40:                                     ; preds = %if.end10
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !923
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !923
  %41 = bitcast %union.acpi_operand_object* %40 to i8*, !dbg !923
  %call41 = call i8* @acpi_ut_get_descriptor_name(i8* %41) #3, !dbg !923
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 234, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), %union.acpi_operand_object* %39, i8* %call41) #3, !dbg !923
  store i32 12291, i32* %retval, align 4, !dbg !924
  br label %return, !dbg !924

sw.epilog42:                                      ; preds = %if.end39, %if.end18
  %42 = load i32, i32* %arg_types, align 4, !dbg !925
  %and43 = and i32 %42, 31, !dbg !925
  store i32 %and43, i32* %this_arg_type, align 4, !dbg !926
  %43 = load i32, i32* %arg_types, align 4, !dbg !927
  %shr = lshr i32 %43, 5, !dbg !927
  store i32 %shr, i32* %arg_types, align 4, !dbg !927
  %44 = load i32, i32* %this_arg_type, align 4, !dbg !928
  switch i32 %44, label %sw.default88 [
    i32 21, label %sw.bb44
    i32 14, label %sw.bb57
    i32 11, label %sw.bb57
    i32 12, label %sw.bb57
    i32 13, label %sw.bb57
    i32 15, label %sw.bb57
    i32 16, label %sw.bb57
    i32 17, label %sw.bb57
    i32 18, label %sw.bb57
    i32 23, label %sw.bb70
  ], !dbg !929

sw.bb44:                                          ; preds = %sw.epilog42
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !930
  %46 = bitcast %union.acpi_operand_object* %45 to i8*, !dbg !930
  %47 = bitcast i8* %46 to %union.acpi_descriptor*, !dbg !930
  %common45 = bitcast %union.acpi_descriptor* %47 to %struct.acpi_common_descriptor*, !dbg !930
  %descriptor_type46 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common45, i32 0, i32 1, !dbg !930
  %48 = load i8, i8* %descriptor_type46, align 8, !dbg !930
  %conv47 = zext i8 %48 to i32, !dbg !930
  %cmp48 = icmp eq i32 %conv47, 14, !dbg !933
  br i1 %cmp48, label %land.lhs.true, label %if.end56, !dbg !934

land.lhs.true:                                    ; preds = %sw.bb44
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !935
  %common50 = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_common*, !dbg !936
  %type51 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common50, i32 0, i32 2, !dbg !937
  %50 = load i8, i8* %type51, align 1, !dbg !937
  %conv52 = zext i8 %50 to i32, !dbg !935
  %cmp53 = icmp eq i32 %conv52, 2, !dbg !938
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !939

if.then55:                                        ; preds = %land.lhs.true
  br label %next_operand, !dbg !940

if.end56:                                         ; preds = %land.lhs.true, %sw.bb44
  br label %sw.bb57, !dbg !942

sw.bb57:                                          ; preds = %sw.epilog42, %sw.epilog42, %sw.epilog42, %sw.epilog42, %sw.epilog42, %sw.epilog42, %sw.epilog42, %sw.epilog42, %if.end56
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !943
  %52 = bitcast %union.acpi_operand_object* %51 to i8*, !dbg !943
  %53 = bitcast i8* %52 to %union.acpi_descriptor*, !dbg !943
  %common58 = bitcast %union.acpi_descriptor* %53 to %struct.acpi_common_descriptor*, !dbg !943
  %descriptor_type59 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common58, i32 0, i32 1, !dbg !943
  %54 = load i8, i8* %descriptor_type59, align 8, !dbg !943
  %conv60 = zext i8 %54 to i32, !dbg !943
  %cmp61 = icmp eq i32 %conv60, 15, !dbg !945
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !946

if.then63:                                        ; preds = %sw.bb57
  br label %next_operand, !dbg !947

if.end64:                                         ; preds = %sw.bb57
  %55 = load i8, i8* %object_type, align 1, !dbg !949
  %conv65 = zext i8 %55 to i32, !dbg !949
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !950
  %57 = bitcast %union.acpi_operand_object* %56 to i8*, !dbg !950
  %call66 = call i32 @acpi_ex_check_object_type(i32 20, i32 %conv65, i8* %57) #3, !dbg !951
  store i32 %call66, i32* %status, align 4, !dbg !952
  %58 = load i32, i32* %status, align 4, !dbg !953
  %tobool67 = icmp ne i32 %58, 0, !dbg !953
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !955

if.then68:                                        ; preds = %if.end64
  %59 = load i32, i32* %status, align 4, !dbg !956
  store i32 %59, i32* %retval, align 4, !dbg !956
  br label %return, !dbg !956

if.end69:                                         ; preds = %if.end64
  br label %next_operand, !dbg !958

sw.bb70:                                          ; preds = %sw.epilog42
  %60 = load i16, i16* %opcode.addr, align 2, !dbg !959
  %conv71 = zext i16 %60 to i32, !dbg !959
  %cmp72 = icmp eq i32 %conv71, 112, !dbg !961
  br i1 %cmp72, label %land.lhs.true74, label %if.end87, !dbg !962

land.lhs.true74:                                  ; preds = %sw.bb70
  %61 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !963
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %61, align 8, !dbg !964
  %common75 = bitcast %union.acpi_operand_object* %62 to %struct.acpi_object_common*, !dbg !965
  %type76 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common75, i32 0, i32 2, !dbg !966
  %63 = load i8, i8* %type76, align 1, !dbg !966
  %conv77 = zext i8 %63 to i32, !dbg !967
  %cmp78 = icmp eq i32 %conv77, 20, !dbg !968
  br i1 %cmp78, label %land.lhs.true80, label %if.end87, !dbg !969

land.lhs.true80:                                  ; preds = %land.lhs.true74
  %64 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !970
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %64, align 8, !dbg !971
  %reference81 = bitcast %union.acpi_operand_object* %65 to %struct.acpi_object_reference*, !dbg !972
  %class82 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference81, i32 0, i32 5, !dbg !973
  %66 = load i8, i8* %class82, align 1, !dbg !973
  %conv83 = zext i8 %66 to i32, !dbg !974
  %cmp84 = icmp eq i32 %conv83, 3, !dbg !975
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !976

if.then86:                                        ; preds = %land.lhs.true80
  br label %next_operand, !dbg !977

if.end87:                                         ; preds = %land.lhs.true80, %land.lhs.true74, %sw.bb70
  br label %sw.epilog89, !dbg !979

sw.default88:                                     ; preds = %sw.epilog42
  br label %sw.epilog89, !dbg !980

sw.epilog89:                                      ; preds = %sw.default88, %if.end87
  %67 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !981
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !982
  %call90 = call i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %67, %struct.acpi_walk_state* %68) #3, !dbg !983
  store i32 %call90, i32* %status, align 4, !dbg !984
  %69 = load i32, i32* %status, align 4, !dbg !985
  %tobool91 = icmp ne i32 %69, 0, !dbg !985
  br i1 %tobool91, label %if.then92, label %if.end93, !dbg !987

if.then92:                                        ; preds = %sw.epilog89
  %70 = load i32, i32* %status, align 4, !dbg !988
  store i32 %70, i32* %retval, align 4, !dbg !988
  br label %return, !dbg !988

if.end93:                                         ; preds = %sw.epilog89
  %71 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !990
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %71, align 8, !dbg !991
  store %union.acpi_operand_object* %72, %union.acpi_operand_object** %obj_desc, align 8, !dbg !992
  %73 = load i32, i32* %this_arg_type, align 4, !dbg !993
  switch i32 %73, label %sw.default206 [
    i32 4, label %sw.bb94
    i32 3, label %sw.bb95
    i32 2, label %sw.bb96
    i32 1, label %sw.bb97
    i32 5, label %sw.bb98
    i32 6, label %sw.bb99
    i32 8, label %sw.bb113
    i32 7, label %sw.bb127
    i32 10, label %sw.bb141
    i32 9, label %sw.bb149
    i32 19, label %sw.bb166
    i32 20, label %sw.bb174
    i32 22, label %sw.bb182
    i32 23, label %sw.bb190
  ], !dbg !994

sw.bb94:                                          ; preds = %if.end93
  store i32 9, i32* %type_needed, align 4, !dbg !995
  br label %sw.epilog207, !dbg !997

sw.bb95:                                          ; preds = %if.end93
  store i32 7, i32* %type_needed, align 4, !dbg !998
  br label %sw.epilog207, !dbg !999

sw.bb96:                                          ; preds = %if.end93
  store i32 4, i32* %type_needed, align 4, !dbg !1000
  br label %sw.epilog207, !dbg !1001

sw.bb97:                                          ; preds = %if.end93
  store i32 0, i32* %type_needed, align 4, !dbg !1002
  br label %sw.epilog207, !dbg !1003

sw.bb98:                                          ; preds = %if.end93
  store i32 20, i32* %type_needed, align 4, !dbg !1004
  br label %sw.epilog207, !dbg !1005

sw.bb99:                                          ; preds = %if.end93
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1006
  %75 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !1007
  %call100 = call i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %74, %union.acpi_operand_object** %75, i32 1) #3, !dbg !1008
  store i32 %call100, i32* %status, align 4, !dbg !1009
  %76 = load i32, i32* %status, align 4, !dbg !1010
  %tobool101 = icmp ne i32 %76, 0, !dbg !1010
  br i1 %tobool101, label %if.then102, label %if.end108, !dbg !1012

if.then102:                                       ; preds = %sw.bb99
  %77 = load i32, i32* %status, align 4, !dbg !1013
  %cmp103 = icmp eq i32 %77, 8, !dbg !1016
  br i1 %cmp103, label %if.then105, label %if.end107, !dbg !1017

if.then105:                                       ; preds = %if.then102
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1018
  %call106 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %78) #3, !dbg !1018
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1018
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 388, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %call106, %union.acpi_operand_object* %79) #3, !dbg !1018
  store i32 12291, i32* %retval, align 4, !dbg !1020
  br label %return, !dbg !1020

if.end107:                                        ; preds = %if.then102
  %80 = load i32, i32* %status, align 4, !dbg !1021
  store i32 %80, i32* %retval, align 4, !dbg !1021
  br label %return, !dbg !1021

if.end108:                                        ; preds = %sw.bb99
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1022
  %82 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !1024
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %82, align 8, !dbg !1025
  %cmp109 = icmp ne %union.acpi_operand_object* %81, %83, !dbg !1026
  br i1 %cmp109, label %if.then111, label %if.end112, !dbg !1027

if.then111:                                       ; preds = %if.end108
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1028
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %84) #3, !dbg !1030
  br label %if.end112, !dbg !1031

if.end112:                                        ; preds = %if.then111, %if.end108
  br label %next_operand, !dbg !1032

sw.bb113:                                         ; preds = %if.end93
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1033
  %86 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !1034
  %call114 = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %85, %union.acpi_operand_object** %86) #3, !dbg !1035
  store i32 %call114, i32* %status, align 4, !dbg !1036
  %87 = load i32, i32* %status, align 4, !dbg !1037
  %tobool115 = icmp ne i32 %87, 0, !dbg !1037
  br i1 %tobool115, label %if.then116, label %if.end122, !dbg !1039

if.then116:                                       ; preds = %sw.bb113
  %88 = load i32, i32* %status, align 4, !dbg !1040
  %cmp117 = icmp eq i32 %88, 8, !dbg !1043
  br i1 %cmp117, label %if.then119, label %if.end121, !dbg !1044

if.then119:                                       ; preds = %if.then116
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1045
  %call120 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %89) #3, !dbg !1045
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1045
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 413, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %call120, %union.acpi_operand_object* %90) #3, !dbg !1045
  store i32 12291, i32* %retval, align 4, !dbg !1047
  br label %return, !dbg !1047

if.end121:                                        ; preds = %if.then116
  %91 = load i32, i32* %status, align 4, !dbg !1048
  store i32 %91, i32* %retval, align 4, !dbg !1048
  br label %return, !dbg !1048

if.end122:                                        ; preds = %sw.bb113
  %92 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1049
  %93 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !1051
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %93, align 8, !dbg !1052
  %cmp123 = icmp ne %union.acpi_operand_object* %92, %94, !dbg !1053
  br i1 %cmp123, label %if.then125, label %if.end126, !dbg !1054

if.then125:                                       ; preds = %if.end122
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1055
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %95) #3, !dbg !1057
  br label %if.end126, !dbg !1058

if.end126:                                        ; preds = %if.then125, %if.end122
  br label %next_operand, !dbg !1059

sw.bb127:                                         ; preds = %if.end93
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1060
  %97 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !1061
  %call128 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %96, %union.acpi_operand_object** %97, i32 2) #3, !dbg !1062
  store i32 %call128, i32* %status, align 4, !dbg !1063
  %98 = load i32, i32* %status, align 4, !dbg !1064
  %tobool129 = icmp ne i32 %98, 0, !dbg !1064
  br i1 %tobool129, label %if.then130, label %if.end136, !dbg !1066

if.then130:                                       ; preds = %sw.bb127
  %99 = load i32, i32* %status, align 4, !dbg !1067
  %cmp131 = icmp eq i32 %99, 8, !dbg !1070
  br i1 %cmp131, label %if.then133, label %if.end135, !dbg !1071

if.then133:                                       ; preds = %if.then130
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1072
  %call134 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %100) #3, !dbg !1072
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1072
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %call134, %union.acpi_operand_object* %101) #3, !dbg !1072
  store i32 12291, i32* %retval, align 4, !dbg !1074
  br label %return, !dbg !1074

if.end135:                                        ; preds = %if.then130
  %102 = load i32, i32* %status, align 4, !dbg !1075
  store i32 %102, i32* %retval, align 4, !dbg !1075
  br label %return, !dbg !1075

if.end136:                                        ; preds = %sw.bb127
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1076
  %104 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !1078
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %104, align 8, !dbg !1079
  %cmp137 = icmp ne %union.acpi_operand_object* %103, %105, !dbg !1080
  br i1 %cmp137, label %if.then139, label %if.end140, !dbg !1081

if.then139:                                       ; preds = %if.end136
  %106 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1082
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %106) #3, !dbg !1084
  br label %if.end140, !dbg !1085

if.end140:                                        ; preds = %if.then139, %if.end136
  br label %next_operand, !dbg !1086

sw.bb141:                                         ; preds = %if.end93
  %107 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1087
  %common142 = bitcast %union.acpi_operand_object* %107 to %struct.acpi_object_common*, !dbg !1088
  %type143 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common142, i32 0, i32 2, !dbg !1089
  %108 = load i8, i8* %type143, align 1, !dbg !1089
  %conv144 = zext i8 %108 to i32, !dbg !1087
  switch i32 %conv144, label %sw.default146 [
    i32 1, label %sw.bb145
    i32 2, label %sw.bb145
    i32 3, label %sw.bb145
  ], !dbg !1090

sw.bb145:                                         ; preds = %sw.bb141, %sw.bb141, %sw.bb141
  br label %sw.epilog148, !dbg !1091

sw.default146:                                    ; preds = %sw.bb141
  %109 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1093
  %call147 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %109) #3, !dbg !1093
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1093
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 469, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %call147, %union.acpi_operand_object* %110) #3, !dbg !1093
  store i32 12291, i32* %retval, align 4, !dbg !1094
  br label %return, !dbg !1094

sw.epilog148:                                     ; preds = %sw.bb145
  br label %next_operand, !dbg !1095

sw.bb149:                                         ; preds = %if.end93
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1096
  %common150 = bitcast %union.acpi_operand_object* %111 to %struct.acpi_object_common*, !dbg !1097
  %type151 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common150, i32 0, i32 2, !dbg !1098
  %112 = load i8, i8* %type151, align 1, !dbg !1098
  %conv152 = zext i8 %112 to i32, !dbg !1096
  switch i32 %conv152, label %sw.default163 [
    i32 2, label %sw.bb153
    i32 3, label %sw.bb153
    i32 1, label %sw.bb154
  ], !dbg !1099

sw.bb153:                                         ; preds = %sw.bb149, %sw.bb149
  br label %sw.epilog165, !dbg !1100

sw.bb154:                                         ; preds = %sw.bb149
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1102
  %114 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !1103
  %call155 = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %113, %union.acpi_operand_object** %114) #3, !dbg !1104
  store i32 %call155, i32* %status, align 4, !dbg !1105
  %115 = load i32, i32* %status, align 4, !dbg !1106
  %tobool156 = icmp ne i32 %115, 0, !dbg !1106
  br i1 %tobool156, label %if.then157, label %if.end158, !dbg !1108

if.then157:                                       ; preds = %sw.bb154
  %116 = load i32, i32* %status, align 4, !dbg !1109
  store i32 %116, i32* %retval, align 4, !dbg !1109
  br label %return, !dbg !1109

if.end158:                                        ; preds = %sw.bb154
  %117 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1111
  %118 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !1113
  %119 = load %union.acpi_operand_object*, %union.acpi_operand_object** %118, align 8, !dbg !1114
  %cmp159 = icmp ne %union.acpi_operand_object* %117, %119, !dbg !1115
  br i1 %cmp159, label %if.then161, label %if.end162, !dbg !1116

if.then161:                                       ; preds = %if.end158
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1117
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %120) #3, !dbg !1119
  br label %if.end162, !dbg !1120

if.end162:                                        ; preds = %if.then161, %if.end158
  br label %sw.epilog165, !dbg !1121

sw.default163:                                    ; preds = %sw.bb149
  %121 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1122
  %call164 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %121) #3, !dbg !1122
  %122 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1122
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 506, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %call164, %union.acpi_operand_object* %122) #3, !dbg !1122
  store i32 12291, i32* %retval, align 4, !dbg !1123
  br label %return, !dbg !1123

sw.epilog165:                                     ; preds = %if.end162, %sw.bb153
  br label %next_operand, !dbg !1124

sw.bb166:                                         ; preds = %if.end93
  %123 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1125
  %common167 = bitcast %union.acpi_operand_object* %123 to %struct.acpi_object_common*, !dbg !1126
  %type168 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common167, i32 0, i32 2, !dbg !1127
  %124 = load i8, i8* %type168, align 1, !dbg !1127
  %conv169 = zext i8 %124 to i32, !dbg !1125
  switch i32 %conv169, label %sw.default171 [
    i32 4, label %sw.bb170
    i32 2, label %sw.bb170
    i32 3, label %sw.bb170
    i32 20, label %sw.bb170
  ], !dbg !1128

sw.bb170:                                         ; preds = %sw.bb166, %sw.bb166, %sw.bb166, %sw.bb166
  br label %sw.epilog173, !dbg !1129

sw.default171:                                    ; preds = %sw.bb166
  %125 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1131
  %call172 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %125) #3, !dbg !1131
  %126 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1131
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 534, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i8* %call172, %union.acpi_operand_object* %126) #3, !dbg !1131
  store i32 12291, i32* %retval, align 4, !dbg !1132
  br label %return, !dbg !1132

sw.epilog173:                                     ; preds = %sw.bb170
  br label %next_operand, !dbg !1133

sw.bb174:                                         ; preds = %if.end93
  %127 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1134
  %common175 = bitcast %union.acpi_operand_object* %127 to %struct.acpi_object_common*, !dbg !1135
  %type176 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common175, i32 0, i32 2, !dbg !1136
  %128 = load i8, i8* %type176, align 1, !dbg !1136
  %conv177 = zext i8 %128 to i32, !dbg !1134
  switch i32 %conv177, label %sw.default179 [
    i32 4, label %sw.bb178
    i32 2, label %sw.bb178
    i32 3, label %sw.bb178
  ], !dbg !1137

sw.bb178:                                         ; preds = %sw.bb174, %sw.bb174, %sw.bb174
  br label %sw.epilog181, !dbg !1138

sw.default179:                                    ; preds = %sw.bb174
  %129 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1140
  %call180 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %129) #3, !dbg !1140
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1140
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 557, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* %call180, %union.acpi_operand_object* %130) #3, !dbg !1140
  store i32 12291, i32* %retval, align 4, !dbg !1141
  br label %return, !dbg !1141

sw.epilog181:                                     ; preds = %sw.bb178
  br label %next_operand, !dbg !1142

sw.bb182:                                         ; preds = %if.end93
  %131 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1143
  %common183 = bitcast %union.acpi_operand_object* %131 to %struct.acpi_object_common*, !dbg !1144
  %type184 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common183, i32 0, i32 2, !dbg !1145
  %132 = load i8, i8* %type184, align 1, !dbg !1145
  %conv185 = zext i8 %132 to i32, !dbg !1143
  switch i32 %conv185, label %sw.default187 [
    i32 3, label %sw.bb186
    i32 10, label %sw.bb186
  ], !dbg !1146

sw.bb186:                                         ; preds = %sw.bb182, %sw.bb182
  br label %sw.epilog189, !dbg !1147

sw.default187:                                    ; preds = %sw.bb182
  %133 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1149
  %call188 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %133) #3, !dbg !1149
  %134 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1149
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 581, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %call188, %union.acpi_operand_object* %134) #3, !dbg !1149
  store i32 12291, i32* %retval, align 4, !dbg !1150
  br label %return, !dbg !1150

sw.epilog189:                                     ; preds = %sw.bb186
  br label %next_operand, !dbg !1151

sw.bb190:                                         ; preds = %if.end93
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1152
  %common191 = bitcast %union.acpi_operand_object* %135 to %struct.acpi_object_common*, !dbg !1153
  %type192 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common191, i32 0, i32 2, !dbg !1154
  %136 = load i8, i8* %type192, align 1, !dbg !1154
  %conv193 = zext i8 %136 to i32, !dbg !1152
  switch i32 %conv193, label %sw.default195 [
    i32 1, label %sw.bb194
    i32 4, label %sw.bb194
    i32 2, label %sw.bb194
    i32 3, label %sw.bb194
    i32 14, label %sw.bb194
    i32 20, label %sw.bb194
    i32 17, label %sw.bb194
    i32 18, label %sw.bb194
    i32 19, label %sw.bb194
    i32 15, label %sw.bb194
  ], !dbg !1155

sw.bb194:                                         ; preds = %sw.bb190, %sw.bb190, %sw.bb190, %sw.bb190, %sw.bb190, %sw.bb190, %sw.bb190, %sw.bb190, %sw.bb190, %sw.bb190
  br label %sw.epilog205, !dbg !1156

sw.default195:                                    ; preds = %sw.bb190
  %137 = load i8, i8* @acpi_gbl_enable_interpreter_slack, align 1, !dbg !1158
  %tobool196 = icmp ne i8 %137, 0, !dbg !1158
  br i1 %tobool196, label %if.then197, label %if.end198, !dbg !1160

if.then197:                                       ; preds = %sw.default195
  br label %sw.epilog205, !dbg !1161

if.end198:                                        ; preds = %sw.default195
  %138 = load i16, i16* %target_op, align 2, !dbg !1163
  %conv199 = zext i16 %138 to i32, !dbg !1163
  %cmp200 = icmp eq i32 %conv199, 23345, !dbg !1165
  br i1 %cmp200, label %if.then202, label %if.end203, !dbg !1166

if.then202:                                       ; preds = %if.end198
  br label %sw.epilog205, !dbg !1167

if.end203:                                        ; preds = %if.end198
  %139 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1169
  %call204 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %139) #3, !dbg !1169
  %140 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1169
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 627, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i8* %call204, %union.acpi_operand_object* %140) #3, !dbg !1169
  store i32 12291, i32* %retval, align 4, !dbg !1170
  br label %return, !dbg !1170

sw.epilog205:                                     ; preds = %if.then202, %if.then197, %sw.bb194
  br label %next_operand, !dbg !1171

sw.default206:                                    ; preds = %if.end93
  %141 = load i32, i32* %this_arg_type, align 4, !dbg !1172
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 641, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %141) #3, !dbg !1172
  store i32 4097, i32* %retval, align 4, !dbg !1173
  br label %return, !dbg !1173

sw.epilog207:                                     ; preds = %sw.bb98, %sw.bb97, %sw.bb96, %sw.bb95, %sw.bb94
  %142 = load i32, i32* %type_needed, align 4, !dbg !1174
  %143 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !1175
  %144 = load %union.acpi_operand_object*, %union.acpi_operand_object** %143, align 8, !dbg !1176
  %common208 = bitcast %union.acpi_operand_object* %144 to %struct.acpi_object_common*, !dbg !1177
  %type209 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common208, i32 0, i32 2, !dbg !1178
  %145 = load i8, i8* %type209, align 1, !dbg !1178
  %conv210 = zext i8 %145 to i32, !dbg !1179
  %146 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !1180
  %147 = load %union.acpi_operand_object*, %union.acpi_operand_object** %146, align 8, !dbg !1181
  %148 = bitcast %union.acpi_operand_object* %147 to i8*, !dbg !1181
  %call211 = call i32 @acpi_ex_check_object_type(i32 %142, i32 %conv210, i8* %148) #3, !dbg !1182
  store i32 %call211, i32* %status, align 4, !dbg !1183
  %149 = load i32, i32* %status, align 4, !dbg !1184
  %tobool212 = icmp ne i32 %149, 0, !dbg !1184
  br i1 %tobool212, label %if.then213, label %if.end214, !dbg !1186

if.then213:                                       ; preds = %sw.epilog207
  %150 = load i32, i32* %status, align 4, !dbg !1187
  store i32 %150, i32* %retval, align 4, !dbg !1187
  br label %return, !dbg !1187

if.end214:                                        ; preds = %sw.epilog207
  br label %next_operand, !dbg !1184

next_operand:                                     ; preds = %if.end214, %sw.epilog205, %sw.epilog189, %sw.epilog181, %sw.epilog173, %sw.epilog165, %sw.epilog148, %if.end140, %if.end126, %if.end112, %if.then86, %if.end69, %if.then63, %if.then55
  call void @llvm.dbg.label(metadata !1189), !dbg !1190
  %151 = load i32, i32* %arg_types, align 4, !dbg !1191
  %and215 = and i32 %151, 31, !dbg !1191
  %tobool216 = icmp ne i32 %and215, 0, !dbg !1191
  br i1 %tobool216, label %if.then217, label %if.end218, !dbg !1193

if.then217:                                       ; preds = %next_operand
  %152 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !1194
  %incdec.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %152, i32 -1, !dbg !1194
  store %union.acpi_operand_object** %incdec.ptr, %union.acpi_operand_object*** %stack_ptr.addr, align 8, !dbg !1194
  br label %if.end218, !dbg !1196

if.end218:                                        ; preds = %if.then217, %next_operand
  br label %while.cond, !dbg !857, !llvm.loop !1197

while.end:                                        ; preds = %while.cond
  %153 = load i32, i32* %status, align 4, !dbg !1199
  store i32 %153, i32* %retval, align 4, !dbg !1199
  br label %return, !dbg !1199

return:                                           ; preds = %while.end, %if.then213, %sw.default206, %if.end203, %sw.default187, %sw.default179, %sw.default171, %sw.default163, %if.then157, %sw.default146, %if.end135, %if.then133, %if.end121, %if.then119, %if.end107, %if.then105, %if.then92, %if.then68, %sw.default40, %sw.default, %if.then25, %if.then9, %if.then4, %if.then
  %154 = load i32, i32* %retval, align 4, !dbg !1200
  ret i32 %154, !dbg !1200
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_valid_object_type(i32) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_descriptor_name(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ex_check_object_type(i32 %type_needed, i32 %this_type, i8* %object) #0 !dbg !1201 {
entry:
  %retval = alloca i32, align 4
  %type_needed.addr = alloca i32, align 4
  %this_type.addr = alloca i32, align 4
  %object.addr = alloca i8*, align 8
  store i32 %type_needed, i32* %type_needed.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type_needed.addr, metadata !1204, metadata !DIExpression()), !dbg !1205
  store i32 %this_type, i32* %this_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %this_type.addr, metadata !1206, metadata !DIExpression()), !dbg !1207
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1208, metadata !DIExpression()), !dbg !1209
  %0 = load i32, i32* %type_needed.addr, align 4, !dbg !1210
  %cmp = icmp eq i32 %0, 0, !dbg !1212
  br i1 %cmp, label %if.then, label %if.end, !dbg !1213

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1214
  br label %return, !dbg !1214

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %type_needed.addr, align 4, !dbg !1216
  %cmp1 = icmp eq i32 %1, 20, !dbg !1218
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1219

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %this_type.addr, align 4, !dbg !1220
  %cmp3 = icmp eq i32 %2, 1, !dbg !1223
  br i1 %cmp3, label %land.lhs.true, label %if.end5, !dbg !1224

land.lhs.true:                                    ; preds = %if.then2
  %3 = load i8*, i8** %object.addr, align 8, !dbg !1225
  %4 = bitcast i8* %3 to %union.acpi_operand_object*, !dbg !1226
  %common = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_common*, !dbg !1227
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 4, !dbg !1228
  %5 = load i8, i8* %flags, align 4, !dbg !1228
  %conv = zext i8 %5 to i32, !dbg !1229
  %and = and i32 %conv, 1, !dbg !1230
  %tobool = icmp ne i32 %and, 0, !dbg !1230
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !1231

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !1232
  br label %return, !dbg !1232

if.end5:                                          ; preds = %land.lhs.true, %if.then2
  br label %if.end6, !dbg !1234

if.end6:                                          ; preds = %if.end5, %if.end
  %6 = load i32, i32* %type_needed.addr, align 4, !dbg !1235
  %7 = load i32, i32* %this_type.addr, align 4, !dbg !1237
  %cmp7 = icmp ne i32 %6, %7, !dbg !1238
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !1239

if.then9:                                         ; preds = %if.end6
  %8 = load i32, i32* %type_needed.addr, align 4, !dbg !1240
  %call = call i8* @acpi_ut_get_type_name(i32 %8) #3, !dbg !1240
  %9 = load i32, i32* %this_type.addr, align 4, !dbg !1240
  %call10 = call i8* @acpi_ut_get_type_name(i32 %9) #3, !dbg !1240
  %10 = load i8*, i8** %object.addr, align 8, !dbg !1240
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %call, i8* %call10, i8* %10) #3, !dbg !1240
  store i32 12291, i32* %retval, align 4, !dbg !1242
  br label %return, !dbg !1242

if.end11:                                         ; preds = %if.end6
  store i32 0, i32* %retval, align 4, !dbg !1243
  br label %return, !dbg !1243

return:                                           ; preds = %if.end11, %if.then9, %if.then4, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !1244
  ret i32 %11, !dbg !1244
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_string(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

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
!3 = !DIFile(filename: "drivers/acpi/acpica/exresop.c", directory: "/home/lizy2001/genbc/linux")
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
!17 = !{!18, !20, !24, !31, !93, !33, !47, !43}
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
!810 = distinct !DISubprogram(name: "acpi_ex_resolve_operands", scope: !3, file: !3, line: 99, type: !811, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!18, !47, !125, !160}
!813 = !{}
!814 = !DILocalVariable(name: "opcode", arg: 1, scope: !810, file: !3, line: 99, type: !47)
!815 = !DILocation(line: 99, column: 30, scope: !810)
!816 = !DILocalVariable(name: "stack_ptr", arg: 2, scope: !810, file: !3, line: 100, type: !125)
!817 = !DILocation(line: 100, column: 33, scope: !810)
!818 = !DILocalVariable(name: "walk_state", arg: 3, scope: !810, file: !3, line: 101, type: !160)
!819 = !DILocation(line: 101, column: 29, scope: !810)
!820 = !DILocalVariable(name: "obj_desc", scope: !810, file: !3, line: 103, type: !43)
!821 = !DILocation(line: 103, column: 29, scope: !810)
!822 = !DILocalVariable(name: "status", scope: !810, file: !3, line: 104, type: !18)
!823 = !DILocation(line: 104, column: 14, scope: !810)
!824 = !DILocalVariable(name: "object_type", scope: !810, file: !3, line: 105, type: !33)
!825 = !DILocation(line: 105, column: 5, scope: !810)
!826 = !DILocalVariable(name: "arg_types", scope: !810, file: !3, line: 106, type: !20)
!827 = !DILocation(line: 106, column: 6, scope: !810)
!828 = !DILocalVariable(name: "op_info", scope: !810, file: !3, line: 107, type: !420)
!829 = !DILocation(line: 107, column: 33, scope: !810)
!830 = !DILocalVariable(name: "this_arg_type", scope: !810, file: !3, line: 108, type: !20)
!831 = !DILocation(line: 108, column: 6, scope: !810)
!832 = !DILocalVariable(name: "type_needed", scope: !810, file: !3, line: 109, type: !833)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 635, baseType: !20)
!834 = !DILocation(line: 109, column: 19, scope: !810)
!835 = !DILocalVariable(name: "target_op", scope: !810, file: !3, line: 110, type: !47)
!836 = !DILocation(line: 110, column: 6, scope: !810)
!837 = !DILocation(line: 114, column: 36, scope: !810)
!838 = !DILocation(line: 114, column: 12, scope: !810)
!839 = !DILocation(line: 114, column: 10, scope: !810)
!840 = !DILocation(line: 115, column: 6, scope: !841)
!841 = distinct !DILexicalBlock(scope: !810, file: !3, line: 115, column: 6)
!842 = !DILocation(line: 115, column: 15, scope: !841)
!843 = !DILocation(line: 115, column: 21, scope: !841)
!844 = !DILocation(line: 115, column: 6, scope: !810)
!845 = !DILocation(line: 116, column: 3, scope: !846)
!846 = distinct !DILexicalBlock(scope: !841, file: !3, line: 115, column: 43)
!847 = !DILocation(line: 119, column: 14, scope: !810)
!848 = !DILocation(line: 119, column: 23, scope: !810)
!849 = !DILocation(line: 119, column: 12, scope: !810)
!850 = !DILocation(line: 120, column: 6, scope: !851)
!851 = distinct !DILexicalBlock(scope: !810, file: !3, line: 120, column: 6)
!852 = !DILocation(line: 120, column: 16, scope: !851)
!853 = !DILocation(line: 120, column: 6, scope: !810)
!854 = !DILocation(line: 121, column: 3, scope: !855)
!855 = distinct !DILexicalBlock(scope: !851, file: !3, line: 120, column: 40)
!856 = !DILocation(line: 123, column: 3, scope: !855)
!857 = !DILocation(line: 137, column: 2, scope: !810)
!858 = !DILocation(line: 137, column: 9, scope: !810)
!859 = !DILocation(line: 138, column: 8, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 138, column: 7)
!861 = distinct !DILexicalBlock(scope: !810, file: !3, line: 137, column: 42)
!862 = !DILocation(line: 138, column: 18, scope: !860)
!863 = !DILocation(line: 138, column: 23, scope: !860)
!864 = !DILocation(line: 138, column: 22, scope: !860)
!865 = !DILocation(line: 138, column: 7, scope: !861)
!866 = !DILocation(line: 139, column: 4, scope: !867)
!867 = distinct !DILexicalBlock(scope: !860, file: !3, line: 138, column: 34)
!868 = !DILocation(line: 142, column: 4, scope: !867)
!869 = !DILocation(line: 147, column: 15, scope: !861)
!870 = !DILocation(line: 147, column: 14, scope: !861)
!871 = !DILocation(line: 147, column: 12, scope: !861)
!872 = !DILocation(line: 151, column: 11, scope: !861)
!873 = !DILocation(line: 151, column: 3, scope: !861)
!874 = !DILocation(line: 157, column: 39, scope: !875)
!875 = distinct !DILexicalBlock(scope: !861, file: !3, line: 151, column: 47)
!876 = !DILocation(line: 157, column: 50, scope: !875)
!877 = !DILocation(line: 156, column: 16, scope: !875)
!878 = !DILocation(line: 164, column: 8, scope: !879)
!879 = distinct !DILexicalBlock(scope: !875, file: !3, line: 164, column: 8)
!880 = !DILocation(line: 164, column: 20, scope: !879)
!881 = !DILocation(line: 164, column: 8, scope: !875)
!882 = !DILocation(line: 168, column: 16, scope: !883)
!883 = distinct !DILexicalBlock(scope: !879, file: !3, line: 164, column: 46)
!884 = !DILocation(line: 165, column: 44, scope: !883)
!885 = !DILocation(line: 165, column: 16, scope: !883)
!886 = !DILocation(line: 165, column: 14, scope: !883)
!887 = !DILocation(line: 169, column: 18, scope: !883)
!888 = !DILocation(line: 169, column: 6, scope: !883)
!889 = !DILocation(line: 169, column: 16, scope: !883)
!890 = !DILocation(line: 171, column: 40, scope: !883)
!891 = !DILocation(line: 172, column: 9, scope: !883)
!892 = !DILocation(line: 170, column: 17, scope: !883)
!893 = !DILocation(line: 173, column: 4, scope: !883)
!894 = !DILocation(line: 174, column: 4, scope: !875)
!895 = !DILocation(line: 180, column: 18, scope: !875)
!896 = !DILocation(line: 180, column: 28, scope: !875)
!897 = !DILocation(line: 180, column: 35, scope: !875)
!898 = !DILocation(line: 180, column: 16, scope: !875)
!899 = !DILocation(line: 184, column: 35, scope: !900)
!900 = distinct !DILexicalBlock(scope: !875, file: !3, line: 184, column: 8)
!901 = !DILocation(line: 184, column: 9, scope: !900)
!902 = !DILocation(line: 184, column: 8, scope: !875)
!903 = !DILocation(line: 185, column: 5, scope: !904)
!904 = distinct !DILexicalBlock(scope: !900, file: !3, line: 184, column: 49)
!905 = !DILocation(line: 189, column: 5, scope: !904)
!906 = !DILocation(line: 192, column: 8, scope: !907)
!907 = distinct !DILexicalBlock(scope: !875, file: !3, line: 192, column: 8)
!908 = !DILocation(line: 192, column: 20, scope: !907)
!909 = !DILocation(line: 192, column: 8, scope: !875)
!910 = !DILocation(line: 196, column: 13, scope: !911)
!911 = distinct !DILexicalBlock(scope: !907, file: !3, line: 192, column: 55)
!912 = !DILocation(line: 196, column: 23, scope: !911)
!913 = !DILocation(line: 196, column: 33, scope: !911)
!914 = !DILocation(line: 196, column: 5, scope: !911)
!915 = !DILocation(line: 199, column: 16, scope: !916)
!916 = distinct !DILexicalBlock(scope: !911, file: !3, line: 196, column: 40)
!917 = !DILocation(line: 199, column: 6, scope: !916)
!918 = !DILocation(line: 216, column: 6, scope: !916)
!919 = !DILocation(line: 220, column: 6, scope: !916)
!920 = !DILocation(line: 225, column: 6, scope: !916)
!921 = !DILocation(line: 227, column: 4, scope: !911)
!922 = !DILocation(line: 228, column: 4, scope: !875)
!923 = !DILocation(line: 234, column: 4, scope: !875)
!924 = !DILocation(line: 238, column: 4, scope: !875)
!925 = !DILocation(line: 243, column: 19, scope: !861)
!926 = !DILocation(line: 243, column: 17, scope: !861)
!927 = !DILocation(line: 244, column: 3, scope: !861)
!928 = !DILocation(line: 250, column: 11, scope: !861)
!929 = !DILocation(line: 250, column: 3, scope: !861)
!930 = !DILocation(line: 253, column: 9, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !3, line: 253, column: 8)
!932 = distinct !DILexicalBlock(scope: !861, file: !3, line: 250, column: 26)
!933 = !DILocation(line: 253, column: 44, scope: !931)
!934 = !DILocation(line: 254, column: 33, scope: !931)
!935 = !DILocation(line: 255, column: 9, scope: !931)
!936 = !DILocation(line: 255, column: 19, scope: !931)
!937 = !DILocation(line: 255, column: 26, scope: !931)
!938 = !DILocation(line: 255, column: 31, scope: !931)
!939 = !DILocation(line: 253, column: 8, scope: !932)
!940 = !DILocation(line: 260, column: 5, scope: !941)
!941 = distinct !DILexicalBlock(scope: !931, file: !3, line: 255, column: 53)
!942 = !DILocation(line: 255, column: 50, scope: !931)
!943 = !DILocation(line: 282, column: 8, scope: !944)
!944 = distinct !DILexicalBlock(scope: !932, file: !3, line: 282, column: 8)
!945 = !DILocation(line: 282, column: 43, scope: !944)
!946 = !DILocation(line: 282, column: 8, scope: !932)
!947 = !DILocation(line: 284, column: 5, scope: !948)
!948 = distinct !DILexicalBlock(scope: !944, file: !3, line: 283, column: 30)
!949 = !DILocation(line: 289, column: 13, scope: !932)
!950 = !DILocation(line: 289, column: 26, scope: !932)
!951 = !DILocation(line: 288, column: 8, scope: !932)
!952 = !DILocation(line: 287, column: 11, scope: !932)
!953 = !DILocation(line: 290, column: 8, scope: !954)
!954 = distinct !DILexicalBlock(scope: !932, file: !3, line: 290, column: 8)
!955 = !DILocation(line: 290, column: 8, scope: !932)
!956 = !DILocation(line: 291, column: 5, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !3, line: 290, column: 30)
!958 = !DILocation(line: 293, column: 4, scope: !932)
!959 = !DILocation(line: 302, column: 9, scope: !960)
!960 = distinct !DILexicalBlock(scope: !932, file: !3, line: 302, column: 8)
!961 = !DILocation(line: 302, column: 16, scope: !960)
!962 = !DILocation(line: 302, column: 33, scope: !960)
!963 = !DILocation(line: 303, column: 11, scope: !960)
!964 = !DILocation(line: 303, column: 10, scope: !960)
!965 = !DILocation(line: 303, column: 23, scope: !960)
!966 = !DILocation(line: 303, column: 30, scope: !960)
!967 = !DILocation(line: 303, column: 9, scope: !960)
!968 = !DILocation(line: 303, column: 35, scope: !960)
!969 = !DILocation(line: 305, column: 8, scope: !960)
!970 = !DILocation(line: 305, column: 14, scope: !960)
!971 = !DILocation(line: 305, column: 13, scope: !960)
!972 = !DILocation(line: 305, column: 26, scope: !960)
!973 = !DILocation(line: 305, column: 36, scope: !960)
!974 = !DILocation(line: 305, column: 12, scope: !960)
!975 = !DILocation(line: 305, column: 42, scope: !960)
!976 = !DILocation(line: 302, column: 8, scope: !932)
!977 = !DILocation(line: 307, column: 5, scope: !978)
!978 = distinct !DILexicalBlock(scope: !960, file: !3, line: 306, column: 27)
!979 = !DILocation(line: 309, column: 4, scope: !932)
!980 = !DILocation(line: 315, column: 4, scope: !932)
!981 = !DILocation(line: 321, column: 37, scope: !861)
!982 = !DILocation(line: 321, column: 48, scope: !861)
!983 = !DILocation(line: 321, column: 12, scope: !861)
!984 = !DILocation(line: 321, column: 10, scope: !861)
!985 = !DILocation(line: 322, column: 7, scope: !986)
!986 = distinct !DILexicalBlock(scope: !861, file: !3, line: 322, column: 7)
!987 = !DILocation(line: 322, column: 7, scope: !861)
!988 = !DILocation(line: 323, column: 4, scope: !989)
!989 = distinct !DILexicalBlock(scope: !986, file: !3, line: 322, column: 29)
!990 = !DILocation(line: 328, column: 15, scope: !861)
!991 = !DILocation(line: 328, column: 14, scope: !861)
!992 = !DILocation(line: 328, column: 12, scope: !861)
!993 = !DILocation(line: 333, column: 11, scope: !861)
!994 = !DILocation(line: 333, column: 3, scope: !861)
!995 = !DILocation(line: 342, column: 16, scope: !996)
!996 = distinct !DILexicalBlock(scope: !861, file: !3, line: 333, column: 26)
!997 = !DILocation(line: 343, column: 4, scope: !996)
!998 = !DILocation(line: 349, column: 16, scope: !996)
!999 = !DILocation(line: 350, column: 4, scope: !996)
!1000 = !DILocation(line: 356, column: 16, scope: !996)
!1001 = !DILocation(line: 357, column: 4, scope: !996)
!1002 = !DILocation(line: 363, column: 16, scope: !996)
!1003 = !DILocation(line: 364, column: 4, scope: !996)
!1004 = !DILocation(line: 370, column: 16, scope: !996)
!1005 = !DILocation(line: 371, column: 4, scope: !996)
!1006 = !DILocation(line: 384, column: 40, scope: !996)
!1007 = !DILocation(line: 384, column: 50, scope: !996)
!1008 = !DILocation(line: 384, column: 13, scope: !996)
!1009 = !DILocation(line: 384, column: 11, scope: !996)
!1010 = !DILocation(line: 386, column: 8, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !996, file: !3, line: 386, column: 8)
!1012 = !DILocation(line: 386, column: 8, scope: !996)
!1013 = !DILocation(line: 387, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 387, column: 9)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 386, column: 30)
!1016 = !DILocation(line: 387, column: 16, scope: !1014)
!1017 = !DILocation(line: 387, column: 9, scope: !1015)
!1018 = !DILocation(line: 388, column: 6, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 387, column: 28)
!1020 = !DILocation(line: 393, column: 6, scope: !1019)
!1021 = !DILocation(line: 396, column: 5, scope: !1015)
!1022 = !DILocation(line: 399, column: 8, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !996, file: !3, line: 399, column: 8)
!1024 = !DILocation(line: 399, column: 21, scope: !1023)
!1025 = !DILocation(line: 399, column: 20, scope: !1023)
!1026 = !DILocation(line: 399, column: 17, scope: !1023)
!1027 = !DILocation(line: 399, column: 8, scope: !996)
!1028 = !DILocation(line: 400, column: 30, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 399, column: 32)
!1030 = !DILocation(line: 400, column: 5, scope: !1029)
!1031 = !DILocation(line: 401, column: 4, scope: !1029)
!1032 = !DILocation(line: 402, column: 4, scope: !996)
!1033 = !DILocation(line: 410, column: 39, scope: !996)
!1034 = !DILocation(line: 410, column: 49, scope: !996)
!1035 = !DILocation(line: 410, column: 13, scope: !996)
!1036 = !DILocation(line: 410, column: 11, scope: !996)
!1037 = !DILocation(line: 411, column: 8, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !996, file: !3, line: 411, column: 8)
!1039 = !DILocation(line: 411, column: 8, scope: !996)
!1040 = !DILocation(line: 412, column: 9, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 412, column: 9)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 411, column: 30)
!1043 = !DILocation(line: 412, column: 16, scope: !1041)
!1044 = !DILocation(line: 412, column: 9, scope: !1042)
!1045 = !DILocation(line: 413, column: 6, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 412, column: 28)
!1047 = !DILocation(line: 418, column: 6, scope: !1046)
!1048 = !DILocation(line: 421, column: 5, scope: !1042)
!1049 = !DILocation(line: 424, column: 8, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !996, file: !3, line: 424, column: 8)
!1051 = !DILocation(line: 424, column: 21, scope: !1050)
!1052 = !DILocation(line: 424, column: 20, scope: !1050)
!1053 = !DILocation(line: 424, column: 17, scope: !1050)
!1054 = !DILocation(line: 424, column: 8, scope: !996)
!1055 = !DILocation(line: 425, column: 30, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 424, column: 32)
!1057 = !DILocation(line: 425, column: 5, scope: !1056)
!1058 = !DILocation(line: 426, column: 4, scope: !1056)
!1059 = !DILocation(line: 427, column: 4, scope: !996)
!1060 = !DILocation(line: 436, column: 34, scope: !996)
!1061 = !DILocation(line: 436, column: 44, scope: !996)
!1062 = !DILocation(line: 436, column: 8, scope: !996)
!1063 = !DILocation(line: 435, column: 11, scope: !996)
!1064 = !DILocation(line: 438, column: 8, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !996, file: !3, line: 438, column: 8)
!1066 = !DILocation(line: 438, column: 8, scope: !996)
!1067 = !DILocation(line: 439, column: 9, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 439, column: 9)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 438, column: 30)
!1070 = !DILocation(line: 439, column: 16, scope: !1068)
!1071 = !DILocation(line: 439, column: 9, scope: !1069)
!1072 = !DILocation(line: 440, column: 6, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 439, column: 28)
!1074 = !DILocation(line: 445, column: 6, scope: !1073)
!1075 = !DILocation(line: 448, column: 5, scope: !1069)
!1076 = !DILocation(line: 451, column: 8, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !996, file: !3, line: 451, column: 8)
!1078 = !DILocation(line: 451, column: 21, scope: !1077)
!1079 = !DILocation(line: 451, column: 20, scope: !1077)
!1080 = !DILocation(line: 451, column: 17, scope: !1077)
!1081 = !DILocation(line: 451, column: 8, scope: !996)
!1082 = !DILocation(line: 452, column: 30, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 451, column: 32)
!1084 = !DILocation(line: 452, column: 5, scope: !1083)
!1085 = !DILocation(line: 453, column: 4, scope: !1083)
!1086 = !DILocation(line: 454, column: 4, scope: !996)
!1087 = !DILocation(line: 460, column: 12, scope: !996)
!1088 = !DILocation(line: 460, column: 22, scope: !996)
!1089 = !DILocation(line: 460, column: 29, scope: !996)
!1090 = !DILocation(line: 460, column: 4, scope: !996)
!1091 = !DILocation(line: 466, column: 5, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !996, file: !3, line: 460, column: 35)
!1093 = !DILocation(line: 469, column: 5, scope: !1092)
!1094 = !DILocation(line: 474, column: 5, scope: !1092)
!1095 = !DILocation(line: 476, column: 4, scope: !996)
!1096 = !DILocation(line: 482, column: 12, scope: !996)
!1097 = !DILocation(line: 482, column: 22, scope: !996)
!1098 = !DILocation(line: 482, column: 29, scope: !996)
!1099 = !DILocation(line: 482, column: 4, scope: !996)
!1100 = !DILocation(line: 487, column: 5, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !996, file: !3, line: 482, column: 35)
!1102 = !DILocation(line: 494, column: 35, scope: !1101)
!1103 = !DILocation(line: 495, column: 14, scope: !1101)
!1104 = !DILocation(line: 494, column: 9, scope: !1101)
!1105 = !DILocation(line: 493, column: 12, scope: !1101)
!1106 = !DILocation(line: 496, column: 9, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 496, column: 9)
!1108 = !DILocation(line: 496, column: 9, scope: !1101)
!1109 = !DILocation(line: 497, column: 6, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 496, column: 31)
!1111 = !DILocation(line: 500, column: 9, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 500, column: 9)
!1113 = !DILocation(line: 500, column: 22, scope: !1112)
!1114 = !DILocation(line: 500, column: 21, scope: !1112)
!1115 = !DILocation(line: 500, column: 18, scope: !1112)
!1116 = !DILocation(line: 500, column: 9, scope: !1101)
!1117 = !DILocation(line: 501, column: 31, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 500, column: 33)
!1119 = !DILocation(line: 501, column: 6, scope: !1118)
!1120 = !DILocation(line: 502, column: 5, scope: !1118)
!1121 = !DILocation(line: 503, column: 5, scope: !1101)
!1122 = !DILocation(line: 506, column: 5, scope: !1101)
!1123 = !DILocation(line: 511, column: 5, scope: !1101)
!1124 = !DILocation(line: 513, column: 4, scope: !996)
!1125 = !DILocation(line: 523, column: 12, scope: !996)
!1126 = !DILocation(line: 523, column: 22, scope: !996)
!1127 = !DILocation(line: 523, column: 29, scope: !996)
!1128 = !DILocation(line: 523, column: 4, scope: !996)
!1129 = !DILocation(line: 530, column: 5, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !996, file: !3, line: 523, column: 35)
!1131 = !DILocation(line: 534, column: 5, scope: !1130)
!1132 = !DILocation(line: 539, column: 5, scope: !1130)
!1133 = !DILocation(line: 541, column: 4, scope: !996)
!1134 = !DILocation(line: 547, column: 12, scope: !996)
!1135 = !DILocation(line: 547, column: 22, scope: !996)
!1136 = !DILocation(line: 547, column: 29, scope: !996)
!1137 = !DILocation(line: 547, column: 4, scope: !996)
!1138 = !DILocation(line: 553, column: 5, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !996, file: !3, line: 547, column: 35)
!1140 = !DILocation(line: 557, column: 5, scope: !1139)
!1141 = !DILocation(line: 562, column: 5, scope: !1139)
!1142 = !DILocation(line: 564, column: 4, scope: !996)
!1143 = !DILocation(line: 572, column: 12, scope: !996)
!1144 = !DILocation(line: 572, column: 22, scope: !996)
!1145 = !DILocation(line: 572, column: 29, scope: !996)
!1146 = !DILocation(line: 572, column: 4, scope: !996)
!1147 = !DILocation(line: 577, column: 5, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !996, file: !3, line: 572, column: 35)
!1149 = !DILocation(line: 581, column: 5, scope: !1148)
!1150 = !DILocation(line: 586, column: 5, scope: !1148)
!1151 = !DILocation(line: 588, column: 4, scope: !996)
!1152 = !DILocation(line: 594, column: 12, scope: !996)
!1153 = !DILocation(line: 594, column: 22, scope: !996)
!1154 = !DILocation(line: 594, column: 29, scope: !996)
!1155 = !DILocation(line: 594, column: 4, scope: !996)
!1156 = !DILocation(line: 607, column: 5, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !996, file: !3, line: 594, column: 35)
!1158 = !DILocation(line: 611, column: 9, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 611, column: 9)
!1160 = !DILocation(line: 611, column: 9, scope: !1157)
!1161 = !DILocation(line: 617, column: 6, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 611, column: 44)
!1163 = !DILocation(line: 620, column: 9, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 620, column: 9)
!1165 = !DILocation(line: 620, column: 19, scope: !1164)
!1166 = !DILocation(line: 620, column: 9, scope: !1157)
!1167 = !DILocation(line: 624, column: 6, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 620, column: 36)
!1169 = !DILocation(line: 627, column: 5, scope: !1157)
!1170 = !DILocation(line: 633, column: 5, scope: !1157)
!1171 = !DILocation(line: 635, column: 4, scope: !996)
!1172 = !DILocation(line: 641, column: 4, scope: !996)
!1173 = !DILocation(line: 645, column: 4, scope: !996)
!1174 = !DILocation(line: 653, column: 33, scope: !861)
!1175 = !DILocation(line: 654, column: 14, scope: !861)
!1176 = !DILocation(line: 654, column: 13, scope: !861)
!1177 = !DILocation(line: 654, column: 26, scope: !861)
!1178 = !DILocation(line: 654, column: 33, scope: !861)
!1179 = !DILocation(line: 654, column: 12, scope: !861)
!1180 = !DILocation(line: 655, column: 13, scope: !861)
!1181 = !DILocation(line: 655, column: 12, scope: !861)
!1182 = !DILocation(line: 653, column: 7, scope: !861)
!1183 = !DILocation(line: 652, column: 10, scope: !861)
!1184 = !DILocation(line: 656, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !861, file: !3, line: 656, column: 7)
!1186 = !DILocation(line: 656, column: 7, scope: !861)
!1187 = !DILocation(line: 657, column: 4, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 656, column: 29)
!1189 = !DILabel(scope: !861, name: "next_operand", file: !3, line: 660)
!1190 = !DILocation(line: 660, column: 1, scope: !861)
!1191 = !DILocation(line: 665, column: 7, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !861, file: !3, line: 665, column: 7)
!1193 = !DILocation(line: 665, column: 7, scope: !861)
!1194 = !DILocation(line: 666, column: 13, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 665, column: 40)
!1196 = !DILocation(line: 667, column: 3, scope: !1195)
!1197 = distinct !{!1197, !857, !1198}
!1198 = !DILocation(line: 668, column: 2, scope: !810)
!1199 = !DILocation(line: 674, column: 2, scope: !810)
!1200 = !DILocation(line: 675, column: 1, scope: !810)
!1201 = distinct !DISubprogram(name: "acpi_ex_check_object_type", scope: !3, file: !3, line: 40, type: !1202, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !813)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!18, !833, !833, !31}
!1204 = !DILocalVariable(name: "type_needed", arg: 1, scope: !1201, file: !3, line: 40, type: !833)
!1205 = !DILocation(line: 40, column: 44, scope: !1201)
!1206 = !DILocalVariable(name: "this_type", arg: 2, scope: !1201, file: !3, line: 41, type: !833)
!1207 = !DILocation(line: 41, column: 23, scope: !1201)
!1208 = !DILocalVariable(name: "object", arg: 3, scope: !1201, file: !3, line: 41, type: !31)
!1209 = !DILocation(line: 41, column: 40, scope: !1201)
!1210 = !DILocation(line: 45, column: 6, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 45, column: 6)
!1212 = !DILocation(line: 45, column: 18, scope: !1211)
!1213 = !DILocation(line: 45, column: 6, scope: !1201)
!1214 = !DILocation(line: 49, column: 3, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 45, column: 36)
!1216 = !DILocation(line: 52, column: 6, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 52, column: 6)
!1218 = !DILocation(line: 52, column: 18, scope: !1217)
!1219 = !DILocation(line: 52, column: 6, scope: !1201)
!1220 = !DILocation(line: 58, column: 8, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 58, column: 7)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 52, column: 48)
!1223 = !DILocation(line: 58, column: 18, scope: !1221)
!1224 = !DILocation(line: 58, column: 40, scope: !1221)
!1225 = !DILocation(line: 59, column: 38, scope: !1221)
!1226 = !DILocation(line: 59, column: 9, scope: !1221)
!1227 = !DILocation(line: 59, column: 47, scope: !1221)
!1228 = !DILocation(line: 59, column: 54, scope: !1221)
!1229 = !DILocation(line: 59, column: 8, scope: !1221)
!1230 = !DILocation(line: 59, column: 60, scope: !1221)
!1231 = !DILocation(line: 58, column: 7, scope: !1222)
!1232 = !DILocation(line: 61, column: 4, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 60, column: 30)
!1234 = !DILocation(line: 63, column: 2, scope: !1222)
!1235 = !DILocation(line: 65, column: 6, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 65, column: 6)
!1237 = !DILocation(line: 65, column: 21, scope: !1236)
!1238 = !DILocation(line: 65, column: 18, scope: !1236)
!1239 = !DILocation(line: 65, column: 6, scope: !1201)
!1240 = !DILocation(line: 66, column: 3, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 65, column: 32)
!1242 = !DILocation(line: 71, column: 3, scope: !1241)
!1243 = !DILocation(line: 74, column: 2, scope: !1201)
!1244 = !DILocation(line: 75, column: 1, scope: !1201)
