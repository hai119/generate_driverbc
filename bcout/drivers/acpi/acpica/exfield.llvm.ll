; ModuleID = '../bcout/drivers/acpi/acpica/exfield.llvm.bc'
source_filename = "drivers/acpi/acpica/exfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*)* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_region_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, i16, %union.acpi_operand_object*, i8*, i16, i8* }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_object_buffer_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, i8, %union.acpi_operand_object* }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_field_common = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, %union.acpi_operand_object* }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }

@acpi_protocol_lengths = internal constant [16 x i8] c"\80\80\00\80\01\80\01\80\02\80\FF\FF\02\FF\FF\FF", align 16, !dbg !0
@_acpi_module_name = internal constant [8 x i8] c"exfield\00", align 1, !dbg !23
@.str = private unnamed_addr constant [44 x i8] c"Invalid Field/AccessAs protocol ID: 0x%4.4X\00", align 1
@acpi_gbl_integer_byte_width = external dso_local global i8, align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_get_protocol_buffer_length(i32 %protocol_id, i32* %return_length) #0 !dbg !39 {
entry:
  %retval = alloca i32, align 4
  %protocol_id.addr = alloca i32, align 4
  %return_length.addr = alloca i32*, align 8
  store i32 %protocol_id, i32* %protocol_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %protocol_id.addr, metadata !43, metadata !DIExpression()), !dbg !44
  store i32* %return_length, i32** %return_length.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %return_length.addr, metadata !45, metadata !DIExpression()), !dbg !46
  %0 = load i32, i32* %protocol_id.addr, align 4, !dbg !47
  %cmp = icmp ugt i32 %0, 15, !dbg !49
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !50

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %protocol_id.addr, align 4, !dbg !51
  %idxprom = zext i32 %1 to i64, !dbg !52
  %arrayidx = getelementptr [16 x i8], [16 x i8]* @acpi_protocol_lengths, i64 0, i64 %idxprom, !dbg !52
  %2 = load i8, i8* %arrayidx, align 1, !dbg !52
  %conv = zext i8 %2 to i32, !dbg !52
  %cmp1 = icmp eq i32 %conv, 128, !dbg !53
  br i1 %cmp1, label %if.then, label %if.end, !dbg !54

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* %protocol_id.addr, align 4, !dbg !55
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 77, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %3) #4, !dbg !55
  store i32 12324, i32* %retval, align 4, !dbg !57
  br label %return, !dbg !57

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %protocol_id.addr, align 4, !dbg !58
  %idxprom3 = zext i32 %4 to i64, !dbg !59
  %arrayidx4 = getelementptr [16 x i8], [16 x i8]* @acpi_protocol_lengths, i64 0, i64 %idxprom3, !dbg !59
  %5 = load i8, i8* %arrayidx4, align 1, !dbg !59
  %conv5 = zext i8 %5 to i32, !dbg !59
  %6 = load i32*, i32** %return_length.addr, align 8, !dbg !60
  store i32 %conv5, i32* %6, align 4, !dbg !61
  store i32 0, i32* %retval, align 4, !dbg !62
  br label %return, !dbg !62

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !63
  ret i32 %7, !dbg !63
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_read_data_from_field(%struct.acpi_walk_state* %walk_state, %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %ret_buffer_desc) #0 !dbg !64 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %ret_buffer_desc.addr = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %buffer_desc = alloca %union.acpi_operand_object*, align 8
  %buffer = alloca i8*, align 8
  %buffer_length = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !825, metadata !DIExpression()), !dbg !826
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !827, metadata !DIExpression()), !dbg !828
  store %union.acpi_operand_object** %ret_buffer_desc, %union.acpi_operand_object*** %ret_buffer_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %ret_buffer_desc.addr, metadata !829, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.declare(metadata i32* %status, metadata !831, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %buffer_desc, metadata !833, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !835, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.declare(metadata i32* %buffer_length, metadata !837, metadata !DIExpression()), !dbg !838
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !839
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !839
  br i1 %tobool, label %if.end, label %if.then, !dbg !841

if.then:                                          ; preds = %entry
  store i32 12290, i32* %retval, align 4, !dbg !842
  br label %return, !dbg !842

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %ret_buffer_desc.addr, align 8, !dbg !844
  %tobool1 = icmp ne %union.acpi_operand_object** %1, null, !dbg !844
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !846

if.then2:                                         ; preds = %if.end
  store i32 4097, i32* %retval, align 4, !dbg !847
  br label %return, !dbg !847

if.end3:                                          ; preds = %if.end
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !849
  %common = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_common*, !dbg !851
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !852
  %3 = load i8, i8* %type, align 1, !dbg !852
  %conv = zext i8 %3 to i32, !dbg !849
  %cmp = icmp eq i32 %conv, 14, !dbg !853
  br i1 %cmp, label %if.then5, label %if.else, !dbg !854

if.then5:                                         ; preds = %if.end3
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !855
  %common6 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_common*, !dbg !858
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common6, i32 0, i32 4, !dbg !859
  %5 = load i8, i8* %flags, align 4, !dbg !859
  %conv7 = zext i8 %5 to i32, !dbg !855
  %and = and i32 %conv7, 4, !dbg !860
  %tobool8 = icmp ne i32 %and, 0, !dbg !860
  br i1 %tobool8, label %if.end13, label %if.then9, !dbg !861

if.then9:                                         ; preds = %if.then5
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !862
  %call = call i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object* %6) #4, !dbg !864
  store i32 %call, i32* %status, align 4, !dbg !865
  %7 = load i32, i32* %status, align 4, !dbg !866
  %tobool10 = icmp ne i32 %7, 0, !dbg !866
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !868

if.then11:                                        ; preds = %if.then9
  %8 = load i32, i32* %status, align 4, !dbg !869
  store i32 %8, i32* %retval, align 4, !dbg !869
  br label %return, !dbg !869

if.end12:                                         ; preds = %if.then9
  br label %if.end13, !dbg !871

if.end13:                                         ; preds = %if.end12, %if.then5
  br label %if.end40, !dbg !872

if.else:                                          ; preds = %if.end3
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !873
  %common14 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_common*, !dbg !875
  %type15 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common14, i32 0, i32 2, !dbg !876
  %10 = load i8, i8* %type15, align 1, !dbg !876
  %conv16 = zext i8 %10 to i32, !dbg !873
  %cmp17 = icmp eq i32 %conv16, 17, !dbg !877
  br i1 %cmp17, label %land.lhs.true, label %if.end39, !dbg !878

land.lhs.true:                                    ; preds = %if.else
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !879
  %field = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_region_field*, !dbg !880
  %region_obj = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field, i32 0, i32 15, !dbg !881
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj, align 8, !dbg !881
  %region = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_region*, !dbg !882
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !883
  %13 = load i8, i8* %space_id, align 1, !dbg !883
  %conv19 = zext i8 %13 to i32, !dbg !879
  %cmp20 = icmp eq i32 %conv19, 4, !dbg !884
  br i1 %cmp20, label %if.then37, label %lor.lhs.false, !dbg !885

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !886
  %field22 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_region_field*, !dbg !887
  %region_obj23 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field22, i32 0, i32 15, !dbg !888
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj23, align 8, !dbg !888
  %region24 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_region*, !dbg !889
  %space_id25 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region24, i32 0, i32 5, !dbg !890
  %16 = load i8, i8* %space_id25, align 1, !dbg !890
  %conv26 = zext i8 %16 to i32, !dbg !886
  %cmp27 = icmp eq i32 %conv26, 9, !dbg !891
  br i1 %cmp27, label %if.then37, label %lor.lhs.false29, !dbg !892

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !893
  %field30 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_region_field*, !dbg !894
  %region_obj31 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field30, i32 0, i32 15, !dbg !895
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj31, align 8, !dbg !895
  %region32 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_region*, !dbg !896
  %space_id33 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region32, i32 0, i32 5, !dbg !897
  %19 = load i8, i8* %space_id33, align 1, !dbg !897
  %conv34 = zext i8 %19 to i32, !dbg !893
  %cmp35 = icmp eq i32 %conv34, 7, !dbg !898
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !899

if.then37:                                        ; preds = %lor.lhs.false29, %lor.lhs.false, %land.lhs.true
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !900
  %21 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %ret_buffer_desc.addr, align 8, !dbg !902
  %call38 = call i32 @acpi_ex_read_serial_bus(%union.acpi_operand_object* %20, %union.acpi_operand_object** %21) #4, !dbg !903
  store i32 %call38, i32* %status, align 4, !dbg !904
  %22 = load i32, i32* %status, align 4, !dbg !905
  store i32 %22, i32* %retval, align 4, !dbg !905
  br label %return, !dbg !905

if.end39:                                         ; preds = %lor.lhs.false29, %if.else
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end13
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !906
  %field41 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_region_field*, !dbg !906
  %bit_length = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field41, i32 0, i32 9, !dbg !906
  %24 = load i32, i32* %bit_length, align 8, !dbg !906
  %add = add i32 %24, 7, !dbg !906
  %shr = lshr i32 %add, 3, !dbg !906
  %conv42 = zext i32 %shr to i64, !dbg !907
  %conv43 = trunc i64 %conv42 to i32, !dbg !907
  store i32 %conv43, i32* %buffer_length, align 4, !dbg !908
  %25 = load i32, i32* %buffer_length, align 4, !dbg !909
  %26 = load i8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !911
  %conv44 = zext i8 %26 to i32, !dbg !911
  %cmp45 = icmp ugt i32 %25, %conv44, !dbg !912
  br i1 %cmp45, label %if.then56, label %lor.lhs.false47, !dbg !913

lor.lhs.false47:                                  ; preds = %if.end40
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !914
  %common48 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_common*, !dbg !915
  %type49 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common48, i32 0, i32 2, !dbg !916
  %28 = load i8, i8* %type49, align 1, !dbg !916
  %conv50 = zext i8 %28 to i32, !dbg !914
  %cmp51 = icmp eq i32 %conv50, 14, !dbg !917
  br i1 %cmp51, label %land.lhs.true53, label %if.else63, !dbg !918

land.lhs.true53:                                  ; preds = %lor.lhs.false47
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !919
  %buffer_field = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_buffer_field*, !dbg !920
  %is_create_field = getelementptr inbounds %struct.acpi_object_buffer_field, %struct.acpi_object_buffer_field* %buffer_field, i32 0, i32 14, !dbg !921
  %30 = load i8, i8* %is_create_field, align 2, !dbg !921
  %conv54 = zext i8 %30 to i32, !dbg !919
  %tobool55 = icmp ne i32 %conv54, 0, !dbg !919
  br i1 %tobool55, label %if.then56, label %if.else63, !dbg !922

if.then56:                                        ; preds = %land.lhs.true53, %if.end40
  %31 = load i32, i32* %buffer_length, align 4, !dbg !923
  %conv57 = zext i32 %31 to i64, !dbg !923
  %call58 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %conv57) #4, !dbg !925
  store %union.acpi_operand_object* %call58, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !926
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !927
  %tobool59 = icmp ne %union.acpi_operand_object* %32, null, !dbg !927
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !929

if.then60:                                        ; preds = %if.then56
  store i32 4, i32* %retval, align 4, !dbg !930
  br label %return, !dbg !930

if.end61:                                         ; preds = %if.then56
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !932
  %buffer62 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_buffer*, !dbg !933
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer62, i32 0, i32 5, !dbg !934
  %34 = load i8*, i8** %pointer, align 8, !dbg !934
  store i8* %34, i8** %buffer, align 8, !dbg !935
  br label %if.end69, !dbg !936

if.else63:                                        ; preds = %land.lhs.true53, %lor.lhs.false47
  %call64 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 0) #4, !dbg !937
  store %union.acpi_operand_object* %call64, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !939
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !940
  %tobool65 = icmp ne %union.acpi_operand_object* %35, null, !dbg !940
  br i1 %tobool65, label %if.end67, label %if.then66, !dbg !942

if.then66:                                        ; preds = %if.else63
  store i32 4, i32* %retval, align 4, !dbg !943
  br label %return, !dbg !943

if.end67:                                         ; preds = %if.else63
  %36 = load i8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !945
  %conv68 = zext i8 %36 to i32, !dbg !945
  store i32 %conv68, i32* %buffer_length, align 4, !dbg !946
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !947
  %integer = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_integer*, !dbg !948
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !949
  %38 = bitcast i64* %value to i8*, !dbg !950
  store i8* %38, i8** %buffer, align 8, !dbg !951
  br label %if.end69

if.end69:                                         ; preds = %if.end67, %if.end61
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !952
  %common70 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_common*, !dbg !954
  %type71 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common70, i32 0, i32 2, !dbg !955
  %40 = load i8, i8* %type71, align 1, !dbg !955
  %conv72 = zext i8 %40 to i32, !dbg !952
  %cmp73 = icmp eq i32 %conv72, 17, !dbg !956
  br i1 %cmp73, label %land.lhs.true75, label %if.else85, !dbg !957

land.lhs.true75:                                  ; preds = %if.end69
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !958
  %field76 = bitcast %union.acpi_operand_object* %41 to %struct.acpi_object_region_field*, !dbg !959
  %region_obj77 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field76, i32 0, i32 15, !dbg !960
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj77, align 8, !dbg !960
  %region78 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_region*, !dbg !961
  %space_id79 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region78, i32 0, i32 5, !dbg !962
  %43 = load i8, i8* %space_id79, align 1, !dbg !962
  %conv80 = zext i8 %43 to i32, !dbg !958
  %cmp81 = icmp eq i32 %conv80, 8, !dbg !963
  br i1 %cmp81, label %if.then83, label %if.else85, !dbg !964

if.then83:                                        ; preds = %land.lhs.true75
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !965
  %45 = load i8*, i8** %buffer, align 8, !dbg !967
  %call84 = call i32 @acpi_ex_read_gpio(%union.acpi_operand_object* %44, i8* %45) #4, !dbg !968
  store i32 %call84, i32* %status, align 4, !dbg !969
  br label %exit, !dbg !970

if.else85:                                        ; preds = %land.lhs.true75, %if.end69
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !971
  %common86 = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_common*, !dbg !973
  %type87 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common86, i32 0, i32 2, !dbg !974
  %47 = load i8, i8* %type87, align 1, !dbg !974
  %conv88 = zext i8 %47 to i32, !dbg !971
  %cmp89 = icmp eq i32 %conv88, 17, !dbg !975
  br i1 %cmp89, label %land.lhs.true91, label %if.end109, !dbg !976

land.lhs.true91:                                  ; preds = %if.else85
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !977
  %field92 = bitcast %union.acpi_operand_object* %48 to %struct.acpi_object_region_field*, !dbg !978
  %region_obj93 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field92, i32 0, i32 15, !dbg !979
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj93, align 8, !dbg !979
  %region94 = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_region*, !dbg !980
  %space_id95 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region94, i32 0, i32 5, !dbg !981
  %50 = load i8, i8* %space_id95, align 1, !dbg !981
  %conv96 = zext i8 %50 to i32, !dbg !977
  %cmp97 = icmp eq i32 %conv96, 10, !dbg !982
  br i1 %cmp97, label %if.then99, label %if.end109, !dbg !983

if.then99:                                        ; preds = %land.lhs.true91
  %51 = load i8*, i8** %buffer, align 8, !dbg !984
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !986
  %field100 = bitcast %union.acpi_operand_object* %52 to %struct.acpi_object_region_field*, !dbg !987
  %region_obj101 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field100, i32 0, i32 15, !dbg !988
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj101, align 8, !dbg !988
  %field102 = bitcast %union.acpi_operand_object* %53 to %struct.acpi_object_region_field*, !dbg !989
  %internal_pcc_buffer = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field102, i32 0, i32 18, !dbg !990
  %54 = load i8*, i8** %internal_pcc_buffer, align 8, !dbg !990
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !991
  %field103 = bitcast %union.acpi_operand_object* %55 to %struct.acpi_object_region_field*, !dbg !992
  %base_byte_offset = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field103, i32 0, i32 10, !dbg !993
  %56 = load i32, i32* %base_byte_offset, align 4, !dbg !993
  %idx.ext = zext i32 %56 to i64, !dbg !994
  %add.ptr = getelementptr i8, i8* %54, i64 %idx.ext, !dbg !994
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !995
  %field104 = bitcast %union.acpi_operand_object* %57 to %struct.acpi_object_region_field*, !dbg !995
  %bit_length105 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field104, i32 0, i32 9, !dbg !995
  %58 = load i32, i32* %bit_length105, align 8, !dbg !995
  %add106 = add i32 %58, 7, !dbg !995
  %shr107 = lshr i32 %add106, 3, !dbg !995
  %conv108 = zext i32 %shr107 to i64, !dbg !996
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %51, i8* align 1 %add.ptr, i64 %conv108, i1 false), !dbg !997
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !998
  %60 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %ret_buffer_desc.addr, align 8, !dbg !999
  store %union.acpi_operand_object* %59, %union.acpi_operand_object** %60, align 8, !dbg !1000
  store i32 0, i32* %retval, align 4, !dbg !1001
  br label %return, !dbg !1001

if.end109:                                        ; preds = %land.lhs.true91, %if.else85
  br label %if.end110

if.end110:                                        ; preds = %if.end109
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1002
  %common_field = bitcast %union.acpi_operand_object* %61 to %struct.acpi_object_field_common*, !dbg !1003
  %field_flags = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 5, !dbg !1004
  %62 = load i8, i8* %field_flags, align 1, !dbg !1004
  %conv111 = zext i8 %62 to i32, !dbg !1002
  call void @acpi_ex_acquire_global_lock(i32 %conv111) #4, !dbg !1005
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1006
  %64 = load i8*, i8** %buffer, align 8, !dbg !1007
  %65 = load i32, i32* %buffer_length, align 4, !dbg !1008
  %call112 = call i32 @acpi_ex_extract_from_field(%union.acpi_operand_object* %63, i8* %64, i32 %65) #4, !dbg !1009
  store i32 %call112, i32* %status, align 4, !dbg !1010
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1011
  %common_field113 = bitcast %union.acpi_operand_object* %66 to %struct.acpi_object_field_common*, !dbg !1012
  %field_flags114 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field113, i32 0, i32 5, !dbg !1013
  %67 = load i8, i8* %field_flags114, align 1, !dbg !1013
  %conv115 = zext i8 %67 to i32, !dbg !1011
  call void @acpi_ex_release_global_lock(i32 %conv115) #4, !dbg !1014
  br label %exit, !dbg !1014

exit:                                             ; preds = %if.end110, %if.then83
  call void @llvm.dbg.label(metadata !1015), !dbg !1016
  %68 = load i32, i32* %status, align 4, !dbg !1017
  %tobool116 = icmp ne i32 %68, 0, !dbg !1017
  br i1 %tobool116, label %if.then117, label %if.else118, !dbg !1019

if.then117:                                       ; preds = %exit
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !1020
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %69) #4, !dbg !1022
  br label %if.end119, !dbg !1023

if.else118:                                       ; preds = %exit
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !1024
  %71 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %ret_buffer_desc.addr, align 8, !dbg !1026
  store %union.acpi_operand_object* %70, %union.acpi_operand_object** %71, align 8, !dbg !1027
  br label %if.end119

if.end119:                                        ; preds = %if.else118, %if.then117
  %72 = load i32, i32* %status, align 4, !dbg !1028
  store i32 %72, i32* %retval, align 4, !dbg !1028
  br label %return, !dbg !1028

return:                                           ; preds = %if.end119, %if.then99, %if.then66, %if.then60, %if.then37, %if.then11, %if.then2, %if.then
  %73 = load i32, i32* %retval, align 4, !dbg !1029
  ret i32 %73, !dbg !1029
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_read_serial_bus(%union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_read_gpio(%union.acpi_operand_object*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local void @acpi_ex_acquire_global_lock(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_extract_from_field(%union.acpi_operand_object*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_release_global_lock(i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_write_data_to_field(%union.acpi_operand_object* %source_desc, %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %result_desc) #0 !dbg !1030 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca %union.acpi_operand_object*, align 8
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %result_desc.addr = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %buffer_length = alloca i32, align 4
  %data_length = alloca i32, align 4
  %buffer = alloca i8*, align 8
  store %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc.addr, metadata !1033, metadata !DIExpression()), !dbg !1034
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1035, metadata !DIExpression()), !dbg !1036
  store %union.acpi_operand_object** %result_desc, %union.acpi_operand_object*** %result_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %result_desc.addr, metadata !1037, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1039, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.declare(metadata i32* %buffer_length, metadata !1041, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.declare(metadata i32* %data_length, metadata !1043, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !1045, metadata !DIExpression()), !dbg !1046
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1047
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1047
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1049

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1050
  %tobool1 = icmp ne %union.acpi_operand_object* %1, null, !dbg !1050
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1051

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 12290, i32* %retval, align 4, !dbg !1052
  br label %return, !dbg !1052

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1054
  %common = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_common*, !dbg !1056
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1057
  %3 = load i8, i8* %type, align 1, !dbg !1057
  %conv = zext i8 %3 to i32, !dbg !1054
  %cmp = icmp eq i32 %conv, 14, !dbg !1058
  br i1 %cmp, label %if.then3, label %if.else, !dbg !1059

if.then3:                                         ; preds = %if.end
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1060
  %common4 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_common*, !dbg !1063
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common4, i32 0, i32 4, !dbg !1064
  %5 = load i8, i8* %flags, align 4, !dbg !1064
  %conv5 = zext i8 %5 to i32, !dbg !1060
  %and = and i32 %conv5, 4, !dbg !1065
  %tobool6 = icmp ne i32 %and, 0, !dbg !1065
  br i1 %tobool6, label %if.end11, label %if.then7, !dbg !1066

if.then7:                                         ; preds = %if.then3
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1067
  %call = call i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object* %6) #4, !dbg !1069
  store i32 %call, i32* %status, align 4, !dbg !1070
  %7 = load i32, i32* %status, align 4, !dbg !1071
  %tobool8 = icmp ne i32 %7, 0, !dbg !1071
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1073

if.then9:                                         ; preds = %if.then7
  %8 = load i32, i32* %status, align 4, !dbg !1074
  store i32 %8, i32* %retval, align 4, !dbg !1074
  br label %return, !dbg !1074

if.end10:                                         ; preds = %if.then7
  br label %if.end11, !dbg !1076

if.end11:                                         ; preds = %if.end10, %if.then3
  br label %if.end113, !dbg !1077

if.else:                                          ; preds = %if.end
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1078
  %common12 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_common*, !dbg !1080
  %type13 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common12, i32 0, i32 2, !dbg !1081
  %10 = load i8, i8* %type13, align 1, !dbg !1081
  %conv14 = zext i8 %10 to i32, !dbg !1078
  %cmp15 = icmp eq i32 %conv14, 17, !dbg !1082
  br i1 %cmp15, label %land.lhs.true, label %if.else22, !dbg !1083

land.lhs.true:                                    ; preds = %if.else
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1084
  %field = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_region_field*, !dbg !1085
  %region_obj = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field, i32 0, i32 15, !dbg !1086
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj, align 8, !dbg !1086
  %region = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_region*, !dbg !1087
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !1088
  %13 = load i8, i8* %space_id, align 1, !dbg !1088
  %conv17 = zext i8 %13 to i32, !dbg !1084
  %cmp18 = icmp eq i32 %conv17, 8, !dbg !1089
  br i1 %cmp18, label %if.then20, label %if.else22, !dbg !1090

if.then20:                                        ; preds = %land.lhs.true
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1091
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1093
  %16 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %result_desc.addr, align 8, !dbg !1094
  %call21 = call i32 @acpi_ex_write_gpio(%union.acpi_operand_object* %14, %union.acpi_operand_object* %15, %union.acpi_operand_object** %16) #4, !dbg !1095
  store i32 %call21, i32* %status, align 4, !dbg !1096
  %17 = load i32, i32* %status, align 4, !dbg !1097
  store i32 %17, i32* %retval, align 4, !dbg !1097
  br label %return, !dbg !1097

if.else22:                                        ; preds = %land.lhs.true, %if.else
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1098
  %common23 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_common*, !dbg !1100
  %type24 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common23, i32 0, i32 2, !dbg !1101
  %19 = load i8, i8* %type24, align 1, !dbg !1101
  %conv25 = zext i8 %19 to i32, !dbg !1098
  %cmp26 = icmp eq i32 %conv25, 17, !dbg !1102
  br i1 %cmp26, label %land.lhs.true28, label %if.else54, !dbg !1103

land.lhs.true28:                                  ; preds = %if.else22
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1104
  %field29 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_region_field*, !dbg !1105
  %region_obj30 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field29, i32 0, i32 15, !dbg !1106
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj30, align 8, !dbg !1106
  %region31 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_region*, !dbg !1107
  %space_id32 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region31, i32 0, i32 5, !dbg !1108
  %22 = load i8, i8* %space_id32, align 1, !dbg !1108
  %conv33 = zext i8 %22 to i32, !dbg !1104
  %cmp34 = icmp eq i32 %conv33, 4, !dbg !1109
  br i1 %cmp34, label %if.then52, label %lor.lhs.false36, !dbg !1110

lor.lhs.false36:                                  ; preds = %land.lhs.true28
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1111
  %field37 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_region_field*, !dbg !1112
  %region_obj38 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field37, i32 0, i32 15, !dbg !1113
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj38, align 8, !dbg !1113
  %region39 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_region*, !dbg !1114
  %space_id40 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region39, i32 0, i32 5, !dbg !1115
  %25 = load i8, i8* %space_id40, align 1, !dbg !1115
  %conv41 = zext i8 %25 to i32, !dbg !1111
  %cmp42 = icmp eq i32 %conv41, 9, !dbg !1116
  br i1 %cmp42, label %if.then52, label %lor.lhs.false44, !dbg !1117

lor.lhs.false44:                                  ; preds = %lor.lhs.false36
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1118
  %field45 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_region_field*, !dbg !1119
  %region_obj46 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field45, i32 0, i32 15, !dbg !1120
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj46, align 8, !dbg !1120
  %region47 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_region*, !dbg !1121
  %space_id48 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region47, i32 0, i32 5, !dbg !1122
  %28 = load i8, i8* %space_id48, align 1, !dbg !1122
  %conv49 = zext i8 %28 to i32, !dbg !1118
  %cmp50 = icmp eq i32 %conv49, 7, !dbg !1123
  br i1 %cmp50, label %if.then52, label %if.else54, !dbg !1124

if.then52:                                        ; preds = %lor.lhs.false44, %lor.lhs.false36, %land.lhs.true28
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1125
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1127
  %31 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %result_desc.addr, align 8, !dbg !1128
  %call53 = call i32 @acpi_ex_write_serial_bus(%union.acpi_operand_object* %29, %union.acpi_operand_object* %30, %union.acpi_operand_object** %31) #4, !dbg !1129
  store i32 %call53, i32* %status, align 4, !dbg !1130
  %32 = load i32, i32* %status, align 4, !dbg !1131
  store i32 %32, i32* %retval, align 4, !dbg !1131
  br label %return, !dbg !1131

if.else54:                                        ; preds = %lor.lhs.false44, %if.else22
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1132
  %common55 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_common*, !dbg !1134
  %type56 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common55, i32 0, i32 2, !dbg !1135
  %34 = load i8, i8* %type56, align 1, !dbg !1135
  %conv57 = zext i8 %34 to i32, !dbg !1132
  %cmp58 = icmp eq i32 %conv57, 17, !dbg !1136
  br i1 %cmp58, label %land.lhs.true60, label %if.end110, !dbg !1137

land.lhs.true60:                                  ; preds = %if.else54
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1138
  %field61 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_region_field*, !dbg !1139
  %region_obj62 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field61, i32 0, i32 15, !dbg !1140
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj62, align 8, !dbg !1140
  %region63 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_region*, !dbg !1141
  %space_id64 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region63, i32 0, i32 5, !dbg !1142
  %37 = load i8, i8* %space_id64, align 1, !dbg !1142
  %conv65 = zext i8 %37 to i32, !dbg !1138
  %cmp66 = icmp eq i32 %conv65, 10, !dbg !1143
  br i1 %cmp66, label %if.then68, label %if.end110, !dbg !1144

if.then68:                                        ; preds = %land.lhs.true60
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1145
  %field69 = bitcast %union.acpi_operand_object* %38 to %struct.acpi_object_region_field*, !dbg !1145
  %bit_length = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field69, i32 0, i32 9, !dbg !1145
  %39 = load i32, i32* %bit_length, align 8, !dbg !1145
  %add = add i32 %39, 7, !dbg !1145
  %shr = lshr i32 %add, 3, !dbg !1145
  %conv70 = zext i32 %shr to i64, !dbg !1147
  %conv71 = trunc i64 %conv70 to i32, !dbg !1147
  store i32 %conv71, i32* %data_length, align 4, !dbg !1148
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1149
  %field72 = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_region_field*, !dbg !1150
  %region_obj73 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field72, i32 0, i32 15, !dbg !1151
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj73, align 8, !dbg !1151
  %field74 = bitcast %union.acpi_operand_object* %41 to %struct.acpi_object_region_field*, !dbg !1152
  %internal_pcc_buffer = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field74, i32 0, i32 18, !dbg !1153
  %42 = load i8*, i8** %internal_pcc_buffer, align 8, !dbg !1153
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1154
  %field75 = bitcast %union.acpi_operand_object* %43 to %struct.acpi_object_region_field*, !dbg !1155
  %base_byte_offset = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field75, i32 0, i32 10, !dbg !1156
  %44 = load i32, i32* %base_byte_offset, align 4, !dbg !1156
  %idx.ext = zext i32 %44 to i64, !dbg !1157
  %add.ptr = getelementptr i8, i8* %42, i64 %idx.ext, !dbg !1157
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1158
  %buffer76 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_buffer*, !dbg !1159
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer76, i32 0, i32 5, !dbg !1160
  %46 = load i8*, i8** %pointer, align 8, !dbg !1160
  %47 = load i32, i32* %data_length, align 4, !dbg !1161
  %conv77 = zext i32 %47 to i64, !dbg !1161
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %46, i64 %conv77, i1 false), !dbg !1162
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1163
  %field78 = bitcast %union.acpi_operand_object* %48 to %struct.acpi_object_region_field*, !dbg !1165
  %region_obj79 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field78, i32 0, i32 15, !dbg !1166
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj79, align 8, !dbg !1166
  %region80 = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_region*, !dbg !1167
  %address = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region80, i32 0, i32 9, !dbg !1168
  %50 = load i64, i64* %address, align 8, !dbg !1168
  %cmp81 = icmp eq i64 %50, 3, !dbg !1169
  br i1 %cmp81, label %land.lhs.true83, label %lor.lhs.false93, !dbg !1170

land.lhs.true83:                                  ; preds = %if.then68
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1171
  %field84 = bitcast %union.acpi_operand_object* %51 to %struct.acpi_object_region_field*, !dbg !1171
  %base_byte_offset85 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field84, i32 0, i32 10, !dbg !1171
  %52 = load i32, i32* %base_byte_offset85, align 4, !dbg !1171
  %cmp86 = icmp ule i32 12, %52, !dbg !1171
  br i1 %cmp86, label %land.lhs.true88, label %lor.lhs.false93, !dbg !1171

land.lhs.true88:                                  ; preds = %land.lhs.true83
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1171
  %field89 = bitcast %union.acpi_operand_object* %53 to %struct.acpi_object_region_field*, !dbg !1171
  %base_byte_offset90 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field89, i32 0, i32 10, !dbg !1171
  %54 = load i32, i32* %base_byte_offset90, align 4, !dbg !1171
  %cmp91 = icmp ule i32 %54, 15, !dbg !1171
  br i1 %cmp91, label %if.then103, label %lor.lhs.false93, !dbg !1172

lor.lhs.false93:                                  ; preds = %land.lhs.true88, %land.lhs.true83, %if.then68
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1173
  %field94 = bitcast %union.acpi_operand_object* %55 to %struct.acpi_object_region_field*, !dbg !1173
  %base_byte_offset95 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field94, i32 0, i32 10, !dbg !1173
  %56 = load i32, i32* %base_byte_offset95, align 4, !dbg !1173
  %cmp96 = icmp eq i32 4, %56, !dbg !1173
  br i1 %cmp96, label %if.then103, label %lor.lhs.false98, !dbg !1173

lor.lhs.false98:                                  ; preds = %lor.lhs.false93
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1173
  %field99 = bitcast %union.acpi_operand_object* %57 to %struct.acpi_object_region_field*, !dbg !1173
  %base_byte_offset100 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field99, i32 0, i32 10, !dbg !1173
  %58 = load i32, i32* %base_byte_offset100, align 4, !dbg !1173
  %cmp101 = icmp eq i32 %58, 5, !dbg !1173
  br i1 %cmp101, label %if.then103, label %if.end109, !dbg !1174

if.then103:                                       ; preds = %lor.lhs.false98, %lor.lhs.false93, %land.lhs.true88
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1175
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1177
  %field104 = bitcast %union.acpi_operand_object* %60 to %struct.acpi_object_region_field*, !dbg !1178
  %region_obj105 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field104, i32 0, i32 15, !dbg !1179
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj105, align 8, !dbg !1179
  %field106 = bitcast %union.acpi_operand_object* %61 to %struct.acpi_object_region_field*, !dbg !1180
  %internal_pcc_buffer107 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field106, i32 0, i32 18, !dbg !1181
  %62 = load i8*, i8** %internal_pcc_buffer107, align 8, !dbg !1181
  %63 = bitcast i8* %62 to i64*, !dbg !1182
  %call108 = call i32 @acpi_ex_access_region(%union.acpi_operand_object* %59, i32 0, i64* %63, i32 1) #4, !dbg !1183
  store i32 %call108, i32* %status, align 4, !dbg !1184
  %64 = load i32, i32* %status, align 4, !dbg !1185
  store i32 %64, i32* %retval, align 4, !dbg !1185
  br label %return, !dbg !1185

if.end109:                                        ; preds = %lor.lhs.false98
  store i32 0, i32* %retval, align 4, !dbg !1186
  br label %return, !dbg !1186

if.end110:                                        ; preds = %land.lhs.true60, %if.else54
  br label %if.end111

if.end111:                                        ; preds = %if.end110
  br label %if.end112

if.end112:                                        ; preds = %if.end111
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end11
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1187
  %common114 = bitcast %union.acpi_operand_object* %65 to %struct.acpi_object_common*, !dbg !1188
  %type115 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common114, i32 0, i32 2, !dbg !1189
  %66 = load i8, i8* %type115, align 1, !dbg !1189
  %conv116 = zext i8 %66 to i32, !dbg !1187
  switch i32 %conv116, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb117
    i32 2, label %sw.bb121
  ], !dbg !1190

sw.bb:                                            ; preds = %if.end113
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1191
  %integer = bitcast %union.acpi_operand_object* %67 to %struct.acpi_object_integer*, !dbg !1193
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1194
  %68 = bitcast i64* %value to i8*, !dbg !1195
  store i8* %68, i8** %buffer, align 8, !dbg !1196
  store i32 8, i32* %buffer_length, align 4, !dbg !1197
  br label %sw.epilog, !dbg !1198

sw.bb117:                                         ; preds = %if.end113
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1199
  %buffer118 = bitcast %union.acpi_operand_object* %69 to %struct.acpi_object_buffer*, !dbg !1200
  %pointer119 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer118, i32 0, i32 5, !dbg !1201
  %70 = load i8*, i8** %pointer119, align 8, !dbg !1201
  store i8* %70, i8** %buffer, align 8, !dbg !1202
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1203
  %buffer120 = bitcast %union.acpi_operand_object* %71 to %struct.acpi_object_buffer*, !dbg !1204
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer120, i32 0, i32 6, !dbg !1205
  %72 = load i32, i32* %length, align 8, !dbg !1205
  store i32 %72, i32* %buffer_length, align 4, !dbg !1206
  br label %sw.epilog, !dbg !1207

sw.bb121:                                         ; preds = %if.end113
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1208
  %string = bitcast %union.acpi_operand_object* %73 to %struct.acpi_object_string*, !dbg !1209
  %pointer122 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 5, !dbg !1210
  %74 = load i8*, i8** %pointer122, align 8, !dbg !1210
  store i8* %74, i8** %buffer, align 8, !dbg !1211
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1212
  %string123 = bitcast %union.acpi_operand_object* %75 to %struct.acpi_object_string*, !dbg !1213
  %length124 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string123, i32 0, i32 6, !dbg !1214
  %76 = load i32, i32* %length124, align 8, !dbg !1214
  store i32 %76, i32* %buffer_length, align 4, !dbg !1215
  br label %sw.epilog, !dbg !1216

sw.default:                                       ; preds = %if.end113
  store i32 12291, i32* %retval, align 4, !dbg !1217
  br label %return, !dbg !1217

sw.epilog:                                        ; preds = %sw.bb121, %sw.bb117, %sw.bb
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1218
  %common_field = bitcast %union.acpi_operand_object* %77 to %struct.acpi_object_field_common*, !dbg !1219
  %field_flags = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 5, !dbg !1220
  %78 = load i8, i8* %field_flags, align 1, !dbg !1220
  %conv125 = zext i8 %78 to i32, !dbg !1218
  call void @acpi_ex_acquire_global_lock(i32 %conv125) #4, !dbg !1221
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1222
  %80 = load i8*, i8** %buffer, align 8, !dbg !1223
  %81 = load i32, i32* %buffer_length, align 4, !dbg !1224
  %call126 = call i32 @acpi_ex_insert_into_field(%union.acpi_operand_object* %79, i8* %80, i32 %81) #4, !dbg !1225
  store i32 %call126, i32* %status, align 4, !dbg !1226
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1227
  %common_field127 = bitcast %union.acpi_operand_object* %82 to %struct.acpi_object_field_common*, !dbg !1228
  %field_flags128 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field127, i32 0, i32 5, !dbg !1229
  %83 = load i8, i8* %field_flags128, align 1, !dbg !1229
  %conv129 = zext i8 %83 to i32, !dbg !1227
  call void @acpi_ex_release_global_lock(i32 %conv129) #4, !dbg !1230
  %84 = load i32, i32* %status, align 4, !dbg !1231
  store i32 %84, i32* %retval, align 4, !dbg !1231
  br label %return, !dbg !1231

return:                                           ; preds = %sw.epilog, %sw.default, %if.end109, %if.then103, %if.then52, %if.then20, %if.then9, %if.then
  %85 = load i32, i32* %retval, align 4, !dbg !1232
  ret i32 %85, !dbg !1232
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_write_gpio(%union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_write_serial_bus(%union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_access_region(%union.acpi_operand_object*, i32, i64*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_insert_into_field(%union.acpi_operand_object*, i8*, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_protocol_lengths", scope: !2, file: !3, line: 25, type: !30, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exfield.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !17, !8, !18, !21}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !7, line: 805, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !7, line: 127, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !20)
!20 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!22 = !{!0, !23}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !28)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29}
!29 = !DISubrange(count: 8)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !32)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!32 = !{!33}
!33 = !DISubrange(count: 16)
!34 = !{i32 7, !"Dwarf Version", i32 4}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"Code Model", i32 2}
!38 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!39 = distinct !DISubprogram(name: "acpi_ex_get_protocol_buffer_length", scope: !3, file: !3, line: 72, type: !40, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!40 = !DISubroutineType(types: !41)
!41 = !{!6, !8, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!43 = !DILocalVariable(name: "protocol_id", arg: 1, scope: !39, file: !3, line: 72, type: !8)
!44 = !DILocation(line: 72, column: 40, scope: !39)
!45 = !DILocalVariable(name: "return_length", arg: 2, scope: !39, file: !3, line: 72, type: !42)
!46 = !DILocation(line: 72, column: 58, scope: !39)
!47 = !DILocation(line: 75, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !39, file: !3, line: 75, column: 6)
!49 = !DILocation(line: 75, column: 19, scope: !48)
!50 = !DILocation(line: 75, column: 43, scope: !48)
!51 = !DILocation(line: 76, column: 29, scope: !48)
!52 = !DILocation(line: 76, column: 7, scope: !48)
!53 = !DILocation(line: 76, column: 42, scope: !48)
!54 = !DILocation(line: 75, column: 6, scope: !39)
!55 = !DILocation(line: 77, column: 3, scope: !56)
!56 = distinct !DILexicalBlock(scope: !48, file: !3, line: 76, column: 72)
!57 = !DILocation(line: 81, column: 3, scope: !56)
!58 = !DILocation(line: 84, column: 41, scope: !39)
!59 = !DILocation(line: 84, column: 19, scope: !39)
!60 = !DILocation(line: 84, column: 3, scope: !39)
!61 = !DILocation(line: 84, column: 17, scope: !39)
!62 = !DILocation(line: 85, column: 2, scope: !39)
!63 = !DILocation(line: 86, column: 1, scope: !39)
!64 = distinct !DISubprogram(name: "acpi_ex_read_data_from_field", scope: !3, file: !3, line: 105, type: !65, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!65 = !DISubroutineType(types: !66)
!66 = !{!6, !67, !124, !183}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !69, line: 37, size: 9024, elements: !70)
!69 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!70 = !{!71, !72, !73, !74, !78, !79, !80, !81, !83, !84, !85, !86, !87, !88, !89, !90, !91, !93, !94, !95, !96, !97, !772, !773, !774, !775, !776, !780, !782, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !809, !810, !811, !812, !813, !814, !815, !816, !817, !823}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !68, file: !69, line: 38, baseType: !67, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !69, line: 39, baseType: !14, size: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !68, file: !69, line: 40, baseType: !14, size: 8, offset: 72)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !68, file: !69, line: 41, baseType: !75, size: 16, offset: 80)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !77)
!77 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !68, file: !69, line: 42, baseType: !14, size: 8, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !68, file: !69, line: 43, baseType: !14, size: 8, offset: 104)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !68, file: !69, line: 44, baseType: !14, size: 8, offset: 112)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !68, file: !69, line: 45, baseType: !82, size: 16, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !75)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !68, file: !69, line: 46, baseType: !14, size: 8, offset: 144)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !68, file: !69, line: 47, baseType: !14, size: 8, offset: 152)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !68, file: !69, line: 48, baseType: !14, size: 8, offset: 160)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !68, file: !69, line: 49, baseType: !14, size: 8, offset: 168)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !68, file: !69, line: 50, baseType: !14, size: 8, offset: 176)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !68, file: !69, line: 51, baseType: !14, size: 8, offset: 184)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !68, file: !69, line: 52, baseType: !14, size: 8, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !68, file: !69, line: 53, baseType: !14, size: 8, offset: 200)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !68, file: !69, line: 54, baseType: !92, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !68, file: !69, line: 55, baseType: !8, size: 32, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !68, file: !69, line: 56, baseType: !8, size: 32, offset: 352)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !68, file: !69, line: 57, baseType: !8, size: 32, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !68, file: !69, line: 58, baseType: !8, size: 32, offset: 416)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !68, file: !69, line: 60, baseType: !98, size: 640, offset: 448)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !99, line: 893, size: 640, elements: !100)
!99 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103, !104, !105, !106, !671, !672, !770, !771}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !98, file: !99, line: 894, baseType: !92, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !98, file: !99, line: 895, baseType: !92, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !98, file: !99, line: 896, baseType: !92, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !98, file: !99, line: 897, baseType: !92, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !98, file: !99, line: 898, baseType: !92, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !98, file: !99, line: 899, baseType: !107, size: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !99, line: 875, size: 1600, elements: !109)
!109 = !{!110, !614, !630}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !108, file: !99, line: 876, baseType: !111, size: 448)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !99, line: 828, size: 448, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !604, !613}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !111, file: !99, line: 829, baseType: !107, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !99, line: 829, baseType: !14, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !99, line: 829, baseType: !14, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !111, file: !99, line: 829, baseType: !75, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !111, file: !99, line: 829, baseType: !92, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !99, line: 829, baseType: !107, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !111, file: !99, line: 829, baseType: !120, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !99, line: 133, size: 384, elements: !122)
!122 = !{!123, !588, !589, !590, !591, !600, !601, !602, !603}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !121, file: !99, line: 134, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !126, line: 367, size: 576, elements: !127)
!126 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!127 = !{!128, !136, !149, !160, !173, !187, !197, !223, !252, !267, !280, !359, !371, !385, !395, !413, !435, !454, !473, !492, !509, !534, !551, !564, !578, !587}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !125, file: !126, line: 368, baseType: !129, size: 128)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !126, line: 73, size: 128, elements: !130)
!130 = !{!131, !132, !133, !134, !135}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !129, file: !126, line: 74, baseType: !124, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !129, file: !126, line: 74, baseType: !14, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !126, line: 74, baseType: !14, size: 8, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !129, file: !126, line: 74, baseType: !75, size: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !126, line: 74, baseType: !14, size: 8, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !125, file: !126, line: 369, baseType: !137, size: 192)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !126, line: 76, size: 192, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144, !148}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !137, file: !126, line: 77, baseType: !124, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !137, file: !126, line: 77, baseType: !14, size: 8, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !126, line: 77, baseType: !14, size: 8, offset: 72)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !137, file: !126, line: 77, baseType: !75, size: 16, offset: 80)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !126, line: 77, baseType: !14, size: 8, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !137, file: !126, line: 77, baseType: !145, size: 24, offset: 104)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 24, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 3)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !137, file: !126, line: 78, baseType: !18, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !125, file: !126, line: 370, baseType: !150, size: 256)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !126, line: 93, size: 256, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !159}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !150, file: !126, line: 94, baseType: !124, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !150, file: !126, line: 94, baseType: !14, size: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !150, file: !126, line: 94, baseType: !14, size: 8, offset: 72)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !150, file: !126, line: 94, baseType: !75, size: 16, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !126, line: 94, baseType: !14, size: 8, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !150, file: !126, line: 94, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !150, file: !126, line: 94, baseType: !8, size: 32, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !125, file: !126, line: 371, baseType: !161, size: 384)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !126, line: 97, size: 384, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !161, file: !126, line: 98, baseType: !124, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !161, file: !126, line: 98, baseType: !14, size: 8, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !161, file: !126, line: 98, baseType: !14, size: 8, offset: 72)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !161, file: !126, line: 98, baseType: !75, size: 16, offset: 80)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !126, line: 98, baseType: !14, size: 8, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !161, file: !126, line: 98, baseType: !92, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !161, file: !126, line: 98, baseType: !8, size: 32, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !161, file: !126, line: 99, baseType: !8, size: 32, offset: 224)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !161, file: !126, line: 100, baseType: !92, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !161, file: !126, line: 101, baseType: !120, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !125, file: !126, line: 372, baseType: !174, size: 384)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !126, line: 104, size: 384, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !182, !184, !185, !186}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !174, file: !126, line: 105, baseType: !124, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !174, file: !126, line: 105, baseType: !14, size: 8, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !174, file: !126, line: 105, baseType: !14, size: 8, offset: 72)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !174, file: !126, line: 105, baseType: !75, size: 16, offset: 80)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !174, file: !126, line: 105, baseType: !14, size: 8, offset: 96)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !174, file: !126, line: 105, baseType: !120, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !174, file: !126, line: 106, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !174, file: !126, line: 107, baseType: !92, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !174, file: !126, line: 108, baseType: !8, size: 32, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !174, file: !126, line: 109, baseType: !8, size: 32, offset: 352)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !125, file: !126, line: 373, baseType: !188, size: 192)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !126, line: 118, size: 192, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !188, file: !126, line: 119, baseType: !124, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !188, file: !126, line: 119, baseType: !14, size: 8, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !188, file: !126, line: 119, baseType: !14, size: 8, offset: 72)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !188, file: !126, line: 119, baseType: !75, size: 16, offset: 80)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !188, file: !126, line: 119, baseType: !14, size: 8, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !188, file: !126, line: 119, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !125, file: !126, line: 374, baseType: !198, size: 448)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !126, line: 143, size: 448, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !220, !221, !222}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !198, file: !126, line: 144, baseType: !124, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !126, line: 144, baseType: !14, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !198, file: !126, line: 144, baseType: !14, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !198, file: !126, line: 144, baseType: !75, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !126, line: 144, baseType: !14, size: 8, offset: 96)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !198, file: !126, line: 144, baseType: !14, size: 8, offset: 104)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !198, file: !126, line: 145, baseType: !14, size: 8, offset: 112)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !198, file: !126, line: 146, baseType: !14, size: 8, offset: 120)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !198, file: !126, line: 147, baseType: !124, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !126, line: 148, baseType: !124, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !198, file: !126, line: 149, baseType: !92, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !198, file: !126, line: 153, baseType: !212, size: 64, offset: 320)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !126, line: 150, size: 64, elements: !213)
!213 = !{!214, !219}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !212, file: !126, line: 151, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !99, line: 248, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!6, !67}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !212, file: !126, line: 152, baseType: !124, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !198, file: !126, line: 155, baseType: !8, size: 32, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !198, file: !126, line: 156, baseType: !82, size: 16, offset: 416)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !198, file: !126, line: 157, baseType: !14, size: 8, offset: 432)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !125, file: !126, line: 375, baseType: !224, size: 576)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !126, line: 122, size: 576, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !248, !249, !250, !251}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !224, file: !126, line: 123, baseType: !124, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !224, file: !126, line: 123, baseType: !14, size: 8, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !224, file: !126, line: 123, baseType: !14, size: 8, offset: 72)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !224, file: !126, line: 123, baseType: !75, size: 16, offset: 80)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !224, file: !126, line: 123, baseType: !14, size: 8, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !224, file: !126, line: 123, baseType: !14, size: 8, offset: 104)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !224, file: !126, line: 124, baseType: !75, size: 16, offset: 112)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !224, file: !126, line: 125, baseType: !196, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !224, file: !126, line: 126, baseType: !18, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !224, file: !126, line: 127, baseType: !236, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !99, line: 620, size: 320, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !237, file: !99, line: 621, baseType: !196, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !237, file: !99, line: 621, baseType: !14, size: 8, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !237, file: !99, line: 621, baseType: !14, size: 8, offset: 72)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !237, file: !99, line: 621, baseType: !75, size: 16, offset: 80)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !237, file: !99, line: 621, baseType: !75, size: 16, offset: 96)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !237, file: !99, line: 621, baseType: !14, size: 8, offset: 112)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !237, file: !99, line: 622, baseType: !67, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !237, file: !99, line: 623, baseType: !124, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !237, file: !99, line: 624, baseType: !18, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !224, file: !126, line: 128, baseType: !124, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !224, file: !126, line: 129, baseType: !124, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !224, file: !126, line: 130, baseType: !120, size: 64, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !224, file: !126, line: 131, baseType: !14, size: 8, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !125, file: !126, line: 376, baseType: !253, size: 448)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !126, line: 134, size: 448, elements: !254)
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !266}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !253, file: !126, line: 135, baseType: !124, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !253, file: !126, line: 135, baseType: !14, size: 8, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !253, file: !126, line: 135, baseType: !14, size: 8, offset: 72)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !253, file: !126, line: 135, baseType: !75, size: 16, offset: 80)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !253, file: !126, line: 135, baseType: !14, size: 8, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !253, file: !126, line: 135, baseType: !14, size: 8, offset: 104)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !253, file: !126, line: 136, baseType: !120, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !253, file: !126, line: 137, baseType: !124, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !126, line: 138, baseType: !124, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !253, file: !126, line: 139, baseType: !265, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !18)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !253, file: !126, line: 140, baseType: !8, size: 32, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !125, file: !126, line: 377, baseType: !268, size: 320)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !126, line: 184, size: 320, elements: !269)
!269 = !{!270, !271, !272, !273, !274, !275, !279}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !268, file: !126, line: 185, baseType: !124, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !268, file: !126, line: 185, baseType: !14, size: 8, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !268, file: !126, line: 185, baseType: !14, size: 8, offset: 72)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !268, file: !126, line: 185, baseType: !75, size: 16, offset: 80)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !126, line: 185, baseType: !14, size: 8, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !268, file: !126, line: 185, baseType: !276, size: 128, offset: 128)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 128, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 2)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !268, file: !126, line: 185, baseType: !124, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !125, file: !126, line: 378, baseType: !281, size: 384)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !126, line: 187, size: 384, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !281, file: !126, line: 188, baseType: !124, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !281, file: !126, line: 188, baseType: !14, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !281, file: !126, line: 188, baseType: !14, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !281, file: !126, line: 188, baseType: !75, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !126, line: 188, baseType: !14, size: 8, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !281, file: !126, line: 189, baseType: !276, size: 128, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !281, file: !126, line: 189, baseType: !124, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !281, file: !126, line: 189, baseType: !291, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !99, line: 480, size: 576, elements: !293)
!293 = !{!294, !295, !296, !297, !305, !320, !353, !354, !355, !356, !357, !358}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !292, file: !99, line: 481, baseType: !120, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !292, file: !99, line: 482, baseType: !291, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !99, line: 483, baseType: !291, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !292, file: !99, line: 484, baseType: !298, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !99, line: 497, size: 256, elements: !300)
!300 = !{!301, !302, !303, !304}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !299, file: !99, line: 498, baseType: !298, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !99, line: 499, baseType: !298, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !299, file: !99, line: 500, baseType: !291, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !299, file: !99, line: 501, baseType: !8, size: 32, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !292, file: !99, line: 485, baseType: !306, size: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !99, line: 466, size: 320, elements: !308)
!308 = !{!309, !314, !315, !316, !317, !318, !319}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !307, file: !99, line: 467, baseType: !310, size: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !99, line: 459, size: 128, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !310, file: !99, line: 460, baseType: !14, size: 8)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !310, file: !99, line: 461, baseType: !18, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !307, file: !99, line: 468, baseType: !310, size: 128, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !307, file: !99, line: 469, baseType: !75, size: 16, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !307, file: !99, line: 470, baseType: !14, size: 8, offset: 272)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !307, file: !99, line: 471, baseType: !14, size: 8, offset: 280)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !307, file: !99, line: 472, baseType: !14, size: 8, offset: 288)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !307, file: !99, line: 473, baseType: !14, size: 8, offset: 296)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !292, file: !99, line: 486, baseType: !321, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !99, line: 448, size: 192, elements: !323)
!323 = !{!324, !348, !349, !350, !351, !352}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !322, file: !99, line: 449, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !99, line: 438, size: 64, elements: !326)
!326 = !{!327, !328, !342}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !325, file: !99, line: 439, baseType: !120, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !325, file: !99, line: 440, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !99, line: 419, size: 256, elements: !331)
!331 = !{!332, !338, !339, !340, !341}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !330, file: !99, line: 420, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!8, !337, !8, !196}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !196)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !330, file: !99, line: 421, baseType: !196, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !330, file: !99, line: 422, baseType: !120, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !330, file: !99, line: 423, baseType: !14, size: 8, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !330, file: !99, line: 424, baseType: !14, size: 8, offset: 200)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !325, file: !99, line: 441, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !99, line: 429, size: 128, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !344, file: !99, line: 430, baseType: !120, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !99, line: 431, baseType: !343, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !322, file: !99, line: 450, baseType: !306, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !99, line: 451, baseType: !14, size: 8, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !322, file: !99, line: 452, baseType: !14, size: 8, offset: 136)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !322, file: !99, line: 453, baseType: !14, size: 8, offset: 144)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !322, file: !99, line: 454, baseType: !14, size: 8, offset: 152)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !292, file: !99, line: 487, baseType: !18, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !292, file: !99, line: 488, baseType: !8, size: 32, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !292, file: !99, line: 489, baseType: !75, size: 16, offset: 480)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !292, file: !99, line: 490, baseType: !75, size: 16, offset: 496)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !292, file: !99, line: 491, baseType: !14, size: 8, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !292, file: !99, line: 492, baseType: !14, size: 8, offset: 520)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !125, file: !126, line: 379, baseType: !360, size: 384)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !126, line: 192, size: 384, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !360, file: !126, line: 193, baseType: !124, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !126, line: 193, baseType: !14, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !360, file: !126, line: 193, baseType: !14, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !360, file: !126, line: 193, baseType: !75, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !126, line: 193, baseType: !14, size: 8, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !360, file: !126, line: 193, baseType: !276, size: 128, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !360, file: !126, line: 193, baseType: !124, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !360, file: !126, line: 193, baseType: !8, size: 32, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !360, file: !126, line: 194, baseType: !8, size: 32, offset: 352)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !125, file: !126, line: 380, baseType: !372, size: 384)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !126, line: 197, size: 384, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !372, file: !126, line: 198, baseType: !124, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !372, file: !126, line: 198, baseType: !14, size: 8, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !372, file: !126, line: 198, baseType: !14, size: 8, offset: 72)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !372, file: !126, line: 198, baseType: !75, size: 16, offset: 80)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !372, file: !126, line: 198, baseType: !14, size: 8, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !372, file: !126, line: 200, baseType: !14, size: 8, offset: 104)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !372, file: !126, line: 201, baseType: !14, size: 8, offset: 112)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !372, file: !126, line: 202, baseType: !276, size: 128, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !372, file: !126, line: 202, baseType: !124, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !372, file: !126, line: 202, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !18)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !125, file: !126, line: 381, baseType: !386, size: 320)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !126, line: 205, size: 320, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !386, file: !126, line: 206, baseType: !124, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !386, file: !126, line: 206, baseType: !14, size: 8, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !386, file: !126, line: 206, baseType: !14, size: 8, offset: 72)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !386, file: !126, line: 206, baseType: !75, size: 16, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !126, line: 206, baseType: !14, size: 8, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !386, file: !126, line: 206, baseType: !276, size: 128, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !386, file: !126, line: 206, baseType: !124, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !125, file: !126, line: 382, baseType: !396, size: 384)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !126, line: 233, size: 384, elements: !397)
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !396, file: !126, line: 234, baseType: !124, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !396, file: !126, line: 234, baseType: !14, size: 8, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !396, file: !126, line: 234, baseType: !14, size: 8, offset: 72)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !396, file: !126, line: 234, baseType: !75, size: 16, offset: 80)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !396, file: !126, line: 234, baseType: !14, size: 8, offset: 96)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !396, file: !126, line: 234, baseType: !14, size: 8, offset: 104)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !396, file: !126, line: 234, baseType: !14, size: 8, offset: 112)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !396, file: !126, line: 234, baseType: !14, size: 8, offset: 120)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !396, file: !126, line: 234, baseType: !120, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !396, file: !126, line: 234, baseType: !8, size: 32, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !396, file: !126, line: 234, baseType: !8, size: 32, offset: 224)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !396, file: !126, line: 234, baseType: !8, size: 32, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !396, file: !126, line: 234, baseType: !14, size: 8, offset: 288)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !396, file: !126, line: 234, baseType: !14, size: 8, offset: 296)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !396, file: !126, line: 234, baseType: !124, size: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !125, file: !126, line: 383, baseType: !414, size: 576)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !126, line: 237, size: 576, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !414, file: !126, line: 238, baseType: !124, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !414, file: !126, line: 238, baseType: !14, size: 8, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !414, file: !126, line: 238, baseType: !14, size: 8, offset: 72)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !414, file: !126, line: 238, baseType: !75, size: 16, offset: 80)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !126, line: 238, baseType: !14, size: 8, offset: 96)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !414, file: !126, line: 238, baseType: !14, size: 8, offset: 104)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !414, file: !126, line: 238, baseType: !14, size: 8, offset: 112)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !414, file: !126, line: 238, baseType: !14, size: 8, offset: 120)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !414, file: !126, line: 238, baseType: !120, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !414, file: !126, line: 238, baseType: !8, size: 32, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !414, file: !126, line: 238, baseType: !8, size: 32, offset: 224)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !414, file: !126, line: 238, baseType: !8, size: 32, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !414, file: !126, line: 238, baseType: !14, size: 8, offset: 288)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !414, file: !126, line: 238, baseType: !14, size: 8, offset: 296)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !414, file: !126, line: 238, baseType: !75, size: 16, offset: 304)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !414, file: !126, line: 239, baseType: !124, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !414, file: !126, line: 240, baseType: !92, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !414, file: !126, line: 241, baseType: !75, size: 16, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !414, file: !126, line: 242, baseType: !92, size: 64, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !125, file: !126, line: 384, baseType: !436, size: 384)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !126, line: 262, size: 384, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !436, file: !126, line: 263, baseType: !124, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !436, file: !126, line: 263, baseType: !14, size: 8, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !436, file: !126, line: 263, baseType: !14, size: 8, offset: 72)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !436, file: !126, line: 263, baseType: !75, size: 16, offset: 80)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !126, line: 263, baseType: !14, size: 8, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !436, file: !126, line: 263, baseType: !14, size: 8, offset: 104)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !436, file: !126, line: 263, baseType: !14, size: 8, offset: 112)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !436, file: !126, line: 263, baseType: !14, size: 8, offset: 120)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !436, file: !126, line: 263, baseType: !120, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !436, file: !126, line: 263, baseType: !8, size: 32, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !436, file: !126, line: 263, baseType: !8, size: 32, offset: 224)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !436, file: !126, line: 263, baseType: !8, size: 32, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !436, file: !126, line: 263, baseType: !14, size: 8, offset: 288)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !436, file: !126, line: 263, baseType: !14, size: 8, offset: 296)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !436, file: !126, line: 263, baseType: !14, size: 8, offset: 304)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !436, file: !126, line: 264, baseType: !124, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !125, file: !126, line: 385, baseType: !455, size: 448)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !126, line: 245, size: 448, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !455, file: !126, line: 246, baseType: !124, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !455, file: !126, line: 246, baseType: !14, size: 8, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !455, file: !126, line: 246, baseType: !14, size: 8, offset: 72)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !455, file: !126, line: 246, baseType: !75, size: 16, offset: 80)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !126, line: 246, baseType: !14, size: 8, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !455, file: !126, line: 246, baseType: !14, size: 8, offset: 104)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !455, file: !126, line: 246, baseType: !14, size: 8, offset: 112)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !455, file: !126, line: 246, baseType: !14, size: 8, offset: 120)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !455, file: !126, line: 246, baseType: !120, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !455, file: !126, line: 246, baseType: !8, size: 32, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !455, file: !126, line: 246, baseType: !8, size: 32, offset: 224)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !455, file: !126, line: 246, baseType: !8, size: 32, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !455, file: !126, line: 246, baseType: !14, size: 8, offset: 288)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !455, file: !126, line: 246, baseType: !14, size: 8, offset: 296)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !455, file: !126, line: 246, baseType: !124, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !455, file: !126, line: 247, baseType: !124, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !125, file: !126, line: 386, baseType: !474, size: 448)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !126, line: 250, size: 448, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !474, file: !126, line: 251, baseType: !124, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !474, file: !126, line: 251, baseType: !14, size: 8, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !126, line: 251, baseType: !14, size: 8, offset: 72)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !126, line: 251, baseType: !75, size: 16, offset: 80)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !126, line: 251, baseType: !14, size: 8, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !474, file: !126, line: 251, baseType: !14, size: 8, offset: 104)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !474, file: !126, line: 251, baseType: !14, size: 8, offset: 112)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !474, file: !126, line: 251, baseType: !14, size: 8, offset: 120)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !474, file: !126, line: 251, baseType: !120, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !474, file: !126, line: 251, baseType: !8, size: 32, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !474, file: !126, line: 251, baseType: !8, size: 32, offset: 224)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !474, file: !126, line: 251, baseType: !8, size: 32, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !474, file: !126, line: 251, baseType: !14, size: 8, offset: 288)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !474, file: !126, line: 251, baseType: !14, size: 8, offset: 296)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !474, file: !126, line: 256, baseType: !124, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !474, file: !126, line: 257, baseType: !124, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !125, file: !126, line: 387, baseType: !493, size: 512)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !126, line: 273, size: 512, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !501, !502, !507, !508}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !493, file: !126, line: 274, baseType: !124, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !493, file: !126, line: 274, baseType: !14, size: 8, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !126, line: 274, baseType: !14, size: 8, offset: 72)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !493, file: !126, line: 274, baseType: !75, size: 16, offset: 80)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !126, line: 274, baseType: !14, size: 8, offset: 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !493, file: !126, line: 274, baseType: !120, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !493, file: !126, line: 275, baseType: !8, size: 32, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !493, file: !126, line: 276, baseType: !503, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !337, !8, !196}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !493, file: !126, line: 277, baseType: !196, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !493, file: !126, line: 278, baseType: !276, size: 128, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !125, file: !126, line: 388, baseType: !510, size: 512)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !126, line: 281, size: 512, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !524, !525, !526, !532, !533}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !510, file: !126, line: 282, baseType: !124, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !510, file: !126, line: 282, baseType: !14, size: 8, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !510, file: !126, line: 282, baseType: !14, size: 8, offset: 72)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !510, file: !126, line: 282, baseType: !75, size: 16, offset: 80)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !126, line: 282, baseType: !14, size: 8, offset: 96)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !510, file: !126, line: 282, baseType: !14, size: 8, offset: 104)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !510, file: !126, line: 283, baseType: !14, size: 8, offset: 112)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !510, file: !126, line: 284, baseType: !520, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!6, !8, !265, !8, !21, !196, !196}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !510, file: !126, line: 285, baseType: !120, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !510, file: !126, line: 286, baseType: !196, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !510, file: !126, line: 287, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!6, !337, !8, !196, !531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !510, file: !126, line: 288, baseType: !124, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !510, file: !126, line: 289, baseType: !124, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !125, file: !126, line: 389, baseType: !535, size: 512)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !126, line: 307, size: 512, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !535, file: !126, line: 308, baseType: !124, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !535, file: !126, line: 308, baseType: !14, size: 8, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !535, file: !126, line: 308, baseType: !14, size: 8, offset: 72)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !535, file: !126, line: 308, baseType: !75, size: 16, offset: 80)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !126, line: 308, baseType: !14, size: 8, offset: 96)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !535, file: !126, line: 308, baseType: !14, size: 8, offset: 104)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !535, file: !126, line: 309, baseType: !14, size: 8, offset: 112)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !535, file: !126, line: 310, baseType: !14, size: 8, offset: 120)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !535, file: !126, line: 311, baseType: !196, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !535, file: !126, line: 312, baseType: !120, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !535, file: !126, line: 313, baseType: !183, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !535, file: !126, line: 314, baseType: !92, size: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !535, file: !126, line: 315, baseType: !92, size: 64, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !535, file: !126, line: 316, baseType: !8, size: 32, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !125, file: !126, line: 390, baseType: !552, size: 448)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !126, line: 340, size: 448, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !552, file: !126, line: 341, baseType: !124, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !552, file: !126, line: 341, baseType: !14, size: 8, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !552, file: !126, line: 341, baseType: !14, size: 8, offset: 72)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !552, file: !126, line: 341, baseType: !75, size: 16, offset: 80)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !126, line: 341, baseType: !14, size: 8, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !552, file: !126, line: 341, baseType: !120, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !552, file: !126, line: 342, baseType: !120, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !552, file: !126, line: 343, baseType: !196, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !552, file: !126, line: 344, baseType: !92, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !552, file: !126, line: 345, baseType: !8, size: 32, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !125, file: !126, line: 391, baseType: !565, size: 256)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !126, line: 350, size: 256, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !577}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !565, file: !126, line: 351, baseType: !124, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !565, file: !126, line: 351, baseType: !14, size: 8, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !565, file: !126, line: 351, baseType: !14, size: 8, offset: 72)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !565, file: !126, line: 351, baseType: !75, size: 16, offset: 80)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !126, line: 351, baseType: !14, size: 8, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !565, file: !126, line: 351, baseType: !573, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !337, !196}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !565, file: !126, line: 352, baseType: !196, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !125, file: !126, line: 392, baseType: !579, size: 192)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !126, line: 357, size: 192, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !126, line: 358, baseType: !124, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !126, line: 358, baseType: !14, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !126, line: 358, baseType: !14, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !126, line: 358, baseType: !75, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !126, line: 358, baseType: !14, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !579, file: !126, line: 358, baseType: !124, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !125, file: !126, line: 399, baseType: !121, size: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !121, file: !99, line: 135, baseType: !14, size: 8, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !121, file: !99, line: 136, baseType: !14, size: 8, offset: 72)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !121, file: !99, line: 137, baseType: !75, size: 16, offset: 80)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !121, file: !99, line: 138, baseType: !592, size: 32, offset: 96)
!592 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !593, line: 327, size: 32, elements: !594)
!593 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !592, file: !593, line: 328, baseType: !8, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !592, file: !593, line: 329, baseType: !597, size: 32)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 4)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !121, file: !99, line: 139, baseType: !120, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !121, file: !99, line: 140, baseType: !120, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !121, file: !99, line: 141, baseType: !120, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !121, file: !99, line: 142, baseType: !82, size: 16, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !111, file: !99, line: 829, baseType: !605, size: 64, offset: 320)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !99, line: 716, size: 64, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !605, file: !99, line: 717, baseType: !18, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !605, file: !99, line: 718, baseType: !8, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !605, file: !99, line: 719, baseType: !158, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !605, file: !99, line: 720, baseType: !92, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !605, file: !99, line: 721, baseType: !158, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !605, file: !99, line: 722, baseType: !107, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !111, file: !99, line: 829, baseType: !14, size: 8, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !108, file: !99, line: 877, baseType: !615, size: 640)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !99, line: 835, size: 640, elements: !616)
!616 = !{!617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !615, file: !99, line: 836, baseType: !107, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !615, file: !99, line: 836, baseType: !14, size: 8, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !615, file: !99, line: 836, baseType: !14, size: 8, offset: 72)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !615, file: !99, line: 836, baseType: !75, size: 16, offset: 80)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !615, file: !99, line: 836, baseType: !92, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !615, file: !99, line: 836, baseType: !107, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !615, file: !99, line: 836, baseType: !120, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !615, file: !99, line: 836, baseType: !605, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !615, file: !99, line: 836, baseType: !14, size: 8, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !615, file: !99, line: 836, baseType: !158, size: 64, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !615, file: !99, line: 837, baseType: !92, size: 64, offset: 512)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !615, file: !99, line: 838, baseType: !8, size: 32, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !615, file: !99, line: 839, baseType: !8, size: 32, offset: 608)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !108, file: !99, line: 878, baseType: !631, size: 1600)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !99, line: 846, size: 1600, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !631, file: !99, line: 847, baseType: !107, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !631, file: !99, line: 847, baseType: !14, size: 8, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !99, line: 847, baseType: !14, size: 8, offset: 72)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !631, file: !99, line: 847, baseType: !75, size: 16, offset: 80)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !631, file: !99, line: 847, baseType: !92, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !631, file: !99, line: 847, baseType: !107, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !631, file: !99, line: 847, baseType: !120, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !631, file: !99, line: 847, baseType: !605, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !631, file: !99, line: 847, baseType: !14, size: 8, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !631, file: !99, line: 847, baseType: !107, size: 64, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !631, file: !99, line: 848, baseType: !107, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !631, file: !99, line: 849, baseType: !158, size: 64, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !631, file: !99, line: 850, baseType: !14, size: 8, offset: 640)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !631, file: !99, line: 851, baseType: !158, size: 64, offset: 704)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !631, file: !99, line: 852, baseType: !158, size: 64, offset: 768)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !631, file: !99, line: 853, baseType: !158, size: 64, offset: 832)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !631, file: !99, line: 854, baseType: !597, size: 32, offset: 896)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !631, file: !99, line: 855, baseType: !8, size: 32, offset: 928)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !631, file: !99, line: 856, baseType: !8, size: 32, offset: 960)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !631, file: !99, line: 857, baseType: !8, size: 32, offset: 992)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !631, file: !99, line: 858, baseType: !8, size: 32, offset: 1024)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !631, file: !99, line: 859, baseType: !8, size: 32, offset: 1056)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !631, file: !99, line: 860, baseType: !8, size: 32, offset: 1088)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !631, file: !99, line: 861, baseType: !8, size: 32, offset: 1120)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !631, file: !99, line: 862, baseType: !8, size: 32, offset: 1152)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !631, file: !99, line: 863, baseType: !8, size: 32, offset: 1184)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !631, file: !99, line: 864, baseType: !8, size: 32, offset: 1216)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !631, file: !99, line: 865, baseType: !8, size: 32, offset: 1248)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !631, file: !99, line: 866, baseType: !8, size: 32, offset: 1280)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !631, file: !99, line: 867, baseType: !8, size: 32, offset: 1312)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !631, file: !99, line: 868, baseType: !75, size: 16, offset: 1344)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !631, file: !99, line: 869, baseType: !14, size: 8, offset: 1360)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !631, file: !99, line: 870, baseType: !14, size: 8, offset: 1368)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !631, file: !99, line: 871, baseType: !14, size: 8, offset: 1376)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !631, file: !99, line: 872, baseType: !668, size: 160, offset: 1384)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 20)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !98, file: !99, line: 900, baseType: !120, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !98, file: !99, line: 901, baseType: !673, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !99, line: 663, size: 640, elements: !675)
!675 = !{!676, !684, !697, !706, !715, !728, !742, !743, !753}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !674, file: !99, line: 664, baseType: !677, size: 128)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !99, line: 567, size: 128, elements: !678)
!678 = !{!679, !680, !681, !682, !683}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !677, file: !99, line: 568, baseType: !196, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !99, line: 568, baseType: !14, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !99, line: 568, baseType: !14, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !677, file: !99, line: 568, baseType: !75, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !677, file: !99, line: 568, baseType: !75, size: 16, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !674, file: !99, line: 665, baseType: !685, size: 384)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !99, line: 593, size: 384, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !685, file: !99, line: 594, baseType: !196, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !685, file: !99, line: 594, baseType: !14, size: 8, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !99, line: 594, baseType: !14, size: 8, offset: 72)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !685, file: !99, line: 594, baseType: !75, size: 16, offset: 80)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !685, file: !99, line: 594, baseType: !75, size: 16, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !685, file: !99, line: 594, baseType: !75, size: 16, offset: 112)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !685, file: !99, line: 595, baseType: !107, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !685, file: !99, line: 596, baseType: !92, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !685, file: !99, line: 597, baseType: !92, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !685, file: !99, line: 598, baseType: !18, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !674, file: !99, line: 666, baseType: !698, size: 192)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !99, line: 573, size: 192, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !99, line: 574, baseType: !196, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !698, file: !99, line: 574, baseType: !14, size: 8, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !99, line: 574, baseType: !14, size: 8, offset: 72)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !698, file: !99, line: 574, baseType: !75, size: 16, offset: 80)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !698, file: !99, line: 574, baseType: !75, size: 16, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !698, file: !99, line: 574, baseType: !124, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !674, file: !99, line: 667, baseType: !707, size: 192)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !99, line: 604, size: 192, elements: !708)
!708 = !{!709, !710, !711, !712, !713, !714}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !707, file: !99, line: 605, baseType: !196, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !707, file: !99, line: 605, baseType: !14, size: 8, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !99, line: 605, baseType: !14, size: 8, offset: 72)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !707, file: !99, line: 605, baseType: !75, size: 16, offset: 80)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !707, file: !99, line: 605, baseType: !75, size: 16, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !707, file: !99, line: 605, baseType: !120, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !674, file: !99, line: 668, baseType: !716, size: 448)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !99, line: 608, size: 448, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !726, !727}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !716, file: !99, line: 609, baseType: !196, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !716, file: !99, line: 609, baseType: !14, size: 8, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !99, line: 609, baseType: !14, size: 8, offset: 72)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !716, file: !99, line: 609, baseType: !75, size: 16, offset: 80)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !716, file: !99, line: 609, baseType: !75, size: 16, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !716, file: !99, line: 609, baseType: !8, size: 32, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !716, file: !99, line: 610, baseType: !107, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !716, file: !99, line: 611, baseType: !92, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !716, file: !99, line: 612, baseType: !92, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !716, file: !99, line: 613, baseType: !8, size: 32, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !674, file: !99, line: 669, baseType: !729, size: 512)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !99, line: 580, size: 512, elements: !730)
!730 = !{!731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !729, file: !99, line: 581, baseType: !196, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !729, file: !99, line: 581, baseType: !14, size: 8, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !729, file: !99, line: 581, baseType: !14, size: 8, offset: 72)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !729, file: !99, line: 581, baseType: !75, size: 16, offset: 80)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !729, file: !99, line: 581, baseType: !75, size: 16, offset: 96)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !729, file: !99, line: 581, baseType: !8, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !729, file: !99, line: 582, baseType: !124, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !729, file: !99, line: 583, baseType: !124, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !729, file: !99, line: 584, baseType: !67, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !729, file: !99, line: 585, baseType: !196, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !729, file: !99, line: 586, baseType: !8, size: 32, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !674, file: !99, line: 670, baseType: !237, size: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !674, file: !99, line: 671, baseType: !744, size: 640)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !99, line: 631, size: 640, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !751}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !744, file: !99, line: 632, baseType: !196, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !744, file: !99, line: 632, baseType: !14, size: 8, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !99, line: 632, baseType: !14, size: 8, offset: 72)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !744, file: !99, line: 632, baseType: !75, size: 16, offset: 80)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !744, file: !99, line: 632, baseType: !75, size: 16, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !744, file: !99, line: 633, baseType: !752, size: 512, offset: 128)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 512, elements: !28)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !674, file: !99, line: 672, baseType: !754, size: 320)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !99, line: 654, size: 320, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !754, file: !99, line: 655, baseType: !196, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !754, file: !99, line: 655, baseType: !14, size: 8, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !99, line: 655, baseType: !14, size: 8, offset: 72)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !754, file: !99, line: 655, baseType: !75, size: 16, offset: 80)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !754, file: !99, line: 655, baseType: !75, size: 16, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !754, file: !99, line: 655, baseType: !14, size: 8, offset: 112)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !754, file: !99, line: 656, baseType: !120, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !754, file: !99, line: 657, baseType: !124, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !754, file: !99, line: 658, baseType: !765, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !99, line: 645, size: 128, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !766, file: !99, line: 646, baseType: !503, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !766, file: !99, line: 647, baseType: !196, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !98, file: !99, line: 902, baseType: !107, size: 64, offset: 512)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !98, file: !99, line: 903, baseType: !8, size: 32, offset: 576)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !68, file: !69, line: 61, baseType: !8, size: 32, offset: 1088)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !68, file: !69, line: 62, baseType: !8, size: 32, offset: 1120)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !68, file: !69, line: 63, baseType: !75, size: 16, offset: 1152)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !68, file: !69, line: 64, baseType: !14, size: 8, offset: 1168)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !68, file: !69, line: 66, baseType: !777, size: 2688, offset: 1216)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 2688, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 7)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !68, file: !69, line: 67, baseType: !781, size: 3072, offset: 3904)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 3072, elements: !28)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !68, file: !69, line: 68, baseType: !783, size: 576, offset: 6976)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 576, elements: !784)
!784 = !{!785}
!785 = !DISubrange(count: 9)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !68, file: !69, line: 69, baseType: !183, size: 64, offset: 7552)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !68, file: !69, line: 71, baseType: !92, size: 64, offset: 7616)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !68, file: !69, line: 72, baseType: !183, size: 64, offset: 7680)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !68, file: !69, line: 73, baseType: !673, size: 64, offset: 7744)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !68, file: !69, line: 74, baseType: !120, size: 64, offset: 7808)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !68, file: !69, line: 75, baseType: !124, size: 64, offset: 7872)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !68, file: !69, line: 76, baseType: !120, size: 64, offset: 7936)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !68, file: !69, line: 77, baseType: !107, size: 64, offset: 8000)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !68, file: !69, line: 78, baseType: !124, size: 64, offset: 8064)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !68, file: !69, line: 79, baseType: !120, size: 64, offset: 8128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !68, file: !69, line: 80, baseType: !158, size: 64, offset: 8192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !68, file: !69, line: 81, baseType: !107, size: 64, offset: 8256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !68, file: !69, line: 82, baseType: !799, size: 64, offset: 8320)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !99, line: 702, size: 128, elements: !802)
!802 = !{!803, !804, !805, !806, !807, !808}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !801, file: !99, line: 706, baseType: !8, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !801, file: !99, line: 707, baseType: !8, size: 32, offset: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !801, file: !99, line: 708, baseType: !75, size: 16, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !801, file: !99, line: 709, baseType: !14, size: 8, offset: 80)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !801, file: !99, line: 710, baseType: !14, size: 8, offset: 88)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !801, file: !99, line: 711, baseType: !14, size: 8, offset: 96)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !68, file: !69, line: 83, baseType: !107, size: 64, offset: 8384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !68, file: !69, line: 84, baseType: !124, size: 64, offset: 8448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !68, file: !69, line: 85, baseType: !673, size: 64, offset: 8512)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !68, file: !69, line: 86, baseType: !124, size: 64, offset: 8576)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !68, file: !69, line: 87, baseType: !673, size: 64, offset: 8640)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !68, file: !69, line: 88, baseType: !107, size: 64, offset: 8704)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !68, file: !69, line: 89, baseType: !107, size: 64, offset: 8768)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !68, file: !69, line: 90, baseType: !236, size: 64, offset: 8832)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !68, file: !69, line: 91, baseType: !818, size: 64, offset: 8896)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !99, line: 637, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!6, !67, !822}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !68, file: !69, line: 92, baseType: !824, size: 64, offset: 8960)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !99, line: 641, baseType: !216)
!825 = !DILocalVariable(name: "walk_state", arg: 1, scope: !64, file: !3, line: 105, type: !67)
!826 = !DILocation(line: 105, column: 54, scope: !64)
!827 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !64, file: !3, line: 106, type: !124)
!828 = !DILocation(line: 106, column: 36, scope: !64)
!829 = !DILocalVariable(name: "ret_buffer_desc", arg: 3, scope: !64, file: !3, line: 107, type: !183)
!830 = !DILocation(line: 107, column: 37, scope: !64)
!831 = !DILocalVariable(name: "status", scope: !64, file: !3, line: 109, type: !6)
!832 = !DILocation(line: 109, column: 14, scope: !64)
!833 = !DILocalVariable(name: "buffer_desc", scope: !64, file: !3, line: 110, type: !124)
!834 = !DILocation(line: 110, column: 29, scope: !64)
!835 = !DILocalVariable(name: "buffer", scope: !64, file: !3, line: 111, type: !196)
!836 = !DILocation(line: 111, column: 8, scope: !64)
!837 = !DILocalVariable(name: "buffer_length", scope: !64, file: !3, line: 112, type: !8)
!838 = !DILocation(line: 112, column: 6, scope: !64)
!839 = !DILocation(line: 118, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !64, file: !3, line: 118, column: 6)
!841 = !DILocation(line: 118, column: 6, scope: !64)
!842 = !DILocation(line: 119, column: 3, scope: !843)
!843 = distinct !DILexicalBlock(scope: !840, file: !3, line: 118, column: 17)
!844 = !DILocation(line: 121, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !64, file: !3, line: 121, column: 6)
!846 = !DILocation(line: 121, column: 6, scope: !64)
!847 = !DILocation(line: 122, column: 3, scope: !848)
!848 = distinct !DILexicalBlock(scope: !845, file: !3, line: 121, column: 24)
!849 = !DILocation(line: 125, column: 6, scope: !850)
!850 = distinct !DILexicalBlock(scope: !64, file: !3, line: 125, column: 6)
!851 = !DILocation(line: 125, column: 16, scope: !850)
!852 = !DILocation(line: 125, column: 23, scope: !850)
!853 = !DILocation(line: 125, column: 28, scope: !850)
!854 = !DILocation(line: 125, column: 6, scope: !64)
!855 = !DILocation(line: 130, column: 9, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 130, column: 7)
!857 = distinct !DILexicalBlock(scope: !850, file: !3, line: 125, column: 55)
!858 = !DILocation(line: 130, column: 19, scope: !856)
!859 = !DILocation(line: 130, column: 26, scope: !856)
!860 = !DILocation(line: 130, column: 32, scope: !856)
!861 = !DILocation(line: 130, column: 7, scope: !857)
!862 = !DILocation(line: 131, column: 48, scope: !863)
!863 = distinct !DILexicalBlock(scope: !856, file: !3, line: 130, column: 54)
!864 = !DILocation(line: 131, column: 13, scope: !863)
!865 = !DILocation(line: 131, column: 11, scope: !863)
!866 = !DILocation(line: 132, column: 8, scope: !867)
!867 = distinct !DILexicalBlock(scope: !863, file: !3, line: 132, column: 8)
!868 = !DILocation(line: 132, column: 8, scope: !863)
!869 = !DILocation(line: 133, column: 5, scope: !870)
!870 = distinct !DILexicalBlock(scope: !867, file: !3, line: 132, column: 30)
!871 = !DILocation(line: 135, column: 3, scope: !863)
!872 = !DILocation(line: 136, column: 2, scope: !857)
!873 = !DILocation(line: 136, column: 14, scope: !874)
!874 = distinct !DILexicalBlock(scope: !850, file: !3, line: 136, column: 13)
!875 = !DILocation(line: 136, column: 24, scope: !874)
!876 = !DILocation(line: 136, column: 31, scope: !874)
!877 = !DILocation(line: 136, column: 36, scope: !874)
!878 = !DILocation(line: 136, column: 69, scope: !874)
!879 = !DILocation(line: 137, column: 7, scope: !874)
!880 = !DILocation(line: 137, column: 17, scope: !874)
!881 = !DILocation(line: 137, column: 23, scope: !874)
!882 = !DILocation(line: 137, column: 35, scope: !874)
!883 = !DILocation(line: 137, column: 42, scope: !874)
!884 = !DILocation(line: 137, column: 51, scope: !874)
!885 = !DILocation(line: 139, column: 7, scope: !874)
!886 = !DILocation(line: 139, column: 10, scope: !874)
!887 = !DILocation(line: 139, column: 20, scope: !874)
!888 = !DILocation(line: 139, column: 26, scope: !874)
!889 = !DILocation(line: 139, column: 38, scope: !874)
!890 = !DILocation(line: 139, column: 45, scope: !874)
!891 = !DILocation(line: 139, column: 54, scope: !874)
!892 = !DILocation(line: 141, column: 7, scope: !874)
!893 = !DILocation(line: 141, column: 10, scope: !874)
!894 = !DILocation(line: 141, column: 20, scope: !874)
!895 = !DILocation(line: 141, column: 26, scope: !874)
!896 = !DILocation(line: 141, column: 38, scope: !874)
!897 = !DILocation(line: 141, column: 45, scope: !874)
!898 = !DILocation(line: 141, column: 54, scope: !874)
!899 = !DILocation(line: 136, column: 13, scope: !850)
!900 = !DILocation(line: 146, column: 36, scope: !901)
!901 = distinct !DILexicalBlock(scope: !874, file: !3, line: 142, column: 29)
!902 = !DILocation(line: 146, column: 46, scope: !901)
!903 = !DILocation(line: 146, column: 12, scope: !901)
!904 = !DILocation(line: 146, column: 10, scope: !901)
!905 = !DILocation(line: 147, column: 3, scope: !901)
!906 = !DILocation(line: 164, column: 17, scope: !64)
!907 = !DILocation(line: 164, column: 6, scope: !64)
!908 = !DILocation(line: 163, column: 16, scope: !64)
!909 = !DILocation(line: 166, column: 6, scope: !910)
!910 = distinct !DILexicalBlock(scope: !64, file: !3, line: 166, column: 6)
!911 = !DILocation(line: 166, column: 22, scope: !910)
!912 = !DILocation(line: 166, column: 20, scope: !910)
!913 = !DILocation(line: 166, column: 50, scope: !910)
!914 = !DILocation(line: 167, column: 7, scope: !910)
!915 = !DILocation(line: 167, column: 17, scope: !910)
!916 = !DILocation(line: 167, column: 24, scope: !910)
!917 = !DILocation(line: 167, column: 29, scope: !910)
!918 = !DILocation(line: 167, column: 55, scope: !910)
!919 = !DILocation(line: 168, column: 7, scope: !910)
!920 = !DILocation(line: 168, column: 17, scope: !910)
!921 = !DILocation(line: 168, column: 30, scope: !910)
!922 = !DILocation(line: 166, column: 6, scope: !64)
!923 = !DILocation(line: 172, column: 46, scope: !924)
!924 = distinct !DILexicalBlock(scope: !910, file: !3, line: 168, column: 48)
!925 = !DILocation(line: 172, column: 17, scope: !924)
!926 = !DILocation(line: 172, column: 15, scope: !924)
!927 = !DILocation(line: 173, column: 8, scope: !928)
!928 = distinct !DILexicalBlock(scope: !924, file: !3, line: 173, column: 7)
!929 = !DILocation(line: 173, column: 7, scope: !924)
!930 = !DILocation(line: 174, column: 4, scope: !931)
!931 = distinct !DILexicalBlock(scope: !928, file: !3, line: 173, column: 21)
!932 = !DILocation(line: 176, column: 12, scope: !924)
!933 = !DILocation(line: 176, column: 25, scope: !924)
!934 = !DILocation(line: 176, column: 32, scope: !924)
!935 = !DILocation(line: 176, column: 10, scope: !924)
!936 = !DILocation(line: 177, column: 2, scope: !924)
!937 = !DILocation(line: 180, column: 17, scope: !938)
!938 = distinct !DILexicalBlock(scope: !910, file: !3, line: 177, column: 9)
!939 = !DILocation(line: 180, column: 15, scope: !938)
!940 = !DILocation(line: 181, column: 8, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !3, line: 181, column: 7)
!942 = !DILocation(line: 181, column: 7, scope: !938)
!943 = !DILocation(line: 182, column: 4, scope: !944)
!944 = distinct !DILexicalBlock(scope: !941, file: !3, line: 181, column: 21)
!945 = !DILocation(line: 185, column: 19, scope: !938)
!946 = !DILocation(line: 185, column: 17, scope: !938)
!947 = !DILocation(line: 186, column: 13, scope: !938)
!948 = !DILocation(line: 186, column: 26, scope: !938)
!949 = !DILocation(line: 186, column: 34, scope: !938)
!950 = !DILocation(line: 186, column: 12, scope: !938)
!951 = !DILocation(line: 186, column: 10, scope: !938)
!952 = !DILocation(line: 189, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !64, file: !3, line: 189, column: 6)
!954 = !DILocation(line: 189, column: 17, scope: !953)
!955 = !DILocation(line: 189, column: 24, scope: !953)
!956 = !DILocation(line: 189, column: 29, scope: !953)
!957 = !DILocation(line: 189, column: 62, scope: !953)
!958 = !DILocation(line: 190, column: 7, scope: !953)
!959 = !DILocation(line: 190, column: 17, scope: !953)
!960 = !DILocation(line: 190, column: 23, scope: !953)
!961 = !DILocation(line: 190, column: 35, scope: !953)
!962 = !DILocation(line: 190, column: 42, scope: !953)
!963 = !DILocation(line: 190, column: 51, scope: !953)
!964 = !DILocation(line: 189, column: 6, scope: !64)
!965 = !DILocation(line: 195, column: 30, scope: !966)
!966 = distinct !DILexicalBlock(scope: !953, file: !3, line: 191, column: 29)
!967 = !DILocation(line: 195, column: 40, scope: !966)
!968 = !DILocation(line: 195, column: 12, scope: !966)
!969 = !DILocation(line: 195, column: 10, scope: !966)
!970 = !DILocation(line: 196, column: 3, scope: !966)
!971 = !DILocation(line: 197, column: 14, scope: !972)
!972 = distinct !DILexicalBlock(scope: !953, file: !3, line: 197, column: 13)
!973 = !DILocation(line: 197, column: 24, scope: !972)
!974 = !DILocation(line: 197, column: 31, scope: !972)
!975 = !DILocation(line: 197, column: 36, scope: !972)
!976 = !DILocation(line: 197, column: 69, scope: !972)
!977 = !DILocation(line: 198, column: 7, scope: !972)
!978 = !DILocation(line: 198, column: 17, scope: !972)
!979 = !DILocation(line: 198, column: 23, scope: !972)
!980 = !DILocation(line: 198, column: 35, scope: !972)
!981 = !DILocation(line: 198, column: 42, scope: !972)
!982 = !DILocation(line: 198, column: 51, scope: !972)
!983 = !DILocation(line: 197, column: 13, scope: !953)
!984 = !DILocation(line: 208, column: 10, scope: !985)
!985 = distinct !DILexicalBlock(scope: !972, file: !3, line: 199, column: 38)
!986 = !DILocation(line: 209, column: 10, scope: !985)
!987 = !DILocation(line: 209, column: 20, scope: !985)
!988 = !DILocation(line: 209, column: 26, scope: !985)
!989 = !DILocation(line: 209, column: 38, scope: !985)
!990 = !DILocation(line: 209, column: 44, scope: !985)
!991 = !DILocation(line: 210, column: 10, scope: !985)
!992 = !DILocation(line: 210, column: 20, scope: !985)
!993 = !DILocation(line: 210, column: 26, scope: !985)
!994 = !DILocation(line: 209, column: 64, scope: !985)
!995 = !DILocation(line: 211, column: 21, scope: !985)
!996 = !DILocation(line: 211, column: 10, scope: !985)
!997 = !DILocation(line: 208, column: 3, scope: !985)
!998 = !DILocation(line: 214, column: 22, scope: !985)
!999 = !DILocation(line: 214, column: 4, scope: !985)
!1000 = !DILocation(line: 214, column: 20, scope: !985)
!1001 = !DILocation(line: 215, column: 3, scope: !985)
!1002 = !DILocation(line: 230, column: 30, scope: !64)
!1003 = !DILocation(line: 230, column: 40, scope: !64)
!1004 = !DILocation(line: 230, column: 53, scope: !64)
!1005 = !DILocation(line: 230, column: 2, scope: !64)
!1006 = !DILocation(line: 234, column: 38, scope: !64)
!1007 = !DILocation(line: 234, column: 48, scope: !64)
!1008 = !DILocation(line: 234, column: 56, scope: !64)
!1009 = !DILocation(line: 234, column: 11, scope: !64)
!1010 = !DILocation(line: 234, column: 9, scope: !64)
!1011 = !DILocation(line: 235, column: 30, scope: !64)
!1012 = !DILocation(line: 235, column: 40, scope: !64)
!1013 = !DILocation(line: 235, column: 53, scope: !64)
!1014 = !DILocation(line: 235, column: 2, scope: !64)
!1015 = !DILabel(scope: !64, name: "exit", file: !3, line: 237)
!1016 = !DILocation(line: 237, column: 1, scope: !64)
!1017 = !DILocation(line: 238, column: 6, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !64, file: !3, line: 238, column: 6)
!1019 = !DILocation(line: 238, column: 6, scope: !64)
!1020 = !DILocation(line: 239, column: 28, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 238, column: 28)
!1022 = !DILocation(line: 239, column: 3, scope: !1021)
!1023 = !DILocation(line: 240, column: 2, scope: !1021)
!1024 = !DILocation(line: 241, column: 22, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 240, column: 9)
!1026 = !DILocation(line: 241, column: 4, scope: !1025)
!1027 = !DILocation(line: 241, column: 20, scope: !1025)
!1028 = !DILocation(line: 244, column: 2, scope: !64)
!1029 = !DILocation(line: 245, column: 1, scope: !64)
!1030 = distinct !DISubprogram(name: "acpi_ex_write_data_to_field", scope: !3, file: !3, line: 262, type: !1031, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!6, !124, !124, !183}
!1033 = !DILocalVariable(name: "source_desc", arg: 1, scope: !1030, file: !3, line: 262, type: !124)
!1034 = !DILocation(line: 262, column: 56, scope: !1030)
!1035 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !1030, file: !3, line: 263, type: !124)
!1036 = !DILocation(line: 263, column: 35, scope: !1030)
!1037 = !DILocalVariable(name: "result_desc", arg: 3, scope: !1030, file: !3, line: 264, type: !183)
!1038 = !DILocation(line: 264, column: 36, scope: !1030)
!1039 = !DILocalVariable(name: "status", scope: !1030, file: !3, line: 266, type: !6)
!1040 = !DILocation(line: 266, column: 14, scope: !1030)
!1041 = !DILocalVariable(name: "buffer_length", scope: !1030, file: !3, line: 267, type: !8)
!1042 = !DILocation(line: 267, column: 6, scope: !1030)
!1043 = !DILocalVariable(name: "data_length", scope: !1030, file: !3, line: 268, type: !8)
!1044 = !DILocation(line: 268, column: 6, scope: !1030)
!1045 = !DILocalVariable(name: "buffer", scope: !1030, file: !3, line: 269, type: !196)
!1046 = !DILocation(line: 269, column: 8, scope: !1030)
!1047 = !DILocation(line: 275, column: 7, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 275, column: 6)
!1049 = !DILocation(line: 275, column: 19, scope: !1048)
!1050 = !DILocation(line: 275, column: 23, scope: !1048)
!1051 = !DILocation(line: 275, column: 6, scope: !1030)
!1052 = !DILocation(line: 276, column: 3, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 275, column: 33)
!1054 = !DILocation(line: 279, column: 6, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 279, column: 6)
!1056 = !DILocation(line: 279, column: 16, scope: !1055)
!1057 = !DILocation(line: 279, column: 23, scope: !1055)
!1058 = !DILocation(line: 279, column: 28, scope: !1055)
!1059 = !DILocation(line: 279, column: 6, scope: !1030)
!1060 = !DILocation(line: 284, column: 9, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 284, column: 7)
!1062 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 279, column: 55)
!1063 = !DILocation(line: 284, column: 19, scope: !1061)
!1064 = !DILocation(line: 284, column: 26, scope: !1061)
!1065 = !DILocation(line: 284, column: 32, scope: !1061)
!1066 = !DILocation(line: 284, column: 7, scope: !1062)
!1067 = !DILocation(line: 285, column: 48, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 284, column: 54)
!1069 = !DILocation(line: 285, column: 13, scope: !1068)
!1070 = !DILocation(line: 285, column: 11, scope: !1068)
!1071 = !DILocation(line: 286, column: 8, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 286, column: 8)
!1073 = !DILocation(line: 286, column: 8, scope: !1068)
!1074 = !DILocation(line: 287, column: 5, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 286, column: 30)
!1076 = !DILocation(line: 289, column: 3, scope: !1068)
!1077 = !DILocation(line: 290, column: 2, scope: !1062)
!1078 = !DILocation(line: 290, column: 14, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 290, column: 13)
!1080 = !DILocation(line: 290, column: 24, scope: !1079)
!1081 = !DILocation(line: 290, column: 31, scope: !1079)
!1082 = !DILocation(line: 290, column: 36, scope: !1079)
!1083 = !DILocation(line: 290, column: 69, scope: !1079)
!1084 = !DILocation(line: 291, column: 7, scope: !1079)
!1085 = !DILocation(line: 291, column: 17, scope: !1079)
!1086 = !DILocation(line: 291, column: 23, scope: !1079)
!1087 = !DILocation(line: 291, column: 35, scope: !1079)
!1088 = !DILocation(line: 291, column: 42, scope: !1079)
!1089 = !DILocation(line: 291, column: 51, scope: !1079)
!1090 = !DILocation(line: 290, column: 13, scope: !1055)
!1091 = !DILocation(line: 296, column: 31, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 292, column: 29)
!1093 = !DILocation(line: 296, column: 44, scope: !1092)
!1094 = !DILocation(line: 296, column: 54, scope: !1092)
!1095 = !DILocation(line: 296, column: 12, scope: !1092)
!1096 = !DILocation(line: 296, column: 10, scope: !1092)
!1097 = !DILocation(line: 297, column: 3, scope: !1092)
!1098 = !DILocation(line: 298, column: 14, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 298, column: 13)
!1100 = !DILocation(line: 298, column: 24, scope: !1099)
!1101 = !DILocation(line: 298, column: 31, scope: !1099)
!1102 = !DILocation(line: 298, column: 36, scope: !1099)
!1103 = !DILocation(line: 298, column: 69, scope: !1099)
!1104 = !DILocation(line: 299, column: 7, scope: !1099)
!1105 = !DILocation(line: 299, column: 17, scope: !1099)
!1106 = !DILocation(line: 299, column: 23, scope: !1099)
!1107 = !DILocation(line: 299, column: 35, scope: !1099)
!1108 = !DILocation(line: 299, column: 42, scope: !1099)
!1109 = !DILocation(line: 299, column: 51, scope: !1099)
!1110 = !DILocation(line: 301, column: 7, scope: !1099)
!1111 = !DILocation(line: 301, column: 10, scope: !1099)
!1112 = !DILocation(line: 301, column: 20, scope: !1099)
!1113 = !DILocation(line: 301, column: 26, scope: !1099)
!1114 = !DILocation(line: 301, column: 38, scope: !1099)
!1115 = !DILocation(line: 301, column: 45, scope: !1099)
!1116 = !DILocation(line: 301, column: 54, scope: !1099)
!1117 = !DILocation(line: 303, column: 7, scope: !1099)
!1118 = !DILocation(line: 303, column: 10, scope: !1099)
!1119 = !DILocation(line: 303, column: 20, scope: !1099)
!1120 = !DILocation(line: 303, column: 26, scope: !1099)
!1121 = !DILocation(line: 303, column: 38, scope: !1099)
!1122 = !DILocation(line: 303, column: 45, scope: !1099)
!1123 = !DILocation(line: 303, column: 54, scope: !1099)
!1124 = !DILocation(line: 298, column: 13, scope: !1079)
!1125 = !DILocation(line: 309, column: 32, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 304, column: 29)
!1127 = !DILocation(line: 309, column: 45, scope: !1126)
!1128 = !DILocation(line: 310, column: 11, scope: !1126)
!1129 = !DILocation(line: 309, column: 7, scope: !1126)
!1130 = !DILocation(line: 308, column: 10, scope: !1126)
!1131 = !DILocation(line: 311, column: 3, scope: !1126)
!1132 = !DILocation(line: 312, column: 14, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 312, column: 13)
!1134 = !DILocation(line: 312, column: 24, scope: !1133)
!1135 = !DILocation(line: 312, column: 31, scope: !1133)
!1136 = !DILocation(line: 312, column: 36, scope: !1133)
!1137 = !DILocation(line: 312, column: 69, scope: !1133)
!1138 = !DILocation(line: 313, column: 7, scope: !1133)
!1139 = !DILocation(line: 313, column: 17, scope: !1133)
!1140 = !DILocation(line: 313, column: 23, scope: !1133)
!1141 = !DILocation(line: 313, column: 35, scope: !1133)
!1142 = !DILocation(line: 313, column: 42, scope: !1133)
!1143 = !DILocation(line: 313, column: 51, scope: !1133)
!1144 = !DILocation(line: 312, column: 13, scope: !1099)
!1145 = !DILocation(line: 323, column: 18, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 314, column: 38)
!1147 = !DILocation(line: 323, column: 7, scope: !1146)
!1148 = !DILocation(line: 322, column: 15, scope: !1146)
!1149 = !DILocation(line: 325, column: 10, scope: !1146)
!1150 = !DILocation(line: 325, column: 20, scope: !1146)
!1151 = !DILocation(line: 325, column: 26, scope: !1146)
!1152 = !DILocation(line: 325, column: 38, scope: !1146)
!1153 = !DILocation(line: 325, column: 44, scope: !1146)
!1154 = !DILocation(line: 326, column: 10, scope: !1146)
!1155 = !DILocation(line: 326, column: 20, scope: !1146)
!1156 = !DILocation(line: 326, column: 26, scope: !1146)
!1157 = !DILocation(line: 325, column: 64, scope: !1146)
!1158 = !DILocation(line: 327, column: 10, scope: !1146)
!1159 = !DILocation(line: 327, column: 23, scope: !1146)
!1160 = !DILocation(line: 327, column: 30, scope: !1146)
!1161 = !DILocation(line: 327, column: 39, scope: !1146)
!1162 = !DILocation(line: 325, column: 3, scope: !1146)
!1163 = !DILocation(line: 329, column: 8, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 329, column: 7)
!1165 = !DILocation(line: 329, column: 18, scope: !1164)
!1166 = !DILocation(line: 329, column: 24, scope: !1164)
!1167 = !DILocation(line: 329, column: 36, scope: !1164)
!1168 = !DILocation(line: 329, column: 43, scope: !1164)
!1169 = !DILocation(line: 329, column: 51, scope: !1164)
!1170 = !DILocation(line: 331, column: 8, scope: !1164)
!1171 = !DILocation(line: 331, column: 11, scope: !1164)
!1172 = !DILocation(line: 333, column: 7, scope: !1164)
!1173 = !DILocation(line: 333, column: 10, scope: !1164)
!1174 = !DILocation(line: 329, column: 7, scope: !1146)
!1175 = !DILocation(line: 342, column: 30, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 334, column: 26)
!1177 = !DILocation(line: 343, column: 16, scope: !1176)
!1178 = !DILocation(line: 343, column: 26, scope: !1176)
!1179 = !DILocation(line: 344, column: 9, scope: !1176)
!1180 = !DILocation(line: 344, column: 21, scope: !1176)
!1181 = !DILocation(line: 345, column: 9, scope: !1176)
!1182 = !DILocation(line: 343, column: 9, scope: !1176)
!1183 = !DILocation(line: 342, column: 8, scope: !1176)
!1184 = !DILocation(line: 341, column: 11, scope: !1176)
!1185 = !DILocation(line: 347, column: 4, scope: !1176)
!1186 = !DILocation(line: 349, column: 3, scope: !1146)
!1187 = !DILocation(line: 354, column: 10, scope: !1030)
!1188 = !DILocation(line: 354, column: 23, scope: !1030)
!1189 = !DILocation(line: 354, column: 30, scope: !1030)
!1190 = !DILocation(line: 354, column: 2, scope: !1030)
!1191 = !DILocation(line: 357, column: 13, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 354, column: 36)
!1193 = !DILocation(line: 357, column: 26, scope: !1192)
!1194 = !DILocation(line: 357, column: 34, scope: !1192)
!1195 = !DILocation(line: 357, column: 12, scope: !1192)
!1196 = !DILocation(line: 357, column: 10, scope: !1192)
!1197 = !DILocation(line: 358, column: 17, scope: !1192)
!1198 = !DILocation(line: 359, column: 3, scope: !1192)
!1199 = !DILocation(line: 363, column: 12, scope: !1192)
!1200 = !DILocation(line: 363, column: 25, scope: !1192)
!1201 = !DILocation(line: 363, column: 32, scope: !1192)
!1202 = !DILocation(line: 363, column: 10, scope: !1192)
!1203 = !DILocation(line: 364, column: 19, scope: !1192)
!1204 = !DILocation(line: 364, column: 32, scope: !1192)
!1205 = !DILocation(line: 364, column: 39, scope: !1192)
!1206 = !DILocation(line: 364, column: 17, scope: !1192)
!1207 = !DILocation(line: 365, column: 3, scope: !1192)
!1208 = !DILocation(line: 369, column: 12, scope: !1192)
!1209 = !DILocation(line: 369, column: 25, scope: !1192)
!1210 = !DILocation(line: 369, column: 32, scope: !1192)
!1211 = !DILocation(line: 369, column: 10, scope: !1192)
!1212 = !DILocation(line: 370, column: 19, scope: !1192)
!1213 = !DILocation(line: 370, column: 32, scope: !1192)
!1214 = !DILocation(line: 370, column: 39, scope: !1192)
!1215 = !DILocation(line: 370, column: 17, scope: !1192)
!1216 = !DILocation(line: 371, column: 3, scope: !1192)
!1217 = !DILocation(line: 374, column: 3, scope: !1192)
!1218 = !DILocation(line: 394, column: 30, scope: !1030)
!1219 = !DILocation(line: 394, column: 40, scope: !1030)
!1220 = !DILocation(line: 394, column: 53, scope: !1030)
!1221 = !DILocation(line: 394, column: 2, scope: !1030)
!1222 = !DILocation(line: 398, column: 37, scope: !1030)
!1223 = !DILocation(line: 398, column: 47, scope: !1030)
!1224 = !DILocation(line: 398, column: 55, scope: !1030)
!1225 = !DILocation(line: 398, column: 11, scope: !1030)
!1226 = !DILocation(line: 398, column: 9, scope: !1030)
!1227 = !DILocation(line: 399, column: 30, scope: !1030)
!1228 = !DILocation(line: 399, column: 40, scope: !1030)
!1229 = !DILocation(line: 399, column: 53, scope: !1030)
!1230 = !DILocation(line: 399, column: 2, scope: !1030)
!1231 = !DILocation(line: 400, column: 2, scope: !1030)
!1232 = !DILocation(line: 401, column: 1, scope: !1030)
