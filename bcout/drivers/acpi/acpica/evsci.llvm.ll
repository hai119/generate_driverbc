; ModuleID = '../bcout/drivers/acpi/acpica/evsci.llvm.bc'
source_filename = "drivers/acpi/acpica/evsci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_sci_handler_info = type { %struct.acpi_sci_handler_info*, i32 (i8*)*, i8* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i32 }
%struct.acpi_gpe_block_info = type { %struct.acpi_namespace_node*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_register_info*, %struct.acpi_gpe_event_info*, i64, i32, i16, i16, i8, i8 }
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
%struct.acpi_gpe_address = type { i8, i64 }
%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, %struct.acpi_gpe_register_info*, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { %struct.acpi_namespace_node* }

@acpi_gbl_sci_handler_list = external dso_local global %struct.acpi_sci_handler_info*, align 8
@acpi_gbl_gpe_lock = external dso_local global %struct.spinlock*, align 8
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_gbl_gpe_xrupt_list_head = external dso_local global %struct.acpi_gpe_xrupt_info*, align 8
@acpi_sci_count = external dso_local global i32, align 4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_sci_dispatch() #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %sci_handler = alloca %struct.acpi_sci_handler_info*, align 8
  %flags = alloca i64, align 8
  %int_status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.acpi_sci_handler_info** %sci_handler, metadata !19, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !33, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %int_status, metadata !36, metadata !DIExpression()), !dbg !37
  store i32 0, i32* %int_status, align 4, !dbg !37
  %0 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** @acpi_gbl_sci_handler_list, align 8, !dbg !38
  %tobool = icmp ne %struct.acpi_sci_handler_info* %0, null, !dbg !38
  br i1 %tobool, label %if.end, label %if.then, !dbg !40

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %int_status, align 4, !dbg !41
  store i32 %1, i32* %retval, align 4, !dbg !43
  br label %return, !dbg !43

if.end:                                           ; preds = %entry
  %2 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !44
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %2) #3, !dbg !45
  store i64 %call, i64* %flags, align 8, !dbg !46
  %3 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** @acpi_gbl_sci_handler_list, align 8, !dbg !47
  store %struct.acpi_sci_handler_info* %3, %struct.acpi_sci_handler_info** %sci_handler, align 8, !dbg !48
  br label %while.cond, !dbg !49

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %sci_handler, align 8, !dbg !50
  %tobool1 = icmp ne %struct.acpi_sci_handler_info* %4, null, !dbg !49
  br i1 %tobool1, label %while.body, label %while.end, !dbg !49

while.body:                                       ; preds = %while.cond
  %5 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %sci_handler, align 8, !dbg !51
  %address = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %5, i32 0, i32 1, !dbg !53
  %6 = load i32 (i8*)*, i32 (i8*)** %address, align 8, !dbg !53
  %7 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %sci_handler, align 8, !dbg !54
  %context = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %7, i32 0, i32 2, !dbg !55
  %8 = load i8*, i8** %context, align 8, !dbg !55
  %call2 = call i32 %6(i8* %8) #3, !dbg !51
  %9 = load i32, i32* %int_status, align 4, !dbg !56
  %or = or i32 %9, %call2, !dbg !56
  store i32 %or, i32* %int_status, align 4, !dbg !56
  %10 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %sci_handler, align 8, !dbg !57
  %next = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %10, i32 0, i32 0, !dbg !58
  %11 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %next, align 8, !dbg !58
  store %struct.acpi_sci_handler_info* %11, %struct.acpi_sci_handler_info** %sci_handler, align 8, !dbg !59
  br label %while.cond, !dbg !49, !llvm.loop !60

while.end:                                        ; preds = %while.cond
  %12 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !62
  %13 = load i64, i64* %flags, align 8, !dbg !63
  call void @acpi_os_release_lock(%struct.spinlock* %12, i64 %13) #3, !dbg !64
  %14 = load i32, i32* %int_status, align 4, !dbg !65
  store i32 %14, i32* %retval, align 4, !dbg !66
  br label %return, !dbg !66

return:                                           ; preds = %while.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !67
  ret i32 %15, !dbg !67
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i64 @acpi_os_acquire_lock(%struct.spinlock*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_release_lock(%struct.spinlock*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_gpe_xrupt_handler(i8* %context) #0 !dbg !68 {
entry:
  %context.addr = alloca i8*, align 8
  %gpe_xrupt_list = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %interrupt_handled = alloca i32, align 4
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_list, metadata !71, metadata !DIExpression()), !dbg !838
  %0 = load i8*, i8** %context.addr, align 8, !dbg !839
  %1 = bitcast i8* %0 to %struct.acpi_gpe_xrupt_info*, !dbg !839
  store %struct.acpi_gpe_xrupt_info* %1, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_list, align 8, !dbg !838
  call void @llvm.dbg.declare(metadata i32* %interrupt_handled, metadata !840, metadata !DIExpression()), !dbg !841
  store i32 0, i32* %interrupt_handled, align 4, !dbg !841
  %2 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_list, align 8, !dbg !842
  %call = call i32 @acpi_ev_gpe_detect(%struct.acpi_gpe_xrupt_info* %2) #3, !dbg !843
  %3 = load i32, i32* %interrupt_handled, align 4, !dbg !844
  %or = or i32 %3, %call, !dbg !844
  store i32 %or, i32* %interrupt_handled, align 4, !dbg !844
  %4 = load i32, i32* %interrupt_handled, align 4, !dbg !845
  ret i32 %4, !dbg !845
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_gpe_detect(%struct.acpi_gpe_xrupt_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_install_sci_handler() #0 !dbg !846 {
entry:
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !847, metadata !DIExpression()), !dbg !848
  store i32 0, i32* %status, align 4, !dbg !848
  %0 = load i16, i16* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 5), align 1, !dbg !849
  %conv = zext i16 %0 to i32, !dbg !850
  %1 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !851
  %2 = bitcast %struct.acpi_gpe_xrupt_info* %1 to i8*, !dbg !851
  %call = call i32 @acpi_os_install_interrupt_handler(i32 %conv, i32 (i8*)* @acpi_ev_sci_xrupt_handler, i8* %2) #3, !dbg !852
  store i32 %call, i32* %status, align 4, !dbg !853
  %3 = load i32, i32* %status, align 4, !dbg !854
  ret i32 %3, !dbg !854
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_install_interrupt_handler(i32, i32 (i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ev_sci_xrupt_handler(i8* %context) #0 !dbg !855 {
entry:
  %context.addr = alloca i8*, align 8
  %gpe_xrupt_list = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %interrupt_handled = alloca i32, align 4
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !856, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_list, metadata !858, metadata !DIExpression()), !dbg !859
  %0 = load i8*, i8** %context.addr, align 8, !dbg !860
  %1 = bitcast i8* %0 to %struct.acpi_gpe_xrupt_info*, !dbg !860
  store %struct.acpi_gpe_xrupt_info* %1, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_list, align 8, !dbg !859
  call void @llvm.dbg.declare(metadata i32* %interrupt_handled, metadata !861, metadata !DIExpression()), !dbg !862
  store i32 0, i32* %interrupt_handled, align 4, !dbg !862
  %call = call i32 @acpi_ev_fixed_event_detect() #3, !dbg !863
  %2 = load i32, i32* %interrupt_handled, align 4, !dbg !864
  %or = or i32 %2, %call, !dbg !864
  store i32 %or, i32* %interrupt_handled, align 4, !dbg !864
  %3 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_list, align 8, !dbg !865
  %call1 = call i32 @acpi_ev_gpe_detect(%struct.acpi_gpe_xrupt_info* %3) #3, !dbg !866
  %4 = load i32, i32* %interrupt_handled, align 4, !dbg !867
  %or2 = or i32 %4, %call1, !dbg !867
  store i32 %or2, i32* %interrupt_handled, align 4, !dbg !867
  %call3 = call i32 @acpi_ev_sci_dispatch() #3, !dbg !868
  %5 = load i32, i32* %interrupt_handled, align 4, !dbg !869
  %or4 = or i32 %5, %call3, !dbg !869
  store i32 %or4, i32* %interrupt_handled, align 4, !dbg !869
  %6 = load i32, i32* @acpi_sci_count, align 4, !dbg !870
  %inc = add i32 %6, 1, !dbg !870
  store i32 %inc, i32* @acpi_sci_count, align 4, !dbg !870
  %7 = load i32, i32* %interrupt_handled, align 4, !dbg !871
  ret i32 %7, !dbg !871
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_remove_all_sci_handlers() #0 !dbg !872 {
entry:
  %retval = alloca i32, align 4
  %sci_handler = alloca %struct.acpi_sci_handler_info*, align 8
  %flags = alloca i64, align 8
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.acpi_sci_handler_info** %sci_handler, metadata !875, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !877, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.declare(metadata i32* %status, metadata !879, metadata !DIExpression()), !dbg !880
  %0 = load i16, i16* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 5), align 1, !dbg !881
  %conv = zext i16 %0 to i32, !dbg !882
  %call = call i32 @acpi_os_remove_interrupt_handler(i32 %conv, i32 (i8*)* @acpi_ev_sci_xrupt_handler) #3, !dbg !883
  store i32 %call, i32* %status, align 4, !dbg !884
  %1 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** @acpi_gbl_sci_handler_list, align 8, !dbg !885
  %tobool = icmp ne %struct.acpi_sci_handler_info* %1, null, !dbg !885
  br i1 %tobool, label %if.end, label %if.then, !dbg !887

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !888
  store i32 %2, i32* %retval, align 4, !dbg !890
  br label %return, !dbg !890

if.end:                                           ; preds = %entry
  %3 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !891
  %call1 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %3) #3, !dbg !892
  store i64 %call1, i64* %flags, align 8, !dbg !893
  br label %while.cond, !dbg !894

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** @acpi_gbl_sci_handler_list, align 8, !dbg !895
  %tobool2 = icmp ne %struct.acpi_sci_handler_info* %4, null, !dbg !894
  br i1 %tobool2, label %while.body, label %while.end, !dbg !894

while.body:                                       ; preds = %while.cond
  %5 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** @acpi_gbl_sci_handler_list, align 8, !dbg !896
  store %struct.acpi_sci_handler_info* %5, %struct.acpi_sci_handler_info** %sci_handler, align 8, !dbg !898
  %6 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %sci_handler, align 8, !dbg !899
  %next = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %6, i32 0, i32 0, !dbg !900
  %7 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %next, align 8, !dbg !900
  store %struct.acpi_sci_handler_info* %7, %struct.acpi_sci_handler_info** @acpi_gbl_sci_handler_list, align 8, !dbg !901
  %8 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %sci_handler, align 8, !dbg !902
  %9 = bitcast %struct.acpi_sci_handler_info* %8 to i8*, !dbg !902
  call void @acpi_os_free(i8* %9) #3, !dbg !902
  br label %while.cond, !dbg !894, !llvm.loop !903

while.end:                                        ; preds = %while.cond
  %10 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !905
  %11 = load i64, i64* %flags, align 8, !dbg !906
  call void @acpi_os_release_lock(%struct.spinlock* %10, i64 %11) #3, !dbg !907
  %12 = load i32, i32* %status, align 4, !dbg !908
  store i32 %12, i32* %retval, align 4, !dbg !908
  br label %return, !dbg !908

return:                                           ; preds = %while.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !909
  ret i32 %13, !dbg !909
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_remove_interrupt_handler(i32, i32 (i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !910 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !914, metadata !DIExpression()), !dbg !915
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !916
  call void @kfree(i8* %0) #3, !dbg !917
  ret void, !dbg !918
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_fixed_event_detect() #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/evsci.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !5, line: 421, baseType: !6)
!5 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"Code Model", i32 2}
!15 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!16 = distinct !DISubprogram(name: "acpi_ev_sci_dispatch", scope: !1, file: !1, line: 31, type: !17, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{!6}
!19 = !DILocalVariable(name: "sci_handler", scope: !16, file: !1, line: 33, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_sci_handler_info", file: !22, line: 411, size: 192, elements: !23)
!22 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !25, !31}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !21, file: !22, line: 412, baseType: !20, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !21, file: !22, line: 413, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_sci_handler", file: !5, line: 1035, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!6, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !21, file: !22, line: 414, baseType: !30, size: 64, offset: 128)
!32 = !DILocation(line: 33, column: 32, scope: !16)
!33 = !DILocalVariable(name: "flags", scope: !16, file: !1, line: 34, type: !34)
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 34, column: 17, scope: !16)
!36 = !DILocalVariable(name: "int_status", scope: !16, file: !1, line: 35, type: !6)
!37 = !DILocation(line: 35, column: 6, scope: !16)
!38 = !DILocation(line: 41, column: 7, scope: !39)
!39 = distinct !DILexicalBlock(scope: !16, file: !1, line: 41, column: 6)
!40 = !DILocation(line: 41, column: 6, scope: !16)
!41 = !DILocation(line: 42, column: 11, scope: !42)
!42 = distinct !DILexicalBlock(scope: !39, file: !1, line: 41, column: 34)
!43 = !DILocation(line: 42, column: 3, scope: !42)
!44 = !DILocation(line: 45, column: 31, scope: !16)
!45 = !DILocation(line: 45, column: 10, scope: !16)
!46 = !DILocation(line: 45, column: 8, scope: !16)
!47 = !DILocation(line: 49, column: 16, scope: !16)
!48 = !DILocation(line: 49, column: 14, scope: !16)
!49 = !DILocation(line: 50, column: 2, scope: !16)
!50 = !DILocation(line: 50, column: 9, scope: !16)
!51 = !DILocation(line: 54, column: 17, scope: !52)
!52 = distinct !DILexicalBlock(scope: !16, file: !1, line: 50, column: 22)
!53 = !DILocation(line: 54, column: 30, scope: !52)
!54 = !DILocation(line: 54, column: 38, scope: !52)
!55 = !DILocation(line: 54, column: 51, scope: !52)
!56 = !DILocation(line: 54, column: 14, scope: !52)
!57 = !DILocation(line: 56, column: 17, scope: !52)
!58 = !DILocation(line: 56, column: 30, scope: !52)
!59 = !DILocation(line: 56, column: 15, scope: !52)
!60 = distinct !{!60, !49, !61}
!61 = !DILocation(line: 57, column: 2, scope: !16)
!62 = !DILocation(line: 59, column: 23, scope: !16)
!63 = !DILocation(line: 59, column: 42, scope: !16)
!64 = !DILocation(line: 59, column: 2, scope: !16)
!65 = !DILocation(line: 60, column: 10, scope: !16)
!66 = !DILocation(line: 60, column: 2, scope: !16)
!67 = !DILocation(line: 61, column: 1, scope: !16)
!68 = distinct !DISubprogram(name: "acpi_ev_gpe_xrupt_handler", scope: !1, file: !1, line: 120, type: !28, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!69 = !DILocalVariable(name: "context", arg: 1, scope: !68, file: !1, line: 120, type: !30)
!70 = !DILocation(line: 120, column: 55, scope: !68)
!71 = !DILocalVariable(name: "gpe_xrupt_list", scope: !68, file: !1, line: 122, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !22, line: 497, size: 256, elements: !74)
!74 = !{!75, !76, !77, !837}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !73, file: !22, line: 498, baseType: !72, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !73, file: !22, line: 499, baseType: !72, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !73, file: !22, line: 500, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !22, line: 480, size: 576, elements: !80)
!80 = !{!81, !781, !782, !783, !784, !799, !831, !832, !833, !834, !835, !836}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !79, file: !22, line: 481, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !22, line: 133, size: 384, elements: !84)
!84 = !{!85, !768, !769, !770, !771, !777, !778, !779, !780}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !83, file: !22, line: 134, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !88, line: 367, size: 576, elements: !89)
!88 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !104, !120, !132, !146, !160, !169, !486, !503, !518, !531, !542, !554, !568, !578, !596, !618, !637, !656, !675, !688, !714, !731, !744, !758, !767}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !87, file: !88, line: 368, baseType: !91, size: 128)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !88, line: 73, size: 128, elements: !92)
!92 = !{!93, !94, !98, !99, !103}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !91, file: !88, line: 74, baseType: !86, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !91, file: !88, line: 74, baseType: !95, size: 8, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !97)
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !88, line: 74, baseType: !95, size: 8, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !91, file: !88, line: 74, baseType: !100, size: 16, offset: 80)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !102)
!102 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !88, line: 74, baseType: !95, size: 8, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !87, file: !88, line: 369, baseType: !105, size: 192)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !88, line: 76, size: 192, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !116}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !105, file: !88, line: 77, baseType: !86, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !88, line: 77, baseType: !95, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !88, line: 77, baseType: !95, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !105, file: !88, line: 77, baseType: !100, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !88, line: 77, baseType: !95, size: 8, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !105, file: !88, line: 77, baseType: !113, size: 24, offset: 104)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 24, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 3)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !105, file: !88, line: 78, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !119)
!119 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !87, file: !88, line: 370, baseType: !121, size: 256)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !88, line: 93, size: 256, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128, !131}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !121, file: !88, line: 94, baseType: !86, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !121, file: !88, line: 94, baseType: !95, size: 8, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !121, file: !88, line: 94, baseType: !95, size: 8, offset: 72)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !121, file: !88, line: 94, baseType: !100, size: 16, offset: 80)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !121, file: !88, line: 94, baseType: !95, size: 8, offset: 96)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !121, file: !88, line: 94, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !121, file: !88, line: 94, baseType: !6, size: 32, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !87, file: !88, line: 371, baseType: !133, size: 384)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !88, line: 97, size: 384, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !142, !143, !144, !145}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !133, file: !88, line: 98, baseType: !86, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !133, file: !88, line: 98, baseType: !95, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !88, line: 98, baseType: !95, size: 8, offset: 72)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !133, file: !88, line: 98, baseType: !100, size: 16, offset: 80)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !88, line: 98, baseType: !95, size: 8, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !133, file: !88, line: 98, baseType: !141, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !133, file: !88, line: 98, baseType: !6, size: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !133, file: !88, line: 99, baseType: !6, size: 32, offset: 224)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !133, file: !88, line: 100, baseType: !141, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !133, file: !88, line: 101, baseType: !82, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !87, file: !88, line: 372, baseType: !147, size: 384)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !88, line: 104, size: 384, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !157, !158, !159}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !147, file: !88, line: 105, baseType: !86, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !88, line: 105, baseType: !95, size: 8, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !88, line: 105, baseType: !95, size: 8, offset: 72)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !147, file: !88, line: 105, baseType: !100, size: 16, offset: 80)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !88, line: 105, baseType: !95, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !147, file: !88, line: 105, baseType: !82, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !147, file: !88, line: 106, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !147, file: !88, line: 107, baseType: !141, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !147, file: !88, line: 108, baseType: !6, size: 32, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !147, file: !88, line: 109, baseType: !6, size: 32, offset: 352)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !87, file: !88, line: 373, baseType: !161, size: 192)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !88, line: 118, size: 192, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !161, file: !88, line: 119, baseType: !86, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !161, file: !88, line: 119, baseType: !95, size: 8, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !161, file: !88, line: 119, baseType: !95, size: 8, offset: 72)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !161, file: !88, line: 119, baseType: !100, size: 16, offset: 80)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !88, line: 119, baseType: !95, size: 8, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !161, file: !88, line: 119, baseType: !30, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !87, file: !88, line: 374, baseType: !170, size: 448)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !88, line: 143, size: 448, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !483, !484, !485}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !170, file: !88, line: 144, baseType: !86, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !170, file: !88, line: 144, baseType: !95, size: 8, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !88, line: 144, baseType: !95, size: 8, offset: 72)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !170, file: !88, line: 144, baseType: !100, size: 16, offset: 80)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !170, file: !88, line: 144, baseType: !95, size: 8, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !170, file: !88, line: 144, baseType: !95, size: 8, offset: 104)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !170, file: !88, line: 145, baseType: !95, size: 8, offset: 112)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !170, file: !88, line: 146, baseType: !95, size: 8, offset: 120)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !170, file: !88, line: 147, baseType: !86, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !170, file: !88, line: 148, baseType: !86, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !170, file: !88, line: 149, baseType: !141, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !170, file: !88, line: 153, baseType: !184, size: 64, offset: 320)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !88, line: 150, size: 64, elements: !185)
!185 = !{!186, !482}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !184, file: !88, line: 151, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !22, line: 248, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!4, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !193, line: 37, size: 9024, elements: !194)
!193 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !428, !429, !430, !431, !432, !436, !438, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !465, !466, !467, !468, !469, !470, !471, !472, !474, !480}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !193, line: 38, baseType: !191, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !192, file: !193, line: 39, baseType: !95, size: 8, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !192, file: !193, line: 40, baseType: !95, size: 8, offset: 72)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !192, file: !193, line: 41, baseType: !100, size: 16, offset: 80)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !192, file: !193, line: 42, baseType: !95, size: 8, offset: 96)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !192, file: !193, line: 43, baseType: !95, size: 8, offset: 104)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !192, file: !193, line: 44, baseType: !95, size: 8, offset: 112)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !192, file: !193, line: 45, baseType: !203, size: 16, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !5, line: 445, baseType: !100)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !192, file: !193, line: 46, baseType: !95, size: 8, offset: 144)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !192, file: !193, line: 47, baseType: !95, size: 8, offset: 152)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !192, file: !193, line: 48, baseType: !95, size: 8, offset: 160)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !192, file: !193, line: 49, baseType: !95, size: 8, offset: 168)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !192, file: !193, line: 50, baseType: !95, size: 8, offset: 176)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !192, file: !193, line: 51, baseType: !95, size: 8, offset: 184)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !192, file: !193, line: 52, baseType: !95, size: 8, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !192, file: !193, line: 53, baseType: !95, size: 8, offset: 200)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !192, file: !193, line: 54, baseType: !141, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !192, file: !193, line: 55, baseType: !6, size: 32, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !192, file: !193, line: 56, baseType: !6, size: 32, offset: 352)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !192, file: !193, line: 57, baseType: !6, size: 32, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !192, file: !193, line: 58, baseType: !6, size: 32, offset: 416)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !192, file: !193, line: 60, baseType: !218, size: 640, offset: 448)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !22, line: 893, size: 640, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !309, !310, !426, !427}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !218, file: !22, line: 894, baseType: !141, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !218, file: !22, line: 895, baseType: !141, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !218, file: !22, line: 896, baseType: !141, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !218, file: !22, line: 897, baseType: !141, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !218, file: !22, line: 898, baseType: !141, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !218, file: !22, line: 899, baseType: !226, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !22, line: 875, size: 1600, elements: !228)
!228 = !{!229, !249, !265}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !227, file: !22, line: 876, baseType: !230, size: 448)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !22, line: 828, size: 448, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !248}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !230, file: !22, line: 829, baseType: !226, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !230, file: !22, line: 829, baseType: !95, size: 8, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !230, file: !22, line: 829, baseType: !95, size: 8, offset: 72)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !230, file: !22, line: 829, baseType: !100, size: 16, offset: 80)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !230, file: !22, line: 829, baseType: !141, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !22, line: 829, baseType: !226, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !230, file: !22, line: 829, baseType: !82, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !230, file: !22, line: 829, baseType: !240, size: 64, offset: 320)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !22, line: 716, size: 64, elements: !241)
!241 = !{!242, !243, !244, !245, !246, !247}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !240, file: !22, line: 717, baseType: !117, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !240, file: !22, line: 718, baseType: !6, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !240, file: !22, line: 719, baseType: !129, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !240, file: !22, line: 720, baseType: !141, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !22, line: 721, baseType: !129, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !240, file: !22, line: 722, baseType: !226, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !230, file: !22, line: 829, baseType: !95, size: 8, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !227, file: !22, line: 877, baseType: !250, size: 640)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !22, line: 835, size: 640, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !250, file: !22, line: 836, baseType: !226, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !250, file: !22, line: 836, baseType: !95, size: 8, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !250, file: !22, line: 836, baseType: !95, size: 8, offset: 72)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !250, file: !22, line: 836, baseType: !100, size: 16, offset: 80)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !250, file: !22, line: 836, baseType: !141, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !22, line: 836, baseType: !226, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !250, file: !22, line: 836, baseType: !82, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !250, file: !22, line: 836, baseType: !240, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !250, file: !22, line: 836, baseType: !95, size: 8, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !250, file: !22, line: 836, baseType: !129, size: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !250, file: !22, line: 837, baseType: !141, size: 64, offset: 512)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !250, file: !22, line: 838, baseType: !6, size: 32, offset: 576)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !250, file: !22, line: 839, baseType: !6, size: 32, offset: 608)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !227, file: !22, line: 878, baseType: !266, size: 1600)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !22, line: 846, size: 1600, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !266, file: !22, line: 847, baseType: !226, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !266, file: !22, line: 847, baseType: !95, size: 8, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !22, line: 847, baseType: !95, size: 8, offset: 72)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !266, file: !22, line: 847, baseType: !100, size: 16, offset: 80)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !266, file: !22, line: 847, baseType: !141, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !22, line: 847, baseType: !226, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !266, file: !22, line: 847, baseType: !82, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !266, file: !22, line: 847, baseType: !240, size: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !266, file: !22, line: 847, baseType: !95, size: 8, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !266, file: !22, line: 847, baseType: !226, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !266, file: !22, line: 848, baseType: !226, size: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !266, file: !22, line: 849, baseType: !129, size: 64, offset: 576)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !266, file: !22, line: 850, baseType: !95, size: 8, offset: 640)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !266, file: !22, line: 851, baseType: !129, size: 64, offset: 704)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !266, file: !22, line: 852, baseType: !129, size: 64, offset: 768)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !266, file: !22, line: 853, baseType: !129, size: 64, offset: 832)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !266, file: !22, line: 854, baseType: !285, size: 32, offset: 896)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 32, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 4)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !266, file: !22, line: 855, baseType: !6, size: 32, offset: 928)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !266, file: !22, line: 856, baseType: !6, size: 32, offset: 960)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !266, file: !22, line: 857, baseType: !6, size: 32, offset: 992)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !266, file: !22, line: 858, baseType: !6, size: 32, offset: 1024)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !266, file: !22, line: 859, baseType: !6, size: 32, offset: 1056)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !266, file: !22, line: 860, baseType: !6, size: 32, offset: 1088)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !266, file: !22, line: 861, baseType: !6, size: 32, offset: 1120)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !266, file: !22, line: 862, baseType: !6, size: 32, offset: 1152)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !266, file: !22, line: 863, baseType: !6, size: 32, offset: 1184)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !266, file: !22, line: 864, baseType: !6, size: 32, offset: 1216)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !266, file: !22, line: 865, baseType: !6, size: 32, offset: 1248)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !266, file: !22, line: 866, baseType: !6, size: 32, offset: 1280)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !266, file: !22, line: 867, baseType: !6, size: 32, offset: 1312)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !266, file: !22, line: 868, baseType: !100, size: 16, offset: 1344)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !266, file: !22, line: 869, baseType: !95, size: 8, offset: 1360)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !266, file: !22, line: 870, baseType: !95, size: 8, offset: 1368)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !266, file: !22, line: 871, baseType: !95, size: 8, offset: 1376)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !266, file: !22, line: 872, baseType: !306, size: 160, offset: 1384)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 160, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 20)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !218, file: !22, line: 900, baseType: !82, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !218, file: !22, line: 901, baseType: !311, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !22, line: 663, size: 640, elements: !313)
!313 = !{!314, !322, !335, !344, !353, !366, !380, !392, !404}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !312, file: !22, line: 664, baseType: !315, size: 128)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !22, line: 567, size: 128, elements: !316)
!316 = !{!317, !318, !319, !320, !321}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !22, line: 568, baseType: !30, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !315, file: !22, line: 568, baseType: !95, size: 8, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !22, line: 568, baseType: !95, size: 8, offset: 72)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !315, file: !22, line: 568, baseType: !100, size: 16, offset: 80)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !315, file: !22, line: 568, baseType: !100, size: 16, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !312, file: !22, line: 665, baseType: !323, size: 384)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !22, line: 593, size: 384, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !22, line: 594, baseType: !30, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !323, file: !22, line: 594, baseType: !95, size: 8, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !22, line: 594, baseType: !95, size: 8, offset: 72)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !323, file: !22, line: 594, baseType: !100, size: 16, offset: 80)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !323, file: !22, line: 594, baseType: !100, size: 16, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !323, file: !22, line: 594, baseType: !100, size: 16, offset: 112)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !323, file: !22, line: 595, baseType: !226, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !323, file: !22, line: 596, baseType: !141, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !323, file: !22, line: 597, baseType: !141, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !323, file: !22, line: 598, baseType: !117, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !312, file: !22, line: 666, baseType: !336, size: 192)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !22, line: 573, size: 192, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !22, line: 574, baseType: !30, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !22, line: 574, baseType: !95, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !22, line: 574, baseType: !95, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !22, line: 574, baseType: !100, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !22, line: 574, baseType: !100, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !336, file: !22, line: 574, baseType: !86, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !312, file: !22, line: 667, baseType: !345, size: 192)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !22, line: 604, size: 192, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !22, line: 605, baseType: !30, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !345, file: !22, line: 605, baseType: !95, size: 8, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !22, line: 605, baseType: !95, size: 8, offset: 72)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !345, file: !22, line: 605, baseType: !100, size: 16, offset: 80)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !345, file: !22, line: 605, baseType: !100, size: 16, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !345, file: !22, line: 605, baseType: !82, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !312, file: !22, line: 668, baseType: !354, size: 448)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !22, line: 608, size: 448, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364, !365}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !22, line: 609, baseType: !30, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !354, file: !22, line: 609, baseType: !95, size: 8, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !22, line: 609, baseType: !95, size: 8, offset: 72)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !354, file: !22, line: 609, baseType: !100, size: 16, offset: 80)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !354, file: !22, line: 609, baseType: !100, size: 16, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !354, file: !22, line: 609, baseType: !6, size: 32, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !354, file: !22, line: 610, baseType: !226, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !354, file: !22, line: 611, baseType: !141, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !354, file: !22, line: 612, baseType: !141, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !354, file: !22, line: 613, baseType: !6, size: 32, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !312, file: !22, line: 669, baseType: !367, size: 512)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !22, line: 580, size: 512, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !367, file: !22, line: 581, baseType: !30, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !367, file: !22, line: 581, baseType: !95, size: 8, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !22, line: 581, baseType: !95, size: 8, offset: 72)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !367, file: !22, line: 581, baseType: !100, size: 16, offset: 80)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !367, file: !22, line: 581, baseType: !100, size: 16, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !367, file: !22, line: 581, baseType: !6, size: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !367, file: !22, line: 582, baseType: !86, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !367, file: !22, line: 583, baseType: !86, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !367, file: !22, line: 584, baseType: !191, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !367, file: !22, line: 585, baseType: !30, size: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !367, file: !22, line: 586, baseType: !6, size: 32, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !312, file: !22, line: 670, baseType: !381, size: 320)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !22, line: 620, size: 320, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !22, line: 621, baseType: !30, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !381, file: !22, line: 621, baseType: !95, size: 8, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !22, line: 621, baseType: !95, size: 8, offset: 72)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !381, file: !22, line: 621, baseType: !100, size: 16, offset: 80)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !381, file: !22, line: 621, baseType: !100, size: 16, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !381, file: !22, line: 621, baseType: !95, size: 8, offset: 112)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !381, file: !22, line: 622, baseType: !191, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !381, file: !22, line: 623, baseType: !86, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !381, file: !22, line: 624, baseType: !117, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !312, file: !22, line: 671, baseType: !393, size: 640)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !22, line: 631, size: 640, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !22, line: 632, baseType: !30, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !393, file: !22, line: 632, baseType: !95, size: 8, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !22, line: 632, baseType: !95, size: 8, offset: 72)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !393, file: !22, line: 632, baseType: !100, size: 16, offset: 80)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !393, file: !22, line: 632, baseType: !100, size: 16, offset: 96)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !393, file: !22, line: 633, baseType: !401, size: 512, offset: 128)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 512, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 8)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !312, file: !22, line: 672, baseType: !405, size: 320)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !22, line: 654, size: 320, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !22, line: 655, baseType: !30, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !405, file: !22, line: 655, baseType: !95, size: 8, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !22, line: 655, baseType: !95, size: 8, offset: 72)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !405, file: !22, line: 655, baseType: !100, size: 16, offset: 80)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !405, file: !22, line: 655, baseType: !100, size: 16, offset: 96)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !405, file: !22, line: 655, baseType: !95, size: 8, offset: 112)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !405, file: !22, line: 656, baseType: !82, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !405, file: !22, line: 657, baseType: !86, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !405, file: !22, line: 658, baseType: !416, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !22, line: 645, size: 128, elements: !418)
!418 = !{!419, !425}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !417, file: !22, line: 646, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !5, line: 1052, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !424, !6, !30}
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !5, line: 424, baseType: !30)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !417, file: !22, line: 647, baseType: !30, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !218, file: !22, line: 902, baseType: !226, size: 64, offset: 512)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !218, file: !22, line: 903, baseType: !6, size: 32, offset: 576)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !192, file: !193, line: 61, baseType: !6, size: 32, offset: 1088)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !192, file: !193, line: 62, baseType: !6, size: 32, offset: 1120)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !192, file: !193, line: 63, baseType: !100, size: 16, offset: 1152)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !192, file: !193, line: 64, baseType: !95, size: 8, offset: 1168)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !192, file: !193, line: 66, baseType: !433, size: 2688, offset: 1216)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 2688, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 7)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !192, file: !193, line: 67, baseType: !437, size: 3072, offset: 3904)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 3072, elements: !402)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !192, file: !193, line: 68, baseType: !439, size: 576, offset: 6976)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 576, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 9)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !192, file: !193, line: 69, baseType: !156, size: 64, offset: 7552)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !192, file: !193, line: 71, baseType: !141, size: 64, offset: 7616)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !192, file: !193, line: 72, baseType: !156, size: 64, offset: 7680)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !192, file: !193, line: 73, baseType: !311, size: 64, offset: 7744)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !192, file: !193, line: 74, baseType: !82, size: 64, offset: 7808)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !192, file: !193, line: 75, baseType: !86, size: 64, offset: 7872)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !192, file: !193, line: 76, baseType: !82, size: 64, offset: 7936)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !192, file: !193, line: 77, baseType: !226, size: 64, offset: 8000)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !192, file: !193, line: 78, baseType: !86, size: 64, offset: 8064)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !192, file: !193, line: 79, baseType: !82, size: 64, offset: 8128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !192, file: !193, line: 80, baseType: !129, size: 64, offset: 8192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !192, file: !193, line: 81, baseType: !226, size: 64, offset: 8256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !192, file: !193, line: 82, baseType: !455, size: 64, offset: 8320)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !22, line: 702, size: 128, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !457, file: !22, line: 706, baseType: !6, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !457, file: !22, line: 707, baseType: !6, size: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !457, file: !22, line: 708, baseType: !100, size: 16, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !457, file: !22, line: 709, baseType: !95, size: 8, offset: 80)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !457, file: !22, line: 710, baseType: !95, size: 8, offset: 88)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !457, file: !22, line: 711, baseType: !95, size: 8, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !192, file: !193, line: 83, baseType: !226, size: 64, offset: 8384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !192, file: !193, line: 84, baseType: !86, size: 64, offset: 8448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !192, file: !193, line: 85, baseType: !311, size: 64, offset: 8512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !192, file: !193, line: 86, baseType: !86, size: 64, offset: 8576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !192, file: !193, line: 87, baseType: !311, size: 64, offset: 8640)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !192, file: !193, line: 88, baseType: !226, size: 64, offset: 8704)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !192, file: !193, line: 89, baseType: !226, size: 64, offset: 8768)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !192, file: !193, line: 90, baseType: !473, size: 64, offset: 8832)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !192, file: !193, line: 91, baseType: !475, size: 64, offset: 8896)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !22, line: 637, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!4, !191, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !192, file: !193, line: 92, baseType: !481, size: 64, offset: 8960)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !22, line: 641, baseType: !188)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !184, file: !88, line: 152, baseType: !86, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !170, file: !88, line: 155, baseType: !6, size: 32, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !170, file: !88, line: 156, baseType: !203, size: 16, offset: 416)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !170, file: !88, line: 157, baseType: !95, size: 8, offset: 432)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !87, file: !88, line: 375, baseType: !487, size: 576)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !88, line: 122, size: 576, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !487, file: !88, line: 123, baseType: !86, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !487, file: !88, line: 123, baseType: !95, size: 8, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !487, file: !88, line: 123, baseType: !95, size: 8, offset: 72)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !487, file: !88, line: 123, baseType: !100, size: 16, offset: 80)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !88, line: 123, baseType: !95, size: 8, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !487, file: !88, line: 123, baseType: !95, size: 8, offset: 104)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !487, file: !88, line: 124, baseType: !100, size: 16, offset: 112)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !487, file: !88, line: 125, baseType: !30, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !487, file: !88, line: 126, baseType: !117, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !487, file: !88, line: 127, baseType: !473, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !487, file: !88, line: 128, baseType: !86, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !88, line: 129, baseType: !86, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !487, file: !88, line: 130, baseType: !82, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !487, file: !88, line: 131, baseType: !95, size: 8, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !87, file: !88, line: 376, baseType: !504, size: 448)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !88, line: 134, size: 448, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !517}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !504, file: !88, line: 135, baseType: !86, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !504, file: !88, line: 135, baseType: !95, size: 8, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !504, file: !88, line: 135, baseType: !95, size: 8, offset: 72)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !504, file: !88, line: 135, baseType: !100, size: 16, offset: 80)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !504, file: !88, line: 135, baseType: !95, size: 8, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !504, file: !88, line: 135, baseType: !95, size: 8, offset: 104)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !504, file: !88, line: 136, baseType: !82, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !504, file: !88, line: 137, baseType: !86, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !504, file: !88, line: 138, baseType: !86, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !504, file: !88, line: 139, baseType: !516, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !5, line: 129, baseType: !117)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !504, file: !88, line: 140, baseType: !6, size: 32, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !87, file: !88, line: 377, baseType: !519, size: 320)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !88, line: 184, size: 320, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !530}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !519, file: !88, line: 185, baseType: !86, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !519, file: !88, line: 185, baseType: !95, size: 8, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !519, file: !88, line: 185, baseType: !95, size: 8, offset: 72)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !519, file: !88, line: 185, baseType: !100, size: 16, offset: 80)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !88, line: 185, baseType: !95, size: 8, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !519, file: !88, line: 185, baseType: !527, size: 128, offset: 128)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 2)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !519, file: !88, line: 185, baseType: !86, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !87, file: !88, line: 378, baseType: !532, size: 384)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !88, line: 187, size: 384, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !539, !540, !541}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !532, file: !88, line: 188, baseType: !86, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !532, file: !88, line: 188, baseType: !95, size: 8, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !532, file: !88, line: 188, baseType: !95, size: 8, offset: 72)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !532, file: !88, line: 188, baseType: !100, size: 16, offset: 80)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !88, line: 188, baseType: !95, size: 8, offset: 96)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !532, file: !88, line: 189, baseType: !527, size: 128, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !532, file: !88, line: 189, baseType: !86, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !532, file: !88, line: 189, baseType: !78, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !87, file: !88, line: 379, baseType: !543, size: 384)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !88, line: 192, size: 384, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !543, file: !88, line: 193, baseType: !86, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !543, file: !88, line: 193, baseType: !95, size: 8, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !543, file: !88, line: 193, baseType: !95, size: 8, offset: 72)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !543, file: !88, line: 193, baseType: !100, size: 16, offset: 80)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !88, line: 193, baseType: !95, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !543, file: !88, line: 193, baseType: !527, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !88, line: 193, baseType: !86, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !543, file: !88, line: 193, baseType: !6, size: 32, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !543, file: !88, line: 194, baseType: !6, size: 32, offset: 352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !87, file: !88, line: 380, baseType: !555, size: 384)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !88, line: 197, size: 384, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !555, file: !88, line: 198, baseType: !86, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !555, file: !88, line: 198, baseType: !95, size: 8, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !88, line: 198, baseType: !95, size: 8, offset: 72)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !555, file: !88, line: 198, baseType: !100, size: 16, offset: 80)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !88, line: 198, baseType: !95, size: 8, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !555, file: !88, line: 200, baseType: !95, size: 8, offset: 104)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !555, file: !88, line: 201, baseType: !95, size: 8, offset: 112)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !555, file: !88, line: 202, baseType: !527, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !555, file: !88, line: 202, baseType: !86, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !555, file: !88, line: 202, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !5, line: 128, baseType: !117)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !87, file: !88, line: 381, baseType: !569, size: 320)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !88, line: 205, size: 320, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !88, line: 206, baseType: !86, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !88, line: 206, baseType: !95, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !88, line: 206, baseType: !95, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !88, line: 206, baseType: !100, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !88, line: 206, baseType: !95, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !88, line: 206, baseType: !527, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !88, line: 206, baseType: !86, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !87, file: !88, line: 382, baseType: !579, size: 384)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !88, line: 233, size: 384, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !88, line: 234, baseType: !86, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !88, line: 234, baseType: !95, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !88, line: 234, baseType: !95, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !88, line: 234, baseType: !100, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !88, line: 234, baseType: !95, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !579, file: !88, line: 234, baseType: !95, size: 8, offset: 104)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !579, file: !88, line: 234, baseType: !95, size: 8, offset: 112)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !579, file: !88, line: 234, baseType: !95, size: 8, offset: 120)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !579, file: !88, line: 234, baseType: !82, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !579, file: !88, line: 234, baseType: !6, size: 32, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !579, file: !88, line: 234, baseType: !6, size: 32, offset: 224)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !579, file: !88, line: 234, baseType: !6, size: 32, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !579, file: !88, line: 234, baseType: !95, size: 8, offset: 288)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !579, file: !88, line: 234, baseType: !95, size: 8, offset: 296)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !579, file: !88, line: 234, baseType: !86, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !87, file: !88, line: 383, baseType: !597, size: 576)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !88, line: 237, size: 576, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !88, line: 238, baseType: !86, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !88, line: 238, baseType: !95, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !88, line: 238, baseType: !95, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !88, line: 238, baseType: !100, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !88, line: 238, baseType: !95, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !597, file: !88, line: 238, baseType: !95, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !597, file: !88, line: 238, baseType: !95, size: 8, offset: 112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !597, file: !88, line: 238, baseType: !95, size: 8, offset: 120)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !88, line: 238, baseType: !82, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !597, file: !88, line: 238, baseType: !6, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !597, file: !88, line: 238, baseType: !6, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !88, line: 238, baseType: !6, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !597, file: !88, line: 238, baseType: !95, size: 8, offset: 288)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !597, file: !88, line: 238, baseType: !95, size: 8, offset: 296)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !597, file: !88, line: 238, baseType: !100, size: 16, offset: 304)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !597, file: !88, line: 239, baseType: !86, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !597, file: !88, line: 240, baseType: !141, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !597, file: !88, line: 241, baseType: !100, size: 16, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !597, file: !88, line: 242, baseType: !141, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !87, file: !88, line: 384, baseType: !619, size: 384)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !88, line: 262, size: 384, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !88, line: 263, baseType: !86, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !88, line: 263, baseType: !95, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !88, line: 263, baseType: !95, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !88, line: 263, baseType: !100, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !88, line: 263, baseType: !95, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !619, file: !88, line: 263, baseType: !95, size: 8, offset: 104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !619, file: !88, line: 263, baseType: !95, size: 8, offset: 112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !619, file: !88, line: 263, baseType: !95, size: 8, offset: 120)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !88, line: 263, baseType: !82, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !619, file: !88, line: 263, baseType: !6, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !619, file: !88, line: 263, baseType: !6, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !88, line: 263, baseType: !6, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !619, file: !88, line: 263, baseType: !95, size: 8, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !619, file: !88, line: 263, baseType: !95, size: 8, offset: 296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !619, file: !88, line: 263, baseType: !95, size: 8, offset: 304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !619, file: !88, line: 264, baseType: !86, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !87, file: !88, line: 385, baseType: !638, size: 448)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !88, line: 245, size: 448, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !88, line: 246, baseType: !86, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !88, line: 246, baseType: !95, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !88, line: 246, baseType: !95, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !88, line: 246, baseType: !100, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !88, line: 246, baseType: !95, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !88, line: 246, baseType: !95, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !88, line: 246, baseType: !95, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !88, line: 246, baseType: !95, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !88, line: 246, baseType: !82, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !88, line: 246, baseType: !6, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !88, line: 246, baseType: !6, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !88, line: 246, baseType: !6, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !88, line: 246, baseType: !95, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !88, line: 246, baseType: !95, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !638, file: !88, line: 246, baseType: !86, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !638, file: !88, line: 247, baseType: !86, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !87, file: !88, line: 386, baseType: !657, size: 448)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !88, line: 250, size: 448, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !657, file: !88, line: 251, baseType: !86, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !657, file: !88, line: 251, baseType: !95, size: 8, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !88, line: 251, baseType: !95, size: 8, offset: 72)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !657, file: !88, line: 251, baseType: !100, size: 16, offset: 80)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !88, line: 251, baseType: !95, size: 8, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !657, file: !88, line: 251, baseType: !95, size: 8, offset: 104)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !657, file: !88, line: 251, baseType: !95, size: 8, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !657, file: !88, line: 251, baseType: !95, size: 8, offset: 120)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !88, line: 251, baseType: !82, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !657, file: !88, line: 251, baseType: !6, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !657, file: !88, line: 251, baseType: !6, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !657, file: !88, line: 251, baseType: !6, size: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !657, file: !88, line: 251, baseType: !95, size: 8, offset: 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !657, file: !88, line: 251, baseType: !95, size: 8, offset: 296)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !657, file: !88, line: 256, baseType: !86, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !657, file: !88, line: 257, baseType: !86, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !87, file: !88, line: 387, baseType: !676, size: 512)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !88, line: 273, size: 512, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !676, file: !88, line: 274, baseType: !86, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !88, line: 274, baseType: !95, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !88, line: 274, baseType: !95, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !88, line: 274, baseType: !100, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !88, line: 274, baseType: !95, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !676, file: !88, line: 274, baseType: !82, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !676, file: !88, line: 275, baseType: !6, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !676, file: !88, line: 276, baseType: !420, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !676, file: !88, line: 277, baseType: !30, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !88, line: 278, baseType: !527, size: 128, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !87, file: !88, line: 388, baseType: !689, size: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !88, line: 281, size: 512, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !704, !705, !706, !712, !713}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !88, line: 282, baseType: !86, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !88, line: 282, baseType: !95, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !88, line: 282, baseType: !95, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !88, line: 282, baseType: !100, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !88, line: 282, baseType: !95, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !689, file: !88, line: 282, baseType: !95, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !689, file: !88, line: 283, baseType: !95, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !689, file: !88, line: 284, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !5, line: 1084, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!4, !6, !516, !6, !703, !30, !30}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !88, line: 285, baseType: !82, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !689, file: !88, line: 286, baseType: !30, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !689, file: !88, line: 287, baseType: !707, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !5, line: 1102, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!4, !424, !6, !30, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !689, file: !88, line: 288, baseType: !86, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !88, line: 289, baseType: !86, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !87, file: !88, line: 389, baseType: !715, size: 512)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !88, line: 307, size: 512, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !88, line: 308, baseType: !86, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !88, line: 308, baseType: !95, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !88, line: 308, baseType: !95, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !88, line: 308, baseType: !100, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !88, line: 308, baseType: !95, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !715, file: !88, line: 308, baseType: !95, size: 8, offset: 104)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !715, file: !88, line: 309, baseType: !95, size: 8, offset: 112)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !715, file: !88, line: 310, baseType: !95, size: 8, offset: 120)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !715, file: !88, line: 311, baseType: !30, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !88, line: 312, baseType: !82, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !715, file: !88, line: 313, baseType: !156, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !715, file: !88, line: 314, baseType: !141, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !715, file: !88, line: 315, baseType: !141, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !715, file: !88, line: 316, baseType: !6, size: 32, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !87, file: !88, line: 390, baseType: !732, size: 448)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !88, line: 340, size: 448, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !732, file: !88, line: 341, baseType: !86, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !88, line: 341, baseType: !95, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !88, line: 341, baseType: !95, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !732, file: !88, line: 341, baseType: !100, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !88, line: 341, baseType: !95, size: 8, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !732, file: !88, line: 341, baseType: !82, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !732, file: !88, line: 342, baseType: !82, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !732, file: !88, line: 343, baseType: !30, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !732, file: !88, line: 344, baseType: !141, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !732, file: !88, line: 345, baseType: !6, size: 32, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !87, file: !88, line: 391, baseType: !745, size: 256)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !88, line: 350, size: 256, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !757}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !745, file: !88, line: 351, baseType: !86, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !88, line: 351, baseType: !95, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !88, line: 351, baseType: !95, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !745, file: !88, line: 351, baseType: !100, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !88, line: 351, baseType: !95, size: 8, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !745, file: !88, line: 351, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !5, line: 1055, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !424, !30}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !745, file: !88, line: 352, baseType: !30, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !87, file: !88, line: 392, baseType: !759, size: 192)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !88, line: 357, size: 192, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !759, file: !88, line: 358, baseType: !86, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !759, file: !88, line: 358, baseType: !95, size: 8, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !759, file: !88, line: 358, baseType: !95, size: 8, offset: 72)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !759, file: !88, line: 358, baseType: !100, size: 16, offset: 80)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !88, line: 358, baseType: !95, size: 8, offset: 96)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !759, file: !88, line: 358, baseType: !86, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !87, file: !88, line: 399, baseType: !83, size: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !83, file: !22, line: 135, baseType: !95, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !22, line: 136, baseType: !95, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !22, line: 137, baseType: !100, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !83, file: !22, line: 138, baseType: !772, size: 32, offset: 96)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !773, line: 327, size: 32, elements: !774)
!773 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !772, file: !773, line: 328, baseType: !6, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !772, file: !773, line: 329, baseType: !285, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !83, file: !22, line: 139, baseType: !82, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !83, file: !22, line: 140, baseType: !82, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !83, file: !22, line: 141, baseType: !82, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !83, file: !22, line: 142, baseType: !203, size: 16, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !79, file: !22, line: 482, baseType: !78, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !79, file: !22, line: 483, baseType: !78, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !79, file: !22, line: 484, baseType: !72, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !79, file: !22, line: 485, baseType: !785, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !22, line: 466, size: 320, elements: !787)
!787 = !{!788, !793, !794, !795, !796, !797, !798}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !786, file: !22, line: 467, baseType: !789, size: 128)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !22, line: 459, size: 128, elements: !790)
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !789, file: !22, line: 460, baseType: !95, size: 8)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !789, file: !22, line: 461, baseType: !117, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !786, file: !22, line: 468, baseType: !789, size: 128, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !786, file: !22, line: 469, baseType: !100, size: 16, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !786, file: !22, line: 470, baseType: !95, size: 8, offset: 272)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !786, file: !22, line: 471, baseType: !95, size: 8, offset: 280)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !786, file: !22, line: 472, baseType: !95, size: 8, offset: 288)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !786, file: !22, line: 473, baseType: !95, size: 8, offset: 296)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !79, file: !22, line: 486, baseType: !800, size: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !22, line: 448, size: 192, elements: !802)
!802 = !{!803, !826, !827, !828, !829, !830}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !801, file: !22, line: 449, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !22, line: 438, size: 64, elements: !805)
!805 = !{!806, !807, !820}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !804, file: !22, line: 439, baseType: !82, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !804, file: !22, line: 440, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !22, line: 419, size: 256, elements: !810)
!810 = !{!811, !816, !817, !818, !819}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !809, file: !22, line: 420, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !5, line: 1049, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!6, !424, !6, !30}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !809, file: !22, line: 421, baseType: !30, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !809, file: !22, line: 422, baseType: !82, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !809, file: !22, line: 423, baseType: !95, size: 8, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !809, file: !22, line: 424, baseType: !95, size: 8, offset: 200)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !804, file: !22, line: 441, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !22, line: 429, size: 128, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !822, file: !22, line: 430, baseType: !82, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !822, file: !22, line: 431, baseType: !821, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !801, file: !22, line: 450, baseType: !785, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !801, file: !22, line: 451, baseType: !95, size: 8, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !801, file: !22, line: 452, baseType: !95, size: 8, offset: 136)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !801, file: !22, line: 453, baseType: !95, size: 8, offset: 144)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !801, file: !22, line: 454, baseType: !95, size: 8, offset: 152)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !79, file: !22, line: 487, baseType: !117, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !79, file: !22, line: 488, baseType: !6, size: 32, offset: 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !79, file: !22, line: 489, baseType: !100, size: 16, offset: 480)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !79, file: !22, line: 490, baseType: !100, size: 16, offset: 496)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !79, file: !22, line: 491, baseType: !95, size: 8, offset: 512)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !79, file: !22, line: 492, baseType: !95, size: 8, offset: 520)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !73, file: !22, line: 501, baseType: !6, size: 32, offset: 192)
!838 = !DILocation(line: 122, column: 30, scope: !68)
!839 = !DILocation(line: 122, column: 47, scope: !68)
!840 = !DILocalVariable(name: "interrupt_handled", scope: !68, file: !1, line: 123, type: !6)
!841 = !DILocation(line: 123, column: 6, scope: !68)
!842 = !DILocation(line: 134, column: 42, scope: !68)
!843 = !DILocation(line: 134, column: 23, scope: !68)
!844 = !DILocation(line: 134, column: 20, scope: !68)
!845 = !DILocation(line: 135, column: 2, scope: !68)
!846 = distinct !DISubprogram(name: "acpi_ev_install_sci_handler", scope: !1, file: !1, line: 150, type: !17, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!847 = !DILocalVariable(name: "status", scope: !846, file: !1, line: 152, type: !6)
!848 = !DILocation(line: 152, column: 6, scope: !846)
!849 = !DILocation(line: 157, column: 60, scope: !846)
!850 = !DILocation(line: 157, column: 40, scope: !846)
!851 = !DILocation(line: 159, column: 12, scope: !846)
!852 = !DILocation(line: 157, column: 6, scope: !846)
!853 = !DILocation(line: 156, column: 9, scope: !846)
!854 = !DILocation(line: 160, column: 2, scope: !846)
!855 = distinct !DISubprogram(name: "acpi_ev_sci_xrupt_handler", scope: !1, file: !1, line: 76, type: !28, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!856 = !DILocalVariable(name: "context", arg: 1, scope: !855, file: !1, line: 76, type: !30)
!857 = !DILocation(line: 76, column: 62, scope: !855)
!858 = !DILocalVariable(name: "gpe_xrupt_list", scope: !855, file: !1, line: 78, type: !72)
!859 = !DILocation(line: 78, column: 30, scope: !855)
!860 = !DILocation(line: 78, column: 47, scope: !855)
!861 = !DILocalVariable(name: "interrupt_handled", scope: !855, file: !1, line: 79, type: !6)
!862 = !DILocation(line: 79, column: 6, scope: !855)
!863 = !DILocation(line: 92, column: 23, scope: !855)
!864 = !DILocation(line: 92, column: 20, scope: !855)
!865 = !DILocation(line: 98, column: 42, scope: !855)
!866 = !DILocation(line: 98, column: 23, scope: !855)
!867 = !DILocation(line: 98, column: 20, scope: !855)
!868 = !DILocation(line: 102, column: 23, scope: !855)
!869 = !DILocation(line: 102, column: 20, scope: !855)
!870 = !DILocation(line: 104, column: 16, scope: !855)
!871 = !DILocation(line: 105, column: 2, scope: !855)
!872 = distinct !DISubprogram(name: "acpi_ev_remove_all_sci_handlers", scope: !1, file: !1, line: 182, type: !873, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!873 = !DISubroutineType(types: !874)
!874 = !{!4}
!875 = !DILocalVariable(name: "sci_handler", scope: !872, file: !1, line: 184, type: !20)
!876 = !DILocation(line: 184, column: 32, scope: !872)
!877 = !DILocalVariable(name: "flags", scope: !872, file: !1, line: 185, type: !34)
!878 = !DILocation(line: 185, column: 17, scope: !872)
!879 = !DILocalVariable(name: "status", scope: !872, file: !1, line: 186, type: !4)
!880 = !DILocation(line: 186, column: 14, scope: !872)
!881 = !DILocation(line: 193, column: 59, scope: !872)
!882 = !DILocation(line: 193, column: 39, scope: !872)
!883 = !DILocation(line: 193, column: 6, scope: !872)
!884 = !DILocation(line: 192, column: 9, scope: !872)
!885 = !DILocation(line: 196, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !872, file: !1, line: 196, column: 6)
!887 = !DILocation(line: 196, column: 6, scope: !872)
!888 = !DILocation(line: 197, column: 11, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !1, line: 196, column: 34)
!890 = !DILocation(line: 197, column: 3, scope: !889)
!891 = !DILocation(line: 200, column: 31, scope: !872)
!892 = !DILocation(line: 200, column: 10, scope: !872)
!893 = !DILocation(line: 200, column: 8, scope: !872)
!894 = !DILocation(line: 204, column: 2, scope: !872)
!895 = !DILocation(line: 204, column: 9, scope: !872)
!896 = !DILocation(line: 205, column: 17, scope: !897)
!897 = distinct !DILexicalBlock(scope: !872, file: !1, line: 204, column: 36)
!898 = !DILocation(line: 205, column: 15, scope: !897)
!899 = !DILocation(line: 206, column: 31, scope: !897)
!900 = !DILocation(line: 206, column: 44, scope: !897)
!901 = !DILocation(line: 206, column: 29, scope: !897)
!902 = !DILocation(line: 207, column: 3, scope: !897)
!903 = distinct !{!903, !894, !904}
!904 = !DILocation(line: 208, column: 2, scope: !872)
!905 = !DILocation(line: 210, column: 23, scope: !872)
!906 = !DILocation(line: 210, column: 42, scope: !872)
!907 = !DILocation(line: 210, column: 2, scope: !872)
!908 = !DILocation(line: 211, column: 2, scope: !872)
!909 = !DILocation(line: 212, column: 1, scope: !872)
!910 = distinct !DISubprogram(name: "acpi_os_free", scope: !911, file: !911, line: 60, type: !912, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!911 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!912 = !DISubroutineType(types: !913)
!913 = !{null, !30}
!914 = !DILocalVariable(name: "memory", arg: 1, scope: !910, file: !911, line: 60, type: !30)
!915 = !DILocation(line: 60, column: 39, scope: !910)
!916 = !DILocation(line: 62, column: 8, scope: !910)
!917 = !DILocation(line: 62, column: 2, scope: !910)
!918 = !DILocation(line: 63, column: 1, scope: !910)
