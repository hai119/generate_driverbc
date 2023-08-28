; ModuleID = '../bcout/drivers/acpi/acpica/utalloc.llvm.bc'
source_filename = "drivers/acpi/acpica/utalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.1 }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.anon.1 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.22, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.2, [0 x i64] }
%struct.anon.2 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.3, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.3 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
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
%struct.kernel_siginfo = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.14 }
%struct.anon.14 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.21, i32, [12 x i8] }
%union.anon.21 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.22 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.23, %union.anon.36, %struct.atomic_t, [8 x i8] }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.36 = type { %struct.atomic_t }
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
%struct.acpi_buffer = type { i64, i8* }

@.str = private unnamed_addr constant [15 x i8] c"Acpi-Namespace\00", align 1
@acpi_gbl_namespace_cache = external dso_local global %struct.kmem_cache*, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Acpi-State\00", align 1
@acpi_gbl_state_cache = external dso_local global %struct.kmem_cache*, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"Acpi-Parse\00", align 1
@acpi_gbl_ps_node_cache = external dso_local global %struct.kmem_cache*, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"Acpi-ParseExt\00", align 1
@acpi_gbl_ps_node_ext_cache = external dso_local global %struct.kmem_cache*, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"Acpi-Operand\00", align 1
@acpi_gbl_operand_cache = external dso_local global %struct.kmem_cache*, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_create_caches() #0 !dbg !32 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !36, metadata !DIExpression()), !dbg !37
  %call = call i32 @acpi_os_create_cache(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i16 zeroext 48, i16 zeroext 96, %struct.kmem_cache** @acpi_gbl_namespace_cache) #9, !dbg !38
  store i32 %call, i32* %status, align 4, !dbg !39
  %0 = load i32, i32* %status, align 4, !dbg !40
  %tobool = icmp ne i32 %0, 0, !dbg !40
  br i1 %tobool, label %if.then, label %if.end, !dbg !42

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !43
  store i32 %1, i32* %retval, align 4, !dbg !45
  br label %return, !dbg !45

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_os_create_cache(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i16 zeroext 80, i16 zeroext 96, %struct.kmem_cache** @acpi_gbl_state_cache) #9, !dbg !46
  store i32 %call1, i32* %status, align 4, !dbg !47
  %2 = load i32, i32* %status, align 4, !dbg !48
  %tobool2 = icmp ne i32 %2, 0, !dbg !48
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !50

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %status, align 4, !dbg !51
  store i32 %3, i32* %retval, align 4, !dbg !53
  br label %return, !dbg !53

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @acpi_os_create_cache(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i16 zeroext 56, i16 zeroext 96, %struct.kmem_cache** @acpi_gbl_ps_node_cache) #9, !dbg !54
  store i32 %call5, i32* %status, align 4, !dbg !55
  %4 = load i32, i32* %status, align 4, !dbg !56
  %tobool6 = icmp ne i32 %4, 0, !dbg !56
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !58

if.then7:                                         ; preds = %if.end4
  %5 = load i32, i32* %status, align 4, !dbg !59
  store i32 %5, i32* %retval, align 4, !dbg !61
  br label %return, !dbg !61

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @acpi_os_create_cache(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i16 zeroext 80, i16 zeroext 96, %struct.kmem_cache** @acpi_gbl_ps_node_ext_cache) #9, !dbg !62
  store i32 %call9, i32* %status, align 4, !dbg !63
  %6 = load i32, i32* %status, align 4, !dbg !64
  %tobool10 = icmp ne i32 %6, 0, !dbg !64
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !66

if.then11:                                        ; preds = %if.end8
  %7 = load i32, i32* %status, align 4, !dbg !67
  store i32 %7, i32* %retval, align 4, !dbg !69
  br label %return, !dbg !69

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @acpi_os_create_cache(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i16 zeroext 72, i16 zeroext 96, %struct.kmem_cache** @acpi_gbl_operand_cache) #9, !dbg !70
  store i32 %call13, i32* %status, align 4, !dbg !71
  %8 = load i32, i32* %status, align 4, !dbg !72
  %tobool14 = icmp ne i32 %8, 0, !dbg !72
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !74

if.then15:                                        ; preds = %if.end12
  %9 = load i32, i32* %status, align 4, !dbg !75
  store i32 %9, i32* %retval, align 4, !dbg !77
  br label %return, !dbg !77

if.end16:                                         ; preds = %if.end12
  store i32 0, i32* %retval, align 4, !dbg !78
  br label %return, !dbg !78

return:                                           ; preds = %if.end16, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !79
  ret i32 %10, !dbg !79
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_create_cache(i8*, i16 zeroext, i16 zeroext, %struct.kmem_cache**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_delete_caches() #0 !dbg !80 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_namespace_cache, align 8, !dbg !81
  %call = call i32 @acpi_os_delete_cache(%struct.kmem_cache* %0) #9, !dbg !82
  store %struct.kmem_cache* null, %struct.kmem_cache** @acpi_gbl_namespace_cache, align 8, !dbg !83
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_state_cache, align 8, !dbg !84
  %call1 = call i32 @acpi_os_delete_cache(%struct.kmem_cache* %1) #9, !dbg !85
  store %struct.kmem_cache* null, %struct.kmem_cache** @acpi_gbl_state_cache, align 8, !dbg !86
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_operand_cache, align 8, !dbg !87
  %call2 = call i32 @acpi_os_delete_cache(%struct.kmem_cache* %2) #9, !dbg !88
  store %struct.kmem_cache* null, %struct.kmem_cache** @acpi_gbl_operand_cache, align 8, !dbg !89
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_ps_node_cache, align 8, !dbg !90
  %call3 = call i32 @acpi_os_delete_cache(%struct.kmem_cache* %3) #9, !dbg !91
  store %struct.kmem_cache* null, %struct.kmem_cache** @acpi_gbl_ps_node_cache, align 8, !dbg !92
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_ps_node_ext_cache, align 8, !dbg !93
  %call4 = call i32 @acpi_os_delete_cache(%struct.kmem_cache* %4) #9, !dbg !94
  store %struct.kmem_cache* null, %struct.kmem_cache** @acpi_gbl_ps_node_ext_cache, align 8, !dbg !95
  ret i32 0, !dbg !96
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_delete_cache(%struct.kmem_cache*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_validate_buffer(%struct.acpi_buffer* %buffer) #0 !dbg !97 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct.acpi_buffer*, align 8
  store %struct.acpi_buffer* %buffer, %struct.acpi_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %buffer.addr, metadata !105, metadata !DIExpression()), !dbg !106
  %0 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !107
  %tobool = icmp ne %struct.acpi_buffer* %0, null, !dbg !107
  br i1 %tobool, label %if.end, label %if.then, !dbg !109

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !110
  br label %return, !dbg !110

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !112
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %1, i32 0, i32 0, !dbg !114
  %2 = load i64, i64* %length, align 8, !dbg !114
  %cmp = icmp eq i64 %2, 0, !dbg !115
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !116

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !117
  %length1 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %3, i32 0, i32 0, !dbg !118
  %4 = load i64, i64* %length1, align 8, !dbg !118
  %cmp2 = icmp eq i64 %4, -1, !dbg !119
  br i1 %cmp2, label %if.then6, label %lor.lhs.false3, !dbg !120

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !121
  %length4 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0, !dbg !122
  %6 = load i64, i64* %length4, align 8, !dbg !122
  %cmp5 = icmp eq i64 %6, -2, !dbg !123
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !124

if.then6:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  store i32 0, i32* %retval, align 4, !dbg !125
  br label %return, !dbg !125

if.end7:                                          ; preds = %lor.lhs.false3
  %7 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !127
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1, !dbg !129
  %8 = load i8*, i8** %pointer, align 8, !dbg !129
  %tobool8 = icmp ne i8* %8, null, !dbg !127
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !130

if.then9:                                         ; preds = %if.end7
  store i32 4097, i32* %retval, align 4, !dbg !131
  br label %return, !dbg !131

if.end10:                                         ; preds = %if.end7
  store i32 0, i32* %retval, align 4, !dbg !133
  br label %return, !dbg !133

return:                                           ; preds = %if.end10, %if.then9, %if.then6, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !134
  ret i32 %9, !dbg !134
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer* %buffer, i64 %required_length) #0 !dbg !135 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct.acpi_buffer*, align 8
  %required_length.addr = alloca i64, align 8
  %input_buffer_length = alloca i64, align 8
  store %struct.acpi_buffer* %buffer, %struct.acpi_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %buffer.addr, metadata !138, metadata !DIExpression()), !dbg !139
  store i64 %required_length, i64* %required_length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %required_length.addr, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i64* %input_buffer_length, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !144
  %tobool = icmp ne %struct.acpi_buffer* %0, null, !dbg !144
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !146

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %required_length.addr, align 8, !dbg !147
  %tobool1 = icmp ne i64 %1, 0, !dbg !147
  br i1 %tobool1, label %if.end, label %if.then, !dbg !148

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !149
  br label %return, !dbg !149

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !151
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %2, i32 0, i32 0, !dbg !152
  %3 = load i64, i64* %length, align 8, !dbg !152
  store i64 %3, i64* %input_buffer_length, align 8, !dbg !153
  %4 = load i64, i64* %required_length.addr, align 8, !dbg !154
  %5 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !155
  %length2 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0, !dbg !156
  store i64 %4, i64* %length2, align 8, !dbg !157
  %6 = load i64, i64* %input_buffer_length, align 8, !dbg !158
  switch i64 %6, label %sw.default [
    i64 0, label %sw.bb
    i64 -1, label %sw.bb3
    i64 -2, label %sw.bb4
  ], !dbg !159

sw.bb:                                            ; preds = %if.end
  store i32 11, i32* %retval, align 4, !dbg !160
  br label %return, !dbg !160

sw.bb3:                                           ; preds = %if.end
  %7 = load i64, i64* %required_length.addr, align 8, !dbg !162
  %call = call i8* @acpi_os_allocate(i64 %7) #9, !dbg !163
  %8 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !164
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 1, !dbg !165
  store i8* %call, i8** %pointer, align 8, !dbg !166
  br label %sw.epilog, !dbg !167

sw.bb4:                                           ; preds = %if.end
  %9 = load i64, i64* %required_length.addr, align 8, !dbg !168
  %call5 = call i8* @acpi_os_allocate(i64 %9) #9, !dbg !168
  %10 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !169
  %pointer6 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 1, !dbg !170
  store i8* %call5, i8** %pointer6, align 8, !dbg !171
  br label %sw.epilog, !dbg !172

sw.default:                                       ; preds = %if.end
  %11 = load i64, i64* %input_buffer_length, align 8, !dbg !173
  %12 = load i64, i64* %required_length.addr, align 8, !dbg !175
  %cmp = icmp ult i64 %11, %12, !dbg !176
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !177

if.then7:                                         ; preds = %sw.default
  store i32 11, i32* %retval, align 4, !dbg !178
  br label %return, !dbg !178

if.end8:                                          ; preds = %sw.default
  br label %sw.epilog, !dbg !180

sw.epilog:                                        ; preds = %if.end8, %sw.bb4, %sw.bb3
  %13 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !181
  %pointer9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1, !dbg !183
  %14 = load i8*, i8** %pointer9, align 8, !dbg !183
  %tobool10 = icmp ne i8* %14, null, !dbg !181
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !184

if.then11:                                        ; preds = %sw.epilog
  store i32 4, i32* %retval, align 4, !dbg !185
  br label %return, !dbg !185

if.end12:                                         ; preds = %sw.epilog
  %15 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !187
  %pointer13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 1, !dbg !188
  %16 = load i8*, i8** %pointer13, align 8, !dbg !188
  %17 = load i64, i64* %required_length.addr, align 8, !dbg !189
  call void @llvm.memset.p0i8.i64(i8* align 1 %16, i8 0, i64 %17, i1 false), !dbg !190
  store i32 0, i32* %retval, align 4, !dbg !191
  br label %return, !dbg !191

return:                                           ; preds = %if.end12, %if.then11, %if.then7, %sw.bb, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !192
  ret i32 %18, !dbg !192
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate(i64 %size) #0 !dbg !193 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !197, metadata !DIExpression()), !dbg !208
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !216, metadata !DIExpression()), !dbg !217
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !218, metadata !DIExpression()), !dbg !219
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !220, metadata !DIExpression()), !dbg !221
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !222, metadata !DIExpression()), !dbg !226
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !228, metadata !DIExpression()), !dbg !232
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !234, metadata !DIExpression()), !dbg !238
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !243, metadata !DIExpression()), !dbg !244
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !245, metadata !DIExpression()), !dbg !246
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !247, metadata !DIExpression()), !dbg !248
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !249, metadata !DIExpression()), !dbg !250
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !251, metadata !DIExpression()), !dbg !252
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !253, metadata !DIExpression()), !dbg !254
  %flags.addr.i11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i11, metadata !255, metadata !DIExpression()), !dbg !256
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !257, metadata !DIExpression()), !dbg !258
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !259, metadata !DIExpression()), !dbg !265
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = load i64, i64* %size.addr, align 8, !dbg !271
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !272, metadata !DIExpression()), !dbg !273
  br label %do.body, !dbg !273

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !274, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !278, metadata !DIExpression()), !dbg !277
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !277
  %conv = zext i1 %cmp to i32, !dbg !277
  store i32 1, i32* %tmp, align 4, !dbg !277
  %1 = load i32, i32* %tmp, align 4, !dbg !277
  %call = call i64 @arch_local_save_flags() #9, !dbg !279
  store i64 %call, i64* %_flags, align 8, !dbg !279
  br label %do.end, !dbg !279

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !280, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !283, metadata !DIExpression()), !dbg !282
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !282
  %conv6 = zext i1 %cmp5 to i32, !dbg !282
  store i32 1, i32* %tmp7, align 4, !dbg !282
  %2 = load i32, i32* %tmp7, align 4, !dbg !282
  %3 = load i64, i64* %_flags, align 8, !dbg !284
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !285
  %and.i = and i64 %4, 512, !dbg !286
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !287
  %lnot.i = xor i1 %tobool.i, true, !dbg !287
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !287
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !284
  %5 = load i32, i32* %tmp8, align 4, !dbg !284
  store i32 %5, i32* %tmp1, align 4, !dbg !279
  %6 = load i32, i32* %tmp1, align 4, !dbg !273
  %tobool = icmp ne i32 %6, 0, !dbg !288
  %7 = zext i1 %tobool to i64, !dbg !288
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !288
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %cond, i32* %flags.addr.i11, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !289
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #8, !dbg !290
  br i1 %9, label %if.then.i, label %if.end9.i, !dbg !291

if.then.i:                                        ; preds = %do.end
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !292
  %cmp.i = icmp ugt i64 %10, 8192, !dbg !293
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !294

if.then1.i:                                       ; preds = %if.then.i
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !295
  %12 = load i32, i32* %flags.addr.i11, align 4, !dbg !296
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !297
  %call.i.i = call i32 @get_order(i64 %13) #10, !dbg !298
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !252
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !299
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !300
  %16 = load i32, i32* %order.i.i, align 4, !dbg !301
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !302
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !303
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !304
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #11, !dbg !305
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !305
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !305
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !305
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !305
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !306
  br label %kmalloc.exit, !dbg !306

if.end.i:                                         ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !307
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !308
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !308
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !310

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !311
  br label %kmalloc_index.exit.i, !dbg !311

if.end.i.i:                                       ; preds = %if.end.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !312
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !314
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !315

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !316
  br label %kmalloc_index.exit.i, !dbg !316

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !317
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !319
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !320

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !321
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !322
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !323

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !324
  br label %kmalloc_index.exit.i, !dbg !324

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !325
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !327
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !328

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !329
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !330
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !331

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !332
  br label %kmalloc_index.exit.i, !dbg !332

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !333
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !335
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !336

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !337
  br label %kmalloc_index.exit.i, !dbg !337

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !338
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !340
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !341

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !342
  br label %kmalloc_index.exit.i, !dbg !342

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !343
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !345
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !346

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !347
  br label %kmalloc_index.exit.i, !dbg !347

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !348
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !350
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !351

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !352
  br label %kmalloc_index.exit.i, !dbg !352

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !353
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !355
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !356

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !357
  br label %kmalloc_index.exit.i, !dbg !357

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !358
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !360
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !361

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !362
  br label %kmalloc_index.exit.i, !dbg !362

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !363
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !365
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !366

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !367
  br label %kmalloc_index.exit.i, !dbg !367

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !368
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !370
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !371

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !372
  br label %kmalloc_index.exit.i, !dbg !372

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !373
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !375
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !376

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !377
  br label %kmalloc_index.exit.i, !dbg !377

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !378
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !380
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !381

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !382
  br label %kmalloc_index.exit.i, !dbg !382

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !383
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !385
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !386

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !387
  br label %kmalloc_index.exit.i, !dbg !387

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !388
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !390
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !391

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !392
  br label %kmalloc_index.exit.i, !dbg !392

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !393
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !395
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !396

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !397
  br label %kmalloc_index.exit.i, !dbg !397

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !398
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !400
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !401

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !402
  br label %kmalloc_index.exit.i, !dbg !402

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !403
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !405
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !406

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !407
  br label %kmalloc_index.exit.i, !dbg !407

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !408
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !410
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !411

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !412
  br label %kmalloc_index.exit.i, !dbg !412

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !413
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !415
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !416

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !417
  br label %kmalloc_index.exit.i, !dbg !417

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !418
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !420
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !421

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !422
  br label %kmalloc_index.exit.i, !dbg !422

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !423
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !425
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !426

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !427
  br label %kmalloc_index.exit.i, !dbg !427

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !428
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !430
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !431

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !432
  br label %kmalloc_index.exit.i, !dbg !432

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !433
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !435
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !436

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !437
  br label %kmalloc_index.exit.i, !dbg !437

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !438
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !440
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !441

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !442
  br label %kmalloc_index.exit.i, !dbg !442

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !443
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !445
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !446

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !447
  br label %kmalloc_index.exit.i, !dbg !447

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !448
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !450
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !451

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !452
  br label %kmalloc_index.exit.i, !dbg !452

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !453, !srcloc !456
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !457, !srcloc !460
  unreachable, !dbg !461

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !462
  store i32 %51, i32* %index.i, align 4, !dbg !463
  %52 = load i32, i32* %index.i, align 4, !dbg !464
  %tobool.i12 = icmp ne i32 %52, 0, !dbg !464
  br i1 %tobool.i12, label %if.end4.i, label %if.then3.i, !dbg !466

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !467
  br label %kmalloc.exit, !dbg !467

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i11, align 4, !dbg !468
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !469
  %and.i.i = and i32 %54, 17, !dbg !469
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !469
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !469
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !469
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !469
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !471

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !472
  br label %kmalloc_type.exit.i, !dbg !472

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !473
  %and2.i.i = and i32 %55, 1, !dbg !474
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !473
  %56 = zext i1 %tobool3.i.i to i64, !dbg !473
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !473
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !475
  br label %kmalloc_type.exit.i, !dbg !475

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !476
  %idxprom.i = zext i32 %57 to i64, !dbg !477
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !477
  %58 = load i32, i32* %index.i, align 4, !dbg !478
  %idxprom6.i = zext i32 %58 to i64, !dbg !477
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !477
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !477
  %60 = load i32, i32* %flags.addr.i11, align 4, !dbg !479
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !480
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !481
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !482
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #11, !dbg !483
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !483
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !483
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !483
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !483
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !221
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !484
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !485
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !486
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !487
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #11, !dbg !488
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !489
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !490
  store i8* %68, i8** %retval.i, align 8, !dbg !491
  br label %kmalloc.exit, !dbg !491

if.end9.i:                                        ; preds = %do.end
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !492
  %70 = load i32, i32* %flags.addr.i11, align 4, !dbg !493
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #11, !dbg !494
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !494
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !494
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !494
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !494
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !495
  br label %kmalloc.exit, !dbg !495

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i, align 8, !dbg !496
  ret i8* %71, !dbg !497
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !498 {
entry:
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !502, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !505, metadata !DIExpression()), !dbg !504
  %0 = load i64, i64* %__edi, align 8, !dbg !504
  store i64 %0, i64* %__edi, align 8, !dbg !504
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !506, metadata !DIExpression()), !dbg !504
  %1 = load i64, i64* %__esi, align 8, !dbg !504
  store i64 %1, i64* %__esi, align 8, !dbg !504
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !507, metadata !DIExpression()), !dbg !504
  %2 = load i64, i64* %__edx, align 8, !dbg !504
  store i64 %2, i64* %__edx, align 8, !dbg !504
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !508, metadata !DIExpression()), !dbg !504
  %3 = load i64, i64* %__ecx, align 8, !dbg !504
  store i64 %3, i64* %__ecx, align 8, !dbg !504
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !509, metadata !DIExpression()), !dbg !504
  %4 = load i64, i64* %__eax, align 8, !dbg !504
  store i64 %4, i64* %__eax, align 8, !dbg !504
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !504
  %6 = call i64 @llvm.read_register.i64(metadata !26), !dbg !510
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !510, !srcloc !513
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !510
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !510
  store i64 %asmresult, i64* %__eax, align 8, !dbg !510
  call void @llvm.write_register.i64(metadata !26, i64 %asmresult1), !dbg !510
  %8 = load i64, i64* %__eax, align 8, !dbg !510
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !514, metadata !DIExpression()), !dbg !516
  store i64 -1, i64* %__mask, align 8, !dbg !516
  %9 = load i64, i64* %__mask, align 8, !dbg !516
  store i64 %9, i64* %tmp, align 8, !dbg !516
  %10 = load i64, i64* %tmp, align 8, !dbg !516
  %and = and i64 %8, %10, !dbg !510
  store i64 %and, i64* %__ret, align 8, !dbg !510
  %11 = load i64, i64* %__ret, align 8, !dbg !504
  store i64 %11, i64* %tmp2, align 8, !dbg !517
  %12 = load i64, i64* %tmp2, align 8, !dbg !504
  ret i64 %12, !dbg !518
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !519 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !521, metadata !DIExpression()), !dbg !526
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !528, metadata !DIExpression()), !dbg !529
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !530, metadata !DIExpression()), !dbg !531
  %0 = load i64, i64* %size.addr, align 8, !dbg !532
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !534
  br i1 %1, label %if.then, label %if.end447, !dbg !535

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !536
  %tobool = icmp ne i64 %2, 0, !dbg !536
  br i1 %tobool, label %if.end, label %if.then1, !dbg !539

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !540
  br label %return, !dbg !540

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !541
  %cmp = icmp ult i64 %3, 4096, !dbg !543
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !544

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !545
  br label %return, !dbg !545

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub = sub i64 %4, 1, !dbg !546
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !546
  br i1 %5, label %cond.true, label %cond.false442, !dbg !546

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub4 = sub i64 %6, 1, !dbg !546
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !546
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !546

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub6 = sub i64 %8, 1, !dbg !546
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !546
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !546

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !546

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub9 = sub i64 %9, 1, !dbg !546
  %and = and i64 %sub9, -9223372036854775808, !dbg !546
  %tobool10 = icmp ne i64 %and, 0, !dbg !546
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !546

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !546

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub13 = sub i64 %10, 1, !dbg !546
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !546
  %tobool15 = icmp ne i64 %and14, 0, !dbg !546
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !546

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !546

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub18 = sub i64 %11, 1, !dbg !546
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !546
  %tobool20 = icmp ne i64 %and19, 0, !dbg !546
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !546

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !546

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub23 = sub i64 %12, 1, !dbg !546
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !546
  %tobool25 = icmp ne i64 %and24, 0, !dbg !546
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !546

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !546

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub28 = sub i64 %13, 1, !dbg !546
  %and29 = and i64 %sub28, 576460752303423488, !dbg !546
  %tobool30 = icmp ne i64 %and29, 0, !dbg !546
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !546

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !546

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub33 = sub i64 %14, 1, !dbg !546
  %and34 = and i64 %sub33, 288230376151711744, !dbg !546
  %tobool35 = icmp ne i64 %and34, 0, !dbg !546
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !546

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !546

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub38 = sub i64 %15, 1, !dbg !546
  %and39 = and i64 %sub38, 144115188075855872, !dbg !546
  %tobool40 = icmp ne i64 %and39, 0, !dbg !546
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !546

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !546

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub43 = sub i64 %16, 1, !dbg !546
  %and44 = and i64 %sub43, 72057594037927936, !dbg !546
  %tobool45 = icmp ne i64 %and44, 0, !dbg !546
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !546

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !546

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub48 = sub i64 %17, 1, !dbg !546
  %and49 = and i64 %sub48, 36028797018963968, !dbg !546
  %tobool50 = icmp ne i64 %and49, 0, !dbg !546
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !546

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !546

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub53 = sub i64 %18, 1, !dbg !546
  %and54 = and i64 %sub53, 18014398509481984, !dbg !546
  %tobool55 = icmp ne i64 %and54, 0, !dbg !546
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !546

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !546

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub58 = sub i64 %19, 1, !dbg !546
  %and59 = and i64 %sub58, 9007199254740992, !dbg !546
  %tobool60 = icmp ne i64 %and59, 0, !dbg !546
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !546

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !546

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub63 = sub i64 %20, 1, !dbg !546
  %and64 = and i64 %sub63, 4503599627370496, !dbg !546
  %tobool65 = icmp ne i64 %and64, 0, !dbg !546
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !546

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !546

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub68 = sub i64 %21, 1, !dbg !546
  %and69 = and i64 %sub68, 2251799813685248, !dbg !546
  %tobool70 = icmp ne i64 %and69, 0, !dbg !546
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !546

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !546

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub73 = sub i64 %22, 1, !dbg !546
  %and74 = and i64 %sub73, 1125899906842624, !dbg !546
  %tobool75 = icmp ne i64 %and74, 0, !dbg !546
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !546

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !546

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub78 = sub i64 %23, 1, !dbg !546
  %and79 = and i64 %sub78, 562949953421312, !dbg !546
  %tobool80 = icmp ne i64 %and79, 0, !dbg !546
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !546

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !546

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub83 = sub i64 %24, 1, !dbg !546
  %and84 = and i64 %sub83, 281474976710656, !dbg !546
  %tobool85 = icmp ne i64 %and84, 0, !dbg !546
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !546

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !546

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub88 = sub i64 %25, 1, !dbg !546
  %and89 = and i64 %sub88, 140737488355328, !dbg !546
  %tobool90 = icmp ne i64 %and89, 0, !dbg !546
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !546

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !546

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub93 = sub i64 %26, 1, !dbg !546
  %and94 = and i64 %sub93, 70368744177664, !dbg !546
  %tobool95 = icmp ne i64 %and94, 0, !dbg !546
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !546

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !546

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub98 = sub i64 %27, 1, !dbg !546
  %and99 = and i64 %sub98, 35184372088832, !dbg !546
  %tobool100 = icmp ne i64 %and99, 0, !dbg !546
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !546

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !546

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub103 = sub i64 %28, 1, !dbg !546
  %and104 = and i64 %sub103, 17592186044416, !dbg !546
  %tobool105 = icmp ne i64 %and104, 0, !dbg !546
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !546

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !546

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub108 = sub i64 %29, 1, !dbg !546
  %and109 = and i64 %sub108, 8796093022208, !dbg !546
  %tobool110 = icmp ne i64 %and109, 0, !dbg !546
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !546

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !546

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub113 = sub i64 %30, 1, !dbg !546
  %and114 = and i64 %sub113, 4398046511104, !dbg !546
  %tobool115 = icmp ne i64 %and114, 0, !dbg !546
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !546

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !546

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub118 = sub i64 %31, 1, !dbg !546
  %and119 = and i64 %sub118, 2199023255552, !dbg !546
  %tobool120 = icmp ne i64 %and119, 0, !dbg !546
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !546

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !546

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub123 = sub i64 %32, 1, !dbg !546
  %and124 = and i64 %sub123, 1099511627776, !dbg !546
  %tobool125 = icmp ne i64 %and124, 0, !dbg !546
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !546

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !546

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub128 = sub i64 %33, 1, !dbg !546
  %and129 = and i64 %sub128, 549755813888, !dbg !546
  %tobool130 = icmp ne i64 %and129, 0, !dbg !546
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !546

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !546

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub133 = sub i64 %34, 1, !dbg !546
  %and134 = and i64 %sub133, 274877906944, !dbg !546
  %tobool135 = icmp ne i64 %and134, 0, !dbg !546
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !546

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !546

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub138 = sub i64 %35, 1, !dbg !546
  %and139 = and i64 %sub138, 137438953472, !dbg !546
  %tobool140 = icmp ne i64 %and139, 0, !dbg !546
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !546

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !546

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub143 = sub i64 %36, 1, !dbg !546
  %and144 = and i64 %sub143, 68719476736, !dbg !546
  %tobool145 = icmp ne i64 %and144, 0, !dbg !546
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !546

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !546

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub148 = sub i64 %37, 1, !dbg !546
  %and149 = and i64 %sub148, 34359738368, !dbg !546
  %tobool150 = icmp ne i64 %and149, 0, !dbg !546
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !546

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !546

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub153 = sub i64 %38, 1, !dbg !546
  %and154 = and i64 %sub153, 17179869184, !dbg !546
  %tobool155 = icmp ne i64 %and154, 0, !dbg !546
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !546

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !546

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub158 = sub i64 %39, 1, !dbg !546
  %and159 = and i64 %sub158, 8589934592, !dbg !546
  %tobool160 = icmp ne i64 %and159, 0, !dbg !546
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !546

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !546

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub163 = sub i64 %40, 1, !dbg !546
  %and164 = and i64 %sub163, 4294967296, !dbg !546
  %tobool165 = icmp ne i64 %and164, 0, !dbg !546
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !546

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !546

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub168 = sub i64 %41, 1, !dbg !546
  %and169 = and i64 %sub168, 2147483648, !dbg !546
  %tobool170 = icmp ne i64 %and169, 0, !dbg !546
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !546

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !546

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub173 = sub i64 %42, 1, !dbg !546
  %and174 = and i64 %sub173, 1073741824, !dbg !546
  %tobool175 = icmp ne i64 %and174, 0, !dbg !546
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !546

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !546

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub178 = sub i64 %43, 1, !dbg !546
  %and179 = and i64 %sub178, 536870912, !dbg !546
  %tobool180 = icmp ne i64 %and179, 0, !dbg !546
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !546

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !546

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub183 = sub i64 %44, 1, !dbg !546
  %and184 = and i64 %sub183, 268435456, !dbg !546
  %tobool185 = icmp ne i64 %and184, 0, !dbg !546
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !546

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !546

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub188 = sub i64 %45, 1, !dbg !546
  %and189 = and i64 %sub188, 134217728, !dbg !546
  %tobool190 = icmp ne i64 %and189, 0, !dbg !546
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !546

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !546

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub193 = sub i64 %46, 1, !dbg !546
  %and194 = and i64 %sub193, 67108864, !dbg !546
  %tobool195 = icmp ne i64 %and194, 0, !dbg !546
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !546

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !546

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub198 = sub i64 %47, 1, !dbg !546
  %and199 = and i64 %sub198, 33554432, !dbg !546
  %tobool200 = icmp ne i64 %and199, 0, !dbg !546
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !546

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !546

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub203 = sub i64 %48, 1, !dbg !546
  %and204 = and i64 %sub203, 16777216, !dbg !546
  %tobool205 = icmp ne i64 %and204, 0, !dbg !546
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !546

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !546

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub208 = sub i64 %49, 1, !dbg !546
  %and209 = and i64 %sub208, 8388608, !dbg !546
  %tobool210 = icmp ne i64 %and209, 0, !dbg !546
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !546

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !546

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub213 = sub i64 %50, 1, !dbg !546
  %and214 = and i64 %sub213, 4194304, !dbg !546
  %tobool215 = icmp ne i64 %and214, 0, !dbg !546
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !546

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !546

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub218 = sub i64 %51, 1, !dbg !546
  %and219 = and i64 %sub218, 2097152, !dbg !546
  %tobool220 = icmp ne i64 %and219, 0, !dbg !546
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !546

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !546

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub223 = sub i64 %52, 1, !dbg !546
  %and224 = and i64 %sub223, 1048576, !dbg !546
  %tobool225 = icmp ne i64 %and224, 0, !dbg !546
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !546

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !546

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub228 = sub i64 %53, 1, !dbg !546
  %and229 = and i64 %sub228, 524288, !dbg !546
  %tobool230 = icmp ne i64 %and229, 0, !dbg !546
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !546

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !546

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub233 = sub i64 %54, 1, !dbg !546
  %and234 = and i64 %sub233, 262144, !dbg !546
  %tobool235 = icmp ne i64 %and234, 0, !dbg !546
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !546

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !546

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub238 = sub i64 %55, 1, !dbg !546
  %and239 = and i64 %sub238, 131072, !dbg !546
  %tobool240 = icmp ne i64 %and239, 0, !dbg !546
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !546

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !546

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub243 = sub i64 %56, 1, !dbg !546
  %and244 = and i64 %sub243, 65536, !dbg !546
  %tobool245 = icmp ne i64 %and244, 0, !dbg !546
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !546

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !546

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub248 = sub i64 %57, 1, !dbg !546
  %and249 = and i64 %sub248, 32768, !dbg !546
  %tobool250 = icmp ne i64 %and249, 0, !dbg !546
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !546

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !546

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub253 = sub i64 %58, 1, !dbg !546
  %and254 = and i64 %sub253, 16384, !dbg !546
  %tobool255 = icmp ne i64 %and254, 0, !dbg !546
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !546

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !546

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub258 = sub i64 %59, 1, !dbg !546
  %and259 = and i64 %sub258, 8192, !dbg !546
  %tobool260 = icmp ne i64 %and259, 0, !dbg !546
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !546

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !546

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub263 = sub i64 %60, 1, !dbg !546
  %and264 = and i64 %sub263, 4096, !dbg !546
  %tobool265 = icmp ne i64 %and264, 0, !dbg !546
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !546

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !546

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub268 = sub i64 %61, 1, !dbg !546
  %and269 = and i64 %sub268, 2048, !dbg !546
  %tobool270 = icmp ne i64 %and269, 0, !dbg !546
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !546

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !546

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub273 = sub i64 %62, 1, !dbg !546
  %and274 = and i64 %sub273, 1024, !dbg !546
  %tobool275 = icmp ne i64 %and274, 0, !dbg !546
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !546

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !546

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub278 = sub i64 %63, 1, !dbg !546
  %and279 = and i64 %sub278, 512, !dbg !546
  %tobool280 = icmp ne i64 %and279, 0, !dbg !546
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !546

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !546

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub283 = sub i64 %64, 1, !dbg !546
  %and284 = and i64 %sub283, 256, !dbg !546
  %tobool285 = icmp ne i64 %and284, 0, !dbg !546
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !546

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !546

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub288 = sub i64 %65, 1, !dbg !546
  %and289 = and i64 %sub288, 128, !dbg !546
  %tobool290 = icmp ne i64 %and289, 0, !dbg !546
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !546

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !546

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub293 = sub i64 %66, 1, !dbg !546
  %and294 = and i64 %sub293, 64, !dbg !546
  %tobool295 = icmp ne i64 %and294, 0, !dbg !546
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !546

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !546

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub298 = sub i64 %67, 1, !dbg !546
  %and299 = and i64 %sub298, 32, !dbg !546
  %tobool300 = icmp ne i64 %and299, 0, !dbg !546
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !546

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !546

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub303 = sub i64 %68, 1, !dbg !546
  %and304 = and i64 %sub303, 16, !dbg !546
  %tobool305 = icmp ne i64 %and304, 0, !dbg !546
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !546

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !546

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub308 = sub i64 %69, 1, !dbg !546
  %and309 = and i64 %sub308, 8, !dbg !546
  %tobool310 = icmp ne i64 %and309, 0, !dbg !546
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !546

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !546

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub313 = sub i64 %70, 1, !dbg !546
  %and314 = and i64 %sub313, 4, !dbg !546
  %tobool315 = icmp ne i64 %and314, 0, !dbg !546
  %71 = zext i1 %tobool315 to i64, !dbg !546
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !546
  br label %cond.end, !dbg !546

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !546
  br label %cond.end317, !dbg !546

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !546
  br label %cond.end319, !dbg !546

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !546
  br label %cond.end321, !dbg !546

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !546
  br label %cond.end323, !dbg !546

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !546
  br label %cond.end325, !dbg !546

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !546
  br label %cond.end327, !dbg !546

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !546
  br label %cond.end329, !dbg !546

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !546
  br label %cond.end331, !dbg !546

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !546
  br label %cond.end333, !dbg !546

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !546
  br label %cond.end335, !dbg !546

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !546
  br label %cond.end337, !dbg !546

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !546
  br label %cond.end339, !dbg !546

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !546
  br label %cond.end341, !dbg !546

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !546
  br label %cond.end343, !dbg !546

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !546
  br label %cond.end345, !dbg !546

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !546
  br label %cond.end347, !dbg !546

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !546
  br label %cond.end349, !dbg !546

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !546
  br label %cond.end351, !dbg !546

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !546
  br label %cond.end353, !dbg !546

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !546
  br label %cond.end355, !dbg !546

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !546
  br label %cond.end357, !dbg !546

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !546
  br label %cond.end359, !dbg !546

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !546
  br label %cond.end361, !dbg !546

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !546
  br label %cond.end363, !dbg !546

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !546
  br label %cond.end365, !dbg !546

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !546
  br label %cond.end367, !dbg !546

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !546
  br label %cond.end369, !dbg !546

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !546
  br label %cond.end371, !dbg !546

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !546
  br label %cond.end373, !dbg !546

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !546
  br label %cond.end375, !dbg !546

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !546
  br label %cond.end377, !dbg !546

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !546
  br label %cond.end379, !dbg !546

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !546
  br label %cond.end381, !dbg !546

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !546
  br label %cond.end383, !dbg !546

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !546
  br label %cond.end385, !dbg !546

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !546
  br label %cond.end387, !dbg !546

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !546
  br label %cond.end389, !dbg !546

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !546
  br label %cond.end391, !dbg !546

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !546
  br label %cond.end393, !dbg !546

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !546
  br label %cond.end395, !dbg !546

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !546
  br label %cond.end397, !dbg !546

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !546
  br label %cond.end399, !dbg !546

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !546
  br label %cond.end401, !dbg !546

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !546
  br label %cond.end403, !dbg !546

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !546
  br label %cond.end405, !dbg !546

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !546
  br label %cond.end407, !dbg !546

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !546
  br label %cond.end409, !dbg !546

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !546
  br label %cond.end411, !dbg !546

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !546
  br label %cond.end413, !dbg !546

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !546
  br label %cond.end415, !dbg !546

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !546
  br label %cond.end417, !dbg !546

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !546
  br label %cond.end419, !dbg !546

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !546
  br label %cond.end421, !dbg !546

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !546
  br label %cond.end423, !dbg !546

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !546
  br label %cond.end425, !dbg !546

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !546
  br label %cond.end427, !dbg !546

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !546
  br label %cond.end429, !dbg !546

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !546
  br label %cond.end431, !dbg !546

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !546
  br label %cond.end433, !dbg !546

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !546
  br label %cond.end435, !dbg !546

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !546
  br label %cond.end437, !dbg !546

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !546
  br label %cond.end440, !dbg !546

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !546

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !546
  br label %cond.end444, !dbg !546

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !546
  %sub443 = sub i64 %72, 1, !dbg !546
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !546
  br label %cond.end444, !dbg !546

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !546
  %sub446 = sub i32 %cond445, 12, !dbg !547
  %add = add i32 %sub446, 1, !dbg !548
  store i32 %add, i32* %retval, align 4, !dbg !549
  br label %return, !dbg !549

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !550
  %dec = add i64 %73, -1, !dbg !550
  store i64 %dec, i64* %size.addr, align 8, !dbg !550
  %74 = load i64, i64* %size.addr, align 8, !dbg !551
  %shr = lshr i64 %74, 12, !dbg !551
  store i64 %shr, i64* %size.addr, align 8, !dbg !551
  %75 = load i64, i64* %size.addr, align 8, !dbg !552
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !529
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !553
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !554
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !553, !srcloc !555
  store i32 %78, i32* %bitpos.i, align 4, !dbg !553
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !556
  %add.i = add i32 %79, 1, !dbg !557
  store i32 %add.i, i32* %retval, align 4, !dbg !558
  br label %return, !dbg !558

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !559
  ret i32 %80, !dbg !559
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !560 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !521, metadata !DIExpression()), !dbg !564
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !528, metadata !DIExpression()), !dbg !566
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !567, metadata !DIExpression()), !dbg !568
  %0 = load i64, i64* %n.addr, align 8, !dbg !569
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !566
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !570
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !571
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !570, !srcloc !555
  store i32 %3, i32* %bitpos.i, align 4, !dbg !570
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !572
  %add.i = add i32 %4, 1, !dbg !573
  %sub = sub i32 %add.i, 1, !dbg !574
  ret i32 %sub, !dbg !575
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !576 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !582, metadata !DIExpression()), !dbg !583
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !584, metadata !DIExpression()), !dbg !585
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !586, metadata !DIExpression()), !dbg !587
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !588, metadata !DIExpression()), !dbg !589
  %0 = load i8*, i8** %object.addr, align 8, !dbg !590
  ret i8* %0, !dbg !591
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utalloc.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4, line: 305, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!11 = !{!12, !18, !22, !24, !25}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !13, line: 421, baseType: !14)
!13 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !5)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !13, line: 127, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !15, line: 23, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !17, line: 31, baseType: !21)
!21 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !23, line: 148, baseType: !5)
!23 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !{!"rsp"}
!27 = !{i32 7, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"Code Model", i32 2}
!31 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!32 = distinct !DISubprogram(name: "acpi_ut_create_caches", scope: !1, file: !1, line: 62, type: !33, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{!12}
!35 = !{}
!36 = !DILocalVariable(name: "status", scope: !32, file: !1, line: 64, type: !12)
!37 = !DILocation(line: 64, column: 14, scope: !32)
!38 = !DILocation(line: 69, column: 6, scope: !32)
!39 = !DILocation(line: 68, column: 9, scope: !32)
!40 = !DILocation(line: 73, column: 6, scope: !41)
!41 = distinct !DILexicalBlock(scope: !32, file: !1, line: 73, column: 6)
!42 = !DILocation(line: 73, column: 6, scope: !32)
!43 = !DILocation(line: 74, column: 11, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 73, column: 28)
!45 = !DILocation(line: 74, column: 3, scope: !44)
!46 = !DILocation(line: 78, column: 6, scope: !32)
!47 = !DILocation(line: 77, column: 9, scope: !32)
!48 = !DILocation(line: 81, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !32, file: !1, line: 81, column: 6)
!50 = !DILocation(line: 81, column: 6, scope: !32)
!51 = !DILocation(line: 82, column: 11, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 81, column: 28)
!53 = !DILocation(line: 82, column: 3, scope: !52)
!54 = !DILocation(line: 86, column: 6, scope: !32)
!55 = !DILocation(line: 85, column: 9, scope: !32)
!56 = !DILocation(line: 90, column: 6, scope: !57)
!57 = distinct !DILexicalBlock(scope: !32, file: !1, line: 90, column: 6)
!58 = !DILocation(line: 90, column: 6, scope: !32)
!59 = !DILocation(line: 91, column: 11, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 90, column: 28)
!61 = !DILocation(line: 91, column: 3, scope: !60)
!62 = !DILocation(line: 95, column: 6, scope: !32)
!63 = !DILocation(line: 94, column: 9, scope: !32)
!64 = !DILocation(line: 99, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !32, file: !1, line: 99, column: 6)
!66 = !DILocation(line: 99, column: 6, scope: !32)
!67 = !DILocation(line: 100, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 99, column: 28)
!69 = !DILocation(line: 100, column: 3, scope: !68)
!70 = !DILocation(line: 104, column: 6, scope: !32)
!71 = !DILocation(line: 103, column: 9, scope: !32)
!72 = !DILocation(line: 108, column: 6, scope: !73)
!73 = distinct !DILexicalBlock(scope: !32, file: !1, line: 108, column: 6)
!74 = !DILocation(line: 108, column: 6, scope: !32)
!75 = !DILocation(line: 109, column: 11, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !1, line: 108, column: 28)
!77 = !DILocation(line: 109, column: 3, scope: !76)
!78 = !DILocation(line: 168, column: 2, scope: !32)
!79 = !DILocation(line: 169, column: 1, scope: !32)
!80 = distinct !DISubprogram(name: "acpi_ut_delete_caches", scope: !1, file: !1, line: 183, type: !33, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!81 = !DILocation(line: 194, column: 29, scope: !80)
!82 = !DILocation(line: 194, column: 8, scope: !80)
!83 = !DILocation(line: 195, column: 27, scope: !80)
!84 = !DILocation(line: 197, column: 29, scope: !80)
!85 = !DILocation(line: 197, column: 8, scope: !80)
!86 = !DILocation(line: 198, column: 23, scope: !80)
!87 = !DILocation(line: 200, column: 29, scope: !80)
!88 = !DILocation(line: 200, column: 8, scope: !80)
!89 = !DILocation(line: 201, column: 25, scope: !80)
!90 = !DILocation(line: 203, column: 29, scope: !80)
!91 = !DILocation(line: 203, column: 8, scope: !80)
!92 = !DILocation(line: 204, column: 25, scope: !80)
!93 = !DILocation(line: 206, column: 29, scope: !80)
!94 = !DILocation(line: 206, column: 8, scope: !80)
!95 = !DILocation(line: 207, column: 29, scope: !80)
!96 = !DILocation(line: 235, column: 2, scope: !80)
!97 = distinct !DISubprogram(name: "acpi_ut_validate_buffer", scope: !1, file: !1, line: 250, type: !98, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!98 = !DISubroutineType(types: !99)
!99 = !{!12, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !13, line: 969, size: 128, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !101, file: !13, line: 970, baseType: !18, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !101, file: !13, line: 971, baseType: !24, size: 64, offset: 64)
!105 = !DILocalVariable(name: "buffer", arg: 1, scope: !97, file: !1, line: 250, type: !100)
!106 = !DILocation(line: 250, column: 57, scope: !97)
!107 = !DILocation(line: 255, column: 7, scope: !108)
!108 = distinct !DILexicalBlock(scope: !97, file: !1, line: 255, column: 6)
!109 = !DILocation(line: 255, column: 6, scope: !97)
!110 = !DILocation(line: 256, column: 3, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 255, column: 15)
!112 = !DILocation(line: 261, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !97, file: !1, line: 261, column: 6)
!114 = !DILocation(line: 261, column: 15, scope: !113)
!115 = !DILocation(line: 261, column: 22, scope: !113)
!116 = !DILocation(line: 261, column: 41, scope: !113)
!117 = !DILocation(line: 262, column: 7, scope: !113)
!118 = !DILocation(line: 262, column: 15, scope: !113)
!119 = !DILocation(line: 262, column: 22, scope: !113)
!120 = !DILocation(line: 262, column: 47, scope: !113)
!121 = !DILocation(line: 263, column: 7, scope: !113)
!122 = !DILocation(line: 263, column: 15, scope: !113)
!123 = !DILocation(line: 263, column: 22, scope: !113)
!124 = !DILocation(line: 261, column: 6, scope: !97)
!125 = !DILocation(line: 264, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !113, file: !1, line: 263, column: 54)
!127 = !DILocation(line: 269, column: 7, scope: !128)
!128 = distinct !DILexicalBlock(scope: !97, file: !1, line: 269, column: 6)
!129 = !DILocation(line: 269, column: 15, scope: !128)
!130 = !DILocation(line: 269, column: 6, scope: !97)
!131 = !DILocation(line: 270, column: 3, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 269, column: 24)
!133 = !DILocation(line: 273, column: 2, scope: !97)
!134 = !DILocation(line: 274, column: 1, scope: !97)
!135 = distinct !DISubprogram(name: "acpi_ut_initialize_buffer", scope: !1, file: !1, line: 291, type: !136, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!136 = !DISubroutineType(types: !137)
!137 = !{!12, !100, !18}
!138 = !DILocalVariable(name: "buffer", arg: 1, scope: !135, file: !1, line: 291, type: !100)
!139 = !DILocation(line: 291, column: 47, scope: !135)
!140 = !DILocalVariable(name: "required_length", arg: 2, scope: !135, file: !1, line: 291, type: !18)
!141 = !DILocation(line: 291, column: 65, scope: !135)
!142 = !DILocalVariable(name: "input_buffer_length", scope: !135, file: !1, line: 293, type: !18)
!143 = !DILocation(line: 293, column: 12, scope: !135)
!144 = !DILocation(line: 297, column: 7, scope: !145)
!145 = distinct !DILexicalBlock(scope: !135, file: !1, line: 297, column: 6)
!146 = !DILocation(line: 297, column: 14, scope: !145)
!147 = !DILocation(line: 297, column: 18, scope: !145)
!148 = !DILocation(line: 297, column: 6, scope: !135)
!149 = !DILocation(line: 298, column: 3, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !1, line: 297, column: 35)
!151 = !DILocation(line: 305, column: 24, scope: !135)
!152 = !DILocation(line: 305, column: 32, scope: !135)
!153 = !DILocation(line: 305, column: 22, scope: !135)
!154 = !DILocation(line: 306, column: 19, scope: !135)
!155 = !DILocation(line: 306, column: 2, scope: !135)
!156 = !DILocation(line: 306, column: 10, scope: !135)
!157 = !DILocation(line: 306, column: 17, scope: !135)
!158 = !DILocation(line: 312, column: 10, scope: !135)
!159 = !DILocation(line: 312, column: 2, scope: !135)
!160 = !DILocation(line: 317, column: 3, scope: !161)
!161 = distinct !DILexicalBlock(scope: !135, file: !1, line: 312, column: 31)
!162 = !DILocation(line: 327, column: 38, scope: !161)
!163 = !DILocation(line: 327, column: 21, scope: !161)
!164 = !DILocation(line: 327, column: 3, scope: !161)
!165 = !DILocation(line: 327, column: 11, scope: !161)
!166 = !DILocation(line: 327, column: 19, scope: !161)
!167 = !DILocation(line: 328, column: 3, scope: !161)
!168 = !DILocation(line: 334, column: 21, scope: !161)
!169 = !DILocation(line: 334, column: 3, scope: !161)
!170 = !DILocation(line: 334, column: 11, scope: !161)
!171 = !DILocation(line: 334, column: 19, scope: !161)
!172 = !DILocation(line: 335, column: 3, scope: !161)
!173 = !DILocation(line: 341, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !161, file: !1, line: 341, column: 7)
!175 = !DILocation(line: 341, column: 29, scope: !174)
!176 = !DILocation(line: 341, column: 27, scope: !174)
!177 = !DILocation(line: 341, column: 7, scope: !161)
!178 = !DILocation(line: 342, column: 4, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !1, line: 341, column: 46)
!180 = !DILocation(line: 344, column: 3, scope: !161)
!181 = !DILocation(line: 349, column: 7, scope: !182)
!182 = distinct !DILexicalBlock(scope: !135, file: !1, line: 349, column: 6)
!183 = !DILocation(line: 349, column: 15, scope: !182)
!184 = !DILocation(line: 349, column: 6, scope: !135)
!185 = !DILocation(line: 350, column: 3, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 349, column: 24)
!187 = !DILocation(line: 355, column: 9, scope: !135)
!188 = !DILocation(line: 355, column: 17, scope: !135)
!189 = !DILocation(line: 355, column: 29, scope: !135)
!190 = !DILocation(line: 355, column: 2, scope: !135)
!191 = !DILocation(line: 356, column: 2, scope: !135)
!192 = !DILocation(line: 357, column: 1, scope: !135)
!193 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !194, file: !194, line: 50, type: !195, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!194 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!195 = !DISubroutineType(types: !196)
!196 = !{!24, !18}
!197 = !DILocalVariable(name: "s", arg: 1, scope: !198, file: !4, line: 445, type: !201)
!198 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !4, file: !4, line: 445, type: !199, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!199 = !DISubroutineType(types: !200)
!200 = !{!24, !201, !22, !204}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !203, line: 117, flags: DIFlagFwdDecl)
!203 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 55, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !206, line: 72, baseType: !207)
!206 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !206, line: 16, baseType: !25)
!208 = !DILocation(line: 445, column: 72, scope: !198, inlinedAt: !209)
!209 = distinct !DILocation(line: 552, column: 10, scope: !210, inlinedAt: !215)
!210 = distinct !DILexicalBlock(scope: !211, file: !4, line: 540, column: 34)
!211 = distinct !DILexicalBlock(scope: !212, file: !4, line: 540, column: 6)
!212 = distinct !DISubprogram(name: "kmalloc", scope: !4, file: !4, line: 538, type: !213, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!213 = !DISubroutineType(types: !214)
!214 = !{!24, !204, !22}
!215 = distinct !DILocation(line: 52, column: 9, scope: !193)
!216 = !DILocalVariable(name: "flags", arg: 2, scope: !198, file: !4, line: 446, type: !22)
!217 = !DILocation(line: 446, column: 9, scope: !198, inlinedAt: !209)
!218 = !DILocalVariable(name: "size", arg: 3, scope: !198, file: !4, line: 446, type: !204)
!219 = !DILocation(line: 446, column: 23, scope: !198, inlinedAt: !209)
!220 = !DILocalVariable(name: "ret", scope: !198, file: !4, line: 448, type: !24)
!221 = !DILocation(line: 448, column: 8, scope: !198, inlinedAt: !209)
!222 = !DILocalVariable(name: "flags", arg: 1, scope: !223, file: !4, line: 318, type: !22)
!223 = distinct !DISubprogram(name: "kmalloc_type", scope: !4, file: !4, line: 318, type: !224, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!224 = !DISubroutineType(types: !225)
!225 = !{!3, !22}
!226 = !DILocation(line: 318, column: 67, scope: !223, inlinedAt: !227)
!227 = distinct !DILocation(line: 553, column: 20, scope: !210, inlinedAt: !215)
!228 = !DILocalVariable(name: "size", arg: 1, scope: !229, file: !4, line: 346, type: !204)
!229 = distinct !DISubprogram(name: "kmalloc_index", scope: !4, file: !4, line: 346, type: !230, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!230 = !DISubroutineType(types: !231)
!231 = !{!5, !204}
!232 = !DILocation(line: 346, column: 58, scope: !229, inlinedAt: !233)
!233 = distinct !DILocation(line: 547, column: 11, scope: !210, inlinedAt: !215)
!234 = !DILocalVariable(name: "size", arg: 1, scope: !235, file: !4, line: 472, type: !204)
!235 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !4, file: !4, line: 472, type: !236, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!236 = !DISubroutineType(types: !237)
!237 = !{!24, !204, !22, !5}
!238 = !DILocation(line: 472, column: 28, scope: !235, inlinedAt: !239)
!239 = distinct !DILocation(line: 481, column: 9, scope: !240, inlinedAt: !241)
!240 = distinct !DISubprogram(name: "kmalloc_large", scope: !4, file: !4, line: 478, type: !213, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!241 = distinct !DILocation(line: 545, column: 11, scope: !242, inlinedAt: !215)
!242 = distinct !DILexicalBlock(scope: !210, file: !4, line: 544, column: 7)
!243 = !DILocalVariable(name: "flags", arg: 2, scope: !235, file: !4, line: 472, type: !22)
!244 = !DILocation(line: 472, column: 40, scope: !235, inlinedAt: !239)
!245 = !DILocalVariable(name: "order", arg: 3, scope: !235, file: !4, line: 472, type: !5)
!246 = !DILocation(line: 472, column: 60, scope: !235, inlinedAt: !239)
!247 = !DILocalVariable(name: "size", arg: 1, scope: !240, file: !4, line: 478, type: !204)
!248 = !DILocation(line: 478, column: 51, scope: !240, inlinedAt: !241)
!249 = !DILocalVariable(name: "flags", arg: 2, scope: !240, file: !4, line: 478, type: !22)
!250 = !DILocation(line: 478, column: 63, scope: !240, inlinedAt: !241)
!251 = !DILocalVariable(name: "order", scope: !240, file: !4, line: 480, type: !5)
!252 = !DILocation(line: 480, column: 15, scope: !240, inlinedAt: !241)
!253 = !DILocalVariable(name: "size", arg: 1, scope: !212, file: !4, line: 538, type: !204)
!254 = !DILocation(line: 538, column: 45, scope: !212, inlinedAt: !215)
!255 = !DILocalVariable(name: "flags", arg: 2, scope: !212, file: !4, line: 538, type: !22)
!256 = !DILocation(line: 538, column: 57, scope: !212, inlinedAt: !215)
!257 = !DILocalVariable(name: "index", scope: !210, file: !4, line: 542, type: !5)
!258 = !DILocation(line: 542, column: 16, scope: !210, inlinedAt: !215)
!259 = !DILocalVariable(name: "flags", arg: 1, scope: !260, file: !261, line: 162, type: !25)
!260 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !261, file: !261, line: 162, type: !262, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!261 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !25}
!264 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!265 = !DILocation(line: 162, column: 67, scope: !260, inlinedAt: !266)
!266 = distinct !DILocation(line: 52, column: 23, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !194, line: 52, column: 23)
!268 = distinct !DILexicalBlock(scope: !193, file: !194, line: 52, column: 23)
!269 = !DILocalVariable(name: "size", arg: 1, scope: !193, file: !194, line: 50, type: !18)
!270 = !DILocation(line: 50, column: 48, scope: !193)
!271 = !DILocation(line: 52, column: 17, scope: !193)
!272 = !DILocalVariable(name: "_flags", scope: !268, file: !194, line: 52, type: !25)
!273 = !DILocation(line: 52, column: 23, scope: !268)
!274 = !DILocalVariable(name: "__dummy", scope: !275, file: !194, line: 52, type: !25)
!275 = distinct !DILexicalBlock(scope: !276, file: !194, line: 52, column: 23)
!276 = distinct !DILexicalBlock(scope: !268, file: !194, line: 52, column: 23)
!277 = !DILocation(line: 52, column: 23, scope: !275)
!278 = !DILocalVariable(name: "__dummy2", scope: !275, file: !194, line: 52, type: !25)
!279 = !DILocation(line: 52, column: 23, scope: !276)
!280 = !DILocalVariable(name: "__dummy", scope: !281, file: !194, line: 52, type: !25)
!281 = distinct !DILexicalBlock(scope: !267, file: !194, line: 52, column: 23)
!282 = !DILocation(line: 52, column: 23, scope: !281)
!283 = !DILocalVariable(name: "__dummy2", scope: !281, file: !194, line: 52, type: !25)
!284 = !DILocation(line: 52, column: 23, scope: !267)
!285 = !DILocation(line: 164, column: 11, scope: !260, inlinedAt: !266)
!286 = !DILocation(line: 164, column: 17, scope: !260, inlinedAt: !266)
!287 = !DILocation(line: 164, column: 9, scope: !260, inlinedAt: !266)
!288 = !DILocation(line: 52, column: 23, scope: !193)
!289 = !DILocation(line: 540, column: 27, scope: !211, inlinedAt: !215)
!290 = !DILocation(line: 540, column: 6, scope: !211, inlinedAt: !215)
!291 = !DILocation(line: 540, column: 6, scope: !212, inlinedAt: !215)
!292 = !DILocation(line: 544, column: 7, scope: !242, inlinedAt: !215)
!293 = !DILocation(line: 544, column: 12, scope: !242, inlinedAt: !215)
!294 = !DILocation(line: 544, column: 7, scope: !210, inlinedAt: !215)
!295 = !DILocation(line: 545, column: 25, scope: !242, inlinedAt: !215)
!296 = !DILocation(line: 545, column: 31, scope: !242, inlinedAt: !215)
!297 = !DILocation(line: 480, column: 33, scope: !240, inlinedAt: !241)
!298 = !DILocation(line: 480, column: 23, scope: !240, inlinedAt: !241)
!299 = !DILocation(line: 481, column: 29, scope: !240, inlinedAt: !241)
!300 = !DILocation(line: 481, column: 35, scope: !240, inlinedAt: !241)
!301 = !DILocation(line: 481, column: 42, scope: !240, inlinedAt: !241)
!302 = !DILocation(line: 474, column: 23, scope: !235, inlinedAt: !239)
!303 = !DILocation(line: 474, column: 29, scope: !235, inlinedAt: !239)
!304 = !DILocation(line: 474, column: 36, scope: !235, inlinedAt: !239)
!305 = !DILocation(line: 474, column: 9, scope: !235, inlinedAt: !239)
!306 = !DILocation(line: 545, column: 4, scope: !242, inlinedAt: !215)
!307 = !DILocation(line: 547, column: 25, scope: !210, inlinedAt: !215)
!308 = !DILocation(line: 348, column: 7, scope: !309, inlinedAt: !233)
!309 = distinct !DILexicalBlock(scope: !229, file: !4, line: 348, column: 6)
!310 = !DILocation(line: 348, column: 6, scope: !229, inlinedAt: !233)
!311 = !DILocation(line: 349, column: 3, scope: !309, inlinedAt: !233)
!312 = !DILocation(line: 351, column: 6, scope: !313, inlinedAt: !233)
!313 = distinct !DILexicalBlock(scope: !229, file: !4, line: 351, column: 6)
!314 = !DILocation(line: 351, column: 11, scope: !313, inlinedAt: !233)
!315 = !DILocation(line: 351, column: 6, scope: !229, inlinedAt: !233)
!316 = !DILocation(line: 352, column: 3, scope: !313, inlinedAt: !233)
!317 = !DILocation(line: 354, column: 32, scope: !318, inlinedAt: !233)
!318 = distinct !DILexicalBlock(scope: !229, file: !4, line: 354, column: 6)
!319 = !DILocation(line: 354, column: 37, scope: !318, inlinedAt: !233)
!320 = !DILocation(line: 354, column: 42, scope: !318, inlinedAt: !233)
!321 = !DILocation(line: 354, column: 45, scope: !318, inlinedAt: !233)
!322 = !DILocation(line: 354, column: 50, scope: !318, inlinedAt: !233)
!323 = !DILocation(line: 354, column: 6, scope: !229, inlinedAt: !233)
!324 = !DILocation(line: 355, column: 3, scope: !318, inlinedAt: !233)
!325 = !DILocation(line: 356, column: 32, scope: !326, inlinedAt: !233)
!326 = distinct !DILexicalBlock(scope: !229, file: !4, line: 356, column: 6)
!327 = !DILocation(line: 356, column: 37, scope: !326, inlinedAt: !233)
!328 = !DILocation(line: 356, column: 43, scope: !326, inlinedAt: !233)
!329 = !DILocation(line: 356, column: 46, scope: !326, inlinedAt: !233)
!330 = !DILocation(line: 356, column: 51, scope: !326, inlinedAt: !233)
!331 = !DILocation(line: 356, column: 6, scope: !229, inlinedAt: !233)
!332 = !DILocation(line: 357, column: 3, scope: !326, inlinedAt: !233)
!333 = !DILocation(line: 358, column: 6, scope: !334, inlinedAt: !233)
!334 = distinct !DILexicalBlock(scope: !229, file: !4, line: 358, column: 6)
!335 = !DILocation(line: 358, column: 11, scope: !334, inlinedAt: !233)
!336 = !DILocation(line: 358, column: 6, scope: !229, inlinedAt: !233)
!337 = !DILocation(line: 358, column: 26, scope: !334, inlinedAt: !233)
!338 = !DILocation(line: 359, column: 6, scope: !339, inlinedAt: !233)
!339 = distinct !DILexicalBlock(scope: !229, file: !4, line: 359, column: 6)
!340 = !DILocation(line: 359, column: 11, scope: !339, inlinedAt: !233)
!341 = !DILocation(line: 359, column: 6, scope: !229, inlinedAt: !233)
!342 = !DILocation(line: 359, column: 26, scope: !339, inlinedAt: !233)
!343 = !DILocation(line: 360, column: 6, scope: !344, inlinedAt: !233)
!344 = distinct !DILexicalBlock(scope: !229, file: !4, line: 360, column: 6)
!345 = !DILocation(line: 360, column: 11, scope: !344, inlinedAt: !233)
!346 = !DILocation(line: 360, column: 6, scope: !229, inlinedAt: !233)
!347 = !DILocation(line: 360, column: 26, scope: !344, inlinedAt: !233)
!348 = !DILocation(line: 361, column: 6, scope: !349, inlinedAt: !233)
!349 = distinct !DILexicalBlock(scope: !229, file: !4, line: 361, column: 6)
!350 = !DILocation(line: 361, column: 11, scope: !349, inlinedAt: !233)
!351 = !DILocation(line: 361, column: 6, scope: !229, inlinedAt: !233)
!352 = !DILocation(line: 361, column: 26, scope: !349, inlinedAt: !233)
!353 = !DILocation(line: 362, column: 6, scope: !354, inlinedAt: !233)
!354 = distinct !DILexicalBlock(scope: !229, file: !4, line: 362, column: 6)
!355 = !DILocation(line: 362, column: 11, scope: !354, inlinedAt: !233)
!356 = !DILocation(line: 362, column: 6, scope: !229, inlinedAt: !233)
!357 = !DILocation(line: 362, column: 26, scope: !354, inlinedAt: !233)
!358 = !DILocation(line: 363, column: 6, scope: !359, inlinedAt: !233)
!359 = distinct !DILexicalBlock(scope: !229, file: !4, line: 363, column: 6)
!360 = !DILocation(line: 363, column: 11, scope: !359, inlinedAt: !233)
!361 = !DILocation(line: 363, column: 6, scope: !229, inlinedAt: !233)
!362 = !DILocation(line: 363, column: 26, scope: !359, inlinedAt: !233)
!363 = !DILocation(line: 364, column: 6, scope: !364, inlinedAt: !233)
!364 = distinct !DILexicalBlock(scope: !229, file: !4, line: 364, column: 6)
!365 = !DILocation(line: 364, column: 11, scope: !364, inlinedAt: !233)
!366 = !DILocation(line: 364, column: 6, scope: !229, inlinedAt: !233)
!367 = !DILocation(line: 364, column: 26, scope: !364, inlinedAt: !233)
!368 = !DILocation(line: 365, column: 6, scope: !369, inlinedAt: !233)
!369 = distinct !DILexicalBlock(scope: !229, file: !4, line: 365, column: 6)
!370 = !DILocation(line: 365, column: 11, scope: !369, inlinedAt: !233)
!371 = !DILocation(line: 365, column: 6, scope: !229, inlinedAt: !233)
!372 = !DILocation(line: 365, column: 26, scope: !369, inlinedAt: !233)
!373 = !DILocation(line: 366, column: 6, scope: !374, inlinedAt: !233)
!374 = distinct !DILexicalBlock(scope: !229, file: !4, line: 366, column: 6)
!375 = !DILocation(line: 366, column: 11, scope: !374, inlinedAt: !233)
!376 = !DILocation(line: 366, column: 6, scope: !229, inlinedAt: !233)
!377 = !DILocation(line: 366, column: 26, scope: !374, inlinedAt: !233)
!378 = !DILocation(line: 367, column: 6, scope: !379, inlinedAt: !233)
!379 = distinct !DILexicalBlock(scope: !229, file: !4, line: 367, column: 6)
!380 = !DILocation(line: 367, column: 11, scope: !379, inlinedAt: !233)
!381 = !DILocation(line: 367, column: 6, scope: !229, inlinedAt: !233)
!382 = !DILocation(line: 367, column: 26, scope: !379, inlinedAt: !233)
!383 = !DILocation(line: 368, column: 6, scope: !384, inlinedAt: !233)
!384 = distinct !DILexicalBlock(scope: !229, file: !4, line: 368, column: 6)
!385 = !DILocation(line: 368, column: 11, scope: !384, inlinedAt: !233)
!386 = !DILocation(line: 368, column: 6, scope: !229, inlinedAt: !233)
!387 = !DILocation(line: 368, column: 26, scope: !384, inlinedAt: !233)
!388 = !DILocation(line: 369, column: 6, scope: !389, inlinedAt: !233)
!389 = distinct !DILexicalBlock(scope: !229, file: !4, line: 369, column: 6)
!390 = !DILocation(line: 369, column: 11, scope: !389, inlinedAt: !233)
!391 = !DILocation(line: 369, column: 6, scope: !229, inlinedAt: !233)
!392 = !DILocation(line: 369, column: 26, scope: !389, inlinedAt: !233)
!393 = !DILocation(line: 370, column: 6, scope: !394, inlinedAt: !233)
!394 = distinct !DILexicalBlock(scope: !229, file: !4, line: 370, column: 6)
!395 = !DILocation(line: 370, column: 11, scope: !394, inlinedAt: !233)
!396 = !DILocation(line: 370, column: 6, scope: !229, inlinedAt: !233)
!397 = !DILocation(line: 370, column: 26, scope: !394, inlinedAt: !233)
!398 = !DILocation(line: 371, column: 6, scope: !399, inlinedAt: !233)
!399 = distinct !DILexicalBlock(scope: !229, file: !4, line: 371, column: 6)
!400 = !DILocation(line: 371, column: 11, scope: !399, inlinedAt: !233)
!401 = !DILocation(line: 371, column: 6, scope: !229, inlinedAt: !233)
!402 = !DILocation(line: 371, column: 26, scope: !399, inlinedAt: !233)
!403 = !DILocation(line: 372, column: 6, scope: !404, inlinedAt: !233)
!404 = distinct !DILexicalBlock(scope: !229, file: !4, line: 372, column: 6)
!405 = !DILocation(line: 372, column: 11, scope: !404, inlinedAt: !233)
!406 = !DILocation(line: 372, column: 6, scope: !229, inlinedAt: !233)
!407 = !DILocation(line: 372, column: 26, scope: !404, inlinedAt: !233)
!408 = !DILocation(line: 373, column: 6, scope: !409, inlinedAt: !233)
!409 = distinct !DILexicalBlock(scope: !229, file: !4, line: 373, column: 6)
!410 = !DILocation(line: 373, column: 11, scope: !409, inlinedAt: !233)
!411 = !DILocation(line: 373, column: 6, scope: !229, inlinedAt: !233)
!412 = !DILocation(line: 373, column: 26, scope: !409, inlinedAt: !233)
!413 = !DILocation(line: 374, column: 6, scope: !414, inlinedAt: !233)
!414 = distinct !DILexicalBlock(scope: !229, file: !4, line: 374, column: 6)
!415 = !DILocation(line: 374, column: 11, scope: !414, inlinedAt: !233)
!416 = !DILocation(line: 374, column: 6, scope: !229, inlinedAt: !233)
!417 = !DILocation(line: 374, column: 26, scope: !414, inlinedAt: !233)
!418 = !DILocation(line: 375, column: 6, scope: !419, inlinedAt: !233)
!419 = distinct !DILexicalBlock(scope: !229, file: !4, line: 375, column: 6)
!420 = !DILocation(line: 375, column: 11, scope: !419, inlinedAt: !233)
!421 = !DILocation(line: 375, column: 6, scope: !229, inlinedAt: !233)
!422 = !DILocation(line: 375, column: 27, scope: !419, inlinedAt: !233)
!423 = !DILocation(line: 376, column: 6, scope: !424, inlinedAt: !233)
!424 = distinct !DILexicalBlock(scope: !229, file: !4, line: 376, column: 6)
!425 = !DILocation(line: 376, column: 11, scope: !424, inlinedAt: !233)
!426 = !DILocation(line: 376, column: 6, scope: !229, inlinedAt: !233)
!427 = !DILocation(line: 376, column: 32, scope: !424, inlinedAt: !233)
!428 = !DILocation(line: 377, column: 6, scope: !429, inlinedAt: !233)
!429 = distinct !DILexicalBlock(scope: !229, file: !4, line: 377, column: 6)
!430 = !DILocation(line: 377, column: 11, scope: !429, inlinedAt: !233)
!431 = !DILocation(line: 377, column: 6, scope: !229, inlinedAt: !233)
!432 = !DILocation(line: 377, column: 32, scope: !429, inlinedAt: !233)
!433 = !DILocation(line: 378, column: 6, scope: !434, inlinedAt: !233)
!434 = distinct !DILexicalBlock(scope: !229, file: !4, line: 378, column: 6)
!435 = !DILocation(line: 378, column: 11, scope: !434, inlinedAt: !233)
!436 = !DILocation(line: 378, column: 6, scope: !229, inlinedAt: !233)
!437 = !DILocation(line: 378, column: 32, scope: !434, inlinedAt: !233)
!438 = !DILocation(line: 379, column: 6, scope: !439, inlinedAt: !233)
!439 = distinct !DILexicalBlock(scope: !229, file: !4, line: 379, column: 6)
!440 = !DILocation(line: 379, column: 11, scope: !439, inlinedAt: !233)
!441 = !DILocation(line: 379, column: 6, scope: !229, inlinedAt: !233)
!442 = !DILocation(line: 379, column: 33, scope: !439, inlinedAt: !233)
!443 = !DILocation(line: 380, column: 6, scope: !444, inlinedAt: !233)
!444 = distinct !DILexicalBlock(scope: !229, file: !4, line: 380, column: 6)
!445 = !DILocation(line: 380, column: 11, scope: !444, inlinedAt: !233)
!446 = !DILocation(line: 380, column: 6, scope: !229, inlinedAt: !233)
!447 = !DILocation(line: 380, column: 33, scope: !444, inlinedAt: !233)
!448 = !DILocation(line: 381, column: 6, scope: !449, inlinedAt: !233)
!449 = distinct !DILexicalBlock(scope: !229, file: !4, line: 381, column: 6)
!450 = !DILocation(line: 381, column: 11, scope: !449, inlinedAt: !233)
!451 = !DILocation(line: 381, column: 6, scope: !229, inlinedAt: !233)
!452 = !DILocation(line: 381, column: 33, scope: !449, inlinedAt: !233)
!453 = !DILocation(line: 382, column: 2, scope: !454, inlinedAt: !233)
!454 = distinct !DILexicalBlock(scope: !455, file: !4, line: 382, column: 2)
!455 = distinct !DILexicalBlock(scope: !229, file: !4, line: 382, column: 2)
!456 = !{i32 -2144111196, i32 -2144111167, i32 -2144111121, i32 -2144111063, i32 -2144111009, i32 -2144110955, i32 -2144110900, i32 -2144110869}
!457 = !DILocation(line: 382, column: 2, scope: !458, inlinedAt: !233)
!458 = distinct !DILexicalBlock(scope: !459, file: !4, line: 382, column: 2)
!459 = distinct !DILexicalBlock(scope: !455, file: !4, line: 382, column: 2)
!460 = !{i32 -2144110426, i32 -2144110419, i32 -2144110365, i32 -2144110334, i32 -2144110304}
!461 = !DILocation(line: 382, column: 2, scope: !459, inlinedAt: !233)
!462 = !DILocation(line: 386, column: 1, scope: !229, inlinedAt: !233)
!463 = !DILocation(line: 547, column: 9, scope: !210, inlinedAt: !215)
!464 = !DILocation(line: 549, column: 8, scope: !465, inlinedAt: !215)
!465 = distinct !DILexicalBlock(scope: !210, file: !4, line: 549, column: 7)
!466 = !DILocation(line: 549, column: 7, scope: !210, inlinedAt: !215)
!467 = !DILocation(line: 550, column: 4, scope: !465, inlinedAt: !215)
!468 = !DILocation(line: 553, column: 33, scope: !210, inlinedAt: !215)
!469 = !DILocation(line: 325, column: 6, scope: !470, inlinedAt: !227)
!470 = distinct !DILexicalBlock(scope: !223, file: !4, line: 325, column: 6)
!471 = !DILocation(line: 325, column: 6, scope: !223, inlinedAt: !227)
!472 = !DILocation(line: 326, column: 3, scope: !470, inlinedAt: !227)
!473 = !DILocation(line: 332, column: 9, scope: !223, inlinedAt: !227)
!474 = !DILocation(line: 332, column: 15, scope: !223, inlinedAt: !227)
!475 = !DILocation(line: 332, column: 2, scope: !223, inlinedAt: !227)
!476 = !DILocation(line: 336, column: 1, scope: !223, inlinedAt: !227)
!477 = !DILocation(line: 553, column: 5, scope: !210, inlinedAt: !215)
!478 = !DILocation(line: 553, column: 41, scope: !210, inlinedAt: !215)
!479 = !DILocation(line: 554, column: 5, scope: !210, inlinedAt: !215)
!480 = !DILocation(line: 554, column: 12, scope: !210, inlinedAt: !215)
!481 = !DILocation(line: 448, column: 31, scope: !198, inlinedAt: !209)
!482 = !DILocation(line: 448, column: 34, scope: !198, inlinedAt: !209)
!483 = !DILocation(line: 448, column: 14, scope: !198, inlinedAt: !209)
!484 = !DILocation(line: 450, column: 22, scope: !198, inlinedAt: !209)
!485 = !DILocation(line: 450, column: 25, scope: !198, inlinedAt: !209)
!486 = !DILocation(line: 450, column: 30, scope: !198, inlinedAt: !209)
!487 = !DILocation(line: 450, column: 36, scope: !198, inlinedAt: !209)
!488 = !DILocation(line: 450, column: 8, scope: !198, inlinedAt: !209)
!489 = !DILocation(line: 450, column: 6, scope: !198, inlinedAt: !209)
!490 = !DILocation(line: 451, column: 9, scope: !198, inlinedAt: !209)
!491 = !DILocation(line: 552, column: 3, scope: !210, inlinedAt: !215)
!492 = !DILocation(line: 557, column: 19, scope: !212, inlinedAt: !215)
!493 = !DILocation(line: 557, column: 25, scope: !212, inlinedAt: !215)
!494 = !DILocation(line: 557, column: 9, scope: !212, inlinedAt: !215)
!495 = !DILocation(line: 557, column: 2, scope: !212, inlinedAt: !215)
!496 = !DILocation(line: 558, column: 1, scope: !212, inlinedAt: !215)
!497 = !DILocation(line: 52, column: 2, scope: !193)
!498 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !499, file: !499, line: 646, type: !500, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!499 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!500 = !DISubroutineType(types: !501)
!501 = !{!25}
!502 = !DILocalVariable(name: "__ret", scope: !503, file: !499, line: 648, type: !25)
!503 = distinct !DILexicalBlock(scope: !498, file: !499, line: 648, column: 9)
!504 = !DILocation(line: 648, column: 9, scope: !503)
!505 = !DILocalVariable(name: "__edi", scope: !503, file: !499, line: 648, type: !25)
!506 = !DILocalVariable(name: "__esi", scope: !503, file: !499, line: 648, type: !25)
!507 = !DILocalVariable(name: "__edx", scope: !503, file: !499, line: 648, type: !25)
!508 = !DILocalVariable(name: "__ecx", scope: !503, file: !499, line: 648, type: !25)
!509 = !DILocalVariable(name: "__eax", scope: !503, file: !499, line: 648, type: !25)
!510 = !DILocation(line: 648, column: 9, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !499, line: 648, column: 9)
!512 = distinct !DILexicalBlock(scope: !503, file: !499, line: 648, column: 9)
!513 = !{i32 -2145784802, i32 -2145782487, i32 -2145782253, i32 -2145782202, i32 -2145782174, i32 -2145782149, i32 -2145782465, i32 -2145782452, i32 -2145782014, i32 -2145781895, i32 -2145782360, i32 -2145782333, i32 -2145782305, i32 -2145782275}
!514 = !DILocalVariable(name: "__mask", scope: !515, file: !499, line: 648, type: !25)
!515 = distinct !DILexicalBlock(scope: !511, file: !499, line: 648, column: 9)
!516 = !DILocation(line: 648, column: 9, scope: !515)
!517 = !DILocation(line: 648, column: 9, scope: !512)
!518 = !DILocation(line: 648, column: 2, scope: !498)
!519 = distinct !DISubprogram(name: "get_order", scope: !520, file: !520, line: 29, type: !262, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!520 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!521 = !DILocalVariable(name: "x", arg: 1, scope: !522, file: !523, line: 366, type: !20)
!522 = distinct !DISubprogram(name: "fls64", scope: !523, file: !523, line: 366, type: !524, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!523 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!524 = !DISubroutineType(types: !525)
!525 = !{!264, !20}
!526 = !DILocation(line: 366, column: 40, scope: !522, inlinedAt: !527)
!527 = distinct !DILocation(line: 46, column: 9, scope: !519)
!528 = !DILocalVariable(name: "bitpos", scope: !522, file: !523, line: 368, type: !264)
!529 = !DILocation(line: 368, column: 6, scope: !522, inlinedAt: !527)
!530 = !DILocalVariable(name: "size", arg: 1, scope: !519, file: !520, line: 29, type: !25)
!531 = !DILocation(line: 29, column: 63, scope: !519)
!532 = !DILocation(line: 31, column: 27, scope: !533)
!533 = distinct !DILexicalBlock(scope: !519, file: !520, line: 31, column: 6)
!534 = !DILocation(line: 31, column: 6, scope: !533)
!535 = !DILocation(line: 31, column: 6, scope: !519)
!536 = !DILocation(line: 32, column: 8, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !520, line: 32, column: 7)
!538 = distinct !DILexicalBlock(scope: !533, file: !520, line: 31, column: 34)
!539 = !DILocation(line: 32, column: 7, scope: !538)
!540 = !DILocation(line: 33, column: 4, scope: !537)
!541 = !DILocation(line: 35, column: 7, scope: !542)
!542 = distinct !DILexicalBlock(scope: !538, file: !520, line: 35, column: 7)
!543 = !DILocation(line: 35, column: 12, scope: !542)
!544 = !DILocation(line: 35, column: 7, scope: !538)
!545 = !DILocation(line: 36, column: 4, scope: !542)
!546 = !DILocation(line: 38, column: 10, scope: !538)
!547 = !DILocation(line: 38, column: 28, scope: !538)
!548 = !DILocation(line: 38, column: 41, scope: !538)
!549 = !DILocation(line: 38, column: 3, scope: !538)
!550 = !DILocation(line: 41, column: 6, scope: !519)
!551 = !DILocation(line: 42, column: 7, scope: !519)
!552 = !DILocation(line: 46, column: 15, scope: !519)
!553 = !DILocation(line: 374, column: 2, scope: !522, inlinedAt: !527)
!554 = !DILocation(line: 376, column: 14, scope: !522, inlinedAt: !527)
!555 = !{i32 660006}
!556 = !DILocation(line: 377, column: 9, scope: !522, inlinedAt: !527)
!557 = !DILocation(line: 377, column: 16, scope: !522, inlinedAt: !527)
!558 = !DILocation(line: 46, column: 2, scope: !519)
!559 = !DILocation(line: 48, column: 1, scope: !519)
!560 = distinct !DISubprogram(name: "__ilog2_u64", scope: !561, file: !561, line: 30, type: !562, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!561 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!562 = !DISubroutineType(types: !563)
!563 = !{!264, !19}
!564 = !DILocation(line: 366, column: 40, scope: !522, inlinedAt: !565)
!565 = distinct !DILocation(line: 32, column: 9, scope: !560)
!566 = !DILocation(line: 368, column: 6, scope: !522, inlinedAt: !565)
!567 = !DILocalVariable(name: "n", arg: 1, scope: !560, file: !561, line: 30, type: !19)
!568 = !DILocation(line: 30, column: 21, scope: !560)
!569 = !DILocation(line: 32, column: 15, scope: !560)
!570 = !DILocation(line: 374, column: 2, scope: !522, inlinedAt: !565)
!571 = !DILocation(line: 376, column: 14, scope: !522, inlinedAt: !565)
!572 = !DILocation(line: 377, column: 9, scope: !522, inlinedAt: !565)
!573 = !DILocation(line: 377, column: 16, scope: !522, inlinedAt: !565)
!574 = !DILocation(line: 32, column: 18, scope: !560)
!575 = !DILocation(line: 32, column: 2, scope: !560)
!576 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !577, file: !577, line: 137, type: !578, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !35)
!577 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!578 = !DISubroutineType(types: !579)
!579 = !{!24, !201, !580, !204, !22}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!582 = !DILocalVariable(name: "s", arg: 1, scope: !576, file: !577, line: 137, type: !201)
!583 = !DILocation(line: 137, column: 54, scope: !576)
!584 = !DILocalVariable(name: "object", arg: 2, scope: !576, file: !577, line: 137, type: !580)
!585 = !DILocation(line: 137, column: 69, scope: !576)
!586 = !DILocalVariable(name: "size", arg: 3, scope: !576, file: !577, line: 138, type: !204)
!587 = !DILocation(line: 138, column: 12, scope: !576)
!588 = !DILocalVariable(name: "flags", arg: 4, scope: !576, file: !577, line: 138, type: !22)
!589 = !DILocation(line: 138, column: 24, scope: !576)
!590 = !DILocation(line: 140, column: 17, scope: !576)
!591 = !DILocation(line: 140, column: 2, scope: !576)
