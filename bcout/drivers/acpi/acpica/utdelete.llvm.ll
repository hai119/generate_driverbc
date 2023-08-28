; ModuleID = '../bcout/drivers/acpi/acpica/utdelete.llvm.bc'
source_filename = "drivers/acpi/acpica/utdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_notify_common = type { %union.acpi_operand_object*, i8, i8, i16, i8, [2 x %union.acpi_operand_object*], %union.acpi_operand_object* }
%struct.acpi_object_notify_handler = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, i32, void (i8*, i32, i8*)*, i8*, [2 x %union.acpi_operand_object*] }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }
%struct.acpi_object_buffer_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, i8, %union.acpi_operand_object* }
%struct.acpi_object_bank_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object* }
%struct.acpi_object_index_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object* }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }
%struct.acpi_update_state = type { i8*, i8, i8, i16, i16, %union.acpi_operand_object* }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_device = type { %union.acpi_operand_object*, i8, i8, i16, i8, [2 x %union.acpi_operand_object*], %union.acpi_operand_object*, %struct.acpi_gpe_block_info* }
%struct.acpi_gpe_block_info = type { %struct.acpi_namespace_node*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_register_info*, %struct.acpi_gpe_event_info*, i64, i32, i16, i16, i8, i8 }
%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i32 }
%struct.acpi_gpe_register_info = type { %struct.acpi_gpe_address, %struct.acpi_gpe_address, i16, i8, i8, i8, i8 }
%struct.acpi_gpe_address = type { i8, i64 }
%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, %struct.acpi_gpe_register_info*, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { %struct.acpi_namespace_node* }
%struct.acpi_object_addr_handler = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i32 (i32, i64, i32, i64*, i8*, i8*)*, %struct.acpi_namespace_node*, i8*, i32 (i8*, i32, i8*, i8**)*, %union.acpi_operand_object*, %union.acpi_operand_object* }
%struct.acpi_object_event = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8* }
%struct.acpi_object_method = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*, %union.anon, i32, i16, i8 }
%union.anon = type { i32 (%struct.acpi_walk_state*)* }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_object_extra = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i8*, i8*, i32 }
%struct.acpi_object_region_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, i16, %union.acpi_operand_object*, i8*, i16, i8* }

@_acpi_module_name = internal constant [9 x i8] c"utdelete\00", align 1, !dbg !0
@.str = private unnamed_addr constant [40 x i8] c"Could not update object reference count\00", align 1
@acpi_gbl_reference_count_lock = external dso_local global %struct.spinlock*, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Obj %p, Reference Count was zero before increment\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Incremement\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Obj %p, Reference Count is already zero, cannot decrement\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Decrement\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Unknown Reference Count action (0x%X)\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"Large Reference Count (0x%X) in object %p, Type=0x%.2X Operation=%s\00", align 1
@acpi_gbl_global_lock_mutex = external dso_local global %union.acpi_operand_object*, align 8
@acpi_gbl_global_lock_semaphore = external dso_local global i8*, align 8
@.str.7 = private unnamed_addr constant [50 x i8] c"Circular region list in address handler object %p\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_delete_internal_object_list(%union.acpi_operand_object** %obj_list) #0 !dbg !810 {
entry:
  %obj_list.addr = alloca %union.acpi_operand_object**, align 8
  %internal_obj = alloca %union.acpi_operand_object**, align 8
  store %union.acpi_operand_object** %obj_list, %union.acpi_operand_object*** %obj_list.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %obj_list.addr, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %internal_obj, metadata !816, metadata !DIExpression()), !dbg !817
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %obj_list.addr, align 8, !dbg !818
  store %union.acpi_operand_object** %0, %union.acpi_operand_object*** %internal_obj, align 8, !dbg !820
  br label %for.cond, !dbg !821

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %internal_obj, align 8, !dbg !822
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %1, align 8, !dbg !824
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !825
  br i1 %tobool, label %for.body, label %for.end, !dbg !825

for.body:                                         ; preds = %for.cond
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %internal_obj, align 8, !dbg !826
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8, !dbg !828
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %4) #3, !dbg !829
  br label %for.inc, !dbg !830

for.inc:                                          ; preds = %for.body
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %internal_obj, align 8, !dbg !831
  %incdec.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %5, i32 1, !dbg !831
  store %union.acpi_operand_object** %incdec.ptr, %union.acpi_operand_object*** %internal_obj, align 8, !dbg !831
  br label %for.cond, !dbg !832, !llvm.loop !833

for.end:                                          ; preds = %for.cond
  %6 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %obj_list.addr, align 8, !dbg !835
  %7 = bitcast %union.acpi_operand_object** %6 to i8*, !dbg !835
  call void @acpi_os_free(i8* %7) #3, !dbg !835
  ret void, !dbg !836
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object* %object) #0 !dbg !837 {
entry:
  %object.addr = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %object, %union.acpi_operand_object** %object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object.addr, metadata !840, metadata !DIExpression()), !dbg !841
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !842
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !842
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !844

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !845
  %2 = bitcast %union.acpi_operand_object* %1 to i8*, !dbg !845
  %3 = bitcast i8* %2 to %union.acpi_descriptor*, !dbg !845
  %common = bitcast %union.acpi_descriptor* %3 to %struct.acpi_common_descriptor*, !dbg !845
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !845
  %4 = load i8, i8* %descriptor_type, align 8, !dbg !845
  %conv = zext i8 %4 to i32, !dbg !845
  %cmp = icmp eq i32 %conv, 15, !dbg !846
  br i1 %cmp, label %if.then, label %if.end, !dbg !847

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !848

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !850
  %6 = bitcast %union.acpi_operand_object* %5 to i8*, !dbg !850
  %call = call zeroext i8 @acpi_ut_valid_internal_object(i8* %6) #3, !dbg !852
  %tobool2 = icmp ne i8 %call, 0, !dbg !852
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !853

if.then3:                                         ; preds = %if.end
  br label %return, !dbg !854

if.end4:                                          ; preds = %if.end
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !856
  %call5 = call i32 @acpi_ut_update_object_reference(%union.acpi_operand_object* %7, i16 zeroext 1) #3, !dbg !857
  br label %return, !dbg !858

return:                                           ; preds = %if.end4, %if.then3, %if.then
  ret void, !dbg !859
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !860 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !864, metadata !DIExpression()), !dbg !865
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !866
  call void @kfree(i8* %0) #3, !dbg !867
  ret void, !dbg !868
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_update_object_reference(%union.acpi_operand_object* %object, i16 zeroext %action) #0 !dbg !869 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %union.acpi_operand_object*, align 8
  %action.addr = alloca i16, align 2
  %status = alloca i32, align 4
  %state_list = alloca %union.acpi_generic_state*, align 8
  %next_object = alloca %union.acpi_operand_object*, align 8
  %prev_object = alloca %union.acpi_operand_object*, align 8
  %state = alloca %union.acpi_generic_state*, align 8
  %i = alloca i32, align 4
  store %union.acpi_operand_object* %object, %union.acpi_operand_object** %object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object.addr, metadata !872, metadata !DIExpression()), !dbg !873
  store i16 %action, i16* %action.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %action.addr, metadata !874, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.declare(metadata i32* %status, metadata !876, metadata !DIExpression()), !dbg !877
  store i32 0, i32* %status, align 4, !dbg !877
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %state_list, metadata !878, metadata !DIExpression()), !dbg !879
  store %union.acpi_generic_state* null, %union.acpi_generic_state** %state_list, align 8, !dbg !879
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %next_object, metadata !880, metadata !DIExpression()), !dbg !881
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %next_object, align 8, !dbg !881
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %prev_object, metadata !882, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %state, metadata !884, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.declare(metadata i32* %i, metadata !886, metadata !DIExpression()), !dbg !887
  br label %while.cond, !dbg !888

while.cond:                                       ; preds = %if.end71, %entry
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !889
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !888
  br i1 %tobool, label %while.body, label %while.end72, !dbg !888

while.body:                                       ; preds = %while.cond
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !890
  %2 = bitcast %union.acpi_operand_object* %1 to i8*, !dbg !890
  %3 = bitcast i8* %2 to %union.acpi_descriptor*, !dbg !890
  %common = bitcast %union.acpi_descriptor* %3 to %struct.acpi_common_descriptor*, !dbg !890
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !890
  %4 = load i8, i8* %descriptor_type, align 8, !dbg !890
  %conv = zext i8 %4 to i32, !dbg !890
  %cmp = icmp eq i32 %conv, 15, !dbg !893
  br i1 %cmp, label %if.then, label %if.end, !dbg !894

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval, align 4, !dbg !895
  br label %return, !dbg !895

if.end:                                           ; preds = %while.body
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !897
  %common2 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_common*, !dbg !898
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common2, i32 0, i32 2, !dbg !899
  %6 = load i8, i8* %type, align 1, !dbg !899
  %conv3 = zext i8 %6 to i32, !dbg !897
  switch i32 %conv3, label %sw.default61 [
    i32 6, label %sw.bb
    i32 12, label %sw.bb
    i32 11, label %sw.bb
    i32 13, label %sw.bb
    i32 4, label %sw.bb12
    i32 14, label %sw.bb34
    i32 18, label %sw.bb35
    i32 19, label %sw.bb41
    i32 20, label %sw.bb47
    i32 17, label %sw.bb60
    i32 10, label %sw.bb60
  ], !dbg !900

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  store i32 0, i32* %i, align 4, !dbg !901
  br label %for.cond, !dbg !904

for.cond:                                         ; preds = %for.inc, %sw.bb
  %7 = load i32, i32* %i, align 4, !dbg !905
  %cmp4 = icmp ult i32 %7, 2, !dbg !907
  br i1 %cmp4, label %for.body, label %for.end, !dbg !908

for.body:                                         ; preds = %for.cond
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !909
  %common_notify = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_notify_common*, !dbg !911
  %notify_list = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify, i32 0, i32 5, !dbg !912
  %9 = load i32, i32* %i, align 4, !dbg !913
  %idxprom = zext i32 %9 to i64, !dbg !909
  %arrayidx = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %notify_list, i64 0, i64 %idxprom, !dbg !909
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !909
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %prev_object, align 8, !dbg !914
  br label %while.cond6, !dbg !915

while.cond6:                                      ; preds = %while.body8, %for.body
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %prev_object, align 8, !dbg !916
  %tobool7 = icmp ne %union.acpi_operand_object* %11, null, !dbg !915
  br i1 %tobool7, label %while.body8, label %while.end, !dbg !915

while.body8:                                      ; preds = %while.cond6
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %prev_object, align 8, !dbg !917
  %notify = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_notify_handler*, !dbg !919
  %next = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify, i32 0, i32 9, !dbg !920
  %13 = load i32, i32* %i, align 4, !dbg !921
  %idxprom9 = zext i32 %13 to i64, !dbg !917
  %arrayidx10 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %next, i64 0, i64 %idxprom9, !dbg !917
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx10, align 8, !dbg !917
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %next_object, align 8, !dbg !922
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %prev_object, align 8, !dbg !923
  %16 = load i16, i16* %action.addr, align 2, !dbg !924
  %conv11 = zext i16 %16 to i32, !dbg !924
  call void @acpi_ut_update_ref_count(%union.acpi_operand_object* %15, i32 %conv11) #3, !dbg !925
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !926
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %prev_object, align 8, !dbg !927
  br label %while.cond6, !dbg !915, !llvm.loop !928

while.end:                                        ; preds = %while.cond6
  br label %for.inc, !dbg !930

for.inc:                                          ; preds = %while.end
  %18 = load i32, i32* %i, align 4, !dbg !931
  %inc = add i32 %18, 1, !dbg !931
  store i32 %inc, i32* %i, align 4, !dbg !931
  br label %for.cond, !dbg !932, !llvm.loop !933

for.end:                                          ; preds = %for.cond
  br label %sw.epilog62, !dbg !935

sw.bb12:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !936
  br label %for.cond13, !dbg !938

for.cond13:                                       ; preds = %for.inc31, %sw.bb12
  %19 = load i32, i32* %i, align 4, !dbg !939
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !941
  %package = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_package*, !dbg !942
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 9, !dbg !943
  %21 = load i32, i32* %count, align 4, !dbg !943
  %cmp14 = icmp ult i32 %19, %21, !dbg !944
  br i1 %cmp14, label %for.body16, label %for.end33, !dbg !945

for.body16:                                       ; preds = %for.cond13
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !946
  %package17 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_package*, !dbg !948
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package17, i32 0, i32 6, !dbg !949
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !949
  %24 = load i32, i32* %i, align 4, !dbg !950
  %idxprom18 = zext i32 %24 to i64, !dbg !946
  %arrayidx19 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %23, i64 %idxprom18, !dbg !946
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx19, align 8, !dbg !946
  store %union.acpi_operand_object* %25, %union.acpi_operand_object** %next_object, align 8, !dbg !951
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !952
  %tobool20 = icmp ne %union.acpi_operand_object* %26, null, !dbg !952
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !954

if.then21:                                        ; preds = %for.body16
  br label %for.inc31, !dbg !955

if.end22:                                         ; preds = %for.body16
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !957
  %common23 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_common*, !dbg !958
  %type24 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common23, i32 0, i32 2, !dbg !959
  %28 = load i8, i8* %type24, align 1, !dbg !959
  %conv25 = zext i8 %28 to i32, !dbg !957
  switch i32 %conv25, label %sw.default [
    i32 1, label %sw.bb26
    i32 2, label %sw.bb26
    i32 3, label %sw.bb26
  ], !dbg !960

sw.bb26:                                          ; preds = %if.end22, %if.end22, %if.end22
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !961
  %30 = load i16, i16* %action.addr, align 2, !dbg !963
  %conv27 = zext i16 %30 to i32, !dbg !963
  call void @acpi_ut_update_ref_count(%union.acpi_operand_object* %29, i32 %conv27) #3, !dbg !964
  br label %sw.epilog, !dbg !965

sw.default:                                       ; preds = %if.end22
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !966
  %32 = load i16, i16* %action.addr, align 2, !dbg !967
  %call = call i32 @acpi_ut_create_update_state_and_push(%union.acpi_operand_object* %31, i16 zeroext %32, %union.acpi_generic_state** %state_list) #3, !dbg !968
  store i32 %call, i32* %status, align 4, !dbg !969
  %33 = load i32, i32* %status, align 4, !dbg !970
  %tobool28 = icmp ne i32 %33, 0, !dbg !970
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !972

if.then29:                                        ; preds = %sw.default
  br label %error_exit, !dbg !973

if.end30:                                         ; preds = %sw.default
  br label %sw.epilog, !dbg !975

sw.epilog:                                        ; preds = %if.end30, %sw.bb26
  br label %for.inc31, !dbg !976

for.inc31:                                        ; preds = %sw.epilog, %if.then21
  %34 = load i32, i32* %i, align 4, !dbg !977
  %inc32 = add i32 %34, 1, !dbg !977
  store i32 %inc32, i32* %i, align 4, !dbg !977
  br label %for.cond13, !dbg !978, !llvm.loop !979

for.end33:                                        ; preds = %for.cond13
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %next_object, align 8, !dbg !981
  br label %sw.epilog62, !dbg !982

sw.bb34:                                          ; preds = %if.end
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !983
  %buffer_field = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_buffer_field*, !dbg !984
  %buffer_obj = getelementptr inbounds %struct.acpi_object_buffer_field, %struct.acpi_object_buffer_field* %buffer_field, i32 0, i32 15, !dbg !985
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_obj, align 8, !dbg !985
  store %union.acpi_operand_object* %36, %union.acpi_operand_object** %next_object, align 8, !dbg !986
  br label %sw.epilog62, !dbg !987

sw.bb35:                                          ; preds = %if.end
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !988
  %bank_field = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_bank_field*, !dbg !989
  %bank_obj = getelementptr inbounds %struct.acpi_object_bank_field, %struct.acpi_object_bank_field* %bank_field, i32 0, i32 15, !dbg !990
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %bank_obj, align 8, !dbg !990
  store %union.acpi_operand_object* %38, %union.acpi_operand_object** %next_object, align 8, !dbg !991
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !992
  %bank_field36 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_bank_field*, !dbg !993
  %region_obj = getelementptr inbounds %struct.acpi_object_bank_field, %struct.acpi_object_bank_field* %bank_field36, i32 0, i32 14, !dbg !994
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj, align 8, !dbg !994
  %41 = load i16, i16* %action.addr, align 2, !dbg !995
  %call37 = call i32 @acpi_ut_create_update_state_and_push(%union.acpi_operand_object* %40, i16 zeroext %41, %union.acpi_generic_state** %state_list) #3, !dbg !996
  store i32 %call37, i32* %status, align 4, !dbg !997
  %42 = load i32, i32* %status, align 4, !dbg !998
  %tobool38 = icmp ne i32 %42, 0, !dbg !998
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !1000

if.then39:                                        ; preds = %sw.bb35
  br label %error_exit, !dbg !1001

if.end40:                                         ; preds = %sw.bb35
  br label %sw.epilog62, !dbg !1003

sw.bb41:                                          ; preds = %if.end
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1004
  %index_field = bitcast %union.acpi_operand_object* %43 to %struct.acpi_object_index_field*, !dbg !1005
  %index_obj = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field, i32 0, i32 14, !dbg !1006
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %index_obj, align 8, !dbg !1006
  store %union.acpi_operand_object* %44, %union.acpi_operand_object** %next_object, align 8, !dbg !1007
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1008
  %index_field42 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_index_field*, !dbg !1009
  %data_obj = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field42, i32 0, i32 15, !dbg !1010
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %data_obj, align 8, !dbg !1010
  %47 = load i16, i16* %action.addr, align 2, !dbg !1011
  %call43 = call i32 @acpi_ut_create_update_state_and_push(%union.acpi_operand_object* %46, i16 zeroext %47, %union.acpi_generic_state** %state_list) #3, !dbg !1012
  store i32 %call43, i32* %status, align 4, !dbg !1013
  %48 = load i32, i32* %status, align 4, !dbg !1014
  %tobool44 = icmp ne i32 %48, 0, !dbg !1014
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !1016

if.then45:                                        ; preds = %sw.bb41
  br label %error_exit, !dbg !1017

if.end46:                                         ; preds = %sw.bb41
  br label %sw.epilog62, !dbg !1019

sw.bb47:                                          ; preds = %if.end
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1020
  %reference = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_reference*, !dbg !1022
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1023
  %50 = load i8, i8* %class, align 1, !dbg !1023
  %conv48 = zext i8 %50 to i32, !dbg !1020
  %cmp49 = icmp eq i32 %conv48, 3, !dbg !1024
  br i1 %cmp49, label %if.then56, label %lor.lhs.false, !dbg !1025

lor.lhs.false:                                    ; preds = %sw.bb47
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1026
  %reference51 = bitcast %union.acpi_operand_object* %51 to %struct.acpi_object_reference*, !dbg !1027
  %class52 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference51, i32 0, i32 5, !dbg !1028
  %52 = load i8, i8* %class52, align 1, !dbg !1028
  %conv53 = zext i8 %52 to i32, !dbg !1026
  %cmp54 = icmp eq i32 %conv53, 5, !dbg !1029
  br i1 %cmp54, label %if.then56, label %if.end59, !dbg !1030

if.then56:                                        ; preds = %lor.lhs.false, %sw.bb47
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1031
  %reference57 = bitcast %union.acpi_operand_object* %53 to %struct.acpi_object_reference*, !dbg !1033
  %object58 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference57, i32 0, i32 8, !dbg !1034
  %54 = load i8*, i8** %object58, align 8, !dbg !1034
  %55 = bitcast i8* %54 to %union.acpi_operand_object*, !dbg !1031
  store %union.acpi_operand_object* %55, %union.acpi_operand_object** %next_object, align 8, !dbg !1035
  br label %if.end59, !dbg !1036

if.end59:                                         ; preds = %if.then56, %lor.lhs.false
  br label %sw.epilog62, !dbg !1037

sw.bb60:                                          ; preds = %if.end, %if.end
  br label %sw.default61, !dbg !1037

sw.default61:                                     ; preds = %if.end, %sw.bb60
  br label %sw.epilog62, !dbg !1038

sw.epilog62:                                      ; preds = %sw.default61, %if.end59, %if.end46, %if.end40, %sw.bb34, %for.end33, %for.end
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1039
  %57 = load i16, i16* %action.addr, align 2, !dbg !1040
  %conv63 = zext i16 %57 to i32, !dbg !1040
  call void @acpi_ut_update_ref_count(%union.acpi_operand_object* %56, i32 %conv63) #3, !dbg !1041
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %object.addr, align 8, !dbg !1042
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !1043
  %tobool64 = icmp ne %union.acpi_operand_object* %58, null, !dbg !1043
  br i1 %tobool64, label %if.then65, label %if.else, !dbg !1045

if.then65:                                        ; preds = %sw.epilog62
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !1046
  store %union.acpi_operand_object* %59, %union.acpi_operand_object** %object.addr, align 8, !dbg !1048
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %next_object, align 8, !dbg !1049
  br label %if.end71, !dbg !1050

if.else:                                          ; preds = %sw.epilog62
  %60 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state_list, align 8, !dbg !1051
  %tobool66 = icmp ne %union.acpi_generic_state* %60, null, !dbg !1051
  br i1 %tobool66, label %if.then67, label %if.end70, !dbg !1053

if.then67:                                        ; preds = %if.else
  %call68 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %state_list) #3, !dbg !1054
  store %union.acpi_generic_state* %call68, %union.acpi_generic_state** %state, align 8, !dbg !1056
  %61 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1057
  %update = bitcast %union.acpi_generic_state* %61 to %struct.acpi_update_state*, !dbg !1058
  %object69 = getelementptr inbounds %struct.acpi_update_state, %struct.acpi_update_state* %update, i32 0, i32 5, !dbg !1059
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object69, align 8, !dbg !1059
  store %union.acpi_operand_object* %62, %union.acpi_operand_object** %object.addr, align 8, !dbg !1060
  %63 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1061
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %63) #3, !dbg !1062
  br label %if.end70, !dbg !1063

if.end70:                                         ; preds = %if.then67, %if.else
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then65
  br label %while.cond, !dbg !888, !llvm.loop !1064

while.end72:                                      ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !1066
  br label %return, !dbg !1066

error_exit:                                       ; preds = %if.then45, %if.then39, %if.then29
  call void @llvm.dbg.label(metadata !1067), !dbg !1068
  %64 = load i32, i32* %status, align 4, !dbg !1069
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 642, i32 %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0)) #3, !dbg !1069
  br label %while.cond73, !dbg !1070

while.cond73:                                     ; preds = %while.body75, %error_exit
  %65 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state_list, align 8, !dbg !1071
  %tobool74 = icmp ne %union.acpi_generic_state* %65, null, !dbg !1070
  br i1 %tobool74, label %while.body75, label %while.end77, !dbg !1070

while.body75:                                     ; preds = %while.cond73
  %call76 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %state_list) #3, !dbg !1072
  store %union.acpi_generic_state* %call76, %union.acpi_generic_state** %state, align 8, !dbg !1074
  %66 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1075
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %66) #3, !dbg !1076
  br label %while.cond73, !dbg !1070, !llvm.loop !1077

while.end77:                                      ; preds = %while.cond73
  %67 = load i32, i32* %status, align 4, !dbg !1079
  store i32 %67, i32* %retval, align 4, !dbg !1080
  br label %return, !dbg !1080

return:                                           ; preds = %while.end77, %while.end72, %if.then
  %68 = load i32, i32* %retval, align 4, !dbg !1081
  ret i32 %68, !dbg !1081
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ut_update_ref_count(%union.acpi_operand_object* %object, i32 %action) #0 !dbg !1082 {
entry:
  %object.addr = alloca %union.acpi_operand_object*, align 8
  %action.addr = alloca i32, align 4
  %original_count = alloca i16, align 2
  %new_count = alloca i16, align 2
  %lock_flags = alloca i64, align 8
  %message = alloca i8*, align 8
  store %union.acpi_operand_object* %object, %union.acpi_operand_object** %object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object.addr, metadata !1085, metadata !DIExpression()), !dbg !1086
  store i32 %action, i32* %action.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %action.addr, metadata !1087, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.declare(metadata i16* %original_count, metadata !1089, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.declare(metadata i16* %new_count, metadata !1091, metadata !DIExpression()), !dbg !1092
  store i16 0, i16* %new_count, align 2, !dbg !1092
  call void @llvm.dbg.declare(metadata i64* %lock_flags, metadata !1093, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.declare(metadata i8** %message, metadata !1096, metadata !DIExpression()), !dbg !1097
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1098
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1098
  br i1 %tobool, label %if.end, label %if.then, !dbg !1100

if.then:                                          ; preds = %entry
  br label %if.end29, !dbg !1101

if.end:                                           ; preds = %entry
  %1 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_reference_count_lock, align 8, !dbg !1103
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %1) #3, !dbg !1104
  store i64 %call, i64* %lock_flags, align 8, !dbg !1105
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1106
  %common = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_common*, !dbg !1107
  %reference_count = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 3, !dbg !1108
  %3 = load i16, i16* %reference_count, align 2, !dbg !1108
  store i16 %3, i16* %original_count, align 2, !dbg !1109
  %4 = load i32, i32* %action.addr, align 4, !dbg !1110
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ], !dbg !1111

sw.bb:                                            ; preds = %if.end
  %5 = load i16, i16* %original_count, align 2, !dbg !1112
  %conv = zext i16 %5 to i32, !dbg !1112
  %add = add i32 %conv, 1, !dbg !1114
  %conv1 = trunc i32 %add to i16, !dbg !1112
  store i16 %conv1, i16* %new_count, align 2, !dbg !1115
  %6 = load i16, i16* %new_count, align 2, !dbg !1116
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1117
  %common2 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_common*, !dbg !1118
  %reference_count3 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common2, i32 0, i32 3, !dbg !1119
  store i16 %6, i16* %reference_count3, align 2, !dbg !1120
  %8 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_reference_count_lock, align 8, !dbg !1121
  %9 = load i64, i64* %lock_flags, align 8, !dbg !1122
  call void @acpi_os_release_lock(%struct.spinlock* %8, i64 %9) #3, !dbg !1123
  %10 = load i16, i16* %original_count, align 2, !dbg !1124
  %tobool4 = icmp ne i16 %10, 0, !dbg !1124
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1126

if.then5:                                         ; preds = %sw.bb
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1127
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 389, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), %union.acpi_operand_object* %11) #3, !dbg !1127
  br label %if.end6, !dbg !1129

if.end6:                                          ; preds = %if.then5, %sw.bb
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %message, align 8, !dbg !1130
  br label %sw.epilog, !dbg !1131

sw.bb7:                                           ; preds = %if.end
  %12 = load i16, i16* %original_count, align 2, !dbg !1132
  %tobool8 = icmp ne i16 %12, 0, !dbg !1132
  br i1 %tobool8, label %if.then9, label %if.end14, !dbg !1134

if.then9:                                         ; preds = %sw.bb7
  %13 = load i16, i16* %original_count, align 2, !dbg !1135
  %conv10 = zext i16 %13 to i32, !dbg !1135
  %sub = sub i32 %conv10, 1, !dbg !1137
  %conv11 = trunc i32 %sub to i16, !dbg !1135
  store i16 %conv11, i16* %new_count, align 2, !dbg !1138
  %14 = load i16, i16* %new_count, align 2, !dbg !1139
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1140
  %common12 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_common*, !dbg !1141
  %reference_count13 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common12, i32 0, i32 3, !dbg !1142
  store i16 %14, i16* %reference_count13, align 2, !dbg !1143
  br label %if.end14, !dbg !1144

if.end14:                                         ; preds = %if.then9, %sw.bb7
  %16 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_reference_count_lock, align 8, !dbg !1145
  %17 = load i64, i64* %lock_flags, align 8, !dbg !1146
  call void @acpi_os_release_lock(%struct.spinlock* %16, i64 %17) #3, !dbg !1147
  %18 = load i16, i16* %original_count, align 2, !dbg !1148
  %tobool15 = icmp ne i16 %18, 0, !dbg !1148
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !1150

if.then16:                                        ; preds = %if.end14
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1151
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 414, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), %union.acpi_operand_object* %19) #3, !dbg !1151
  br label %if.end17, !dbg !1153

if.end17:                                         ; preds = %if.then16, %if.end14
  %20 = load i16, i16* %new_count, align 2, !dbg !1154
  %conv18 = zext i16 %20 to i32, !dbg !1154
  %cmp = icmp eq i32 %conv18, 0, !dbg !1156
  br i1 %cmp, label %if.then20, label %if.end21, !dbg !1157

if.then20:                                        ; preds = %if.end17
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1158
  call void @acpi_ut_delete_internal_obj(%union.acpi_operand_object* %21) #3, !dbg !1160
  br label %if.end21, !dbg !1161

if.end21:                                         ; preds = %if.then20, %if.end17
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %message, align 8, !dbg !1162
  br label %sw.epilog, !dbg !1163

sw.default:                                       ; preds = %if.end
  %22 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_reference_count_lock, align 8, !dbg !1164
  %23 = load i64, i64* %lock_flags, align 8, !dbg !1165
  call void @acpi_os_release_lock(%struct.spinlock* %22, i64 %23) #3, !dbg !1166
  %24 = load i32, i32* %action.addr, align 4, !dbg !1167
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 435, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %24) #3, !dbg !1167
  br label %if.end29, !dbg !1168

sw.epilog:                                        ; preds = %if.end21, %if.end6
  %25 = load i16, i16* %new_count, align 2, !dbg !1169
  %conv22 = zext i16 %25 to i32, !dbg !1169
  %cmp23 = icmp sgt i32 %conv22, 16384, !dbg !1171
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !1172

if.then25:                                        ; preds = %sw.epilog
  %26 = load i16, i16* %new_count, align 2, !dbg !1173
  %conv26 = zext i16 %26 to i32, !dbg !1173
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1173
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1173
  %common27 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_common*, !dbg !1173
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common27, i32 0, i32 2, !dbg !1173
  %29 = load i8, i8* %type, align 1, !dbg !1173
  %conv28 = zext i8 %29 to i32, !dbg !1173
  %30 = load i8*, i8** %message, align 8, !dbg !1173
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 445, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i32 %conv26, %union.acpi_operand_object* %27, i32 %conv28, i8* %30) #3, !dbg !1173
  br label %if.end29, !dbg !1175

if.end29:                                         ; preds = %if.then, %sw.default, %if.then25, %sw.epilog
  ret void, !dbg !1176
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_create_update_state_and_push(%union.acpi_operand_object*, i16 zeroext, %union.acpi_generic_state**) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_add_reference(%union.acpi_operand_object* %object) #0 !dbg !1177 {
entry:
  %object.addr = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %object, %union.acpi_operand_object** %object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object.addr, metadata !1178, metadata !DIExpression()), !dbg !1179
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1180
  %1 = bitcast %union.acpi_operand_object* %0 to i8*, !dbg !1180
  %call = call zeroext i8 @acpi_ut_valid_internal_object(i8* %1) #3, !dbg !1182
  %tobool = icmp ne i8 %call, 0, !dbg !1182
  br i1 %tobool, label %if.end, label %if.then, !dbg !1183

if.then:                                          ; preds = %entry
  br label %return, !dbg !1184

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1186
  %call1 = call i32 @acpi_ut_update_object_reference(%union.acpi_operand_object* %2, i16 zeroext 0) #3, !dbg !1187
  br label %return, !dbg !1188

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1189
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_valid_internal_object(i8*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local i64 @acpi_os_acquire_lock(%struct.spinlock*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_release_lock(%struct.spinlock*, i64) #2

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ut_delete_internal_obj(%union.acpi_operand_object* %object) #0 !dbg !1190 {
entry:
  %object.addr = alloca %union.acpi_operand_object*, align 8
  %obj_pointer = alloca i8*, align 8
  %handler_desc = alloca %union.acpi_operand_object*, align 8
  %second_desc = alloca %union.acpi_operand_object*, align 8
  %next_desc = alloca %union.acpi_operand_object*, align 8
  %start_desc = alloca %union.acpi_operand_object*, align 8
  %last_obj_ptr = alloca %union.acpi_operand_object**, align 8
  store %union.acpi_operand_object* %object, %union.acpi_operand_object** %object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object.addr, metadata !1191, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.declare(metadata i8** %obj_pointer, metadata !1193, metadata !DIExpression()), !dbg !1194
  store i8* null, i8** %obj_pointer, align 8, !dbg !1194
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_desc, metadata !1195, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %second_desc, metadata !1197, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %next_desc, metadata !1199, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %start_desc, metadata !1201, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %last_obj_ptr, metadata !1203, metadata !DIExpression()), !dbg !1204
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1205
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1205
  br i1 %tobool, label %if.end, label %if.then, !dbg !1207

if.then:                                          ; preds = %entry
  br label %return, !dbg !1208

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1210
  %common = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_common*, !dbg !1211
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1212
  %2 = load i8, i8* %type, align 1, !dbg !1212
  %conv = zext i8 %2 to i32, !dbg !1210
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb6
    i32 4, label %sw.bb15
    i32 6, label %sw.bb16
    i32 12, label %sw.bb22
    i32 13, label %sw.bb22
    i32 9, label %sw.bb24
    i32 7, label %sw.bb33
    i32 8, label %sw.bb37
    i32 10, label %sw.bb57
    i32 14, label %sw.bb117
    i32 18, label %sw.bb122
  ], !dbg !1213

sw.bb:                                            ; preds = %if.end
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1214
  %common1 = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !1217
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common1, i32 0, i32 4, !dbg !1218
  %4 = load i8, i8* %flags, align 4, !dbg !1218
  %conv2 = zext i8 %4 to i32, !dbg !1214
  %and = and i32 %conv2, 2, !dbg !1219
  %tobool3 = icmp ne i32 %and, 0, !dbg !1219
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1220

if.then4:                                         ; preds = %sw.bb
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1221
  %string = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_string*, !dbg !1223
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 5, !dbg !1224
  %6 = load i8*, i8** %pointer, align 8, !dbg !1224
  store i8* %6, i8** %obj_pointer, align 8, !dbg !1225
  br label %if.end5, !dbg !1226

if.end5:                                          ; preds = %if.then4, %sw.bb
  br label %sw.epilog, !dbg !1227

sw.bb6:                                           ; preds = %if.end
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1228
  %common7 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_common*, !dbg !1230
  %flags8 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common7, i32 0, i32 4, !dbg !1231
  %8 = load i8, i8* %flags8, align 4, !dbg !1231
  %conv9 = zext i8 %8 to i32, !dbg !1228
  %and10 = and i32 %conv9, 2, !dbg !1232
  %tobool11 = icmp ne i32 %and10, 0, !dbg !1232
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !1233

if.then12:                                        ; preds = %sw.bb6
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1234
  %buffer = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_buffer*, !dbg !1236
  %pointer13 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 5, !dbg !1237
  %10 = load i8*, i8** %pointer13, align 8, !dbg !1237
  store i8* %10, i8** %obj_pointer, align 8, !dbg !1238
  br label %if.end14, !dbg !1239

if.end14:                                         ; preds = %if.then12, %sw.bb6
  br label %sw.epilog, !dbg !1240

sw.bb15:                                          ; preds = %if.end
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1241
  %package = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_package*, !dbg !1242
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 6, !dbg !1243
  %12 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1243
  %13 = bitcast %union.acpi_operand_object** %12 to i8*, !dbg !1241
  store i8* %13, i8** %obj_pointer, align 8, !dbg !1244
  br label %sw.epilog, !dbg !1245

sw.bb16:                                          ; preds = %if.end
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1246
  %device = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_device*, !dbg !1248
  %gpe_block = getelementptr inbounds %struct.acpi_object_device, %struct.acpi_object_device* %device, i32 0, i32 7, !dbg !1249
  %15 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1249
  %tobool17 = icmp ne %struct.acpi_gpe_block_info* %15, null, !dbg !1246
  br i1 %tobool17, label %if.then18, label %if.end21, !dbg !1250

if.then18:                                        ; preds = %sw.bb16
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1251
  %device19 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_device*, !dbg !1253
  %gpe_block20 = getelementptr inbounds %struct.acpi_object_device, %struct.acpi_object_device* %device19, i32 0, i32 7, !dbg !1254
  %17 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block20, align 8, !dbg !1254
  %call = call i32 @acpi_ev_delete_gpe_block(%struct.acpi_gpe_block_info* %17) #3, !dbg !1255
  br label %if.end21, !dbg !1256

if.end21:                                         ; preds = %if.then18, %sw.bb16
  br label %sw.bb22, !dbg !1249

sw.bb22:                                          ; preds = %if.end, %if.end, %if.end21
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1257
  %common_notify = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_notify_common*, !dbg !1258
  %handler = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify, i32 0, i32 6, !dbg !1259
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler, align 8, !dbg !1259
  store %union.acpi_operand_object* %19, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1260
  br label %while.cond, !dbg !1261

while.cond:                                       ; preds = %while.body, %sw.bb22
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1262
  %tobool23 = icmp ne %union.acpi_operand_object* %20, null, !dbg !1261
  br i1 %tobool23, label %while.body, label %while.end, !dbg !1261

while.body:                                       ; preds = %while.cond
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1263
  %address_space = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_addr_handler*, !dbg !1265
  %next = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space, i32 0, i32 12, !dbg !1266
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next, align 8, !dbg !1266
  store %union.acpi_operand_object* %22, %union.acpi_operand_object** %next_desc, align 8, !dbg !1267
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1268
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %23) #3, !dbg !1269
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_desc, align 8, !dbg !1270
  store %union.acpi_operand_object* %24, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1271
  br label %while.cond, !dbg !1261, !llvm.loop !1272

while.end:                                        ; preds = %while.cond
  br label %sw.epilog, !dbg !1274

sw.bb24:                                          ; preds = %if.end
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1275
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8, !dbg !1277
  %cmp = icmp eq %union.acpi_operand_object* %25, %26, !dbg !1278
  br i1 %cmp, label %if.then26, label %if.else, !dbg !1279

if.then26:                                        ; preds = %sw.bb24
  %27 = load i8*, i8** @acpi_gbl_global_lock_semaphore, align 8, !dbg !1280
  %call27 = call i32 @acpi_os_delete_semaphore(i8* %27) #3, !dbg !1282
  store i8* null, i8** @acpi_gbl_global_lock_semaphore, align 8, !dbg !1283
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1284
  %mutex = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_mutex*, !dbg !1284
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 7, !dbg !1284
  %29 = load i8*, i8** %os_mutex, align 8, !dbg !1284
  %call28 = call i32 @acpi_os_delete_semaphore(i8* %29) #3, !dbg !1284
  store %union.acpi_operand_object* null, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8, !dbg !1285
  br label %if.end32, !dbg !1286

if.else:                                          ; preds = %sw.bb24
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1287
  call void @acpi_ex_unlink_mutex(%union.acpi_operand_object* %30) #3, !dbg !1289
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1290
  %mutex29 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_mutex*, !dbg !1290
  %os_mutex30 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex29, i32 0, i32 7, !dbg !1290
  %32 = load i8*, i8** %os_mutex30, align 8, !dbg !1290
  %call31 = call i32 @acpi_os_delete_semaphore(i8* %32) #3, !dbg !1290
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then26
  br label %sw.epilog, !dbg !1291

sw.bb33:                                          ; preds = %if.end
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1292
  %event = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_event*, !dbg !1293
  %os_semaphore = getelementptr inbounds %struct.acpi_object_event, %struct.acpi_object_event* %event, i32 0, i32 5, !dbg !1294
  %34 = load i8*, i8** %os_semaphore, align 8, !dbg !1294
  %call34 = call i32 @acpi_os_delete_semaphore(i8* %34) #3, !dbg !1295
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1296
  %event35 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_event*, !dbg !1297
  %os_semaphore36 = getelementptr inbounds %struct.acpi_object_event, %struct.acpi_object_event* %event35, i32 0, i32 5, !dbg !1298
  store i8* null, i8** %os_semaphore36, align 8, !dbg !1299
  br label %sw.epilog, !dbg !1300

sw.bb37:                                          ; preds = %if.end
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1301
  %method = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_method*, !dbg !1303
  %mutex38 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 8, !dbg !1304
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex38, align 8, !dbg !1304
  %tobool39 = icmp ne %union.acpi_operand_object* %37, null, !dbg !1301
  br i1 %tobool39, label %if.then40, label %if.end50, !dbg !1305

if.then40:                                        ; preds = %sw.bb37
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1306
  %method41 = bitcast %union.acpi_operand_object* %38 to %struct.acpi_object_method*, !dbg !1306
  %mutex42 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method41, i32 0, i32 8, !dbg !1306
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex42, align 8, !dbg !1306
  %mutex43 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_mutex*, !dbg !1306
  %os_mutex44 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex43, i32 0, i32 7, !dbg !1306
  %40 = load i8*, i8** %os_mutex44, align 8, !dbg !1306
  %call45 = call i32 @acpi_os_delete_semaphore(i8* %40) #3, !dbg !1306
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1308
  %method46 = bitcast %union.acpi_operand_object* %41 to %struct.acpi_object_method*, !dbg !1309
  %mutex47 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method46, i32 0, i32 8, !dbg !1310
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex47, align 8, !dbg !1310
  call void @acpi_ut_delete_object_desc(%union.acpi_operand_object* %42) #3, !dbg !1311
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1312
  %method48 = bitcast %union.acpi_operand_object* %43 to %struct.acpi_object_method*, !dbg !1313
  %mutex49 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method48, i32 0, i32 8, !dbg !1314
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %mutex49, align 8, !dbg !1315
  br label %if.end50, !dbg !1316

if.end50:                                         ; preds = %if.then40, %sw.bb37
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1317
  %method51 = bitcast %union.acpi_operand_object* %44 to %struct.acpi_object_method*, !dbg !1319
  %node = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method51, i32 0, i32 9, !dbg !1320
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %node, align 8, !dbg !1320
  %tobool52 = icmp ne %union.acpi_operand_object* %45, null, !dbg !1317
  br i1 %tobool52, label %if.then53, label %if.end56, !dbg !1321

if.then53:                                        ; preds = %if.end50
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1322
  %method54 = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_method*, !dbg !1324
  %node55 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method54, i32 0, i32 9, !dbg !1325
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %node55, align 8, !dbg !1326
  br label %if.end56, !dbg !1327

if.end56:                                         ; preds = %if.then53, %if.end50
  br label %sw.epilog, !dbg !1328

sw.bb57:                                          ; preds = %if.end
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1329
  %region = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_region*, !dbg !1331
  %node58 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 6, !dbg !1332
  %48 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node58, align 8, !dbg !1332
  %flags59 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %48, i32 0, i32 3, !dbg !1333
  %49 = load i16, i16* %flags59, align 2, !dbg !1333
  %conv60 = zext i16 %49 to i32, !dbg !1329
  %and61 = and i32 %conv60, 2, !dbg !1334
  %tobool62 = icmp ne i32 %and61, 0, !dbg !1334
  br i1 %tobool62, label %if.end67, label %if.then63, !dbg !1335

if.then63:                                        ; preds = %sw.bb57
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1336
  %region64 = bitcast %union.acpi_operand_object* %50 to %struct.acpi_object_region*, !dbg !1338
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region64, i32 0, i32 5, !dbg !1339
  %51 = load i8, i8* %space_id, align 1, !dbg !1339
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1340
  %region65 = bitcast %union.acpi_operand_object* %52 to %struct.acpi_object_region*, !dbg !1341
  %node66 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region65, i32 0, i32 6, !dbg !1342
  %53 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node66, align 8, !dbg !1342
  call void @acpi_ut_remove_address_range(i8 zeroext %51, %struct.acpi_namespace_node* %53) #3, !dbg !1343
  br label %if.end67, !dbg !1344

if.end67:                                         ; preds = %if.then63, %sw.bb57
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1345
  %call68 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %54) #3, !dbg !1346
  store %union.acpi_operand_object* %call68, %union.acpi_operand_object** %second_desc, align 8, !dbg !1347
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !1348
  %tobool69 = icmp ne %union.acpi_operand_object* %55, null, !dbg !1348
  br i1 %tobool69, label %if.then70, label %if.end111, !dbg !1350

if.then70:                                        ; preds = %if.end67
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1351
  %region71 = bitcast %union.acpi_operand_object* %56 to %struct.acpi_object_region*, !dbg !1353
  %handler72 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region71, i32 0, i32 7, !dbg !1354
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler72, align 8, !dbg !1354
  store %union.acpi_operand_object* %57, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1355
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1356
  %tobool73 = icmp ne %union.acpi_operand_object* %58, null, !dbg !1356
  br i1 %tobool73, label %if.then74, label %if.end110, !dbg !1358

if.then74:                                        ; preds = %if.then70
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1359
  %address_space75 = bitcast %union.acpi_operand_object* %59 to %struct.acpi_object_addr_handler*, !dbg !1361
  %region_list = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space75, i32 0, i32 11, !dbg !1362
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_list, align 8, !dbg !1362
  store %union.acpi_operand_object* %60, %union.acpi_operand_object** %next_desc, align 8, !dbg !1363
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_desc, align 8, !dbg !1364
  store %union.acpi_operand_object* %61, %union.acpi_operand_object** %start_desc, align 8, !dbg !1365
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1366
  %address_space76 = bitcast %union.acpi_operand_object* %62 to %struct.acpi_object_addr_handler*, !dbg !1367
  %region_list77 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space76, i32 0, i32 11, !dbg !1368
  store %union.acpi_operand_object** %region_list77, %union.acpi_operand_object*** %last_obj_ptr, align 8, !dbg !1369
  br label %while.cond78, !dbg !1370

while.cond78:                                     ; preds = %if.end94, %if.then74
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_desc, align 8, !dbg !1371
  %tobool79 = icmp ne %union.acpi_operand_object* %63, null, !dbg !1370
  br i1 %tobool79, label %while.body80, label %while.end95, !dbg !1370

while.body80:                                     ; preds = %while.cond78
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_desc, align 8, !dbg !1372
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1375
  %cmp81 = icmp eq %union.acpi_operand_object* %64, %65, !dbg !1376
  br i1 %cmp81, label %if.then83, label %if.end86, !dbg !1377

if.then83:                                        ; preds = %while.body80
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_desc, align 8, !dbg !1378
  %region84 = bitcast %union.acpi_operand_object* %66 to %struct.acpi_object_region*, !dbg !1380
  %next85 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region84, i32 0, i32 8, !dbg !1381
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next85, align 8, !dbg !1381
  %68 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %last_obj_ptr, align 8, !dbg !1382
  store %union.acpi_operand_object* %67, %union.acpi_operand_object** %68, align 8, !dbg !1383
  br label %while.end95, !dbg !1384

if.end86:                                         ; preds = %while.body80
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_desc, align 8, !dbg !1385
  %region87 = bitcast %union.acpi_operand_object* %69 to %struct.acpi_object_region*, !dbg !1386
  %next88 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region87, i32 0, i32 8, !dbg !1387
  store %union.acpi_operand_object** %next88, %union.acpi_operand_object*** %last_obj_ptr, align 8, !dbg !1388
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_desc, align 8, !dbg !1389
  %region89 = bitcast %union.acpi_operand_object* %70 to %struct.acpi_object_region*, !dbg !1390
  %next90 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region89, i32 0, i32 8, !dbg !1391
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next90, align 8, !dbg !1391
  store %union.acpi_operand_object* %71, %union.acpi_operand_object** %next_desc, align 8, !dbg !1392
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_desc, align 8, !dbg !1393
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %start_desc, align 8, !dbg !1395
  %cmp91 = icmp eq %union.acpi_operand_object* %72, %73, !dbg !1396
  br i1 %cmp91, label %if.then93, label %if.end94, !dbg !1397

if.then93:                                        ; preds = %if.end86
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1398
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 228, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), %union.acpi_operand_object* %74) #3, !dbg !1398
  br label %return, !dbg !1400

if.end94:                                         ; preds = %if.end86
  br label %while.cond78, !dbg !1370, !llvm.loop !1401

while.end95:                                      ; preds = %if.then83, %while.cond78
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1403
  %address_space96 = bitcast %union.acpi_operand_object* %75 to %struct.acpi_object_addr_handler*, !dbg !1405
  %handler_flags = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space96, i32 0, i32 6, !dbg !1406
  %76 = load i8, i8* %handler_flags, align 2, !dbg !1406
  %conv97 = zext i8 %76 to i32, !dbg !1403
  %and98 = and i32 %conv97, 1, !dbg !1407
  %tobool99 = icmp ne i32 %and98, 0, !dbg !1407
  br i1 %tobool99, label %if.then100, label %if.end109, !dbg !1408

if.then100:                                       ; preds = %while.end95
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1409
  %address_space101 = bitcast %union.acpi_operand_object* %77 to %struct.acpi_object_addr_handler*, !dbg !1412
  %setup = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space101, i32 0, i32 10, !dbg !1413
  %78 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %setup, align 8, !dbg !1413
  %tobool102 = icmp ne i32 (i8*, i32, i8*, i8**)* %78, null, !dbg !1409
  br i1 %tobool102, label %if.then103, label %if.end108, !dbg !1414

if.then103:                                       ; preds = %if.then100
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1415
  %address_space104 = bitcast %union.acpi_operand_object* %79 to %struct.acpi_object_addr_handler*, !dbg !1417
  %setup105 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space104, i32 0, i32 10, !dbg !1418
  %80 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %setup105, align 8, !dbg !1418
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1419
  %82 = bitcast %union.acpi_operand_object* %81 to i8*, !dbg !1419
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1420
  %address_space106 = bitcast %union.acpi_operand_object* %83 to %struct.acpi_object_addr_handler*, !dbg !1421
  %context = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space106, i32 0, i32 9, !dbg !1422
  %84 = load i8*, i8** %context, align 8, !dbg !1422
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !1423
  %extra = bitcast %union.acpi_operand_object* %85 to %struct.acpi_object_extra*, !dbg !1424
  %region_context = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra, i32 0, i32 7, !dbg !1425
  %call107 = call i32 %80(i8* %82, i32 1, i8* %84, i8** %region_context) #3, !dbg !1415
  br label %if.end108, !dbg !1426

if.end108:                                        ; preds = %if.then103, %if.then100
  br label %if.end109, !dbg !1427

if.end109:                                        ; preds = %if.end108, %while.end95
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1428
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %86) #3, !dbg !1429
  br label %if.end110, !dbg !1430

if.end110:                                        ; preds = %if.end109, %if.then70
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !1431
  call void @acpi_ut_delete_object_desc(%union.acpi_operand_object* %87) #3, !dbg !1432
  br label %if.end111, !dbg !1433

if.end111:                                        ; preds = %if.end110, %if.end67
  %88 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1434
  %field = bitcast %union.acpi_operand_object* %88 to %struct.acpi_object_region_field*, !dbg !1436
  %internal_pcc_buffer = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field, i32 0, i32 18, !dbg !1437
  %89 = load i8*, i8** %internal_pcc_buffer, align 8, !dbg !1437
  %tobool112 = icmp ne i8* %89, null, !dbg !1434
  br i1 %tobool112, label %if.then113, label %if.end116, !dbg !1438

if.then113:                                       ; preds = %if.end111
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1439
  %field114 = bitcast %union.acpi_operand_object* %90 to %struct.acpi_object_region_field*, !dbg !1439
  %internal_pcc_buffer115 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field114, i32 0, i32 18, !dbg !1439
  %91 = load i8*, i8** %internal_pcc_buffer115, align 8, !dbg !1439
  call void @acpi_os_free(i8* %91) #3, !dbg !1439
  br label %if.end116, !dbg !1441

if.end116:                                        ; preds = %if.then113, %if.end111
  br label %sw.epilog, !dbg !1442

sw.bb117:                                         ; preds = %if.end
  %92 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1443
  %call118 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %92) #3, !dbg !1444
  store %union.acpi_operand_object* %call118, %union.acpi_operand_object** %second_desc, align 8, !dbg !1445
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !1446
  %tobool119 = icmp ne %union.acpi_operand_object* %93, null, !dbg !1446
  br i1 %tobool119, label %if.then120, label %if.end121, !dbg !1448

if.then120:                                       ; preds = %sw.bb117
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !1449
  call void @acpi_ut_delete_object_desc(%union.acpi_operand_object* %94) #3, !dbg !1451
  br label %if.end121, !dbg !1452

if.end121:                                        ; preds = %if.then120, %sw.bb117
  br label %sw.epilog, !dbg !1453

sw.bb122:                                         ; preds = %if.end
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1454
  %call123 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %95) #3, !dbg !1455
  store %union.acpi_operand_object* %call123, %union.acpi_operand_object** %second_desc, align 8, !dbg !1456
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !1457
  %tobool124 = icmp ne %union.acpi_operand_object* %96, null, !dbg !1457
  br i1 %tobool124, label %if.then125, label %if.end126, !dbg !1459

if.then125:                                       ; preds = %sw.bb122
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !1460
  call void @acpi_ut_delete_object_desc(%union.acpi_operand_object* %97) #3, !dbg !1462
  br label %if.end126, !dbg !1463

if.end126:                                        ; preds = %if.then125, %sw.bb122
  br label %sw.epilog, !dbg !1464

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1465

sw.epilog:                                        ; preds = %sw.default, %if.end126, %if.end121, %if.end116, %if.end56, %sw.bb33, %if.end32, %while.end, %sw.bb15, %if.end14, %if.end5
  %98 = load i8*, i8** %obj_pointer, align 8, !dbg !1466
  %tobool127 = icmp ne i8* %98, null, !dbg !1466
  br i1 %tobool127, label %if.then128, label %if.end129, !dbg !1468

if.then128:                                       ; preds = %sw.epilog
  %99 = load i8*, i8** %obj_pointer, align 8, !dbg !1469
  call void @acpi_os_free(i8* %99) #3, !dbg !1469
  br label %if.end129, !dbg !1471

if.end129:                                        ; preds = %if.then128, %sw.epilog
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1472
  call void @acpi_ut_delete_object_desc(%union.acpi_operand_object* %100) #3, !dbg !1473
  br label %return, !dbg !1474

return:                                           ; preds = %if.end129, %if.then93, %if.then
  ret void, !dbg !1475
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_delete_gpe_block(%struct.acpi_gpe_block_info*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_delete_semaphore(i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_unlink_mutex(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_object_desc(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_address_range(i8 zeroext, %struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!805, !806, !807, !808}
!llvm.ident = !{!809}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !803, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !802, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utdelete.c", directory: "/home/lizy2001/genbc/linux")
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
!17 = !{!18, !24, !31, !47}
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
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 72, elements: !405)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!805 = !{i32 7, !"Dwarf Version", i32 4}
!806 = !{i32 2, !"Debug Info Version", i32 3}
!807 = !{i32 1, !"wchar_size", i32 2}
!808 = !{i32 1, !"Code Model", i32 2}
!809 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!810 = distinct !DISubprogram(name: "acpi_ut_delete_internal_object_list", scope: !3, file: !3, line: 325, type: !811, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !125}
!813 = !{}
!814 = !DILocalVariable(name: "obj_list", arg: 1, scope: !810, file: !3, line: 325, type: !125)
!815 = !DILocation(line: 325, column: 70, scope: !810)
!816 = !DILocalVariable(name: "internal_obj", scope: !810, file: !3, line: 327, type: !125)
!817 = !DILocation(line: 327, column: 30, scope: !810)
!818 = !DILocation(line: 333, column: 22, scope: !819)
!819 = distinct !DILexicalBlock(scope: !810, file: !3, line: 333, column: 2)
!820 = !DILocation(line: 333, column: 20, scope: !819)
!821 = !DILocation(line: 333, column: 7, scope: !819)
!822 = !DILocation(line: 333, column: 33, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !3, line: 333, column: 2)
!824 = !DILocation(line: 333, column: 32, scope: !823)
!825 = !DILocation(line: 333, column: 2, scope: !819)
!826 = !DILocation(line: 334, column: 29, scope: !827)
!827 = distinct !DILexicalBlock(scope: !823, file: !3, line: 333, column: 63)
!828 = !DILocation(line: 334, column: 28, scope: !827)
!829 = !DILocation(line: 334, column: 3, scope: !827)
!830 = !DILocation(line: 335, column: 2, scope: !827)
!831 = !DILocation(line: 333, column: 59, scope: !823)
!832 = !DILocation(line: 333, column: 2, scope: !823)
!833 = distinct !{!833, !825, !834}
!834 = !DILocation(line: 335, column: 2, scope: !819)
!835 = !DILocation(line: 339, column: 2, scope: !810)
!836 = !DILocation(line: 340, column: 2, scope: !810)
!837 = distinct !DISubprogram(name: "acpi_ut_remove_reference", scope: !3, file: !3, line: 701, type: !838, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !813)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !43}
!840 = !DILocalVariable(name: "object", arg: 1, scope: !837, file: !3, line: 701, type: !43)
!841 = !DILocation(line: 701, column: 58, scope: !837)
!842 = !DILocation(line: 710, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !837, file: !3, line: 710, column: 6)
!844 = !DILocation(line: 710, column: 14, scope: !843)
!845 = !DILocation(line: 711, column: 7, scope: !843)
!846 = !DILocation(line: 711, column: 40, scope: !843)
!847 = !DILocation(line: 710, column: 6, scope: !837)
!848 = !DILocation(line: 712, column: 3, scope: !849)
!849 = distinct !DILexicalBlock(scope: !843, file: !3, line: 711, column: 66)
!850 = !DILocation(line: 717, column: 37, scope: !851)
!851 = distinct !DILexicalBlock(scope: !837, file: !3, line: 717, column: 6)
!852 = !DILocation(line: 717, column: 7, scope: !851)
!853 = !DILocation(line: 717, column: 6, scope: !837)
!854 = !DILocation(line: 718, column: 3, scope: !855)
!855 = distinct !DILexicalBlock(scope: !851, file: !3, line: 717, column: 46)
!856 = !DILocation(line: 731, column: 40, scope: !837)
!857 = !DILocation(line: 731, column: 8, scope: !837)
!858 = !DILocation(line: 732, column: 2, scope: !837)
!859 = !DILocation(line: 733, column: 1, scope: !837)
!860 = distinct !DISubprogram(name: "acpi_os_free", scope: !861, file: !861, line: 60, type: !862, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !813)
!861 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!862 = !DISubroutineType(types: !863)
!863 = !{null, !31}
!864 = !DILocalVariable(name: "memory", arg: 1, scope: !860, file: !861, line: 60, type: !31)
!865 = !DILocation(line: 60, column: 39, scope: !860)
!866 = !DILocation(line: 62, column: 8, scope: !860)
!867 = !DILocation(line: 62, column: 2, scope: !860)
!868 = !DILocation(line: 63, column: 1, scope: !860)
!869 = distinct !DISubprogram(name: "acpi_ut_update_object_reference", scope: !3, file: !3, line: 473, type: !870, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !813)
!870 = !DISubroutineType(types: !871)
!871 = !{!18, !43, !47}
!872 = !DILocalVariable(name: "object", arg: 1, scope: !869, file: !3, line: 473, type: !43)
!873 = !DILocation(line: 473, column: 60, scope: !869)
!874 = !DILocalVariable(name: "action", arg: 2, scope: !869, file: !3, line: 473, type: !47)
!875 = !DILocation(line: 473, column: 72, scope: !869)
!876 = !DILocalVariable(name: "status", scope: !869, file: !3, line: 475, type: !18)
!877 = !DILocation(line: 475, column: 14, scope: !869)
!878 = !DILocalVariable(name: "state_list", scope: !869, file: !3, line: 476, type: !276)
!879 = !DILocation(line: 476, column: 28, scope: !869)
!880 = !DILocalVariable(name: "next_object", scope: !869, file: !3, line: 477, type: !43)
!881 = !DILocation(line: 477, column: 29, scope: !869)
!882 = !DILocalVariable(name: "prev_object", scope: !869, file: !3, line: 478, type: !43)
!883 = !DILocation(line: 478, column: 29, scope: !869)
!884 = !DILocalVariable(name: "state", scope: !869, file: !3, line: 479, type: !276)
!885 = !DILocation(line: 479, column: 28, scope: !869)
!886 = !DILocalVariable(name: "i", scope: !869, file: !3, line: 480, type: !20)
!887 = !DILocation(line: 480, column: 6, scope: !869)
!888 = !DILocation(line: 484, column: 2, scope: !869)
!889 = !DILocation(line: 484, column: 9, scope: !869)
!890 = !DILocation(line: 488, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !3, line: 488, column: 7)
!892 = distinct !DILexicalBlock(scope: !869, file: !3, line: 484, column: 17)
!893 = !DILocation(line: 488, column: 40, scope: !891)
!894 = !DILocation(line: 488, column: 7, scope: !892)
!895 = !DILocation(line: 491, column: 4, scope: !896)
!896 = distinct !DILexicalBlock(scope: !891, file: !3, line: 488, column: 65)
!897 = !DILocation(line: 498, column: 11, scope: !892)
!898 = !DILocation(line: 498, column: 19, scope: !892)
!899 = !DILocation(line: 498, column: 26, scope: !892)
!900 = !DILocation(line: 498, column: 3, scope: !892)
!901 = !DILocation(line: 507, column: 11, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 507, column: 4)
!903 = distinct !DILexicalBlock(scope: !892, file: !3, line: 498, column: 32)
!904 = !DILocation(line: 507, column: 9, scope: !902)
!905 = !DILocation(line: 507, column: 16, scope: !906)
!906 = distinct !DILexicalBlock(scope: !902, file: !3, line: 507, column: 4)
!907 = !DILocation(line: 507, column: 18, scope: !906)
!908 = !DILocation(line: 507, column: 4, scope: !902)
!909 = !DILocation(line: 509, column: 9, scope: !910)
!910 = distinct !DILexicalBlock(scope: !906, file: !3, line: 507, column: 48)
!911 = !DILocation(line: 509, column: 17, scope: !910)
!912 = !DILocation(line: 509, column: 31, scope: !910)
!913 = !DILocation(line: 509, column: 43, scope: !910)
!914 = !DILocation(line: 508, column: 17, scope: !910)
!915 = !DILocation(line: 510, column: 5, scope: !910)
!916 = !DILocation(line: 510, column: 12, scope: !910)
!917 = !DILocation(line: 512, column: 10, scope: !918)
!918 = distinct !DILexicalBlock(scope: !910, file: !3, line: 510, column: 25)
!919 = !DILocation(line: 512, column: 23, scope: !918)
!920 = !DILocation(line: 512, column: 30, scope: !918)
!921 = !DILocation(line: 512, column: 35, scope: !918)
!922 = !DILocation(line: 511, column: 18, scope: !918)
!923 = !DILocation(line: 513, column: 31, scope: !918)
!924 = !DILocation(line: 514, column: 10, scope: !918)
!925 = !DILocation(line: 513, column: 6, scope: !918)
!926 = !DILocation(line: 515, column: 20, scope: !918)
!927 = !DILocation(line: 515, column: 18, scope: !918)
!928 = distinct !{!928, !915, !929}
!929 = !DILocation(line: 516, column: 5, scope: !910)
!930 = !DILocation(line: 517, column: 4, scope: !910)
!931 = !DILocation(line: 507, column: 44, scope: !906)
!932 = !DILocation(line: 507, column: 4, scope: !906)
!933 = distinct !{!933, !908, !934}
!934 = !DILocation(line: 517, column: 4, scope: !902)
!935 = !DILocation(line: 518, column: 4, scope: !903)
!936 = !DILocation(line: 525, column: 11, scope: !937)
!937 = distinct !DILexicalBlock(scope: !903, file: !3, line: 525, column: 4)
!938 = !DILocation(line: 525, column: 9, scope: !937)
!939 = !DILocation(line: 525, column: 16, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !3, line: 525, column: 4)
!941 = !DILocation(line: 525, column: 20, scope: !940)
!942 = !DILocation(line: 525, column: 28, scope: !940)
!943 = !DILocation(line: 525, column: 36, scope: !940)
!944 = !DILocation(line: 525, column: 18, scope: !940)
!945 = !DILocation(line: 525, column: 4, scope: !937)
!946 = !DILocation(line: 530, column: 19, scope: !947)
!947 = distinct !DILexicalBlock(scope: !940, file: !3, line: 525, column: 48)
!948 = !DILocation(line: 530, column: 27, scope: !947)
!949 = !DILocation(line: 530, column: 35, scope: !947)
!950 = !DILocation(line: 530, column: 44, scope: !947)
!951 = !DILocation(line: 530, column: 17, scope: !947)
!952 = !DILocation(line: 531, column: 10, scope: !953)
!953 = distinct !DILexicalBlock(scope: !947, file: !3, line: 531, column: 9)
!954 = !DILocation(line: 531, column: 9, scope: !947)
!955 = !DILocation(line: 532, column: 6, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !3, line: 531, column: 23)
!957 = !DILocation(line: 535, column: 13, scope: !947)
!958 = !DILocation(line: 535, column: 26, scope: !947)
!959 = !DILocation(line: 535, column: 33, scope: !947)
!960 = !DILocation(line: 535, column: 5, scope: !947)
!961 = !DILocation(line: 544, column: 31, scope: !962)
!962 = distinct !DILexicalBlock(scope: !947, file: !3, line: 535, column: 39)
!963 = !DILocation(line: 545, column: 10, scope: !962)
!964 = !DILocation(line: 544, column: 6, scope: !962)
!965 = !DILocation(line: 546, column: 6, scope: !962)
!966 = !DILocation(line: 555, column: 11, scope: !962)
!967 = !DILocation(line: 555, column: 24, scope: !962)
!968 = !DILocation(line: 554, column: 10, scope: !962)
!969 = !DILocation(line: 553, column: 13, scope: !962)
!970 = !DILocation(line: 556, column: 10, scope: !971)
!971 = distinct !DILexicalBlock(scope: !962, file: !3, line: 556, column: 10)
!972 = !DILocation(line: 556, column: 10, scope: !962)
!973 = !DILocation(line: 557, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !971, file: !3, line: 556, column: 32)
!975 = !DILocation(line: 559, column: 6, scope: !962)
!976 = !DILocation(line: 561, column: 4, scope: !947)
!977 = !DILocation(line: 525, column: 44, scope: !940)
!978 = !DILocation(line: 525, column: 4, scope: !940)
!979 = distinct !{!979, !945, !980}
!980 = !DILocation(line: 561, column: 4, scope: !937)
!981 = !DILocation(line: 563, column: 16, scope: !903)
!982 = !DILocation(line: 564, column: 4, scope: !903)
!983 = !DILocation(line: 568, column: 18, scope: !903)
!984 = !DILocation(line: 568, column: 26, scope: !903)
!985 = !DILocation(line: 568, column: 39, scope: !903)
!986 = !DILocation(line: 568, column: 16, scope: !903)
!987 = !DILocation(line: 569, column: 4, scope: !903)
!988 = !DILocation(line: 573, column: 18, scope: !903)
!989 = !DILocation(line: 573, column: 26, scope: !903)
!990 = !DILocation(line: 573, column: 37, scope: !903)
!991 = !DILocation(line: 573, column: 16, scope: !903)
!992 = !DILocation(line: 575, column: 45, scope: !903)
!993 = !DILocation(line: 576, column: 10, scope: !903)
!994 = !DILocation(line: 577, column: 10, scope: !903)
!995 = !DILocation(line: 578, column: 10, scope: !903)
!996 = !DILocation(line: 575, column: 8, scope: !903)
!997 = !DILocation(line: 574, column: 11, scope: !903)
!998 = !DILocation(line: 580, column: 8, scope: !999)
!999 = distinct !DILexicalBlock(scope: !903, file: !3, line: 580, column: 8)
!1000 = !DILocation(line: 580, column: 8, scope: !903)
!1001 = !DILocation(line: 581, column: 5, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !3, line: 580, column: 30)
!1003 = !DILocation(line: 583, column: 4, scope: !903)
!1004 = !DILocation(line: 587, column: 18, scope: !903)
!1005 = !DILocation(line: 587, column: 26, scope: !903)
!1006 = !DILocation(line: 587, column: 38, scope: !903)
!1007 = !DILocation(line: 587, column: 16, scope: !903)
!1008 = !DILocation(line: 589, column: 45, scope: !903)
!1009 = !DILocation(line: 590, column: 10, scope: !903)
!1010 = !DILocation(line: 591, column: 10, scope: !903)
!1011 = !DILocation(line: 592, column: 10, scope: !903)
!1012 = !DILocation(line: 589, column: 8, scope: !903)
!1013 = !DILocation(line: 588, column: 11, scope: !903)
!1014 = !DILocation(line: 594, column: 8, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !903, file: !3, line: 594, column: 8)
!1016 = !DILocation(line: 594, column: 8, scope: !903)
!1017 = !DILocation(line: 595, column: 5, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 594, column: 30)
!1019 = !DILocation(line: 597, column: 4, scope: !903)
!1020 = !DILocation(line: 605, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !903, file: !3, line: 605, column: 8)
!1022 = !DILocation(line: 605, column: 17, scope: !1021)
!1023 = !DILocation(line: 605, column: 27, scope: !1021)
!1024 = !DILocation(line: 605, column: 33, scope: !1021)
!1025 = !DILocation(line: 605, column: 57, scope: !1021)
!1026 = !DILocation(line: 606, column: 9, scope: !1021)
!1027 = !DILocation(line: 606, column: 17, scope: !1021)
!1028 = !DILocation(line: 606, column: 27, scope: !1021)
!1029 = !DILocation(line: 606, column: 33, scope: !1021)
!1030 = !DILocation(line: 605, column: 8, scope: !903)
!1031 = !DILocation(line: 607, column: 19, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 606, column: 57)
!1033 = !DILocation(line: 607, column: 27, scope: !1032)
!1034 = !DILocation(line: 607, column: 37, scope: !1032)
!1035 = !DILocation(line: 607, column: 17, scope: !1032)
!1036 = !DILocation(line: 608, column: 4, scope: !1032)
!1037 = !DILocation(line: 609, column: 4, scope: !903)
!1038 = !DILocation(line: 615, column: 4, scope: !903)
!1039 = !DILocation(line: 623, column: 28, scope: !892)
!1040 = !DILocation(line: 623, column: 36, scope: !892)
!1041 = !DILocation(line: 623, column: 3, scope: !892)
!1042 = !DILocation(line: 624, column: 10, scope: !892)
!1043 = !DILocation(line: 628, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !892, file: !3, line: 628, column: 7)
!1045 = !DILocation(line: 628, column: 7, scope: !892)
!1046 = !DILocation(line: 629, column: 13, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 628, column: 20)
!1048 = !DILocation(line: 629, column: 11, scope: !1047)
!1049 = !DILocation(line: 630, column: 16, scope: !1047)
!1050 = !DILocation(line: 631, column: 3, scope: !1047)
!1051 = !DILocation(line: 631, column: 14, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 631, column: 14)
!1053 = !DILocation(line: 631, column: 14, scope: !1044)
!1054 = !DILocation(line: 632, column: 12, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 631, column: 26)
!1056 = !DILocation(line: 632, column: 10, scope: !1055)
!1057 = !DILocation(line: 633, column: 13, scope: !1055)
!1058 = !DILocation(line: 633, column: 20, scope: !1055)
!1059 = !DILocation(line: 633, column: 27, scope: !1055)
!1060 = !DILocation(line: 633, column: 11, scope: !1055)
!1061 = !DILocation(line: 634, column: 33, scope: !1055)
!1062 = !DILocation(line: 634, column: 4, scope: !1055)
!1063 = !DILocation(line: 635, column: 3, scope: !1055)
!1064 = distinct !{!1064, !888, !1065}
!1065 = !DILocation(line: 636, column: 2, scope: !869)
!1066 = !DILocation(line: 638, column: 2, scope: !869)
!1067 = !DILabel(scope: !869, name: "error_exit", file: !3, line: 640)
!1068 = !DILocation(line: 640, column: 1, scope: !869)
!1069 = !DILocation(line: 642, column: 2, scope: !869)
!1070 = !DILocation(line: 647, column: 2, scope: !869)
!1071 = !DILocation(line: 647, column: 9, scope: !869)
!1072 = !DILocation(line: 648, column: 11, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !869, file: !3, line: 647, column: 21)
!1074 = !DILocation(line: 648, column: 9, scope: !1073)
!1075 = !DILocation(line: 649, column: 32, scope: !1073)
!1076 = !DILocation(line: 649, column: 3, scope: !1073)
!1077 = distinct !{!1077, !1070, !1078}
!1078 = !DILocation(line: 650, column: 2, scope: !869)
!1079 = !DILocation(line: 652, column: 10, scope: !869)
!1080 = !DILocation(line: 652, column: 2, scope: !869)
!1081 = !DILocation(line: 653, column: 1, scope: !869)
!1082 = distinct !DISubprogram(name: "acpi_ut_update_ref_count", scope: !3, file: !3, line: 357, type: !1083, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !813)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !43, !20}
!1085 = !DILocalVariable(name: "object", arg: 1, scope: !1082, file: !3, line: 357, type: !43)
!1086 = !DILocation(line: 357, column: 53, scope: !1082)
!1087 = !DILocalVariable(name: "action", arg: 2, scope: !1082, file: !3, line: 357, type: !20)
!1088 = !DILocation(line: 357, column: 65, scope: !1082)
!1089 = !DILocalVariable(name: "original_count", scope: !1082, file: !3, line: 359, type: !47)
!1090 = !DILocation(line: 359, column: 6, scope: !1082)
!1091 = !DILocalVariable(name: "new_count", scope: !1082, file: !3, line: 360, type: !47)
!1092 = !DILocation(line: 360, column: 6, scope: !1082)
!1093 = !DILocalVariable(name: "lock_flags", scope: !1082, file: !3, line: 361, type: !1094)
!1094 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1095 = !DILocation(line: 361, column: 17, scope: !1082)
!1096 = !DILocalVariable(name: "message", scope: !1082, file: !3, line: 362, type: !76)
!1097 = !DILocation(line: 362, column: 8, scope: !1082)
!1098 = !DILocation(line: 366, column: 7, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 366, column: 6)
!1100 = !DILocation(line: 366, column: 6, scope: !1082)
!1101 = !DILocation(line: 367, column: 3, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 366, column: 15)
!1103 = !DILocation(line: 374, column: 36, scope: !1082)
!1104 = !DILocation(line: 374, column: 15, scope: !1082)
!1105 = !DILocation(line: 374, column: 13, scope: !1082)
!1106 = !DILocation(line: 375, column: 19, scope: !1082)
!1107 = !DILocation(line: 375, column: 27, scope: !1082)
!1108 = !DILocation(line: 375, column: 34, scope: !1082)
!1109 = !DILocation(line: 375, column: 17, scope: !1082)
!1110 = !DILocation(line: 379, column: 10, scope: !1082)
!1111 = !DILocation(line: 379, column: 2, scope: !1082)
!1112 = !DILocation(line: 382, column: 15, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 379, column: 18)
!1114 = !DILocation(line: 382, column: 30, scope: !1113)
!1115 = !DILocation(line: 382, column: 13, scope: !1113)
!1116 = !DILocation(line: 383, column: 36, scope: !1113)
!1117 = !DILocation(line: 383, column: 3, scope: !1113)
!1118 = !DILocation(line: 383, column: 11, scope: !1113)
!1119 = !DILocation(line: 383, column: 18, scope: !1113)
!1120 = !DILocation(line: 383, column: 34, scope: !1113)
!1121 = !DILocation(line: 384, column: 24, scope: !1113)
!1122 = !DILocation(line: 384, column: 55, scope: !1113)
!1123 = !DILocation(line: 384, column: 3, scope: !1113)
!1124 = !DILocation(line: 388, column: 8, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 388, column: 7)
!1126 = !DILocation(line: 388, column: 7, scope: !1113)
!1127 = !DILocation(line: 389, column: 4, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 388, column: 24)
!1129 = !DILocation(line: 392, column: 3, scope: !1128)
!1130 = !DILocation(line: 399, column: 11, scope: !1113)
!1131 = !DILocation(line: 400, column: 3, scope: !1113)
!1132 = !DILocation(line: 406, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 406, column: 7)
!1134 = !DILocation(line: 406, column: 7, scope: !1113)
!1135 = !DILocation(line: 407, column: 16, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 406, column: 23)
!1137 = !DILocation(line: 407, column: 31, scope: !1136)
!1138 = !DILocation(line: 407, column: 14, scope: !1136)
!1139 = !DILocation(line: 408, column: 37, scope: !1136)
!1140 = !DILocation(line: 408, column: 4, scope: !1136)
!1141 = !DILocation(line: 408, column: 12, scope: !1136)
!1142 = !DILocation(line: 408, column: 19, scope: !1136)
!1143 = !DILocation(line: 408, column: 35, scope: !1136)
!1144 = !DILocation(line: 409, column: 3, scope: !1136)
!1145 = !DILocation(line: 411, column: 24, scope: !1113)
!1146 = !DILocation(line: 411, column: 55, scope: !1113)
!1147 = !DILocation(line: 411, column: 3, scope: !1113)
!1148 = !DILocation(line: 413, column: 8, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 413, column: 7)
!1150 = !DILocation(line: 413, column: 7, scope: !1113)
!1151 = !DILocation(line: 414, column: 4, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 413, column: 24)
!1153 = !DILocation(line: 417, column: 3, scope: !1152)
!1154 = !DILocation(line: 426, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 426, column: 7)
!1156 = !DILocation(line: 426, column: 17, scope: !1155)
!1157 = !DILocation(line: 426, column: 7, scope: !1113)
!1158 = !DILocation(line: 427, column: 32, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 426, column: 23)
!1160 = !DILocation(line: 427, column: 4, scope: !1159)
!1161 = !DILocation(line: 428, column: 3, scope: !1159)
!1162 = !DILocation(line: 429, column: 11, scope: !1113)
!1163 = !DILocation(line: 430, column: 3, scope: !1113)
!1164 = !DILocation(line: 434, column: 24, scope: !1113)
!1165 = !DILocation(line: 434, column: 55, scope: !1113)
!1166 = !DILocation(line: 434, column: 3, scope: !1113)
!1167 = !DILocation(line: 435, column: 3, scope: !1113)
!1168 = !DILocation(line: 437, column: 3, scope: !1113)
!1169 = !DILocation(line: 444, column: 6, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 444, column: 6)
!1171 = !DILocation(line: 444, column: 16, scope: !1170)
!1172 = !DILocation(line: 444, column: 6, scope: !1082)
!1173 = !DILocation(line: 445, column: 3, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 444, column: 44)
!1175 = !DILocation(line: 448, column: 2, scope: !1174)
!1176 = !DILocation(line: 449, column: 1, scope: !1082)
!1177 = distinct !DISubprogram(name: "acpi_ut_add_reference", scope: !3, file: !3, line: 668, type: !838, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !813)
!1178 = !DILocalVariable(name: "object", arg: 1, scope: !1177, file: !3, line: 668, type: !43)
!1179 = !DILocation(line: 668, column: 55, scope: !1177)
!1180 = !DILocation(line: 675, column: 37, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 675, column: 6)
!1182 = !DILocation(line: 675, column: 7, scope: !1181)
!1183 = !DILocation(line: 675, column: 6, scope: !1177)
!1184 = !DILocation(line: 676, column: 3, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 675, column: 46)
!1186 = !DILocation(line: 685, column: 40, scope: !1177)
!1187 = !DILocation(line: 685, column: 8, scope: !1177)
!1188 = !DILocation(line: 686, column: 2, scope: !1177)
!1189 = !DILocation(line: 687, column: 1, scope: !1177)
!1190 = distinct !DISubprogram(name: "acpi_ut_delete_internal_obj", scope: !3, file: !3, line: 36, type: !838, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !813)
!1191 = !DILocalVariable(name: "object", arg: 1, scope: !1190, file: !3, line: 36, type: !43)
!1192 = !DILocation(line: 36, column: 68, scope: !1190)
!1193 = !DILocalVariable(name: "obj_pointer", scope: !1190, file: !3, line: 38, type: !31)
!1194 = !DILocation(line: 38, column: 8, scope: !1190)
!1195 = !DILocalVariable(name: "handler_desc", scope: !1190, file: !3, line: 39, type: !43)
!1196 = !DILocation(line: 39, column: 29, scope: !1190)
!1197 = !DILocalVariable(name: "second_desc", scope: !1190, file: !3, line: 40, type: !43)
!1198 = !DILocation(line: 40, column: 29, scope: !1190)
!1199 = !DILocalVariable(name: "next_desc", scope: !1190, file: !3, line: 41, type: !43)
!1200 = !DILocation(line: 41, column: 29, scope: !1190)
!1201 = !DILocalVariable(name: "start_desc", scope: !1190, file: !3, line: 42, type: !43)
!1202 = !DILocation(line: 42, column: 29, scope: !1190)
!1203 = !DILocalVariable(name: "last_obj_ptr", scope: !1190, file: !3, line: 43, type: !125)
!1204 = !DILocation(line: 43, column: 30, scope: !1190)
!1205 = !DILocation(line: 47, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 47, column: 6)
!1207 = !DILocation(line: 47, column: 6, scope: !1190)
!1208 = !DILocation(line: 48, column: 3, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 47, column: 15)
!1210 = !DILocation(line: 55, column: 10, scope: !1190)
!1211 = !DILocation(line: 55, column: 18, scope: !1190)
!1212 = !DILocation(line: 55, column: 25, scope: !1190)
!1213 = !DILocation(line: 55, column: 2, scope: !1190)
!1214 = !DILocation(line: 64, column: 9, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 64, column: 7)
!1216 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 55, column: 31)
!1217 = !DILocation(line: 64, column: 17, scope: !1215)
!1218 = !DILocation(line: 64, column: 24, scope: !1215)
!1219 = !DILocation(line: 64, column: 30, scope: !1215)
!1220 = !DILocation(line: 64, column: 7, scope: !1216)
!1221 = !DILocation(line: 68, column: 18, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 64, column: 56)
!1223 = !DILocation(line: 68, column: 26, scope: !1222)
!1224 = !DILocation(line: 68, column: 33, scope: !1222)
!1225 = !DILocation(line: 68, column: 16, scope: !1222)
!1226 = !DILocation(line: 69, column: 3, scope: !1222)
!1227 = !DILocation(line: 70, column: 3, scope: !1216)
!1228 = !DILocation(line: 80, column: 9, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 80, column: 7)
!1230 = !DILocation(line: 80, column: 17, scope: !1229)
!1231 = !DILocation(line: 80, column: 24, scope: !1229)
!1232 = !DILocation(line: 80, column: 30, scope: !1229)
!1233 = !DILocation(line: 80, column: 7, scope: !1216)
!1234 = !DILocation(line: 84, column: 18, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 80, column: 56)
!1236 = !DILocation(line: 84, column: 26, scope: !1235)
!1237 = !DILocation(line: 84, column: 33, scope: !1235)
!1238 = !DILocation(line: 84, column: 16, scope: !1235)
!1239 = !DILocation(line: 85, column: 3, scope: !1235)
!1240 = !DILocation(line: 86, column: 3, scope: !1216)
!1241 = !DILocation(line: 101, column: 17, scope: !1216)
!1242 = !DILocation(line: 101, column: 25, scope: !1216)
!1243 = !DILocation(line: 101, column: 33, scope: !1216)
!1244 = !DILocation(line: 101, column: 15, scope: !1216)
!1245 = !DILocation(line: 102, column: 3, scope: !1216)
!1246 = !DILocation(line: 110, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 110, column: 7)
!1248 = !DILocation(line: 110, column: 15, scope: !1247)
!1249 = !DILocation(line: 110, column: 22, scope: !1247)
!1250 = !DILocation(line: 110, column: 7, scope: !1216)
!1251 = !DILocation(line: 111, column: 35, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 110, column: 33)
!1253 = !DILocation(line: 111, column: 43, scope: !1252)
!1254 = !DILocation(line: 112, column: 14, scope: !1252)
!1255 = !DILocation(line: 111, column: 10, scope: !1252)
!1256 = !DILocation(line: 113, column: 3, scope: !1252)
!1257 = !DILocation(line: 122, column: 18, scope: !1216)
!1258 = !DILocation(line: 122, column: 26, scope: !1216)
!1259 = !DILocation(line: 122, column: 40, scope: !1216)
!1260 = !DILocation(line: 122, column: 16, scope: !1216)
!1261 = !DILocation(line: 123, column: 3, scope: !1216)
!1262 = !DILocation(line: 123, column: 10, scope: !1216)
!1263 = !DILocation(line: 124, column: 16, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 123, column: 24)
!1265 = !DILocation(line: 124, column: 30, scope: !1264)
!1266 = !DILocation(line: 124, column: 44, scope: !1264)
!1267 = !DILocation(line: 124, column: 14, scope: !1264)
!1268 = !DILocation(line: 125, column: 29, scope: !1264)
!1269 = !DILocation(line: 125, column: 4, scope: !1264)
!1270 = !DILocation(line: 126, column: 19, scope: !1264)
!1271 = !DILocation(line: 126, column: 17, scope: !1264)
!1272 = distinct !{!1272, !1261, !1273}
!1273 = !DILocation(line: 127, column: 3, scope: !1216)
!1274 = !DILocation(line: 128, column: 3, scope: !1216)
!1275 = !DILocation(line: 136, column: 7, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 136, column: 7)
!1277 = !DILocation(line: 136, column: 17, scope: !1276)
!1278 = !DILocation(line: 136, column: 14, scope: !1276)
!1279 = !DILocation(line: 136, column: 7, scope: !1216)
!1280 = !DILocation(line: 142, column: 9, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 136, column: 45)
!1282 = !DILocation(line: 141, column: 8, scope: !1281)
!1283 = !DILocation(line: 143, column: 35, scope: !1281)
!1284 = !DILocation(line: 145, column: 4, scope: !1281)
!1285 = !DILocation(line: 146, column: 31, scope: !1281)
!1286 = !DILocation(line: 147, column: 3, scope: !1281)
!1287 = !DILocation(line: 148, column: 25, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 147, column: 10)
!1289 = !DILocation(line: 148, column: 4, scope: !1288)
!1290 = !DILocation(line: 149, column: 4, scope: !1288)
!1291 = !DILocation(line: 151, column: 3, scope: !1216)
!1292 = !DILocation(line: 159, column: 34, scope: !1216)
!1293 = !DILocation(line: 159, column: 42, scope: !1216)
!1294 = !DILocation(line: 159, column: 48, scope: !1216)
!1295 = !DILocation(line: 159, column: 9, scope: !1216)
!1296 = !DILocation(line: 160, column: 3, scope: !1216)
!1297 = !DILocation(line: 160, column: 11, scope: !1216)
!1298 = !DILocation(line: 160, column: 17, scope: !1216)
!1299 = !DILocation(line: 160, column: 30, scope: !1216)
!1300 = !DILocation(line: 161, column: 3, scope: !1216)
!1301 = !DILocation(line: 170, column: 7, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 170, column: 7)
!1303 = !DILocation(line: 170, column: 15, scope: !1302)
!1304 = !DILocation(line: 170, column: 22, scope: !1302)
!1305 = !DILocation(line: 170, column: 7, scope: !1216)
!1306 = !DILocation(line: 171, column: 4, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 170, column: 29)
!1308 = !DILocation(line: 173, column: 31, scope: !1307)
!1309 = !DILocation(line: 173, column: 39, scope: !1307)
!1310 = !DILocation(line: 173, column: 46, scope: !1307)
!1311 = !DILocation(line: 173, column: 4, scope: !1307)
!1312 = !DILocation(line: 174, column: 4, scope: !1307)
!1313 = !DILocation(line: 174, column: 12, scope: !1307)
!1314 = !DILocation(line: 174, column: 19, scope: !1307)
!1315 = !DILocation(line: 174, column: 25, scope: !1307)
!1316 = !DILocation(line: 175, column: 3, scope: !1307)
!1317 = !DILocation(line: 177, column: 7, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 177, column: 7)
!1319 = !DILocation(line: 177, column: 15, scope: !1318)
!1320 = !DILocation(line: 177, column: 22, scope: !1318)
!1321 = !DILocation(line: 177, column: 7, scope: !1216)
!1322 = !DILocation(line: 178, column: 4, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 177, column: 28)
!1324 = !DILocation(line: 178, column: 12, scope: !1323)
!1325 = !DILocation(line: 178, column: 19, scope: !1323)
!1326 = !DILocation(line: 178, column: 24, scope: !1323)
!1327 = !DILocation(line: 179, column: 3, scope: !1323)
!1328 = !DILocation(line: 180, column: 3, scope: !1216)
!1329 = !DILocation(line: 191, column: 9, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 191, column: 7)
!1331 = !DILocation(line: 191, column: 17, scope: !1330)
!1332 = !DILocation(line: 191, column: 24, scope: !1330)
!1333 = !DILocation(line: 191, column: 30, scope: !1330)
!1334 = !DILocation(line: 191, column: 36, scope: !1330)
!1335 = !DILocation(line: 191, column: 7, scope: !1216)
!1336 = !DILocation(line: 192, column: 33, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 191, column: 56)
!1338 = !DILocation(line: 192, column: 41, scope: !1337)
!1339 = !DILocation(line: 192, column: 48, scope: !1337)
!1340 = !DILocation(line: 193, column: 12, scope: !1337)
!1341 = !DILocation(line: 193, column: 20, scope: !1337)
!1342 = !DILocation(line: 193, column: 27, scope: !1337)
!1343 = !DILocation(line: 192, column: 4, scope: !1337)
!1344 = !DILocation(line: 194, column: 3, scope: !1337)
!1345 = !DILocation(line: 196, column: 46, scope: !1216)
!1346 = !DILocation(line: 196, column: 17, scope: !1216)
!1347 = !DILocation(line: 196, column: 15, scope: !1216)
!1348 = !DILocation(line: 197, column: 7, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 197, column: 7)
!1350 = !DILocation(line: 197, column: 7, scope: !1216)
!1351 = !DILocation(line: 203, column: 19, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 197, column: 20)
!1353 = !DILocation(line: 203, column: 27, scope: !1352)
!1354 = !DILocation(line: 203, column: 34, scope: !1352)
!1355 = !DILocation(line: 203, column: 17, scope: !1352)
!1356 = !DILocation(line: 204, column: 8, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 204, column: 8)
!1358 = !DILocation(line: 204, column: 8, scope: !1352)
!1359 = !DILocation(line: 206, column: 9, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 204, column: 22)
!1361 = !DILocation(line: 206, column: 23, scope: !1360)
!1362 = !DILocation(line: 206, column: 37, scope: !1360)
!1363 = !DILocation(line: 205, column: 15, scope: !1360)
!1364 = !DILocation(line: 207, column: 18, scope: !1360)
!1365 = !DILocation(line: 207, column: 16, scope: !1360)
!1366 = !DILocation(line: 209, column: 10, scope: !1360)
!1367 = !DILocation(line: 209, column: 24, scope: !1360)
!1368 = !DILocation(line: 209, column: 38, scope: !1360)
!1369 = !DILocation(line: 208, column: 18, scope: !1360)
!1370 = !DILocation(line: 213, column: 5, scope: !1360)
!1371 = !DILocation(line: 213, column: 12, scope: !1360)
!1372 = !DILocation(line: 214, column: 10, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 214, column: 10)
!1374 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 213, column: 23)
!1375 = !DILocation(line: 214, column: 23, scope: !1373)
!1376 = !DILocation(line: 214, column: 20, scope: !1373)
!1377 = !DILocation(line: 214, column: 10, scope: !1374)
!1378 = !DILocation(line: 216, column: 11, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 214, column: 31)
!1380 = !DILocation(line: 216, column: 22, scope: !1379)
!1381 = !DILocation(line: 216, column: 29, scope: !1379)
!1382 = !DILocation(line: 215, column: 8, scope: !1379)
!1383 = !DILocation(line: 215, column: 21, scope: !1379)
!1384 = !DILocation(line: 217, column: 7, scope: !1379)
!1385 = !DILocation(line: 222, column: 22, scope: !1374)
!1386 = !DILocation(line: 222, column: 33, scope: !1374)
!1387 = !DILocation(line: 222, column: 40, scope: !1374)
!1388 = !DILocation(line: 222, column: 19, scope: !1374)
!1389 = !DILocation(line: 223, column: 18, scope: !1374)
!1390 = !DILocation(line: 223, column: 29, scope: !1374)
!1391 = !DILocation(line: 223, column: 36, scope: !1374)
!1392 = !DILocation(line: 223, column: 16, scope: !1374)
!1393 = !DILocation(line: 227, column: 10, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 227, column: 10)
!1395 = !DILocation(line: 227, column: 23, scope: !1394)
!1396 = !DILocation(line: 227, column: 20, scope: !1394)
!1397 = !DILocation(line: 227, column: 10, scope: !1374)
!1398 = !DILocation(line: 228, column: 7, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 227, column: 35)
!1400 = !DILocation(line: 231, column: 7, scope: !1399)
!1401 = distinct !{!1401, !1370, !1402}
!1402 = !DILocation(line: 233, column: 5, scope: !1360)
!1403 = !DILocation(line: 235, column: 9, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 235, column: 9)
!1405 = !DILocation(line: 235, column: 23, scope: !1404)
!1406 = !DILocation(line: 235, column: 37, scope: !1404)
!1407 = !DILocation(line: 235, column: 51, scope: !1404)
!1408 = !DILocation(line: 235, column: 9, scope: !1360)
!1409 = !DILocation(line: 240, column: 10, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 240, column: 10)
!1411 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 236, column: 46)
!1412 = !DILocation(line: 240, column: 24, scope: !1410)
!1413 = !DILocation(line: 240, column: 38, scope: !1410)
!1414 = !DILocation(line: 240, column: 10, scope: !1411)
!1415 = !DILocation(line: 241, column: 13, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 240, column: 45)
!1417 = !DILocation(line: 242, column: 11, scope: !1416)
!1418 = !DILocation(line: 242, column: 25, scope: !1416)
!1419 = !DILocation(line: 242, column: 31, scope: !1416)
!1420 = !DILocation(line: 244, column: 10, scope: !1416)
!1421 = !DILocation(line: 245, column: 10, scope: !1416)
!1422 = !DILocation(line: 246, column: 10, scope: !1416)
!1423 = !DILocation(line: 247, column: 11, scope: !1416)
!1424 = !DILocation(line: 248, column: 10, scope: !1416)
!1425 = !DILocation(line: 249, column: 10, scope: !1416)
!1426 = !DILocation(line: 250, column: 6, scope: !1416)
!1427 = !DILocation(line: 251, column: 5, scope: !1411)
!1428 = !DILocation(line: 253, column: 30, scope: !1360)
!1429 = !DILocation(line: 253, column: 5, scope: !1360)
!1430 = !DILocation(line: 254, column: 4, scope: !1360)
!1431 = !DILocation(line: 258, column: 31, scope: !1352)
!1432 = !DILocation(line: 258, column: 4, scope: !1352)
!1433 = !DILocation(line: 259, column: 3, scope: !1352)
!1434 = !DILocation(line: 260, column: 7, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 260, column: 7)
!1436 = !DILocation(line: 260, column: 15, scope: !1435)
!1437 = !DILocation(line: 260, column: 21, scope: !1435)
!1438 = !DILocation(line: 260, column: 7, scope: !1216)
!1439 = !DILocation(line: 261, column: 4, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 260, column: 42)
!1441 = !DILocation(line: 262, column: 3, scope: !1440)
!1442 = !DILocation(line: 264, column: 3, scope: !1216)
!1443 = !DILocation(line: 271, column: 46, scope: !1216)
!1444 = !DILocation(line: 271, column: 17, scope: !1216)
!1445 = !DILocation(line: 271, column: 15, scope: !1216)
!1446 = !DILocation(line: 272, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 272, column: 7)
!1448 = !DILocation(line: 272, column: 7, scope: !1216)
!1449 = !DILocation(line: 273, column: 31, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 272, column: 20)
!1451 = !DILocation(line: 273, column: 4, scope: !1450)
!1452 = !DILocation(line: 274, column: 3, scope: !1450)
!1453 = !DILocation(line: 275, column: 3, scope: !1216)
!1454 = !DILocation(line: 282, column: 46, scope: !1216)
!1455 = !DILocation(line: 282, column: 17, scope: !1216)
!1456 = !DILocation(line: 282, column: 15, scope: !1216)
!1457 = !DILocation(line: 283, column: 7, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 283, column: 7)
!1459 = !DILocation(line: 283, column: 7, scope: !1216)
!1460 = !DILocation(line: 284, column: 31, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 283, column: 20)
!1462 = !DILocation(line: 284, column: 4, scope: !1461)
!1463 = !DILocation(line: 285, column: 3, scope: !1461)
!1464 = !DILocation(line: 286, column: 3, scope: !1216)
!1465 = !DILocation(line: 290, column: 3, scope: !1216)
!1466 = !DILocation(line: 295, column: 6, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 295, column: 6)
!1468 = !DILocation(line: 295, column: 6, scope: !1190)
!1469 = !DILocation(line: 298, column: 3, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 295, column: 19)
!1471 = !DILocation(line: 299, column: 2, scope: !1470)
!1472 = !DILocation(line: 308, column: 29, scope: !1190)
!1473 = !DILocation(line: 308, column: 2, scope: !1190)
!1474 = !DILocation(line: 309, column: 2, scope: !1190)
!1475 = !DILocation(line: 310, column: 1, scope: !1190)
