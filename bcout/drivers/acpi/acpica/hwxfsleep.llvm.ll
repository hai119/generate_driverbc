; ModuleID = '../bcout/drivers/acpi/acpica/hwxfsleep.llvm.bc'
source_filename = "drivers/acpi/acpica/hwxfsleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_facs = type { [4 x i8], i32, i32, i32, i32, i32, i64, i8, [3 x i8], i32, [24 x i8] }
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

@acpi_gbl_FACS = external dso_local global %struct.acpi_table_facs*, align 8
@acpi_gbl_system_awake_and_running = external dso_local global i8, align 1
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_gbl_sleep_type_a = external dso_local global i8, align 1
@acpi_gbl_sleep_type_b = external dso_local global i8, align 1
@.str = private unnamed_addr constant [6 x i8] c"\\_PTS\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\\_SI._SST\00", align 1
@_acpi_module_name = internal constant [10 x i8] c"hwxfsleep\00", align 1, !dbg !0
@.str.2 = private unnamed_addr constant [41 x i8] c"Sleep values out of range: A=0x%X B=0x%X\00", align 1
@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_set_firmware_waking_vector(i64 %physical_address, i64 %physical_address64) #0 !dbg !26 {
entry:
  %physical_address.addr = alloca i64, align 8
  %physical_address64.addr = alloca i64, align 8
  store i64 %physical_address, i64* %physical_address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %physical_address.addr, metadata !33, metadata !DIExpression()), !dbg !34
  store i64 %physical_address64, i64* %physical_address64.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %physical_address64.addr, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = load %struct.acpi_table_facs*, %struct.acpi_table_facs** @acpi_gbl_FACS, align 8, !dbg !37
  %tobool = icmp ne %struct.acpi_table_facs* %0, null, !dbg !37
  br i1 %tobool, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_table_facs*, %struct.acpi_table_facs** @acpi_gbl_FACS, align 8, !dbg !40
  %2 = load i64, i64* %physical_address.addr, align 8, !dbg !42
  %3 = load i64, i64* %physical_address64.addr, align 8, !dbg !43
  %call = call i32 @acpi_hw_set_firmware_waking_vector(%struct.acpi_table_facs* %1, i64 %2, i64 %3) #5, !dbg !44
  br label %if.end, !dbg !45

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !46
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_hw_set_firmware_waking_vector(%struct.acpi_table_facs* %facs, i64 %physical_address, i64 %physical_address64) #0 !dbg !47 {
entry:
  %facs.addr = alloca %struct.acpi_table_facs*, align 8
  %physical_address.addr = alloca i64, align 8
  %physical_address64.addr = alloca i64, align 8
  store %struct.acpi_table_facs* %facs, %struct.acpi_table_facs** %facs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_facs** %facs.addr, metadata !77, metadata !DIExpression()), !dbg !78
  store i64 %physical_address, i64* %physical_address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %physical_address.addr, metadata !79, metadata !DIExpression()), !dbg !80
  store i64 %physical_address64, i64* %physical_address64.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %physical_address64.addr, metadata !81, metadata !DIExpression()), !dbg !82
  %0 = load i64, i64* %physical_address.addr, align 8, !dbg !83
  %conv = trunc i64 %0 to i32, !dbg !84
  %1 = load %struct.acpi_table_facs*, %struct.acpi_table_facs** %facs.addr, align 8, !dbg !85
  %firmware_waking_vector = getelementptr inbounds %struct.acpi_table_facs, %struct.acpi_table_facs* %1, i32 0, i32 3, !dbg !86
  store i32 %conv, i32* %firmware_waking_vector, align 1, !dbg !87
  %2 = load %struct.acpi_table_facs*, %struct.acpi_table_facs** %facs.addr, align 8, !dbg !88
  %length = getelementptr inbounds %struct.acpi_table_facs, %struct.acpi_table_facs* %2, i32 0, i32 1, !dbg !90
  %3 = load i32, i32* %length, align 1, !dbg !90
  %cmp = icmp ugt i32 %3, 32, !dbg !91
  br i1 %cmp, label %if.then, label %if.end7, !dbg !92

if.then:                                          ; preds = %entry
  %4 = load %struct.acpi_table_facs*, %struct.acpi_table_facs** %facs.addr, align 8, !dbg !93
  %version = getelementptr inbounds %struct.acpi_table_facs, %struct.acpi_table_facs* %4, i32 0, i32 7, !dbg !96
  %5 = load i8, i8* %version, align 1, !dbg !96
  %conv2 = zext i8 %5 to i32, !dbg !93
  %cmp3 = icmp sge i32 %conv2, 1, !dbg !97
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !98

if.then5:                                         ; preds = %if.then
  %6 = load i64, i64* %physical_address64.addr, align 8, !dbg !99
  %7 = load %struct.acpi_table_facs*, %struct.acpi_table_facs** %facs.addr, align 8, !dbg !101
  %xfirmware_waking_vector = getelementptr inbounds %struct.acpi_table_facs, %struct.acpi_table_facs* %7, i32 0, i32 6, !dbg !102
  store i64 %6, i64* %xfirmware_waking_vector, align 1, !dbg !103
  br label %if.end, !dbg !104

if.else:                                          ; preds = %if.then
  %8 = load %struct.acpi_table_facs*, %struct.acpi_table_facs** %facs.addr, align 8, !dbg !105
  %xfirmware_waking_vector6 = getelementptr inbounds %struct.acpi_table_facs, %struct.acpi_table_facs* %8, i32 0, i32 6, !dbg !107
  store i64 0, i64* %xfirmware_waking_vector6, align 1, !dbg !108
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end7, !dbg !109

if.end7:                                          ; preds = %if.end, %entry
  ret i32 0, !dbg !110
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_enter_sleep_state_s4bios() #0 !dbg !111 {
entry:
  %retval = alloca i32, align 4
  %in_value = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %in_value, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %status, metadata !116, metadata !DIExpression()), !dbg !117
  %call = call i32 @acpi_write_bit_register(i32 6, i32 1) #5, !dbg !118
  store i32 %call, i32* %status, align 4, !dbg !119
  %0 = load i32, i32* %status, align 4, !dbg !120
  %tobool = icmp ne i32 %0, 0, !dbg !120
  br i1 %tobool, label %if.then, label %if.end, !dbg !122

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !123
  store i32 %1, i32* %retval, align 4, !dbg !123
  br label %return, !dbg !123

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_hw_clear_acpi_status() #5, !dbg !125
  store i32 %call1, i32* %status, align 4, !dbg !126
  %2 = load i32, i32* %status, align 4, !dbg !127
  %tobool2 = icmp ne i32 %2, 0, !dbg !127
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !129

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %status, align 4, !dbg !130
  store i32 %3, i32* %retval, align 4, !dbg !130
  br label %return, !dbg !130

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @acpi_hw_disable_all_gpes() #5, !dbg !132
  store i32 %call5, i32* %status, align 4, !dbg !133
  %4 = load i32, i32* %status, align 4, !dbg !134
  %tobool6 = icmp ne i32 %4, 0, !dbg !134
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !136

if.then7:                                         ; preds = %if.end4
  %5 = load i32, i32* %status, align 4, !dbg !137
  store i32 %5, i32* %retval, align 4, !dbg !137
  br label %return, !dbg !137

if.end8:                                          ; preds = %if.end4
  store i8 0, i8* @acpi_gbl_system_awake_and_running, align 1, !dbg !139
  %call9 = call i32 @acpi_hw_enable_all_wakeup_gpes() #5, !dbg !140
  store i32 %call9, i32* %status, align 4, !dbg !141
  %6 = load i32, i32* %status, align 4, !dbg !142
  %tobool10 = icmp ne i32 %6, 0, !dbg !142
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !144

if.then11:                                        ; preds = %if.end8
  %7 = load i32, i32* %status, align 4, !dbg !145
  store i32 %7, i32* %retval, align 4, !dbg !145
  br label %return, !dbg !145

if.end12:                                         ; preds = %if.end8
  call void @wbinvd() #5, !dbg !147
  %8 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !148
  %conv = zext i32 %8 to i64, !dbg !149
  %9 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 9), align 1, !dbg !150
  %conv13 = zext i8 %9 to i32, !dbg !151
  %call14 = call i32 @acpi_hw_write_port(i64 %conv, i32 %conv13, i32 8) #5, !dbg !152
  store i32 %call14, i32* %status, align 4, !dbg !153
  %10 = load i32, i32* %status, align 4, !dbg !154
  %tobool15 = icmp ne i32 %10, 0, !dbg !154
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !156

if.then16:                                        ; preds = %if.end12
  %11 = load i32, i32* %status, align 4, !dbg !157
  store i32 %11, i32* %retval, align 4, !dbg !157
  br label %return, !dbg !157

if.end17:                                         ; preds = %if.end12
  br label %do.body, !dbg !159

do.body:                                          ; preds = %do.cond, %if.end17
  call void @acpi_os_stall(i32 1000) #5, !dbg !160
  %call18 = call i32 @acpi_read_bit_register(i32 6, i32* %in_value) #5, !dbg !162
  store i32 %call18, i32* %status, align 4, !dbg !163
  %12 = load i32, i32* %status, align 4, !dbg !164
  %tobool19 = icmp ne i32 %12, 0, !dbg !164
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !166

if.then20:                                        ; preds = %do.body
  %13 = load i32, i32* %status, align 4, !dbg !167
  store i32 %13, i32* %retval, align 4, !dbg !167
  br label %return, !dbg !167

if.end21:                                         ; preds = %do.body
  br label %do.cond, !dbg !169

do.cond:                                          ; preds = %if.end21
  %14 = load i32, i32* %in_value, align 4, !dbg !170
  %tobool22 = icmp ne i32 %14, 0, !dbg !171
  %lnot = xor i1 %tobool22, true, !dbg !171
  br i1 %lnot, label %do.body, label %do.end, !dbg !169, !llvm.loop !172

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, align 4, !dbg !174
  br label %return, !dbg !174

return:                                           ; preds = %do.end, %if.then20, %if.then16, %if.then11, %if.then7, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !175
  ret i32 %15, !dbg !175
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_write_bit_register(i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_clear_acpi_status() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_disable_all_gpes() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_enable_all_wakeup_gpes() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wbinvd() #0 !dbg !176 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !180, metadata !DIExpression()), !dbg !183
  %0 = load i64, i64* %__edi, align 8, !dbg !183
  store i64 %0, i64* %__edi, align 8, !dbg !183
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !184, metadata !DIExpression()), !dbg !183
  %1 = load i64, i64* %__esi, align 8, !dbg !183
  store i64 %1, i64* %__esi, align 8, !dbg !183
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !185, metadata !DIExpression()), !dbg !183
  %2 = load i64, i64* %__edx, align 8, !dbg !183
  store i64 %2, i64* %__edx, align 8, !dbg !183
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !186, metadata !DIExpression()), !dbg !183
  %3 = load i64, i64* %__ecx, align 8, !dbg !183
  store i64 %3, i64* %__ecx, align 8, !dbg !183
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !187, metadata !DIExpression()), !dbg !183
  %4 = load i64, i64* %__eax, align 8, !dbg !183
  store i64 %4, i64* %__eax, align 8, !dbg !183
  %5 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 21), align 8, !dbg !183
  %6 = call i64 @llvm.read_register.i64(metadata !20), !dbg !183
  %7 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 24, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 21), i32 511, i64 %6) #4, !dbg !183, !srcloc !188
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %7, 0, !dbg !183
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64 } %7, 1, !dbg !183
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %7, 2, !dbg !183
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %7, 3, !dbg !183
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %7, 4, !dbg !183
  store i64 %asmresult, i64* %__edi, align 8, !dbg !183
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !183
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !183
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !183
  call void @llvm.write_register.i64(metadata !20, i64 %asmresult4), !dbg !183
  ret void, !dbg !189
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_write_port(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_stall(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_read_bit_register(i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_enter_sleep_state_prep(i8 zeroext %sleep_state) #0 !dbg !190 {
entry:
  %retval = alloca i32, align 4
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %arg_list = alloca %struct.acpi_object_list, align 8
  %arg = alloca %union.acpi_object, align 8
  %sst_value = alloca i32, align 4
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i32* %status, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list* %arg_list, metadata !197, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata %union.acpi_object* %arg, metadata !254, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata i32* %sst_value, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = load i8, i8* %sleep_state.addr, align 1, !dbg !258
  %call = call i32 @acpi_get_sleep_type_data(i8 zeroext %0, i8* @acpi_gbl_sleep_type_a, i8* @acpi_gbl_sleep_type_b) #5, !dbg !259
  store i32 %call, i32* %status, align 4, !dbg !260
  %1 = load i32, i32* %status, align 4, !dbg !261
  %tobool = icmp ne i32 %1, 0, !dbg !261
  br i1 %tobool, label %if.then, label %if.end, !dbg !263

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !264
  store i32 %2, i32* %retval, align 4, !dbg !264
  br label %return, !dbg !264

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %arg_list, i32 0, i32 0, !dbg !266
  store i32 1, i32* %count, align 8, !dbg !267
  %pointer = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %arg_list, i32 0, i32 1, !dbg !268
  store %union.acpi_object* %arg, %union.acpi_object** %pointer, align 8, !dbg !269
  %type = bitcast %union.acpi_object* %arg to i32*, !dbg !270
  store i32 1, i32* %type, align 8, !dbg !271
  %3 = load i8, i8* %sleep_state.addr, align 1, !dbg !272
  %conv = zext i8 %3 to i64, !dbg !272
  %integer = bitcast %union.acpi_object* %arg to %struct.anon*, !dbg !273
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !274
  store i64 %conv, i64* %value, align 8, !dbg !275
  %call1 = call i32 @acpi_evaluate_object(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %arg_list, %struct.acpi_buffer* null) #5, !dbg !276
  store i32 %call1, i32* %status, align 4, !dbg !277
  %4 = load i32, i32* %status, align 4, !dbg !278
  %tobool2 = icmp ne i32 %4, 0, !dbg !278
  br i1 %tobool2, label %land.lhs.true, label %if.end5, !dbg !280

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %status, align 4, !dbg !281
  %cmp = icmp ne i32 %5, 5, !dbg !282
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !283

if.then4:                                         ; preds = %land.lhs.true
  %6 = load i32, i32* %status, align 4, !dbg !284
  store i32 %6, i32* %retval, align 4, !dbg !284
  br label %return, !dbg !284

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %7 = load i8, i8* %sleep_state.addr, align 1, !dbg !286
  %conv6 = zext i8 %7 to i32, !dbg !286
  switch i32 %conv6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb7
    i32 3, label %sw.bb7
    i32 4, label %sw.bb8
  ], !dbg !287

sw.bb:                                            ; preds = %if.end5
  store i32 1, i32* %sst_value, align 4, !dbg !288
  br label %sw.epilog, !dbg !290

sw.bb7:                                           ; preds = %if.end5, %if.end5, %if.end5
  store i32 3, i32* %sst_value, align 4, !dbg !291
  br label %sw.epilog, !dbg !292

sw.bb8:                                           ; preds = %if.end5
  store i32 4, i32* %sst_value, align 4, !dbg !293
  br label %sw.epilog, !dbg !294

sw.default:                                       ; preds = %if.end5
  store i32 0, i32* %sst_value, align 4, !dbg !295
  br label %sw.epilog, !dbg !296

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb7, %sw.bb
  %8 = load i32, i32* %sst_value, align 4, !dbg !297
  call void @acpi_hw_execute_sleep_method(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %8) #5, !dbg !298
  store i32 0, i32* %retval, align 4, !dbg !299
  br label %return, !dbg !299

return:                                           ; preds = %sw.epilog, %if.then4, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !300
  ret i32 %9, !dbg !300
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_sleep_type_data(i8 zeroext, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_hw_execute_sleep_method(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_enter_sleep_state(i8 zeroext %sleep_state) #0 !dbg !301 {
entry:
  %retval = alloca i32, align 4
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata i32* %status, metadata !304, metadata !DIExpression()), !dbg !305
  %0 = load i8, i8* @acpi_gbl_sleep_type_a, align 1, !dbg !306
  %conv = zext i8 %0 to i32, !dbg !306
  %cmp = icmp sgt i32 %conv, 7, !dbg !308
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !309

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* @acpi_gbl_sleep_type_b, align 1, !dbg !310
  %conv2 = zext i8 %1 to i32, !dbg !310
  %cmp3 = icmp sgt i32 %conv2, 7, !dbg !311
  br i1 %cmp3, label %if.then, label %if.end, !dbg !312

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8, i8* @acpi_gbl_sleep_type_a, align 1, !dbg !313
  %conv5 = zext i8 %2 to i32, !dbg !313
  %3 = load i8, i8* @acpi_gbl_sleep_type_b, align 1, !dbg !313
  %conv6 = zext i8 %3 to i32, !dbg !313
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 289, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %conv5, i32 %conv6) #5, !dbg !313
  store i32 12292, i32* %retval, align 4, !dbg !315
  br label %return, !dbg !315

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !316
  %tobool = icmp ne i8 %4, 0, !dbg !316
  br i1 %tobool, label %if.else, label %if.then7, !dbg !318

if.then7:                                         ; preds = %if.end
  %5 = load i8, i8* %sleep_state.addr, align 1, !dbg !319
  %call = call i32 @acpi_hw_legacy_sleep(i8 zeroext %5) #5, !dbg !320
  store i32 %call, i32* %status, align 4, !dbg !321
  br label %if.end9, !dbg !322

if.else:                                          ; preds = %if.end
  %6 = load i8, i8* %sleep_state.addr, align 1, !dbg !323
  %call8 = call i32 @acpi_hw_extended_sleep(i8 zeroext %6) #5, !dbg !324
  store i32 %call8, i32* %status, align 4, !dbg !325
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %7 = load i32, i32* %status, align 4, !dbg !326
  store i32 %7, i32* %retval, align 4, !dbg !326
  br label %return, !dbg !326

return:                                           ; preds = %if.end9, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !327
  ret i32 %8, !dbg !327
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_legacy_sleep(i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_extended_sleep(i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_leave_sleep_state_prep(i8 zeroext %sleep_state) #0 !dbg !328 {
entry:
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !329, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.declare(metadata i32* %status, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !333
  %tobool = icmp ne i8 %0, 0, !dbg !333
  br i1 %tobool, label %if.else, label %if.then, !dbg !335

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %sleep_state.addr, align 1, !dbg !336
  %call = call i32 @acpi_hw_legacy_wake_prep(i8 zeroext %1) #5, !dbg !337
  store i32 %call, i32* %status, align 4, !dbg !338
  br label %if.end, !dbg !339

if.else:                                          ; preds = %entry
  %2 = load i8, i8* %sleep_state.addr, align 1, !dbg !340
  %call1 = call i32 @acpi_hw_extended_wake_prep(i8 zeroext %2) #5, !dbg !341
  store i32 %call1, i32* %status, align 4, !dbg !342
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %status, align 4, !dbg !343
  ret i32 %3, !dbg !343
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_legacy_wake_prep(i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_extended_wake_prep(i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_leave_sleep_state(i8 zeroext %sleep_state) #0 !dbg !344 {
entry:
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata i32* %status, metadata !347, metadata !DIExpression()), !dbg !348
  %0 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !349
  %tobool = icmp ne i8 %0, 0, !dbg !349
  br i1 %tobool, label %if.else, label %if.then, !dbg !351

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %sleep_state.addr, align 1, !dbg !352
  %call = call i32 @acpi_hw_legacy_wake(i8 zeroext %1) #5, !dbg !353
  store i32 %call, i32* %status, align 4, !dbg !354
  br label %if.end, !dbg !355

if.else:                                          ; preds = %entry
  %2 = load i8, i8* %sleep_state.addr, align 1, !dbg !356
  %call1 = call i32 @acpi_hw_extended_wake(i8 zeroext %2) #5, !dbg !357
  store i32 %call1, i32* %status, align 4, !dbg !358
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %status, align 4, !dbg !359
  ret i32 %3, !dbg !359
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_legacy_wake(i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_extended_wake(i8 zeroext) #2

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
!llvm.named.register.rsp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/hwxfsleep.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !8, !13}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !{!0}
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 80, elements: !18)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 10)
!20 = !{!"rsp"}
!21 = !{i32 7, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"Code Model", i32 2}
!25 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!26 = distinct !DISubprogram(name: "acpi_set_firmware_waking_vector", scope: !3, file: !3, line: 101, type: !27, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!27 = !DISubroutineType(types: !28)
!28 = !{!6, !29, !29}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !32)
!32 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocalVariable(name: "physical_address", arg: 1, scope: !26, file: !3, line: 101, type: !29)
!34 = !DILocation(line: 101, column: 55, scope: !26)
!35 = !DILocalVariable(name: "physical_address64", arg: 2, scope: !26, file: !3, line: 102, type: !29)
!36 = !DILocation(line: 102, column: 27, scope: !26)
!37 = !DILocation(line: 107, column: 6, scope: !38)
!38 = distinct !DILexicalBlock(scope: !26, file: !3, line: 107, column: 6)
!39 = !DILocation(line: 107, column: 6, scope: !26)
!40 = !DILocation(line: 108, column: 44, scope: !41)
!41 = distinct !DILexicalBlock(scope: !38, file: !3, line: 107, column: 21)
!42 = !DILocation(line: 109, column: 9, scope: !41)
!43 = !DILocation(line: 110, column: 9, scope: !41)
!44 = !DILocation(line: 108, column: 9, scope: !41)
!45 = !DILocation(line: 111, column: 2, scope: !41)
!46 = !DILocation(line: 113, column: 2, scope: !26)
!47 = distinct !DISubprogram(name: "acpi_hw_set_firmware_waking_vector", scope: !3, file: !3, line: 50, type: !48, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!48 = !DISubroutineType(types: !49)
!49 = !{!6, !50, !29, !29}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_facs", file: !52, line: 162, size: 512, elements: !53)
!52 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!53 = !{!54, !58, !59, !60, !61, !62, !63, !64, !68, !72, !73}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !51, file: !52, line: 163, baseType: !55, size: 32)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 4)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !51, file: !52, line: 164, baseType: !8, size: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_signature", scope: !51, file: !52, line: 165, baseType: !8, size: 32, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_waking_vector", scope: !51, file: !52, line: 166, baseType: !8, size: 32, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "global_lock", scope: !51, file: !52, line: 167, baseType: !8, size: 32, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !52, line: 168, baseType: !8, size: 32, offset: 160)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "xfirmware_waking_vector", scope: !51, file: !52, line: 169, baseType: !30, size: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !51, file: !52, line: 170, baseType: !65, size: 8, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !67)
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !51, file: !52, line: 171, baseType: !69, size: 24, offset: 264)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 24, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ospm_flags", scope: !51, file: !52, line: 172, baseType: !8, size: 32, offset: 288)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !51, file: !52, line: 173, baseType: !74, size: 192, offset: 320)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 192, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 24)
!77 = !DILocalVariable(name: "facs", arg: 1, scope: !47, file: !3, line: 50, type: !50)
!78 = !DILocation(line: 50, column: 60, scope: !47)
!79 = !DILocalVariable(name: "physical_address", arg: 2, scope: !47, file: !3, line: 51, type: !29)
!80 = !DILocation(line: 51, column: 30, scope: !47)
!81 = !DILocalVariable(name: "physical_address64", arg: 3, scope: !47, file: !3, line: 52, type: !29)
!82 = !DILocation(line: 52, column: 30, scope: !47)
!83 = !DILocation(line: 67, column: 38, scope: !47)
!84 = !DILocation(line: 67, column: 33, scope: !47)
!85 = !DILocation(line: 67, column: 2, scope: !47)
!86 = !DILocation(line: 67, column: 8, scope: !47)
!87 = !DILocation(line: 67, column: 31, scope: !47)
!88 = !DILocation(line: 69, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !47, file: !3, line: 69, column: 6)
!90 = !DILocation(line: 69, column: 12, scope: !89)
!91 = !DILocation(line: 69, column: 19, scope: !89)
!92 = !DILocation(line: 69, column: 6, scope: !47)
!93 = !DILocation(line: 70, column: 7, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !3, line: 70, column: 7)
!95 = distinct !DILexicalBlock(scope: !89, file: !3, line: 69, column: 25)
!96 = !DILocation(line: 70, column: 13, scope: !94)
!97 = !DILocation(line: 70, column: 21, scope: !94)
!98 = !DILocation(line: 70, column: 7, scope: !95)
!99 = !DILocation(line: 74, column: 36, scope: !100)
!100 = distinct !DILexicalBlock(scope: !94, file: !3, line: 70, column: 27)
!101 = !DILocation(line: 74, column: 4, scope: !100)
!102 = !DILocation(line: 74, column: 10, scope: !100)
!103 = !DILocation(line: 74, column: 34, scope: !100)
!104 = !DILocation(line: 75, column: 3, scope: !100)
!105 = !DILocation(line: 78, column: 4, scope: !106)
!106 = distinct !DILexicalBlock(scope: !94, file: !3, line: 75, column: 10)
!107 = !DILocation(line: 78, column: 10, scope: !106)
!108 = !DILocation(line: 78, column: 34, scope: !106)
!109 = !DILocation(line: 80, column: 2, scope: !95)
!110 = !DILocation(line: 82, column: 2, scope: !47)
!111 = distinct !DISubprogram(name: "acpi_enter_sleep_state_s4bios", scope: !3, file: !3, line: 130, type: !112, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!112 = !DISubroutineType(types: !113)
!113 = !{!6}
!114 = !DILocalVariable(name: "in_value", scope: !111, file: !3, line: 132, type: !8)
!115 = !DILocation(line: 132, column: 6, scope: !111)
!116 = !DILocalVariable(name: "status", scope: !111, file: !3, line: 133, type: !6)
!117 = !DILocation(line: 133, column: 14, scope: !111)
!118 = !DILocation(line: 140, column: 6, scope: !111)
!119 = !DILocation(line: 139, column: 9, scope: !111)
!120 = !DILocation(line: 141, column: 6, scope: !121)
!121 = distinct !DILexicalBlock(scope: !111, file: !3, line: 141, column: 6)
!122 = !DILocation(line: 141, column: 6, scope: !111)
!123 = !DILocation(line: 142, column: 3, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !3, line: 141, column: 28)
!125 = !DILocation(line: 145, column: 11, scope: !111)
!126 = !DILocation(line: 145, column: 9, scope: !111)
!127 = !DILocation(line: 146, column: 6, scope: !128)
!128 = distinct !DILexicalBlock(scope: !111, file: !3, line: 146, column: 6)
!129 = !DILocation(line: 146, column: 6, scope: !111)
!130 = !DILocation(line: 147, column: 3, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !3, line: 146, column: 28)
!132 = !DILocation(line: 154, column: 11, scope: !111)
!133 = !DILocation(line: 154, column: 9, scope: !111)
!134 = !DILocation(line: 155, column: 6, scope: !135)
!135 = distinct !DILexicalBlock(scope: !111, file: !3, line: 155, column: 6)
!136 = !DILocation(line: 155, column: 6, scope: !111)
!137 = !DILocation(line: 156, column: 3, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !3, line: 155, column: 28)
!139 = !DILocation(line: 158, column: 36, scope: !111)
!140 = !DILocation(line: 160, column: 11, scope: !111)
!141 = !DILocation(line: 160, column: 9, scope: !111)
!142 = !DILocation(line: 161, column: 6, scope: !143)
!143 = distinct !DILexicalBlock(scope: !111, file: !3, line: 161, column: 6)
!144 = !DILocation(line: 161, column: 6, scope: !111)
!145 = !DILocation(line: 162, column: 3, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !3, line: 161, column: 28)
!147 = !DILocation(line: 165, column: 2, scope: !111)
!148 = !DILocation(line: 167, column: 44, scope: !111)
!149 = !DILocation(line: 167, column: 30, scope: !111)
!150 = !DILocation(line: 168, column: 28, scope: !111)
!151 = !DILocation(line: 168, column: 9, scope: !111)
!152 = !DILocation(line: 167, column: 11, scope: !111)
!153 = !DILocation(line: 167, column: 9, scope: !111)
!154 = !DILocation(line: 169, column: 6, scope: !155)
!155 = distinct !DILexicalBlock(scope: !111, file: !3, line: 169, column: 6)
!156 = !DILocation(line: 169, column: 6, scope: !111)
!157 = !DILocation(line: 170, column: 3, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !3, line: 169, column: 28)
!159 = !DILocation(line: 173, column: 2, scope: !111)
!160 = !DILocation(line: 174, column: 3, scope: !161)
!161 = distinct !DILexicalBlock(scope: !111, file: !3, line: 173, column: 5)
!162 = !DILocation(line: 176, column: 7, scope: !161)
!163 = !DILocation(line: 175, column: 10, scope: !161)
!164 = !DILocation(line: 177, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !3, line: 177, column: 7)
!166 = !DILocation(line: 177, column: 7, scope: !161)
!167 = !DILocation(line: 178, column: 4, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !3, line: 177, column: 29)
!169 = !DILocation(line: 181, column: 2, scope: !161)
!170 = !DILocation(line: 181, column: 12, scope: !111)
!171 = !DILocation(line: 181, column: 11, scope: !111)
!172 = distinct !{!172, !159, !173}
!173 = !DILocation(line: 181, column: 20, scope: !111)
!174 = !DILocation(line: 183, column: 2, scope: !111)
!175 = !DILocation(line: 184, column: 1, scope: !111)
!176 = distinct !DISubprogram(name: "wbinvd", scope: !177, file: !177, line: 158, type: !178, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!177 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!178 = !DISubroutineType(types: !179)
!179 = !{null}
!180 = !DILocalVariable(name: "__edi", scope: !181, file: !177, line: 160, type: !182)
!181 = distinct !DILexicalBlock(scope: !176, file: !177, line: 160, column: 2)
!182 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!183 = !DILocation(line: 160, column: 2, scope: !181)
!184 = !DILocalVariable(name: "__esi", scope: !181, file: !177, line: 160, type: !182)
!185 = !DILocalVariable(name: "__edx", scope: !181, file: !177, line: 160, type: !182)
!186 = !DILocalVariable(name: "__ecx", scope: !181, file: !177, line: 160, type: !182)
!187 = !DILocalVariable(name: "__eax", scope: !181, file: !177, line: 160, type: !182)
!188 = !{i32 -2145988405, i32 -2145987523, i32 -2145987289, i32 -2145987238, i32 -2145987210, i32 -2145987185, i32 -2145987501, i32 -2145987488, i32 -2145987050, i32 -2145986931, i32 -2145987396, i32 -2145987369, i32 -2145987341, i32 -2145987311}
!189 = !DILocation(line: 161, column: 1, scope: !176)
!190 = distinct !DISubprogram(name: "acpi_enter_sleep_state_prep", scope: !3, file: !3, line: 204, type: !191, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!191 = !DISubroutineType(types: !192)
!192 = !{!6, !65}
!193 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !190, file: !3, line: 204, type: !65)
!194 = !DILocation(line: 204, column: 44, scope: !190)
!195 = !DILocalVariable(name: "status", scope: !190, file: !3, line: 206, type: !6)
!196 = !DILocation(line: 206, column: 14, scope: !190)
!197 = !DILocalVariable(name: "arg_list", scope: !190, file: !3, line: 207, type: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !7, line: 947, size: 128, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !198, file: !7, line: 948, baseType: !8, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !198, file: !7, line: 949, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !7, line: 899, size: 192, elements: !204)
!204 = !{!205, !207, !212, !219, !226, !232, !239, !247}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !203, file: !7, line: 900, baseType: !206, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !7, line: 635, baseType: !8)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !203, file: !7, line: 904, baseType: !208, size: 128)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !203, file: !7, line: 901, size: 128, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !208, file: !7, line: 902, baseType: !206, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !208, file: !7, line: 903, baseType: !30, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !203, file: !7, line: 910, baseType: !213, size: 128)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !203, file: !7, line: 906, size: 128, elements: !214)
!214 = !{!215, !216, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !213, file: !7, line: 907, baseType: !206, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !213, file: !7, line: 908, baseType: !8, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !213, file: !7, line: 909, baseType: !218, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !203, file: !7, line: 916, baseType: !220, size: 128)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !203, file: !7, line: 912, size: 128, elements: !221)
!221 = !{!222, !223, !224}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !220, file: !7, line: 913, baseType: !206, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !220, file: !7, line: 914, baseType: !8, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !220, file: !7, line: 915, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !203, file: !7, line: 922, baseType: !227, size: 128)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !203, file: !7, line: 918, size: 128, elements: !228)
!228 = !{!229, !230, !231}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !227, file: !7, line: 919, baseType: !206, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !227, file: !7, line: 920, baseType: !8, size: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !227, file: !7, line: 921, baseType: !202, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !203, file: !7, line: 928, baseType: !233, size: 128)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !203, file: !7, line: 924, size: 128, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !233, file: !7, line: 925, baseType: !206, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !233, file: !7, line: 926, baseType: !206, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !233, file: !7, line: 927, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !13)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !203, file: !7, line: 935, baseType: !240, size: 192)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !203, file: !7, line: 930, size: 192, elements: !241)
!241 = !{!242, !243, !244, !246}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !240, file: !7, line: 931, baseType: !206, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !240, file: !7, line: 932, baseType: !8, size: 32, offset: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !240, file: !7, line: 933, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !30)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !240, file: !7, line: 934, baseType: !8, size: 32, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !203, file: !7, line: 941, baseType: !248, size: 96)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !203, file: !7, line: 937, size: 96, elements: !249)
!249 = !{!250, !251, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !248, file: !7, line: 938, baseType: !206, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !248, file: !7, line: 939, baseType: !8, size: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !248, file: !7, line: 940, baseType: !8, size: 32, offset: 64)
!253 = !DILocation(line: 207, column: 26, scope: !190)
!254 = !DILocalVariable(name: "arg", scope: !190, file: !3, line: 208, type: !203)
!255 = !DILocation(line: 208, column: 20, scope: !190)
!256 = !DILocalVariable(name: "sst_value", scope: !190, file: !3, line: 209, type: !8)
!257 = !DILocation(line: 209, column: 6, scope: !190)
!258 = !DILocation(line: 213, column: 36, scope: !190)
!259 = !DILocation(line: 213, column: 11, scope: !190)
!260 = !DILocation(line: 213, column: 9, scope: !190)
!261 = !DILocation(line: 216, column: 6, scope: !262)
!262 = distinct !DILexicalBlock(scope: !190, file: !3, line: 216, column: 6)
!263 = !DILocation(line: 216, column: 6, scope: !190)
!264 = !DILocation(line: 217, column: 3, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !3, line: 216, column: 28)
!266 = !DILocation(line: 222, column: 11, scope: !190)
!267 = !DILocation(line: 222, column: 17, scope: !190)
!268 = !DILocation(line: 223, column: 11, scope: !190)
!269 = !DILocation(line: 223, column: 19, scope: !190)
!270 = !DILocation(line: 224, column: 6, scope: !190)
!271 = !DILocation(line: 224, column: 11, scope: !190)
!272 = !DILocation(line: 225, column: 22, scope: !190)
!273 = !DILocation(line: 225, column: 6, scope: !190)
!274 = !DILocation(line: 225, column: 14, scope: !190)
!275 = !DILocation(line: 225, column: 20, scope: !190)
!276 = !DILocation(line: 228, column: 6, scope: !190)
!277 = !DILocation(line: 227, column: 9, scope: !190)
!278 = !DILocation(line: 229, column: 6, scope: !279)
!279 = distinct !DILexicalBlock(scope: !190, file: !3, line: 229, column: 6)
!280 = !DILocation(line: 229, column: 27, scope: !279)
!281 = !DILocation(line: 229, column: 30, scope: !279)
!282 = !DILocation(line: 229, column: 37, scope: !279)
!283 = !DILocation(line: 229, column: 6, scope: !190)
!284 = !DILocation(line: 230, column: 3, scope: !285)
!285 = distinct !DILexicalBlock(scope: !279, file: !3, line: 229, column: 54)
!286 = !DILocation(line: 235, column: 10, scope: !190)
!287 = !DILocation(line: 235, column: 2, scope: !190)
!288 = !DILocation(line: 238, column: 13, scope: !289)
!289 = distinct !DILexicalBlock(scope: !190, file: !3, line: 235, column: 23)
!290 = !DILocation(line: 239, column: 3, scope: !289)
!291 = !DILocation(line: 245, column: 13, scope: !289)
!292 = !DILocation(line: 246, column: 3, scope: !289)
!293 = !DILocation(line: 250, column: 13, scope: !289)
!294 = !DILocation(line: 251, column: 3, scope: !289)
!295 = !DILocation(line: 255, column: 13, scope: !289)
!296 = !DILocation(line: 256, column: 3, scope: !289)
!297 = !DILocation(line: 263, column: 53, scope: !190)
!298 = !DILocation(line: 263, column: 2, scope: !190)
!299 = !DILocation(line: 264, column: 2, scope: !190)
!300 = !DILocation(line: 265, column: 1, scope: !190)
!301 = distinct !DISubprogram(name: "acpi_enter_sleep_state", scope: !3, file: !3, line: 281, type: !191, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!302 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !301, file: !3, line: 281, type: !65)
!303 = !DILocation(line: 281, column: 39, scope: !301)
!304 = !DILocalVariable(name: "status", scope: !301, file: !3, line: 283, type: !6)
!305 = !DILocation(line: 283, column: 14, scope: !301)
!306 = !DILocation(line: 287, column: 7, scope: !307)
!307 = distinct !DILexicalBlock(scope: !301, file: !3, line: 287, column: 6)
!308 = !DILocation(line: 287, column: 29, scope: !307)
!309 = !DILocation(line: 287, column: 52, scope: !307)
!310 = !DILocation(line: 288, column: 7, scope: !307)
!311 = !DILocation(line: 288, column: 29, scope: !307)
!312 = !DILocation(line: 287, column: 6, scope: !301)
!313 = !DILocation(line: 289, column: 3, scope: !314)
!314 = distinct !DILexicalBlock(scope: !307, file: !3, line: 288, column: 53)
!315 = !DILocation(line: 291, column: 3, scope: !314)
!316 = !DILocation(line: 295, column: 7, scope: !317)
!317 = distinct !DILexicalBlock(scope: !301, file: !3, line: 295, column: 6)
!318 = !DILocation(line: 295, column: 6, scope: !301)
!319 = !DILocation(line: 296, column: 33, scope: !317)
!320 = !DILocation(line: 296, column: 12, scope: !317)
!321 = !DILocation(line: 296, column: 10, scope: !317)
!322 = !DILocation(line: 296, column: 3, scope: !317)
!323 = !DILocation(line: 299, column: 35, scope: !317)
!324 = !DILocation(line: 299, column: 12, scope: !317)
!325 = !DILocation(line: 299, column: 10, scope: !317)
!326 = !DILocation(line: 300, column: 2, scope: !301)
!327 = !DILocation(line: 301, column: 1, scope: !301)
!328 = distinct !DISubprogram(name: "acpi_leave_sleep_state_prep", scope: !3, file: !3, line: 319, type: !191, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!329 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !328, file: !3, line: 319, type: !65)
!330 = !DILocation(line: 319, column: 44, scope: !328)
!331 = !DILocalVariable(name: "status", scope: !328, file: !3, line: 321, type: !6)
!332 = !DILocation(line: 321, column: 14, scope: !328)
!333 = !DILocation(line: 326, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !3, line: 326, column: 6)
!335 = !DILocation(line: 326, column: 6, scope: !328)
!336 = !DILocation(line: 327, column: 37, scope: !334)
!337 = !DILocation(line: 327, column: 12, scope: !334)
!338 = !DILocation(line: 327, column: 10, scope: !334)
!339 = !DILocation(line: 327, column: 3, scope: !334)
!340 = !DILocation(line: 330, column: 39, scope: !334)
!341 = !DILocation(line: 330, column: 12, scope: !334)
!342 = !DILocation(line: 330, column: 10, scope: !334)
!343 = !DILocation(line: 331, column: 2, scope: !328)
!344 = distinct !DISubprogram(name: "acpi_leave_sleep_state", scope: !3, file: !3, line: 348, type: !191, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!345 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !344, file: !3, line: 348, type: !65)
!346 = !DILocation(line: 348, column: 39, scope: !344)
!347 = !DILocalVariable(name: "status", scope: !344, file: !3, line: 350, type: !6)
!348 = !DILocation(line: 350, column: 14, scope: !344)
!349 = !DILocation(line: 355, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !344, file: !3, line: 355, column: 6)
!351 = !DILocation(line: 355, column: 6, scope: !344)
!352 = !DILocation(line: 356, column: 32, scope: !350)
!353 = !DILocation(line: 356, column: 12, scope: !350)
!354 = !DILocation(line: 356, column: 10, scope: !350)
!355 = !DILocation(line: 356, column: 3, scope: !350)
!356 = !DILocation(line: 359, column: 34, scope: !350)
!357 = !DILocation(line: 359, column: 12, scope: !350)
!358 = !DILocation(line: 359, column: 10, scope: !350)
!359 = !DILocation(line: 360, column: 2, scope: !344)
