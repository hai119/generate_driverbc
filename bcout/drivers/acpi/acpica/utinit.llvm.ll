; ModuleID = '../bcout/drivers/acpi/acpica/utinit.llvm.bc'
source_filename = "drivers/acpi/acpica/utinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_address_range = type { %struct.acpi_address_range*, %struct.acpi_namespace_node*, i64, i64 }
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
%struct.acpi_mutex_info = type { i8*, i32, i64 }
%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i32 }
%struct.acpi_gpe_block_info = type { %struct.acpi_namespace_node*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_register_info*, %struct.acpi_gpe_event_info*, i64, i32, i16, i16, i8, i8 }
%struct.acpi_gpe_register_info = type { %struct.acpi_gpe_address, %struct.acpi_gpe_address, i16, i8, i8, i8, i8 }
%struct.acpi_gpe_address = type { i8, i64 }
%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, %struct.acpi_gpe_register_info*, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { %struct.acpi_namespace_node* }
%struct.acpi_sci_handler_info = type { %struct.acpi_sci_handler_info*, i32 (i8*)*, i8* }
%struct.acpi_global_notify_handler = type { void (i8*, i32, i8*)*, i8* }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }

@acpi_gbl_address_range_list = external dso_local global [2 x %struct.acpi_address_range*], align 16
@acpi_gbl_mutex_info = external dso_local global [6 x %struct.acpi_mutex_info], align 16
@acpi_gbl_owner_id_mask = external dso_local global [128 x i32], align 16
@acpi_method_count = external dso_local global i32, align 4
@acpi_sci_count = external dso_local global i32, align 4
@acpi_gpe_count = external dso_local global i32, align 4
@acpi_fixed_event_count = external dso_local global [5 x i32], align 16
@acpi_gbl_all_gpes_initialized = external dso_local global i8, align 1
@acpi_gbl_gpe_xrupt_list_head = external dso_local global %struct.acpi_gpe_xrupt_info*, align 8
@acpi_gbl_gpe_fadt_blocks = external dso_local global [2 x %struct.acpi_gpe_block_info*], align 16
@acpi_current_gpe_count = external dso_local global i32, align 4
@acpi_gbl_global_event_handler = external dso_local global void (i32, i8*, i32, i8*)*, align 8
@acpi_gbl_sci_handler_list = external dso_local global %struct.acpi_sci_handler_info*, align 8
@acpi_gbl_global_notify = external dso_local global [2 x %struct.acpi_global_notify_handler], align 16
@acpi_gbl_exception_handler = external dso_local global i32 (i32, i32, i16, i32, i8*)*, align 8
@acpi_gbl_init_handler = external dso_local global i32 (i8*, i32)*, align 8
@acpi_gbl_table_handler = external dso_local global i32 (i32, i8*, i8*)*, align 8
@acpi_gbl_interface_handler = external dso_local global i32 (i8*, i32)*, align 8
@acpi_gbl_global_lock_semaphore = external dso_local global i8*, align 8
@acpi_gbl_global_lock_mutex = external dso_local global %union.acpi_operand_object*, align 8
@acpi_gbl_global_lock_acquired = external dso_local global i8, align 1
@acpi_gbl_global_lock_handle = external dso_local global i16, align 2
@acpi_gbl_global_lock_present = external dso_local global i8, align 1
@acpi_gbl_DSDT = external dso_local global %struct.acpi_table_header*, align 8
@acpi_gbl_cm_single_step = external dso_local global i8, align 1
@acpi_gbl_shutdown = external dso_local global i8, align 1
@acpi_gbl_ns_lookup_count = external dso_local global i32, align 4
@acpi_gbl_ps_find_count = external dso_local global i32, align 4
@acpi_gbl_acpi_hardware_present = external dso_local global i8, align 1
@acpi_gbl_last_owner_id_index = external dso_local global i8, align 1
@acpi_gbl_next_owner_id_offset = external dso_local global i8, align 1
@acpi_gbl_debugger_configuration = external dso_local global i8, align 1
@acpi_gbl_osi_mutex = external dso_local global i8*, align 8
@acpi_gbl_events_initialized = external dso_local global i8, align 1
@acpi_gbl_system_awake_and_running = external dso_local global i8, align 1
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@acpi_gbl_root_node_struct = external dso_local global %struct.acpi_namespace_node, align 8
@_acpi_module_name = internal constant [7 x i8] c"utinit\00", align 1, !dbg !0
@.str = private unnamed_addr constant [37 x i8] c"ACPI Subsystem is already terminated\00", align 1
@acpi_gbl_startup_flags = external dso_local global i32, align 4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_init_globals() #0 !dbg !28 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !33, metadata !DIExpression()), !dbg !34
  %call = call i32 @acpi_ut_create_caches() #3, !dbg !35
  store i32 %call, i32* %status, align 4, !dbg !36
  %0 = load i32, i32* %status, align 4, !dbg !37
  %tobool = icmp ne i32 %0, 0, !dbg !37
  br i1 %tobool, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !40
  store i32 %1, i32* %retval, align 4, !dbg !40
  br label %return, !dbg !40

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !42
  br label %for.cond, !dbg !44

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !45
  %cmp = icmp ult i32 %2, 2, !dbg !47
  br i1 %cmp, label %for.body, label %for.end, !dbg !48

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !49
  %idxprom = zext i32 %3 to i64, !dbg !51
  %arrayidx = getelementptr [2 x %struct.acpi_address_range*], [2 x %struct.acpi_address_range*]* @acpi_gbl_address_range_list, i64 0, i64 %idxprom, !dbg !51
  store %struct.acpi_address_range* null, %struct.acpi_address_range** %arrayidx, align 8, !dbg !52
  br label %for.inc, !dbg !53

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !54
  %inc = add i32 %4, 1, !dbg !54
  store i32 %inc, i32* %i, align 4, !dbg !54
  br label %for.cond, !dbg !55, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !58
  br label %for.cond1, !dbg !60

for.cond1:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, i32* %i, align 4, !dbg !61
  %cmp2 = icmp ult i32 %5, 6, !dbg !63
  br i1 %cmp2, label %for.body3, label %for.end12, !dbg !64

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, i32* %i, align 4, !dbg !65
  %idxprom4 = zext i32 %6 to i64, !dbg !67
  %arrayidx5 = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom4, !dbg !67
  %mutex = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx5, i32 0, i32 0, !dbg !68
  store i8* null, i8** %mutex, align 8, !dbg !69
  %7 = load i32, i32* %i, align 4, !dbg !70
  %idxprom6 = zext i32 %7 to i64, !dbg !71
  %arrayidx7 = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom6, !dbg !71
  %thread_id = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx7, i32 0, i32 2, !dbg !72
  store i64 0, i64* %thread_id, align 8, !dbg !73
  %8 = load i32, i32* %i, align 4, !dbg !74
  %idxprom8 = zext i32 %8 to i64, !dbg !75
  %arrayidx9 = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom8, !dbg !75
  %use_count = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx9, i32 0, i32 1, !dbg !76
  store i32 0, i32* %use_count, align 8, !dbg !77
  br label %for.inc10, !dbg !78

for.inc10:                                        ; preds = %for.body3
  %9 = load i32, i32* %i, align 4, !dbg !79
  %inc11 = add i32 %9, 1, !dbg !79
  store i32 %inc11, i32* %i, align 4, !dbg !79
  br label %for.cond1, !dbg !80, !llvm.loop !81

for.end12:                                        ; preds = %for.cond1
  store i32 0, i32* %i, align 4, !dbg !83
  br label %for.cond13, !dbg !85

for.cond13:                                       ; preds = %for.inc18, %for.end12
  %10 = load i32, i32* %i, align 4, !dbg !86
  %cmp14 = icmp ult i32 %10, 128, !dbg !88
  br i1 %cmp14, label %for.body15, label %for.end20, !dbg !89

for.body15:                                       ; preds = %for.cond13
  %11 = load i32, i32* %i, align 4, !dbg !90
  %idxprom16 = zext i32 %11 to i64, !dbg !92
  %arrayidx17 = getelementptr [128 x i32], [128 x i32]* @acpi_gbl_owner_id_mask, i64 0, i64 %idxprom16, !dbg !92
  store i32 0, i32* %arrayidx17, align 4, !dbg !93
  br label %for.inc18, !dbg !94

for.inc18:                                        ; preds = %for.body15
  %12 = load i32, i32* %i, align 4, !dbg !95
  %inc19 = add i32 %12, 1, !dbg !95
  store i32 %inc19, i32* %i, align 4, !dbg !95
  br label %for.cond13, !dbg !96, !llvm.loop !97

for.end20:                                        ; preds = %for.cond13
  store i32 -2147483648, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @acpi_gbl_owner_id_mask, i64 0, i64 127), align 4, !dbg !99
  store i32 0, i32* @acpi_method_count, align 4, !dbg !100
  store i32 0, i32* @acpi_sci_count, align 4, !dbg !101
  store i32 0, i32* @acpi_gpe_count, align 4, !dbg !102
  store i32 0, i32* %i, align 4, !dbg !103
  br label %for.cond21, !dbg !105

for.cond21:                                       ; preds = %for.inc26, %for.end20
  %13 = load i32, i32* %i, align 4, !dbg !106
  %cmp22 = icmp ult i32 %13, 5, !dbg !108
  br i1 %cmp22, label %for.body23, label %for.end28, !dbg !109

for.body23:                                       ; preds = %for.cond21
  %14 = load i32, i32* %i, align 4, !dbg !110
  %idxprom24 = zext i32 %14 to i64, !dbg !112
  %arrayidx25 = getelementptr [5 x i32], [5 x i32]* @acpi_fixed_event_count, i64 0, i64 %idxprom24, !dbg !112
  store i32 0, i32* %arrayidx25, align 4, !dbg !113
  br label %for.inc26, !dbg !114

for.inc26:                                        ; preds = %for.body23
  %15 = load i32, i32* %i, align 4, !dbg !115
  %inc27 = add i32 %15, 1, !dbg !115
  store i32 %inc27, i32* %i, align 4, !dbg !115
  br label %for.cond21, !dbg !116, !llvm.loop !117

for.end28:                                        ; preds = %for.cond21
  store i8 0, i8* @acpi_gbl_all_gpes_initialized, align 1, !dbg !119
  store %struct.acpi_gpe_xrupt_info* null, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !120
  store %struct.acpi_gpe_block_info* null, %struct.acpi_gpe_block_info** getelementptr inbounds ([2 x %struct.acpi_gpe_block_info*], [2 x %struct.acpi_gpe_block_info*]* @acpi_gbl_gpe_fadt_blocks, i64 0, i64 0), align 16, !dbg !121
  store %struct.acpi_gpe_block_info* null, %struct.acpi_gpe_block_info** getelementptr inbounds ([2 x %struct.acpi_gpe_block_info*], [2 x %struct.acpi_gpe_block_info*]* @acpi_gbl_gpe_fadt_blocks, i64 0, i64 1), align 8, !dbg !122
  store i32 0, i32* @acpi_current_gpe_count, align 4, !dbg !123
  store void (i32, i8*, i32, i8*)* null, void (i32, i8*, i32, i8*)** @acpi_gbl_global_event_handler, align 8, !dbg !124
  store %struct.acpi_sci_handler_info* null, %struct.acpi_sci_handler_info** @acpi_gbl_sci_handler_list, align 8, !dbg !125
  store void (i8*, i32, i8*)* null, void (i8*, i32, i8*)** getelementptr inbounds ([2 x %struct.acpi_global_notify_handler], [2 x %struct.acpi_global_notify_handler]* @acpi_gbl_global_notify, i64 0, i64 0, i32 0), align 16, !dbg !126
  store void (i8*, i32, i8*)* null, void (i8*, i32, i8*)** getelementptr inbounds ([2 x %struct.acpi_global_notify_handler], [2 x %struct.acpi_global_notify_handler]* @acpi_gbl_global_notify, i64 0, i64 1, i32 0), align 16, !dbg !127
  store i32 (i32, i32, i16, i32, i8*)* null, i32 (i32, i32, i16, i32, i8*)** @acpi_gbl_exception_handler, align 8, !dbg !128
  store i32 (i8*, i32)* null, i32 (i8*, i32)** @acpi_gbl_init_handler, align 8, !dbg !129
  store i32 (i32, i8*, i8*)* null, i32 (i32, i8*, i8*)** @acpi_gbl_table_handler, align 8, !dbg !130
  store i32 (i8*, i32)* null, i32 (i8*, i32)** @acpi_gbl_interface_handler, align 8, !dbg !131
  store i8* null, i8** @acpi_gbl_global_lock_semaphore, align 8, !dbg !132
  store %union.acpi_operand_object* null, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8, !dbg !133
  store i8 0, i8* @acpi_gbl_global_lock_acquired, align 1, !dbg !134
  store i16 0, i16* @acpi_gbl_global_lock_handle, align 2, !dbg !135
  store i8 0, i8* @acpi_gbl_global_lock_present, align 1, !dbg !136
  store %struct.acpi_table_header* null, %struct.acpi_table_header** @acpi_gbl_DSDT, align 8, !dbg !137
  store i8 0, i8* @acpi_gbl_cm_single_step, align 1, !dbg !138
  store i8 0, i8* @acpi_gbl_shutdown, align 1, !dbg !139
  store i32 0, i32* @acpi_gbl_ns_lookup_count, align 4, !dbg !140
  store i32 0, i32* @acpi_gbl_ps_find_count, align 4, !dbg !141
  store i8 1, i8* @acpi_gbl_acpi_hardware_present, align 1, !dbg !142
  store i8 0, i8* @acpi_gbl_last_owner_id_index, align 1, !dbg !143
  store i8 0, i8* @acpi_gbl_next_owner_id_offset, align 1, !dbg !144
  store i8 1, i8* @acpi_gbl_debugger_configuration, align 1, !dbg !145
  store i8* null, i8** @acpi_gbl_osi_mutex, align 8, !dbg !146
  store i8 0, i8* @acpi_gbl_events_initialized, align 1, !dbg !147
  store i8 1, i8* @acpi_gbl_system_awake_and_running, align 1, !dbg !148
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !149
  store i32 1600085852, i32* getelementptr inbounds (%struct.acpi_namespace_node, %struct.acpi_namespace_node* @acpi_gbl_root_node_struct, i32 0, i32 4, i32 0), align 4, !dbg !150
  store i8 15, i8* getelementptr inbounds (%struct.acpi_namespace_node, %struct.acpi_namespace_node* @acpi_gbl_root_node_struct, i32 0, i32 1), align 8, !dbg !151
  store i8 6, i8* getelementptr inbounds (%struct.acpi_namespace_node, %struct.acpi_namespace_node* @acpi_gbl_root_node_struct, i32 0, i32 2), align 1, !dbg !152
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** getelementptr inbounds (%struct.acpi_namespace_node, %struct.acpi_namespace_node* @acpi_gbl_root_node_struct, i32 0, i32 5), align 8, !dbg !153
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** getelementptr inbounds (%struct.acpi_namespace_node, %struct.acpi_namespace_node* @acpi_gbl_root_node_struct, i32 0, i32 6), align 8, !dbg !154
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** getelementptr inbounds (%struct.acpi_namespace_node, %struct.acpi_namespace_node* @acpi_gbl_root_node_struct, i32 0, i32 7), align 8, !dbg !155
  store %union.acpi_operand_object* null, %union.acpi_operand_object** getelementptr inbounds (%struct.acpi_namespace_node, %struct.acpi_namespace_node* @acpi_gbl_root_node_struct, i32 0, i32 0), align 8, !dbg !156
  store i32 0, i32* %retval, align 4, !dbg !157
  br label %return, !dbg !157

return:                                           ; preds = %for.end28, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !158
  ret i32 %16, !dbg !158
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_create_caches() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_subsystem_shutdown() #0 !dbg !159 {
entry:
  %0 = load i8, i8* @acpi_gbl_shutdown, align 1, !dbg !162
  %tobool = icmp ne i8 %0, 0, !dbg !162
  br i1 %tobool, label %if.then, label %if.end, !dbg !164

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 251, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0)) #3, !dbg !165
  br label %return, !dbg !167

if.end:                                           ; preds = %entry
  store i8 1, i8* @acpi_gbl_shutdown, align 1, !dbg !168
  store i32 0, i32* @acpi_gbl_startup_flags, align 4, !dbg !169
  call void @acpi_ev_terminate() #3, !dbg !170
  %call = call i32 @acpi_ut_interface_terminate() #3, !dbg !171
  call void @acpi_ns_terminate() #3, !dbg !172
  call void @acpi_tb_terminate() #3, !dbg !173
  call void @acpi_ut_terminate() #3, !dbg !174
  %call1 = call i32 @acpi_ut_delete_caches() #3, !dbg !175
  br label %return, !dbg !176

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !177
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ev_terminate() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_interface_terminate() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ns_terminate() #2

; Function Attrs: noredzone
declare dso_local void @acpi_tb_terminate() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ut_terminate() #0 !dbg !178 {
entry:
  call void @acpi_ut_free_gpe_lists() #3, !dbg !179
  call void @acpi_ut_delete_address_lists() #3, !dbg !180
  ret void, !dbg !181
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_delete_caches() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ut_free_gpe_lists() #0 !dbg !182 {
entry:
  %gpe_block = alloca %struct.acpi_gpe_block_info*, align 8
  %next_gpe_block = alloca %struct.acpi_gpe_block_info*, align 8
  %gpe_xrupt_info = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %next_gpe_xrupt_info = alloca %struct.acpi_gpe_xrupt_info*, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block, metadata !183, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %next_gpe_block, metadata !946, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, metadata !948, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt_info, metadata !950, metadata !DIExpression()), !dbg !951
  %0 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !952
  store %struct.acpi_gpe_xrupt_info* %0, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !953
  br label %while.cond, !dbg !954

while.cond:                                       ; preds = %while.end, %entry
  %1 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !955
  %tobool = icmp ne %struct.acpi_gpe_xrupt_info* %1, null, !dbg !954
  br i1 %tobool, label %while.body, label %while.end5, !dbg !954

while.body:                                       ; preds = %while.cond
  %2 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !956
  %gpe_block_list_head = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %2, i32 0, i32 2, !dbg !958
  %3 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block_list_head, align 8, !dbg !958
  store %struct.acpi_gpe_block_info* %3, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !959
  br label %while.cond1, !dbg !960

while.cond1:                                      ; preds = %while.body3, %while.body
  %4 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !961
  %tobool2 = icmp ne %struct.acpi_gpe_block_info* %4, null, !dbg !960
  br i1 %tobool2, label %while.body3, label %while.end, !dbg !960

while.body3:                                      ; preds = %while.cond1
  %5 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !962
  %next = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %5, i32 0, i32 2, !dbg !964
  %6 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next, align 8, !dbg !964
  store %struct.acpi_gpe_block_info* %6, %struct.acpi_gpe_block_info** %next_gpe_block, align 8, !dbg !965
  %7 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !966
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %7, i32 0, i32 5, !dbg !966
  %8 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %event_info, align 8, !dbg !966
  %9 = bitcast %struct.acpi_gpe_event_info* %8 to i8*, !dbg !966
  call void @acpi_os_free(i8* %9) #3, !dbg !966
  %10 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !967
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %10, i32 0, i32 4, !dbg !967
  %11 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !967
  %12 = bitcast %struct.acpi_gpe_register_info* %11 to i8*, !dbg !967
  call void @acpi_os_free(i8* %12) #3, !dbg !967
  %13 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !968
  %14 = bitcast %struct.acpi_gpe_block_info* %13 to i8*, !dbg !968
  call void @acpi_os_free(i8* %14) #3, !dbg !968
  %15 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next_gpe_block, align 8, !dbg !969
  store %struct.acpi_gpe_block_info* %15, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !970
  br label %while.cond1, !dbg !960, !llvm.loop !971

while.end:                                        ; preds = %while.cond1
  %16 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !973
  %next4 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %16, i32 0, i32 1, !dbg !974
  %17 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next4, align 8, !dbg !974
  store %struct.acpi_gpe_xrupt_info* %17, %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt_info, align 8, !dbg !975
  %18 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !976
  %19 = bitcast %struct.acpi_gpe_xrupt_info* %18 to i8*, !dbg !976
  call void @acpi_os_free(i8* %19) #3, !dbg !976
  %20 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt_info, align 8, !dbg !977
  store %struct.acpi_gpe_xrupt_info* %20, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !978
  br label %while.cond, !dbg !954, !llvm.loop !979

while.end5:                                       ; preds = %while.cond
  ret void, !dbg !981
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_address_lists() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !982 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !986, metadata !DIExpression()), !dbg !987
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !988
  call void @kfree(i8* %0) #3, !dbg !989
  ret void, !dbg !990
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utinit.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !7, !12, !15}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!11 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !16, line: 421, baseType: !12)
!16 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!17 = !{!0}
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 56, elements: !21)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !{!22}
!22 = !DISubrange(count: 7)
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"Code Model", i32 2}
!27 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!28 = distinct !DISubprogram(name: "acpi_ut_init_globals", scope: !3, file: !3, line: 85, type: !29, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!29 = !DISubroutineType(types: !30)
!30 = !{!15}
!31 = !DILocalVariable(name: "status", scope: !28, file: !3, line: 87, type: !15)
!32 = !DILocation(line: 87, column: 14, scope: !28)
!33 = !DILocalVariable(name: "i", scope: !28, file: !3, line: 88, type: !12)
!34 = !DILocation(line: 88, column: 6, scope: !28)
!35 = !DILocation(line: 94, column: 11, scope: !28)
!36 = !DILocation(line: 94, column: 9, scope: !28)
!37 = !DILocation(line: 95, column: 6, scope: !38)
!38 = distinct !DILexicalBlock(scope: !28, file: !3, line: 95, column: 6)
!39 = !DILocation(line: 95, column: 6, scope: !28)
!40 = !DILocation(line: 96, column: 3, scope: !41)
!41 = distinct !DILexicalBlock(scope: !38, file: !3, line: 95, column: 28)
!42 = !DILocation(line: 101, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !28, file: !3, line: 101, column: 2)
!44 = !DILocation(line: 101, column: 7, scope: !43)
!45 = !DILocation(line: 101, column: 14, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !3, line: 101, column: 2)
!47 = !DILocation(line: 101, column: 16, scope: !46)
!48 = !DILocation(line: 101, column: 2, scope: !43)
!49 = !DILocation(line: 102, column: 31, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !3, line: 101, column: 47)
!51 = !DILocation(line: 102, column: 3, scope: !50)
!52 = !DILocation(line: 102, column: 34, scope: !50)
!53 = !DILocation(line: 103, column: 2, scope: !50)
!54 = !DILocation(line: 101, column: 43, scope: !46)
!55 = !DILocation(line: 101, column: 2, scope: !46)
!56 = distinct !{!56, !48, !57}
!57 = !DILocation(line: 103, column: 2, scope: !43)
!58 = !DILocation(line: 107, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !28, file: !3, line: 107, column: 2)
!60 = !DILocation(line: 107, column: 7, scope: !59)
!61 = !DILocation(line: 107, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !3, line: 107, column: 2)
!63 = !DILocation(line: 107, column: 16, scope: !62)
!64 = !DILocation(line: 107, column: 2, scope: !59)
!65 = !DILocation(line: 108, column: 23, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !3, line: 107, column: 39)
!67 = !DILocation(line: 108, column: 3, scope: !66)
!68 = !DILocation(line: 108, column: 26, scope: !66)
!69 = !DILocation(line: 108, column: 32, scope: !66)
!70 = !DILocation(line: 109, column: 23, scope: !66)
!71 = !DILocation(line: 109, column: 3, scope: !66)
!72 = !DILocation(line: 109, column: 26, scope: !66)
!73 = !DILocation(line: 109, column: 36, scope: !66)
!74 = !DILocation(line: 110, column: 23, scope: !66)
!75 = !DILocation(line: 110, column: 3, scope: !66)
!76 = !DILocation(line: 110, column: 26, scope: !66)
!77 = !DILocation(line: 110, column: 36, scope: !66)
!78 = !DILocation(line: 111, column: 2, scope: !66)
!79 = !DILocation(line: 107, column: 35, scope: !62)
!80 = !DILocation(line: 107, column: 2, scope: !62)
!81 = distinct !{!81, !64, !82}
!82 = !DILocation(line: 111, column: 2, scope: !59)
!83 = !DILocation(line: 113, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !28, file: !3, line: 113, column: 2)
!85 = !DILocation(line: 113, column: 7, scope: !84)
!86 = !DILocation(line: 113, column: 14, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !3, line: 113, column: 2)
!88 = !DILocation(line: 113, column: 16, scope: !87)
!89 = !DILocation(line: 113, column: 2, scope: !84)
!90 = !DILocation(line: 114, column: 26, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !3, line: 113, column: 47)
!92 = !DILocation(line: 114, column: 3, scope: !91)
!93 = !DILocation(line: 114, column: 29, scope: !91)
!94 = !DILocation(line: 115, column: 2, scope: !91)
!95 = !DILocation(line: 113, column: 43, scope: !87)
!96 = !DILocation(line: 113, column: 2, scope: !87)
!97 = distinct !{!97, !89, !98}
!98 = !DILocation(line: 115, column: 2, scope: !84)
!99 = !DILocation(line: 119, column: 53, scope: !28)
!100 = !DILocation(line: 123, column: 20, scope: !28)
!101 = !DILocation(line: 124, column: 17, scope: !28)
!102 = !DILocation(line: 125, column: 17, scope: !28)
!103 = !DILocation(line: 127, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !28, file: !3, line: 127, column: 2)
!105 = !DILocation(line: 127, column: 7, scope: !104)
!106 = !DILocation(line: 127, column: 14, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !3, line: 127, column: 2)
!108 = !DILocation(line: 127, column: 16, scope: !107)
!109 = !DILocation(line: 127, column: 2, scope: !104)
!110 = !DILocation(line: 128, column: 26, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !3, line: 127, column: 46)
!112 = !DILocation(line: 128, column: 3, scope: !111)
!113 = !DILocation(line: 128, column: 29, scope: !111)
!114 = !DILocation(line: 129, column: 2, scope: !111)
!115 = !DILocation(line: 127, column: 42, scope: !107)
!116 = !DILocation(line: 127, column: 2, scope: !107)
!117 = distinct !{!117, !109, !118}
!118 = !DILocation(line: 129, column: 2, scope: !104)
!119 = !DILocation(line: 135, column: 32, scope: !28)
!120 = !DILocation(line: 136, column: 31, scope: !28)
!121 = !DILocation(line: 137, column: 30, scope: !28)
!122 = !DILocation(line: 138, column: 30, scope: !28)
!123 = !DILocation(line: 139, column: 25, scope: !28)
!124 = !DILocation(line: 141, column: 32, scope: !28)
!125 = !DILocation(line: 142, column: 28, scope: !28)
!126 = !DILocation(line: 148, column: 36, scope: !28)
!127 = !DILocation(line: 149, column: 36, scope: !28)
!128 = !DILocation(line: 150, column: 29, scope: !28)
!129 = !DILocation(line: 151, column: 24, scope: !28)
!130 = !DILocation(line: 152, column: 25, scope: !28)
!131 = !DILocation(line: 153, column: 29, scope: !28)
!132 = !DILocation(line: 157, column: 33, scope: !28)
!133 = !DILocation(line: 158, column: 29, scope: !28)
!134 = !DILocation(line: 159, column: 32, scope: !28)
!135 = !DILocation(line: 160, column: 30, scope: !28)
!136 = !DILocation(line: 161, column: 31, scope: !28)
!137 = !DILocation(line: 165, column: 16, scope: !28)
!138 = !DILocation(line: 166, column: 26, scope: !28)
!139 = !DILocation(line: 167, column: 20, scope: !28)
!140 = !DILocation(line: 168, column: 27, scope: !28)
!141 = !DILocation(line: 169, column: 25, scope: !28)
!142 = !DILocation(line: 170, column: 33, scope: !28)
!143 = !DILocation(line: 171, column: 31, scope: !28)
!144 = !DILocation(line: 172, column: 32, scope: !28)
!145 = !DILocation(line: 173, column: 34, scope: !28)
!146 = !DILocation(line: 174, column: 21, scope: !28)
!147 = !DILocation(line: 178, column: 30, scope: !28)
!148 = !DILocation(line: 179, column: 36, scope: !28)
!149 = !DILocation(line: 183, column: 21, scope: !28)
!150 = !DILocation(line: 184, column: 41, scope: !28)
!151 = !DILocation(line: 185, column: 44, scope: !28)
!152 = !DILocation(line: 186, column: 33, scope: !28)
!153 = !DILocation(line: 187, column: 35, scope: !28)
!154 = !DILocation(line: 188, column: 34, scope: !28)
!155 = !DILocation(line: 189, column: 33, scope: !28)
!156 = !DILocation(line: 190, column: 35, scope: !28)
!157 = !DILocation(line: 207, column: 2, scope: !28)
!158 = !DILocation(line: 208, column: 1, scope: !28)
!159 = distinct !DISubprogram(name: "acpi_ut_subsystem_shutdown", scope: !3, file: !3, line: 244, type: !160, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!160 = !DISubroutineType(types: !161)
!161 = !{null}
!162 = !DILocation(line: 250, column: 6, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !3, line: 250, column: 6)
!164 = !DILocation(line: 250, column: 6, scope: !159)
!165 = !DILocation(line: 251, column: 3, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !3, line: 250, column: 25)
!167 = !DILocation(line: 252, column: 3, scope: !166)
!168 = !DILocation(line: 257, column: 20, scope: !159)
!169 = !DILocation(line: 258, column: 25, scope: !159)
!170 = !DILocation(line: 265, column: 2, scope: !159)
!171 = !DILocation(line: 269, column: 2, scope: !159)
!172 = !DILocation(line: 274, column: 2, scope: !159)
!173 = !DILocation(line: 278, column: 2, scope: !159)
!174 = !DILocation(line: 282, column: 2, scope: !159)
!175 = !DILocation(line: 286, column: 8, scope: !159)
!176 = !DILocation(line: 287, column: 2, scope: !159)
!177 = !DILocation(line: 288, column: 1, scope: !159)
!178 = distinct !DISubprogram(name: "acpi_ut_terminate", scope: !3, file: !3, line: 222, type: !160, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!179 = !DILocation(line: 226, column: 2, scope: !178)
!180 = !DILocation(line: 227, column: 2, scope: !178)
!181 = !DILocation(line: 228, column: 2, scope: !178)
!182 = distinct !DISubprogram(name: "acpi_ut_free_gpe_lists", scope: !3, file: !3, line: 44, type: !160, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!183 = !DILocalVariable(name: "gpe_block", scope: !182, file: !3, line: 46, type: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !186, line: 480, size: 576, elements: !187)
!186 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!187 = !{!188, !882, !883, !884, !892, !907, !939, !940, !941, !942, !943, !944}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !185, file: !186, line: 481, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !186, line: 133, size: 384, elements: !191)
!191 = !{!192, !869, !870, !871, !872, !878, !879, !880, !881}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !190, file: !186, line: 134, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !195, line: 367, size: 576, elements: !196)
!195 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!196 = !{!197, !211, !224, !235, !249, !263, !272, !587, !604, !619, !632, !643, !655, !669, !679, !697, !719, !738, !757, !776, !789, !815, !832, !845, !859, !868}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !194, file: !195, line: 368, baseType: !198, size: 128)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !195, line: 73, size: 128, elements: !199)
!199 = !{!200, !201, !205, !206, !210}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !198, file: !195, line: 74, baseType: !193, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !195, line: 74, baseType: !202, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !204)
!204 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !198, file: !195, line: 74, baseType: !202, size: 8, offset: 72)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !198, file: !195, line: 74, baseType: !207, size: 16, offset: 80)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !209)
!209 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !195, line: 74, baseType: !202, size: 8, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !194, file: !195, line: 369, baseType: !212, size: 192)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !195, line: 76, size: 192, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !223}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !212, file: !195, line: 77, baseType: !193, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !212, file: !195, line: 77, baseType: !202, size: 8, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !212, file: !195, line: 77, baseType: !202, size: 8, offset: 72)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !212, file: !195, line: 77, baseType: !207, size: 16, offset: 80)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !195, line: 77, baseType: !202, size: 8, offset: 96)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !212, file: !195, line: 77, baseType: !220, size: 24, offset: 104)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 24, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 3)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !212, file: !195, line: 78, baseType: !7, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !194, file: !195, line: 370, baseType: !225, size: 256)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !195, line: 93, size: 256, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !234}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !225, file: !195, line: 94, baseType: !193, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !225, file: !195, line: 94, baseType: !202, size: 8, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !225, file: !195, line: 94, baseType: !202, size: 8, offset: 72)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !225, file: !195, line: 94, baseType: !207, size: 16, offset: 80)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !195, line: 94, baseType: !202, size: 8, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !225, file: !195, line: 94, baseType: !233, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !225, file: !195, line: 94, baseType: !12, size: 32, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !194, file: !195, line: 371, baseType: !236, size: 384)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !195, line: 97, size: 384, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !245, !246, !247, !248}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !236, file: !195, line: 98, baseType: !193, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !236, file: !195, line: 98, baseType: !202, size: 8, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !236, file: !195, line: 98, baseType: !202, size: 8, offset: 72)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !236, file: !195, line: 98, baseType: !207, size: 16, offset: 80)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !195, line: 98, baseType: !202, size: 8, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !236, file: !195, line: 98, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !236, file: !195, line: 98, baseType: !12, size: 32, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !236, file: !195, line: 99, baseType: !12, size: 32, offset: 224)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !236, file: !195, line: 100, baseType: !244, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !236, file: !195, line: 101, baseType: !189, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !194, file: !195, line: 372, baseType: !250, size: 384)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !195, line: 104, size: 384, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !260, !261, !262}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !250, file: !195, line: 105, baseType: !193, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !250, file: !195, line: 105, baseType: !202, size: 8, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !250, file: !195, line: 105, baseType: !202, size: 8, offset: 72)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !250, file: !195, line: 105, baseType: !207, size: 16, offset: 80)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !250, file: !195, line: 105, baseType: !202, size: 8, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !250, file: !195, line: 105, baseType: !189, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !250, file: !195, line: 106, baseType: !259, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !250, file: !195, line: 107, baseType: !244, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !250, file: !195, line: 108, baseType: !12, size: 32, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !250, file: !195, line: 109, baseType: !12, size: 32, offset: 352)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !194, file: !195, line: 373, baseType: !264, size: 192)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !195, line: 118, size: 192, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !264, file: !195, line: 119, baseType: !193, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !264, file: !195, line: 119, baseType: !202, size: 8, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !264, file: !195, line: 119, baseType: !202, size: 8, offset: 72)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !264, file: !195, line: 119, baseType: !207, size: 16, offset: 80)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !264, file: !195, line: 119, baseType: !202, size: 8, offset: 96)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !264, file: !195, line: 119, baseType: !6, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !194, file: !195, line: 374, baseType: !273, size: 448)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !195, line: 143, size: 448, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !584, !585, !586}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !273, file: !195, line: 144, baseType: !193, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !273, file: !195, line: 144, baseType: !202, size: 8, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !273, file: !195, line: 144, baseType: !202, size: 8, offset: 72)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !273, file: !195, line: 144, baseType: !207, size: 16, offset: 80)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !195, line: 144, baseType: !202, size: 8, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !273, file: !195, line: 144, baseType: !202, size: 8, offset: 104)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !273, file: !195, line: 145, baseType: !202, size: 8, offset: 112)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !273, file: !195, line: 146, baseType: !202, size: 8, offset: 120)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !273, file: !195, line: 147, baseType: !193, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !273, file: !195, line: 148, baseType: !193, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !273, file: !195, line: 149, baseType: !244, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !273, file: !195, line: 153, baseType: !287, size: 64, offset: 320)
!287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !195, line: 150, size: 64, elements: !288)
!288 = !{!289, !583}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !287, file: !195, line: 151, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !186, line: 248, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!15, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !296, line: 37, size: 9024, elements: !297)
!296 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !531, !532, !533, !534, !535, !537, !539, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !566, !567, !568, !569, !570, !571, !572, !573, !575, !581}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !296, line: 38, baseType: !294, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !295, file: !296, line: 39, baseType: !202, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !295, file: !296, line: 40, baseType: !202, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !295, file: !296, line: 41, baseType: !207, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !295, file: !296, line: 42, baseType: !202, size: 8, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !295, file: !296, line: 43, baseType: !202, size: 8, offset: 104)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !295, file: !296, line: 44, baseType: !202, size: 8, offset: 112)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !295, file: !296, line: 45, baseType: !306, size: 16, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !16, line: 445, baseType: !207)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !295, file: !296, line: 46, baseType: !202, size: 8, offset: 144)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !295, file: !296, line: 47, baseType: !202, size: 8, offset: 152)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !295, file: !296, line: 48, baseType: !202, size: 8, offset: 160)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !295, file: !296, line: 49, baseType: !202, size: 8, offset: 168)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !295, file: !296, line: 50, baseType: !202, size: 8, offset: 176)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !295, file: !296, line: 51, baseType: !202, size: 8, offset: 184)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !295, file: !296, line: 52, baseType: !202, size: 8, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !295, file: !296, line: 53, baseType: !202, size: 8, offset: 200)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !295, file: !296, line: 54, baseType: !244, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !295, file: !296, line: 55, baseType: !12, size: 32, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !295, file: !296, line: 56, baseType: !12, size: 32, offset: 352)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !295, file: !296, line: 57, baseType: !12, size: 32, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !295, file: !296, line: 58, baseType: !12, size: 32, offset: 416)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !295, file: !296, line: 60, baseType: !321, size: 640, offset: 448)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !186, line: 893, size: 640, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !412, !413, !529, !530}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !321, file: !186, line: 894, baseType: !244, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !321, file: !186, line: 895, baseType: !244, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !321, file: !186, line: 896, baseType: !244, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !321, file: !186, line: 897, baseType: !244, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !321, file: !186, line: 898, baseType: !244, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !321, file: !186, line: 899, baseType: !329, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !186, line: 875, size: 1600, elements: !331)
!331 = !{!332, !352, !368}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !330, file: !186, line: 876, baseType: !333, size: 448)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !186, line: 828, size: 448, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !351}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !333, file: !186, line: 829, baseType: !329, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !333, file: !186, line: 829, baseType: !202, size: 8, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !186, line: 829, baseType: !202, size: 8, offset: 72)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !333, file: !186, line: 829, baseType: !207, size: 16, offset: 80)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !333, file: !186, line: 829, baseType: !244, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !186, line: 829, baseType: !329, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !333, file: !186, line: 829, baseType: !189, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !186, line: 829, baseType: !343, size: 64, offset: 320)
!343 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !186, line: 716, size: 64, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !343, file: !186, line: 717, baseType: !7, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !343, file: !186, line: 718, baseType: !12, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !343, file: !186, line: 719, baseType: !233, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !343, file: !186, line: 720, baseType: !244, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !343, file: !186, line: 721, baseType: !233, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !343, file: !186, line: 722, baseType: !329, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !333, file: !186, line: 829, baseType: !202, size: 8, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !330, file: !186, line: 877, baseType: !353, size: 640)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !186, line: 835, size: 640, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !353, file: !186, line: 836, baseType: !329, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !353, file: !186, line: 836, baseType: !202, size: 8, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !186, line: 836, baseType: !202, size: 8, offset: 72)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !353, file: !186, line: 836, baseType: !207, size: 16, offset: 80)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !353, file: !186, line: 836, baseType: !244, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !186, line: 836, baseType: !329, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !353, file: !186, line: 836, baseType: !189, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !353, file: !186, line: 836, baseType: !343, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !353, file: !186, line: 836, baseType: !202, size: 8, offset: 384)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !353, file: !186, line: 836, baseType: !233, size: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !353, file: !186, line: 837, baseType: !244, size: 64, offset: 512)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !353, file: !186, line: 838, baseType: !12, size: 32, offset: 576)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !353, file: !186, line: 839, baseType: !12, size: 32, offset: 608)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !330, file: !186, line: 878, baseType: !369, size: 1600)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !186, line: 846, size: 1600, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !369, file: !186, line: 847, baseType: !329, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !369, file: !186, line: 847, baseType: !202, size: 8, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !186, line: 847, baseType: !202, size: 8, offset: 72)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !369, file: !186, line: 847, baseType: !207, size: 16, offset: 80)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !369, file: !186, line: 847, baseType: !244, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !186, line: 847, baseType: !329, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !369, file: !186, line: 847, baseType: !189, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !369, file: !186, line: 847, baseType: !343, size: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !369, file: !186, line: 847, baseType: !202, size: 8, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !369, file: !186, line: 847, baseType: !329, size: 64, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !369, file: !186, line: 848, baseType: !329, size: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !369, file: !186, line: 849, baseType: !233, size: 64, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !369, file: !186, line: 850, baseType: !202, size: 8, offset: 640)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !369, file: !186, line: 851, baseType: !233, size: 64, offset: 704)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !369, file: !186, line: 852, baseType: !233, size: 64, offset: 768)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !369, file: !186, line: 853, baseType: !233, size: 64, offset: 832)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !369, file: !186, line: 854, baseType: !388, size: 32, offset: 896)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 32, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 4)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !369, file: !186, line: 855, baseType: !12, size: 32, offset: 928)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !369, file: !186, line: 856, baseType: !12, size: 32, offset: 960)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !369, file: !186, line: 857, baseType: !12, size: 32, offset: 992)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !369, file: !186, line: 858, baseType: !12, size: 32, offset: 1024)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !369, file: !186, line: 859, baseType: !12, size: 32, offset: 1056)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !369, file: !186, line: 860, baseType: !12, size: 32, offset: 1088)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !369, file: !186, line: 861, baseType: !12, size: 32, offset: 1120)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !369, file: !186, line: 862, baseType: !12, size: 32, offset: 1152)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !369, file: !186, line: 863, baseType: !12, size: 32, offset: 1184)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !369, file: !186, line: 864, baseType: !12, size: 32, offset: 1216)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !369, file: !186, line: 865, baseType: !12, size: 32, offset: 1248)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !369, file: !186, line: 866, baseType: !12, size: 32, offset: 1280)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !369, file: !186, line: 867, baseType: !12, size: 32, offset: 1312)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !369, file: !186, line: 868, baseType: !207, size: 16, offset: 1344)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !369, file: !186, line: 869, baseType: !202, size: 8, offset: 1360)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !369, file: !186, line: 870, baseType: !202, size: 8, offset: 1368)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !369, file: !186, line: 871, baseType: !202, size: 8, offset: 1376)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !369, file: !186, line: 872, baseType: !409, size: 160, offset: 1384)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 160, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 20)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !321, file: !186, line: 900, baseType: !189, size: 64, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !321, file: !186, line: 901, baseType: !414, size: 64, offset: 448)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !186, line: 663, size: 640, elements: !416)
!416 = !{!417, !425, !438, !447, !456, !469, !483, !495, !507}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !415, file: !186, line: 664, baseType: !418, size: 128)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !186, line: 567, size: 128, elements: !419)
!419 = !{!420, !421, !422, !423, !424}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !418, file: !186, line: 568, baseType: !6, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !418, file: !186, line: 568, baseType: !202, size: 8, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !418, file: !186, line: 568, baseType: !202, size: 8, offset: 72)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !418, file: !186, line: 568, baseType: !207, size: 16, offset: 80)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !418, file: !186, line: 568, baseType: !207, size: 16, offset: 96)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !415, file: !186, line: 665, baseType: !426, size: 384)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !186, line: 593, size: 384, elements: !427)
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !426, file: !186, line: 594, baseType: !6, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !426, file: !186, line: 594, baseType: !202, size: 8, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !186, line: 594, baseType: !202, size: 8, offset: 72)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !426, file: !186, line: 594, baseType: !207, size: 16, offset: 80)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !426, file: !186, line: 594, baseType: !207, size: 16, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !426, file: !186, line: 594, baseType: !207, size: 16, offset: 112)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !426, file: !186, line: 595, baseType: !329, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !426, file: !186, line: 596, baseType: !244, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !426, file: !186, line: 597, baseType: !244, size: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !426, file: !186, line: 598, baseType: !7, size: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !415, file: !186, line: 666, baseType: !439, size: 192)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !186, line: 573, size: 192, elements: !440)
!440 = !{!441, !442, !443, !444, !445, !446}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !186, line: 574, baseType: !6, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !439, file: !186, line: 574, baseType: !202, size: 8, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !439, file: !186, line: 574, baseType: !202, size: 8, offset: 72)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !439, file: !186, line: 574, baseType: !207, size: 16, offset: 80)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !439, file: !186, line: 574, baseType: !207, size: 16, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !439, file: !186, line: 574, baseType: !193, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !415, file: !186, line: 667, baseType: !448, size: 192)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !186, line: 604, size: 192, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !455}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !448, file: !186, line: 605, baseType: !6, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !448, file: !186, line: 605, baseType: !202, size: 8, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !186, line: 605, baseType: !202, size: 8, offset: 72)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !448, file: !186, line: 605, baseType: !207, size: 16, offset: 80)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !448, file: !186, line: 605, baseType: !207, size: 16, offset: 96)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !448, file: !186, line: 605, baseType: !189, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !415, file: !186, line: 668, baseType: !457, size: 448)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !186, line: 608, size: 448, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !186, line: 609, baseType: !6, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !457, file: !186, line: 609, baseType: !202, size: 8, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !457, file: !186, line: 609, baseType: !202, size: 8, offset: 72)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !457, file: !186, line: 609, baseType: !207, size: 16, offset: 80)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !457, file: !186, line: 609, baseType: !207, size: 16, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !457, file: !186, line: 609, baseType: !12, size: 32, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !457, file: !186, line: 610, baseType: !329, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !457, file: !186, line: 611, baseType: !244, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !457, file: !186, line: 612, baseType: !244, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !457, file: !186, line: 613, baseType: !12, size: 32, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !415, file: !186, line: 669, baseType: !470, size: 512)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !186, line: 580, size: 512, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !470, file: !186, line: 581, baseType: !6, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !470, file: !186, line: 581, baseType: !202, size: 8, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !186, line: 581, baseType: !202, size: 8, offset: 72)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !470, file: !186, line: 581, baseType: !207, size: 16, offset: 80)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !470, file: !186, line: 581, baseType: !207, size: 16, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !470, file: !186, line: 581, baseType: !12, size: 32, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !470, file: !186, line: 582, baseType: !193, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !470, file: !186, line: 583, baseType: !193, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !470, file: !186, line: 584, baseType: !294, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !470, file: !186, line: 585, baseType: !6, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !470, file: !186, line: 586, baseType: !12, size: 32, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !415, file: !186, line: 670, baseType: !484, size: 320)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !186, line: 620, size: 320, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !492, !493, !494}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !484, file: !186, line: 621, baseType: !6, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !484, file: !186, line: 621, baseType: !202, size: 8, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !186, line: 621, baseType: !202, size: 8, offset: 72)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !484, file: !186, line: 621, baseType: !207, size: 16, offset: 80)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !484, file: !186, line: 621, baseType: !207, size: 16, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !484, file: !186, line: 621, baseType: !202, size: 8, offset: 112)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !484, file: !186, line: 622, baseType: !294, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !484, file: !186, line: 623, baseType: !193, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !484, file: !186, line: 624, baseType: !7, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !415, file: !186, line: 671, baseType: !496, size: 640)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !186, line: 631, size: 640, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !503}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !496, file: !186, line: 632, baseType: !6, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !496, file: !186, line: 632, baseType: !202, size: 8, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !496, file: !186, line: 632, baseType: !202, size: 8, offset: 72)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !496, file: !186, line: 632, baseType: !207, size: 16, offset: 80)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !496, file: !186, line: 632, baseType: !207, size: 16, offset: 96)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !496, file: !186, line: 633, baseType: !504, size: 512, offset: 128)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 512, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 8)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !415, file: !186, line: 672, baseType: !508, size: 320)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !186, line: 654, size: 320, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516, !517, !518}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !508, file: !186, line: 655, baseType: !6, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !508, file: !186, line: 655, baseType: !202, size: 8, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !186, line: 655, baseType: !202, size: 8, offset: 72)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !508, file: !186, line: 655, baseType: !207, size: 16, offset: 80)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !508, file: !186, line: 655, baseType: !207, size: 16, offset: 96)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !508, file: !186, line: 655, baseType: !202, size: 8, offset: 112)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !186, line: 656, baseType: !189, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !508, file: !186, line: 657, baseType: !193, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !508, file: !186, line: 658, baseType: !519, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !186, line: 645, size: 128, elements: !521)
!521 = !{!522, !528}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !520, file: !186, line: 646, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !16, line: 1052, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !527, !12, !6}
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !16, line: 424, baseType: !6)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !520, file: !186, line: 647, baseType: !6, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !321, file: !186, line: 902, baseType: !329, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !321, file: !186, line: 903, baseType: !12, size: 32, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !295, file: !296, line: 61, baseType: !12, size: 32, offset: 1088)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !295, file: !296, line: 62, baseType: !12, size: 32, offset: 1120)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !295, file: !296, line: 63, baseType: !207, size: 16, offset: 1152)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !295, file: !296, line: 64, baseType: !202, size: 8, offset: 1168)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !295, file: !296, line: 66, baseType: !536, size: 2688, offset: 1216)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 2688, elements: !21)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !295, file: !296, line: 67, baseType: !538, size: 3072, offset: 3904)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 3072, elements: !505)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !295, file: !296, line: 68, baseType: !540, size: 576, offset: 6976)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 576, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 9)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !295, file: !296, line: 69, baseType: !259, size: 64, offset: 7552)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !295, file: !296, line: 71, baseType: !244, size: 64, offset: 7616)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !295, file: !296, line: 72, baseType: !259, size: 64, offset: 7680)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !295, file: !296, line: 73, baseType: !414, size: 64, offset: 7744)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !295, file: !296, line: 74, baseType: !189, size: 64, offset: 7808)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !295, file: !296, line: 75, baseType: !193, size: 64, offset: 7872)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !295, file: !296, line: 76, baseType: !189, size: 64, offset: 7936)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !295, file: !296, line: 77, baseType: !329, size: 64, offset: 8000)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !295, file: !296, line: 78, baseType: !193, size: 64, offset: 8064)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !295, file: !296, line: 79, baseType: !189, size: 64, offset: 8128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !295, file: !296, line: 80, baseType: !233, size: 64, offset: 8192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !295, file: !296, line: 81, baseType: !329, size: 64, offset: 8256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !295, file: !296, line: 82, baseType: !556, size: 64, offset: 8320)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !186, line: 702, size: 128, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !558, file: !186, line: 706, baseType: !12, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !558, file: !186, line: 707, baseType: !12, size: 32, offset: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !558, file: !186, line: 708, baseType: !207, size: 16, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !558, file: !186, line: 709, baseType: !202, size: 8, offset: 80)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !558, file: !186, line: 710, baseType: !202, size: 8, offset: 88)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !558, file: !186, line: 711, baseType: !202, size: 8, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !295, file: !296, line: 83, baseType: !329, size: 64, offset: 8384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !295, file: !296, line: 84, baseType: !193, size: 64, offset: 8448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !295, file: !296, line: 85, baseType: !414, size: 64, offset: 8512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !295, file: !296, line: 86, baseType: !193, size: 64, offset: 8576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !295, file: !296, line: 87, baseType: !414, size: 64, offset: 8640)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !295, file: !296, line: 88, baseType: !329, size: 64, offset: 8704)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !295, file: !296, line: 89, baseType: !329, size: 64, offset: 8768)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !295, file: !296, line: 90, baseType: !574, size: 64, offset: 8832)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !295, file: !296, line: 91, baseType: !576, size: 64, offset: 8896)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !186, line: 637, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!15, !294, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !295, file: !296, line: 92, baseType: !582, size: 64, offset: 8960)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !186, line: 641, baseType: !291)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !287, file: !195, line: 152, baseType: !193, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !273, file: !195, line: 155, baseType: !12, size: 32, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !273, file: !195, line: 156, baseType: !306, size: 16, offset: 416)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !273, file: !195, line: 157, baseType: !202, size: 8, offset: 432)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !194, file: !195, line: 375, baseType: !588, size: 576)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !195, line: 122, size: 576, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !588, file: !195, line: 123, baseType: !193, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !195, line: 123, baseType: !202, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !195, line: 123, baseType: !202, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !588, file: !195, line: 123, baseType: !207, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !195, line: 123, baseType: !202, size: 8, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !588, file: !195, line: 123, baseType: !202, size: 8, offset: 104)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !588, file: !195, line: 124, baseType: !207, size: 16, offset: 112)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !588, file: !195, line: 125, baseType: !6, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !588, file: !195, line: 126, baseType: !7, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !588, file: !195, line: 127, baseType: !574, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !588, file: !195, line: 128, baseType: !193, size: 64, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !588, file: !195, line: 129, baseType: !193, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !588, file: !195, line: 130, baseType: !189, size: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !588, file: !195, line: 131, baseType: !202, size: 8, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !194, file: !195, line: 376, baseType: !605, size: 448)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !195, line: 134, size: 448, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !618}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !605, file: !195, line: 135, baseType: !193, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !605, file: !195, line: 135, baseType: !202, size: 8, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !605, file: !195, line: 135, baseType: !202, size: 8, offset: 72)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !605, file: !195, line: 135, baseType: !207, size: 16, offset: 80)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !605, file: !195, line: 135, baseType: !202, size: 8, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !605, file: !195, line: 135, baseType: !202, size: 8, offset: 104)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !605, file: !195, line: 136, baseType: !189, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !605, file: !195, line: 137, baseType: !193, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !605, file: !195, line: 138, baseType: !193, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !605, file: !195, line: 139, baseType: !617, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !16, line: 129, baseType: !7)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !605, file: !195, line: 140, baseType: !12, size: 32, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !194, file: !195, line: 377, baseType: !620, size: 320)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !195, line: 184, size: 320, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !631}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !620, file: !195, line: 185, baseType: !193, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !620, file: !195, line: 185, baseType: !202, size: 8, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !195, line: 185, baseType: !202, size: 8, offset: 72)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !620, file: !195, line: 185, baseType: !207, size: 16, offset: 80)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !195, line: 185, baseType: !202, size: 8, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !620, file: !195, line: 185, baseType: !628, size: 128, offset: 128)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 128, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 2)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !620, file: !195, line: 185, baseType: !193, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !194, file: !195, line: 378, baseType: !633, size: 384)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !195, line: 187, size: 384, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !195, line: 188, baseType: !193, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !195, line: 188, baseType: !202, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !195, line: 188, baseType: !202, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !195, line: 188, baseType: !207, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !195, line: 188, baseType: !202, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !633, file: !195, line: 189, baseType: !628, size: 128, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !633, file: !195, line: 189, baseType: !193, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !633, file: !195, line: 189, baseType: !184, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !194, file: !195, line: 379, baseType: !644, size: 384)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !195, line: 192, size: 384, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !644, file: !195, line: 193, baseType: !193, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !644, file: !195, line: 193, baseType: !202, size: 8, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !644, file: !195, line: 193, baseType: !202, size: 8, offset: 72)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !644, file: !195, line: 193, baseType: !207, size: 16, offset: 80)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !195, line: 193, baseType: !202, size: 8, offset: 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !644, file: !195, line: 193, baseType: !628, size: 128, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !644, file: !195, line: 193, baseType: !193, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !644, file: !195, line: 193, baseType: !12, size: 32, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !644, file: !195, line: 194, baseType: !12, size: 32, offset: 352)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !194, file: !195, line: 380, baseType: !656, size: 384)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !195, line: 197, size: 384, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !656, file: !195, line: 198, baseType: !193, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !656, file: !195, line: 198, baseType: !202, size: 8, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !195, line: 198, baseType: !202, size: 8, offset: 72)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !656, file: !195, line: 198, baseType: !207, size: 16, offset: 80)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !195, line: 198, baseType: !202, size: 8, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !656, file: !195, line: 200, baseType: !202, size: 8, offset: 104)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !656, file: !195, line: 201, baseType: !202, size: 8, offset: 112)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !656, file: !195, line: 202, baseType: !628, size: 128, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !656, file: !195, line: 202, baseType: !193, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !656, file: !195, line: 202, baseType: !668, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !16, line: 128, baseType: !7)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !194, file: !195, line: 381, baseType: !670, size: 320)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !195, line: 205, size: 320, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677, !678}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !670, file: !195, line: 206, baseType: !193, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !670, file: !195, line: 206, baseType: !202, size: 8, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !670, file: !195, line: 206, baseType: !202, size: 8, offset: 72)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !670, file: !195, line: 206, baseType: !207, size: 16, offset: 80)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !195, line: 206, baseType: !202, size: 8, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !670, file: !195, line: 206, baseType: !628, size: 128, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !670, file: !195, line: 206, baseType: !193, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !194, file: !195, line: 382, baseType: !680, size: 384)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !195, line: 233, size: 384, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !680, file: !195, line: 234, baseType: !193, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !680, file: !195, line: 234, baseType: !202, size: 8, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !195, line: 234, baseType: !202, size: 8, offset: 72)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !680, file: !195, line: 234, baseType: !207, size: 16, offset: 80)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !195, line: 234, baseType: !202, size: 8, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !680, file: !195, line: 234, baseType: !202, size: 8, offset: 104)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !680, file: !195, line: 234, baseType: !202, size: 8, offset: 112)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !680, file: !195, line: 234, baseType: !202, size: 8, offset: 120)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !680, file: !195, line: 234, baseType: !189, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !680, file: !195, line: 234, baseType: !12, size: 32, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !680, file: !195, line: 234, baseType: !12, size: 32, offset: 224)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !680, file: !195, line: 234, baseType: !12, size: 32, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !680, file: !195, line: 234, baseType: !202, size: 8, offset: 288)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !680, file: !195, line: 234, baseType: !202, size: 8, offset: 296)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !680, file: !195, line: 234, baseType: !193, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !194, file: !195, line: 383, baseType: !698, size: 576)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !195, line: 237, size: 576, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !698, file: !195, line: 238, baseType: !193, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !698, file: !195, line: 238, baseType: !202, size: 8, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !698, file: !195, line: 238, baseType: !202, size: 8, offset: 72)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !698, file: !195, line: 238, baseType: !207, size: 16, offset: 80)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !195, line: 238, baseType: !202, size: 8, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !698, file: !195, line: 238, baseType: !202, size: 8, offset: 104)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !698, file: !195, line: 238, baseType: !202, size: 8, offset: 112)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !698, file: !195, line: 238, baseType: !202, size: 8, offset: 120)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !698, file: !195, line: 238, baseType: !189, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !698, file: !195, line: 238, baseType: !12, size: 32, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !698, file: !195, line: 238, baseType: !12, size: 32, offset: 224)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !698, file: !195, line: 238, baseType: !12, size: 32, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !698, file: !195, line: 238, baseType: !202, size: 8, offset: 288)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !698, file: !195, line: 238, baseType: !202, size: 8, offset: 296)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !698, file: !195, line: 238, baseType: !207, size: 16, offset: 304)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !698, file: !195, line: 239, baseType: !193, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !698, file: !195, line: 240, baseType: !244, size: 64, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !698, file: !195, line: 241, baseType: !207, size: 16, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !698, file: !195, line: 242, baseType: !244, size: 64, offset: 512)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !194, file: !195, line: 384, baseType: !720, size: 384)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !195, line: 262, size: 384, elements: !721)
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !720, file: !195, line: 263, baseType: !193, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !720, file: !195, line: 263, baseType: !202, size: 8, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !720, file: !195, line: 263, baseType: !202, size: 8, offset: 72)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !720, file: !195, line: 263, baseType: !207, size: 16, offset: 80)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !720, file: !195, line: 263, baseType: !202, size: 8, offset: 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !720, file: !195, line: 263, baseType: !202, size: 8, offset: 104)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !720, file: !195, line: 263, baseType: !202, size: 8, offset: 112)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !720, file: !195, line: 263, baseType: !202, size: 8, offset: 120)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !720, file: !195, line: 263, baseType: !189, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !720, file: !195, line: 263, baseType: !12, size: 32, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !720, file: !195, line: 263, baseType: !12, size: 32, offset: 224)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !720, file: !195, line: 263, baseType: !12, size: 32, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !720, file: !195, line: 263, baseType: !202, size: 8, offset: 288)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !720, file: !195, line: 263, baseType: !202, size: 8, offset: 296)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !720, file: !195, line: 263, baseType: !202, size: 8, offset: 304)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !720, file: !195, line: 264, baseType: !193, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !194, file: !195, line: 385, baseType: !739, size: 448)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !195, line: 245, size: 448, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !739, file: !195, line: 246, baseType: !193, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !739, file: !195, line: 246, baseType: !202, size: 8, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !739, file: !195, line: 246, baseType: !202, size: 8, offset: 72)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !739, file: !195, line: 246, baseType: !207, size: 16, offset: 80)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !739, file: !195, line: 246, baseType: !202, size: 8, offset: 96)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !739, file: !195, line: 246, baseType: !202, size: 8, offset: 104)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !739, file: !195, line: 246, baseType: !202, size: 8, offset: 112)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !739, file: !195, line: 246, baseType: !202, size: 8, offset: 120)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !739, file: !195, line: 246, baseType: !189, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !739, file: !195, line: 246, baseType: !12, size: 32, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !739, file: !195, line: 246, baseType: !12, size: 32, offset: 224)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !739, file: !195, line: 246, baseType: !12, size: 32, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !739, file: !195, line: 246, baseType: !202, size: 8, offset: 288)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !739, file: !195, line: 246, baseType: !202, size: 8, offset: 296)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !739, file: !195, line: 246, baseType: !193, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !739, file: !195, line: 247, baseType: !193, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !194, file: !195, line: 386, baseType: !758, size: 448)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !195, line: 250, size: 448, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !758, file: !195, line: 251, baseType: !193, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !758, file: !195, line: 251, baseType: !202, size: 8, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !758, file: !195, line: 251, baseType: !202, size: 8, offset: 72)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !758, file: !195, line: 251, baseType: !207, size: 16, offset: 80)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !758, file: !195, line: 251, baseType: !202, size: 8, offset: 96)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !758, file: !195, line: 251, baseType: !202, size: 8, offset: 104)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !758, file: !195, line: 251, baseType: !202, size: 8, offset: 112)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !758, file: !195, line: 251, baseType: !202, size: 8, offset: 120)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !758, file: !195, line: 251, baseType: !189, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !758, file: !195, line: 251, baseType: !12, size: 32, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !758, file: !195, line: 251, baseType: !12, size: 32, offset: 224)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !758, file: !195, line: 251, baseType: !12, size: 32, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !758, file: !195, line: 251, baseType: !202, size: 8, offset: 288)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !758, file: !195, line: 251, baseType: !202, size: 8, offset: 296)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !758, file: !195, line: 256, baseType: !193, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !758, file: !195, line: 257, baseType: !193, size: 64, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !194, file: !195, line: 387, baseType: !777, size: 512)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !195, line: 273, size: 512, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784, !785, !786, !787, !788}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !777, file: !195, line: 274, baseType: !193, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !777, file: !195, line: 274, baseType: !202, size: 8, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !777, file: !195, line: 274, baseType: !202, size: 8, offset: 72)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !777, file: !195, line: 274, baseType: !207, size: 16, offset: 80)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !195, line: 274, baseType: !202, size: 8, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !777, file: !195, line: 274, baseType: !189, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !777, file: !195, line: 275, baseType: !12, size: 32, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !777, file: !195, line: 276, baseType: !523, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !777, file: !195, line: 277, baseType: !6, size: 64, offset: 320)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !195, line: 278, baseType: !628, size: 128, offset: 384)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !194, file: !195, line: 388, baseType: !790, size: 512)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !195, line: 281, size: 512, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !805, !806, !807, !813, !814}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !790, file: !195, line: 282, baseType: !193, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !790, file: !195, line: 282, baseType: !202, size: 8, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !790, file: !195, line: 282, baseType: !202, size: 8, offset: 72)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !790, file: !195, line: 282, baseType: !207, size: 16, offset: 80)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !195, line: 282, baseType: !202, size: 8, offset: 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !790, file: !195, line: 282, baseType: !202, size: 8, offset: 104)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !790, file: !195, line: 283, baseType: !202, size: 8, offset: 112)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !790, file: !195, line: 284, baseType: !800, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !16, line: 1084, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!15, !12, !617, !12, !804, !6, !6}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !790, file: !195, line: 285, baseType: !189, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !790, file: !195, line: 286, baseType: !6, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !790, file: !195, line: 287, baseType: !808, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !16, line: 1102, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!15, !527, !12, !6, !812}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !790, file: !195, line: 288, baseType: !193, size: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !790, file: !195, line: 289, baseType: !193, size: 64, offset: 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !194, file: !195, line: 389, baseType: !816, size: 512)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !195, line: 307, size: 512, elements: !817)
!817 = !{!818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !816, file: !195, line: 308, baseType: !193, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !816, file: !195, line: 308, baseType: !202, size: 8, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !816, file: !195, line: 308, baseType: !202, size: 8, offset: 72)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !816, file: !195, line: 308, baseType: !207, size: 16, offset: 80)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !816, file: !195, line: 308, baseType: !202, size: 8, offset: 96)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !816, file: !195, line: 308, baseType: !202, size: 8, offset: 104)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !816, file: !195, line: 309, baseType: !202, size: 8, offset: 112)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !816, file: !195, line: 310, baseType: !202, size: 8, offset: 120)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !816, file: !195, line: 311, baseType: !6, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !816, file: !195, line: 312, baseType: !189, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !816, file: !195, line: 313, baseType: !259, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !816, file: !195, line: 314, baseType: !244, size: 64, offset: 320)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !816, file: !195, line: 315, baseType: !244, size: 64, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !816, file: !195, line: 316, baseType: !12, size: 32, offset: 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !194, file: !195, line: 390, baseType: !833, size: 448)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !195, line: 340, size: 448, elements: !834)
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843, !844}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !833, file: !195, line: 341, baseType: !193, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !833, file: !195, line: 341, baseType: !202, size: 8, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !833, file: !195, line: 341, baseType: !202, size: 8, offset: 72)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !833, file: !195, line: 341, baseType: !207, size: 16, offset: 80)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !833, file: !195, line: 341, baseType: !202, size: 8, offset: 96)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !833, file: !195, line: 341, baseType: !189, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !833, file: !195, line: 342, baseType: !189, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !833, file: !195, line: 343, baseType: !6, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !833, file: !195, line: 344, baseType: !244, size: 64, offset: 320)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !833, file: !195, line: 345, baseType: !12, size: 32, offset: 384)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !194, file: !195, line: 391, baseType: !846, size: 256)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !195, line: 350, size: 256, elements: !847)
!847 = !{!848, !849, !850, !851, !852, !853, !858}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !846, file: !195, line: 351, baseType: !193, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !846, file: !195, line: 351, baseType: !202, size: 8, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !846, file: !195, line: 351, baseType: !202, size: 8, offset: 72)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !846, file: !195, line: 351, baseType: !207, size: 16, offset: 80)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !846, file: !195, line: 351, baseType: !202, size: 8, offset: 96)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !846, file: !195, line: 351, baseType: !854, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !16, line: 1055, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !527, !6}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !846, file: !195, line: 352, baseType: !6, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !194, file: !195, line: 392, baseType: !860, size: 192)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !195, line: 357, size: 192, elements: !861)
!861 = !{!862, !863, !864, !865, !866, !867}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !860, file: !195, line: 358, baseType: !193, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !860, file: !195, line: 358, baseType: !202, size: 8, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !860, file: !195, line: 358, baseType: !202, size: 8, offset: 72)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !860, file: !195, line: 358, baseType: !207, size: 16, offset: 80)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !860, file: !195, line: 358, baseType: !202, size: 8, offset: 96)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !860, file: !195, line: 358, baseType: !193, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !194, file: !195, line: 399, baseType: !190, size: 384)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !190, file: !186, line: 135, baseType: !202, size: 8, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !190, file: !186, line: 136, baseType: !202, size: 8, offset: 72)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !190, file: !186, line: 137, baseType: !207, size: 16, offset: 80)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !186, line: 138, baseType: !873, size: 32, offset: 96)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !874, line: 327, size: 32, elements: !875)
!874 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !873, file: !874, line: 328, baseType: !12, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !873, file: !874, line: 329, baseType: !388, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !190, file: !186, line: 139, baseType: !189, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !190, file: !186, line: 140, baseType: !189, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !190, file: !186, line: 141, baseType: !189, size: 64, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !190, file: !186, line: 142, baseType: !306, size: 16, offset: 320)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !185, file: !186, line: 482, baseType: !184, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !186, line: 483, baseType: !184, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !185, file: !186, line: 484, baseType: !885, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !186, line: 497, size: 256, elements: !887)
!887 = !{!888, !889, !890, !891}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !886, file: !186, line: 498, baseType: !885, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !886, file: !186, line: 499, baseType: !885, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !886, file: !186, line: 500, baseType: !184, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !886, file: !186, line: 501, baseType: !12, size: 32, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !185, file: !186, line: 485, baseType: !893, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !186, line: 466, size: 320, elements: !895)
!895 = !{!896, !901, !902, !903, !904, !905, !906}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !894, file: !186, line: 467, baseType: !897, size: 128)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !186, line: 459, size: 128, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !897, file: !186, line: 460, baseType: !202, size: 8)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !897, file: !186, line: 461, baseType: !7, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !894, file: !186, line: 468, baseType: !897, size: 128, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !894, file: !186, line: 469, baseType: !207, size: 16, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !894, file: !186, line: 470, baseType: !202, size: 8, offset: 272)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !894, file: !186, line: 471, baseType: !202, size: 8, offset: 280)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !894, file: !186, line: 472, baseType: !202, size: 8, offset: 288)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !894, file: !186, line: 473, baseType: !202, size: 8, offset: 296)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !185, file: !186, line: 486, baseType: !908, size: 64, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !186, line: 448, size: 192, elements: !910)
!910 = !{!911, !934, !935, !936, !937, !938}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !909, file: !186, line: 449, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !186, line: 438, size: 64, elements: !913)
!913 = !{!914, !915, !928}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !912, file: !186, line: 439, baseType: !189, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !912, file: !186, line: 440, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !186, line: 419, size: 256, elements: !918)
!918 = !{!919, !924, !925, !926, !927}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !917, file: !186, line: 420, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !16, line: 1049, baseType: !921)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!12, !527, !12, !6}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !917, file: !186, line: 421, baseType: !6, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !917, file: !186, line: 422, baseType: !189, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !917, file: !186, line: 423, baseType: !202, size: 8, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !917, file: !186, line: 424, baseType: !202, size: 8, offset: 200)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !912, file: !186, line: 441, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !186, line: 429, size: 128, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !930, file: !186, line: 430, baseType: !189, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !930, file: !186, line: 431, baseType: !929, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !909, file: !186, line: 450, baseType: !893, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !909, file: !186, line: 451, baseType: !202, size: 8, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !909, file: !186, line: 452, baseType: !202, size: 8, offset: 136)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !909, file: !186, line: 453, baseType: !202, size: 8, offset: 144)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !909, file: !186, line: 454, baseType: !202, size: 8, offset: 152)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !185, file: !186, line: 487, baseType: !7, size: 64, offset: 384)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !185, file: !186, line: 488, baseType: !12, size: 32, offset: 448)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !185, file: !186, line: 489, baseType: !207, size: 16, offset: 480)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !185, file: !186, line: 490, baseType: !207, size: 16, offset: 496)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !185, file: !186, line: 491, baseType: !202, size: 8, offset: 512)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !185, file: !186, line: 492, baseType: !202, size: 8, offset: 520)
!945 = !DILocation(line: 46, column: 30, scope: !182)
!946 = !DILocalVariable(name: "next_gpe_block", scope: !182, file: !3, line: 47, type: !184)
!947 = !DILocation(line: 47, column: 30, scope: !182)
!948 = !DILocalVariable(name: "gpe_xrupt_info", scope: !182, file: !3, line: 48, type: !885)
!949 = !DILocation(line: 48, column: 30, scope: !182)
!950 = !DILocalVariable(name: "next_gpe_xrupt_info", scope: !182, file: !3, line: 49, type: !885)
!951 = !DILocation(line: 49, column: 30, scope: !182)
!952 = !DILocation(line: 53, column: 19, scope: !182)
!953 = !DILocation(line: 53, column: 17, scope: !182)
!954 = !DILocation(line: 54, column: 2, scope: !182)
!955 = !DILocation(line: 54, column: 9, scope: !182)
!956 = !DILocation(line: 55, column: 15, scope: !957)
!957 = distinct !DILexicalBlock(scope: !182, file: !3, line: 54, column: 25)
!958 = !DILocation(line: 55, column: 31, scope: !957)
!959 = !DILocation(line: 55, column: 13, scope: !957)
!960 = !DILocation(line: 56, column: 3, scope: !957)
!961 = !DILocation(line: 56, column: 10, scope: !957)
!962 = !DILocation(line: 57, column: 21, scope: !963)
!963 = distinct !DILexicalBlock(scope: !957, file: !3, line: 56, column: 21)
!964 = !DILocation(line: 57, column: 32, scope: !963)
!965 = !DILocation(line: 57, column: 19, scope: !963)
!966 = !DILocation(line: 58, column: 4, scope: !963)
!967 = !DILocation(line: 59, column: 4, scope: !963)
!968 = !DILocation(line: 60, column: 4, scope: !963)
!969 = !DILocation(line: 62, column: 16, scope: !963)
!970 = !DILocation(line: 62, column: 14, scope: !963)
!971 = distinct !{!971, !960, !972}
!972 = !DILocation(line: 63, column: 3, scope: !957)
!973 = !DILocation(line: 64, column: 25, scope: !957)
!974 = !DILocation(line: 64, column: 41, scope: !957)
!975 = !DILocation(line: 64, column: 23, scope: !957)
!976 = !DILocation(line: 65, column: 3, scope: !957)
!977 = !DILocation(line: 66, column: 20, scope: !957)
!978 = !DILocation(line: 66, column: 18, scope: !957)
!979 = distinct !{!979, !954, !980}
!980 = !DILocation(line: 67, column: 2, scope: !182)
!981 = !DILocation(line: 68, column: 1, scope: !182)
!982 = distinct !DISubprogram(name: "acpi_os_free", scope: !983, file: !983, line: 60, type: !984, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!983 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!984 = !DISubroutineType(types: !985)
!985 = !{null, !6}
!986 = !DILocalVariable(name: "memory", arg: 1, scope: !982, file: !983, line: 60, type: !6)
!987 = !DILocation(line: 60, column: 39, scope: !982)
!988 = !DILocation(line: 62, column: 8, scope: !982)
!989 = !DILocation(line: 62, column: 2, scope: !982)
!990 = !DILocation(line: 63, column: 1, scope: !982)
