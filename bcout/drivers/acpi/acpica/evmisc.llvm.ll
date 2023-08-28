; ModuleID = '../bcout/drivers/acpi/acpica/evmisc.llvm.bc'
source_filename = "drivers/acpi/acpica/evmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_global_notify_handler = type { void (i8*, i32, i8*)*, i8* }
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
%struct.acpi_object_notify_common = type { %union.acpi_operand_object*, i8, i8, i16, i8, [2 x %union.acpi_operand_object*], %union.acpi_operand_object* }
%struct.acpi_common_state = type { i8*, i8, i8, i16, i16 }
%struct.acpi_notify_info = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_global_notify_handler* }
%struct.acpi_object_notify_handler = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, i32, void (i8*, i32, i8*)*, i8*, [2 x %union.acpi_operand_object*] }
%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i32 }
%struct.acpi_gpe_block_info = type { %struct.acpi_namespace_node*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_register_info*, %struct.acpi_gpe_event_info*, i64, i32, i16, i16, i8, i8 }
%struct.acpi_gpe_register_info = type { %struct.acpi_gpe_address, %struct.acpi_gpe_address, i16, i8, i8, i8, i8 }
%struct.acpi_gpe_address = type { i8, i64 }
%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, %struct.acpi_gpe_register_info*, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { %struct.acpi_namespace_node* }

@acpi_gbl_global_notify = external dso_local global [2 x %struct.acpi_global_notify_handler], align 16
@acpi_gbl_events_initialized = external dso_local global i8, align 1
@_acpi_module_name = internal constant [7 x i8] c"evmisc\00", align 1, !dbg !0
@.str = private unnamed_addr constant [33 x i8] c"Could not disable fixed event %u\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not disable GPEs in GPE block\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Could not remove Global Lock handler\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not remove SCI handler\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not delete GPE handlers\00", align 1
@acpi_gbl_original_mode = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"AcpiDisable failed\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ev_is_notify_object(%struct.acpi_namespace_node* %node) #0 !dbg !799 {
entry:
  %retval = alloca i8, align 1
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !803, metadata !DIExpression()), !dbg !804
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !805
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %0, i32 0, i32 2, !dbg !806
  %1 = load i8, i8* %type, align 1, !dbg !806
  %conv = zext i8 %1 to i32, !dbg !805
  switch i32 %conv, label %sw.default [
    i32 6, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
  ], !dbg !807

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i8 1, i8* %retval, align 1, !dbg !808
  br label %return, !dbg !808

sw.default:                                       ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !810
  br label %return, !dbg !810

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i8, i8* %retval, align 1, !dbg !811
  ret i8 %2, !dbg !811
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_queue_notify_request(%struct.acpi_namespace_node* %node, i32 %notify_value) #0 !dbg !812 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %notify_value.addr = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %handler_list_head = alloca %union.acpi_operand_object*, align 8
  %info = alloca %union.acpi_generic_state*, align 8
  %handler_list_id = alloca i8, align 1
  %status = alloca i32, align 4
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !815, metadata !DIExpression()), !dbg !816
  store i32 %notify_value, i32* %notify_value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %notify_value.addr, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !819, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_list_head, metadata !821, metadata !DIExpression()), !dbg !822
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %handler_list_head, align 8, !dbg !822
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %info, metadata !823, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.declare(metadata i8* %handler_list_id, metadata !825, metadata !DIExpression()), !dbg !826
  store i8 0, i8* %handler_list_id, align 1, !dbg !826
  call void @llvm.dbg.declare(metadata i32* %status, metadata !827, metadata !DIExpression()), !dbg !828
  store i32 0, i32* %status, align 4, !dbg !828
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !829
  %call = call zeroext i8 @acpi_ev_is_notify_object(%struct.acpi_namespace_node* %0) #3, !dbg !831
  %tobool = icmp ne i8 %call, 0, !dbg !831
  br i1 %tobool, label %if.end, label %if.then, !dbg !832

if.then:                                          ; preds = %entry
  store i32 8, i32* %retval, align 4, !dbg !833
  br label %return, !dbg !833

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %notify_value.addr, align 4, !dbg !835
  %cmp = icmp ule i32 %1, 127, !dbg !837
  br i1 %cmp, label %if.then1, label %if.else, !dbg !838

if.then1:                                         ; preds = %if.end
  store i8 0, i8* %handler_list_id, align 1, !dbg !839
  br label %if.end2, !dbg !841

if.else:                                          ; preds = %if.end
  store i8 1, i8* %handler_list_id, align 1, !dbg !842
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !844
  %call3 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %2) #3, !dbg !845
  store %union.acpi_operand_object* %call3, %union.acpi_operand_object** %obj_desc, align 8, !dbg !846
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !847
  %tobool4 = icmp ne %union.acpi_operand_object* %3, null, !dbg !847
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !849

if.then5:                                         ; preds = %if.end2
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !850
  %common_notify = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_notify_common*, !dbg !852
  %notify_list = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify, i32 0, i32 5, !dbg !853
  %5 = load i8, i8* %handler_list_id, align 1, !dbg !854
  %idxprom = zext i8 %5 to i64, !dbg !850
  %arrayidx = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %notify_list, i64 0, i64 %idxprom, !dbg !850
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !850
  store %union.acpi_operand_object* %6, %union.acpi_operand_object** %handler_list_head, align 8, !dbg !855
  br label %if.end6, !dbg !856

if.end6:                                          ; preds = %if.then5, %if.end2
  %7 = load i8, i8* %handler_list_id, align 1, !dbg !857
  %idxprom7 = zext i8 %7 to i64, !dbg !859
  %arrayidx8 = getelementptr [2 x %struct.acpi_global_notify_handler], [2 x %struct.acpi_global_notify_handler]* @acpi_gbl_global_notify, i64 0, i64 %idxprom7, !dbg !859
  %handler = getelementptr inbounds %struct.acpi_global_notify_handler, %struct.acpi_global_notify_handler* %arrayidx8, i32 0, i32 0, !dbg !860
  %8 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler, align 16, !dbg !860
  %tobool9 = icmp ne void (i8*, i32, i8*)* %8, null, !dbg !859
  br i1 %tobool9, label %if.end12, label %land.lhs.true, !dbg !861

land.lhs.true:                                    ; preds = %if.end6
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_list_head, align 8, !dbg !862
  %tobool10 = icmp ne %union.acpi_operand_object* %9, null, !dbg !862
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !863

if.then11:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !864
  br label %return, !dbg !864

if.end12:                                         ; preds = %land.lhs.true, %if.end6
  %call13 = call %union.acpi_generic_state* @acpi_ut_create_generic_state() #3, !dbg !866
  store %union.acpi_generic_state* %call13, %union.acpi_generic_state** %info, align 8, !dbg !867
  %10 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !868
  %tobool14 = icmp ne %union.acpi_generic_state* %10, null, !dbg !868
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !870

if.then15:                                        ; preds = %if.end12
  store i32 4, i32* %retval, align 4, !dbg !871
  br label %return, !dbg !871

if.end16:                                         ; preds = %if.end12
  %11 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !873
  %common = bitcast %union.acpi_generic_state* %11 to %struct.acpi_common_state*, !dbg !874
  %descriptor_type = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common, i32 0, i32 1, !dbg !875
  store i8 10, i8* %descriptor_type, align 8, !dbg !876
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !877
  %13 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !878
  %notify = bitcast %union.acpi_generic_state* %13 to %struct.acpi_notify_info*, !dbg !879
  %node17 = getelementptr inbounds %struct.acpi_notify_info, %struct.acpi_notify_info* %notify, i32 0, i32 6, !dbg !880
  store %struct.acpi_namespace_node* %12, %struct.acpi_namespace_node** %node17, align 8, !dbg !881
  %14 = load i32, i32* %notify_value.addr, align 4, !dbg !882
  %conv = trunc i32 %14 to i16, !dbg !883
  %15 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !884
  %notify18 = bitcast %union.acpi_generic_state* %15 to %struct.acpi_notify_info*, !dbg !885
  %value = getelementptr inbounds %struct.acpi_notify_info, %struct.acpi_notify_info* %notify18, i32 0, i32 3, !dbg !886
  store i16 %conv, i16* %value, align 2, !dbg !887
  %16 = load i8, i8* %handler_list_id, align 1, !dbg !888
  %17 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !889
  %notify19 = bitcast %union.acpi_generic_state* %17 to %struct.acpi_notify_info*, !dbg !890
  %handler_list_id20 = getelementptr inbounds %struct.acpi_notify_info, %struct.acpi_notify_info* %notify19, i32 0, i32 5, !dbg !891
  store i8 %16, i8* %handler_list_id20, align 2, !dbg !892
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_list_head, align 8, !dbg !893
  %19 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !894
  %notify21 = bitcast %union.acpi_generic_state* %19 to %struct.acpi_notify_info*, !dbg !895
  %handler_list_head22 = getelementptr inbounds %struct.acpi_notify_info, %struct.acpi_notify_info* %notify21, i32 0, i32 7, !dbg !896
  store %union.acpi_operand_object* %18, %union.acpi_operand_object** %handler_list_head22, align 8, !dbg !897
  %20 = load i8, i8* %handler_list_id, align 1, !dbg !898
  %idxprom23 = zext i8 %20 to i64, !dbg !899
  %arrayidx24 = getelementptr [2 x %struct.acpi_global_notify_handler], [2 x %struct.acpi_global_notify_handler]* @acpi_gbl_global_notify, i64 0, i64 %idxprom23, !dbg !899
  %21 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !900
  %notify25 = bitcast %union.acpi_generic_state* %21 to %struct.acpi_notify_info*, !dbg !901
  %global = getelementptr inbounds %struct.acpi_notify_info, %struct.acpi_notify_info* %notify25, i32 0, i32 8, !dbg !902
  store %struct.acpi_global_notify_handler* %arrayidx24, %struct.acpi_global_notify_handler** %global, align 8, !dbg !903
  %22 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !904
  %23 = bitcast %union.acpi_generic_state* %22 to i8*, !dbg !904
  %call26 = call i32 @acpi_os_execute(i32 1, void (i8*)* @acpi_ev_notify_dispatch, i8* %23) #3, !dbg !905
  store i32 %call26, i32* %status, align 4, !dbg !906
  %24 = load i32, i32* %status, align 4, !dbg !907
  %tobool27 = icmp ne i32 %24, 0, !dbg !907
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !909

if.then28:                                        ; preds = %if.end16
  %25 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !910
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %25) #3, !dbg !912
  br label %if.end29, !dbg !913

if.end29:                                         ; preds = %if.then28, %if.end16
  %26 = load i32, i32* %status, align 4, !dbg !914
  store i32 %26, i32* %retval, align 4, !dbg !915
  br label %return, !dbg !915

return:                                           ; preds = %if.end29, %if.then15, %if.then11, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !916
  ret i32 %27, !dbg !916
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_execute(i32, void (i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ev_notify_dispatch(i8* %context) #0 !dbg !917 {
entry:
  %context.addr = alloca i8*, align 8
  %info = alloca %union.acpi_generic_state*, align 8
  %handler_obj = alloca %union.acpi_operand_object*, align 8
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %info, metadata !922, metadata !DIExpression()), !dbg !923
  %0 = load i8*, i8** %context.addr, align 8, !dbg !924
  %1 = bitcast i8* %0 to %union.acpi_generic_state*, !dbg !925
  store %union.acpi_generic_state* %1, %union.acpi_generic_state** %info, align 8, !dbg !923
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_obj, metadata !926, metadata !DIExpression()), !dbg !927
  %2 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !928
  %notify = bitcast %union.acpi_generic_state* %2 to %struct.acpi_notify_info*, !dbg !930
  %global = getelementptr inbounds %struct.acpi_notify_info, %struct.acpi_notify_info* %notify, i32 0, i32 8, !dbg !931
  %3 = load %struct.acpi_global_notify_handler*, %struct.acpi_global_notify_handler** %global, align 8, !dbg !931
  %handler = getelementptr inbounds %struct.acpi_global_notify_handler, %struct.acpi_global_notify_handler* %3, i32 0, i32 0, !dbg !932
  %4 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler, align 8, !dbg !932
  %tobool = icmp ne void (i8*, i32, i8*)* %4, null, !dbg !928
  br i1 %tobool, label %if.then, label %if.end, !dbg !933

if.then:                                          ; preds = %entry
  %5 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !934
  %notify1 = bitcast %union.acpi_generic_state* %5 to %struct.acpi_notify_info*, !dbg !936
  %global2 = getelementptr inbounds %struct.acpi_notify_info, %struct.acpi_notify_info* %notify1, i32 0, i32 8, !dbg !937
  %6 = load %struct.acpi_global_notify_handler*, %struct.acpi_global_notify_handler** %global2, align 8, !dbg !937
  %handler3 = getelementptr inbounds %struct.acpi_global_notify_handler, %struct.acpi_global_notify_handler* %6, i32 0, i32 0, !dbg !938
  %7 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler3, align 8, !dbg !938
  %8 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !939
  %notify4 = bitcast %union.acpi_generic_state* %8 to %struct.acpi_notify_info*, !dbg !940
  %node = getelementptr inbounds %struct.acpi_notify_info, %struct.acpi_notify_info* %notify4, i32 0, i32 6, !dbg !941
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !941
  %10 = bitcast %struct.acpi_namespace_node* %9 to i8*, !dbg !939
  %11 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !942
  %notify5 = bitcast %union.acpi_generic_state* %11 to %struct.acpi_notify_info*, !dbg !943
  %value = getelementptr inbounds %struct.acpi_notify_info, %struct.acpi_notify_info* %notify5, i32 0, i32 3, !dbg !944
  %12 = load i16, i16* %value, align 2, !dbg !944
  %conv = zext i16 %12 to i32, !dbg !942
  %13 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !945
  %notify6 = bitcast %union.acpi_generic_state* %13 to %struct.acpi_notify_info*, !dbg !946
  %global7 = getelementptr inbounds %struct.acpi_notify_info, %struct.acpi_notify_info* %notify6, i32 0, i32 8, !dbg !947
  %14 = load %struct.acpi_global_notify_handler*, %struct.acpi_global_notify_handler** %global7, align 8, !dbg !947
  %context8 = getelementptr inbounds %struct.acpi_global_notify_handler, %struct.acpi_global_notify_handler* %14, i32 0, i32 1, !dbg !948
  %15 = load i8*, i8** %context8, align 8, !dbg !948
  call void %7(i8* %10, i32 %conv, i8* %15) #3, !dbg !934
  br label %if.end, !dbg !949

if.end:                                           ; preds = %if.then, %entry
  %16 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !950
  %notify9 = bitcast %union.acpi_generic_state* %16 to %struct.acpi_notify_info*, !dbg !951
  %handler_list_head = getelementptr inbounds %struct.acpi_notify_info, %struct.acpi_notify_info* %notify9, i32 0, i32 7, !dbg !952
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_list_head, align 8, !dbg !952
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %handler_obj, align 8, !dbg !953
  br label %while.cond, !dbg !954

while.cond:                                       ; preds = %while.body, %if.end
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !955
  %tobool10 = icmp ne %union.acpi_operand_object* %18, null, !dbg !954
  br i1 %tobool10, label %while.body, label %while.end, !dbg !954

while.body:                                       ; preds = %while.cond
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !956
  %notify11 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_notify_handler*, !dbg !958
  %handler12 = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify11, i32 0, i32 7, !dbg !959
  %20 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler12, align 8, !dbg !959
  %21 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !960
  %notify13 = bitcast %union.acpi_generic_state* %21 to %struct.acpi_notify_info*, !dbg !961
  %node14 = getelementptr inbounds %struct.acpi_notify_info, %struct.acpi_notify_info* %notify13, i32 0, i32 6, !dbg !962
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node14, align 8, !dbg !962
  %23 = bitcast %struct.acpi_namespace_node* %22 to i8*, !dbg !960
  %24 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !963
  %notify15 = bitcast %union.acpi_generic_state* %24 to %struct.acpi_notify_info*, !dbg !964
  %value16 = getelementptr inbounds %struct.acpi_notify_info, %struct.acpi_notify_info* %notify15, i32 0, i32 3, !dbg !965
  %25 = load i16, i16* %value16, align 2, !dbg !965
  %conv17 = zext i16 %25 to i32, !dbg !963
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !966
  %notify18 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_notify_handler*, !dbg !967
  %context19 = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify18, i32 0, i32 8, !dbg !968
  %27 = load i8*, i8** %context19, align 8, !dbg !968
  call void %20(i8* %23, i32 %conv17, i8* %27) #3, !dbg !956
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !969
  %notify20 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_notify_handler*, !dbg !970
  %next = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify20, i32 0, i32 9, !dbg !971
  %29 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !972
  %notify21 = bitcast %union.acpi_generic_state* %29 to %struct.acpi_notify_info*, !dbg !973
  %handler_list_id = getelementptr inbounds %struct.acpi_notify_info, %struct.acpi_notify_info* %notify21, i32 0, i32 5, !dbg !974
  %30 = load i8, i8* %handler_list_id, align 2, !dbg !974
  %idxprom = zext i8 %30 to i64, !dbg !969
  %arrayidx = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %next, i64 0, i64 %idxprom, !dbg !969
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !969
  store %union.acpi_operand_object* %31, %union.acpi_operand_object** %handler_obj, align 8, !dbg !975
  br label %while.cond, !dbg !954, !llvm.loop !976

while.end:                                        ; preds = %while.cond
  %32 = load %union.acpi_generic_state*, %union.acpi_generic_state** %info, align 8, !dbg !978
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %32) #3, !dbg !979
  ret void, !dbg !980
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ev_terminate() #0 !dbg !981 {
entry:
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !984, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.declare(metadata i32* %status, metadata !986, metadata !DIExpression()), !dbg !987
  %0 = load i8, i8* @acpi_gbl_events_initialized, align 1, !dbg !988
  %tobool = icmp ne i8 %0, 0, !dbg !988
  br i1 %tobool, label %if.then, label %if.end11, !dbg !990

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !991
  br label %for.cond, !dbg !994

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !995
  %cmp = icmp ult i32 %1, 5, !dbg !997
  br i1 %cmp, label %for.body, label %for.end, !dbg !998

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !999
  %call = call i32 @acpi_disable_event(i32 %2, i32 0) #3, !dbg !1001
  store i32 %call, i32* %status, align 4, !dbg !1002
  %3 = load i32, i32* %status, align 4, !dbg !1003
  %tobool1 = icmp ne i32 %3, 0, !dbg !1003
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1005

if.then2:                                         ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !1006
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 224, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %4) #3, !dbg !1006
  br label %if.end, !dbg !1008

if.end:                                           ; preds = %if.then2, %for.body
  br label %for.inc, !dbg !1009

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4, !dbg !1010
  %inc = add i32 %5, 1, !dbg !1010
  store i32 %inc, i32* %i, align 4, !dbg !1010
  br label %for.cond, !dbg !1011, !llvm.loop !1012

for.end:                                          ; preds = %for.cond
  %call3 = call i32 @acpi_ev_walk_gpe_list(i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)* @acpi_hw_disable_gpe_block, i8* null) #3, !dbg !1014
  store i32 %call3, i32* %status, align 4, !dbg !1015
  %6 = load i32, i32* %status, align 4, !dbg !1016
  %tobool4 = icmp ne i32 %6, 0, !dbg !1016
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1018

if.then5:                                         ; preds = %for.end
  %7 = load i32, i32* %status, align 4, !dbg !1019
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 234, i32 %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !1019
  br label %if.end6, !dbg !1021

if.end6:                                          ; preds = %if.then5, %for.end
  %call7 = call i32 @acpi_ev_remove_global_lock_handler() #3, !dbg !1022
  store i32 %call7, i32* %status, align 4, !dbg !1023
  %8 = load i32, i32* %status, align 4, !dbg !1024
  %tobool8 = icmp ne i32 %8, 0, !dbg !1024
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1026

if.then9:                                         ; preds = %if.end6
  %9 = load i32, i32* %status, align 4, !dbg !1027
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 240, i32 %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !1027
  br label %if.end10, !dbg !1029

if.end10:                                         ; preds = %if.then9, %if.end6
  store i8 0, i8* @acpi_gbl_events_initialized, align 1, !dbg !1030
  br label %if.end11, !dbg !1031

if.end11:                                         ; preds = %if.end10, %entry
  %call12 = call i32 @acpi_ev_remove_all_sci_handlers() #3, !dbg !1032
  store i32 %call12, i32* %status, align 4, !dbg !1033
  %10 = load i32, i32* %status, align 4, !dbg !1034
  %tobool13 = icmp ne i32 %10, 0, !dbg !1034
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1036

if.then14:                                        ; preds = %if.end11
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 251, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1037
  br label %if.end15, !dbg !1039

if.end15:                                         ; preds = %if.then14, %if.end11
  %call16 = call i32 @acpi_ev_walk_gpe_list(i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)* @acpi_ev_delete_gpe_handlers, i8* null) #3, !dbg !1040
  store i32 %call16, i32* %status, align 4, !dbg !1041
  %11 = load i32, i32* %status, align 4, !dbg !1042
  %tobool17 = icmp ne i32 %11, 0, !dbg !1042
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !1044

if.then18:                                        ; preds = %if.end15
  %12 = load i32, i32* %status, align 4, !dbg !1045
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 258, i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0)) #3, !dbg !1045
  br label %if.end19, !dbg !1047

if.end19:                                         ; preds = %if.then18, %if.end15
  %13 = load i32, i32* @acpi_gbl_original_mode, align 4, !dbg !1048
  %cmp20 = icmp eq i32 %13, 2, !dbg !1050
  br i1 %cmp20, label %if.then21, label %if.end26, !dbg !1051

if.then21:                                        ; preds = %if.end19
  %call22 = call i32 @acpi_disable() #3, !dbg !1052
  store i32 %call22, i32* %status, align 4, !dbg !1054
  %14 = load i32, i32* %status, align 4, !dbg !1055
  %tobool23 = icmp ne i32 %14, 0, !dbg !1055
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1057

if.then24:                                        ; preds = %if.then21
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 267, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)) #3, !dbg !1058
  br label %if.end25, !dbg !1060

if.end25:                                         ; preds = %if.then24, %if.then21
  br label %if.end26, !dbg !1061

if.end26:                                         ; preds = %if.end25, %if.end19
  ret void, !dbg !1062
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_disable_event(i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_walk_gpe_list(i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_disable_gpe_block(%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_remove_global_lock_handler() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_remove_all_sci_handlers() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_delete_gpe_handlers(%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_disable() #2

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!794, !795, !796, !797}
!llvm.ident = !{!798}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !792, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !16, globals: !791, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evmisc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 20, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "OSL_GLOBAL_LOCK_HANDLER", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "OSL_NOTIFY_HANDLER", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "OSL_GPE_HANDLER", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "OSL_DEBUGGER_MAIN_THREAD", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "OSL_DEBUGGER_EXEC_THREAD", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "OSL_EC_POLL_HANDLER", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "OSL_EC_BURST_HANDLER", value: 6, isUnsigned: true)
!16 = !{!17, !23, !19, !26, !27}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !18, line: 421, baseType: !19)
!18 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !20, line: 21, baseType: !21)
!20 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !22, line: 27, baseType: !7)
!22 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !20, line: 19, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !22, line: 24, baseType: !25)
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !29, line: 663, size: 640, elements: !30)
!29 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !42, !718, !727, !736, !749, !763, !764, !774}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !28, file: !29, line: 664, baseType: !32, size: 128)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !29, line: 567, size: 128, elements: !33)
!33 = !{!34, !35, !39, !40, !41}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !32, file: !29, line: 568, baseType: !26, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !32, file: !29, line: 568, baseType: !36, size: 8, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !20, line: 17, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !22, line: 21, baseType: !38)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !32, file: !29, line: 568, baseType: !36, size: 8, offset: 72)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !32, file: !29, line: 568, baseType: !23, size: 16, offset: 80)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !32, file: !29, line: 568, baseType: !23, size: 16, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !28, file: !29, line: 665, baseType: !43, size: 384)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !29, line: 593, size: 384, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !50, !51, !715, !716, !717}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !43, file: !29, line: 594, baseType: !26, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !43, file: !29, line: 594, baseType: !36, size: 8, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !43, file: !29, line: 594, baseType: !36, size: 8, offset: 72)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !43, file: !29, line: 594, baseType: !23, size: 16, offset: 80)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !43, file: !29, line: 594, baseType: !23, size: 16, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !43, file: !29, line: 594, baseType: !23, size: 16, offset: 112)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !43, file: !29, line: 595, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !29, line: 875, size: 1600, elements: !54)
!54 = !{!55, !658, !674}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !53, file: !29, line: 876, baseType: !56, size: 448)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !29, line: 828, size: 448, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !64, !65, !648, !657}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !56, file: !29, line: 829, baseType: !52, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !56, file: !29, line: 829, baseType: !36, size: 8, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !29, line: 829, baseType: !36, size: 8, offset: 72)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !56, file: !29, line: 829, baseType: !23, size: 16, offset: 80)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !56, file: !29, line: 829, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !56, file: !29, line: 829, baseType: !52, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !56, file: !29, line: 829, baseType: !66, size: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !29, line: 133, size: 384, elements: !68)
!68 = !{!69, !632, !633, !634, !635, !644, !645, !646, !647}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !67, file: !29, line: 134, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !72, line: 367, size: 576, elements: !73)
!72 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !82, !98, !110, !123, !137, !146, !278, !295, !310, !323, !402, !414, !428, !438, !456, !478, !497, !516, !535, !552, !578, !595, !608, !622, !631}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !71, file: !72, line: 368, baseType: !75, size: 128)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !72, line: 73, size: 128, elements: !76)
!76 = !{!77, !78, !79, !80, !81}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !75, file: !72, line: 74, baseType: !70, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !72, line: 74, baseType: !36, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !72, line: 74, baseType: !36, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !75, file: !72, line: 74, baseType: !23, size: 16, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !72, line: 74, baseType: !36, size: 8, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !71, file: !72, line: 369, baseType: !83, size: 192)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !72, line: 76, size: 192, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !94}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !83, file: !72, line: 77, baseType: !70, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !83, file: !72, line: 77, baseType: !36, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !72, line: 77, baseType: !36, size: 8, offset: 72)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !83, file: !72, line: 77, baseType: !23, size: 16, offset: 80)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !72, line: 77, baseType: !36, size: 8, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !83, file: !72, line: 77, baseType: !91, size: 24, offset: 104)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 24, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 3)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !83, file: !72, line: 78, baseType: !95, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !20, line: 23, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !22, line: 31, baseType: !97)
!97 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !71, file: !72, line: 370, baseType: !99, size: 256)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !72, line: 93, size: 256, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !109}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !99, file: !72, line: 94, baseType: !70, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !99, file: !72, line: 94, baseType: !36, size: 8, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !72, line: 94, baseType: !36, size: 8, offset: 72)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !99, file: !72, line: 94, baseType: !23, size: 16, offset: 80)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !72, line: 94, baseType: !36, size: 8, offset: 96)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !99, file: !72, line: 94, baseType: !107, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !99, file: !72, line: 94, baseType: !19, size: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !71, file: !72, line: 371, baseType: !111, size: 384)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !72, line: 97, size: 384, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !111, file: !72, line: 98, baseType: !70, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !72, line: 98, baseType: !36, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !72, line: 98, baseType: !36, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !111, file: !72, line: 98, baseType: !23, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !72, line: 98, baseType: !36, size: 8, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !111, file: !72, line: 98, baseType: !63, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !111, file: !72, line: 98, baseType: !19, size: 32, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !111, file: !72, line: 99, baseType: !19, size: 32, offset: 224)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !111, file: !72, line: 100, baseType: !63, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !111, file: !72, line: 101, baseType: !66, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !71, file: !72, line: 372, baseType: !124, size: 384)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !72, line: 104, size: 384, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !134, !135, !136}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !124, file: !72, line: 105, baseType: !70, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !72, line: 105, baseType: !36, size: 8, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !72, line: 105, baseType: !36, size: 8, offset: 72)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !124, file: !72, line: 105, baseType: !23, size: 16, offset: 80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !72, line: 105, baseType: !36, size: 8, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !124, file: !72, line: 105, baseType: !66, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !124, file: !72, line: 106, baseType: !133, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !124, file: !72, line: 107, baseType: !63, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !124, file: !72, line: 108, baseType: !19, size: 32, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !124, file: !72, line: 109, baseType: !19, size: 32, offset: 352)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !71, file: !72, line: 373, baseType: !138, size: 192)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !72, line: 118, size: 192, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !138, file: !72, line: 119, baseType: !70, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !138, file: !72, line: 119, baseType: !36, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !72, line: 119, baseType: !36, size: 8, offset: 72)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !138, file: !72, line: 119, baseType: !23, size: 16, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !72, line: 119, baseType: !36, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !138, file: !72, line: 119, baseType: !26, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !71, file: !72, line: 374, baseType: !147, size: 448)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !72, line: 143, size: 448, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !275, !276, !277}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !147, file: !72, line: 144, baseType: !70, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !72, line: 144, baseType: !36, size: 8, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !72, line: 144, baseType: !36, size: 8, offset: 72)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !147, file: !72, line: 144, baseType: !23, size: 16, offset: 80)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !72, line: 144, baseType: !36, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !147, file: !72, line: 144, baseType: !36, size: 8, offset: 104)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !147, file: !72, line: 145, baseType: !36, size: 8, offset: 112)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !147, file: !72, line: 146, baseType: !36, size: 8, offset: 120)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !147, file: !72, line: 147, baseType: !70, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !147, file: !72, line: 148, baseType: !70, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !147, file: !72, line: 149, baseType: !63, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !147, file: !72, line: 153, baseType: !161, size: 64, offset: 320)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !72, line: 150, size: 64, elements: !162)
!162 = !{!163, !274}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !161, file: !72, line: 151, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !29, line: 248, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!17, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !170, line: 37, size: 9024, elements: !171)
!170 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !207, !208, !209, !210, !211, !215, !219, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !246, !247, !248, !249, !250, !251, !252, !253, !266, !272}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !170, line: 38, baseType: !168, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !169, file: !170, line: 39, baseType: !36, size: 8, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !169, file: !170, line: 40, baseType: !36, size: 8, offset: 72)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !169, file: !170, line: 41, baseType: !23, size: 16, offset: 80)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !169, file: !170, line: 42, baseType: !36, size: 8, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !169, file: !170, line: 43, baseType: !36, size: 8, offset: 104)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !169, file: !170, line: 44, baseType: !36, size: 8, offset: 112)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !169, file: !170, line: 45, baseType: !180, size: 16, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !18, line: 445, baseType: !23)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !169, file: !170, line: 46, baseType: !36, size: 8, offset: 144)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !169, file: !170, line: 47, baseType: !36, size: 8, offset: 152)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !169, file: !170, line: 48, baseType: !36, size: 8, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !169, file: !170, line: 49, baseType: !36, size: 8, offset: 168)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !169, file: !170, line: 50, baseType: !36, size: 8, offset: 176)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !169, file: !170, line: 51, baseType: !36, size: 8, offset: 184)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !169, file: !170, line: 52, baseType: !36, size: 8, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !169, file: !170, line: 53, baseType: !36, size: 8, offset: 200)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !169, file: !170, line: 54, baseType: !63, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !169, file: !170, line: 55, baseType: !19, size: 32, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !169, file: !170, line: 56, baseType: !19, size: 32, offset: 352)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !169, file: !170, line: 57, baseType: !19, size: 32, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !169, file: !170, line: 58, baseType: !19, size: 32, offset: 416)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !169, file: !170, line: 60, baseType: !195, size: 640, offset: 448)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !29, line: 893, size: 640, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !195, file: !29, line: 894, baseType: !63, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !195, file: !29, line: 895, baseType: !63, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !195, file: !29, line: 896, baseType: !63, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !195, file: !29, line: 897, baseType: !63, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !195, file: !29, line: 898, baseType: !63, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !195, file: !29, line: 899, baseType: !52, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !195, file: !29, line: 900, baseType: !66, size: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !195, file: !29, line: 901, baseType: !27, size: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !195, file: !29, line: 902, baseType: !52, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !195, file: !29, line: 903, baseType: !19, size: 32, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !169, file: !170, line: 61, baseType: !19, size: 32, offset: 1088)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !169, file: !170, line: 62, baseType: !19, size: 32, offset: 1120)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !169, file: !170, line: 63, baseType: !23, size: 16, offset: 1152)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !169, file: !170, line: 64, baseType: !36, size: 8, offset: 1168)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !169, file: !170, line: 66, baseType: !212, size: 2688, offset: 1216)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 2688, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 7)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !169, file: !170, line: 67, baseType: !216, size: 3072, offset: 3904)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 3072, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 8)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !169, file: !170, line: 68, baseType: !220, size: 576, offset: 6976)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 576, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 9)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !169, file: !170, line: 69, baseType: !133, size: 64, offset: 7552)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !169, file: !170, line: 71, baseType: !63, size: 64, offset: 7616)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !169, file: !170, line: 72, baseType: !133, size: 64, offset: 7680)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !169, file: !170, line: 73, baseType: !27, size: 64, offset: 7744)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !169, file: !170, line: 74, baseType: !66, size: 64, offset: 7808)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !169, file: !170, line: 75, baseType: !70, size: 64, offset: 7872)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !169, file: !170, line: 76, baseType: !66, size: 64, offset: 7936)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !169, file: !170, line: 77, baseType: !52, size: 64, offset: 8000)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !169, file: !170, line: 78, baseType: !70, size: 64, offset: 8064)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !169, file: !170, line: 79, baseType: !66, size: 64, offset: 8128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !169, file: !170, line: 80, baseType: !107, size: 64, offset: 8192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !169, file: !170, line: 81, baseType: !52, size: 64, offset: 8256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !169, file: !170, line: 82, baseType: !236, size: 64, offset: 8320)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !29, line: 702, size: 128, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !238, file: !29, line: 706, baseType: !19, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !238, file: !29, line: 707, baseType: !19, size: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !29, line: 708, baseType: !23, size: 16, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !238, file: !29, line: 709, baseType: !36, size: 8, offset: 80)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !238, file: !29, line: 710, baseType: !36, size: 8, offset: 88)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !238, file: !29, line: 711, baseType: !36, size: 8, offset: 96)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !169, file: !170, line: 83, baseType: !52, size: 64, offset: 8384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !169, file: !170, line: 84, baseType: !70, size: 64, offset: 8448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !169, file: !170, line: 85, baseType: !27, size: 64, offset: 8512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !169, file: !170, line: 86, baseType: !70, size: 64, offset: 8576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !169, file: !170, line: 87, baseType: !27, size: 64, offset: 8640)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !169, file: !170, line: 88, baseType: !52, size: 64, offset: 8704)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !169, file: !170, line: 89, baseType: !52, size: 64, offset: 8768)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !169, file: !170, line: 90, baseType: !254, size: 64, offset: 8832)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !29, line: 620, size: 320, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !29, line: 621, baseType: !26, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !255, file: !29, line: 621, baseType: !36, size: 8, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !29, line: 621, baseType: !36, size: 8, offset: 72)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !255, file: !29, line: 621, baseType: !23, size: 16, offset: 80)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !255, file: !29, line: 621, baseType: !23, size: 16, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !255, file: !29, line: 621, baseType: !36, size: 8, offset: 112)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !255, file: !29, line: 622, baseType: !168, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !255, file: !29, line: 623, baseType: !70, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !255, file: !29, line: 624, baseType: !95, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !169, file: !170, line: 91, baseType: !267, size: 64, offset: 8896)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !29, line: 637, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!17, !168, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !169, file: !170, line: 92, baseType: !273, size: 64, offset: 8960)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !29, line: 641, baseType: !165)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !161, file: !72, line: 152, baseType: !70, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !147, file: !72, line: 155, baseType: !19, size: 32, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !147, file: !72, line: 156, baseType: !180, size: 16, offset: 416)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !147, file: !72, line: 157, baseType: !36, size: 8, offset: 432)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !71, file: !72, line: 375, baseType: !279, size: 576)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !72, line: 122, size: 576, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !279, file: !72, line: 123, baseType: !70, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !72, line: 123, baseType: !36, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !279, file: !72, line: 123, baseType: !36, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !279, file: !72, line: 123, baseType: !23, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !72, line: 123, baseType: !36, size: 8, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !279, file: !72, line: 123, baseType: !36, size: 8, offset: 104)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !279, file: !72, line: 124, baseType: !23, size: 16, offset: 112)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !279, file: !72, line: 125, baseType: !26, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !279, file: !72, line: 126, baseType: !95, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !279, file: !72, line: 127, baseType: !254, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !279, file: !72, line: 128, baseType: !70, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !72, line: 129, baseType: !70, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !279, file: !72, line: 130, baseType: !66, size: 64, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !279, file: !72, line: 131, baseType: !36, size: 8, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !71, file: !72, line: 376, baseType: !296, size: 448)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !72, line: 134, size: 448, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !309}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !296, file: !72, line: 135, baseType: !70, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !72, line: 135, baseType: !36, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !296, file: !72, line: 135, baseType: !36, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !296, file: !72, line: 135, baseType: !23, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !72, line: 135, baseType: !36, size: 8, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !296, file: !72, line: 135, baseType: !36, size: 8, offset: 104)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !296, file: !72, line: 136, baseType: !66, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !296, file: !72, line: 137, baseType: !70, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !72, line: 138, baseType: !70, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !296, file: !72, line: 139, baseType: !308, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !18, line: 129, baseType: !95)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !296, file: !72, line: 140, baseType: !19, size: 32, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !71, file: !72, line: 377, baseType: !311, size: 320)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !72, line: 184, size: 320, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318, !322}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !311, file: !72, line: 185, baseType: !70, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !311, file: !72, line: 185, baseType: !36, size: 8, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !311, file: !72, line: 185, baseType: !36, size: 8, offset: 72)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !311, file: !72, line: 185, baseType: !23, size: 16, offset: 80)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !72, line: 185, baseType: !36, size: 8, offset: 96)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !311, file: !72, line: 185, baseType: !319, size: 128, offset: 128)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 2)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !311, file: !72, line: 185, baseType: !70, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !71, file: !72, line: 378, baseType: !324, size: 384)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !72, line: 187, size: 384, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !324, file: !72, line: 188, baseType: !70, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !324, file: !72, line: 188, baseType: !36, size: 8, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !324, file: !72, line: 188, baseType: !36, size: 8, offset: 72)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !324, file: !72, line: 188, baseType: !23, size: 16, offset: 80)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !72, line: 188, baseType: !36, size: 8, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !324, file: !72, line: 189, baseType: !319, size: 128, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !324, file: !72, line: 189, baseType: !70, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !324, file: !72, line: 189, baseType: !334, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !29, line: 480, size: 576, elements: !336)
!336 = !{!337, !338, !339, !340, !348, !363, !396, !397, !398, !399, !400, !401}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !335, file: !29, line: 481, baseType: !66, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !335, file: !29, line: 482, baseType: !334, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !29, line: 483, baseType: !334, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !335, file: !29, line: 484, baseType: !341, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !29, line: 497, size: 256, elements: !343)
!343 = !{!344, !345, !346, !347}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !342, file: !29, line: 498, baseType: !341, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !29, line: 499, baseType: !341, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !342, file: !29, line: 500, baseType: !334, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !342, file: !29, line: 501, baseType: !19, size: 32, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !335, file: !29, line: 485, baseType: !349, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !29, line: 466, size: 320, elements: !351)
!351 = !{!352, !357, !358, !359, !360, !361, !362}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !350, file: !29, line: 467, baseType: !353, size: 128)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !29, line: 459, size: 128, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !353, file: !29, line: 460, baseType: !36, size: 8)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !353, file: !29, line: 461, baseType: !95, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !350, file: !29, line: 468, baseType: !353, size: 128, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !350, file: !29, line: 469, baseType: !23, size: 16, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !350, file: !29, line: 470, baseType: !36, size: 8, offset: 272)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !350, file: !29, line: 471, baseType: !36, size: 8, offset: 280)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !350, file: !29, line: 472, baseType: !36, size: 8, offset: 288)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !350, file: !29, line: 473, baseType: !36, size: 8, offset: 296)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !335, file: !29, line: 486, baseType: !364, size: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !29, line: 448, size: 192, elements: !366)
!366 = !{!367, !391, !392, !393, !394, !395}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !365, file: !29, line: 449, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !29, line: 438, size: 64, elements: !369)
!369 = !{!370, !371, !385}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !368, file: !29, line: 439, baseType: !66, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !368, file: !29, line: 440, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !29, line: 419, size: 256, elements: !374)
!374 = !{!375, !381, !382, !383, !384}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !373, file: !29, line: 420, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !18, line: 1049, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!19, !380, !19, !26}
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !18, line: 424, baseType: !26)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !373, file: !29, line: 421, baseType: !26, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !373, file: !29, line: 422, baseType: !66, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !373, file: !29, line: 423, baseType: !36, size: 8, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !373, file: !29, line: 424, baseType: !36, size: 8, offset: 200)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !368, file: !29, line: 441, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !29, line: 429, size: 128, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !387, file: !29, line: 430, baseType: !66, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !387, file: !29, line: 431, baseType: !386, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !365, file: !29, line: 450, baseType: !349, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !365, file: !29, line: 451, baseType: !36, size: 8, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !365, file: !29, line: 452, baseType: !36, size: 8, offset: 136)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !365, file: !29, line: 453, baseType: !36, size: 8, offset: 144)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !365, file: !29, line: 454, baseType: !36, size: 8, offset: 152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !335, file: !29, line: 487, baseType: !95, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !335, file: !29, line: 488, baseType: !19, size: 32, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !335, file: !29, line: 489, baseType: !23, size: 16, offset: 480)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !335, file: !29, line: 490, baseType: !23, size: 16, offset: 496)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !335, file: !29, line: 491, baseType: !36, size: 8, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !335, file: !29, line: 492, baseType: !36, size: 8, offset: 520)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !71, file: !72, line: 379, baseType: !403, size: 384)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !72, line: 192, size: 384, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411, !412, !413}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !403, file: !72, line: 193, baseType: !70, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !403, file: !72, line: 193, baseType: !36, size: 8, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !403, file: !72, line: 193, baseType: !36, size: 8, offset: 72)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !403, file: !72, line: 193, baseType: !23, size: 16, offset: 80)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !72, line: 193, baseType: !36, size: 8, offset: 96)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !403, file: !72, line: 193, baseType: !319, size: 128, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !403, file: !72, line: 193, baseType: !70, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !403, file: !72, line: 193, baseType: !19, size: 32, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !403, file: !72, line: 194, baseType: !19, size: 32, offset: 352)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !71, file: !72, line: 380, baseType: !415, size: 384)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !72, line: 197, size: 384, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425, !426}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !415, file: !72, line: 198, baseType: !70, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !415, file: !72, line: 198, baseType: !36, size: 8, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !415, file: !72, line: 198, baseType: !36, size: 8, offset: 72)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !415, file: !72, line: 198, baseType: !23, size: 16, offset: 80)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !415, file: !72, line: 198, baseType: !36, size: 8, offset: 96)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !415, file: !72, line: 200, baseType: !36, size: 8, offset: 104)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !415, file: !72, line: 201, baseType: !36, size: 8, offset: 112)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !415, file: !72, line: 202, baseType: !319, size: 128, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !415, file: !72, line: 202, baseType: !70, size: 64, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !415, file: !72, line: 202, baseType: !427, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !18, line: 128, baseType: !95)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !71, file: !72, line: 381, baseType: !429, size: 320)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !72, line: 205, size: 320, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !429, file: !72, line: 206, baseType: !70, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !429, file: !72, line: 206, baseType: !36, size: 8, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !429, file: !72, line: 206, baseType: !36, size: 8, offset: 72)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !429, file: !72, line: 206, baseType: !23, size: 16, offset: 80)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !429, file: !72, line: 206, baseType: !36, size: 8, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !429, file: !72, line: 206, baseType: !319, size: 128, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !429, file: !72, line: 206, baseType: !70, size: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !71, file: !72, line: 382, baseType: !439, size: 384)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !72, line: 233, size: 384, elements: !440)
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !439, file: !72, line: 234, baseType: !70, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !439, file: !72, line: 234, baseType: !36, size: 8, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !439, file: !72, line: 234, baseType: !36, size: 8, offset: 72)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !439, file: !72, line: 234, baseType: !23, size: 16, offset: 80)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !439, file: !72, line: 234, baseType: !36, size: 8, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !439, file: !72, line: 234, baseType: !36, size: 8, offset: 104)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !439, file: !72, line: 234, baseType: !36, size: 8, offset: 112)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !439, file: !72, line: 234, baseType: !36, size: 8, offset: 120)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !439, file: !72, line: 234, baseType: !66, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !439, file: !72, line: 234, baseType: !19, size: 32, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !439, file: !72, line: 234, baseType: !19, size: 32, offset: 224)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !439, file: !72, line: 234, baseType: !19, size: 32, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !439, file: !72, line: 234, baseType: !36, size: 8, offset: 288)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !439, file: !72, line: 234, baseType: !36, size: 8, offset: 296)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !439, file: !72, line: 234, baseType: !70, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !71, file: !72, line: 383, baseType: !457, size: 576)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !72, line: 237, size: 576, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !457, file: !72, line: 238, baseType: !70, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !457, file: !72, line: 238, baseType: !36, size: 8, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !457, file: !72, line: 238, baseType: !36, size: 8, offset: 72)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !457, file: !72, line: 238, baseType: !23, size: 16, offset: 80)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !457, file: !72, line: 238, baseType: !36, size: 8, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !457, file: !72, line: 238, baseType: !36, size: 8, offset: 104)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !457, file: !72, line: 238, baseType: !36, size: 8, offset: 112)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !457, file: !72, line: 238, baseType: !36, size: 8, offset: 120)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !457, file: !72, line: 238, baseType: !66, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !457, file: !72, line: 238, baseType: !19, size: 32, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !457, file: !72, line: 238, baseType: !19, size: 32, offset: 224)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !457, file: !72, line: 238, baseType: !19, size: 32, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !457, file: !72, line: 238, baseType: !36, size: 8, offset: 288)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !457, file: !72, line: 238, baseType: !36, size: 8, offset: 296)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !457, file: !72, line: 238, baseType: !23, size: 16, offset: 304)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !457, file: !72, line: 239, baseType: !70, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !457, file: !72, line: 240, baseType: !63, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !457, file: !72, line: 241, baseType: !23, size: 16, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !457, file: !72, line: 242, baseType: !63, size: 64, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !71, file: !72, line: 384, baseType: !479, size: 384)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !72, line: 262, size: 384, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !479, file: !72, line: 263, baseType: !70, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !479, file: !72, line: 263, baseType: !36, size: 8, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !479, file: !72, line: 263, baseType: !36, size: 8, offset: 72)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !479, file: !72, line: 263, baseType: !23, size: 16, offset: 80)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !72, line: 263, baseType: !36, size: 8, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !479, file: !72, line: 263, baseType: !36, size: 8, offset: 104)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !479, file: !72, line: 263, baseType: !36, size: 8, offset: 112)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !479, file: !72, line: 263, baseType: !36, size: 8, offset: 120)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !479, file: !72, line: 263, baseType: !66, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !479, file: !72, line: 263, baseType: !19, size: 32, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !479, file: !72, line: 263, baseType: !19, size: 32, offset: 224)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !479, file: !72, line: 263, baseType: !19, size: 32, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !479, file: !72, line: 263, baseType: !36, size: 8, offset: 288)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !479, file: !72, line: 263, baseType: !36, size: 8, offset: 296)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !479, file: !72, line: 263, baseType: !36, size: 8, offset: 304)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !479, file: !72, line: 264, baseType: !70, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !71, file: !72, line: 385, baseType: !498, size: 448)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !72, line: 245, size: 448, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !498, file: !72, line: 246, baseType: !70, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !498, file: !72, line: 246, baseType: !36, size: 8, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !498, file: !72, line: 246, baseType: !36, size: 8, offset: 72)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !498, file: !72, line: 246, baseType: !23, size: 16, offset: 80)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !498, file: !72, line: 246, baseType: !36, size: 8, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !498, file: !72, line: 246, baseType: !36, size: 8, offset: 104)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !498, file: !72, line: 246, baseType: !36, size: 8, offset: 112)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !498, file: !72, line: 246, baseType: !36, size: 8, offset: 120)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !498, file: !72, line: 246, baseType: !66, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !498, file: !72, line: 246, baseType: !19, size: 32, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !498, file: !72, line: 246, baseType: !19, size: 32, offset: 224)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !498, file: !72, line: 246, baseType: !19, size: 32, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !498, file: !72, line: 246, baseType: !36, size: 8, offset: 288)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !498, file: !72, line: 246, baseType: !36, size: 8, offset: 296)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !498, file: !72, line: 246, baseType: !70, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !498, file: !72, line: 247, baseType: !70, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !71, file: !72, line: 386, baseType: !517, size: 448)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !72, line: 250, size: 448, elements: !518)
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !517, file: !72, line: 251, baseType: !70, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !517, file: !72, line: 251, baseType: !36, size: 8, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !517, file: !72, line: 251, baseType: !36, size: 8, offset: 72)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !517, file: !72, line: 251, baseType: !23, size: 16, offset: 80)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !517, file: !72, line: 251, baseType: !36, size: 8, offset: 96)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !517, file: !72, line: 251, baseType: !36, size: 8, offset: 104)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !517, file: !72, line: 251, baseType: !36, size: 8, offset: 112)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !517, file: !72, line: 251, baseType: !36, size: 8, offset: 120)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !517, file: !72, line: 251, baseType: !66, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !517, file: !72, line: 251, baseType: !19, size: 32, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !517, file: !72, line: 251, baseType: !19, size: 32, offset: 224)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !517, file: !72, line: 251, baseType: !19, size: 32, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !517, file: !72, line: 251, baseType: !36, size: 8, offset: 288)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !517, file: !72, line: 251, baseType: !36, size: 8, offset: 296)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !517, file: !72, line: 256, baseType: !70, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !517, file: !72, line: 257, baseType: !70, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !71, file: !72, line: 387, baseType: !536, size: 512)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !72, line: 273, size: 512, elements: !537)
!537 = !{!538, !539, !540, !541, !542, !543, !544, !545, !550, !551}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !536, file: !72, line: 274, baseType: !70, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !536, file: !72, line: 274, baseType: !36, size: 8, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !536, file: !72, line: 274, baseType: !36, size: 8, offset: 72)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !536, file: !72, line: 274, baseType: !23, size: 16, offset: 80)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !536, file: !72, line: 274, baseType: !36, size: 8, offset: 96)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !536, file: !72, line: 274, baseType: !66, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !536, file: !72, line: 275, baseType: !19, size: 32, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !536, file: !72, line: 276, baseType: !546, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !18, line: 1052, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !380, !19, !26}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !536, file: !72, line: 277, baseType: !26, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !536, file: !72, line: 278, baseType: !319, size: 128, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !71, file: !72, line: 388, baseType: !553, size: 512)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !72, line: 281, size: 512, elements: !554)
!554 = !{!555, !556, !557, !558, !559, !560, !561, !562, !568, !569, !570, !576, !577}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !553, file: !72, line: 282, baseType: !70, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !553, file: !72, line: 282, baseType: !36, size: 8, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !553, file: !72, line: 282, baseType: !36, size: 8, offset: 72)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !553, file: !72, line: 282, baseType: !23, size: 16, offset: 80)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !553, file: !72, line: 282, baseType: !36, size: 8, offset: 96)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !553, file: !72, line: 282, baseType: !36, size: 8, offset: 104)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !553, file: !72, line: 283, baseType: !36, size: 8, offset: 112)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !553, file: !72, line: 284, baseType: !563, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !18, line: 1084, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!17, !19, !308, !19, !567, !26, !26}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !553, file: !72, line: 285, baseType: !66, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !553, file: !72, line: 286, baseType: !26, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !553, file: !72, line: 287, baseType: !571, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !18, line: 1102, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!17, !380, !19, !26, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !553, file: !72, line: 288, baseType: !70, size: 64, offset: 384)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !553, file: !72, line: 289, baseType: !70, size: 64, offset: 448)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !71, file: !72, line: 389, baseType: !579, size: 512)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !72, line: 307, size: 512, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !72, line: 308, baseType: !70, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !72, line: 308, baseType: !36, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !72, line: 308, baseType: !36, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !72, line: 308, baseType: !23, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !72, line: 308, baseType: !36, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !579, file: !72, line: 308, baseType: !36, size: 8, offset: 104)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !579, file: !72, line: 309, baseType: !36, size: 8, offset: 112)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !579, file: !72, line: 310, baseType: !36, size: 8, offset: 120)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !579, file: !72, line: 311, baseType: !26, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !579, file: !72, line: 312, baseType: !66, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !579, file: !72, line: 313, baseType: !133, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !579, file: !72, line: 314, baseType: !63, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !579, file: !72, line: 315, baseType: !63, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !579, file: !72, line: 316, baseType: !19, size: 32, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !71, file: !72, line: 390, baseType: !596, size: 448)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !72, line: 340, size: 448, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !596, file: !72, line: 341, baseType: !70, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !596, file: !72, line: 341, baseType: !36, size: 8, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !596, file: !72, line: 341, baseType: !36, size: 8, offset: 72)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !596, file: !72, line: 341, baseType: !23, size: 16, offset: 80)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !72, line: 341, baseType: !36, size: 8, offset: 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !596, file: !72, line: 341, baseType: !66, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !596, file: !72, line: 342, baseType: !66, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !596, file: !72, line: 343, baseType: !26, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !596, file: !72, line: 344, baseType: !63, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !596, file: !72, line: 345, baseType: !19, size: 32, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !71, file: !72, line: 391, baseType: !609, size: 256)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !72, line: 350, size: 256, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !621}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !609, file: !72, line: 351, baseType: !70, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !609, file: !72, line: 351, baseType: !36, size: 8, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !609, file: !72, line: 351, baseType: !36, size: 8, offset: 72)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !609, file: !72, line: 351, baseType: !23, size: 16, offset: 80)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !609, file: !72, line: 351, baseType: !36, size: 8, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !609, file: !72, line: 351, baseType: !617, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !18, line: 1055, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !380, !26}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !609, file: !72, line: 352, baseType: !26, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !71, file: !72, line: 392, baseType: !623, size: 192)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !72, line: 357, size: 192, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !623, file: !72, line: 358, baseType: !70, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !623, file: !72, line: 358, baseType: !36, size: 8, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !623, file: !72, line: 358, baseType: !36, size: 8, offset: 72)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !623, file: !72, line: 358, baseType: !23, size: 16, offset: 80)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !72, line: 358, baseType: !36, size: 8, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !623, file: !72, line: 358, baseType: !70, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !71, file: !72, line: 399, baseType: !67, size: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !67, file: !29, line: 135, baseType: !36, size: 8, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !29, line: 136, baseType: !36, size: 8, offset: 72)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !67, file: !29, line: 137, baseType: !23, size: 16, offset: 80)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !67, file: !29, line: 138, baseType: !636, size: 32, offset: 96)
!636 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !637, line: 327, size: 32, elements: !638)
!637 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !636, file: !637, line: 328, baseType: !19, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !636, file: !637, line: 329, baseType: !641, size: 32)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 32, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 4)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !67, file: !29, line: 139, baseType: !66, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !67, file: !29, line: 140, baseType: !66, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !67, file: !29, line: 141, baseType: !66, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !67, file: !29, line: 142, baseType: !180, size: 16, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !56, file: !29, line: 829, baseType: !649, size: 64, offset: 320)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !29, line: 716, size: 64, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !649, file: !29, line: 717, baseType: !95, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !649, file: !29, line: 718, baseType: !19, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !649, file: !29, line: 719, baseType: !107, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !649, file: !29, line: 720, baseType: !63, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !649, file: !29, line: 721, baseType: !107, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !649, file: !29, line: 722, baseType: !52, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !56, file: !29, line: 829, baseType: !36, size: 8, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !53, file: !29, line: 877, baseType: !659, size: 640)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !29, line: 835, size: 640, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !659, file: !29, line: 836, baseType: !52, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !659, file: !29, line: 836, baseType: !36, size: 8, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !659, file: !29, line: 836, baseType: !36, size: 8, offset: 72)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !659, file: !29, line: 836, baseType: !23, size: 16, offset: 80)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !659, file: !29, line: 836, baseType: !63, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !659, file: !29, line: 836, baseType: !52, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !659, file: !29, line: 836, baseType: !66, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !659, file: !29, line: 836, baseType: !649, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !659, file: !29, line: 836, baseType: !36, size: 8, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !659, file: !29, line: 836, baseType: !107, size: 64, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !659, file: !29, line: 837, baseType: !63, size: 64, offset: 512)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !659, file: !29, line: 838, baseType: !19, size: 32, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !659, file: !29, line: 839, baseType: !19, size: 32, offset: 608)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !53, file: !29, line: 878, baseType: !675, size: 1600)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !29, line: 846, size: 1600, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !675, file: !29, line: 847, baseType: !52, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !675, file: !29, line: 847, baseType: !36, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !29, line: 847, baseType: !36, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !675, file: !29, line: 847, baseType: !23, size: 16, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !675, file: !29, line: 847, baseType: !63, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !675, file: !29, line: 847, baseType: !52, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !675, file: !29, line: 847, baseType: !66, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !675, file: !29, line: 847, baseType: !649, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !675, file: !29, line: 847, baseType: !36, size: 8, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !675, file: !29, line: 847, baseType: !52, size: 64, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !675, file: !29, line: 848, baseType: !52, size: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !675, file: !29, line: 849, baseType: !107, size: 64, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !675, file: !29, line: 850, baseType: !36, size: 8, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !675, file: !29, line: 851, baseType: !107, size: 64, offset: 704)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !675, file: !29, line: 852, baseType: !107, size: 64, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !675, file: !29, line: 853, baseType: !107, size: 64, offset: 832)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !675, file: !29, line: 854, baseType: !641, size: 32, offset: 896)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !675, file: !29, line: 855, baseType: !19, size: 32, offset: 928)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !675, file: !29, line: 856, baseType: !19, size: 32, offset: 960)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !675, file: !29, line: 857, baseType: !19, size: 32, offset: 992)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !675, file: !29, line: 858, baseType: !19, size: 32, offset: 1024)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !675, file: !29, line: 859, baseType: !19, size: 32, offset: 1056)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !675, file: !29, line: 860, baseType: !19, size: 32, offset: 1088)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !675, file: !29, line: 861, baseType: !19, size: 32, offset: 1120)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !675, file: !29, line: 862, baseType: !19, size: 32, offset: 1152)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !675, file: !29, line: 863, baseType: !19, size: 32, offset: 1184)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !675, file: !29, line: 864, baseType: !19, size: 32, offset: 1216)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !675, file: !29, line: 865, baseType: !19, size: 32, offset: 1248)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !675, file: !29, line: 866, baseType: !19, size: 32, offset: 1280)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !675, file: !29, line: 867, baseType: !19, size: 32, offset: 1312)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !675, file: !29, line: 868, baseType: !23, size: 16, offset: 1344)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !675, file: !29, line: 869, baseType: !36, size: 8, offset: 1360)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !675, file: !29, line: 870, baseType: !36, size: 8, offset: 1368)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !675, file: !29, line: 871, baseType: !36, size: 8, offset: 1376)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !675, file: !29, line: 872, baseType: !712, size: 160, offset: 1384)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 160, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 20)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !43, file: !29, line: 596, baseType: !63, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !43, file: !29, line: 597, baseType: !63, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !43, file: !29, line: 598, baseType: !95, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !28, file: !29, line: 666, baseType: !719, size: 192)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !29, line: 573, size: 192, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !719, file: !29, line: 574, baseType: !26, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !719, file: !29, line: 574, baseType: !36, size: 8, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !29, line: 574, baseType: !36, size: 8, offset: 72)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !719, file: !29, line: 574, baseType: !23, size: 16, offset: 80)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !719, file: !29, line: 574, baseType: !23, size: 16, offset: 96)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !719, file: !29, line: 574, baseType: !70, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !28, file: !29, line: 667, baseType: !728, size: 192)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !29, line: 604, size: 192, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !728, file: !29, line: 605, baseType: !26, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !728, file: !29, line: 605, baseType: !36, size: 8, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !29, line: 605, baseType: !36, size: 8, offset: 72)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !728, file: !29, line: 605, baseType: !23, size: 16, offset: 80)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !728, file: !29, line: 605, baseType: !23, size: 16, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !728, file: !29, line: 605, baseType: !66, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !28, file: !29, line: 668, baseType: !737, size: 448)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !29, line: 608, size: 448, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !737, file: !29, line: 609, baseType: !26, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !737, file: !29, line: 609, baseType: !36, size: 8, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !29, line: 609, baseType: !36, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !737, file: !29, line: 609, baseType: !23, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !737, file: !29, line: 609, baseType: !23, size: 16, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !737, file: !29, line: 609, baseType: !19, size: 32, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !737, file: !29, line: 610, baseType: !52, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !737, file: !29, line: 611, baseType: !63, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !737, file: !29, line: 612, baseType: !63, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !737, file: !29, line: 613, baseType: !19, size: 32, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !28, file: !29, line: 669, baseType: !750, size: 512)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !29, line: 580, size: 512, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !750, file: !29, line: 581, baseType: !26, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !750, file: !29, line: 581, baseType: !36, size: 8, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !29, line: 581, baseType: !36, size: 8, offset: 72)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !750, file: !29, line: 581, baseType: !23, size: 16, offset: 80)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !750, file: !29, line: 581, baseType: !23, size: 16, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !750, file: !29, line: 581, baseType: !19, size: 32, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !750, file: !29, line: 582, baseType: !70, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !750, file: !29, line: 583, baseType: !70, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !750, file: !29, line: 584, baseType: !168, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !750, file: !29, line: 585, baseType: !26, size: 64, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !750, file: !29, line: 586, baseType: !19, size: 32, offset: 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !28, file: !29, line: 670, baseType: !255, size: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !28, file: !29, line: 671, baseType: !765, size: 640)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !29, line: 631, size: 640, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !765, file: !29, line: 632, baseType: !26, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !29, line: 632, baseType: !36, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !29, line: 632, baseType: !36, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !765, file: !29, line: 632, baseType: !23, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !765, file: !29, line: 632, baseType: !23, size: 16, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !765, file: !29, line: 633, baseType: !773, size: 512, offset: 128)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 512, elements: !217)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !28, file: !29, line: 672, baseType: !775, size: 320)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !29, line: 654, size: 320, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !775, file: !29, line: 655, baseType: !26, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !775, file: !29, line: 655, baseType: !36, size: 8, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !29, line: 655, baseType: !36, size: 8, offset: 72)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !775, file: !29, line: 655, baseType: !23, size: 16, offset: 80)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !775, file: !29, line: 655, baseType: !23, size: 16, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !775, file: !29, line: 655, baseType: !36, size: 8, offset: 112)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !775, file: !29, line: 656, baseType: !66, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !775, file: !29, line: 657, baseType: !70, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !775, file: !29, line: 658, baseType: !786, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !29, line: 645, size: 128, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !787, file: !29, line: 646, baseType: !546, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !787, file: !29, line: 647, baseType: !26, size: 64, offset: 64)
!791 = !{!0}
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 56, elements: !213)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!794 = !{i32 7, !"Dwarf Version", i32 4}
!795 = !{i32 2, !"Debug Info Version", i32 3}
!796 = !{i32 1, !"wchar_size", i32 2}
!797 = !{i32 1, !"Code Model", i32 2}
!798 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!799 = distinct !DISubprogram(name: "acpi_ev_is_notify_object", scope: !3, file: !3, line: 35, type: !800, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !802)
!800 = !DISubroutineType(types: !801)
!801 = !{!36, !66}
!802 = !{}
!803 = !DILocalVariable(name: "node", arg: 1, scope: !799, file: !3, line: 35, type: !66)
!804 = !DILocation(line: 35, column: 57, scope: !799)
!805 = !DILocation(line: 38, column: 10, scope: !799)
!806 = !DILocation(line: 38, column: 16, scope: !799)
!807 = !DILocation(line: 38, column: 2, scope: !799)
!808 = !DILocation(line: 45, column: 3, scope: !809)
!809 = distinct !DILexicalBlock(scope: !799, file: !3, line: 38, column: 22)
!810 = !DILocation(line: 49, column: 3, scope: !809)
!811 = !DILocation(line: 51, column: 1, scope: !799)
!812 = distinct !DISubprogram(name: "acpi_ev_queue_notify_request", scope: !3, file: !3, line: 68, type: !813, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !802)
!813 = !DISubroutineType(types: !814)
!814 = !{!17, !66, !19}
!815 = !DILocalVariable(name: "node", arg: 1, scope: !812, file: !3, line: 68, type: !66)
!816 = !DILocation(line: 68, column: 58, scope: !812)
!817 = !DILocalVariable(name: "notify_value", arg: 2, scope: !812, file: !3, line: 68, type: !19)
!818 = !DILocation(line: 68, column: 68, scope: !812)
!819 = !DILocalVariable(name: "obj_desc", scope: !812, file: !3, line: 70, type: !70)
!820 = !DILocation(line: 70, column: 29, scope: !812)
!821 = !DILocalVariable(name: "handler_list_head", scope: !812, file: !3, line: 71, type: !70)
!822 = !DILocation(line: 71, column: 29, scope: !812)
!823 = !DILocalVariable(name: "info", scope: !812, file: !3, line: 72, type: !27)
!824 = !DILocation(line: 72, column: 28, scope: !812)
!825 = !DILocalVariable(name: "handler_list_id", scope: !812, file: !3, line: 73, type: !36)
!826 = !DILocation(line: 73, column: 5, scope: !812)
!827 = !DILocalVariable(name: "status", scope: !812, file: !3, line: 74, type: !17)
!828 = !DILocation(line: 74, column: 14, scope: !812)
!829 = !DILocation(line: 80, column: 32, scope: !830)
!830 = distinct !DILexicalBlock(scope: !812, file: !3, line: 80, column: 6)
!831 = !DILocation(line: 80, column: 7, scope: !830)
!832 = !DILocation(line: 80, column: 6, scope: !812)
!833 = !DILocation(line: 81, column: 3, scope: !834)
!834 = distinct !DILexicalBlock(scope: !830, file: !3, line: 80, column: 39)
!835 = !DILocation(line: 86, column: 6, scope: !836)
!836 = distinct !DILexicalBlock(scope: !812, file: !3, line: 86, column: 6)
!837 = !DILocation(line: 86, column: 19, scope: !836)
!838 = !DILocation(line: 86, column: 6, scope: !812)
!839 = !DILocation(line: 87, column: 19, scope: !840)
!840 = distinct !DILexicalBlock(scope: !836, file: !3, line: 86, column: 43)
!841 = !DILocation(line: 88, column: 2, scope: !840)
!842 = !DILocation(line: 89, column: 19, scope: !843)
!843 = distinct !DILexicalBlock(scope: !836, file: !3, line: 88, column: 9)
!844 = !DILocation(line: 94, column: 41, scope: !812)
!845 = !DILocation(line: 94, column: 13, scope: !812)
!846 = !DILocation(line: 94, column: 11, scope: !812)
!847 = !DILocation(line: 95, column: 6, scope: !848)
!848 = distinct !DILexicalBlock(scope: !812, file: !3, line: 95, column: 6)
!849 = !DILocation(line: 95, column: 6, scope: !812)
!850 = !DILocation(line: 100, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !3, line: 95, column: 16)
!852 = !DILocation(line: 100, column: 17, scope: !851)
!853 = !DILocation(line: 100, column: 31, scope: !851)
!854 = !DILocation(line: 100, column: 43, scope: !851)
!855 = !DILocation(line: 99, column: 21, scope: !851)
!856 = !DILocation(line: 101, column: 2, scope: !851)
!857 = !DILocation(line: 107, column: 30, scope: !858)
!858 = distinct !DILexicalBlock(scope: !812, file: !3, line: 107, column: 6)
!859 = !DILocation(line: 107, column: 7, scope: !858)
!860 = !DILocation(line: 107, column: 47, scope: !858)
!861 = !DILocation(line: 108, column: 6, scope: !858)
!862 = !DILocation(line: 108, column: 10, scope: !858)
!863 = !DILocation(line: 107, column: 6, scope: !812)
!864 = !DILocation(line: 114, column: 3, scope: !865)
!865 = distinct !DILexicalBlock(scope: !858, file: !3, line: 108, column: 29)
!866 = !DILocation(line: 119, column: 9, scope: !812)
!867 = !DILocation(line: 119, column: 7, scope: !812)
!868 = !DILocation(line: 120, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !812, file: !3, line: 120, column: 6)
!870 = !DILocation(line: 120, column: 6, scope: !812)
!871 = !DILocation(line: 121, column: 3, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !3, line: 120, column: 13)
!873 = !DILocation(line: 124, column: 2, scope: !812)
!874 = !DILocation(line: 124, column: 8, scope: !812)
!875 = !DILocation(line: 124, column: 15, scope: !812)
!876 = !DILocation(line: 124, column: 31, scope: !812)
!877 = !DILocation(line: 126, column: 22, scope: !812)
!878 = !DILocation(line: 126, column: 2, scope: !812)
!879 = !DILocation(line: 126, column: 8, scope: !812)
!880 = !DILocation(line: 126, column: 15, scope: !812)
!881 = !DILocation(line: 126, column: 20, scope: !812)
!882 = !DILocation(line: 127, column: 28, scope: !812)
!883 = !DILocation(line: 127, column: 23, scope: !812)
!884 = !DILocation(line: 127, column: 2, scope: !812)
!885 = !DILocation(line: 127, column: 8, scope: !812)
!886 = !DILocation(line: 127, column: 15, scope: !812)
!887 = !DILocation(line: 127, column: 21, scope: !812)
!888 = !DILocation(line: 128, column: 33, scope: !812)
!889 = !DILocation(line: 128, column: 2, scope: !812)
!890 = !DILocation(line: 128, column: 8, scope: !812)
!891 = !DILocation(line: 128, column: 15, scope: !812)
!892 = !DILocation(line: 128, column: 31, scope: !812)
!893 = !DILocation(line: 129, column: 35, scope: !812)
!894 = !DILocation(line: 129, column: 2, scope: !812)
!895 = !DILocation(line: 129, column: 8, scope: !812)
!896 = !DILocation(line: 129, column: 15, scope: !812)
!897 = !DILocation(line: 129, column: 33, scope: !812)
!898 = !DILocation(line: 130, column: 48, scope: !812)
!899 = !DILocation(line: 130, column: 25, scope: !812)
!900 = !DILocation(line: 130, column: 2, scope: !812)
!901 = !DILocation(line: 130, column: 8, scope: !812)
!902 = !DILocation(line: 130, column: 15, scope: !812)
!903 = !DILocation(line: 130, column: 22, scope: !812)
!904 = !DILocation(line: 140, column: 31, scope: !812)
!905 = !DILocation(line: 139, column: 11, scope: !812)
!906 = !DILocation(line: 139, column: 9, scope: !812)
!907 = !DILocation(line: 141, column: 6, scope: !908)
!908 = distinct !DILexicalBlock(scope: !812, file: !3, line: 141, column: 6)
!909 = !DILocation(line: 141, column: 6, scope: !812)
!910 = !DILocation(line: 142, column: 32, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !3, line: 141, column: 28)
!912 = !DILocation(line: 142, column: 3, scope: !911)
!913 = !DILocation(line: 143, column: 2, scope: !911)
!914 = !DILocation(line: 145, column: 10, scope: !812)
!915 = !DILocation(line: 145, column: 2, scope: !812)
!916 = !DILocation(line: 146, column: 1, scope: !812)
!917 = distinct !DISubprogram(name: "acpi_ev_notify_dispatch", scope: !3, file: !3, line: 161, type: !918, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !26}
!920 = !DILocalVariable(name: "context", arg: 1, scope: !917, file: !3, line: 161, type: !26)
!921 = !DILocation(line: 161, column: 61, scope: !917)
!922 = !DILocalVariable(name: "info", scope: !917, file: !3, line: 163, type: !27)
!923 = !DILocation(line: 163, column: 28, scope: !917)
!924 = !DILocation(line: 163, column: 63, scope: !917)
!925 = !DILocation(line: 163, column: 35, scope: !917)
!926 = !DILocalVariable(name: "handler_obj", scope: !917, file: !3, line: 164, type: !70)
!927 = !DILocation(line: 164, column: 29, scope: !917)
!928 = !DILocation(line: 170, column: 6, scope: !929)
!929 = distinct !DILexicalBlock(scope: !917, file: !3, line: 170, column: 6)
!930 = !DILocation(line: 170, column: 12, scope: !929)
!931 = !DILocation(line: 170, column: 19, scope: !929)
!932 = !DILocation(line: 170, column: 27, scope: !929)
!933 = !DILocation(line: 170, column: 6, scope: !917)
!934 = !DILocation(line: 171, column: 3, scope: !935)
!935 = distinct !DILexicalBlock(scope: !929, file: !3, line: 170, column: 36)
!936 = !DILocation(line: 171, column: 9, scope: !935)
!937 = !DILocation(line: 171, column: 16, scope: !935)
!938 = !DILocation(line: 171, column: 24, scope: !935)
!939 = !DILocation(line: 171, column: 32, scope: !935)
!940 = !DILocation(line: 171, column: 38, scope: !935)
!941 = !DILocation(line: 171, column: 45, scope: !935)
!942 = !DILocation(line: 172, column: 11, scope: !935)
!943 = !DILocation(line: 172, column: 17, scope: !935)
!944 = !DILocation(line: 172, column: 24, scope: !935)
!945 = !DILocation(line: 173, column: 11, scope: !935)
!946 = !DILocation(line: 173, column: 17, scope: !935)
!947 = !DILocation(line: 173, column: 24, scope: !935)
!948 = !DILocation(line: 173, column: 32, scope: !935)
!949 = !DILocation(line: 174, column: 2, scope: !935)
!950 = !DILocation(line: 178, column: 16, scope: !917)
!951 = !DILocation(line: 178, column: 22, scope: !917)
!952 = !DILocation(line: 178, column: 29, scope: !917)
!953 = !DILocation(line: 178, column: 14, scope: !917)
!954 = !DILocation(line: 179, column: 2, scope: !917)
!955 = !DILocation(line: 179, column: 9, scope: !917)
!956 = !DILocation(line: 180, column: 3, scope: !957)
!957 = distinct !DILexicalBlock(scope: !917, file: !3, line: 179, column: 22)
!958 = !DILocation(line: 180, column: 16, scope: !957)
!959 = !DILocation(line: 180, column: 23, scope: !957)
!960 = !DILocation(line: 180, column: 31, scope: !957)
!961 = !DILocation(line: 180, column: 37, scope: !957)
!962 = !DILocation(line: 180, column: 44, scope: !957)
!963 = !DILocation(line: 181, column: 10, scope: !957)
!964 = !DILocation(line: 181, column: 16, scope: !957)
!965 = !DILocation(line: 181, column: 23, scope: !957)
!966 = !DILocation(line: 182, column: 10, scope: !957)
!967 = !DILocation(line: 182, column: 23, scope: !957)
!968 = !DILocation(line: 182, column: 30, scope: !957)
!969 = !DILocation(line: 185, column: 7, scope: !957)
!970 = !DILocation(line: 185, column: 20, scope: !957)
!971 = !DILocation(line: 185, column: 27, scope: !957)
!972 = !DILocation(line: 185, column: 32, scope: !957)
!973 = !DILocation(line: 185, column: 38, scope: !957)
!974 = !DILocation(line: 185, column: 45, scope: !957)
!975 = !DILocation(line: 184, column: 15, scope: !957)
!976 = distinct !{!976, !954, !977}
!977 = !DILocation(line: 186, column: 2, scope: !917)
!978 = !DILocation(line: 190, column: 31, scope: !917)
!979 = !DILocation(line: 190, column: 2, scope: !917)
!980 = !DILocation(line: 191, column: 1, scope: !917)
!981 = distinct !DISubprogram(name: "acpi_ev_terminate", scope: !3, file: !3, line: 206, type: !982, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !802)
!982 = !DISubroutineType(types: !983)
!983 = !{null}
!984 = !DILocalVariable(name: "i", scope: !981, file: !3, line: 208, type: !19)
!985 = !DILocation(line: 208, column: 6, scope: !981)
!986 = !DILocalVariable(name: "status", scope: !981, file: !3, line: 209, type: !17)
!987 = !DILocation(line: 209, column: 14, scope: !981)
!988 = !DILocation(line: 213, column: 6, scope: !989)
!989 = distinct !DILexicalBlock(scope: !981, file: !3, line: 213, column: 6)
!990 = !DILocation(line: 213, column: 6, scope: !981)
!991 = !DILocation(line: 221, column: 10, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 221, column: 3)
!993 = distinct !DILexicalBlock(scope: !989, file: !3, line: 213, column: 35)
!994 = !DILocation(line: 221, column: 8, scope: !992)
!995 = !DILocation(line: 221, column: 15, scope: !996)
!996 = distinct !DILexicalBlock(scope: !992, file: !3, line: 221, column: 3)
!997 = !DILocation(line: 221, column: 17, scope: !996)
!998 = !DILocation(line: 221, column: 3, scope: !992)
!999 = !DILocation(line: 222, column: 32, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !996, file: !3, line: 221, column: 47)
!1001 = !DILocation(line: 222, column: 13, scope: !1000)
!1002 = !DILocation(line: 222, column: 11, scope: !1000)
!1003 = !DILocation(line: 223, column: 8, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 223, column: 8)
!1005 = !DILocation(line: 223, column: 8, scope: !1000)
!1006 = !DILocation(line: 224, column: 5, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 223, column: 30)
!1008 = !DILocation(line: 227, column: 4, scope: !1007)
!1009 = !DILocation(line: 228, column: 3, scope: !1000)
!1010 = !DILocation(line: 221, column: 43, scope: !996)
!1011 = !DILocation(line: 221, column: 3, scope: !996)
!1012 = distinct !{!1012, !998, !1013}
!1013 = !DILocation(line: 228, column: 3, scope: !992)
!1014 = !DILocation(line: 232, column: 12, scope: !993)
!1015 = !DILocation(line: 232, column: 10, scope: !993)
!1016 = !DILocation(line: 233, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !993, file: !3, line: 233, column: 7)
!1018 = !DILocation(line: 233, column: 7, scope: !993)
!1019 = !DILocation(line: 234, column: 4, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 233, column: 29)
!1021 = !DILocation(line: 236, column: 3, scope: !1020)
!1022 = !DILocation(line: 238, column: 12, scope: !993)
!1023 = !DILocation(line: 238, column: 10, scope: !993)
!1024 = !DILocation(line: 239, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !993, file: !3, line: 239, column: 7)
!1026 = !DILocation(line: 239, column: 7, scope: !993)
!1027 = !DILocation(line: 240, column: 4, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 239, column: 29)
!1029 = !DILocation(line: 242, column: 3, scope: !1028)
!1030 = !DILocation(line: 244, column: 31, scope: !993)
!1031 = !DILocation(line: 245, column: 2, scope: !993)
!1032 = !DILocation(line: 249, column: 11, scope: !981)
!1033 = !DILocation(line: 249, column: 9, scope: !981)
!1034 = !DILocation(line: 250, column: 6, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !981, file: !3, line: 250, column: 6)
!1036 = !DILocation(line: 250, column: 6, scope: !981)
!1037 = !DILocation(line: 251, column: 3, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 250, column: 28)
!1039 = !DILocation(line: 252, column: 2, scope: !1038)
!1040 = !DILocation(line: 256, column: 11, scope: !981)
!1041 = !DILocation(line: 256, column: 9, scope: !981)
!1042 = !DILocation(line: 257, column: 6, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !981, file: !3, line: 257, column: 6)
!1044 = !DILocation(line: 257, column: 6, scope: !981)
!1045 = !DILocation(line: 258, column: 3, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 257, column: 28)
!1047 = !DILocation(line: 260, column: 2, scope: !1046)
!1048 = !DILocation(line: 264, column: 6, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !981, file: !3, line: 264, column: 6)
!1050 = !DILocation(line: 264, column: 29, scope: !1049)
!1051 = !DILocation(line: 264, column: 6, scope: !981)
!1052 = !DILocation(line: 265, column: 12, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 264, column: 54)
!1054 = !DILocation(line: 265, column: 10, scope: !1053)
!1055 = !DILocation(line: 266, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 266, column: 7)
!1057 = !DILocation(line: 266, column: 7, scope: !1053)
!1058 = !DILocation(line: 267, column: 4, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 266, column: 29)
!1060 = !DILocation(line: 268, column: 3, scope: !1059)
!1061 = !DILocation(line: 269, column: 2, scope: !1053)
!1062 = !DILocation(line: 270, column: 2, scope: !981)
