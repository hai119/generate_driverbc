; ModuleID = '../bcout/drivers/acpi/acpica/hwgpe.llvm.bc'
source_filename = "drivers/acpi/acpica/hwgpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.acpi_gpe_address = type { i8, i64 }
%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, %struct.acpi_gpe_register_info*, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { %struct.acpi_namespace_node* }
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
%struct.acpi_gpe_register_info = type { %struct.acpi_gpe_address, %struct.acpi_gpe_address, i16, i8, i8, i8, i8 }
%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i32 }
%struct.acpi_gpe_block_info = type { %struct.acpi_namespace_node*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_register_info*, %struct.acpi_gpe_event_info*, i64, i32, i16, i16, i8, i8 }
%struct.acpi_gpe_block_status_context = type { %struct.acpi_gpe_register_info*, i8, i8 }

@_acpi_module_name = internal constant [6 x i8] c"hwgpe\00", align 1, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c"Invalid GPE Action, %u\00", align 1
@acpi_gbl_gpe_lock = external dso_local global %struct.spinlock*, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_gpe_read(i64* %value, %struct.acpi_gpe_address* %reg) #0 !dbg !36 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %reg.addr = alloca %struct.acpi_gpe_address*, align 8
  %status = alloca i32, align 4
  %value32 = alloca i32, align 4
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !46, metadata !DIExpression()), !dbg !47
  store %struct.acpi_gpe_address* %reg, %struct.acpi_gpe_address** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_address** %reg.addr, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %status, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %value32, metadata !52, metadata !DIExpression()), !dbg !53
  %0 = load %struct.acpi_gpe_address*, %struct.acpi_gpe_address** %reg.addr, align 8, !dbg !54
  %space_id = getelementptr inbounds %struct.acpi_gpe_address, %struct.acpi_gpe_address* %0, i32 0, i32 0, !dbg !56
  %1 = load i8, i8* %space_id, align 8, !dbg !56
  %conv = zext i8 %1 to i32, !dbg !54
  %cmp = icmp eq i32 %conv, 0, !dbg !57
  br i1 %cmp, label %if.then, label %if.end, !dbg !58

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_gpe_address*, %struct.acpi_gpe_address** %reg.addr, align 8, !dbg !59
  %address = getelementptr inbounds %struct.acpi_gpe_address, %struct.acpi_gpe_address* %2, i32 0, i32 1, !dbg !59
  %3 = load i64, i64* %address, align 8, !dbg !59
  %4 = inttoptr i64 %3 to i8*, !dbg !59
  %5 = load i8, i8* %4, align 1, !dbg !59
  %conv2 = zext i8 %5 to i64, !dbg !61
  %6 = load i64*, i64** %value.addr, align 8, !dbg !62
  store i64 %conv2, i64* %6, align 8, !dbg !63
  store i32 0, i32* %retval, align 4, !dbg !64
  br label %return, !dbg !64

if.end:                                           ; preds = %entry
  %7 = load %struct.acpi_gpe_address*, %struct.acpi_gpe_address** %reg.addr, align 8, !dbg !65
  %address3 = getelementptr inbounds %struct.acpi_gpe_address, %struct.acpi_gpe_address* %7, i32 0, i32 1, !dbg !66
  %8 = load i64, i64* %address3, align 8, !dbg !66
  %call = call i32 @acpi_os_read_port(i64 %8, i32* %value32, i32 8) #4, !dbg !67
  store i32 %call, i32* %status, align 4, !dbg !68
  %9 = load i32, i32* %status, align 4, !dbg !69
  %tobool = icmp ne i32 %9, 0, !dbg !69
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !71

if.then4:                                         ; preds = %if.end
  %10 = load i32, i32* %status, align 4, !dbg !72
  store i32 %10, i32* %retval, align 4, !dbg !72
  br label %return, !dbg !72

if.end5:                                          ; preds = %if.end
  %11 = load i32, i32* %value32, align 4, !dbg !73
  %conv6 = zext i32 %11 to i64, !dbg !74
  %12 = load i64*, i64** %value.addr, align 8, !dbg !75
  store i64 %conv6, i64* %12, align 8, !dbg !76
  store i32 0, i32* %retval, align 4, !dbg !77
  br label %return, !dbg !77

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !78
  ret i32 %13, !dbg !78
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_read_port(i64, i32*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_gpe_write(i64 %value, %struct.acpi_gpe_address* %reg) #0 !dbg !79 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %reg.addr = alloca %struct.acpi_gpe_address*, align 8
  store i64 %value, i64* %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !82, metadata !DIExpression()), !dbg !83
  store %struct.acpi_gpe_address* %reg, %struct.acpi_gpe_address** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_address** %reg.addr, metadata !84, metadata !DIExpression()), !dbg !85
  %0 = load %struct.acpi_gpe_address*, %struct.acpi_gpe_address** %reg.addr, align 8, !dbg !86
  %space_id = getelementptr inbounds %struct.acpi_gpe_address, %struct.acpi_gpe_address* %0, i32 0, i32 0, !dbg !88
  %1 = load i8, i8* %space_id, align 8, !dbg !88
  %conv = zext i8 %1 to i32, !dbg !86
  %cmp = icmp eq i32 %conv, 0, !dbg !89
  br i1 %cmp, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %value.addr, align 8, !dbg !91
  %conv2 = trunc i64 %2 to i8, !dbg !91
  %3 = load %struct.acpi_gpe_address*, %struct.acpi_gpe_address** %reg.addr, align 8, !dbg !91
  %address = getelementptr inbounds %struct.acpi_gpe_address, %struct.acpi_gpe_address* %3, i32 0, i32 1, !dbg !91
  %4 = load i64, i64* %address, align 8, !dbg !91
  %5 = inttoptr i64 %4 to i8*, !dbg !91
  store i8 %conv2, i8* %5, align 1, !dbg !91
  store i32 0, i32* %retval, align 4, !dbg !93
  br label %return, !dbg !93

if.end:                                           ; preds = %entry
  %6 = load %struct.acpi_gpe_address*, %struct.acpi_gpe_address** %reg.addr, align 8, !dbg !94
  %address3 = getelementptr inbounds %struct.acpi_gpe_address, %struct.acpi_gpe_address* %6, i32 0, i32 1, !dbg !95
  %7 = load i64, i64* %address3, align 8, !dbg !95
  %8 = load i64, i64* %value.addr, align 8, !dbg !96
  %conv4 = trunc i64 %8 to i32, !dbg !97
  %call = call i32 @acpi_os_write_port(i64 %7, i32 %conv4, i32 8) #4, !dbg !98
  store i32 %call, i32* %retval, align 4, !dbg !99
  br label %return, !dbg !99

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !100
  ret i32 %9, !dbg !100
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_write_port(i64, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info* %gpe_event_info) #0 !dbg !101 {
entry:
  %gpe_event_info.addr = alloca %struct.acpi_gpe_event_info*, align 8
  store %struct.acpi_gpe_event_info* %gpe_event_info, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info.addr, metadata !856, metadata !DIExpression()), !dbg !857
  %0 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !858
  %gpe_number = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %0, i32 0, i32 3, !dbg !859
  %1 = load i8, i8* %gpe_number, align 1, !dbg !859
  %conv = zext i8 %1 to i32, !dbg !858
  %2 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !860
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %2, i32 0, i32 1, !dbg !861
  %3 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !861
  %base_gpe_number = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %3, i32 0, i32 2, !dbg !862
  %4 = load i16, i16* %base_gpe_number, align 8, !dbg !862
  %conv1 = zext i16 %4 to i32, !dbg !860
  %sub = sub i32 %conv, %conv1, !dbg !863
  %shl = shl i32 1, %sub, !dbg !864
  ret i32 %shl, !dbg !865
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info* %gpe_event_info, i32 %action) #0 !dbg !866 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca %struct.acpi_gpe_event_info*, align 8
  %action.addr = alloca i32, align 4
  %gpe_register_info = alloca %struct.acpi_gpe_register_info*, align 8
  %status = alloca i32, align 4
  %enable_mask = alloca i64, align 8
  %register_bit = alloca i32, align 4
  store %struct.acpi_gpe_event_info* %gpe_event_info, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info.addr, metadata !869, metadata !DIExpression()), !dbg !870
  store i32 %action, i32* %action.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %action.addr, metadata !871, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_register_info** %gpe_register_info, metadata !873, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.declare(metadata i32* %status, metadata !875, metadata !DIExpression()), !dbg !876
  store i32 0, i32* %status, align 4, !dbg !876
  call void @llvm.dbg.declare(metadata i64* %enable_mask, metadata !877, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.declare(metadata i32* %register_bit, metadata !879, metadata !DIExpression()), !dbg !880
  %0 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !881
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %0, i32 0, i32 1, !dbg !882
  %1 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !882
  store %struct.acpi_gpe_register_info* %1, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !883
  %2 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !884
  %tobool = icmp ne %struct.acpi_gpe_register_info* %2, null, !dbg !884
  br i1 %tobool, label %if.end, label %if.then, !dbg !886

if.then:                                          ; preds = %entry
  store i32 6, i32* %retval, align 4, !dbg !887
  br label %return, !dbg !887

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !889
  %enable_address = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %3, i32 0, i32 1, !dbg !890
  %call = call i32 @acpi_hw_gpe_read(i64* %enable_mask, %struct.acpi_gpe_address* %enable_address) #4, !dbg !891
  store i32 %call, i32* %status, align 4, !dbg !892
  %4 = load i32, i32* %status, align 4, !dbg !893
  %tobool1 = icmp ne i32 %4, 0, !dbg !893
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !895

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* %status, align 4, !dbg !896
  store i32 %5, i32* %retval, align 4, !dbg !898
  br label %return, !dbg !898

if.end3:                                          ; preds = %if.end
  %6 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !899
  %call4 = call i32 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info* %6) #4, !dbg !900
  store i32 %call4, i32* %register_bit, align 4, !dbg !901
  %7 = load i32, i32* %action.addr, align 4, !dbg !902
  switch i32 %7, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb9
    i32 1, label %sw.bb11
  ], !dbg !903

sw.bb:                                            ; preds = %if.end3
  %8 = load i32, i32* %register_bit, align 4, !dbg !904
  %9 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !907
  %enable_mask5 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %9, i32 0, i32 6, !dbg !908
  %10 = load i8, i8* %enable_mask5, align 1, !dbg !908
  %conv = zext i8 %10 to i32, !dbg !907
  %and = and i32 %8, %conv, !dbg !909
  %tobool6 = icmp ne i32 %and, 0, !dbg !909
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !910

if.then7:                                         ; preds = %sw.bb
  store i32 4097, i32* %retval, align 4, !dbg !911
  br label %return, !dbg !911

if.end8:                                          ; preds = %sw.bb
  br label %sw.bb9, !dbg !913

sw.bb9:                                           ; preds = %if.end3, %if.end8
  %11 = load i32, i32* %register_bit, align 4, !dbg !914
  %conv10 = zext i32 %11 to i64, !dbg !914
  %12 = load i64, i64* %enable_mask, align 8, !dbg !914
  %or = or i64 %12, %conv10, !dbg !914
  store i64 %or, i64* %enable_mask, align 8, !dbg !914
  br label %sw.epilog, !dbg !915

sw.bb11:                                          ; preds = %if.end3
  %13 = load i32, i32* %register_bit, align 4, !dbg !916
  %neg = xor i32 %13, -1, !dbg !916
  %conv12 = zext i32 %neg to i64, !dbg !916
  %14 = load i64, i64* %enable_mask, align 8, !dbg !916
  %and13 = and i64 %14, %conv12, !dbg !916
  store i64 %and13, i64* %enable_mask, align 8, !dbg !916
  br label %sw.epilog, !dbg !917

sw.default:                                       ; preds = %if.end3
  %15 = load i32, i32* %action.addr, align 4, !dbg !918
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_acpi_module_name, i64 0, i64 0), i32 184, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15) #4, !dbg !918
  store i32 4097, i32* %retval, align 4, !dbg !919
  br label %return, !dbg !919

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb9
  %16 = load i32, i32* %register_bit, align 4, !dbg !920
  %17 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !922
  %mask_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %17, i32 0, i32 5, !dbg !923
  %18 = load i8, i8* %mask_for_run, align 4, !dbg !923
  %conv14 = zext i8 %18 to i32, !dbg !922
  %and15 = and i32 %16, %conv14, !dbg !924
  %tobool16 = icmp ne i32 %and15, 0, !dbg !924
  br i1 %tobool16, label %if.end20, label %if.then17, !dbg !925

if.then17:                                        ; preds = %sw.epilog
  %19 = load i64, i64* %enable_mask, align 8, !dbg !926
  %20 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !928
  %enable_address18 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %20, i32 0, i32 1, !dbg !929
  %call19 = call i32 @acpi_hw_gpe_write(i64 %19, %struct.acpi_gpe_address* %enable_address18) #4, !dbg !930
  store i32 %call19, i32* %status, align 4, !dbg !931
  br label %if.end20, !dbg !932

if.end20:                                         ; preds = %if.then17, %sw.epilog
  %21 = load i32, i32* %status, align 4, !dbg !933
  store i32 %21, i32* %retval, align 4, !dbg !934
  br label %return, !dbg !934

return:                                           ; preds = %if.end20, %sw.default, %if.then7, %if.then2, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !935
  ret i32 %22, !dbg !935
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_clear_gpe(%struct.acpi_gpe_event_info* %gpe_event_info) #0 !dbg !936 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca %struct.acpi_gpe_event_info*, align 8
  %gpe_register_info = alloca %struct.acpi_gpe_register_info*, align 8
  %status = alloca i32, align 4
  %register_bit = alloca i32, align 4
  store %struct.acpi_gpe_event_info* %gpe_event_info, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info.addr, metadata !939, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_register_info** %gpe_register_info, metadata !941, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.declare(metadata i32* %status, metadata !943, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.declare(metadata i32* %register_bit, metadata !945, metadata !DIExpression()), !dbg !946
  %0 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !947
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %0, i32 0, i32 1, !dbg !948
  %1 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !948
  store %struct.acpi_gpe_register_info* %1, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !949
  %2 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !950
  %tobool = icmp ne %struct.acpi_gpe_register_info* %2, null, !dbg !950
  br i1 %tobool, label %if.end, label %if.then, !dbg !952

if.then:                                          ; preds = %entry
  store i32 6, i32* %retval, align 4, !dbg !953
  br label %return, !dbg !953

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !955
  %call = call i32 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info* %3) #4, !dbg !956
  store i32 %call, i32* %register_bit, align 4, !dbg !957
  %4 = load i32, i32* %register_bit, align 4, !dbg !958
  %conv = zext i32 %4 to i64, !dbg !958
  %5 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !959
  %status_address = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %5, i32 0, i32 0, !dbg !960
  %call1 = call i32 @acpi_hw_gpe_write(i64 %conv, %struct.acpi_gpe_address* %status_address) #4, !dbg !961
  store i32 %call1, i32* %status, align 4, !dbg !962
  %6 = load i32, i32* %status, align 4, !dbg !963
  store i32 %6, i32* %retval, align 4, !dbg !964
  br label %return, !dbg !964

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !965
  ret i32 %7, !dbg !965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_get_gpe_status(%struct.acpi_gpe_event_info* %gpe_event_info, i32* %event_status) #0 !dbg !966 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca %struct.acpi_gpe_event_info*, align 8
  %event_status.addr = alloca i32*, align 8
  %in_byte = alloca i64, align 8
  %register_bit = alloca i32, align 4
  %gpe_register_info = alloca %struct.acpi_gpe_register_info*, align 8
  %local_event_status = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_gpe_event_info* %gpe_event_info, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info.addr, metadata !970, metadata !DIExpression()), !dbg !971
  store i32* %event_status, i32** %event_status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %event_status.addr, metadata !972, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.declare(metadata i64* %in_byte, metadata !974, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.declare(metadata i32* %register_bit, metadata !976, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_register_info** %gpe_register_info, metadata !978, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.declare(metadata i32* %local_event_status, metadata !980, metadata !DIExpression()), !dbg !981
  store i32 0, i32* %local_event_status, align 4, !dbg !981
  call void @llvm.dbg.declare(metadata i32* %status, metadata !982, metadata !DIExpression()), !dbg !983
  %0 = load i32*, i32** %event_status.addr, align 8, !dbg !984
  %tobool = icmp ne i32* %0, null, !dbg !984
  br i1 %tobool, label %if.end, label %if.then, !dbg !986

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !987
  br label %return, !dbg !987

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !989
  %flags = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %1, i32 0, i32 2, !dbg !989
  %2 = load i8, i8* %flags, align 8, !dbg !989
  %conv = zext i8 %2 to i32, !dbg !989
  %and = and i32 %conv, 7, !dbg !989
  %conv1 = trunc i32 %and to i8, !dbg !989
  %conv2 = zext i8 %conv1 to i32, !dbg !989
  %cmp = icmp ne i32 %conv2, 0, !dbg !991
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !992

if.then4:                                         ; preds = %if.end
  %3 = load i32, i32* %local_event_status, align 4, !dbg !993
  %or = or i32 %3, 16, !dbg !993
  store i32 %or, i32* %local_event_status, align 4, !dbg !993
  br label %if.end5, !dbg !995

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !996
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %4, i32 0, i32 1, !dbg !997
  %5 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !997
  store %struct.acpi_gpe_register_info* %5, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !998
  %6 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !999
  %call = call i32 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info* %6) #4, !dbg !1000
  store i32 %call, i32* %register_bit, align 4, !dbg !1001
  %7 = load i32, i32* %register_bit, align 4, !dbg !1002
  %8 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1004
  %enable_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %8, i32 0, i32 4, !dbg !1005
  %9 = load i8, i8* %enable_for_run, align 1, !dbg !1005
  %conv6 = zext i8 %9 to i32, !dbg !1004
  %and7 = and i32 %7, %conv6, !dbg !1006
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1006
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !1007

if.then9:                                         ; preds = %if.end5
  %10 = load i32, i32* %local_event_status, align 4, !dbg !1008
  %or10 = or i32 %10, 1, !dbg !1008
  store i32 %or10, i32* %local_event_status, align 4, !dbg !1008
  br label %if.end11, !dbg !1010

if.end11:                                         ; preds = %if.then9, %if.end5
  %11 = load i32, i32* %register_bit, align 4, !dbg !1011
  %12 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1013
  %mask_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %12, i32 0, i32 5, !dbg !1014
  %13 = load i8, i8* %mask_for_run, align 4, !dbg !1014
  %conv12 = zext i8 %13 to i32, !dbg !1013
  %and13 = and i32 %11, %conv12, !dbg !1015
  %tobool14 = icmp ne i32 %and13, 0, !dbg !1015
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !1016

if.then15:                                        ; preds = %if.end11
  %14 = load i32, i32* %local_event_status, align 4, !dbg !1017
  %or16 = or i32 %14, 32, !dbg !1017
  store i32 %or16, i32* %local_event_status, align 4, !dbg !1017
  br label %if.end17, !dbg !1019

if.end17:                                         ; preds = %if.then15, %if.end11
  %15 = load i32, i32* %register_bit, align 4, !dbg !1020
  %16 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1022
  %enable_for_wake = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %16, i32 0, i32 3, !dbg !1023
  %17 = load i8, i8* %enable_for_wake, align 2, !dbg !1023
  %conv18 = zext i8 %17 to i32, !dbg !1022
  %and19 = and i32 %15, %conv18, !dbg !1024
  %tobool20 = icmp ne i32 %and19, 0, !dbg !1024
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !1025

if.then21:                                        ; preds = %if.end17
  %18 = load i32, i32* %local_event_status, align 4, !dbg !1026
  %or22 = or i32 %18, 2, !dbg !1026
  store i32 %or22, i32* %local_event_status, align 4, !dbg !1026
  br label %if.end23, !dbg !1028

if.end23:                                         ; preds = %if.then21, %if.end17
  %19 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1029
  %enable_address = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %19, i32 0, i32 1, !dbg !1030
  %call24 = call i32 @acpi_hw_gpe_read(i64* %in_byte, %struct.acpi_gpe_address* %enable_address) #4, !dbg !1031
  store i32 %call24, i32* %status, align 4, !dbg !1032
  %20 = load i32, i32* %status, align 4, !dbg !1033
  %tobool25 = icmp ne i32 %20, 0, !dbg !1033
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !1035

if.then26:                                        ; preds = %if.end23
  %21 = load i32, i32* %status, align 4, !dbg !1036
  store i32 %21, i32* %retval, align 4, !dbg !1038
  br label %return, !dbg !1038

if.end27:                                         ; preds = %if.end23
  %22 = load i32, i32* %register_bit, align 4, !dbg !1039
  %conv28 = zext i32 %22 to i64, !dbg !1039
  %23 = load i64, i64* %in_byte, align 8, !dbg !1041
  %and29 = and i64 %conv28, %23, !dbg !1042
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1042
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !1043

if.then31:                                        ; preds = %if.end27
  %24 = load i32, i32* %local_event_status, align 4, !dbg !1044
  %or32 = or i32 %24, 8, !dbg !1044
  store i32 %or32, i32* %local_event_status, align 4, !dbg !1044
  br label %if.end33, !dbg !1046

if.end33:                                         ; preds = %if.then31, %if.end27
  %25 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1047
  %status_address = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %25, i32 0, i32 0, !dbg !1048
  %call34 = call i32 @acpi_hw_gpe_read(i64* %in_byte, %struct.acpi_gpe_address* %status_address) #4, !dbg !1049
  store i32 %call34, i32* %status, align 4, !dbg !1050
  %26 = load i32, i32* %status, align 4, !dbg !1051
  %tobool35 = icmp ne i32 %26, 0, !dbg !1051
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !1053

if.then36:                                        ; preds = %if.end33
  %27 = load i32, i32* %status, align 4, !dbg !1054
  store i32 %27, i32* %retval, align 4, !dbg !1056
  br label %return, !dbg !1056

if.end37:                                         ; preds = %if.end33
  %28 = load i32, i32* %register_bit, align 4, !dbg !1057
  %conv38 = zext i32 %28 to i64, !dbg !1057
  %29 = load i64, i64* %in_byte, align 8, !dbg !1059
  %and39 = and i64 %conv38, %29, !dbg !1060
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1060
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !1061

if.then41:                                        ; preds = %if.end37
  %30 = load i32, i32* %local_event_status, align 4, !dbg !1062
  %or42 = or i32 %30, 4, !dbg !1062
  store i32 %or42, i32* %local_event_status, align 4, !dbg !1062
  br label %if.end43, !dbg !1064

if.end43:                                         ; preds = %if.then41, %if.end37
  %31 = load i32, i32* %local_event_status, align 4, !dbg !1065
  %32 = load i32*, i32** %event_status.addr, align 8, !dbg !1066
  store i32 %31, i32* %32, align 4, !dbg !1067
  store i32 0, i32* %retval, align 4, !dbg !1068
  br label %return, !dbg !1068

return:                                           ; preds = %if.end43, %if.then36, %if.then26, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !1069
  ret i32 %33, !dbg !1069
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_disable_gpe_block(%struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_block_info* %gpe_block, i8* %context) #0 !dbg !1070 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt_info.addr = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %gpe_block.addr = alloca %struct.acpi_gpe_block_info*, align 8
  %context.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, metadata !1073, metadata !DIExpression()), !dbg !1074
  store %struct.acpi_gpe_block_info* %gpe_block, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block.addr, metadata !1075, metadata !DIExpression()), !dbg !1076
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1077, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1079, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1081, metadata !DIExpression()), !dbg !1082
  store i32 0, i32* %i, align 4, !dbg !1083
  br label %for.cond, !dbg !1085

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1086
  %1 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1088
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %1, i32 0, i32 7, !dbg !1089
  %2 = load i32, i32* %register_count, align 8, !dbg !1089
  %cmp = icmp ult i32 %0, %2, !dbg !1090
  br i1 %cmp, label %for.body, label %for.end, !dbg !1091

for.body:                                         ; preds = %for.cond
  %3 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1092
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %3, i32 0, i32 4, !dbg !1094
  %4 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !1094
  %5 = load i32, i32* %i, align 4, !dbg !1095
  %idxprom = zext i32 %5 to i64, !dbg !1092
  %arrayidx = getelementptr %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %4, i64 %idxprom, !dbg !1092
  %call = call i32 @acpi_hw_gpe_enable_write(i8 zeroext 0, %struct.acpi_gpe_register_info* %arrayidx) #4, !dbg !1096
  store i32 %call, i32* %status, align 4, !dbg !1097
  %6 = load i32, i32* %status, align 4, !dbg !1098
  %tobool = icmp ne i32 %6, 0, !dbg !1098
  br i1 %tobool, label %if.then, label %if.end, !dbg !1100

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %status, align 4, !dbg !1101
  store i32 %7, i32* %retval, align 4, !dbg !1103
  br label %return, !dbg !1103

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1104

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !1105
  %inc = add i32 %8, 1, !dbg !1105
  store i32 %inc, i32* %i, align 4, !dbg !1105
  br label %for.cond, !dbg !1106, !llvm.loop !1107

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1109
  br label %return, !dbg !1109

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !1110
  ret i32 %9, !dbg !1110
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_hw_gpe_enable_write(i8 zeroext %enable_mask, %struct.acpi_gpe_register_info* %gpe_register_info) #0 !dbg !1111 {
entry:
  %enable_mask.addr = alloca i8, align 1
  %gpe_register_info.addr = alloca %struct.acpi_gpe_register_info*, align 8
  %status = alloca i32, align 4
  store i8 %enable_mask, i8* %enable_mask.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable_mask.addr, metadata !1114, metadata !DIExpression()), !dbg !1115
  store %struct.acpi_gpe_register_info* %gpe_register_info, %struct.acpi_gpe_register_info** %gpe_register_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_register_info** %gpe_register_info.addr, metadata !1116, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1118, metadata !DIExpression()), !dbg !1119
  %0 = load i8, i8* %enable_mask.addr, align 1, !dbg !1120
  %1 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info.addr, align 8, !dbg !1121
  %enable_mask1 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %1, i32 0, i32 6, !dbg !1122
  store i8 %0, i8* %enable_mask1, align 1, !dbg !1123
  %2 = load i8, i8* %enable_mask.addr, align 1, !dbg !1124
  %conv = zext i8 %2 to i64, !dbg !1124
  %3 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info.addr, align 8, !dbg !1125
  %enable_address = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %3, i32 0, i32 1, !dbg !1126
  %call = call i32 @acpi_hw_gpe_write(i64 %conv, %struct.acpi_gpe_address* %enable_address) #4, !dbg !1127
  store i32 %call, i32* %status, align 4, !dbg !1128
  %4 = load i32, i32* %status, align 4, !dbg !1129
  ret i32 %4, !dbg !1130
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_clear_gpe_block(%struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_block_info* %gpe_block, i8* %context) #0 !dbg !1131 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt_info.addr = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %gpe_block.addr = alloca %struct.acpi_gpe_block_info*, align 8
  %context.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, metadata !1132, metadata !DIExpression()), !dbg !1133
  store %struct.acpi_gpe_block_info* %gpe_block, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block.addr, metadata !1134, metadata !DIExpression()), !dbg !1135
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1136, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1138, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1140, metadata !DIExpression()), !dbg !1141
  store i32 0, i32* %i, align 4, !dbg !1142
  br label %for.cond, !dbg !1144

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1145
  %1 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1147
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %1, i32 0, i32 7, !dbg !1148
  %2 = load i32, i32* %register_count, align 8, !dbg !1148
  %cmp = icmp ult i32 %0, %2, !dbg !1149
  br i1 %cmp, label %for.body, label %for.end, !dbg !1150

for.body:                                         ; preds = %for.cond
  %3 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1151
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %3, i32 0, i32 4, !dbg !1153
  %4 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !1153
  %5 = load i32, i32* %i, align 4, !dbg !1154
  %idxprom = zext i32 %5 to i64, !dbg !1151
  %arrayidx = getelementptr %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %4, i64 %idxprom, !dbg !1151
  %status_address = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %arrayidx, i32 0, i32 0, !dbg !1155
  %call = call i32 @acpi_hw_gpe_write(i64 255, %struct.acpi_gpe_address* %status_address) #4, !dbg !1156
  store i32 %call, i32* %status, align 4, !dbg !1157
  %6 = load i32, i32* %status, align 4, !dbg !1158
  %tobool = icmp ne i32 %6, 0, !dbg !1158
  br i1 %tobool, label %if.then, label %if.end, !dbg !1160

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %status, align 4, !dbg !1161
  store i32 %7, i32* %retval, align 4, !dbg !1163
  br label %return, !dbg !1163

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1164

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !1165
  %inc = add i32 %8, 1, !dbg !1165
  store i32 %inc, i32* %i, align 4, !dbg !1165
  br label %for.cond, !dbg !1166, !llvm.loop !1167

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1169
  br label %return, !dbg !1169

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !1170
  ret i32 %9, !dbg !1170
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_enable_runtime_gpe_block(%struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_block_info* %gpe_block, i8* %context) #0 !dbg !1171 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt_info.addr = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %gpe_block.addr = alloca %struct.acpi_gpe_block_info*, align 8
  %context.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %gpe_register_info = alloca %struct.acpi_gpe_register_info*, align 8
  %enable_mask = alloca i8, align 1
  store %struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, metadata !1172, metadata !DIExpression()), !dbg !1173
  store %struct.acpi_gpe_block_info* %gpe_block, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block.addr, metadata !1174, metadata !DIExpression()), !dbg !1175
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1176, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1178, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1180, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_register_info** %gpe_register_info, metadata !1182, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.declare(metadata i8* %enable_mask, metadata !1184, metadata !DIExpression()), !dbg !1185
  store i32 0, i32* %i, align 4, !dbg !1186
  br label %for.cond, !dbg !1188

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1189
  %1 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1191
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %1, i32 0, i32 7, !dbg !1192
  %2 = load i32, i32* %register_count, align 8, !dbg !1192
  %cmp = icmp ult i32 %0, %2, !dbg !1193
  br i1 %cmp, label %for.body, label %for.end, !dbg !1194

for.body:                                         ; preds = %for.cond
  %3 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1195
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %3, i32 0, i32 4, !dbg !1197
  %4 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !1197
  %5 = load i32, i32* %i, align 4, !dbg !1198
  %idxprom = zext i32 %5 to i64, !dbg !1195
  %arrayidx = getelementptr %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %4, i64 %idxprom, !dbg !1195
  store %struct.acpi_gpe_register_info* %arrayidx, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1199
  %6 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1200
  %enable_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %6, i32 0, i32 4, !dbg !1202
  %7 = load i8, i8* %enable_for_run, align 1, !dbg !1202
  %tobool = icmp ne i8 %7, 0, !dbg !1200
  br i1 %tobool, label %if.end, label %if.then, !dbg !1203

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1204

if.end:                                           ; preds = %for.body
  %8 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1206
  %enable_for_run1 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %8, i32 0, i32 4, !dbg !1207
  %9 = load i8, i8* %enable_for_run1, align 1, !dbg !1207
  %conv = zext i8 %9 to i32, !dbg !1206
  %10 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1208
  %mask_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %10, i32 0, i32 5, !dbg !1209
  %11 = load i8, i8* %mask_for_run, align 4, !dbg !1209
  %conv2 = zext i8 %11 to i32, !dbg !1208
  %neg = xor i32 %conv2, -1, !dbg !1210
  %and = and i32 %conv, %neg, !dbg !1211
  %conv3 = trunc i32 %and to i8, !dbg !1206
  store i8 %conv3, i8* %enable_mask, align 1, !dbg !1212
  %12 = load i8, i8* %enable_mask, align 1, !dbg !1213
  %13 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1214
  %call = call i32 @acpi_hw_gpe_enable_write(i8 zeroext %12, %struct.acpi_gpe_register_info* %13) #4, !dbg !1215
  store i32 %call, i32* %status, align 4, !dbg !1216
  %14 = load i32, i32* %status, align 4, !dbg !1217
  %tobool4 = icmp ne i32 %14, 0, !dbg !1217
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1219

if.then5:                                         ; preds = %if.end
  %15 = load i32, i32* %status, align 4, !dbg !1220
  store i32 %15, i32* %retval, align 4, !dbg !1222
  br label %return, !dbg !1222

if.end6:                                          ; preds = %if.end
  br label %for.inc, !dbg !1223

for.inc:                                          ; preds = %if.end6, %if.then
  %16 = load i32, i32* %i, align 4, !dbg !1224
  %inc = add i32 %16, 1, !dbg !1224
  store i32 %inc, i32* %i, align 4, !dbg !1224
  br label %for.cond, !dbg !1225, !llvm.loop !1226

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1228
  br label %return, !dbg !1228

return:                                           ; preds = %for.end, %if.then5
  %17 = load i32, i32* %retval, align 4, !dbg !1229
  ret i32 %17, !dbg !1229
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_disable_all_gpes() #0 !dbg !1230 {
entry:
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1233, metadata !DIExpression()), !dbg !1234
  %call = call i32 @acpi_ev_walk_gpe_list(i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)* @acpi_hw_disable_gpe_block, i8* null) #4, !dbg !1235
  store i32 %call, i32* %status, align 4, !dbg !1236
  %0 = load i32, i32* %status, align 4, !dbg !1237
  ret i32 %0, !dbg !1237
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_walk_gpe_list(i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_enable_all_runtime_gpes() #0 !dbg !1238 {
entry:
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1239, metadata !DIExpression()), !dbg !1240
  %call = call i32 @acpi_ev_walk_gpe_list(i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)* @acpi_hw_enable_runtime_gpe_block, i8* null) #4, !dbg !1241
  store i32 %call, i32* %status, align 4, !dbg !1242
  %0 = load i32, i32* %status, align 4, !dbg !1243
  ret i32 %0, !dbg !1243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_enable_all_wakeup_gpes() #0 !dbg !1244 {
entry:
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1245, metadata !DIExpression()), !dbg !1246
  %call = call i32 @acpi_ev_walk_gpe_list(i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)* @acpi_hw_enable_wakeup_gpe_block, i8* null) #4, !dbg !1247
  store i32 %call, i32* %status, align 4, !dbg !1248
  %0 = load i32, i32* %status, align 4, !dbg !1249
  ret i32 %0, !dbg !1249
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_hw_enable_wakeup_gpe_block(%struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_block_info* %gpe_block, i8* %context) #0 !dbg !1250 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt_info.addr = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %gpe_block.addr = alloca %struct.acpi_gpe_block_info*, align 8
  %context.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %gpe_register_info = alloca %struct.acpi_gpe_register_info*, align 8
  store %struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, metadata !1251, metadata !DIExpression()), !dbg !1252
  store %struct.acpi_gpe_block_info* %gpe_block, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block.addr, metadata !1253, metadata !DIExpression()), !dbg !1254
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1257, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1259, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_register_info** %gpe_register_info, metadata !1261, metadata !DIExpression()), !dbg !1262
  store i32 0, i32* %i, align 4, !dbg !1263
  br label %for.cond, !dbg !1265

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1266
  %1 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1268
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %1, i32 0, i32 7, !dbg !1269
  %2 = load i32, i32* %register_count, align 8, !dbg !1269
  %cmp = icmp ult i32 %0, %2, !dbg !1270
  br i1 %cmp, label %for.body, label %for.end, !dbg !1271

for.body:                                         ; preds = %for.cond
  %3 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1272
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %3, i32 0, i32 4, !dbg !1274
  %4 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !1274
  %5 = load i32, i32* %i, align 4, !dbg !1275
  %idxprom = zext i32 %5 to i64, !dbg !1272
  %arrayidx = getelementptr %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %4, i64 %idxprom, !dbg !1272
  store %struct.acpi_gpe_register_info* %arrayidx, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1276
  %6 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1277
  %enable_for_wake = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %6, i32 0, i32 3, !dbg !1278
  %7 = load i8, i8* %enable_for_wake, align 2, !dbg !1278
  %8 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1279
  %call = call i32 @acpi_hw_gpe_enable_write(i8 zeroext %7, %struct.acpi_gpe_register_info* %8) #4, !dbg !1280
  store i32 %call, i32* %status, align 4, !dbg !1281
  %9 = load i32, i32* %status, align 4, !dbg !1282
  %tobool = icmp ne i32 %9, 0, !dbg !1282
  br i1 %tobool, label %if.then, label %if.end, !dbg !1284

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %status, align 4, !dbg !1285
  store i32 %10, i32* %retval, align 4, !dbg !1287
  br label %return, !dbg !1287

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1288

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !dbg !1289
  %inc = add i32 %11, 1, !dbg !1289
  store i32 %inc, i32* %i, align 4, !dbg !1289
  br label %for.cond, !dbg !1290, !llvm.loop !1291

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1293
  br label %return, !dbg !1293

return:                                           ; preds = %for.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !1294
  ret i32 %12, !dbg !1294
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_hw_check_all_gpes(i8* %gpe_skip_device, i32 %gpe_skip_number) #0 !dbg !1295 {
entry:
  %gpe_skip_device.addr = alloca i8*, align 8
  %gpe_skip_number.addr = alloca i32, align 4
  %context = alloca %struct.acpi_gpe_block_status_context, align 8
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %flags = alloca i64, align 8
  store i8* %gpe_skip_device, i8** %gpe_skip_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_skip_device.addr, metadata !1298, metadata !DIExpression()), !dbg !1299
  store i32 %gpe_skip_number, i32* %gpe_skip_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_skip_number.addr, metadata !1300, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_status_context* %context, metadata !1302, metadata !DIExpression()), !dbg !1308
  %0 = bitcast %struct.acpi_gpe_block_status_context* %context to i8*, !dbg !1308
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 16, i1 false), !dbg !1308
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !1309, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !1311, metadata !DIExpression()), !dbg !1312
  %1 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1313
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %1) #4, !dbg !1314
  store i64 %call, i64* %flags, align 8, !dbg !1315
  %2 = load i8*, i8** %gpe_skip_device.addr, align 8, !dbg !1316
  %3 = load i32, i32* %gpe_skip_number.addr, align 4, !dbg !1317
  %call1 = call %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %2, i32 %3) #4, !dbg !1318
  store %struct.acpi_gpe_event_info* %call1, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1319
  %4 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1320
  %tobool = icmp ne %struct.acpi_gpe_event_info* %4, null, !dbg !1320
  br i1 %tobool, label %if.then, label %if.end, !dbg !1322

if.then:                                          ; preds = %entry
  %5 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1323
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %5, i32 0, i32 1, !dbg !1325
  %6 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !1325
  %gpe_skip_register_info = getelementptr inbounds %struct.acpi_gpe_block_status_context, %struct.acpi_gpe_block_status_context* %context, i32 0, i32 0, !dbg !1326
  store %struct.acpi_gpe_register_info* %6, %struct.acpi_gpe_register_info** %gpe_skip_register_info, align 8, !dbg !1327
  %7 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1328
  %call2 = call i32 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info* %7) #4, !dbg !1329
  %conv = trunc i32 %call2 to i8, !dbg !1329
  %gpe_skip_mask = getelementptr inbounds %struct.acpi_gpe_block_status_context, %struct.acpi_gpe_block_status_context* %context, i32 0, i32 1, !dbg !1330
  store i8 %conv, i8* %gpe_skip_mask, align 8, !dbg !1331
  br label %if.end, !dbg !1332

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1333
  %9 = load i64, i64* %flags, align 8, !dbg !1334
  call void @acpi_os_release_lock(%struct.spinlock* %8, i64 %9) #4, !dbg !1335
  %10 = bitcast %struct.acpi_gpe_block_status_context* %context to i8*, !dbg !1336
  %call3 = call i32 @acpi_ev_walk_gpe_list(i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)* @acpi_hw_get_gpe_block_status, i8* %10) #4, !dbg !1337
  %retval4 = getelementptr inbounds %struct.acpi_gpe_block_status_context, %struct.acpi_gpe_block_status_context* %context, i32 0, i32 2, !dbg !1338
  %11 = load i8, i8* %retval4, align 1, !dbg !1338
  %conv5 = zext i8 %11 to i32, !dbg !1339
  %cmp = icmp ne i32 %conv5, 0, !dbg !1340
  %conv6 = zext i1 %cmp to i32, !dbg !1340
  %conv7 = trunc i32 %conv6 to i8, !dbg !1341
  ret i8 %conv7, !dbg !1342
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i64 @acpi_os_acquire_lock(%struct.spinlock*) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_release_lock(%struct.spinlock*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_hw_get_gpe_block_status(%struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_block_info* %gpe_block, i8* %context) #0 !dbg !1343 {
entry:
  %gpe_xrupt_info.addr = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %gpe_block.addr = alloca %struct.acpi_gpe_block_info*, align 8
  %context.addr = alloca i8*, align 8
  %c = alloca %struct.acpi_gpe_block_status_context*, align 8
  %gpe_register_info = alloca %struct.acpi_gpe_register_info*, align 8
  %in_enable = alloca i64, align 8
  %in_status = alloca i64, align 8
  %status = alloca i32, align 4
  %ret_mask = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, metadata !1344, metadata !DIExpression()), !dbg !1345
  store %struct.acpi_gpe_block_info* %gpe_block, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block.addr, metadata !1346, metadata !DIExpression()), !dbg !1347
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1348, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_status_context** %c, metadata !1350, metadata !DIExpression()), !dbg !1352
  %0 = load i8*, i8** %context.addr, align 8, !dbg !1353
  %1 = bitcast i8* %0 to %struct.acpi_gpe_block_status_context*, !dbg !1353
  store %struct.acpi_gpe_block_status_context* %1, %struct.acpi_gpe_block_status_context** %c, align 8, !dbg !1352
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_register_info** %gpe_register_info, metadata !1354, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.declare(metadata i64* %in_enable, metadata !1356, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.declare(metadata i64* %in_status, metadata !1358, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1360, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.declare(metadata i8* %ret_mask, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1364, metadata !DIExpression()), !dbg !1365
  store i32 0, i32* %i, align 4, !dbg !1366
  br label %for.cond, !dbg !1368

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !1369
  %3 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1371
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %3, i32 0, i32 7, !dbg !1372
  %4 = load i32, i32* %register_count, align 8, !dbg !1372
  %cmp = icmp ult i32 %2, %4, !dbg !1373
  br i1 %cmp, label %for.body, label %for.end, !dbg !1374

for.body:                                         ; preds = %for.cond
  %5 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1375
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %5, i32 0, i32 4, !dbg !1377
  %6 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !1377
  %7 = load i32, i32* %i, align 4, !dbg !1378
  %idxprom = zext i32 %7 to i64, !dbg !1375
  %arrayidx = getelementptr %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %6, i64 %idxprom, !dbg !1375
  store %struct.acpi_gpe_register_info* %arrayidx, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1379
  %8 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1380
  %enable_address = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %8, i32 0, i32 1, !dbg !1381
  %call = call i32 @acpi_hw_gpe_read(i64* %in_enable, %struct.acpi_gpe_address* %enable_address) #4, !dbg !1382
  store i32 %call, i32* %status, align 4, !dbg !1383
  %9 = load i32, i32* %status, align 4, !dbg !1384
  %tobool = icmp ne i32 %9, 0, !dbg !1384
  br i1 %tobool, label %if.then, label %if.end, !dbg !1386

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1387

if.end:                                           ; preds = %for.body
  %10 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1389
  %status_address = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %10, i32 0, i32 0, !dbg !1390
  %call1 = call i32 @acpi_hw_gpe_read(i64* %in_status, %struct.acpi_gpe_address* %status_address) #4, !dbg !1391
  store i32 %call1, i32* %status, align 4, !dbg !1392
  %11 = load i32, i32* %status, align 4, !dbg !1393
  %tobool2 = icmp ne i32 %11, 0, !dbg !1393
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1395

if.then3:                                         ; preds = %if.end
  br label %for.inc, !dbg !1396

if.end4:                                          ; preds = %if.end
  %12 = load i64, i64* %in_enable, align 8, !dbg !1398
  %13 = load i64, i64* %in_status, align 8, !dbg !1399
  %and = and i64 %12, %13, !dbg !1400
  %conv = trunc i64 %and to i8, !dbg !1398
  store i8 %conv, i8* %ret_mask, align 1, !dbg !1401
  %14 = load i8, i8* %ret_mask, align 1, !dbg !1402
  %conv5 = zext i8 %14 to i32, !dbg !1402
  %tobool6 = icmp ne i32 %conv5, 0, !dbg !1402
  br i1 %tobool6, label %land.lhs.true, label %if.end14, !dbg !1404

land.lhs.true:                                    ; preds = %if.end4
  %15 = load %struct.acpi_gpe_block_status_context*, %struct.acpi_gpe_block_status_context** %c, align 8, !dbg !1405
  %gpe_skip_register_info = getelementptr inbounds %struct.acpi_gpe_block_status_context, %struct.acpi_gpe_block_status_context* %15, i32 0, i32 0, !dbg !1406
  %16 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_skip_register_info, align 8, !dbg !1406
  %17 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1407
  %cmp7 = icmp eq %struct.acpi_gpe_register_info* %16, %17, !dbg !1408
  br i1 %cmp7, label %if.then9, label %if.end14, !dbg !1409

if.then9:                                         ; preds = %land.lhs.true
  %18 = load %struct.acpi_gpe_block_status_context*, %struct.acpi_gpe_block_status_context** %c, align 8, !dbg !1410
  %gpe_skip_mask = getelementptr inbounds %struct.acpi_gpe_block_status_context, %struct.acpi_gpe_block_status_context* %18, i32 0, i32 1, !dbg !1412
  %19 = load i8, i8* %gpe_skip_mask, align 8, !dbg !1412
  %conv10 = zext i8 %19 to i32, !dbg !1410
  %neg = xor i32 %conv10, -1, !dbg !1413
  %20 = load i8, i8* %ret_mask, align 1, !dbg !1414
  %conv11 = zext i8 %20 to i32, !dbg !1414
  %and12 = and i32 %conv11, %neg, !dbg !1414
  %conv13 = trunc i32 %and12 to i8, !dbg !1414
  store i8 %conv13, i8* %ret_mask, align 1, !dbg !1414
  br label %if.end14, !dbg !1415

if.end14:                                         ; preds = %if.then9, %land.lhs.true, %if.end4
  %21 = load i8, i8* %ret_mask, align 1, !dbg !1416
  %conv15 = zext i8 %21 to i32, !dbg !1416
  %22 = load %struct.acpi_gpe_block_status_context*, %struct.acpi_gpe_block_status_context** %c, align 8, !dbg !1417
  %retval16 = getelementptr inbounds %struct.acpi_gpe_block_status_context, %struct.acpi_gpe_block_status_context* %22, i32 0, i32 2, !dbg !1418
  %23 = load i8, i8* %retval16, align 1, !dbg !1419
  %conv17 = zext i8 %23 to i32, !dbg !1419
  %or = or i32 %conv17, %conv15, !dbg !1419
  %conv18 = trunc i32 %or to i8, !dbg !1419
  store i8 %conv18, i8* %retval16, align 1, !dbg !1419
  br label %for.inc, !dbg !1420

for.inc:                                          ; preds = %if.end14, %if.then3, %if.then
  %24 = load i32, i32* %i, align 4, !dbg !1421
  %inc = add i32 %24, 1, !dbg !1421
  store i32 %inc, i32* %i, align 4, !dbg !1421
  br label %for.cond, !dbg !1422, !llvm.loop !1423

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !1425
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !26, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !25, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/hwgpe.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !16, !17, !18, !19, !23, !8, !20, !24}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !7, line: 805, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !15)
!15 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !22)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !13)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_event_status", file: !7, line: 738, baseType: !20)
!25 = !{!0}
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 48, elements: !29)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{!30}
!30 = !DISubrange(count: 6)
!31 = !{i32 7, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"Code Model", i32 2}
!35 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!36 = distinct !DISubprogram(name: "acpi_hw_gpe_read", scope: !3, file: !3, line: 43, type: !37, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!37 = !DISubroutineType(types: !38)
!38 = !{!19, !39, !40}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !42, line: 459, size: 128, elements: !43)
!42 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !41, file: !42, line: 460, baseType: !8, size: 8)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !41, file: !42, line: 461, baseType: !13, size: 64, offset: 64)
!46 = !DILocalVariable(name: "value", arg: 1, scope: !36, file: !3, line: 43, type: !39)
!47 = !DILocation(line: 43, column: 35, scope: !36)
!48 = !DILocalVariable(name: "reg", arg: 2, scope: !36, file: !3, line: 43, type: !40)
!49 = !DILocation(line: 43, column: 67, scope: !36)
!50 = !DILocalVariable(name: "status", scope: !36, file: !3, line: 45, type: !19)
!51 = !DILocation(line: 45, column: 14, scope: !36)
!52 = !DILocalVariable(name: "value32", scope: !36, file: !3, line: 46, type: !20)
!53 = !DILocation(line: 46, column: 6, scope: !36)
!54 = !DILocation(line: 48, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !36, file: !3, line: 48, column: 6)
!56 = !DILocation(line: 48, column: 11, scope: !55)
!57 = !DILocation(line: 48, column: 20, scope: !55)
!58 = !DILocation(line: 48, column: 6, scope: !36)
!59 = !DILocation(line: 50, column: 17, scope: !60)
!60 = distinct !DILexicalBlock(scope: !55, file: !3, line: 48, column: 53)
!61 = !DILocation(line: 50, column: 12, scope: !60)
!62 = !DILocation(line: 50, column: 4, scope: !60)
!63 = !DILocation(line: 50, column: 10, scope: !60)
!64 = !DILocation(line: 51, column: 3, scope: !60)
!65 = !DILocation(line: 58, column: 46, scope: !36)
!66 = !DILocation(line: 58, column: 51, scope: !36)
!67 = !DILocation(line: 58, column: 11, scope: !36)
!68 = !DILocation(line: 58, column: 9, scope: !36)
!69 = !DILocation(line: 60, column: 6, scope: !70)
!70 = distinct !DILexicalBlock(scope: !36, file: !3, line: 60, column: 6)
!71 = !DILocation(line: 60, column: 6, scope: !36)
!72 = !DILocation(line: 61, column: 3, scope: !70)
!73 = !DILocation(line: 63, column: 16, scope: !36)
!74 = !DILocation(line: 63, column: 11, scope: !36)
!75 = !DILocation(line: 63, column: 3, scope: !36)
!76 = !DILocation(line: 63, column: 9, scope: !36)
!77 = !DILocation(line: 65, column: 2, scope: !36)
!78 = !DILocation(line: 66, column: 1, scope: !36)
!79 = distinct !DISubprogram(name: "acpi_hw_gpe_write", scope: !3, file: !3, line: 81, type: !80, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!80 = !DISubroutineType(types: !81)
!81 = !{!19, !13, !40}
!82 = !DILocalVariable(name: "value", arg: 1, scope: !79, file: !3, line: 81, type: !13)
!83 = !DILocation(line: 81, column: 35, scope: !79)
!84 = !DILocalVariable(name: "reg", arg: 2, scope: !79, file: !3, line: 81, type: !40)
!85 = !DILocation(line: 81, column: 67, scope: !79)
!86 = !DILocation(line: 83, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !79, file: !3, line: 83, column: 6)
!88 = !DILocation(line: 83, column: 11, scope: !87)
!89 = !DILocation(line: 83, column: 20, scope: !87)
!90 = !DILocation(line: 83, column: 6, scope: !79)
!91 = !DILocation(line: 85, column: 3, scope: !92)
!92 = distinct !DILexicalBlock(scope: !87, file: !3, line: 83, column: 53)
!93 = !DILocation(line: 86, column: 3, scope: !92)
!94 = !DILocation(line: 93, column: 45, scope: !79)
!95 = !DILocation(line: 93, column: 50, scope: !79)
!96 = !DILocation(line: 93, column: 64, scope: !79)
!97 = !DILocation(line: 93, column: 59, scope: !79)
!98 = !DILocation(line: 93, column: 9, scope: !79)
!99 = !DILocation(line: 93, column: 2, scope: !79)
!100 = !DILocation(line: 95, column: 1, scope: !79)
!101 = distinct !DISubprogram(name: "acpi_hw_get_gpe_register_bit", scope: !3, file: !3, line: 110, type: !102, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!102 = !DISubroutineType(types: !103)
!103 = !{!20, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !42, line: 448, size: 192, elements: !106)
!106 = !{!107, !851, !852, !853, !854, !855}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !105, file: !42, line: 449, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !42, line: 438, size: 64, elements: !109)
!109 = !{!110, !832, !845}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !108, file: !42, line: 439, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !42, line: 133, size: 384, elements: !113)
!113 = !{!114, !819, !820, !821, !822, !828, !829, !830, !831}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !112, file: !42, line: 134, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !117, line: 367, size: 576, elements: !118)
!117 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !130, !143, !154, !167, !181, !190, !507, !524, !539, !552, !595, !607, !620, !630, !648, !670, !689, !708, !727, !740, !765, !782, !795, !809, !818}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !116, file: !117, line: 368, baseType: !120, size: 128)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !117, line: 73, size: 128, elements: !121)
!121 = !{!122, !123, !124, !125, !129}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !120, file: !117, line: 74, baseType: !115, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !117, line: 74, baseType: !8, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !117, line: 74, baseType: !8, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !120, file: !117, line: 74, baseType: !126, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !128)
!128 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !117, line: 74, baseType: !8, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !116, file: !117, line: 369, baseType: !131, size: 192)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !117, line: 76, size: 192, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !142}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !131, file: !117, line: 77, baseType: !115, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !131, file: !117, line: 77, baseType: !8, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !117, line: 77, baseType: !8, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !131, file: !117, line: 77, baseType: !126, size: 16, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !117, line: 77, baseType: !8, size: 8, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !131, file: !117, line: 77, baseType: !139, size: 24, offset: 104)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 24, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 3)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !131, file: !117, line: 78, baseType: !13, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !116, file: !117, line: 370, baseType: !144, size: 256)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !117, line: 93, size: 256, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !153}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !144, file: !117, line: 94, baseType: !115, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !144, file: !117, line: 94, baseType: !8, size: 8, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !144, file: !117, line: 94, baseType: !8, size: 8, offset: 72)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !144, file: !117, line: 94, baseType: !126, size: 16, offset: 80)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !144, file: !117, line: 94, baseType: !8, size: 8, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !144, file: !117, line: 94, baseType: !152, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !144, file: !117, line: 94, baseType: !20, size: 32, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !116, file: !117, line: 371, baseType: !155, size: 384)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !117, line: 97, size: 384, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !155, file: !117, line: 98, baseType: !115, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !155, file: !117, line: 98, baseType: !8, size: 8, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !155, file: !117, line: 98, baseType: !8, size: 8, offset: 72)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !155, file: !117, line: 98, baseType: !126, size: 16, offset: 80)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !155, file: !117, line: 98, baseType: !8, size: 8, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !155, file: !117, line: 98, baseType: !16, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !155, file: !117, line: 98, baseType: !20, size: 32, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !155, file: !117, line: 99, baseType: !20, size: 32, offset: 224)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !155, file: !117, line: 100, baseType: !16, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !155, file: !117, line: 101, baseType: !111, size: 64, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !116, file: !117, line: 372, baseType: !168, size: 384)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !117, line: 104, size: 384, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !178, !179, !180}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !168, file: !117, line: 105, baseType: !115, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !168, file: !117, line: 105, baseType: !8, size: 8, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !117, line: 105, baseType: !8, size: 8, offset: 72)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !168, file: !117, line: 105, baseType: !126, size: 16, offset: 80)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !117, line: 105, baseType: !8, size: 8, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !168, file: !117, line: 105, baseType: !111, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !168, file: !117, line: 106, baseType: !177, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !168, file: !117, line: 107, baseType: !16, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !168, file: !117, line: 108, baseType: !20, size: 32, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !168, file: !117, line: 109, baseType: !20, size: 32, offset: 352)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !116, file: !117, line: 373, baseType: !182, size: 192)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !117, line: 118, size: 192, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !182, file: !117, line: 119, baseType: !115, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !182, file: !117, line: 119, baseType: !8, size: 8, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !182, file: !117, line: 119, baseType: !8, size: 8, offset: 72)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !182, file: !117, line: 119, baseType: !126, size: 16, offset: 80)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !117, line: 119, baseType: !8, size: 8, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !182, file: !117, line: 119, baseType: !17, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !116, file: !117, line: 374, baseType: !191, size: 448)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !117, line: 143, size: 448, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !504, !505, !506}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !191, file: !117, line: 144, baseType: !115, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !191, file: !117, line: 144, baseType: !8, size: 8, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !191, file: !117, line: 144, baseType: !8, size: 8, offset: 72)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !191, file: !117, line: 144, baseType: !126, size: 16, offset: 80)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !191, file: !117, line: 144, baseType: !8, size: 8, offset: 96)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !191, file: !117, line: 144, baseType: !8, size: 8, offset: 104)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !191, file: !117, line: 145, baseType: !8, size: 8, offset: 112)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !191, file: !117, line: 146, baseType: !8, size: 8, offset: 120)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !191, file: !117, line: 147, baseType: !115, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !191, file: !117, line: 148, baseType: !115, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !191, file: !117, line: 149, baseType: !16, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !191, file: !117, line: 153, baseType: !205, size: 64, offset: 320)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !117, line: 150, size: 64, elements: !206)
!206 = !{!207, !503}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !205, file: !117, line: 151, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !42, line: 248, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!19, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !214, line: 37, size: 9024, elements: !215)
!214 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !449, !450, !451, !452, !453, !457, !459, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !486, !487, !488, !489, !490, !491, !492, !493, !495, !501}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !214, line: 38, baseType: !212, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !213, file: !214, line: 39, baseType: !8, size: 8, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !213, file: !214, line: 40, baseType: !8, size: 8, offset: 72)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !213, file: !214, line: 41, baseType: !126, size: 16, offset: 80)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !213, file: !214, line: 42, baseType: !8, size: 8, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !213, file: !214, line: 43, baseType: !8, size: 8, offset: 104)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !213, file: !214, line: 44, baseType: !8, size: 8, offset: 112)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !213, file: !214, line: 45, baseType: !224, size: 16, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !126)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !213, file: !214, line: 46, baseType: !8, size: 8, offset: 144)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !213, file: !214, line: 47, baseType: !8, size: 8, offset: 152)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !213, file: !214, line: 48, baseType: !8, size: 8, offset: 160)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !213, file: !214, line: 49, baseType: !8, size: 8, offset: 168)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !213, file: !214, line: 50, baseType: !8, size: 8, offset: 176)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !213, file: !214, line: 51, baseType: !8, size: 8, offset: 184)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !213, file: !214, line: 52, baseType: !8, size: 8, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !213, file: !214, line: 53, baseType: !8, size: 8, offset: 200)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !213, file: !214, line: 54, baseType: !16, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !213, file: !214, line: 55, baseType: !20, size: 32, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !213, file: !214, line: 56, baseType: !20, size: 32, offset: 352)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !213, file: !214, line: 57, baseType: !20, size: 32, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !213, file: !214, line: 58, baseType: !20, size: 32, offset: 416)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !213, file: !214, line: 60, baseType: !239, size: 640, offset: 448)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !42, line: 893, size: 640, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !330, !331, !447, !448}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !239, file: !42, line: 894, baseType: !16, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !239, file: !42, line: 895, baseType: !16, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !239, file: !42, line: 896, baseType: !16, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !239, file: !42, line: 897, baseType: !16, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !239, file: !42, line: 898, baseType: !16, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !239, file: !42, line: 899, baseType: !247, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !42, line: 875, size: 1600, elements: !249)
!249 = !{!250, !270, !286}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !248, file: !42, line: 876, baseType: !251, size: 448)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !42, line: 828, size: 448, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !269}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !251, file: !42, line: 829, baseType: !247, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !251, file: !42, line: 829, baseType: !8, size: 8, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !42, line: 829, baseType: !8, size: 8, offset: 72)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !251, file: !42, line: 829, baseType: !126, size: 16, offset: 80)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !251, file: !42, line: 829, baseType: !16, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !251, file: !42, line: 829, baseType: !247, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !251, file: !42, line: 829, baseType: !111, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !251, file: !42, line: 829, baseType: !261, size: 64, offset: 320)
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !42, line: 716, size: 64, elements: !262)
!262 = !{!263, !264, !265, !266, !267, !268}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !261, file: !42, line: 717, baseType: !13, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !261, file: !42, line: 718, baseType: !20, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !261, file: !42, line: 719, baseType: !152, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !261, file: !42, line: 720, baseType: !16, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !42, line: 721, baseType: !152, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !261, file: !42, line: 722, baseType: !247, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !251, file: !42, line: 829, baseType: !8, size: 8, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !248, file: !42, line: 877, baseType: !271, size: 640)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !42, line: 835, size: 640, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !271, file: !42, line: 836, baseType: !247, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !271, file: !42, line: 836, baseType: !8, size: 8, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !271, file: !42, line: 836, baseType: !8, size: 8, offset: 72)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !271, file: !42, line: 836, baseType: !126, size: 16, offset: 80)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !271, file: !42, line: 836, baseType: !16, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !42, line: 836, baseType: !247, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !271, file: !42, line: 836, baseType: !111, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !271, file: !42, line: 836, baseType: !261, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !271, file: !42, line: 836, baseType: !8, size: 8, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !271, file: !42, line: 836, baseType: !152, size: 64, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !271, file: !42, line: 837, baseType: !16, size: 64, offset: 512)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !271, file: !42, line: 838, baseType: !20, size: 32, offset: 576)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !42, line: 839, baseType: !20, size: 32, offset: 608)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !248, file: !42, line: 878, baseType: !287, size: 1600)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !42, line: 846, size: 1600, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !287, file: !42, line: 847, baseType: !247, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !42, line: 847, baseType: !8, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !42, line: 847, baseType: !8, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !287, file: !42, line: 847, baseType: !126, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !287, file: !42, line: 847, baseType: !16, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !42, line: 847, baseType: !247, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !287, file: !42, line: 847, baseType: !111, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !42, line: 847, baseType: !261, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !287, file: !42, line: 847, baseType: !8, size: 8, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !287, file: !42, line: 847, baseType: !247, size: 64, offset: 448)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !287, file: !42, line: 848, baseType: !247, size: 64, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !287, file: !42, line: 849, baseType: !152, size: 64, offset: 576)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !287, file: !42, line: 850, baseType: !8, size: 8, offset: 640)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !287, file: !42, line: 851, baseType: !152, size: 64, offset: 704)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !287, file: !42, line: 852, baseType: !152, size: 64, offset: 768)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !287, file: !42, line: 853, baseType: !152, size: 64, offset: 832)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !287, file: !42, line: 854, baseType: !306, size: 32, offset: 896)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 4)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !287, file: !42, line: 855, baseType: !20, size: 32, offset: 928)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !287, file: !42, line: 856, baseType: !20, size: 32, offset: 960)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !287, file: !42, line: 857, baseType: !20, size: 32, offset: 992)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !287, file: !42, line: 858, baseType: !20, size: 32, offset: 1024)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !287, file: !42, line: 859, baseType: !20, size: 32, offset: 1056)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !287, file: !42, line: 860, baseType: !20, size: 32, offset: 1088)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !287, file: !42, line: 861, baseType: !20, size: 32, offset: 1120)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !287, file: !42, line: 862, baseType: !20, size: 32, offset: 1152)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !287, file: !42, line: 863, baseType: !20, size: 32, offset: 1184)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !287, file: !42, line: 864, baseType: !20, size: 32, offset: 1216)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !287, file: !42, line: 865, baseType: !20, size: 32, offset: 1248)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !287, file: !42, line: 866, baseType: !20, size: 32, offset: 1280)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !287, file: !42, line: 867, baseType: !20, size: 32, offset: 1312)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !287, file: !42, line: 868, baseType: !126, size: 16, offset: 1344)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !287, file: !42, line: 869, baseType: !8, size: 8, offset: 1360)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !287, file: !42, line: 870, baseType: !8, size: 8, offset: 1368)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !287, file: !42, line: 871, baseType: !8, size: 8, offset: 1376)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !287, file: !42, line: 872, baseType: !327, size: 160, offset: 1384)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 20)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !239, file: !42, line: 900, baseType: !111, size: 64, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !239, file: !42, line: 901, baseType: !332, size: 64, offset: 448)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !42, line: 663, size: 640, elements: !334)
!334 = !{!335, !343, !356, !365, !374, !387, !401, !413, !425}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !333, file: !42, line: 664, baseType: !336, size: 128)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !42, line: 567, size: 128, elements: !337)
!337 = !{!338, !339, !340, !341, !342}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !42, line: 568, baseType: !17, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !42, line: 568, baseType: !8, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !42, line: 568, baseType: !8, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !42, line: 568, baseType: !126, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !42, line: 568, baseType: !126, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !333, file: !42, line: 665, baseType: !344, size: 384)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !42, line: 593, size: 384, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !42, line: 594, baseType: !17, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !344, file: !42, line: 594, baseType: !8, size: 8, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !42, line: 594, baseType: !8, size: 8, offset: 72)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !344, file: !42, line: 594, baseType: !126, size: 16, offset: 80)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !344, file: !42, line: 594, baseType: !126, size: 16, offset: 96)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !344, file: !42, line: 594, baseType: !126, size: 16, offset: 112)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !344, file: !42, line: 595, baseType: !247, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !344, file: !42, line: 596, baseType: !16, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !344, file: !42, line: 597, baseType: !16, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !344, file: !42, line: 598, baseType: !13, size: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !333, file: !42, line: 666, baseType: !357, size: 192)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !42, line: 573, size: 192, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !42, line: 574, baseType: !17, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !357, file: !42, line: 574, baseType: !8, size: 8, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !42, line: 574, baseType: !8, size: 8, offset: 72)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !357, file: !42, line: 574, baseType: !126, size: 16, offset: 80)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !357, file: !42, line: 574, baseType: !126, size: 16, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !357, file: !42, line: 574, baseType: !115, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !333, file: !42, line: 667, baseType: !366, size: 192)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !42, line: 604, size: 192, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !42, line: 605, baseType: !17, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !42, line: 605, baseType: !8, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !42, line: 605, baseType: !8, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !366, file: !42, line: 605, baseType: !126, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !42, line: 605, baseType: !126, size: 16, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !366, file: !42, line: 605, baseType: !111, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !333, file: !42, line: 668, baseType: !375, size: 448)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !42, line: 608, size: 448, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !385, !386}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !42, line: 609, baseType: !17, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !375, file: !42, line: 609, baseType: !8, size: 8, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !375, file: !42, line: 609, baseType: !8, size: 8, offset: 72)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !375, file: !42, line: 609, baseType: !126, size: 16, offset: 80)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !375, file: !42, line: 609, baseType: !126, size: 16, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !375, file: !42, line: 609, baseType: !20, size: 32, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !375, file: !42, line: 610, baseType: !247, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !375, file: !42, line: 611, baseType: !16, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !375, file: !42, line: 612, baseType: !16, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !375, file: !42, line: 613, baseType: !20, size: 32, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !333, file: !42, line: 669, baseType: !388, size: 512)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !42, line: 580, size: 512, elements: !389)
!389 = !{!390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !388, file: !42, line: 581, baseType: !17, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !388, file: !42, line: 581, baseType: !8, size: 8, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !42, line: 581, baseType: !8, size: 8, offset: 72)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !388, file: !42, line: 581, baseType: !126, size: 16, offset: 80)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !388, file: !42, line: 581, baseType: !126, size: 16, offset: 96)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !388, file: !42, line: 581, baseType: !20, size: 32, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !388, file: !42, line: 582, baseType: !115, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !388, file: !42, line: 583, baseType: !115, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !388, file: !42, line: 584, baseType: !212, size: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !388, file: !42, line: 585, baseType: !17, size: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !388, file: !42, line: 586, baseType: !20, size: 32, offset: 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !333, file: !42, line: 670, baseType: !402, size: 320)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !42, line: 620, size: 320, elements: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !402, file: !42, line: 621, baseType: !17, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !402, file: !42, line: 621, baseType: !8, size: 8, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !402, file: !42, line: 621, baseType: !8, size: 8, offset: 72)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !402, file: !42, line: 621, baseType: !126, size: 16, offset: 80)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !402, file: !42, line: 621, baseType: !126, size: 16, offset: 96)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !402, file: !42, line: 621, baseType: !8, size: 8, offset: 112)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !402, file: !42, line: 622, baseType: !212, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !402, file: !42, line: 623, baseType: !115, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !402, file: !42, line: 624, baseType: !13, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !333, file: !42, line: 671, baseType: !414, size: 640)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !42, line: 631, size: 640, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !414, file: !42, line: 632, baseType: !17, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !414, file: !42, line: 632, baseType: !8, size: 8, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !42, line: 632, baseType: !8, size: 8, offset: 72)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !414, file: !42, line: 632, baseType: !126, size: 16, offset: 80)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !414, file: !42, line: 632, baseType: !126, size: 16, offset: 96)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !414, file: !42, line: 633, baseType: !422, size: 512, offset: 128)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 512, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 8)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !333, file: !42, line: 672, baseType: !426, size: 320)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !42, line: 654, size: 320, elements: !427)
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !426, file: !42, line: 655, baseType: !17, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !426, file: !42, line: 655, baseType: !8, size: 8, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !42, line: 655, baseType: !8, size: 8, offset: 72)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !426, file: !42, line: 655, baseType: !126, size: 16, offset: 80)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !426, file: !42, line: 655, baseType: !126, size: 16, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !426, file: !42, line: 655, baseType: !8, size: 8, offset: 112)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !426, file: !42, line: 656, baseType: !111, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !426, file: !42, line: 657, baseType: !115, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !426, file: !42, line: 658, baseType: !437, size: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !42, line: 645, size: 128, elements: !439)
!439 = !{!440, !446}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !438, file: !42, line: 646, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !445, !20, !17}
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !17)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !438, file: !42, line: 647, baseType: !17, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !239, file: !42, line: 902, baseType: !247, size: 64, offset: 512)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !239, file: !42, line: 903, baseType: !20, size: 32, offset: 576)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !213, file: !214, line: 61, baseType: !20, size: 32, offset: 1088)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !213, file: !214, line: 62, baseType: !20, size: 32, offset: 1120)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !213, file: !214, line: 63, baseType: !126, size: 16, offset: 1152)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !213, file: !214, line: 64, baseType: !8, size: 8, offset: 1168)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !213, file: !214, line: 66, baseType: !454, size: 2688, offset: 1216)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 2688, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 7)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !213, file: !214, line: 67, baseType: !458, size: 3072, offset: 3904)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 3072, elements: !423)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !213, file: !214, line: 68, baseType: !460, size: 576, offset: 6976)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 576, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 9)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !213, file: !214, line: 69, baseType: !177, size: 64, offset: 7552)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !213, file: !214, line: 71, baseType: !16, size: 64, offset: 7616)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !213, file: !214, line: 72, baseType: !177, size: 64, offset: 7680)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !213, file: !214, line: 73, baseType: !332, size: 64, offset: 7744)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !213, file: !214, line: 74, baseType: !111, size: 64, offset: 7808)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !213, file: !214, line: 75, baseType: !115, size: 64, offset: 7872)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !213, file: !214, line: 76, baseType: !111, size: 64, offset: 7936)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !213, file: !214, line: 77, baseType: !247, size: 64, offset: 8000)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !213, file: !214, line: 78, baseType: !115, size: 64, offset: 8064)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !213, file: !214, line: 79, baseType: !111, size: 64, offset: 8128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !213, file: !214, line: 80, baseType: !152, size: 64, offset: 8192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !213, file: !214, line: 81, baseType: !247, size: 64, offset: 8256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !213, file: !214, line: 82, baseType: !476, size: 64, offset: 8320)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !42, line: 702, size: 128, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !478, file: !42, line: 706, baseType: !20, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !478, file: !42, line: 707, baseType: !20, size: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !42, line: 708, baseType: !126, size: 16, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !478, file: !42, line: 709, baseType: !8, size: 8, offset: 80)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !478, file: !42, line: 710, baseType: !8, size: 8, offset: 88)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !42, line: 711, baseType: !8, size: 8, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !213, file: !214, line: 83, baseType: !247, size: 64, offset: 8384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !213, file: !214, line: 84, baseType: !115, size: 64, offset: 8448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !213, file: !214, line: 85, baseType: !332, size: 64, offset: 8512)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !213, file: !214, line: 86, baseType: !115, size: 64, offset: 8576)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !213, file: !214, line: 87, baseType: !332, size: 64, offset: 8640)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !213, file: !214, line: 88, baseType: !247, size: 64, offset: 8704)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !213, file: !214, line: 89, baseType: !247, size: 64, offset: 8768)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !213, file: !214, line: 90, baseType: !494, size: 64, offset: 8832)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !213, file: !214, line: 91, baseType: !496, size: 64, offset: 8896)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !42, line: 637, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!19, !212, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !213, file: !214, line: 92, baseType: !502, size: 64, offset: 8960)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !42, line: 641, baseType: !209)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !205, file: !117, line: 152, baseType: !115, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !191, file: !117, line: 155, baseType: !20, size: 32, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !191, file: !117, line: 156, baseType: !224, size: 16, offset: 416)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !191, file: !117, line: 157, baseType: !8, size: 8, offset: 432)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !116, file: !117, line: 375, baseType: !508, size: 576)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !117, line: 122, size: 576, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !508, file: !117, line: 123, baseType: !115, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !508, file: !117, line: 123, baseType: !8, size: 8, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !508, file: !117, line: 123, baseType: !8, size: 8, offset: 72)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !508, file: !117, line: 123, baseType: !126, size: 16, offset: 80)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !117, line: 123, baseType: !8, size: 8, offset: 96)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !508, file: !117, line: 123, baseType: !8, size: 8, offset: 104)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !508, file: !117, line: 124, baseType: !126, size: 16, offset: 112)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !508, file: !117, line: 125, baseType: !17, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !508, file: !117, line: 126, baseType: !13, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !508, file: !117, line: 127, baseType: !494, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !508, file: !117, line: 128, baseType: !115, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !508, file: !117, line: 129, baseType: !115, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !117, line: 130, baseType: !111, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !508, file: !117, line: 131, baseType: !8, size: 8, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !116, file: !117, line: 376, baseType: !525, size: 448)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !117, line: 134, size: 448, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !538}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !525, file: !117, line: 135, baseType: !115, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !525, file: !117, line: 135, baseType: !8, size: 8, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !525, file: !117, line: 135, baseType: !8, size: 8, offset: 72)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !525, file: !117, line: 135, baseType: !126, size: 16, offset: 80)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !525, file: !117, line: 135, baseType: !8, size: 8, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !525, file: !117, line: 135, baseType: !8, size: 8, offset: 104)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !525, file: !117, line: 136, baseType: !111, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !525, file: !117, line: 137, baseType: !115, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !525, file: !117, line: 138, baseType: !115, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !525, file: !117, line: 139, baseType: !537, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !13)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !525, file: !117, line: 140, baseType: !20, size: 32, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !116, file: !117, line: 377, baseType: !540, size: 320)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !117, line: 184, size: 320, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547, !551}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !540, file: !117, line: 185, baseType: !115, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !540, file: !117, line: 185, baseType: !8, size: 8, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !540, file: !117, line: 185, baseType: !8, size: 8, offset: 72)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !540, file: !117, line: 185, baseType: !126, size: 16, offset: 80)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !117, line: 185, baseType: !8, size: 8, offset: 96)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !540, file: !117, line: 185, baseType: !548, size: 128, offset: 128)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 128, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 2)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !540, file: !117, line: 185, baseType: !115, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !116, file: !117, line: 378, baseType: !553, size: 384)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !117, line: 187, size: 384, elements: !554)
!554 = !{!555, !556, !557, !558, !559, !560, !561, !562}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !553, file: !117, line: 188, baseType: !115, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !553, file: !117, line: 188, baseType: !8, size: 8, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !553, file: !117, line: 188, baseType: !8, size: 8, offset: 72)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !553, file: !117, line: 188, baseType: !126, size: 16, offset: 80)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !553, file: !117, line: 188, baseType: !8, size: 8, offset: 96)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !553, file: !117, line: 189, baseType: !548, size: 128, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !553, file: !117, line: 189, baseType: !115, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !553, file: !117, line: 189, baseType: !563, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !42, line: 480, size: 576, elements: !565)
!565 = !{!566, !567, !568, !569, !577, !588, !589, !590, !591, !592, !593, !594}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !564, file: !42, line: 481, baseType: !111, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !564, file: !42, line: 482, baseType: !563, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !564, file: !42, line: 483, baseType: !563, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !564, file: !42, line: 484, baseType: !570, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !42, line: 497, size: 256, elements: !572)
!572 = !{!573, !574, !575, !576}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !571, file: !42, line: 498, baseType: !570, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !571, file: !42, line: 499, baseType: !570, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !571, file: !42, line: 500, baseType: !563, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !571, file: !42, line: 501, baseType: !20, size: 32, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !564, file: !42, line: 485, baseType: !578, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !42, line: 466, size: 320, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !579, file: !42, line: 467, baseType: !41, size: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !579, file: !42, line: 468, baseType: !41, size: 128, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !579, file: !42, line: 469, baseType: !126, size: 16, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !579, file: !42, line: 470, baseType: !8, size: 8, offset: 272)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !579, file: !42, line: 471, baseType: !8, size: 8, offset: 280)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !579, file: !42, line: 472, baseType: !8, size: 8, offset: 288)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !579, file: !42, line: 473, baseType: !8, size: 8, offset: 296)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !564, file: !42, line: 486, baseType: !104, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !564, file: !42, line: 487, baseType: !13, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !564, file: !42, line: 488, baseType: !20, size: 32, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !564, file: !42, line: 489, baseType: !126, size: 16, offset: 480)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !564, file: !42, line: 490, baseType: !126, size: 16, offset: 496)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !564, file: !42, line: 491, baseType: !8, size: 8, offset: 512)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !564, file: !42, line: 492, baseType: !8, size: 8, offset: 520)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !116, file: !117, line: 379, baseType: !596, size: 384)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !117, line: 192, size: 384, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !596, file: !117, line: 193, baseType: !115, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !596, file: !117, line: 193, baseType: !8, size: 8, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !596, file: !117, line: 193, baseType: !8, size: 8, offset: 72)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !596, file: !117, line: 193, baseType: !126, size: 16, offset: 80)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !117, line: 193, baseType: !8, size: 8, offset: 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !596, file: !117, line: 193, baseType: !548, size: 128, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !596, file: !117, line: 193, baseType: !115, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !596, file: !117, line: 193, baseType: !20, size: 32, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !596, file: !117, line: 194, baseType: !20, size: 32, offset: 352)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !116, file: !117, line: 380, baseType: !608, size: 384)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !117, line: 197, size: 384, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !608, file: !117, line: 198, baseType: !115, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !608, file: !117, line: 198, baseType: !8, size: 8, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !117, line: 198, baseType: !8, size: 8, offset: 72)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !608, file: !117, line: 198, baseType: !126, size: 16, offset: 80)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !117, line: 198, baseType: !8, size: 8, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !608, file: !117, line: 200, baseType: !8, size: 8, offset: 104)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !608, file: !117, line: 201, baseType: !8, size: 8, offset: 112)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !608, file: !117, line: 202, baseType: !548, size: 128, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !608, file: !117, line: 202, baseType: !115, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !608, file: !117, line: 202, baseType: !23, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !116, file: !117, line: 381, baseType: !621, size: 320)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !117, line: 205, size: 320, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !621, file: !117, line: 206, baseType: !115, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !621, file: !117, line: 206, baseType: !8, size: 8, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !621, file: !117, line: 206, baseType: !8, size: 8, offset: 72)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !621, file: !117, line: 206, baseType: !126, size: 16, offset: 80)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !117, line: 206, baseType: !8, size: 8, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !621, file: !117, line: 206, baseType: !548, size: 128, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !621, file: !117, line: 206, baseType: !115, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !116, file: !117, line: 382, baseType: !631, size: 384)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !117, line: 233, size: 384, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !631, file: !117, line: 234, baseType: !115, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !631, file: !117, line: 234, baseType: !8, size: 8, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !631, file: !117, line: 234, baseType: !8, size: 8, offset: 72)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !631, file: !117, line: 234, baseType: !126, size: 16, offset: 80)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !117, line: 234, baseType: !8, size: 8, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !631, file: !117, line: 234, baseType: !8, size: 8, offset: 104)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !631, file: !117, line: 234, baseType: !8, size: 8, offset: 112)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !631, file: !117, line: 234, baseType: !8, size: 8, offset: 120)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !631, file: !117, line: 234, baseType: !111, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !631, file: !117, line: 234, baseType: !20, size: 32, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !631, file: !117, line: 234, baseType: !20, size: 32, offset: 224)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !631, file: !117, line: 234, baseType: !20, size: 32, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !631, file: !117, line: 234, baseType: !8, size: 8, offset: 288)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !631, file: !117, line: 234, baseType: !8, size: 8, offset: 296)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !631, file: !117, line: 234, baseType: !115, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !116, file: !117, line: 383, baseType: !649, size: 576)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !117, line: 237, size: 576, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !649, file: !117, line: 238, baseType: !115, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !649, file: !117, line: 238, baseType: !8, size: 8, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !649, file: !117, line: 238, baseType: !8, size: 8, offset: 72)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !649, file: !117, line: 238, baseType: !126, size: 16, offset: 80)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !117, line: 238, baseType: !8, size: 8, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !649, file: !117, line: 238, baseType: !8, size: 8, offset: 104)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !649, file: !117, line: 238, baseType: !8, size: 8, offset: 112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !649, file: !117, line: 238, baseType: !8, size: 8, offset: 120)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !649, file: !117, line: 238, baseType: !111, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !649, file: !117, line: 238, baseType: !20, size: 32, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !649, file: !117, line: 238, baseType: !20, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !649, file: !117, line: 238, baseType: !20, size: 32, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !649, file: !117, line: 238, baseType: !8, size: 8, offset: 288)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !649, file: !117, line: 238, baseType: !8, size: 8, offset: 296)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !649, file: !117, line: 238, baseType: !126, size: 16, offset: 304)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !649, file: !117, line: 239, baseType: !115, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !649, file: !117, line: 240, baseType: !16, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !649, file: !117, line: 241, baseType: !126, size: 16, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !649, file: !117, line: 242, baseType: !16, size: 64, offset: 512)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !116, file: !117, line: 384, baseType: !671, size: 384)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !117, line: 262, size: 384, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !117, line: 263, baseType: !115, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !117, line: 263, baseType: !8, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !117, line: 263, baseType: !8, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !117, line: 263, baseType: !126, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !117, line: 263, baseType: !8, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !117, line: 263, baseType: !8, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !117, line: 263, baseType: !8, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !117, line: 263, baseType: !8, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !117, line: 263, baseType: !111, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !117, line: 263, baseType: !20, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !117, line: 263, baseType: !20, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !117, line: 263, baseType: !20, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !117, line: 263, baseType: !8, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !117, line: 263, baseType: !8, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !671, file: !117, line: 263, baseType: !8, size: 8, offset: 304)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !671, file: !117, line: 264, baseType: !115, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !116, file: !117, line: 385, baseType: !690, size: 448)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !117, line: 245, size: 448, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !117, line: 246, baseType: !115, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !117, line: 246, baseType: !8, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !117, line: 246, baseType: !8, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !117, line: 246, baseType: !126, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !117, line: 246, baseType: !8, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !690, file: !117, line: 246, baseType: !8, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !690, file: !117, line: 246, baseType: !8, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !690, file: !117, line: 246, baseType: !8, size: 8, offset: 120)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !117, line: 246, baseType: !111, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !690, file: !117, line: 246, baseType: !20, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !690, file: !117, line: 246, baseType: !20, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !690, file: !117, line: 246, baseType: !20, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !690, file: !117, line: 246, baseType: !8, size: 8, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !690, file: !117, line: 246, baseType: !8, size: 8, offset: 296)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !690, file: !117, line: 246, baseType: !115, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !690, file: !117, line: 247, baseType: !115, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !116, file: !117, line: 386, baseType: !709, size: 448)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !117, line: 250, size: 448, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !117, line: 251, baseType: !115, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !117, line: 251, baseType: !8, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !117, line: 251, baseType: !8, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !117, line: 251, baseType: !126, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !117, line: 251, baseType: !8, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !709, file: !117, line: 251, baseType: !8, size: 8, offset: 104)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !709, file: !117, line: 251, baseType: !8, size: 8, offset: 112)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !709, file: !117, line: 251, baseType: !8, size: 8, offset: 120)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !117, line: 251, baseType: !111, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !709, file: !117, line: 251, baseType: !20, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !709, file: !117, line: 251, baseType: !20, size: 32, offset: 224)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !709, file: !117, line: 251, baseType: !20, size: 32, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !709, file: !117, line: 251, baseType: !8, size: 8, offset: 288)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !709, file: !117, line: 251, baseType: !8, size: 8, offset: 296)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !709, file: !117, line: 256, baseType: !115, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !709, file: !117, line: 257, baseType: !115, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !116, file: !117, line: 387, baseType: !728, size: 512)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !117, line: 273, size: 512, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !738, !739}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !728, file: !117, line: 274, baseType: !115, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !728, file: !117, line: 274, baseType: !8, size: 8, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !728, file: !117, line: 274, baseType: !8, size: 8, offset: 72)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !728, file: !117, line: 274, baseType: !126, size: 16, offset: 80)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !117, line: 274, baseType: !8, size: 8, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !728, file: !117, line: 274, baseType: !111, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !728, file: !117, line: 275, baseType: !20, size: 32, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !728, file: !117, line: 276, baseType: !441, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !728, file: !117, line: 277, baseType: !17, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !728, file: !117, line: 278, baseType: !548, size: 128, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !116, file: !117, line: 388, baseType: !741, size: 512)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !117, line: 281, size: 512, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !755, !756, !757, !763, !764}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !741, file: !117, line: 282, baseType: !115, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !741, file: !117, line: 282, baseType: !8, size: 8, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !741, file: !117, line: 282, baseType: !8, size: 8, offset: 72)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !741, file: !117, line: 282, baseType: !126, size: 16, offset: 80)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !741, file: !117, line: 282, baseType: !8, size: 8, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !741, file: !117, line: 282, baseType: !8, size: 8, offset: 104)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !741, file: !117, line: 283, baseType: !8, size: 8, offset: 112)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !741, file: !117, line: 284, baseType: !751, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!19, !20, !537, !20, !39, !17, !17}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !741, file: !117, line: 285, baseType: !111, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !741, file: !117, line: 286, baseType: !17, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !741, file: !117, line: 287, baseType: !758, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!19, !445, !20, !17, !762}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !741, file: !117, line: 288, baseType: !115, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !741, file: !117, line: 289, baseType: !115, size: 64, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !116, file: !117, line: 389, baseType: !766, size: 512)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !117, line: 307, size: 512, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !117, line: 308, baseType: !115, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !117, line: 308, baseType: !8, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !117, line: 308, baseType: !8, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !117, line: 308, baseType: !126, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !117, line: 308, baseType: !8, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !766, file: !117, line: 308, baseType: !8, size: 8, offset: 104)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !766, file: !117, line: 309, baseType: !8, size: 8, offset: 112)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !766, file: !117, line: 310, baseType: !8, size: 8, offset: 120)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !766, file: !117, line: 311, baseType: !17, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !766, file: !117, line: 312, baseType: !111, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !766, file: !117, line: 313, baseType: !177, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !766, file: !117, line: 314, baseType: !16, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !766, file: !117, line: 315, baseType: !16, size: 64, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !766, file: !117, line: 316, baseType: !20, size: 32, offset: 448)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !116, file: !117, line: 390, baseType: !783, size: 448)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !117, line: 340, size: 448, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793, !794}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !783, file: !117, line: 341, baseType: !115, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !783, file: !117, line: 341, baseType: !8, size: 8, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !783, file: !117, line: 341, baseType: !8, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !783, file: !117, line: 341, baseType: !126, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !117, line: 341, baseType: !8, size: 8, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !783, file: !117, line: 341, baseType: !111, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !783, file: !117, line: 342, baseType: !111, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !783, file: !117, line: 343, baseType: !17, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !783, file: !117, line: 344, baseType: !16, size: 64, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !783, file: !117, line: 345, baseType: !20, size: 32, offset: 384)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !116, file: !117, line: 391, baseType: !796, size: 256)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !117, line: 350, size: 256, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803, !808}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !796, file: !117, line: 351, baseType: !115, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !796, file: !117, line: 351, baseType: !8, size: 8, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !796, file: !117, line: 351, baseType: !8, size: 8, offset: 72)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !796, file: !117, line: 351, baseType: !126, size: 16, offset: 80)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !117, line: 351, baseType: !8, size: 8, offset: 96)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !796, file: !117, line: 351, baseType: !804, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !445, !17}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !796, file: !117, line: 352, baseType: !17, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !116, file: !117, line: 392, baseType: !810, size: 192)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !117, line: 357, size: 192, elements: !811)
!811 = !{!812, !813, !814, !815, !816, !817}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !810, file: !117, line: 358, baseType: !115, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !810, file: !117, line: 358, baseType: !8, size: 8, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !810, file: !117, line: 358, baseType: !8, size: 8, offset: 72)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !810, file: !117, line: 358, baseType: !126, size: 16, offset: 80)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !810, file: !117, line: 358, baseType: !8, size: 8, offset: 96)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !810, file: !117, line: 358, baseType: !115, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !116, file: !117, line: 399, baseType: !112, size: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !112, file: !42, line: 135, baseType: !8, size: 8, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !42, line: 136, baseType: !8, size: 8, offset: 72)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !42, line: 137, baseType: !126, size: 16, offset: 80)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !42, line: 138, baseType: !823, size: 32, offset: 96)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !824, line: 327, size: 32, elements: !825)
!824 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !823, file: !824, line: 328, baseType: !20, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !823, file: !824, line: 329, baseType: !306, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !112, file: !42, line: 139, baseType: !111, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !112, file: !42, line: 140, baseType: !111, size: 64, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !112, file: !42, line: 141, baseType: !111, size: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !112, file: !42, line: 142, baseType: !224, size: 16, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !108, file: !42, line: 440, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !42, line: 419, size: 256, elements: !835)
!835 = !{!836, !841, !842, !843, !844}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !834, file: !42, line: 420, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!20, !445, !20, !17}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !834, file: !42, line: 421, baseType: !17, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !834, file: !42, line: 422, baseType: !111, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !834, file: !42, line: 423, baseType: !8, size: 8, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !834, file: !42, line: 424, baseType: !8, size: 8, offset: 200)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !108, file: !42, line: 441, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !42, line: 429, size: 128, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !847, file: !42, line: 430, baseType: !111, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !847, file: !42, line: 431, baseType: !846, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !105, file: !42, line: 450, baseType: !578, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !42, line: 451, baseType: !8, size: 8, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !105, file: !42, line: 452, baseType: !8, size: 8, offset: 136)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !105, file: !42, line: 453, baseType: !8, size: 8, offset: 144)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !105, file: !42, line: 454, baseType: !8, size: 8, offset: 152)
!856 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !101, file: !3, line: 110, type: !104)
!857 = !DILocation(line: 110, column: 62, scope: !101)
!858 = !DILocation(line: 114, column: 4, scope: !101)
!859 = !DILocation(line: 114, column: 20, scope: !101)
!860 = !DILocation(line: 115, column: 4, scope: !101)
!861 = !DILocation(line: 115, column: 20, scope: !101)
!862 = !DILocation(line: 115, column: 35, scope: !101)
!863 = !DILocation(line: 114, column: 31, scope: !101)
!864 = !DILocation(line: 113, column: 17, scope: !101)
!865 = !DILocation(line: 113, column: 2, scope: !101)
!866 = distinct !DISubprogram(name: "acpi_hw_low_set_gpe", scope: !3, file: !3, line: 134, type: !867, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!867 = !DISubroutineType(types: !868)
!868 = !{!19, !104, !20}
!869 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !866, file: !3, line: 134, type: !104)
!870 = !DILocation(line: 134, column: 49, scope: !866)
!871 = !DILocalVariable(name: "action", arg: 2, scope: !866, file: !3, line: 134, type: !20)
!872 = !DILocation(line: 134, column: 69, scope: !866)
!873 = !DILocalVariable(name: "gpe_register_info", scope: !866, file: !3, line: 136, type: !578)
!874 = !DILocation(line: 136, column: 33, scope: !866)
!875 = !DILocalVariable(name: "status", scope: !866, file: !3, line: 137, type: !19)
!876 = !DILocation(line: 137, column: 14, scope: !866)
!877 = !DILocalVariable(name: "enable_mask", scope: !866, file: !3, line: 138, type: !13)
!878 = !DILocation(line: 138, column: 6, scope: !866)
!879 = !DILocalVariable(name: "register_bit", scope: !866, file: !3, line: 139, type: !20)
!880 = !DILocation(line: 139, column: 6, scope: !866)
!881 = !DILocation(line: 145, column: 22, scope: !866)
!882 = !DILocation(line: 145, column: 38, scope: !866)
!883 = !DILocation(line: 145, column: 20, scope: !866)
!884 = !DILocation(line: 146, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !866, file: !3, line: 146, column: 6)
!886 = !DILocation(line: 146, column: 6, scope: !866)
!887 = !DILocation(line: 147, column: 3, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !3, line: 146, column: 26)
!889 = !DILocation(line: 153, column: 8, scope: !866)
!890 = !DILocation(line: 153, column: 27, scope: !866)
!891 = !DILocation(line: 152, column: 11, scope: !866)
!892 = !DILocation(line: 152, column: 9, scope: !866)
!893 = !DILocation(line: 154, column: 6, scope: !894)
!894 = distinct !DILexicalBlock(scope: !866, file: !3, line: 154, column: 6)
!895 = !DILocation(line: 154, column: 6, scope: !866)
!896 = !DILocation(line: 155, column: 11, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !3, line: 154, column: 28)
!898 = !DILocation(line: 155, column: 3, scope: !897)
!899 = !DILocation(line: 160, column: 46, scope: !866)
!900 = !DILocation(line: 160, column: 17, scope: !866)
!901 = !DILocation(line: 160, column: 15, scope: !866)
!902 = !DILocation(line: 161, column: 10, scope: !866)
!903 = !DILocation(line: 161, column: 2, scope: !866)
!904 = !DILocation(line: 166, column: 9, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 166, column: 7)
!906 = distinct !DILexicalBlock(scope: !866, file: !3, line: 161, column: 18)
!907 = !DILocation(line: 166, column: 24, scope: !905)
!908 = !DILocation(line: 166, column: 43, scope: !905)
!909 = !DILocation(line: 166, column: 22, scope: !905)
!910 = !DILocation(line: 166, column: 7, scope: !906)
!911 = !DILocation(line: 167, column: 4, scope: !912)
!912 = distinct !DILexicalBlock(scope: !905, file: !3, line: 166, column: 57)
!913 = !DILocation(line: 166, column: 54, scope: !905)
!914 = !DILocation(line: 174, column: 3, scope: !906)
!915 = !DILocation(line: 175, column: 3, scope: !906)
!916 = !DILocation(line: 179, column: 3, scope: !906)
!917 = !DILocation(line: 180, column: 3, scope: !906)
!918 = !DILocation(line: 184, column: 3, scope: !906)
!919 = !DILocation(line: 185, column: 3, scope: !906)
!920 = !DILocation(line: 188, column: 8, scope: !921)
!921 = distinct !DILexicalBlock(scope: !866, file: !3, line: 188, column: 6)
!922 = !DILocation(line: 188, column: 23, scope: !921)
!923 = !DILocation(line: 188, column: 42, scope: !921)
!924 = !DILocation(line: 188, column: 21, scope: !921)
!925 = !DILocation(line: 188, column: 6, scope: !866)
!926 = !DILocation(line: 192, column: 30, scope: !927)
!927 = distinct !DILexicalBlock(scope: !921, file: !3, line: 188, column: 57)
!928 = !DILocation(line: 193, column: 10, scope: !927)
!929 = !DILocation(line: 193, column: 29, scope: !927)
!930 = !DILocation(line: 192, column: 12, scope: !927)
!931 = !DILocation(line: 192, column: 10, scope: !927)
!932 = !DILocation(line: 194, column: 2, scope: !927)
!933 = !DILocation(line: 195, column: 10, scope: !866)
!934 = !DILocation(line: 195, column: 2, scope: !866)
!935 = !DILocation(line: 196, column: 1, scope: !866)
!936 = distinct !DISubprogram(name: "acpi_hw_clear_gpe", scope: !3, file: !3, line: 210, type: !937, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!937 = !DISubroutineType(types: !938)
!938 = !{!19, !104}
!939 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !936, file: !3, line: 210, type: !104)
!940 = !DILocation(line: 210, column: 59, scope: !936)
!941 = !DILocalVariable(name: "gpe_register_info", scope: !936, file: !3, line: 212, type: !578)
!942 = !DILocation(line: 212, column: 33, scope: !936)
!943 = !DILocalVariable(name: "status", scope: !936, file: !3, line: 213, type: !19)
!944 = !DILocation(line: 213, column: 14, scope: !936)
!945 = !DILocalVariable(name: "register_bit", scope: !936, file: !3, line: 214, type: !20)
!946 = !DILocation(line: 214, column: 6, scope: !936)
!947 = !DILocation(line: 220, column: 22, scope: !936)
!948 = !DILocation(line: 220, column: 38, scope: !936)
!949 = !DILocation(line: 220, column: 20, scope: !936)
!950 = !DILocation(line: 221, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !936, file: !3, line: 221, column: 6)
!952 = !DILocation(line: 221, column: 6, scope: !936)
!953 = !DILocation(line: 222, column: 3, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !3, line: 221, column: 26)
!955 = !DILocation(line: 229, column: 46, scope: !936)
!956 = !DILocation(line: 229, column: 17, scope: !936)
!957 = !DILocation(line: 229, column: 15, scope: !936)
!958 = !DILocation(line: 231, column: 29, scope: !936)
!959 = !DILocation(line: 232, column: 9, scope: !936)
!960 = !DILocation(line: 232, column: 28, scope: !936)
!961 = !DILocation(line: 231, column: 11, scope: !936)
!962 = !DILocation(line: 231, column: 9, scope: !936)
!963 = !DILocation(line: 233, column: 10, scope: !936)
!964 = !DILocation(line: 233, column: 2, scope: !936)
!965 = !DILocation(line: 234, column: 1, scope: !936)
!966 = distinct !DISubprogram(name: "acpi_hw_get_gpe_status", scope: !3, file: !3, line: 250, type: !967, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!967 = !DISubroutineType(types: !968)
!968 = !{!19, !104, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!970 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !966, file: !3, line: 250, type: !104)
!971 = !DILocation(line: 250, column: 52, scope: !966)
!972 = !DILocalVariable(name: "event_status", arg: 2, scope: !966, file: !3, line: 251, type: !969)
!973 = !DILocation(line: 251, column: 29, scope: !966)
!974 = !DILocalVariable(name: "in_byte", scope: !966, file: !3, line: 253, type: !13)
!975 = !DILocation(line: 253, column: 6, scope: !966)
!976 = !DILocalVariable(name: "register_bit", scope: !966, file: !3, line: 254, type: !20)
!977 = !DILocation(line: 254, column: 6, scope: !966)
!978 = !DILocalVariable(name: "gpe_register_info", scope: !966, file: !3, line: 255, type: !578)
!979 = !DILocation(line: 255, column: 33, scope: !966)
!980 = !DILocalVariable(name: "local_event_status", scope: !966, file: !3, line: 256, type: !24)
!981 = !DILocation(line: 256, column: 20, scope: !966)
!982 = !DILocalVariable(name: "status", scope: !966, file: !3, line: 257, type: !19)
!983 = !DILocation(line: 257, column: 14, scope: !966)
!984 = !DILocation(line: 261, column: 7, scope: !985)
!985 = distinct !DILexicalBlock(scope: !966, file: !3, line: 261, column: 6)
!986 = !DILocation(line: 261, column: 6, scope: !966)
!987 = !DILocation(line: 262, column: 3, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !3, line: 261, column: 21)
!989 = !DILocation(line: 267, column: 6, scope: !990)
!990 = distinct !DILexicalBlock(scope: !966, file: !3, line: 267, column: 6)
!991 = !DILocation(line: 267, column: 52, scope: !990)
!992 = !DILocation(line: 267, column: 6, scope: !966)
!993 = !DILocation(line: 269, column: 22, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !3, line: 268, column: 30)
!995 = !DILocation(line: 270, column: 2, scope: !994)
!996 = !DILocation(line: 274, column: 22, scope: !966)
!997 = !DILocation(line: 274, column: 38, scope: !966)
!998 = !DILocation(line: 274, column: 20, scope: !966)
!999 = !DILocation(line: 278, column: 46, scope: !966)
!1000 = !DILocation(line: 278, column: 17, scope: !966)
!1001 = !DILocation(line: 278, column: 15, scope: !966)
!1002 = !DILocation(line: 282, column: 6, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !966, file: !3, line: 282, column: 6)
!1004 = !DILocation(line: 282, column: 21, scope: !1003)
!1005 = !DILocation(line: 282, column: 40, scope: !1003)
!1006 = !DILocation(line: 282, column: 19, scope: !1003)
!1007 = !DILocation(line: 282, column: 6, scope: !966)
!1008 = !DILocation(line: 283, column: 22, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 282, column: 56)
!1010 = !DILocation(line: 284, column: 2, scope: !1009)
!1011 = !DILocation(line: 288, column: 6, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !966, file: !3, line: 288, column: 6)
!1013 = !DILocation(line: 288, column: 21, scope: !1012)
!1014 = !DILocation(line: 288, column: 40, scope: !1012)
!1015 = !DILocation(line: 288, column: 19, scope: !1012)
!1016 = !DILocation(line: 288, column: 6, scope: !966)
!1017 = !DILocation(line: 289, column: 22, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 288, column: 54)
!1019 = !DILocation(line: 290, column: 2, scope: !1018)
!1020 = !DILocation(line: 294, column: 6, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !966, file: !3, line: 294, column: 6)
!1022 = !DILocation(line: 294, column: 21, scope: !1021)
!1023 = !DILocation(line: 294, column: 40, scope: !1021)
!1024 = !DILocation(line: 294, column: 19, scope: !1021)
!1025 = !DILocation(line: 294, column: 6, scope: !966)
!1026 = !DILocation(line: 295, column: 22, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 294, column: 57)
!1028 = !DILocation(line: 296, column: 2, scope: !1027)
!1029 = !DILocation(line: 300, column: 39, scope: !966)
!1030 = !DILocation(line: 300, column: 58, scope: !966)
!1031 = !DILocation(line: 300, column: 11, scope: !966)
!1032 = !DILocation(line: 300, column: 9, scope: !966)
!1033 = !DILocation(line: 301, column: 6, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !966, file: !3, line: 301, column: 6)
!1035 = !DILocation(line: 301, column: 6, scope: !966)
!1036 = !DILocation(line: 302, column: 11, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 301, column: 28)
!1038 = !DILocation(line: 302, column: 3, scope: !1037)
!1039 = !DILocation(line: 305, column: 6, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !966, file: !3, line: 305, column: 6)
!1041 = !DILocation(line: 305, column: 21, scope: !1040)
!1042 = !DILocation(line: 305, column: 19, scope: !1040)
!1043 = !DILocation(line: 305, column: 6, scope: !966)
!1044 = !DILocation(line: 306, column: 22, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 305, column: 30)
!1046 = !DILocation(line: 307, column: 2, scope: !1045)
!1047 = !DILocation(line: 311, column: 39, scope: !966)
!1048 = !DILocation(line: 311, column: 58, scope: !966)
!1049 = !DILocation(line: 311, column: 11, scope: !966)
!1050 = !DILocation(line: 311, column: 9, scope: !966)
!1051 = !DILocation(line: 312, column: 6, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !966, file: !3, line: 312, column: 6)
!1053 = !DILocation(line: 312, column: 6, scope: !966)
!1054 = !DILocation(line: 313, column: 11, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 312, column: 28)
!1056 = !DILocation(line: 313, column: 3, scope: !1055)
!1057 = !DILocation(line: 316, column: 6, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !966, file: !3, line: 316, column: 6)
!1059 = !DILocation(line: 316, column: 21, scope: !1058)
!1060 = !DILocation(line: 316, column: 19, scope: !1058)
!1061 = !DILocation(line: 316, column: 6, scope: !966)
!1062 = !DILocation(line: 317, column: 22, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 316, column: 30)
!1064 = !DILocation(line: 318, column: 2, scope: !1063)
!1065 = !DILocation(line: 322, column: 20, scope: !966)
!1066 = !DILocation(line: 322, column: 4, scope: !966)
!1067 = !DILocation(line: 322, column: 18, scope: !966)
!1068 = !DILocation(line: 323, column: 2, scope: !966)
!1069 = !DILocation(line: 324, column: 1, scope: !966)
!1070 = distinct !DISubprogram(name: "acpi_hw_disable_gpe_block", scope: !3, file: !3, line: 366, type: !1071, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!19, !570, !563, !17}
!1073 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !1070, file: !3, line: 366, type: !570)
!1074 = !DILocation(line: 366, column: 55, scope: !1070)
!1075 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1070, file: !3, line: 367, type: !563)
!1076 = !DILocation(line: 367, column: 34, scope: !1070)
!1077 = !DILocalVariable(name: "context", arg: 3, scope: !1070, file: !3, line: 367, type: !17)
!1078 = !DILocation(line: 367, column: 51, scope: !1070)
!1079 = !DILocalVariable(name: "i", scope: !1070, file: !3, line: 369, type: !20)
!1080 = !DILocation(line: 369, column: 6, scope: !1070)
!1081 = !DILocalVariable(name: "status", scope: !1070, file: !3, line: 370, type: !19)
!1082 = !DILocation(line: 370, column: 14, scope: !1070)
!1083 = !DILocation(line: 374, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 374, column: 2)
!1085 = !DILocation(line: 374, column: 7, scope: !1084)
!1086 = !DILocation(line: 374, column: 14, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 374, column: 2)
!1088 = !DILocation(line: 374, column: 18, scope: !1087)
!1089 = !DILocation(line: 374, column: 29, scope: !1087)
!1090 = !DILocation(line: 374, column: 16, scope: !1087)
!1091 = !DILocation(line: 374, column: 2, scope: !1084)
!1092 = !DILocation(line: 380, column: 12, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 374, column: 50)
!1094 = !DILocation(line: 380, column: 23, scope: !1093)
!1095 = !DILocation(line: 380, column: 37, scope: !1093)
!1096 = !DILocation(line: 379, column: 7, scope: !1093)
!1097 = !DILocation(line: 378, column: 10, scope: !1093)
!1098 = !DILocation(line: 381, column: 7, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 381, column: 7)
!1100 = !DILocation(line: 381, column: 7, scope: !1093)
!1101 = !DILocation(line: 382, column: 12, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 381, column: 29)
!1103 = !DILocation(line: 382, column: 4, scope: !1102)
!1104 = !DILocation(line: 384, column: 2, scope: !1093)
!1105 = !DILocation(line: 374, column: 46, scope: !1087)
!1106 = !DILocation(line: 374, column: 2, scope: !1087)
!1107 = distinct !{!1107, !1091, !1108}
!1108 = !DILocation(line: 384, column: 2, scope: !1084)
!1109 = !DILocation(line: 386, column: 2, scope: !1070)
!1110 = !DILocation(line: 387, column: 1, scope: !1070)
!1111 = distinct !DISubprogram(name: "acpi_hw_gpe_enable_write", scope: !3, file: !3, line: 340, type: !1112, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!19, !8, !578}
!1114 = !DILocalVariable(name: "enable_mask", arg: 1, scope: !1111, file: !3, line: 340, type: !8)
!1115 = !DILocation(line: 340, column: 29, scope: !1111)
!1116 = !DILocalVariable(name: "gpe_register_info", arg: 2, scope: !1111, file: !3, line: 341, type: !578)
!1117 = !DILocation(line: 341, column: 36, scope: !1111)
!1118 = !DILocalVariable(name: "status", scope: !1111, file: !3, line: 343, type: !19)
!1119 = !DILocation(line: 343, column: 14, scope: !1111)
!1120 = !DILocation(line: 345, column: 35, scope: !1111)
!1121 = !DILocation(line: 345, column: 2, scope: !1111)
!1122 = !DILocation(line: 345, column: 21, scope: !1111)
!1123 = !DILocation(line: 345, column: 33, scope: !1111)
!1124 = !DILocation(line: 347, column: 29, scope: !1111)
!1125 = !DILocation(line: 348, column: 9, scope: !1111)
!1126 = !DILocation(line: 348, column: 28, scope: !1111)
!1127 = !DILocation(line: 347, column: 11, scope: !1111)
!1128 = !DILocation(line: 347, column: 9, scope: !1111)
!1129 = !DILocation(line: 349, column: 10, scope: !1111)
!1130 = !DILocation(line: 349, column: 2, scope: !1111)
!1131 = distinct !DISubprogram(name: "acpi_hw_clear_gpe_block", scope: !3, file: !3, line: 403, type: !1071, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1132 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !1131, file: !3, line: 403, type: !570)
!1133 = !DILocation(line: 403, column: 53, scope: !1131)
!1134 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1131, file: !3, line: 404, type: !563)
!1135 = !DILocation(line: 404, column: 32, scope: !1131)
!1136 = !DILocalVariable(name: "context", arg: 3, scope: !1131, file: !3, line: 404, type: !17)
!1137 = !DILocation(line: 404, column: 49, scope: !1131)
!1138 = !DILocalVariable(name: "i", scope: !1131, file: !3, line: 406, type: !20)
!1139 = !DILocation(line: 406, column: 6, scope: !1131)
!1140 = !DILocalVariable(name: "status", scope: !1131, file: !3, line: 407, type: !19)
!1141 = !DILocation(line: 407, column: 14, scope: !1131)
!1142 = !DILocation(line: 411, column: 9, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 411, column: 2)
!1144 = !DILocation(line: 411, column: 7, scope: !1143)
!1145 = !DILocation(line: 411, column: 14, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 411, column: 2)
!1147 = !DILocation(line: 411, column: 18, scope: !1146)
!1148 = !DILocation(line: 411, column: 29, scope: !1146)
!1149 = !DILocation(line: 411, column: 16, scope: !1146)
!1150 = !DILocation(line: 411, column: 2, scope: !1143)
!1151 = !DILocation(line: 416, column: 10, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 411, column: 50)
!1153 = !DILocation(line: 416, column: 21, scope: !1152)
!1154 = !DILocation(line: 416, column: 35, scope: !1152)
!1155 = !DILocation(line: 416, column: 38, scope: !1152)
!1156 = !DILocation(line: 415, column: 12, scope: !1152)
!1157 = !DILocation(line: 415, column: 10, scope: !1152)
!1158 = !DILocation(line: 417, column: 7, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 417, column: 7)
!1160 = !DILocation(line: 417, column: 7, scope: !1152)
!1161 = !DILocation(line: 418, column: 12, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 417, column: 29)
!1163 = !DILocation(line: 418, column: 4, scope: !1162)
!1164 = !DILocation(line: 420, column: 2, scope: !1152)
!1165 = !DILocation(line: 411, column: 46, scope: !1146)
!1166 = !DILocation(line: 411, column: 2, scope: !1146)
!1167 = distinct !{!1167, !1150, !1168}
!1168 = !DILocation(line: 420, column: 2, scope: !1143)
!1169 = !DILocation(line: 422, column: 2, scope: !1131)
!1170 = !DILocation(line: 423, column: 1, scope: !1131)
!1171 = distinct !DISubprogram(name: "acpi_hw_enable_runtime_gpe_block", scope: !3, file: !3, line: 440, type: !1071, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1172 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !1171, file: !3, line: 440, type: !570)
!1173 = !DILocation(line: 440, column: 62, scope: !1171)
!1174 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1171, file: !3, line: 441, type: !563)
!1175 = !DILocation(line: 441, column: 34, scope: !1171)
!1176 = !DILocalVariable(name: "context", arg: 3, scope: !1171, file: !3, line: 442, type: !17)
!1177 = !DILocation(line: 442, column: 12, scope: !1171)
!1178 = !DILocalVariable(name: "i", scope: !1171, file: !3, line: 444, type: !20)
!1179 = !DILocation(line: 444, column: 6, scope: !1171)
!1180 = !DILocalVariable(name: "status", scope: !1171, file: !3, line: 445, type: !19)
!1181 = !DILocation(line: 445, column: 14, scope: !1171)
!1182 = !DILocalVariable(name: "gpe_register_info", scope: !1171, file: !3, line: 446, type: !578)
!1183 = !DILocation(line: 446, column: 33, scope: !1171)
!1184 = !DILocalVariable(name: "enable_mask", scope: !1171, file: !3, line: 447, type: !8)
!1185 = !DILocation(line: 447, column: 5, scope: !1171)
!1186 = !DILocation(line: 453, column: 9, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 453, column: 2)
!1188 = !DILocation(line: 453, column: 7, scope: !1187)
!1189 = !DILocation(line: 453, column: 14, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 453, column: 2)
!1191 = !DILocation(line: 453, column: 18, scope: !1190)
!1192 = !DILocation(line: 453, column: 29, scope: !1190)
!1193 = !DILocation(line: 453, column: 16, scope: !1190)
!1194 = !DILocation(line: 453, column: 2, scope: !1187)
!1195 = !DILocation(line: 454, column: 24, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 453, column: 50)
!1197 = !DILocation(line: 454, column: 35, scope: !1196)
!1198 = !DILocation(line: 454, column: 49, scope: !1196)
!1199 = !DILocation(line: 454, column: 21, scope: !1196)
!1200 = !DILocation(line: 455, column: 8, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 455, column: 7)
!1202 = !DILocation(line: 455, column: 27, scope: !1201)
!1203 = !DILocation(line: 455, column: 7, scope: !1196)
!1204 = !DILocation(line: 456, column: 4, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 455, column: 43)
!1206 = !DILocation(line: 461, column: 17, scope: !1196)
!1207 = !DILocation(line: 461, column: 36, scope: !1196)
!1208 = !DILocation(line: 462, column: 8, scope: !1196)
!1209 = !DILocation(line: 462, column: 27, scope: !1196)
!1210 = !DILocation(line: 462, column: 7, scope: !1196)
!1211 = !DILocation(line: 461, column: 51, scope: !1196)
!1212 = !DILocation(line: 461, column: 15, scope: !1196)
!1213 = !DILocation(line: 464, column: 32, scope: !1196)
!1214 = !DILocation(line: 464, column: 45, scope: !1196)
!1215 = !DILocation(line: 464, column: 7, scope: !1196)
!1216 = !DILocation(line: 463, column: 10, scope: !1196)
!1217 = !DILocation(line: 465, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 465, column: 7)
!1219 = !DILocation(line: 465, column: 7, scope: !1196)
!1220 = !DILocation(line: 466, column: 12, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 465, column: 29)
!1222 = !DILocation(line: 466, column: 4, scope: !1221)
!1223 = !DILocation(line: 468, column: 2, scope: !1196)
!1224 = !DILocation(line: 453, column: 46, scope: !1190)
!1225 = !DILocation(line: 453, column: 2, scope: !1190)
!1226 = distinct !{!1226, !1194, !1227}
!1227 = !DILocation(line: 468, column: 2, scope: !1187)
!1228 = !DILocation(line: 470, column: 2, scope: !1171)
!1229 = !DILocation(line: 471, column: 1, scope: !1171)
!1230 = distinct !DISubprogram(name: "acpi_hw_disable_all_gpes", scope: !3, file: !3, line: 588, type: !1231, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!19}
!1233 = !DILocalVariable(name: "status", scope: !1230, file: !3, line: 590, type: !19)
!1234 = !DILocation(line: 590, column: 14, scope: !1230)
!1235 = !DILocation(line: 594, column: 11, scope: !1230)
!1236 = !DILocation(line: 594, column: 9, scope: !1230)
!1237 = !DILocation(line: 595, column: 2, scope: !1230)
!1238 = distinct !DISubprogram(name: "acpi_hw_enable_all_runtime_gpes", scope: !3, file: !3, line: 610, type: !1231, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1239 = !DILocalVariable(name: "status", scope: !1238, file: !3, line: 612, type: !19)
!1240 = !DILocation(line: 612, column: 14, scope: !1238)
!1241 = !DILocation(line: 616, column: 11, scope: !1238)
!1242 = !DILocation(line: 616, column: 9, scope: !1238)
!1243 = !DILocation(line: 617, column: 2, scope: !1238)
!1244 = distinct !DISubprogram(name: "acpi_hw_enable_all_wakeup_gpes", scope: !3, file: !3, line: 632, type: !1231, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1245 = !DILocalVariable(name: "status", scope: !1244, file: !3, line: 634, type: !19)
!1246 = !DILocation(line: 634, column: 14, scope: !1244)
!1247 = !DILocation(line: 638, column: 11, scope: !1244)
!1248 = !DILocation(line: 638, column: 9, scope: !1244)
!1249 = !DILocation(line: 639, column: 2, scope: !1244)
!1250 = distinct !DISubprogram(name: "acpi_hw_enable_wakeup_gpe_block", scope: !3, file: !3, line: 488, type: !1071, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1251 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !1250, file: !3, line: 488, type: !570)
!1252 = !DILocation(line: 488, column: 61, scope: !1250)
!1253 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1250, file: !3, line: 489, type: !563)
!1254 = !DILocation(line: 489, column: 33, scope: !1250)
!1255 = !DILocalVariable(name: "context", arg: 3, scope: !1250, file: !3, line: 490, type: !17)
!1256 = !DILocation(line: 490, column: 11, scope: !1250)
!1257 = !DILocalVariable(name: "i", scope: !1250, file: !3, line: 492, type: !20)
!1258 = !DILocation(line: 492, column: 6, scope: !1250)
!1259 = !DILocalVariable(name: "status", scope: !1250, file: !3, line: 493, type: !19)
!1260 = !DILocation(line: 493, column: 14, scope: !1250)
!1261 = !DILocalVariable(name: "gpe_register_info", scope: !1250, file: !3, line: 494, type: !578)
!1262 = !DILocation(line: 494, column: 33, scope: !1250)
!1263 = !DILocation(line: 498, column: 9, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 498, column: 2)
!1265 = !DILocation(line: 498, column: 7, scope: !1264)
!1266 = !DILocation(line: 498, column: 14, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 498, column: 2)
!1268 = !DILocation(line: 498, column: 18, scope: !1267)
!1269 = !DILocation(line: 498, column: 29, scope: !1267)
!1270 = !DILocation(line: 498, column: 16, scope: !1267)
!1271 = !DILocation(line: 498, column: 2, scope: !1264)
!1272 = !DILocation(line: 499, column: 24, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 498, column: 50)
!1274 = !DILocation(line: 499, column: 35, scope: !1273)
!1275 = !DILocation(line: 499, column: 49, scope: !1273)
!1276 = !DILocation(line: 499, column: 21, scope: !1273)
!1277 = !DILocation(line: 507, column: 32, scope: !1273)
!1278 = !DILocation(line: 507, column: 51, scope: !1273)
!1279 = !DILocation(line: 508, column: 11, scope: !1273)
!1280 = !DILocation(line: 507, column: 7, scope: !1273)
!1281 = !DILocation(line: 506, column: 10, scope: !1273)
!1282 = !DILocation(line: 509, column: 7, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 509, column: 7)
!1284 = !DILocation(line: 509, column: 7, scope: !1273)
!1285 = !DILocation(line: 510, column: 12, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 509, column: 29)
!1287 = !DILocation(line: 510, column: 4, scope: !1286)
!1288 = !DILocation(line: 512, column: 2, scope: !1273)
!1289 = !DILocation(line: 498, column: 46, scope: !1267)
!1290 = !DILocation(line: 498, column: 2, scope: !1267)
!1291 = distinct !{!1291, !1271, !1292}
!1292 = !DILocation(line: 512, column: 2, scope: !1264)
!1293 = !DILocation(line: 514, column: 2, scope: !1250)
!1294 = !DILocation(line: 515, column: 1, scope: !1250)
!1295 = distinct !DISubprogram(name: "acpi_hw_check_all_gpes", scope: !3, file: !3, line: 657, type: !1296, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!8, !445, !20}
!1298 = !DILocalVariable(name: "gpe_skip_device", arg: 1, scope: !1295, file: !3, line: 657, type: !445)
!1299 = !DILocation(line: 657, column: 39, scope: !1295)
!1300 = !DILocalVariable(name: "gpe_skip_number", arg: 2, scope: !1295, file: !3, line: 657, type: !20)
!1301 = !DILocation(line: 657, column: 60, scope: !1295)
!1302 = !DILocalVariable(name: "context", scope: !1295, file: !3, line: 659, type: !1303)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_status_context", file: !3, line: 517, size: 128, elements: !1304)
!1304 = !{!1305, !1306, !1307}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_skip_register_info", scope: !1303, file: !3, line: 518, baseType: !578, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_skip_mask", scope: !1303, file: !3, line: 519, baseType: !8, size: 8, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !1303, file: !3, line: 520, baseType: !8, size: 8, offset: 72)
!1308 = !DILocation(line: 659, column: 39, scope: !1295)
!1309 = !DILocalVariable(name: "gpe_event_info", scope: !1295, file: !3, line: 663, type: !104)
!1310 = !DILocation(line: 663, column: 30, scope: !1295)
!1311 = !DILocalVariable(name: "flags", scope: !1295, file: !3, line: 664, type: !18)
!1312 = !DILocation(line: 664, column: 17, scope: !1295)
!1313 = !DILocation(line: 668, column: 31, scope: !1295)
!1314 = !DILocation(line: 668, column: 10, scope: !1295)
!1315 = !DILocation(line: 668, column: 8, scope: !1295)
!1316 = !DILocation(line: 670, column: 46, scope: !1295)
!1317 = !DILocation(line: 671, column: 11, scope: !1295)
!1318 = !DILocation(line: 670, column: 19, scope: !1295)
!1319 = !DILocation(line: 670, column: 17, scope: !1295)
!1320 = !DILocation(line: 672, column: 6, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 672, column: 6)
!1322 = !DILocation(line: 672, column: 6, scope: !1295)
!1323 = !DILocation(line: 673, column: 36, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 672, column: 22)
!1325 = !DILocation(line: 673, column: 52, scope: !1324)
!1326 = !DILocation(line: 673, column: 11, scope: !1324)
!1327 = !DILocation(line: 673, column: 34, scope: !1324)
!1328 = !DILocation(line: 674, column: 56, scope: !1324)
!1329 = !DILocation(line: 674, column: 27, scope: !1324)
!1330 = !DILocation(line: 674, column: 11, scope: !1324)
!1331 = !DILocation(line: 674, column: 25, scope: !1324)
!1332 = !DILocation(line: 675, column: 2, scope: !1324)
!1333 = !DILocation(line: 677, column: 23, scope: !1295)
!1334 = !DILocation(line: 677, column: 42, scope: !1295)
!1335 = !DILocation(line: 677, column: 2, scope: !1295)
!1336 = !DILocation(line: 679, column: 60, scope: !1295)
!1337 = !DILocation(line: 679, column: 8, scope: !1295)
!1338 = !DILocation(line: 680, column: 18, scope: !1295)
!1339 = !DILocation(line: 680, column: 10, scope: !1295)
!1340 = !DILocation(line: 680, column: 25, scope: !1295)
!1341 = !DILocation(line: 680, column: 9, scope: !1295)
!1342 = !DILocation(line: 680, column: 2, scope: !1295)
!1343 = distinct !DISubprogram(name: "acpi_hw_get_gpe_block_status", scope: !3, file: !3, line: 538, type: !1071, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1344 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !1343, file: !3, line: 538, type: !570)
!1345 = !DILocation(line: 538, column: 58, scope: !1343)
!1346 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1343, file: !3, line: 539, type: !563)
!1347 = !DILocation(line: 539, column: 37, scope: !1343)
!1348 = !DILocalVariable(name: "context", arg: 3, scope: !1343, file: !3, line: 540, type: !17)
!1349 = !DILocation(line: 540, column: 15, scope: !1343)
!1350 = !DILocalVariable(name: "c", scope: !1343, file: !3, line: 542, type: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1352 = !DILocation(line: 542, column: 40, scope: !1343)
!1353 = !DILocation(line: 542, column: 44, scope: !1343)
!1354 = !DILocalVariable(name: "gpe_register_info", scope: !1343, file: !3, line: 543, type: !578)
!1355 = !DILocation(line: 543, column: 33, scope: !1343)
!1356 = !DILocalVariable(name: "in_enable", scope: !1343, file: !3, line: 544, type: !13)
!1357 = !DILocation(line: 544, column: 6, scope: !1343)
!1358 = !DILocalVariable(name: "in_status", scope: !1343, file: !3, line: 544, type: !13)
!1359 = !DILocation(line: 544, column: 17, scope: !1343)
!1360 = !DILocalVariable(name: "status", scope: !1343, file: !3, line: 545, type: !19)
!1361 = !DILocation(line: 545, column: 14, scope: !1343)
!1362 = !DILocalVariable(name: "ret_mask", scope: !1343, file: !3, line: 546, type: !8)
!1363 = !DILocation(line: 546, column: 5, scope: !1343)
!1364 = !DILocalVariable(name: "i", scope: !1343, file: !3, line: 547, type: !20)
!1365 = !DILocation(line: 547, column: 6, scope: !1343)
!1366 = !DILocation(line: 551, column: 9, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 551, column: 2)
!1368 = !DILocation(line: 551, column: 7, scope: !1367)
!1369 = !DILocation(line: 551, column: 14, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 551, column: 2)
!1371 = !DILocation(line: 551, column: 18, scope: !1370)
!1372 = !DILocation(line: 551, column: 29, scope: !1370)
!1373 = !DILocation(line: 551, column: 16, scope: !1370)
!1374 = !DILocation(line: 551, column: 2, scope: !1367)
!1375 = !DILocation(line: 552, column: 24, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 551, column: 50)
!1377 = !DILocation(line: 552, column: 35, scope: !1376)
!1378 = !DILocation(line: 552, column: 49, scope: !1376)
!1379 = !DILocation(line: 552, column: 21, scope: !1376)
!1380 = !DILocation(line: 555, column: 9, scope: !1376)
!1381 = !DILocation(line: 555, column: 28, scope: !1376)
!1382 = !DILocation(line: 554, column: 12, scope: !1376)
!1383 = !DILocation(line: 554, column: 10, scope: !1376)
!1384 = !DILocation(line: 556, column: 7, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 556, column: 7)
!1386 = !DILocation(line: 556, column: 7, scope: !1376)
!1387 = !DILocation(line: 557, column: 4, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 556, column: 29)
!1389 = !DILocation(line: 561, column: 9, scope: !1376)
!1390 = !DILocation(line: 561, column: 28, scope: !1376)
!1391 = !DILocation(line: 560, column: 12, scope: !1376)
!1392 = !DILocation(line: 560, column: 10, scope: !1376)
!1393 = !DILocation(line: 562, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 562, column: 7)
!1395 = !DILocation(line: 562, column: 7, scope: !1376)
!1396 = !DILocation(line: 563, column: 4, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 562, column: 29)
!1398 = !DILocation(line: 566, column: 14, scope: !1376)
!1399 = !DILocation(line: 566, column: 26, scope: !1376)
!1400 = !DILocation(line: 566, column: 24, scope: !1376)
!1401 = !DILocation(line: 566, column: 12, scope: !1376)
!1402 = !DILocation(line: 567, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 567, column: 7)
!1404 = !DILocation(line: 567, column: 16, scope: !1403)
!1405 = !DILocation(line: 567, column: 19, scope: !1403)
!1406 = !DILocation(line: 567, column: 22, scope: !1403)
!1407 = !DILocation(line: 567, column: 48, scope: !1403)
!1408 = !DILocation(line: 567, column: 45, scope: !1403)
!1409 = !DILocation(line: 567, column: 7, scope: !1376)
!1410 = !DILocation(line: 568, column: 17, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 567, column: 67)
!1412 = !DILocation(line: 568, column: 20, scope: !1411)
!1413 = !DILocation(line: 568, column: 16, scope: !1411)
!1414 = !DILocation(line: 568, column: 13, scope: !1411)
!1415 = !DILocation(line: 569, column: 3, scope: !1411)
!1416 = !DILocation(line: 570, column: 16, scope: !1376)
!1417 = !DILocation(line: 570, column: 3, scope: !1376)
!1418 = !DILocation(line: 570, column: 6, scope: !1376)
!1419 = !DILocation(line: 570, column: 13, scope: !1376)
!1420 = !DILocation(line: 571, column: 2, scope: !1376)
!1421 = !DILocation(line: 551, column: 46, scope: !1370)
!1422 = !DILocation(line: 551, column: 2, scope: !1370)
!1423 = distinct !{!1423, !1374, !1424}
!1424 = !DILocation(line: 571, column: 2, scope: !1367)
!1425 = !DILocation(line: 573, column: 2, scope: !1343)
