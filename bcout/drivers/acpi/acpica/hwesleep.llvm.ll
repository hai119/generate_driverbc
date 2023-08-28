; ModuleID = '../bcout/drivers/acpi/acpica/hwesleep.llvm.bc'
source_filename = "drivers/acpi/acpica/hwesleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.8 }
%union.anon = type { %struct.anon.6 }
%struct.anon.6 = type { i64, i64 }
%union.anon.8 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.29, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.sched_statistics = type {}
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [16 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.9, [0 x i64] }
%struct.anon.9 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.10, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.10 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type opaque
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type opaque
%struct.key = type opaque
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type opaque
%struct.sighand_struct = type opaque
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, %struct.seccomp_filter* }
%struct.seccomp_filter = type opaque
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.17 }
%struct.anon.17 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.21 }
%struct.anon.21 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.28, i32, [12 x i8] }
%union.anon.28 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.29 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.30, %union.anon.43, %struct.atomic_t, [8 x i8] }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.43 = type { %struct.atomic_t }
%struct.vm_struct = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.anon = type { i32, i64 }
%struct.acpi_buffer = type { i64, i8* }

@_acpi_module_name = internal constant [9 x i8] c"hwesleep\00", align 1, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"While executing method %s\00", align 1
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_gbl_system_awake_and_running = external dso_local global i8, align 1
@acpi_gbl_sleep_type_a = external dso_local global i8, align 1
@acpi_gbl_sleep_type_b = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\\_SI._SST\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\\_WAK\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_hw_execute_sleep_method(i8* %method_pathname, i32 %integer_argument) #0 !dbg !32 {
entry:
  %method_pathname.addr = alloca i8*, align 8
  %integer_argument.addr = alloca i32, align 4
  %arg_list = alloca %struct.acpi_object_list, align 8
  %arg = alloca %union.acpi_object, align 8
  %status = alloca i32, align 4
  store i8* %method_pathname, i8** %method_pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %method_pathname.addr, metadata !36, metadata !DIExpression()), !dbg !37
  store i32 %integer_argument, i32* %integer_argument.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %integer_argument.addr, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list* %arg_list, metadata !40, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata %union.acpi_object* %arg, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata i32* %status, metadata !98, metadata !DIExpression()), !dbg !99
  %count = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %arg_list, i32 0, i32 0, !dbg !100
  store i32 1, i32* %count, align 8, !dbg !101
  %pointer = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %arg_list, i32 0, i32 1, !dbg !102
  store %union.acpi_object* %arg, %union.acpi_object** %pointer, align 8, !dbg !103
  %type = bitcast %union.acpi_object* %arg to i32*, !dbg !104
  store i32 1, i32* %type, align 8, !dbg !105
  %0 = load i32, i32* %integer_argument.addr, align 4, !dbg !106
  %conv = zext i32 %0 to i64, !dbg !107
  %integer = bitcast %union.acpi_object* %arg to %struct.anon*, !dbg !108
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !109
  store i64 %conv, i64* %value, align 8, !dbg !110
  %1 = load i8*, i8** %method_pathname.addr, align 8, !dbg !111
  %call = call i32 @acpi_evaluate_object(i8* null, i8* %1, %struct.acpi_object_list* %arg_list, %struct.acpi_buffer* null) #5, !dbg !112
  store i32 %call, i32* %status, align 4, !dbg !113
  %2 = load i32, i32* %status, align 4, !dbg !114
  %tobool = icmp ne i32 %2, 0, !dbg !114
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !116

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !117
  %cmp = icmp ne i32 %3, 5, !dbg !118
  br i1 %cmp, label %if.then, label %if.end, !dbg !119

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %status, align 4, !dbg !120
  %5 = load i8*, i8** %method_pathname.addr, align 8, !dbg !120
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 47, i32 %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %5) #5, !dbg !120
  br label %if.end, !dbg !122

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !123
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_extended_sleep(i8 zeroext %sleep_state) #0 !dbg !124 {
entry:
  %retval = alloca i32, align 4
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %sleep_control = alloca i8, align 1
  %sleep_status = alloca i64, align 8
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %status, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i8* %sleep_control, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i64* %sleep_status, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = load i64, i64* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 53, i32 4), align 1, !dbg !135
  %tobool = icmp ne i64 %0, 0, !dbg !137
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !138

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 54, i32 4), align 1, !dbg !139
  %tobool1 = icmp ne i64 %1, 0, !dbg !140
  br i1 %tobool1, label %if.end, label %if.then, !dbg !141

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 6, i32* %retval, align 4, !dbg !142
  br label %return, !dbg !142

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @acpi_write(i64 128, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 54)) #5, !dbg !144
  store i32 %call, i32* %status, align 4, !dbg !145
  %2 = load i32, i32* %status, align 4, !dbg !146
  %tobool2 = icmp ne i32 %2, 0, !dbg !146
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !148

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %status, align 4, !dbg !149
  store i32 %3, i32* %retval, align 4, !dbg !149
  br label %return, !dbg !149

if.end4:                                          ; preds = %if.end
  store i8 0, i8* @acpi_gbl_system_awake_and_running, align 1, !dbg !151
  %4 = load i8, i8* @acpi_gbl_sleep_type_a, align 1, !dbg !152
  %conv = zext i8 %4 to i32, !dbg !152
  %shl = shl i32 %conv, 2, !dbg !153
  %and = and i32 %shl, 28, !dbg !154
  %or = or i32 %and, 32, !dbg !155
  %conv5 = trunc i32 %or to i8, !dbg !156
  store i8 %conv5, i8* %sleep_control, align 1, !dbg !157
  call void @wbinvd() #5, !dbg !158
  %5 = load i8, i8* %sleep_state.addr, align 1, !dbg !159
  %6 = load i8, i8* %sleep_control, align 1, !dbg !160
  %conv6 = zext i8 %6 to i32, !dbg !160
  %call7 = call i32 @acpi_os_enter_sleep(i8 zeroext %5, i32 %conv6, i32 0) #5, !dbg !161
  store i32 %call7, i32* %status, align 4, !dbg !162
  %7 = load i32, i32* %status, align 4, !dbg !163
  %cmp = icmp eq i32 %7, 16387, !dbg !165
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !166

if.then9:                                         ; preds = %if.end4
  store i32 0, i32* %retval, align 4, !dbg !167
  br label %return, !dbg !167

if.end10:                                         ; preds = %if.end4
  %8 = load i32, i32* %status, align 4, !dbg !169
  %tobool11 = icmp ne i32 %8, 0, !dbg !169
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !171

if.then12:                                        ; preds = %if.end10
  %9 = load i32, i32* %status, align 4, !dbg !172
  store i32 %9, i32* %retval, align 4, !dbg !172
  br label %return, !dbg !172

if.end13:                                         ; preds = %if.end10
  %10 = load i8, i8* %sleep_control, align 1, !dbg !174
  %conv14 = zext i8 %10 to i64, !dbg !175
  %call15 = call i32 @acpi_write(i64 %conv14, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 53)) #5, !dbg !176
  store i32 %call15, i32* %status, align 4, !dbg !177
  %11 = load i32, i32* %status, align 4, !dbg !178
  %tobool16 = icmp ne i32 %11, 0, !dbg !178
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !180

if.then17:                                        ; preds = %if.end13
  %12 = load i32, i32* %status, align 4, !dbg !181
  store i32 %12, i32* %retval, align 4, !dbg !181
  br label %return, !dbg !181

if.end18:                                         ; preds = %if.end13
  br label %do.body, !dbg !183

do.body:                                          ; preds = %do.cond, %if.end18
  %call19 = call i32 @acpi_read(i64* %sleep_status, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 54)) #5, !dbg !184
  store i32 %call19, i32* %status, align 4, !dbg !186
  %13 = load i32, i32* %status, align 4, !dbg !187
  %tobool20 = icmp ne i32 %13, 0, !dbg !187
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !189

if.then21:                                        ; preds = %do.body
  %14 = load i32, i32* %status, align 4, !dbg !190
  store i32 %14, i32* %retval, align 4, !dbg !190
  br label %return, !dbg !190

if.end22:                                         ; preds = %do.body
  br label %do.cond, !dbg !192

do.cond:                                          ; preds = %if.end22
  %15 = load i64, i64* %sleep_status, align 8, !dbg !193
  %conv23 = trunc i64 %15 to i8, !dbg !194
  %conv24 = zext i8 %conv23 to i32, !dbg !195
  %and25 = and i32 %conv24, 128, !dbg !196
  %tobool26 = icmp ne i32 %and25, 0, !dbg !197
  %lnot = xor i1 %tobool26, true, !dbg !197
  br i1 %lnot, label %do.body, label %do.end, !dbg !192, !llvm.loop !198

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, align 4, !dbg !200
  br label %return, !dbg !200

return:                                           ; preds = %do.end, %if.then21, %if.then17, %if.then12, %if.then9, %if.then3, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !201
  ret i32 %16, !dbg !201
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_write(i64, %struct.acpi_generic_address*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wbinvd() #0 !dbg !202 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !206, metadata !DIExpression()), !dbg !209
  %0 = load i64, i64* %__edi, align 8, !dbg !209
  store i64 %0, i64* %__edi, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !210, metadata !DIExpression()), !dbg !209
  %1 = load i64, i64* %__esi, align 8, !dbg !209
  store i64 %1, i64* %__esi, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !211, metadata !DIExpression()), !dbg !209
  %2 = load i64, i64* %__edx, align 8, !dbg !209
  store i64 %2, i64* %__edx, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !212, metadata !DIExpression()), !dbg !209
  %3 = load i64, i64* %__ecx, align 8, !dbg !209
  store i64 %3, i64* %__ecx, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !213, metadata !DIExpression()), !dbg !209
  %4 = load i64, i64* %__eax, align 8, !dbg !209
  store i64 %4, i64* %__eax, align 8, !dbg !209
  %5 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 21), align 8, !dbg !209
  %6 = call i64 @llvm.read_register.i64(metadata !26), !dbg !209
  %7 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 24, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 21), i32 511, i64 %6) #4, !dbg !209, !srcloc !214
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %7, 0, !dbg !209
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64 } %7, 1, !dbg !209
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %7, 2, !dbg !209
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %7, 3, !dbg !209
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %7, 4, !dbg !209
  store i64 %asmresult, i64* %__edi, align 8, !dbg !209
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !209
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !209
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !209
  call void @llvm.write_register.i64(metadata !26, i64 %asmresult4), !dbg !209
  ret void, !dbg !215
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_enter_sleep(i8 zeroext, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_read(i64*, %struct.acpi_generic_address*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_extended_wake_prep(i8 zeroext %sleep_state) #0 !dbg !216 {
entry:
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %sleep_type_value = alloca i8, align 1
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %status, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i8* %sleep_type_value, metadata !221, metadata !DIExpression()), !dbg !222
  %call = call i32 @acpi_get_sleep_type_data(i8 zeroext 0, i8* @acpi_gbl_sleep_type_a, i8* @acpi_gbl_sleep_type_b) #5, !dbg !223
  store i32 %call, i32* %status, align 4, !dbg !224
  %0 = load i32, i32* %status, align 4, !dbg !225
  %tobool = icmp ne i32 %0, 0, !dbg !225
  br i1 %tobool, label %if.end, label %if.then, !dbg !227

if.then:                                          ; preds = %entry
  %1 = load i8, i8* @acpi_gbl_sleep_type_a, align 1, !dbg !228
  %conv = zext i8 %1 to i32, !dbg !228
  %shl = shl i32 %conv, 2, !dbg !230
  %and = and i32 %shl, 28, !dbg !231
  %conv1 = trunc i32 %and to i8, !dbg !232
  store i8 %conv1, i8* %sleep_type_value, align 1, !dbg !233
  %2 = load i8, i8* %sleep_type_value, align 1, !dbg !234
  %conv2 = zext i8 %2 to i32, !dbg !234
  %or = or i32 %conv2, 32, !dbg !235
  %conv3 = sext i32 %or to i64, !dbg !236
  %call4 = call i32 @acpi_write(i64 %conv3, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 53)) #5, !dbg !237
  br label %if.end, !dbg !238

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !239
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_sleep_type_data(i8 zeroext, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_extended_wake(i8 zeroext %sleep_state) #0 !dbg !240 {
entry:
  %sleep_state.addr = alloca i8, align 1
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !241, metadata !DIExpression()), !dbg !242
  store i8 -1, i8* @acpi_gbl_sleep_type_a, align 1, !dbg !243
  call void @acpi_hw_execute_sleep_method(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 2) #5, !dbg !244
  %0 = load i8, i8* %sleep_state.addr, align 1, !dbg !245
  %conv = zext i8 %0 to i32, !dbg !245
  call void @acpi_hw_execute_sleep_method(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %conv) #5, !dbg !246
  %call = call i32 @acpi_write(i64 128, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 54)) #5, !dbg !247
  store i8 1, i8* @acpi_gbl_system_awake_and_running, align 1, !dbg !248
  call void @acpi_hw_execute_sleep_method(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1) #5, !dbg !249
  ret i32 0, !dbg !250
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !21, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !20, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/hwesleep.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !11, !12, !17}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !13, line: 421, baseType: !14)
!13 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !16)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !19)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !{!0}
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 72, elements: !24)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{!25}
!25 = !DISubrange(count: 9)
!26 = !{!"rsp"}
!27 = !{i32 7, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"Code Model", i32 2}
!31 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!32 = distinct !DISubprogram(name: "acpi_hw_execute_sleep_method", scope: !3, file: !3, line: 30, type: !33, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35, !14}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!36 = !DILocalVariable(name: "method_pathname", arg: 1, scope: !32, file: !3, line: 30, type: !35)
!37 = !DILocation(line: 30, column: 41, scope: !32)
!38 = !DILocalVariable(name: "integer_argument", arg: 2, scope: !32, file: !3, line: 30, type: !14)
!39 = !DILocation(line: 30, column: 62, scope: !32)
!40 = !DILocalVariable(name: "arg_list", scope: !32, file: !3, line: 32, type: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !13, line: 947, size: 128, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !41, file: !13, line: 948, baseType: !14, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !41, file: !13, line: 949, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !13, line: 899, size: 192, elements: !47)
!47 = !{!48, !50, !55, !61, !68, !74, !81, !89}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !13, line: 900, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !13, line: 635, baseType: !14)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !46, file: !13, line: 904, baseType: !51, size: 128)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !46, file: !13, line: 901, size: 128, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !13, line: 902, baseType: !49, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !51, file: !13, line: 903, baseType: !6, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !46, file: !13, line: 910, baseType: !56, size: 128)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !46, file: !13, line: 906, size: 128, elements: !57)
!57 = !{!58, !59, !60}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !13, line: 907, baseType: !49, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !56, file: !13, line: 908, baseType: !14, size: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !56, file: !13, line: 909, baseType: !35, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !46, file: !13, line: 916, baseType: !62, size: 128)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !46, file: !13, line: 912, size: 128, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !13, line: 913, baseType: !49, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !62, file: !13, line: 914, baseType: !14, size: 32, offset: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !62, file: !13, line: 915, baseType: !67, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !46, file: !13, line: 922, baseType: !69, size: 128)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !46, file: !13, line: 918, size: 128, elements: !70)
!70 = !{!71, !72, !73}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !13, line: 919, baseType: !49, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !69, file: !13, line: 920, baseType: !14, size: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !69, file: !13, line: 921, baseType: !45, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !46, file: !13, line: 928, baseType: !75, size: 128)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !46, file: !13, line: 924, size: 128, elements: !76)
!76 = !{!77, !78, !79}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !13, line: 925, baseType: !49, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !75, file: !13, line: 926, baseType: !49, size: 32, offset: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !75, file: !13, line: 927, baseType: !80, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !13, line: 424, baseType: !11)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !46, file: !13, line: 935, baseType: !82, size: 192)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !46, file: !13, line: 930, size: 192, elements: !83)
!83 = !{!84, !85, !86, !88}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !13, line: 931, baseType: !49, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !82, file: !13, line: 932, baseType: !14, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !82, file: !13, line: 933, baseType: !87, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !13, line: 128, baseType: !6)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !82, file: !13, line: 934, baseType: !14, size: 32, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !46, file: !13, line: 941, baseType: !90, size: 96)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !46, file: !13, line: 937, size: 96, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !13, line: 938, baseType: !49, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !90, file: !13, line: 939, baseType: !14, size: 32, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !90, file: !13, line: 940, baseType: !14, size: 32, offset: 64)
!95 = !DILocation(line: 32, column: 26, scope: !32)
!96 = !DILocalVariable(name: "arg", scope: !32, file: !3, line: 33, type: !46)
!97 = !DILocation(line: 33, column: 20, scope: !32)
!98 = !DILocalVariable(name: "status", scope: !32, file: !3, line: 34, type: !12)
!99 = !DILocation(line: 34, column: 14, scope: !32)
!100 = !DILocation(line: 40, column: 11, scope: !32)
!101 = !DILocation(line: 40, column: 17, scope: !32)
!102 = !DILocation(line: 41, column: 11, scope: !32)
!103 = !DILocation(line: 41, column: 19, scope: !32)
!104 = !DILocation(line: 42, column: 6, scope: !32)
!105 = !DILocation(line: 42, column: 11, scope: !32)
!106 = !DILocation(line: 43, column: 27, scope: !32)
!107 = !DILocation(line: 43, column: 22, scope: !32)
!108 = !DILocation(line: 43, column: 6, scope: !32)
!109 = !DILocation(line: 43, column: 14, scope: !32)
!110 = !DILocation(line: 43, column: 20, scope: !32)
!111 = !DILocation(line: 45, column: 38, scope: !32)
!112 = !DILocation(line: 45, column: 11, scope: !32)
!113 = !DILocation(line: 45, column: 9, scope: !32)
!114 = !DILocation(line: 46, column: 6, scope: !115)
!115 = distinct !DILexicalBlock(scope: !32, file: !3, line: 46, column: 6)
!116 = !DILocation(line: 46, column: 27, scope: !115)
!117 = !DILocation(line: 46, column: 30, scope: !115)
!118 = !DILocation(line: 46, column: 37, scope: !115)
!119 = !DILocation(line: 46, column: 6, scope: !32)
!120 = !DILocation(line: 47, column: 3, scope: !121)
!121 = distinct !DILexicalBlock(scope: !115, file: !3, line: 46, column: 54)
!122 = !DILocation(line: 49, column: 2, scope: !121)
!123 = !DILocation(line: 51, column: 2, scope: !32)
!124 = distinct !DISubprogram(name: "acpi_hw_extended_sleep", scope: !3, file: !3, line: 68, type: !125, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!125 = !DISubroutineType(types: !126)
!126 = !{!12, !17}
!127 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !124, file: !3, line: 68, type: !17)
!128 = !DILocation(line: 68, column: 39, scope: !124)
!129 = !DILocalVariable(name: "status", scope: !124, file: !3, line: 70, type: !12)
!130 = !DILocation(line: 70, column: 14, scope: !124)
!131 = !DILocalVariable(name: "sleep_control", scope: !124, file: !3, line: 71, type: !17)
!132 = !DILocation(line: 71, column: 5, scope: !124)
!133 = !DILocalVariable(name: "sleep_status", scope: !124, file: !3, line: 72, type: !6)
!134 = !DILocation(line: 72, column: 6, scope: !124)
!135 = !DILocation(line: 78, column: 35, scope: !136)
!136 = distinct !DILexicalBlock(scope: !124, file: !3, line: 78, column: 6)
!137 = !DILocation(line: 78, column: 7, scope: !136)
!138 = !DILocation(line: 78, column: 43, scope: !136)
!139 = !DILocation(line: 79, column: 34, scope: !136)
!140 = !DILocation(line: 79, column: 7, scope: !136)
!141 = !DILocation(line: 78, column: 6, scope: !124)
!142 = !DILocation(line: 80, column: 3, scope: !143)
!143 = distinct !DILexicalBlock(scope: !136, file: !3, line: 79, column: 43)
!144 = !DILocation(line: 85, column: 11, scope: !124)
!145 = !DILocation(line: 85, column: 9, scope: !124)
!146 = !DILocation(line: 87, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !124, file: !3, line: 87, column: 6)
!148 = !DILocation(line: 87, column: 6, scope: !124)
!149 = !DILocation(line: 88, column: 3, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !3, line: 87, column: 28)
!151 = !DILocation(line: 91, column: 36, scope: !124)
!152 = !DILocation(line: 102, column: 20, scope: !124)
!153 = !DILocation(line: 102, column: 42, scope: !124)
!154 = !DILocation(line: 102, column: 73, scope: !124)
!155 = !DILocation(line: 103, column: 29, scope: !124)
!156 = !DILocation(line: 102, column: 18, scope: !124)
!157 = !DILocation(line: 102, column: 16, scope: !124)
!158 = !DILocation(line: 107, column: 2, scope: !124)
!159 = !DILocation(line: 109, column: 31, scope: !124)
!160 = !DILocation(line: 109, column: 44, scope: !124)
!161 = !DILocation(line: 109, column: 11, scope: !124)
!162 = !DILocation(line: 109, column: 9, scope: !124)
!163 = !DILocation(line: 110, column: 6, scope: !164)
!164 = distinct !DILexicalBlock(scope: !124, file: !3, line: 110, column: 6)
!165 = !DILocation(line: 110, column: 13, scope: !164)
!166 = !DILocation(line: 110, column: 6, scope: !124)
!167 = !DILocation(line: 111, column: 3, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !3, line: 110, column: 35)
!169 = !DILocation(line: 113, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !124, file: !3, line: 113, column: 6)
!171 = !DILocation(line: 113, column: 6, scope: !124)
!172 = !DILocation(line: 114, column: 3, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !3, line: 113, column: 28)
!174 = !DILocation(line: 117, column: 27, scope: !124)
!175 = !DILocation(line: 117, column: 22, scope: !124)
!176 = !DILocation(line: 117, column: 11, scope: !124)
!177 = !DILocation(line: 117, column: 9, scope: !124)
!178 = !DILocation(line: 118, column: 6, scope: !179)
!179 = distinct !DILexicalBlock(scope: !124, file: !3, line: 118, column: 6)
!180 = !DILocation(line: 118, column: 6, scope: !124)
!181 = !DILocation(line: 119, column: 3, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !3, line: 118, column: 28)
!183 = !DILocation(line: 124, column: 2, scope: !124)
!184 = !DILocation(line: 125, column: 12, scope: !185)
!185 = distinct !DILexicalBlock(scope: !124, file: !3, line: 124, column: 5)
!186 = !DILocation(line: 125, column: 10, scope: !185)
!187 = !DILocation(line: 126, column: 7, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 126, column: 7)
!189 = !DILocation(line: 126, column: 7, scope: !185)
!190 = !DILocation(line: 127, column: 4, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 126, column: 29)
!192 = !DILocation(line: 130, column: 2, scope: !185)
!193 = !DILocation(line: 130, column: 18, scope: !124)
!194 = !DILocation(line: 130, column: 14, scope: !124)
!195 = !DILocation(line: 130, column: 13, scope: !124)
!196 = !DILocation(line: 130, column: 32, scope: !124)
!197 = !DILocation(line: 130, column: 11, scope: !124)
!198 = distinct !{!198, !183, !199}
!199 = !DILocation(line: 130, column: 53, scope: !124)
!200 = !DILocation(line: 132, column: 2, scope: !124)
!201 = !DILocation(line: 133, column: 1, scope: !124)
!202 = distinct !DISubprogram(name: "wbinvd", scope: !203, file: !203, line: 158, type: !204, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!203 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!204 = !DISubroutineType(types: !205)
!205 = !{null}
!206 = !DILocalVariable(name: "__edi", scope: !207, file: !203, line: 160, type: !208)
!207 = distinct !DILexicalBlock(scope: !202, file: !203, line: 160, column: 2)
!208 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!209 = !DILocation(line: 160, column: 2, scope: !207)
!210 = !DILocalVariable(name: "__esi", scope: !207, file: !203, line: 160, type: !208)
!211 = !DILocalVariable(name: "__edx", scope: !207, file: !203, line: 160, type: !208)
!212 = !DILocalVariable(name: "__ecx", scope: !207, file: !203, line: 160, type: !208)
!213 = !DILocalVariable(name: "__eax", scope: !207, file: !203, line: 160, type: !208)
!214 = !{i32 -2145992408, i32 -2145991526, i32 -2145991292, i32 -2145991241, i32 -2145991213, i32 -2145991188, i32 -2145991504, i32 -2145991491, i32 -2145991053, i32 -2145990934, i32 -2145991399, i32 -2145991372, i32 -2145991344, i32 -2145991314}
!215 = !DILocation(line: 161, column: 1, scope: !202)
!216 = distinct !DISubprogram(name: "acpi_hw_extended_wake_prep", scope: !3, file: !3, line: 148, type: !125, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!217 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !216, file: !3, line: 148, type: !17)
!218 = !DILocation(line: 148, column: 43, scope: !216)
!219 = !DILocalVariable(name: "status", scope: !216, file: !3, line: 150, type: !12)
!220 = !DILocation(line: 150, column: 14, scope: !216)
!221 = !DILocalVariable(name: "sleep_type_value", scope: !216, file: !3, line: 151, type: !17)
!222 = !DILocation(line: 151, column: 5, scope: !216)
!223 = !DILocation(line: 155, column: 11, scope: !216)
!224 = !DILocation(line: 155, column: 9, scope: !216)
!225 = !DILocation(line: 158, column: 6, scope: !226)
!226 = distinct !DILexicalBlock(scope: !216, file: !3, line: 158, column: 6)
!227 = !DILocation(line: 158, column: 6, scope: !216)
!228 = !DILocation(line: 160, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 158, column: 28)
!230 = !DILocation(line: 160, column: 31, scope: !229)
!231 = !DILocation(line: 160, column: 62, scope: !229)
!232 = !DILocation(line: 160, column: 7, scope: !229)
!233 = !DILocation(line: 159, column: 20, scope: !229)
!234 = !DILocation(line: 163, column: 26, scope: !229)
!235 = !DILocation(line: 163, column: 43, scope: !229)
!236 = !DILocation(line: 163, column: 20, scope: !229)
!237 = !DILocation(line: 163, column: 9, scope: !229)
!238 = !DILocation(line: 165, column: 2, scope: !229)
!239 = !DILocation(line: 167, column: 2, scope: !216)
!240 = distinct !DISubprogram(name: "acpi_hw_extended_wake", scope: !3, file: !3, line: 183, type: !125, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!241 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !240, file: !3, line: 183, type: !17)
!242 = !DILocation(line: 183, column: 38, scope: !240)
!243 = !DILocation(line: 189, column: 24, scope: !240)
!244 = !DILocation(line: 193, column: 2, scope: !240)
!245 = !DILocation(line: 194, column: 53, scope: !240)
!246 = !DILocation(line: 194, column: 2, scope: !240)
!247 = !DILocation(line: 201, column: 8, scope: !240)
!248 = !DILocation(line: 202, column: 36, scope: !240)
!249 = !DILocation(line: 204, column: 2, scope: !240)
!250 = !DILocation(line: 205, column: 2, scope: !240)
