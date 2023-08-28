; ModuleID = '../bcout/drivers/acpi/acpica/utxface.llvm.bc'
source_filename = "drivers/acpi/acpica/utxface.c"
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
%struct.acpi_interface_info = type { i8*, %struct.acpi_interface_info*, i8, i8 }
%struct.acpi_pld_info = type { i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }

@acpi_gbl_state_cache = external dso_local global %struct.kmem_cache*, align 8
@acpi_gbl_operand_cache = external dso_local global %struct.kmem_cache*, align 8
@acpi_gbl_ps_node_cache = external dso_local global %struct.kmem_cache*, align 8
@acpi_gbl_ps_node_ext_cache = external dso_local global %struct.kmem_cache*, align 8
@acpi_gbl_osi_mutex = external dso_local global i8*, align 8
@acpi_gbl_interface_handler = external dso_local global i32 (i8*, i32)*, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_terminate() #0 section ".init.text" !dbg !33 {
entry:
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !37, metadata !DIExpression()), !dbg !38
  call void @acpi_ut_subsystem_shutdown() #9, !dbg !39
  call void @acpi_ut_mutex_terminate() #9, !dbg !40
  %call = call i32 @acpi_os_terminate() #9, !dbg !41
  store i32 %call, i32* %status, align 4, !dbg !42
  %0 = load i32, i32* %status, align 4, !dbg !43
  ret i32 %0, !dbg !43
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_subsystem_shutdown() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_mutex_terminate() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_terminate() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_purge_cached_objects() #3 !dbg !44 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_state_cache, align 8, !dbg !45
  %call = call i32 @acpi_os_purge_cache(%struct.kmem_cache* %0) #9, !dbg !46
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_operand_cache, align 8, !dbg !47
  %call1 = call i32 @acpi_os_purge_cache(%struct.kmem_cache* %1) #9, !dbg !48
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_ps_node_cache, align 8, !dbg !49
  %call2 = call i32 @acpi_os_purge_cache(%struct.kmem_cache* %2) #9, !dbg !50
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_ps_node_ext_cache, align 8, !dbg !51
  %call3 = call i32 @acpi_os_purge_cache(%struct.kmem_cache* %3) #9, !dbg !52
  ret i32 0, !dbg !53
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_purge_cache(%struct.kmem_cache*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_install_interface(i8* %interface_name) #3 !dbg !54 {
entry:
  %retval = alloca i32, align 4
  %interface_name.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %interface_info = alloca %struct.acpi_interface_info*, align 8
  store i8* %interface_name, i8** %interface_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %interface_name.addr, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %status, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata %struct.acpi_interface_info** %interface_info, metadata !64, metadata !DIExpression()), !dbg !76
  %0 = load i8*, i8** %interface_name.addr, align 8, !dbg !77
  %tobool = icmp ne i8* %0, null, !dbg !77
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !79

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %interface_name.addr, align 8, !dbg !80
  %call = call i64 @strlen(i8* %1) #9, !dbg !81
  %cmp = icmp eq i64 %call, 0, !dbg !82
  br i1 %cmp, label %if.then, label %if.end, !dbg !83

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !84
  br label %return, !dbg !84

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !86
  %call1 = call i32 @acpi_os_wait_semaphore(i8* %2, i32 1, i16 zeroext -1) #9, !dbg !86
  store i32 %call1, i32* %status, align 4, !dbg !87
  %3 = load i32, i32* %status, align 4, !dbg !88
  %tobool2 = icmp ne i32 %3, 0, !dbg !88
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !90

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* %status, align 4, !dbg !91
  store i32 %4, i32* %retval, align 4, !dbg !93
  br label %return, !dbg !93

if.end4:                                          ; preds = %if.end
  %5 = load i8*, i8** %interface_name.addr, align 8, !dbg !94
  %call5 = call %struct.acpi_interface_info* @acpi_ut_get_interface(i8* %5) #9, !dbg !95
  store %struct.acpi_interface_info* %call5, %struct.acpi_interface_info** %interface_info, align 8, !dbg !96
  %6 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !97
  %tobool6 = icmp ne %struct.acpi_interface_info* %6, null, !dbg !97
  br i1 %tobool6, label %if.then7, label %if.else15, !dbg !99

if.then7:                                         ; preds = %if.end4
  %7 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !100
  %flags = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %7, i32 0, i32 2, !dbg !103
  %8 = load i8, i8* %flags, align 8, !dbg !103
  %conv = zext i8 %8 to i32, !dbg !100
  %and = and i32 %conv, 1, !dbg !104
  %tobool8 = icmp ne i32 %and, 0, !dbg !104
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !105

if.then9:                                         ; preds = %if.then7
  %9 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !106
  %flags10 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %9, i32 0, i32 2, !dbg !108
  %10 = load i8, i8* %flags10, align 8, !dbg !109
  %conv11 = zext i8 %10 to i32, !dbg !109
  %and12 = and i32 %conv11, -2, !dbg !109
  %conv13 = trunc i32 %and12 to i8, !dbg !109
  store i8 %conv13, i8* %flags10, align 8, !dbg !109
  store i32 0, i32* %status, align 4, !dbg !110
  br label %if.end14, !dbg !111

if.else:                                          ; preds = %if.then7
  store i32 7, i32* %status, align 4, !dbg !112
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  br label %if.end17, !dbg !114

if.else15:                                        ; preds = %if.end4
  %11 = load i8*, i8** %interface_name.addr, align 8, !dbg !115
  %call16 = call i32 @acpi_ut_install_interface(i8* %11) #9, !dbg !117
  store i32 %call16, i32* %status, align 4, !dbg !118
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.end14
  %12 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !119
  %call18 = call i32 @acpi_os_signal_semaphore(i8* %12, i32 1) #9, !dbg !119
  %13 = load i32, i32* %status, align 4, !dbg !120
  store i32 %13, i32* %retval, align 4, !dbg !121
  br label %return, !dbg !121

return:                                           ; preds = %if.end17, %if.then3, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !122
  ret i32 %14, !dbg !122
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_wait_semaphore(i8*, i32, i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_interface_info* @acpi_ut_get_interface(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_install_interface(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_signal_semaphore(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_remove_interface(i8* %interface_name) #3 !dbg !123 {
entry:
  %retval = alloca i32, align 4
  %interface_name.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store i8* %interface_name, i8** %interface_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %interface_name.addr, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %status, metadata !126, metadata !DIExpression()), !dbg !127
  %0 = load i8*, i8** %interface_name.addr, align 8, !dbg !128
  %tobool = icmp ne i8* %0, null, !dbg !128
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !130

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %interface_name.addr, align 8, !dbg !131
  %call = call i64 @strlen(i8* %1) #9, !dbg !132
  %cmp = icmp eq i64 %call, 0, !dbg !133
  br i1 %cmp, label %if.then, label %if.end, !dbg !134

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !135
  br label %return, !dbg !135

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !137
  %call1 = call i32 @acpi_os_wait_semaphore(i8* %2, i32 1, i16 zeroext -1) #9, !dbg !137
  store i32 %call1, i32* %status, align 4, !dbg !138
  %3 = load i32, i32* %status, align 4, !dbg !139
  %tobool2 = icmp ne i32 %3, 0, !dbg !139
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !141

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* %status, align 4, !dbg !142
  store i32 %4, i32* %retval, align 4, !dbg !144
  br label %return, !dbg !144

if.end4:                                          ; preds = %if.end
  %5 = load i8*, i8** %interface_name.addr, align 8, !dbg !145
  %call5 = call i32 @acpi_ut_remove_interface(i8* %5) #9, !dbg !146
  store i32 %call5, i32* %status, align 4, !dbg !147
  %6 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !148
  %call6 = call i32 @acpi_os_signal_semaphore(i8* %6, i32 1) #9, !dbg !148
  %7 = load i32, i32* %status, align 4, !dbg !149
  store i32 %7, i32* %retval, align 4, !dbg !150
  br label %return, !dbg !150

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !151
  ret i32 %8, !dbg !151
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_remove_interface(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_install_interface_handler(i32 (i8*, i32)* %handler) #3 !dbg !152 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca i32 (i8*, i32)*, align 8
  %status = alloca i32, align 4
  store i32 (i8*, i32)* %handler, i32 (i8*, i32)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32)** %handler.addr, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %status, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !163
  %call = call i32 @acpi_os_wait_semaphore(i8* %0, i32 1, i16 zeroext -1) #9, !dbg !163
  store i32 %call, i32* %status, align 4, !dbg !164
  %1 = load i32, i32* %status, align 4, !dbg !165
  %tobool = icmp ne i32 %1, 0, !dbg !165
  br i1 %tobool, label %if.then, label %if.end, !dbg !167

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !168
  store i32 %2, i32* %retval, align 4, !dbg !170
  br label %return, !dbg !170

if.end:                                           ; preds = %entry
  %3 = load i32 (i8*, i32)*, i32 (i8*, i32)** %handler.addr, align 8, !dbg !171
  %tobool1 = icmp ne i32 (i8*, i32)* %3, null, !dbg !171
  br i1 %tobool1, label %land.lhs.true, label %if.else, !dbg !173

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32 (i8*, i32)*, i32 (i8*, i32)** @acpi_gbl_interface_handler, align 8, !dbg !174
  %tobool2 = icmp ne i32 (i8*, i32)* %4, null, !dbg !174
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !175

if.then3:                                         ; preds = %land.lhs.true
  store i32 7, i32* %status, align 4, !dbg !176
  br label %if.end4, !dbg !178

if.else:                                          ; preds = %land.lhs.true, %if.end
  %5 = load i32 (i8*, i32)*, i32 (i8*, i32)** %handler.addr, align 8, !dbg !179
  store i32 (i8*, i32)* %5, i32 (i8*, i32)** @acpi_gbl_interface_handler, align 8, !dbg !181
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %6 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !182
  %call5 = call i32 @acpi_os_signal_semaphore(i8* %6, i32 1) #9, !dbg !182
  %7 = load i32, i32* %status, align 4, !dbg !183
  store i32 %7, i32* %retval, align 4, !dbg !184
  br label %return, !dbg !184

return:                                           ; preds = %if.end4, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !185
  ret i32 %8, !dbg !185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_update_interfaces(i8 zeroext %action) #3 !dbg !186 {
entry:
  %retval = alloca i32, align 4
  %action.addr = alloca i8, align 1
  %status = alloca i32, align 4
  store i8 %action, i8* %action.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %action.addr, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i32* %status, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !193
  %call = call i32 @acpi_os_wait_semaphore(i8* %0, i32 1, i16 zeroext -1) #9, !dbg !193
  store i32 %call, i32* %status, align 4, !dbg !194
  %1 = load i32, i32* %status, align 4, !dbg !195
  %tobool = icmp ne i32 %1, 0, !dbg !195
  br i1 %tobool, label %if.then, label %if.end, !dbg !197

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !198
  store i32 %2, i32* %retval, align 4, !dbg !200
  br label %return, !dbg !200

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %action.addr, align 1, !dbg !201
  %call1 = call i32 @acpi_ut_update_interfaces(i8 zeroext %3) #9, !dbg !202
  store i32 %call1, i32* %status, align 4, !dbg !203
  %4 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !204
  %call2 = call i32 @acpi_os_signal_semaphore(i8* %4, i32 1) #9, !dbg !204
  %5 = load i32, i32* %status, align 4, !dbg !205
  store i32 %5, i32* %retval, align 4, !dbg !206
  br label %return, !dbg !206

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !207
  ret i32 %6, !dbg !207
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_update_interfaces(i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_check_address_range(i8 zeroext %space_id, i64 %address, i64 %length, i8 zeroext %warn) #3 !dbg !208 {
entry:
  %retval = alloca i32, align 4
  %space_id.addr = alloca i8, align 1
  %address.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %warn.addr = alloca i8, align 1
  %overlaps = alloca i32, align 4
  %status = alloca i32, align 4
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !213, metadata !DIExpression()), !dbg !214
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !215, metadata !DIExpression()), !dbg !216
  store i64 %length, i64* %length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !217, metadata !DIExpression()), !dbg !218
  store i8 %warn, i8* %warn.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %warn.addr, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i32* %overlaps, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %status, metadata !223, metadata !DIExpression()), !dbg !224
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #9, !dbg !225
  store i32 %call, i32* %status, align 4, !dbg !226
  %0 = load i32, i32* %status, align 4, !dbg !227
  %tobool = icmp ne i32 %0, 0, !dbg !227
  br i1 %tobool, label %if.then, label %if.end, !dbg !229

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !230
  br label %return, !dbg !230

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %space_id.addr, align 1, !dbg !232
  %2 = load i64, i64* %address.addr, align 8, !dbg !233
  %3 = load i64, i64* %length.addr, align 8, !dbg !234
  %conv = trunc i64 %3 to i32, !dbg !235
  %4 = load i8, i8* %warn.addr, align 1, !dbg !236
  %call1 = call i32 @acpi_ut_check_address_range(i8 zeroext %1, i64 %2, i32 %conv, i8 zeroext %4) #9, !dbg !237
  store i32 %call1, i32* %overlaps, align 4, !dbg !238
  %call2 = call i32 @acpi_ut_release_mutex(i32 1) #9, !dbg !239
  %5 = load i32, i32* %overlaps, align 4, !dbg !240
  store i32 %5, i32* %retval, align 4, !dbg !241
  br label %return, !dbg !241

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !242
  ret i32 %6, !dbg !242
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_check_address_range(i8 zeroext, i64, i32, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_decode_pld_buffer(i8* %in_buffer, i64 %length, %struct.acpi_pld_info** %return_buffer) #3 !dbg !243 {
entry:
  %retval = alloca i32, align 4
  %in_buffer.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %return_buffer.addr = alloca %struct.acpi_pld_info**, align 8
  %pld_info = alloca %struct.acpi_pld_info*, align 8
  %buffer = alloca i32*, align 8
  %dword = alloca i32, align 4
  store i8* %in_buffer, i8** %in_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %in_buffer.addr, metadata !283, metadata !DIExpression()), !dbg !284
  store i64 %length, i64* %length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !285, metadata !DIExpression()), !dbg !286
  store %struct.acpi_pld_info** %return_buffer, %struct.acpi_pld_info*** %return_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pld_info*** %return_buffer.addr, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata %struct.acpi_pld_info** %pld_info, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata i32** %buffer, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = load i8*, i8** %in_buffer.addr, align 8, !dbg !293
  %1 = bitcast i8* %0 to i32*, !dbg !293
  store i32* %1, i32** %buffer, align 8, !dbg !292
  call void @llvm.dbg.declare(metadata i32* %dword, metadata !294, metadata !DIExpression()), !dbg !295
  %2 = load i8*, i8** %in_buffer.addr, align 8, !dbg !296
  %tobool = icmp ne i8* %2, null, !dbg !296
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !298

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.acpi_pld_info**, %struct.acpi_pld_info*** %return_buffer.addr, align 8, !dbg !299
  %tobool1 = icmp ne %struct.acpi_pld_info** %3, null, !dbg !299
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !300

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i64, i64* %length.addr, align 8, !dbg !301
  %cmp = icmp ult i64 %4, 16, !dbg !302
  br i1 %cmp, label %if.then, label %if.end, !dbg !303

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !304
  br label %return, !dbg !304

if.end:                                           ; preds = %lor.lhs.false2
  %call = call i8* @acpi_os_allocate_zeroed(i64 34) #9, !dbg !306
  %5 = bitcast i8* %call to %struct.acpi_pld_info*, !dbg !306
  store %struct.acpi_pld_info* %5, %struct.acpi_pld_info** %pld_info, align 8, !dbg !307
  %6 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !308
  %tobool3 = icmp ne %struct.acpi_pld_info* %6, null, !dbg !308
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !310

if.then4:                                         ; preds = %if.end
  store i32 4, i32* %retval, align 4, !dbg !311
  br label %return, !dbg !311

if.end5:                                          ; preds = %if.end
  %7 = load i32*, i32** %buffer, align 8, !dbg !313
  %arrayidx = getelementptr i32, i32* %7, i64 0, !dbg !313
  %8 = bitcast i32* %arrayidx to i8*, !dbg !313
  %9 = bitcast i8* %8 to i32*, !dbg !313
  %10 = load i32, i32* %9, align 4, !dbg !313
  %11 = bitcast i32* %dword to i8*, !dbg !313
  %12 = bitcast i8* %11 to i32*, !dbg !313
  store i32 %10, i32* %12, align 4, !dbg !313
  %13 = load i32, i32* %dword, align 4, !dbg !314
  %shr = lshr i32 %13, 0, !dbg !314
  %and = and i32 %shr, 127, !dbg !314
  %conv = trunc i32 %and to i8, !dbg !314
  %14 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !315
  %revision = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %14, i32 0, i32 0, !dbg !316
  store i8 %conv, i8* %revision, align 2, !dbg !317
  %15 = load i32, i32* %dword, align 4, !dbg !318
  %shr6 = lshr i32 %15, 7, !dbg !318
  %and7 = and i32 %shr6, 1, !dbg !318
  %conv8 = trunc i32 %and7 to i8, !dbg !318
  %16 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !319
  %ignore_color = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %16, i32 0, i32 1, !dbg !320
  store i8 %conv8, i8* %ignore_color, align 1, !dbg !321
  %17 = load i32, i32* %dword, align 4, !dbg !322
  %shr9 = lshr i32 %17, 8, !dbg !322
  %and10 = and i32 %shr9, 255, !dbg !322
  %conv11 = trunc i32 %and10 to i8, !dbg !322
  %18 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !323
  %red = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %18, i32 0, i32 2, !dbg !324
  store i8 %conv11, i8* %red, align 2, !dbg !325
  %19 = load i32, i32* %dword, align 4, !dbg !326
  %shr12 = lshr i32 %19, 16, !dbg !326
  %and13 = and i32 %shr12, 255, !dbg !326
  %conv14 = trunc i32 %and13 to i8, !dbg !326
  %20 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !327
  %green = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %20, i32 0, i32 3, !dbg !328
  store i8 %conv14, i8* %green, align 1, !dbg !329
  %21 = load i32, i32* %dword, align 4, !dbg !330
  %shr15 = lshr i32 %21, 24, !dbg !330
  %and16 = and i32 %shr15, 255, !dbg !330
  %conv17 = trunc i32 %and16 to i8, !dbg !330
  %22 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !331
  %blue = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %22, i32 0, i32 4, !dbg !332
  store i8 %conv17, i8* %blue, align 2, !dbg !333
  %23 = load i32*, i32** %buffer, align 8, !dbg !334
  %arrayidx18 = getelementptr i32, i32* %23, i64 1, !dbg !334
  %24 = bitcast i32* %arrayidx18 to i8*, !dbg !334
  %25 = bitcast i8* %24 to i32*, !dbg !334
  %26 = load i32, i32* %25, align 4, !dbg !334
  %27 = bitcast i32* %dword to i8*, !dbg !334
  %28 = bitcast i8* %27 to i32*, !dbg !334
  store i32 %26, i32* %28, align 4, !dbg !334
  %29 = load i32, i32* %dword, align 4, !dbg !335
  %shr19 = lshr i32 %29, 0, !dbg !335
  %and20 = and i32 %shr19, 65535, !dbg !335
  %conv21 = trunc i32 %and20 to i16, !dbg !335
  %30 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !336
  %width = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %30, i32 0, i32 5, !dbg !337
  store i16 %conv21, i16* %width, align 2, !dbg !338
  %31 = load i32, i32* %dword, align 4, !dbg !339
  %shr22 = lshr i32 %31, 16, !dbg !339
  %and23 = and i32 %shr22, 65535, !dbg !339
  %conv24 = trunc i32 %and23 to i16, !dbg !339
  %32 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !340
  %height = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %32, i32 0, i32 6, !dbg !341
  store i16 %conv24, i16* %height, align 2, !dbg !342
  %33 = load i32*, i32** %buffer, align 8, !dbg !343
  %arrayidx25 = getelementptr i32, i32* %33, i64 2, !dbg !343
  %34 = bitcast i32* %arrayidx25 to i8*, !dbg !343
  %35 = bitcast i8* %34 to i32*, !dbg !343
  %36 = load i32, i32* %35, align 4, !dbg !343
  %37 = bitcast i32* %dword to i8*, !dbg !343
  %38 = bitcast i8* %37 to i32*, !dbg !343
  store i32 %36, i32* %38, align 4, !dbg !343
  %39 = load i32, i32* %dword, align 4, !dbg !344
  %shr26 = lshr i32 %39, 0, !dbg !344
  %and27 = and i32 %shr26, 1, !dbg !344
  %conv28 = trunc i32 %and27 to i8, !dbg !344
  %40 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !345
  %user_visible = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %40, i32 0, i32 7, !dbg !346
  store i8 %conv28, i8* %user_visible, align 2, !dbg !347
  %41 = load i32, i32* %dword, align 4, !dbg !348
  %shr29 = lshr i32 %41, 1, !dbg !348
  %and30 = and i32 %shr29, 1, !dbg !348
  %conv31 = trunc i32 %and30 to i8, !dbg !348
  %42 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !349
  %dock = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %42, i32 0, i32 8, !dbg !350
  store i8 %conv31, i8* %dock, align 1, !dbg !351
  %43 = load i32, i32* %dword, align 4, !dbg !352
  %shr32 = lshr i32 %43, 2, !dbg !352
  %and33 = and i32 %shr32, 1, !dbg !352
  %conv34 = trunc i32 %and33 to i8, !dbg !352
  %44 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !353
  %lid = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %44, i32 0, i32 9, !dbg !354
  store i8 %conv34, i8* %lid, align 2, !dbg !355
  %45 = load i32, i32* %dword, align 4, !dbg !356
  %shr35 = lshr i32 %45, 3, !dbg !356
  %and36 = and i32 %shr35, 7, !dbg !356
  %conv37 = trunc i32 %and36 to i8, !dbg !356
  %46 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !357
  %panel = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %46, i32 0, i32 10, !dbg !358
  store i8 %conv37, i8* %panel, align 1, !dbg !359
  %47 = load i32, i32* %dword, align 4, !dbg !360
  %shr38 = lshr i32 %47, 6, !dbg !360
  %and39 = and i32 %shr38, 3, !dbg !360
  %conv40 = trunc i32 %and39 to i8, !dbg !360
  %48 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !361
  %vertical_position = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %48, i32 0, i32 11, !dbg !362
  store i8 %conv40, i8* %vertical_position, align 2, !dbg !363
  %49 = load i32, i32* %dword, align 4, !dbg !364
  %shr41 = lshr i32 %49, 8, !dbg !364
  %and42 = and i32 %shr41, 3, !dbg !364
  %conv43 = trunc i32 %and42 to i8, !dbg !364
  %50 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !365
  %horizontal_position = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %50, i32 0, i32 12, !dbg !366
  store i8 %conv43, i8* %horizontal_position, align 1, !dbg !367
  %51 = load i32, i32* %dword, align 4, !dbg !368
  %shr44 = lshr i32 %51, 10, !dbg !368
  %and45 = and i32 %shr44, 15, !dbg !368
  %conv46 = trunc i32 %and45 to i8, !dbg !368
  %52 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !369
  %shape = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %52, i32 0, i32 13, !dbg !370
  store i8 %conv46, i8* %shape, align 2, !dbg !371
  %53 = load i32, i32* %dword, align 4, !dbg !372
  %shr47 = lshr i32 %53, 14, !dbg !372
  %and48 = and i32 %shr47, 1, !dbg !372
  %conv49 = trunc i32 %and48 to i8, !dbg !372
  %54 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !373
  %group_orientation = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %54, i32 0, i32 14, !dbg !374
  store i8 %conv49, i8* %group_orientation, align 1, !dbg !375
  %55 = load i32, i32* %dword, align 4, !dbg !376
  %shr50 = lshr i32 %55, 15, !dbg !376
  %and51 = and i32 %shr50, 255, !dbg !376
  %conv52 = trunc i32 %and51 to i8, !dbg !376
  %56 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !377
  %group_token = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %56, i32 0, i32 15, !dbg !378
  store i8 %conv52, i8* %group_token, align 2, !dbg !379
  %57 = load i32, i32* %dword, align 4, !dbg !380
  %shr53 = lshr i32 %57, 23, !dbg !380
  %and54 = and i32 %shr53, 255, !dbg !380
  %conv55 = trunc i32 %and54 to i8, !dbg !380
  %58 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !381
  %group_position = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %58, i32 0, i32 16, !dbg !382
  store i8 %conv55, i8* %group_position, align 1, !dbg !383
  %59 = load i32, i32* %dword, align 4, !dbg !384
  %shr56 = lshr i32 %59, 31, !dbg !384
  %and57 = and i32 %shr56, 1, !dbg !384
  %conv58 = trunc i32 %and57 to i8, !dbg !384
  %60 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !385
  %bay = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %60, i32 0, i32 17, !dbg !386
  store i8 %conv58, i8* %bay, align 2, !dbg !387
  %61 = load i32*, i32** %buffer, align 8, !dbg !388
  %arrayidx59 = getelementptr i32, i32* %61, i64 3, !dbg !388
  %62 = bitcast i32* %arrayidx59 to i8*, !dbg !388
  %63 = bitcast i8* %62 to i32*, !dbg !388
  %64 = load i32, i32* %63, align 4, !dbg !388
  %65 = bitcast i32* %dword to i8*, !dbg !388
  %66 = bitcast i8* %65 to i32*, !dbg !388
  store i32 %64, i32* %66, align 4, !dbg !388
  %67 = load i32, i32* %dword, align 4, !dbg !389
  %shr60 = lshr i32 %67, 0, !dbg !389
  %and61 = and i32 %shr60, 1, !dbg !389
  %conv62 = trunc i32 %and61 to i8, !dbg !389
  %68 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !390
  %ejectable = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %68, i32 0, i32 18, !dbg !391
  store i8 %conv62, i8* %ejectable, align 1, !dbg !392
  %69 = load i32, i32* %dword, align 4, !dbg !393
  %shr63 = lshr i32 %69, 1, !dbg !393
  %and64 = and i32 %shr63, 1, !dbg !393
  %conv65 = trunc i32 %and64 to i8, !dbg !393
  %70 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !394
  %ospm_eject_required = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %70, i32 0, i32 19, !dbg !395
  store i8 %conv65, i8* %ospm_eject_required, align 2, !dbg !396
  %71 = load i32, i32* %dword, align 4, !dbg !397
  %shr66 = lshr i32 %71, 2, !dbg !397
  %and67 = and i32 %shr66, 255, !dbg !397
  %conv68 = trunc i32 %and67 to i8, !dbg !397
  %72 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !398
  %cabinet_number = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %72, i32 0, i32 20, !dbg !399
  store i8 %conv68, i8* %cabinet_number, align 1, !dbg !400
  %73 = load i32, i32* %dword, align 4, !dbg !401
  %shr69 = lshr i32 %73, 10, !dbg !401
  %and70 = and i32 %shr69, 255, !dbg !401
  %conv71 = trunc i32 %and70 to i8, !dbg !401
  %74 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !402
  %card_cage_number = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %74, i32 0, i32 21, !dbg !403
  store i8 %conv71, i8* %card_cage_number, align 2, !dbg !404
  %75 = load i32, i32* %dword, align 4, !dbg !405
  %shr72 = lshr i32 %75, 18, !dbg !405
  %and73 = and i32 %shr72, 1, !dbg !405
  %conv74 = trunc i32 %and73 to i8, !dbg !405
  %76 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !406
  %reference = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %76, i32 0, i32 22, !dbg !407
  store i8 %conv74, i8* %reference, align 1, !dbg !408
  %77 = load i32, i32* %dword, align 4, !dbg !409
  %shr75 = lshr i32 %77, 19, !dbg !409
  %and76 = and i32 %shr75, 15, !dbg !409
  %conv77 = trunc i32 %and76 to i8, !dbg !409
  %78 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !410
  %rotation = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %78, i32 0, i32 23, !dbg !411
  store i8 %conv77, i8* %rotation, align 2, !dbg !412
  %79 = load i32, i32* %dword, align 4, !dbg !413
  %shr78 = lshr i32 %79, 23, !dbg !413
  %and79 = and i32 %shr78, 31, !dbg !413
  %conv80 = trunc i32 %and79 to i8, !dbg !413
  %80 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !414
  %order = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %80, i32 0, i32 24, !dbg !415
  store i8 %conv80, i8* %order, align 1, !dbg !416
  %81 = load i64, i64* %length.addr, align 8, !dbg !417
  %cmp81 = icmp uge i64 %81, 20, !dbg !419
  br i1 %cmp81, label %if.then83, label %if.end91, !dbg !420

if.then83:                                        ; preds = %if.end5
  %82 = load i32*, i32** %buffer, align 8, !dbg !421
  %arrayidx84 = getelementptr i32, i32* %82, i64 4, !dbg !421
  %83 = bitcast i32* %arrayidx84 to i8*, !dbg !421
  %84 = bitcast i8* %83 to i32*, !dbg !421
  %85 = load i32, i32* %84, align 4, !dbg !421
  %86 = bitcast i32* %dword to i8*, !dbg !421
  %87 = bitcast i8* %86 to i32*, !dbg !421
  store i32 %85, i32* %87, align 4, !dbg !421
  %88 = load i32, i32* %dword, align 4, !dbg !423
  %shr85 = lshr i32 %88, 0, !dbg !423
  %and86 = and i32 %shr85, 65535, !dbg !423
  %conv87 = trunc i32 %and86 to i16, !dbg !423
  %89 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !424
  %vertical_offset = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %89, i32 0, i32 26, !dbg !425
  store i16 %conv87, i16* %vertical_offset, align 2, !dbg !426
  %90 = load i32, i32* %dword, align 4, !dbg !427
  %shr88 = lshr i32 %90, 16, !dbg !427
  %and89 = and i32 %shr88, 65535, !dbg !427
  %conv90 = trunc i32 %and89 to i16, !dbg !427
  %91 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !428
  %horizontal_offset = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %91, i32 0, i32 27, !dbg !429
  store i16 %conv90, i16* %horizontal_offset, align 2, !dbg !430
  br label %if.end91, !dbg !431

if.end91:                                         ; preds = %if.then83, %if.end5
  %92 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %pld_info, align 8, !dbg !432
  %93 = load %struct.acpi_pld_info**, %struct.acpi_pld_info*** %return_buffer.addr, align 8, !dbg !433
  store %struct.acpi_pld_info* %92, %struct.acpi_pld_info** %93, align 8, !dbg !434
  store i32 0, i32* %retval, align 4, !dbg !435
  br label %return, !dbg !435

return:                                           ; preds = %if.end91, %if.then4, %if.then
  %94 = load i32, i32* %retval, align 4, !dbg !436
  ret i32 %94, !dbg !436
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #3 !dbg !437 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !441, metadata !DIExpression()), !dbg !447
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !451, metadata !DIExpression()), !dbg !452
  %0 = load i64, i64* %size.addr, align 8, !dbg !453
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !454, metadata !DIExpression()), !dbg !455
  br label %do.body, !dbg !455

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !456, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !460, metadata !DIExpression()), !dbg !459
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !459
  %conv = zext i1 %cmp to i32, !dbg !459
  store i32 1, i32* %tmp, align 4, !dbg !459
  %1 = load i32, i32* %tmp, align 4, !dbg !459
  %call = call i64 @arch_local_save_flags() #9, !dbg !461
  store i64 %call, i64* %_flags, align 8, !dbg !461
  br label %do.end, !dbg !461

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !462, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !465, metadata !DIExpression()), !dbg !464
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !464
  %conv6 = zext i1 %cmp5 to i32, !dbg !464
  store i32 1, i32* %tmp7, align 4, !dbg !464
  %2 = load i32, i32* %tmp7, align 4, !dbg !464
  %3 = load i64, i64* %_flags, align 8, !dbg !466
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !467
  %and.i = and i64 %4, 512, !dbg !468
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !469
  %lnot.i = xor i1 %tobool.i, true, !dbg !469
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !469
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !466
  %5 = load i32, i32* %tmp8, align 4, !dbg !466
  store i32 %5, i32* %tmp1, align 4, !dbg !461
  %6 = load i32, i32* %tmp1, align 4, !dbg !455
  %tobool = icmp ne i32 %6, 0, !dbg !470
  %7 = zext i1 %tobool to i64, !dbg !470
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !470
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #9, !dbg !471
  ret i8* %call10, !dbg !472
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #3 !dbg !473 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !480, metadata !DIExpression()), !dbg !487
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !493, metadata !DIExpression()), !dbg !494
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !495, metadata !DIExpression()), !dbg !496
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !497, metadata !DIExpression()), !dbg !498
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !499, metadata !DIExpression()), !dbg !503
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !505, metadata !DIExpression()), !dbg !509
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !511, metadata !DIExpression()), !dbg !515
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !520, metadata !DIExpression()), !dbg !521
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !522, metadata !DIExpression()), !dbg !523
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !524, metadata !DIExpression()), !dbg !525
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !526, metadata !DIExpression()), !dbg !527
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !528, metadata !DIExpression()), !dbg !529
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !530, metadata !DIExpression()), !dbg !531
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !532, metadata !DIExpression()), !dbg !533
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !534, metadata !DIExpression()), !dbg !535
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !536, metadata !DIExpression()), !dbg !537
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !538, metadata !DIExpression()), !dbg !539
  %0 = load i64, i64* %size.addr, align 8, !dbg !540
  %1 = load i32, i32* %flags.addr, align 4, !dbg !541
  %or = or i32 %1, 256, !dbg !542
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !543
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !544
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !545

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !546
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !547
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !548

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !549
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !550
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !551
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !552
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !529
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !553
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !554
  %10 = load i32, i32* %order.i.i, align 4, !dbg !555
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !556
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !557
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !558
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !559
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !559
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !559
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !559
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !559
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !560
  br label %kmalloc.exit, !dbg !560

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !561
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !562
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !562
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !564

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !565
  br label %kmalloc_index.exit.i, !dbg !565

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !566
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !568
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !569

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !570
  br label %kmalloc_index.exit.i, !dbg !570

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !571
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !573
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !574

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !575
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !576
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !577

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !578
  br label %kmalloc_index.exit.i, !dbg !578

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !579
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !581
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !582

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !583
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !584
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !585

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !586
  br label %kmalloc_index.exit.i, !dbg !586

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !587
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !589
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !590

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !591
  br label %kmalloc_index.exit.i, !dbg !591

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !592
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !594
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !595

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !596
  br label %kmalloc_index.exit.i, !dbg !596

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !597
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !599
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !600

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !601
  br label %kmalloc_index.exit.i, !dbg !601

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !602
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !604
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !605

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !606
  br label %kmalloc_index.exit.i, !dbg !606

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !607
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !609
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !610

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !611
  br label %kmalloc_index.exit.i, !dbg !611

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !612
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !614
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !615

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !616
  br label %kmalloc_index.exit.i, !dbg !616

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !617
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !619
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !620

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !621
  br label %kmalloc_index.exit.i, !dbg !621

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !622
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !624
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !625

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !626
  br label %kmalloc_index.exit.i, !dbg !626

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !627
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !629
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !630

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !631
  br label %kmalloc_index.exit.i, !dbg !631

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !632
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !634
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !635

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !636
  br label %kmalloc_index.exit.i, !dbg !636

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !637
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !639
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !640

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !641
  br label %kmalloc_index.exit.i, !dbg !641

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !642
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !644
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !645

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !646
  br label %kmalloc_index.exit.i, !dbg !646

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !647
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !649
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !650

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !651
  br label %kmalloc_index.exit.i, !dbg !651

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !652
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !654
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !655

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !656
  br label %kmalloc_index.exit.i, !dbg !656

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !657
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !659
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !660

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !661
  br label %kmalloc_index.exit.i, !dbg !661

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !662
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !664
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !665

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !666
  br label %kmalloc_index.exit.i, !dbg !666

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !667
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !669
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !670

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !671
  br label %kmalloc_index.exit.i, !dbg !671

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !672
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !674
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !675

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !676
  br label %kmalloc_index.exit.i, !dbg !676

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !677
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !679
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !680

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !681
  br label %kmalloc_index.exit.i, !dbg !681

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !682
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !684
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !685

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !686
  br label %kmalloc_index.exit.i, !dbg !686

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !687
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !689
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !690

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !691
  br label %kmalloc_index.exit.i, !dbg !691

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !692
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !694
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !695

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !696
  br label %kmalloc_index.exit.i, !dbg !696

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !697
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !699
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !700

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !701
  br label %kmalloc_index.exit.i, !dbg !701

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !702
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !704
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !705

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !706
  br label %kmalloc_index.exit.i, !dbg !706

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !707, !srcloc !710
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !711, !srcloc !714
  unreachable, !dbg !715

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !716
  store i32 %45, i32* %index.i, align 4, !dbg !717
  %46 = load i32, i32* %index.i, align 4, !dbg !718
  %tobool.i = icmp ne i32 %46, 0, !dbg !718
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !720

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !721
  br label %kmalloc.exit, !dbg !721

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !722
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !723
  %and.i.i = and i32 %48, 17, !dbg !723
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !723
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !723
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !723
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !723
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !725

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !726
  br label %kmalloc_type.exit.i, !dbg !726

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !727
  %and2.i.i = and i32 %49, 1, !dbg !728
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !727
  %50 = zext i1 %tobool3.i.i to i64, !dbg !727
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !727
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !729
  br label %kmalloc_type.exit.i, !dbg !729

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !730
  %idxprom.i = zext i32 %51 to i64, !dbg !731
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !731
  %52 = load i32, i32* %index.i, align 4, !dbg !732
  %idxprom6.i = zext i32 %52 to i64, !dbg !731
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !731
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !731
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !733
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !734
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !735
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !736
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !737
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !737
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !737
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !737
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !737
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !498
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !738
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !739
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !740
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !741
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !742
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !743
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !744
  store i8* %62, i8** %retval.i, align 8, !dbg !745
  br label %kmalloc.exit, !dbg !745

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !746
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !747
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !748
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !748
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !748
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !748
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !748
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !749
  br label %kmalloc.exit, !dbg !749

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !750
  ret i8* %65, !dbg !751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #3 !dbg !752 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !756, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !759, metadata !DIExpression()), !dbg !758
  %0 = load i64, i64* %__edi, align 8, !dbg !758
  store i64 %0, i64* %__edi, align 8, !dbg !758
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !760, metadata !DIExpression()), !dbg !758
  %1 = load i64, i64* %__esi, align 8, !dbg !758
  store i64 %1, i64* %__esi, align 8, !dbg !758
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !761, metadata !DIExpression()), !dbg !758
  %2 = load i64, i64* %__edx, align 8, !dbg !758
  store i64 %2, i64* %__edx, align 8, !dbg !758
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !762, metadata !DIExpression()), !dbg !758
  %3 = load i64, i64* %__ecx, align 8, !dbg !758
  store i64 %3, i64* %__ecx, align 8, !dbg !758
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !763, metadata !DIExpression()), !dbg !758
  %4 = load i64, i64* %__eax, align 8, !dbg !758
  store i64 %4, i64* %__eax, align 8, !dbg !758
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !758
  %6 = call i64 @llvm.read_register.i64(metadata !27), !dbg !764
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !764, !srcloc !767
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !764
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !764
  store i64 %asmresult, i64* %__eax, align 8, !dbg !764
  call void @llvm.write_register.i64(metadata !27, i64 %asmresult1), !dbg !764
  %8 = load i64, i64* %__eax, align 8, !dbg !764
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !768, metadata !DIExpression()), !dbg !770
  store i64 -1, i64* %__mask, align 8, !dbg !770
  %9 = load i64, i64* %__mask, align 8, !dbg !770
  store i64 %9, i64* %tmp, align 8, !dbg !770
  %10 = load i64, i64* %tmp, align 8, !dbg !770
  %and = and i64 %8, %10, !dbg !764
  store i64 %and, i64* %__ret, align 8, !dbg !764
  %11 = load i64, i64* %__ret, align 8, !dbg !758
  store i64 %11, i64* %tmp2, align 8, !dbg !771
  %12 = load i64, i64* %tmp2, align 8, !dbg !758
  ret i64 %12, !dbg !772
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !773 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !775, metadata !DIExpression()), !dbg !780
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !782, metadata !DIExpression()), !dbg !783
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !784, metadata !DIExpression()), !dbg !785
  %0 = load i64, i64* %size.addr, align 8, !dbg !786
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !788
  br i1 %1, label %if.then, label %if.end447, !dbg !789

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !790
  %tobool = icmp ne i64 %2, 0, !dbg !790
  br i1 %tobool, label %if.end, label %if.then1, !dbg !793

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !794
  br label %return, !dbg !794

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !795
  %cmp = icmp ult i64 %3, 4096, !dbg !797
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !798

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !799
  br label %return, !dbg !799

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub = sub i64 %4, 1, !dbg !800
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !800
  br i1 %5, label %cond.true, label %cond.false442, !dbg !800

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub4 = sub i64 %6, 1, !dbg !800
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !800
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !800

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub6 = sub i64 %8, 1, !dbg !800
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !800
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !800

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !800

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub9 = sub i64 %9, 1, !dbg !800
  %and = and i64 %sub9, -9223372036854775808, !dbg !800
  %tobool10 = icmp ne i64 %and, 0, !dbg !800
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !800

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !800

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub13 = sub i64 %10, 1, !dbg !800
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !800
  %tobool15 = icmp ne i64 %and14, 0, !dbg !800
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !800

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !800

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub18 = sub i64 %11, 1, !dbg !800
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !800
  %tobool20 = icmp ne i64 %and19, 0, !dbg !800
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !800

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !800

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub23 = sub i64 %12, 1, !dbg !800
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !800
  %tobool25 = icmp ne i64 %and24, 0, !dbg !800
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !800

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !800

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub28 = sub i64 %13, 1, !dbg !800
  %and29 = and i64 %sub28, 576460752303423488, !dbg !800
  %tobool30 = icmp ne i64 %and29, 0, !dbg !800
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !800

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !800

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub33 = sub i64 %14, 1, !dbg !800
  %and34 = and i64 %sub33, 288230376151711744, !dbg !800
  %tobool35 = icmp ne i64 %and34, 0, !dbg !800
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !800

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !800

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub38 = sub i64 %15, 1, !dbg !800
  %and39 = and i64 %sub38, 144115188075855872, !dbg !800
  %tobool40 = icmp ne i64 %and39, 0, !dbg !800
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !800

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !800

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub43 = sub i64 %16, 1, !dbg !800
  %and44 = and i64 %sub43, 72057594037927936, !dbg !800
  %tobool45 = icmp ne i64 %and44, 0, !dbg !800
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !800

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !800

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub48 = sub i64 %17, 1, !dbg !800
  %and49 = and i64 %sub48, 36028797018963968, !dbg !800
  %tobool50 = icmp ne i64 %and49, 0, !dbg !800
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !800

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !800

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub53 = sub i64 %18, 1, !dbg !800
  %and54 = and i64 %sub53, 18014398509481984, !dbg !800
  %tobool55 = icmp ne i64 %and54, 0, !dbg !800
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !800

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !800

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub58 = sub i64 %19, 1, !dbg !800
  %and59 = and i64 %sub58, 9007199254740992, !dbg !800
  %tobool60 = icmp ne i64 %and59, 0, !dbg !800
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !800

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !800

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub63 = sub i64 %20, 1, !dbg !800
  %and64 = and i64 %sub63, 4503599627370496, !dbg !800
  %tobool65 = icmp ne i64 %and64, 0, !dbg !800
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !800

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !800

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub68 = sub i64 %21, 1, !dbg !800
  %and69 = and i64 %sub68, 2251799813685248, !dbg !800
  %tobool70 = icmp ne i64 %and69, 0, !dbg !800
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !800

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !800

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub73 = sub i64 %22, 1, !dbg !800
  %and74 = and i64 %sub73, 1125899906842624, !dbg !800
  %tobool75 = icmp ne i64 %and74, 0, !dbg !800
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !800

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !800

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub78 = sub i64 %23, 1, !dbg !800
  %and79 = and i64 %sub78, 562949953421312, !dbg !800
  %tobool80 = icmp ne i64 %and79, 0, !dbg !800
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !800

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !800

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub83 = sub i64 %24, 1, !dbg !800
  %and84 = and i64 %sub83, 281474976710656, !dbg !800
  %tobool85 = icmp ne i64 %and84, 0, !dbg !800
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !800

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !800

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub88 = sub i64 %25, 1, !dbg !800
  %and89 = and i64 %sub88, 140737488355328, !dbg !800
  %tobool90 = icmp ne i64 %and89, 0, !dbg !800
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !800

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !800

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub93 = sub i64 %26, 1, !dbg !800
  %and94 = and i64 %sub93, 70368744177664, !dbg !800
  %tobool95 = icmp ne i64 %and94, 0, !dbg !800
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !800

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !800

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub98 = sub i64 %27, 1, !dbg !800
  %and99 = and i64 %sub98, 35184372088832, !dbg !800
  %tobool100 = icmp ne i64 %and99, 0, !dbg !800
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !800

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !800

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub103 = sub i64 %28, 1, !dbg !800
  %and104 = and i64 %sub103, 17592186044416, !dbg !800
  %tobool105 = icmp ne i64 %and104, 0, !dbg !800
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !800

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !800

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub108 = sub i64 %29, 1, !dbg !800
  %and109 = and i64 %sub108, 8796093022208, !dbg !800
  %tobool110 = icmp ne i64 %and109, 0, !dbg !800
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !800

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !800

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub113 = sub i64 %30, 1, !dbg !800
  %and114 = and i64 %sub113, 4398046511104, !dbg !800
  %tobool115 = icmp ne i64 %and114, 0, !dbg !800
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !800

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !800

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub118 = sub i64 %31, 1, !dbg !800
  %and119 = and i64 %sub118, 2199023255552, !dbg !800
  %tobool120 = icmp ne i64 %and119, 0, !dbg !800
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !800

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !800

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub123 = sub i64 %32, 1, !dbg !800
  %and124 = and i64 %sub123, 1099511627776, !dbg !800
  %tobool125 = icmp ne i64 %and124, 0, !dbg !800
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !800

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !800

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub128 = sub i64 %33, 1, !dbg !800
  %and129 = and i64 %sub128, 549755813888, !dbg !800
  %tobool130 = icmp ne i64 %and129, 0, !dbg !800
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !800

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !800

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub133 = sub i64 %34, 1, !dbg !800
  %and134 = and i64 %sub133, 274877906944, !dbg !800
  %tobool135 = icmp ne i64 %and134, 0, !dbg !800
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !800

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !800

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub138 = sub i64 %35, 1, !dbg !800
  %and139 = and i64 %sub138, 137438953472, !dbg !800
  %tobool140 = icmp ne i64 %and139, 0, !dbg !800
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !800

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !800

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub143 = sub i64 %36, 1, !dbg !800
  %and144 = and i64 %sub143, 68719476736, !dbg !800
  %tobool145 = icmp ne i64 %and144, 0, !dbg !800
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !800

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !800

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub148 = sub i64 %37, 1, !dbg !800
  %and149 = and i64 %sub148, 34359738368, !dbg !800
  %tobool150 = icmp ne i64 %and149, 0, !dbg !800
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !800

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !800

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub153 = sub i64 %38, 1, !dbg !800
  %and154 = and i64 %sub153, 17179869184, !dbg !800
  %tobool155 = icmp ne i64 %and154, 0, !dbg !800
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !800

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !800

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub158 = sub i64 %39, 1, !dbg !800
  %and159 = and i64 %sub158, 8589934592, !dbg !800
  %tobool160 = icmp ne i64 %and159, 0, !dbg !800
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !800

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !800

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub163 = sub i64 %40, 1, !dbg !800
  %and164 = and i64 %sub163, 4294967296, !dbg !800
  %tobool165 = icmp ne i64 %and164, 0, !dbg !800
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !800

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !800

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub168 = sub i64 %41, 1, !dbg !800
  %and169 = and i64 %sub168, 2147483648, !dbg !800
  %tobool170 = icmp ne i64 %and169, 0, !dbg !800
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !800

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !800

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub173 = sub i64 %42, 1, !dbg !800
  %and174 = and i64 %sub173, 1073741824, !dbg !800
  %tobool175 = icmp ne i64 %and174, 0, !dbg !800
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !800

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !800

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub178 = sub i64 %43, 1, !dbg !800
  %and179 = and i64 %sub178, 536870912, !dbg !800
  %tobool180 = icmp ne i64 %and179, 0, !dbg !800
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !800

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !800

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub183 = sub i64 %44, 1, !dbg !800
  %and184 = and i64 %sub183, 268435456, !dbg !800
  %tobool185 = icmp ne i64 %and184, 0, !dbg !800
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !800

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !800

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub188 = sub i64 %45, 1, !dbg !800
  %and189 = and i64 %sub188, 134217728, !dbg !800
  %tobool190 = icmp ne i64 %and189, 0, !dbg !800
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !800

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !800

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub193 = sub i64 %46, 1, !dbg !800
  %and194 = and i64 %sub193, 67108864, !dbg !800
  %tobool195 = icmp ne i64 %and194, 0, !dbg !800
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !800

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !800

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub198 = sub i64 %47, 1, !dbg !800
  %and199 = and i64 %sub198, 33554432, !dbg !800
  %tobool200 = icmp ne i64 %and199, 0, !dbg !800
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !800

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !800

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub203 = sub i64 %48, 1, !dbg !800
  %and204 = and i64 %sub203, 16777216, !dbg !800
  %tobool205 = icmp ne i64 %and204, 0, !dbg !800
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !800

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !800

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub208 = sub i64 %49, 1, !dbg !800
  %and209 = and i64 %sub208, 8388608, !dbg !800
  %tobool210 = icmp ne i64 %and209, 0, !dbg !800
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !800

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !800

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub213 = sub i64 %50, 1, !dbg !800
  %and214 = and i64 %sub213, 4194304, !dbg !800
  %tobool215 = icmp ne i64 %and214, 0, !dbg !800
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !800

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !800

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub218 = sub i64 %51, 1, !dbg !800
  %and219 = and i64 %sub218, 2097152, !dbg !800
  %tobool220 = icmp ne i64 %and219, 0, !dbg !800
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !800

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !800

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub223 = sub i64 %52, 1, !dbg !800
  %and224 = and i64 %sub223, 1048576, !dbg !800
  %tobool225 = icmp ne i64 %and224, 0, !dbg !800
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !800

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !800

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub228 = sub i64 %53, 1, !dbg !800
  %and229 = and i64 %sub228, 524288, !dbg !800
  %tobool230 = icmp ne i64 %and229, 0, !dbg !800
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !800

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !800

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub233 = sub i64 %54, 1, !dbg !800
  %and234 = and i64 %sub233, 262144, !dbg !800
  %tobool235 = icmp ne i64 %and234, 0, !dbg !800
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !800

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !800

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub238 = sub i64 %55, 1, !dbg !800
  %and239 = and i64 %sub238, 131072, !dbg !800
  %tobool240 = icmp ne i64 %and239, 0, !dbg !800
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !800

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !800

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub243 = sub i64 %56, 1, !dbg !800
  %and244 = and i64 %sub243, 65536, !dbg !800
  %tobool245 = icmp ne i64 %and244, 0, !dbg !800
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !800

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !800

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub248 = sub i64 %57, 1, !dbg !800
  %and249 = and i64 %sub248, 32768, !dbg !800
  %tobool250 = icmp ne i64 %and249, 0, !dbg !800
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !800

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !800

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub253 = sub i64 %58, 1, !dbg !800
  %and254 = and i64 %sub253, 16384, !dbg !800
  %tobool255 = icmp ne i64 %and254, 0, !dbg !800
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !800

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !800

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub258 = sub i64 %59, 1, !dbg !800
  %and259 = and i64 %sub258, 8192, !dbg !800
  %tobool260 = icmp ne i64 %and259, 0, !dbg !800
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !800

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !800

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub263 = sub i64 %60, 1, !dbg !800
  %and264 = and i64 %sub263, 4096, !dbg !800
  %tobool265 = icmp ne i64 %and264, 0, !dbg !800
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !800

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !800

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub268 = sub i64 %61, 1, !dbg !800
  %and269 = and i64 %sub268, 2048, !dbg !800
  %tobool270 = icmp ne i64 %and269, 0, !dbg !800
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !800

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !800

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub273 = sub i64 %62, 1, !dbg !800
  %and274 = and i64 %sub273, 1024, !dbg !800
  %tobool275 = icmp ne i64 %and274, 0, !dbg !800
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !800

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !800

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub278 = sub i64 %63, 1, !dbg !800
  %and279 = and i64 %sub278, 512, !dbg !800
  %tobool280 = icmp ne i64 %and279, 0, !dbg !800
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !800

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !800

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub283 = sub i64 %64, 1, !dbg !800
  %and284 = and i64 %sub283, 256, !dbg !800
  %tobool285 = icmp ne i64 %and284, 0, !dbg !800
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !800

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !800

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub288 = sub i64 %65, 1, !dbg !800
  %and289 = and i64 %sub288, 128, !dbg !800
  %tobool290 = icmp ne i64 %and289, 0, !dbg !800
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !800

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !800

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub293 = sub i64 %66, 1, !dbg !800
  %and294 = and i64 %sub293, 64, !dbg !800
  %tobool295 = icmp ne i64 %and294, 0, !dbg !800
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !800

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !800

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub298 = sub i64 %67, 1, !dbg !800
  %and299 = and i64 %sub298, 32, !dbg !800
  %tobool300 = icmp ne i64 %and299, 0, !dbg !800
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !800

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !800

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub303 = sub i64 %68, 1, !dbg !800
  %and304 = and i64 %sub303, 16, !dbg !800
  %tobool305 = icmp ne i64 %and304, 0, !dbg !800
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !800

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !800

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub308 = sub i64 %69, 1, !dbg !800
  %and309 = and i64 %sub308, 8, !dbg !800
  %tobool310 = icmp ne i64 %and309, 0, !dbg !800
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !800

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !800

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub313 = sub i64 %70, 1, !dbg !800
  %and314 = and i64 %sub313, 4, !dbg !800
  %tobool315 = icmp ne i64 %and314, 0, !dbg !800
  %71 = zext i1 %tobool315 to i64, !dbg !800
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !800
  br label %cond.end, !dbg !800

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !800
  br label %cond.end317, !dbg !800

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !800
  br label %cond.end319, !dbg !800

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !800
  br label %cond.end321, !dbg !800

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !800
  br label %cond.end323, !dbg !800

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !800
  br label %cond.end325, !dbg !800

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !800
  br label %cond.end327, !dbg !800

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !800
  br label %cond.end329, !dbg !800

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !800
  br label %cond.end331, !dbg !800

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !800
  br label %cond.end333, !dbg !800

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !800
  br label %cond.end335, !dbg !800

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !800
  br label %cond.end337, !dbg !800

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !800
  br label %cond.end339, !dbg !800

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !800
  br label %cond.end341, !dbg !800

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !800
  br label %cond.end343, !dbg !800

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !800
  br label %cond.end345, !dbg !800

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !800
  br label %cond.end347, !dbg !800

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !800
  br label %cond.end349, !dbg !800

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !800
  br label %cond.end351, !dbg !800

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !800
  br label %cond.end353, !dbg !800

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !800
  br label %cond.end355, !dbg !800

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !800
  br label %cond.end357, !dbg !800

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !800
  br label %cond.end359, !dbg !800

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !800
  br label %cond.end361, !dbg !800

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !800
  br label %cond.end363, !dbg !800

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !800
  br label %cond.end365, !dbg !800

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !800
  br label %cond.end367, !dbg !800

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !800
  br label %cond.end369, !dbg !800

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !800
  br label %cond.end371, !dbg !800

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !800
  br label %cond.end373, !dbg !800

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !800
  br label %cond.end375, !dbg !800

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !800
  br label %cond.end377, !dbg !800

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !800
  br label %cond.end379, !dbg !800

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !800
  br label %cond.end381, !dbg !800

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !800
  br label %cond.end383, !dbg !800

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !800
  br label %cond.end385, !dbg !800

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !800
  br label %cond.end387, !dbg !800

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !800
  br label %cond.end389, !dbg !800

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !800
  br label %cond.end391, !dbg !800

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !800
  br label %cond.end393, !dbg !800

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !800
  br label %cond.end395, !dbg !800

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !800
  br label %cond.end397, !dbg !800

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !800
  br label %cond.end399, !dbg !800

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !800
  br label %cond.end401, !dbg !800

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !800
  br label %cond.end403, !dbg !800

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !800
  br label %cond.end405, !dbg !800

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !800
  br label %cond.end407, !dbg !800

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !800
  br label %cond.end409, !dbg !800

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !800
  br label %cond.end411, !dbg !800

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !800
  br label %cond.end413, !dbg !800

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !800
  br label %cond.end415, !dbg !800

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !800
  br label %cond.end417, !dbg !800

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !800
  br label %cond.end419, !dbg !800

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !800
  br label %cond.end421, !dbg !800

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !800
  br label %cond.end423, !dbg !800

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !800
  br label %cond.end425, !dbg !800

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !800
  br label %cond.end427, !dbg !800

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !800
  br label %cond.end429, !dbg !800

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !800
  br label %cond.end431, !dbg !800

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !800
  br label %cond.end433, !dbg !800

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !800
  br label %cond.end435, !dbg !800

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !800
  br label %cond.end437, !dbg !800

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !800
  br label %cond.end440, !dbg !800

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !800

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !800
  br label %cond.end444, !dbg !800

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !800
  %sub443 = sub i64 %72, 1, !dbg !800
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !800
  br label %cond.end444, !dbg !800

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !800
  %sub446 = sub i32 %cond445, 12, !dbg !801
  %add = add i32 %sub446, 1, !dbg !802
  store i32 %add, i32* %retval, align 4, !dbg !803
  br label %return, !dbg !803

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !804
  %dec = add i64 %73, -1, !dbg !804
  store i64 %dec, i64* %size.addr, align 8, !dbg !804
  %74 = load i64, i64* %size.addr, align 8, !dbg !805
  %shr = lshr i64 %74, 12, !dbg !805
  store i64 %shr, i64* %size.addr, align 8, !dbg !805
  %75 = load i64, i64* %size.addr, align 8, !dbg !806
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !783
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !807
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !808
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !807, !srcloc !809
  store i32 %78, i32* %bitpos.i, align 4, !dbg !807
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !810
  %add.i = add i32 %79, 1, !dbg !811
  store i32 %add.i, i32* %retval, align 4, !dbg !812
  br label %return, !dbg !812

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !813
  ret i32 %80, !dbg !813
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !814 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !775, metadata !DIExpression()), !dbg !818
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !782, metadata !DIExpression()), !dbg !820
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !821, metadata !DIExpression()), !dbg !822
  %0 = load i64, i64* %n.addr, align 8, !dbg !823
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !820
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !824
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !825
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !824, !srcloc !809
  store i32 %3, i32* %bitpos.i, align 4, !dbg !824
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !826
  %add.i = add i32 %4, 1, !dbg !827
  %sub = sub i32 %add.i, 1, !dbg !828
  ret i32 %sub, !dbg !829
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #3 !dbg !830 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !836, metadata !DIExpression()), !dbg !837
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !838, metadata !DIExpression()), !dbg !839
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !840, metadata !DIExpression()), !dbg !841
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !842, metadata !DIExpression()), !dbg !843
  %0 = load i8*, i8** %object.addr, align 8, !dbg !844
  ret i8* %0, !dbg !845
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utxface.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4, line: 305, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!11 = !{!12, !14, !18, !19, !20, !24, !26}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !13, line: 421, baseType: !14)
!13 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !5)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !13, line: 127, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !15, line: 23, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !17, line: 31, baseType: !23)
!23 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 148, baseType: !5)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !{!"rsp"}
!28 = !{i32 7, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"Code Model", i32 2}
!32 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!33 = distinct !DISubprogram(name: "acpi_terminate", scope: !1, file: !1, line: 30, type: !34, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{!12}
!36 = !{}
!37 = !DILocalVariable(name: "status", scope: !33, file: !1, line: 32, type: !12)
!38 = !DILocation(line: 32, column: 14, scope: !33)
!39 = !DILocation(line: 38, column: 2, scope: !33)
!40 = !DILocation(line: 42, column: 2, scope: !33)
!41 = !DILocation(line: 46, column: 11, scope: !33)
!42 = !DILocation(line: 46, column: 9, scope: !33)
!43 = !DILocation(line: 47, column: 2, scope: !33)
!44 = distinct !DISubprogram(name: "acpi_purge_cached_objects", scope: !1, file: !1, line: 233, type: !34, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!45 = !DILocation(line: 237, column: 28, scope: !44)
!46 = !DILocation(line: 237, column: 8, scope: !44)
!47 = !DILocation(line: 238, column: 28, scope: !44)
!48 = !DILocation(line: 238, column: 8, scope: !44)
!49 = !DILocation(line: 239, column: 28, scope: !44)
!50 = !DILocation(line: 239, column: 8, scope: !44)
!51 = !DILocation(line: 240, column: 28, scope: !44)
!52 = !DILocation(line: 240, column: 8, scope: !44)
!53 = !DILocation(line: 242, column: 2, scope: !44)
!54 = distinct !DISubprogram(name: "acpi_install_interface", scope: !1, file: !1, line: 258, type: !55, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!55 = !DISubroutineType(types: !56)
!56 = !{!12, !57}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !13, line: 423, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!60 = !DILocalVariable(name: "interface_name", arg: 1, scope: !54, file: !1, line: 258, type: !57)
!61 = !DILocation(line: 258, column: 48, scope: !54)
!62 = !DILocalVariable(name: "status", scope: !54, file: !1, line: 260, type: !12)
!63 = !DILocation(line: 260, column: 14, scope: !54)
!64 = !DILocalVariable(name: "interface_info", scope: !54, file: !1, line: 261, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_interface_info", file: !67, line: 1045, size: 192, elements: !68)
!67 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !75}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !66, file: !67, line: 1046, baseType: !58, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !66, file: !67, line: 1047, baseType: !65, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !67, line: 1048, baseType: !72, size: 8, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !15, line: 17, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !17, line: 21, baseType: !74)
!74 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !66, file: !67, line: 1049, baseType: !72, size: 8, offset: 136)
!76 = !DILocation(line: 261, column: 30, scope: !54)
!77 = !DILocation(line: 265, column: 7, scope: !78)
!78 = distinct !DILexicalBlock(scope: !54, file: !1, line: 265, column: 6)
!79 = !DILocation(line: 265, column: 22, scope: !78)
!80 = !DILocation(line: 265, column: 33, scope: !78)
!81 = !DILocation(line: 265, column: 26, scope: !78)
!82 = !DILocation(line: 265, column: 49, scope: !78)
!83 = !DILocation(line: 265, column: 6, scope: !54)
!84 = !DILocation(line: 266, column: 3, scope: !85)
!85 = distinct !DILexicalBlock(scope: !78, file: !1, line: 265, column: 56)
!86 = !DILocation(line: 269, column: 11, scope: !54)
!87 = !DILocation(line: 269, column: 9, scope: !54)
!88 = !DILocation(line: 270, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !54, file: !1, line: 270, column: 6)
!90 = !DILocation(line: 270, column: 6, scope: !54)
!91 = !DILocation(line: 271, column: 11, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 270, column: 28)
!93 = !DILocation(line: 271, column: 3, scope: !92)
!94 = !DILocation(line: 276, column: 41, scope: !54)
!95 = !DILocation(line: 276, column: 19, scope: !54)
!96 = !DILocation(line: 276, column: 17, scope: !54)
!97 = !DILocation(line: 277, column: 6, scope: !98)
!98 = distinct !DILexicalBlock(scope: !54, file: !1, line: 277, column: 6)
!99 = !DILocation(line: 277, column: 6, scope: !54)
!100 = !DILocation(line: 282, column: 7, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 282, column: 7)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 277, column: 22)
!103 = !DILocation(line: 282, column: 23, scope: !101)
!104 = !DILocation(line: 282, column: 29, scope: !101)
!105 = !DILocation(line: 282, column: 7, scope: !102)
!106 = !DILocation(line: 283, column: 4, scope: !107)
!107 = distinct !DILexicalBlock(scope: !101, file: !1, line: 282, column: 49)
!108 = !DILocation(line: 283, column: 20, scope: !107)
!109 = !DILocation(line: 283, column: 26, scope: !107)
!110 = !DILocation(line: 284, column: 11, scope: !107)
!111 = !DILocation(line: 285, column: 3, scope: !107)
!112 = !DILocation(line: 286, column: 11, scope: !113)
!113 = distinct !DILexicalBlock(scope: !101, file: !1, line: 285, column: 10)
!114 = !DILocation(line: 288, column: 2, scope: !102)
!115 = !DILocation(line: 291, column: 38, scope: !116)
!116 = distinct !DILexicalBlock(scope: !98, file: !1, line: 288, column: 9)
!117 = !DILocation(line: 291, column: 12, scope: !116)
!118 = !DILocation(line: 291, column: 10, scope: !116)
!119 = !DILocation(line: 294, column: 2, scope: !54)
!120 = !DILocation(line: 295, column: 10, scope: !54)
!121 = !DILocation(line: 295, column: 2, scope: !54)
!122 = !DILocation(line: 296, column: 1, scope: !54)
!123 = distinct !DISubprogram(name: "acpi_remove_interface", scope: !1, file: !1, line: 311, type: !55, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!124 = !DILocalVariable(name: "interface_name", arg: 1, scope: !123, file: !1, line: 311, type: !57)
!125 = !DILocation(line: 311, column: 47, scope: !123)
!126 = !DILocalVariable(name: "status", scope: !123, file: !1, line: 313, type: !12)
!127 = !DILocation(line: 313, column: 14, scope: !123)
!128 = !DILocation(line: 317, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !123, file: !1, line: 317, column: 6)
!130 = !DILocation(line: 317, column: 22, scope: !129)
!131 = !DILocation(line: 317, column: 33, scope: !129)
!132 = !DILocation(line: 317, column: 26, scope: !129)
!133 = !DILocation(line: 317, column: 49, scope: !129)
!134 = !DILocation(line: 317, column: 6, scope: !123)
!135 = !DILocation(line: 318, column: 3, scope: !136)
!136 = distinct !DILexicalBlock(scope: !129, file: !1, line: 317, column: 56)
!137 = !DILocation(line: 321, column: 11, scope: !123)
!138 = !DILocation(line: 321, column: 9, scope: !123)
!139 = !DILocation(line: 322, column: 6, scope: !140)
!140 = distinct !DILexicalBlock(scope: !123, file: !1, line: 322, column: 6)
!141 = !DILocation(line: 322, column: 6, scope: !123)
!142 = !DILocation(line: 323, column: 11, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !1, line: 322, column: 28)
!144 = !DILocation(line: 323, column: 3, scope: !143)
!145 = !DILocation(line: 326, column: 36, scope: !123)
!146 = !DILocation(line: 326, column: 11, scope: !123)
!147 = !DILocation(line: 326, column: 9, scope: !123)
!148 = !DILocation(line: 328, column: 2, scope: !123)
!149 = !DILocation(line: 329, column: 10, scope: !123)
!150 = !DILocation(line: 329, column: 2, scope: !123)
!151 = !DILocation(line: 330, column: 1, scope: !123)
!152 = distinct !DISubprogram(name: "acpi_install_interface_handler", scope: !1, file: !1, line: 348, type: !153, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!153 = !DISubroutineType(types: !154)
!154 = !{!12, !155}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interface_handler", file: !13, line: 1116, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!14, !57, !14}
!159 = !DILocalVariable(name: "handler", arg: 1, scope: !152, file: !1, line: 348, type: !155)
!160 = !DILocation(line: 348, column: 67, scope: !152)
!161 = !DILocalVariable(name: "status", scope: !152, file: !1, line: 350, type: !12)
!162 = !DILocation(line: 350, column: 14, scope: !152)
!163 = !DILocation(line: 352, column: 11, scope: !152)
!164 = !DILocation(line: 352, column: 9, scope: !152)
!165 = !DILocation(line: 353, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !152, file: !1, line: 353, column: 6)
!167 = !DILocation(line: 353, column: 6, scope: !152)
!168 = !DILocation(line: 354, column: 11, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 353, column: 28)
!170 = !DILocation(line: 354, column: 3, scope: !169)
!171 = !DILocation(line: 357, column: 6, scope: !172)
!172 = distinct !DILexicalBlock(scope: !152, file: !1, line: 357, column: 6)
!173 = !DILocation(line: 357, column: 14, scope: !172)
!174 = !DILocation(line: 357, column: 17, scope: !172)
!175 = !DILocation(line: 357, column: 6, scope: !152)
!176 = !DILocation(line: 358, column: 10, scope: !177)
!177 = distinct !DILexicalBlock(scope: !172, file: !1, line: 357, column: 45)
!178 = !DILocation(line: 359, column: 2, scope: !177)
!179 = !DILocation(line: 360, column: 32, scope: !180)
!180 = distinct !DILexicalBlock(scope: !172, file: !1, line: 359, column: 9)
!181 = !DILocation(line: 360, column: 30, scope: !180)
!182 = !DILocation(line: 363, column: 2, scope: !152)
!183 = !DILocation(line: 364, column: 10, scope: !152)
!184 = !DILocation(line: 364, column: 2, scope: !152)
!185 = !DILocation(line: 365, column: 1, scope: !152)
!186 = distinct !DISubprogram(name: "acpi_update_interfaces", scope: !1, file: !1, line: 382, type: !187, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!187 = !DISubroutineType(types: !188)
!188 = !{!12, !72}
!189 = !DILocalVariable(name: "action", arg: 1, scope: !186, file: !1, line: 382, type: !72)
!190 = !DILocation(line: 382, column: 39, scope: !186)
!191 = !DILocalVariable(name: "status", scope: !186, file: !1, line: 384, type: !12)
!192 = !DILocation(line: 384, column: 14, scope: !186)
!193 = !DILocation(line: 386, column: 11, scope: !186)
!194 = !DILocation(line: 386, column: 9, scope: !186)
!195 = !DILocation(line: 387, column: 6, scope: !196)
!196 = distinct !DILexicalBlock(scope: !186, file: !1, line: 387, column: 6)
!197 = !DILocation(line: 387, column: 6, scope: !186)
!198 = !DILocation(line: 388, column: 11, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !1, line: 387, column: 28)
!200 = !DILocation(line: 388, column: 3, scope: !199)
!201 = !DILocation(line: 391, column: 37, scope: !186)
!202 = !DILocation(line: 391, column: 11, scope: !186)
!203 = !DILocation(line: 391, column: 9, scope: !186)
!204 = !DILocation(line: 393, column: 2, scope: !186)
!205 = !DILocation(line: 394, column: 10, scope: !186)
!206 = !DILocation(line: 394, column: 2, scope: !186)
!207 = !DILocation(line: 395, column: 1, scope: !186)
!208 = distinct !DISubprogram(name: "acpi_check_address_range", scope: !1, file: !1, line: 414, type: !209, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!209 = !DISubroutineType(types: !210)
!210 = !{!14, !211, !212, !20, !72}
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !13, line: 805, baseType: !72)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !13, line: 129, baseType: !21)
!213 = !DILocalVariable(name: "space_id", arg: 1, scope: !208, file: !1, line: 414, type: !211)
!214 = !DILocation(line: 414, column: 46, scope: !208)
!215 = !DILocalVariable(name: "address", arg: 2, scope: !208, file: !1, line: 415, type: !212)
!216 = !DILocation(line: 415, column: 27, scope: !208)
!217 = !DILocalVariable(name: "length", arg: 3, scope: !208, file: !1, line: 416, type: !20)
!218 = !DILocation(line: 416, column: 15, scope: !208)
!219 = !DILocalVariable(name: "warn", arg: 4, scope: !208, file: !1, line: 416, type: !72)
!220 = !DILocation(line: 416, column: 26, scope: !208)
!221 = !DILocalVariable(name: "overlaps", scope: !208, file: !1, line: 418, type: !14)
!222 = !DILocation(line: 418, column: 6, scope: !208)
!223 = !DILocalVariable(name: "status", scope: !208, file: !1, line: 419, type: !12)
!224 = !DILocation(line: 419, column: 14, scope: !208)
!225 = !DILocation(line: 421, column: 11, scope: !208)
!226 = !DILocation(line: 421, column: 9, scope: !208)
!227 = !DILocation(line: 422, column: 6, scope: !228)
!228 = distinct !DILexicalBlock(scope: !208, file: !1, line: 422, column: 6)
!229 = !DILocation(line: 422, column: 6, scope: !208)
!230 = !DILocation(line: 423, column: 3, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !1, line: 422, column: 28)
!232 = !DILocation(line: 426, column: 41, scope: !208)
!233 = !DILocation(line: 426, column: 51, scope: !208)
!234 = !DILocation(line: 427, column: 18, scope: !208)
!235 = !DILocation(line: 427, column: 13, scope: !208)
!236 = !DILocation(line: 427, column: 26, scope: !208)
!237 = !DILocation(line: 426, column: 13, scope: !208)
!238 = !DILocation(line: 426, column: 11, scope: !208)
!239 = !DILocation(line: 429, column: 8, scope: !208)
!240 = !DILocation(line: 430, column: 10, scope: !208)
!241 = !DILocation(line: 430, column: 2, scope: !208)
!242 = !DILocation(line: 431, column: 1, scope: !208)
!243 = distinct !DISubprogram(name: "acpi_decode_pld_buffer", scope: !1, file: !1, line: 451, type: !244, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!244 = !DISubroutineType(types: !245)
!245 = !{!12, !246, !20, !247}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pld_info", file: !250, line: 77, size: 272, elements: !251)
!250 = !DIFile(filename: "./include/acpi/acbuffer.h", directory: "/home/lizy2001/genbc/linux")
!251 = !{!252, !253, !254, !255, !256, !257, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !249, file: !250, line: 78, baseType: !72, size: 8)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_color", scope: !249, file: !250, line: 79, baseType: !72, size: 8, offset: 8)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !249, file: !250, line: 80, baseType: !72, size: 8, offset: 16)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !249, file: !250, line: 81, baseType: !72, size: 8, offset: 24)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !249, file: !250, line: 82, baseType: !72, size: 8, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !249, file: !250, line: 83, baseType: !258, size: 16, offset: 48)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !15, line: 19, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !17, line: 24, baseType: !260)
!260 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !249, file: !250, line: 84, baseType: !258, size: 16, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "user_visible", scope: !249, file: !250, line: 85, baseType: !72, size: 8, offset: 80)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !249, file: !250, line: 86, baseType: !72, size: 8, offset: 88)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !249, file: !250, line: 87, baseType: !72, size: 8, offset: 96)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !249, file: !250, line: 88, baseType: !72, size: 8, offset: 104)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !249, file: !250, line: 89, baseType: !72, size: 8, offset: 112)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !249, file: !250, line: 90, baseType: !72, size: 8, offset: 120)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !249, file: !250, line: 91, baseType: !72, size: 8, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "group_orientation", scope: !249, file: !250, line: 92, baseType: !72, size: 8, offset: 136)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "group_token", scope: !249, file: !250, line: 93, baseType: !72, size: 8, offset: 144)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "group_position", scope: !249, file: !250, line: 94, baseType: !72, size: 8, offset: 152)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "bay", scope: !249, file: !250, line: 95, baseType: !72, size: 8, offset: 160)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !249, file: !250, line: 96, baseType: !72, size: 8, offset: 168)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ospm_eject_required", scope: !249, file: !250, line: 97, baseType: !72, size: 8, offset: 176)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "cabinet_number", scope: !249, file: !250, line: 98, baseType: !72, size: 8, offset: 184)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "card_cage_number", scope: !249, file: !250, line: 99, baseType: !72, size: 8, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !249, file: !250, line: 100, baseType: !72, size: 8, offset: 200)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !249, file: !250, line: 101, baseType: !72, size: 8, offset: 208)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !249, file: !250, line: 102, baseType: !72, size: 8, offset: 216)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !249, file: !250, line: 103, baseType: !72, size: 8, offset: 224)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_offset", scope: !249, file: !250, line: 104, baseType: !258, size: 16, offset: 240)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_offset", scope: !249, file: !250, line: 105, baseType: !258, size: 16, offset: 256)
!283 = !DILocalVariable(name: "in_buffer", arg: 1, scope: !243, file: !1, line: 451, type: !246)
!284 = !DILocation(line: 451, column: 28, scope: !243)
!285 = !DILocalVariable(name: "length", arg: 2, scope: !243, file: !1, line: 452, type: !20)
!286 = !DILocation(line: 452, column: 20, scope: !243)
!287 = !DILocalVariable(name: "return_buffer", arg: 3, scope: !243, file: !1, line: 452, type: !247)
!288 = !DILocation(line: 452, column: 51, scope: !243)
!289 = !DILocalVariable(name: "pld_info", scope: !243, file: !1, line: 454, type: !248)
!290 = !DILocation(line: 454, column: 24, scope: !243)
!291 = !DILocalVariable(name: "buffer", scope: !243, file: !1, line: 455, type: !18)
!292 = !DILocation(line: 455, column: 7, scope: !243)
!293 = !DILocation(line: 455, column: 16, scope: !243)
!294 = !DILocalVariable(name: "dword", scope: !243, file: !1, line: 456, type: !14)
!295 = !DILocation(line: 456, column: 6, scope: !243)
!296 = !DILocation(line: 460, column: 7, scope: !297)
!297 = distinct !DILexicalBlock(scope: !243, file: !1, line: 460, column: 6)
!298 = !DILocation(line: 460, column: 17, scope: !297)
!299 = !DILocation(line: 460, column: 21, scope: !297)
!300 = !DILocation(line: 461, column: 6, scope: !297)
!301 = !DILocation(line: 461, column: 10, scope: !297)
!302 = !DILocation(line: 461, column: 17, scope: !297)
!303 = !DILocation(line: 460, column: 6, scope: !243)
!304 = !DILocation(line: 462, column: 3, scope: !305)
!305 = distinct !DILexicalBlock(scope: !297, file: !1, line: 461, column: 47)
!306 = !DILocation(line: 465, column: 13, scope: !243)
!307 = !DILocation(line: 465, column: 11, scope: !243)
!308 = !DILocation(line: 466, column: 7, scope: !309)
!309 = distinct !DILexicalBlock(scope: !243, file: !1, line: 466, column: 6)
!310 = !DILocation(line: 466, column: 6, scope: !243)
!311 = !DILocation(line: 467, column: 3, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !1, line: 466, column: 17)
!313 = !DILocation(line: 472, column: 2, scope: !243)
!314 = !DILocation(line: 473, column: 23, scope: !243)
!315 = !DILocation(line: 473, column: 2, scope: !243)
!316 = !DILocation(line: 473, column: 12, scope: !243)
!317 = !DILocation(line: 473, column: 21, scope: !243)
!318 = !DILocation(line: 474, column: 27, scope: !243)
!319 = !DILocation(line: 474, column: 2, scope: !243)
!320 = !DILocation(line: 474, column: 12, scope: !243)
!321 = !DILocation(line: 474, column: 25, scope: !243)
!322 = !DILocation(line: 475, column: 18, scope: !243)
!323 = !DILocation(line: 475, column: 2, scope: !243)
!324 = !DILocation(line: 475, column: 12, scope: !243)
!325 = !DILocation(line: 475, column: 16, scope: !243)
!326 = !DILocation(line: 476, column: 20, scope: !243)
!327 = !DILocation(line: 476, column: 2, scope: !243)
!328 = !DILocation(line: 476, column: 12, scope: !243)
!329 = !DILocation(line: 476, column: 18, scope: !243)
!330 = !DILocation(line: 477, column: 19, scope: !243)
!331 = !DILocation(line: 477, column: 2, scope: !243)
!332 = !DILocation(line: 477, column: 12, scope: !243)
!333 = !DILocation(line: 477, column: 17, scope: !243)
!334 = !DILocation(line: 481, column: 2, scope: !243)
!335 = !DILocation(line: 482, column: 20, scope: !243)
!336 = !DILocation(line: 482, column: 2, scope: !243)
!337 = !DILocation(line: 482, column: 12, scope: !243)
!338 = !DILocation(line: 482, column: 18, scope: !243)
!339 = !DILocation(line: 483, column: 21, scope: !243)
!340 = !DILocation(line: 483, column: 2, scope: !243)
!341 = !DILocation(line: 483, column: 12, scope: !243)
!342 = !DILocation(line: 483, column: 19, scope: !243)
!343 = !DILocation(line: 487, column: 2, scope: !243)
!344 = !DILocation(line: 488, column: 27, scope: !243)
!345 = !DILocation(line: 488, column: 2, scope: !243)
!346 = !DILocation(line: 488, column: 12, scope: !243)
!347 = !DILocation(line: 488, column: 25, scope: !243)
!348 = !DILocation(line: 489, column: 19, scope: !243)
!349 = !DILocation(line: 489, column: 2, scope: !243)
!350 = !DILocation(line: 489, column: 12, scope: !243)
!351 = !DILocation(line: 489, column: 17, scope: !243)
!352 = !DILocation(line: 490, column: 18, scope: !243)
!353 = !DILocation(line: 490, column: 2, scope: !243)
!354 = !DILocation(line: 490, column: 12, scope: !243)
!355 = !DILocation(line: 490, column: 16, scope: !243)
!356 = !DILocation(line: 491, column: 20, scope: !243)
!357 = !DILocation(line: 491, column: 2, scope: !243)
!358 = !DILocation(line: 491, column: 12, scope: !243)
!359 = !DILocation(line: 491, column: 18, scope: !243)
!360 = !DILocation(line: 492, column: 32, scope: !243)
!361 = !DILocation(line: 492, column: 2, scope: !243)
!362 = !DILocation(line: 492, column: 12, scope: !243)
!363 = !DILocation(line: 492, column: 30, scope: !243)
!364 = !DILocation(line: 493, column: 34, scope: !243)
!365 = !DILocation(line: 493, column: 2, scope: !243)
!366 = !DILocation(line: 493, column: 12, scope: !243)
!367 = !DILocation(line: 493, column: 32, scope: !243)
!368 = !DILocation(line: 494, column: 20, scope: !243)
!369 = !DILocation(line: 494, column: 2, scope: !243)
!370 = !DILocation(line: 494, column: 12, scope: !243)
!371 = !DILocation(line: 494, column: 18, scope: !243)
!372 = !DILocation(line: 495, column: 32, scope: !243)
!373 = !DILocation(line: 495, column: 2, scope: !243)
!374 = !DILocation(line: 495, column: 12, scope: !243)
!375 = !DILocation(line: 495, column: 30, scope: !243)
!376 = !DILocation(line: 496, column: 26, scope: !243)
!377 = !DILocation(line: 496, column: 2, scope: !243)
!378 = !DILocation(line: 496, column: 12, scope: !243)
!379 = !DILocation(line: 496, column: 24, scope: !243)
!380 = !DILocation(line: 497, column: 29, scope: !243)
!381 = !DILocation(line: 497, column: 2, scope: !243)
!382 = !DILocation(line: 497, column: 12, scope: !243)
!383 = !DILocation(line: 497, column: 27, scope: !243)
!384 = !DILocation(line: 498, column: 18, scope: !243)
!385 = !DILocation(line: 498, column: 2, scope: !243)
!386 = !DILocation(line: 498, column: 12, scope: !243)
!387 = !DILocation(line: 498, column: 16, scope: !243)
!388 = !DILocation(line: 502, column: 2, scope: !243)
!389 = !DILocation(line: 503, column: 24, scope: !243)
!390 = !DILocation(line: 503, column: 2, scope: !243)
!391 = !DILocation(line: 503, column: 12, scope: !243)
!392 = !DILocation(line: 503, column: 22, scope: !243)
!393 = !DILocation(line: 504, column: 34, scope: !243)
!394 = !DILocation(line: 504, column: 2, scope: !243)
!395 = !DILocation(line: 504, column: 12, scope: !243)
!396 = !DILocation(line: 504, column: 32, scope: !243)
!397 = !DILocation(line: 505, column: 29, scope: !243)
!398 = !DILocation(line: 505, column: 2, scope: !243)
!399 = !DILocation(line: 505, column: 12, scope: !243)
!400 = !DILocation(line: 505, column: 27, scope: !243)
!401 = !DILocation(line: 506, column: 31, scope: !243)
!402 = !DILocation(line: 506, column: 2, scope: !243)
!403 = !DILocation(line: 506, column: 12, scope: !243)
!404 = !DILocation(line: 506, column: 29, scope: !243)
!405 = !DILocation(line: 507, column: 24, scope: !243)
!406 = !DILocation(line: 507, column: 2, scope: !243)
!407 = !DILocation(line: 507, column: 12, scope: !243)
!408 = !DILocation(line: 507, column: 22, scope: !243)
!409 = !DILocation(line: 508, column: 23, scope: !243)
!410 = !DILocation(line: 508, column: 2, scope: !243)
!411 = !DILocation(line: 508, column: 12, scope: !243)
!412 = !DILocation(line: 508, column: 21, scope: !243)
!413 = !DILocation(line: 509, column: 20, scope: !243)
!414 = !DILocation(line: 509, column: 2, scope: !243)
!415 = !DILocation(line: 509, column: 12, scope: !243)
!416 = !DILocation(line: 509, column: 18, scope: !243)
!417 = !DILocation(line: 511, column: 6, scope: !418)
!418 = distinct !DILexicalBlock(scope: !243, file: !1, line: 511, column: 6)
!419 = !DILocation(line: 511, column: 13, scope: !418)
!420 = !DILocation(line: 511, column: 6, scope: !243)
!421 = !DILocation(line: 515, column: 3, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !1, line: 511, column: 43)
!423 = !DILocation(line: 516, column: 31, scope: !422)
!424 = !DILocation(line: 516, column: 3, scope: !422)
!425 = !DILocation(line: 516, column: 13, scope: !422)
!426 = !DILocation(line: 516, column: 29, scope: !422)
!427 = !DILocation(line: 517, column: 33, scope: !422)
!428 = !DILocation(line: 517, column: 3, scope: !422)
!429 = !DILocation(line: 517, column: 13, scope: !422)
!430 = !DILocation(line: 517, column: 31, scope: !422)
!431 = !DILocation(line: 518, column: 2, scope: !422)
!432 = !DILocation(line: 520, column: 19, scope: !243)
!433 = !DILocation(line: 520, column: 3, scope: !243)
!434 = !DILocation(line: 520, column: 17, scope: !243)
!435 = !DILocation(line: 521, column: 2, scope: !243)
!436 = !DILocation(line: 522, column: 1, scope: !243)
!437 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !438, file: !438, line: 55, type: !439, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!438 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!439 = !DISubroutineType(types: !440)
!440 = !{!19, !20}
!441 = !DILocalVariable(name: "flags", arg: 1, scope: !442, file: !443, line: 162, type: !26)
!442 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !443, file: !443, line: 162, type: !444, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!443 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!444 = !DISubroutineType(types: !445)
!445 = !{!446, !26}
!446 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!447 = !DILocation(line: 162, column: 67, scope: !442, inlinedAt: !448)
!448 = distinct !DILocation(line: 57, column: 23, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !438, line: 57, column: 23)
!450 = distinct !DILexicalBlock(scope: !437, file: !438, line: 57, column: 23)
!451 = !DILocalVariable(name: "size", arg: 1, scope: !437, file: !438, line: 55, type: !20)
!452 = !DILocation(line: 55, column: 55, scope: !437)
!453 = !DILocation(line: 57, column: 17, scope: !437)
!454 = !DILocalVariable(name: "_flags", scope: !450, file: !438, line: 57, type: !26)
!455 = !DILocation(line: 57, column: 23, scope: !450)
!456 = !DILocalVariable(name: "__dummy", scope: !457, file: !438, line: 57, type: !26)
!457 = distinct !DILexicalBlock(scope: !458, file: !438, line: 57, column: 23)
!458 = distinct !DILexicalBlock(scope: !450, file: !438, line: 57, column: 23)
!459 = !DILocation(line: 57, column: 23, scope: !457)
!460 = !DILocalVariable(name: "__dummy2", scope: !457, file: !438, line: 57, type: !26)
!461 = !DILocation(line: 57, column: 23, scope: !458)
!462 = !DILocalVariable(name: "__dummy", scope: !463, file: !438, line: 57, type: !26)
!463 = distinct !DILexicalBlock(scope: !449, file: !438, line: 57, column: 23)
!464 = !DILocation(line: 57, column: 23, scope: !463)
!465 = !DILocalVariable(name: "__dummy2", scope: !463, file: !438, line: 57, type: !26)
!466 = !DILocation(line: 57, column: 23, scope: !449)
!467 = !DILocation(line: 164, column: 11, scope: !442, inlinedAt: !448)
!468 = !DILocation(line: 164, column: 17, scope: !442, inlinedAt: !448)
!469 = !DILocation(line: 164, column: 9, scope: !442, inlinedAt: !448)
!470 = !DILocation(line: 57, column: 23, scope: !437)
!471 = !DILocation(line: 57, column: 9, scope: !437)
!472 = !DILocation(line: 57, column: 2, scope: !437)
!473 = distinct !DISubprogram(name: "kzalloc", scope: !4, file: !4, line: 662, type: !474, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!474 = !DISubroutineType(types: !475)
!475 = !{!19, !476, !24}
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 55, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !478, line: 72, baseType: !479)
!478 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !478, line: 16, baseType: !26)
!480 = !DILocalVariable(name: "s", arg: 1, scope: !481, file: !4, line: 445, type: !484)
!481 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !4, file: !4, line: 445, type: !482, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!482 = !DISubroutineType(types: !483)
!483 = !{!19, !484, !24, !476}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !486, line: 117, flags: DIFlagFwdDecl)
!486 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!487 = !DILocation(line: 445, column: 72, scope: !481, inlinedAt: !488)
!488 = distinct !DILocation(line: 552, column: 10, scope: !489, inlinedAt: !492)
!489 = distinct !DILexicalBlock(scope: !490, file: !4, line: 540, column: 34)
!490 = distinct !DILexicalBlock(scope: !491, file: !4, line: 540, column: 6)
!491 = distinct !DISubprogram(name: "kmalloc", scope: !4, file: !4, line: 538, type: !474, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!492 = distinct !DILocation(line: 664, column: 9, scope: !473)
!493 = !DILocalVariable(name: "flags", arg: 2, scope: !481, file: !4, line: 446, type: !24)
!494 = !DILocation(line: 446, column: 9, scope: !481, inlinedAt: !488)
!495 = !DILocalVariable(name: "size", arg: 3, scope: !481, file: !4, line: 446, type: !476)
!496 = !DILocation(line: 446, column: 23, scope: !481, inlinedAt: !488)
!497 = !DILocalVariable(name: "ret", scope: !481, file: !4, line: 448, type: !19)
!498 = !DILocation(line: 448, column: 8, scope: !481, inlinedAt: !488)
!499 = !DILocalVariable(name: "flags", arg: 1, scope: !500, file: !4, line: 318, type: !24)
!500 = distinct !DISubprogram(name: "kmalloc_type", scope: !4, file: !4, line: 318, type: !501, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!501 = !DISubroutineType(types: !502)
!502 = !{!3, !24}
!503 = !DILocation(line: 318, column: 67, scope: !500, inlinedAt: !504)
!504 = distinct !DILocation(line: 553, column: 20, scope: !489, inlinedAt: !492)
!505 = !DILocalVariable(name: "size", arg: 1, scope: !506, file: !4, line: 346, type: !476)
!506 = distinct !DISubprogram(name: "kmalloc_index", scope: !4, file: !4, line: 346, type: !507, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!507 = !DISubroutineType(types: !508)
!508 = !{!5, !476}
!509 = !DILocation(line: 346, column: 58, scope: !506, inlinedAt: !510)
!510 = distinct !DILocation(line: 547, column: 11, scope: !489, inlinedAt: !492)
!511 = !DILocalVariable(name: "size", arg: 1, scope: !512, file: !4, line: 472, type: !476)
!512 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !4, file: !4, line: 472, type: !513, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!513 = !DISubroutineType(types: !514)
!514 = !{!19, !476, !24, !5}
!515 = !DILocation(line: 472, column: 28, scope: !512, inlinedAt: !516)
!516 = distinct !DILocation(line: 481, column: 9, scope: !517, inlinedAt: !518)
!517 = distinct !DISubprogram(name: "kmalloc_large", scope: !4, file: !4, line: 478, type: !474, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!518 = distinct !DILocation(line: 545, column: 11, scope: !519, inlinedAt: !492)
!519 = distinct !DILexicalBlock(scope: !489, file: !4, line: 544, column: 7)
!520 = !DILocalVariable(name: "flags", arg: 2, scope: !512, file: !4, line: 472, type: !24)
!521 = !DILocation(line: 472, column: 40, scope: !512, inlinedAt: !516)
!522 = !DILocalVariable(name: "order", arg: 3, scope: !512, file: !4, line: 472, type: !5)
!523 = !DILocation(line: 472, column: 60, scope: !512, inlinedAt: !516)
!524 = !DILocalVariable(name: "size", arg: 1, scope: !517, file: !4, line: 478, type: !476)
!525 = !DILocation(line: 478, column: 51, scope: !517, inlinedAt: !518)
!526 = !DILocalVariable(name: "flags", arg: 2, scope: !517, file: !4, line: 478, type: !24)
!527 = !DILocation(line: 478, column: 63, scope: !517, inlinedAt: !518)
!528 = !DILocalVariable(name: "order", scope: !517, file: !4, line: 480, type: !5)
!529 = !DILocation(line: 480, column: 15, scope: !517, inlinedAt: !518)
!530 = !DILocalVariable(name: "size", arg: 1, scope: !491, file: !4, line: 538, type: !476)
!531 = !DILocation(line: 538, column: 45, scope: !491, inlinedAt: !492)
!532 = !DILocalVariable(name: "flags", arg: 2, scope: !491, file: !4, line: 538, type: !24)
!533 = !DILocation(line: 538, column: 57, scope: !491, inlinedAt: !492)
!534 = !DILocalVariable(name: "index", scope: !489, file: !4, line: 542, type: !5)
!535 = !DILocation(line: 542, column: 16, scope: !489, inlinedAt: !492)
!536 = !DILocalVariable(name: "size", arg: 1, scope: !473, file: !4, line: 662, type: !476)
!537 = !DILocation(line: 662, column: 36, scope: !473)
!538 = !DILocalVariable(name: "flags", arg: 2, scope: !473, file: !4, line: 662, type: !24)
!539 = !DILocation(line: 662, column: 48, scope: !473)
!540 = !DILocation(line: 664, column: 17, scope: !473)
!541 = !DILocation(line: 664, column: 23, scope: !473)
!542 = !DILocation(line: 664, column: 29, scope: !473)
!543 = !DILocation(line: 540, column: 27, scope: !490, inlinedAt: !492)
!544 = !DILocation(line: 540, column: 6, scope: !490, inlinedAt: !492)
!545 = !DILocation(line: 540, column: 6, scope: !491, inlinedAt: !492)
!546 = !DILocation(line: 544, column: 7, scope: !519, inlinedAt: !492)
!547 = !DILocation(line: 544, column: 12, scope: !519, inlinedAt: !492)
!548 = !DILocation(line: 544, column: 7, scope: !489, inlinedAt: !492)
!549 = !DILocation(line: 545, column: 25, scope: !519, inlinedAt: !492)
!550 = !DILocation(line: 545, column: 31, scope: !519, inlinedAt: !492)
!551 = !DILocation(line: 480, column: 33, scope: !517, inlinedAt: !518)
!552 = !DILocation(line: 480, column: 23, scope: !517, inlinedAt: !518)
!553 = !DILocation(line: 481, column: 29, scope: !517, inlinedAt: !518)
!554 = !DILocation(line: 481, column: 35, scope: !517, inlinedAt: !518)
!555 = !DILocation(line: 481, column: 42, scope: !517, inlinedAt: !518)
!556 = !DILocation(line: 474, column: 23, scope: !512, inlinedAt: !516)
!557 = !DILocation(line: 474, column: 29, scope: !512, inlinedAt: !516)
!558 = !DILocation(line: 474, column: 36, scope: !512, inlinedAt: !516)
!559 = !DILocation(line: 474, column: 9, scope: !512, inlinedAt: !516)
!560 = !DILocation(line: 545, column: 4, scope: !519, inlinedAt: !492)
!561 = !DILocation(line: 547, column: 25, scope: !489, inlinedAt: !492)
!562 = !DILocation(line: 348, column: 7, scope: !563, inlinedAt: !510)
!563 = distinct !DILexicalBlock(scope: !506, file: !4, line: 348, column: 6)
!564 = !DILocation(line: 348, column: 6, scope: !506, inlinedAt: !510)
!565 = !DILocation(line: 349, column: 3, scope: !563, inlinedAt: !510)
!566 = !DILocation(line: 351, column: 6, scope: !567, inlinedAt: !510)
!567 = distinct !DILexicalBlock(scope: !506, file: !4, line: 351, column: 6)
!568 = !DILocation(line: 351, column: 11, scope: !567, inlinedAt: !510)
!569 = !DILocation(line: 351, column: 6, scope: !506, inlinedAt: !510)
!570 = !DILocation(line: 352, column: 3, scope: !567, inlinedAt: !510)
!571 = !DILocation(line: 354, column: 32, scope: !572, inlinedAt: !510)
!572 = distinct !DILexicalBlock(scope: !506, file: !4, line: 354, column: 6)
!573 = !DILocation(line: 354, column: 37, scope: !572, inlinedAt: !510)
!574 = !DILocation(line: 354, column: 42, scope: !572, inlinedAt: !510)
!575 = !DILocation(line: 354, column: 45, scope: !572, inlinedAt: !510)
!576 = !DILocation(line: 354, column: 50, scope: !572, inlinedAt: !510)
!577 = !DILocation(line: 354, column: 6, scope: !506, inlinedAt: !510)
!578 = !DILocation(line: 355, column: 3, scope: !572, inlinedAt: !510)
!579 = !DILocation(line: 356, column: 32, scope: !580, inlinedAt: !510)
!580 = distinct !DILexicalBlock(scope: !506, file: !4, line: 356, column: 6)
!581 = !DILocation(line: 356, column: 37, scope: !580, inlinedAt: !510)
!582 = !DILocation(line: 356, column: 43, scope: !580, inlinedAt: !510)
!583 = !DILocation(line: 356, column: 46, scope: !580, inlinedAt: !510)
!584 = !DILocation(line: 356, column: 51, scope: !580, inlinedAt: !510)
!585 = !DILocation(line: 356, column: 6, scope: !506, inlinedAt: !510)
!586 = !DILocation(line: 357, column: 3, scope: !580, inlinedAt: !510)
!587 = !DILocation(line: 358, column: 6, scope: !588, inlinedAt: !510)
!588 = distinct !DILexicalBlock(scope: !506, file: !4, line: 358, column: 6)
!589 = !DILocation(line: 358, column: 11, scope: !588, inlinedAt: !510)
!590 = !DILocation(line: 358, column: 6, scope: !506, inlinedAt: !510)
!591 = !DILocation(line: 358, column: 26, scope: !588, inlinedAt: !510)
!592 = !DILocation(line: 359, column: 6, scope: !593, inlinedAt: !510)
!593 = distinct !DILexicalBlock(scope: !506, file: !4, line: 359, column: 6)
!594 = !DILocation(line: 359, column: 11, scope: !593, inlinedAt: !510)
!595 = !DILocation(line: 359, column: 6, scope: !506, inlinedAt: !510)
!596 = !DILocation(line: 359, column: 26, scope: !593, inlinedAt: !510)
!597 = !DILocation(line: 360, column: 6, scope: !598, inlinedAt: !510)
!598 = distinct !DILexicalBlock(scope: !506, file: !4, line: 360, column: 6)
!599 = !DILocation(line: 360, column: 11, scope: !598, inlinedAt: !510)
!600 = !DILocation(line: 360, column: 6, scope: !506, inlinedAt: !510)
!601 = !DILocation(line: 360, column: 26, scope: !598, inlinedAt: !510)
!602 = !DILocation(line: 361, column: 6, scope: !603, inlinedAt: !510)
!603 = distinct !DILexicalBlock(scope: !506, file: !4, line: 361, column: 6)
!604 = !DILocation(line: 361, column: 11, scope: !603, inlinedAt: !510)
!605 = !DILocation(line: 361, column: 6, scope: !506, inlinedAt: !510)
!606 = !DILocation(line: 361, column: 26, scope: !603, inlinedAt: !510)
!607 = !DILocation(line: 362, column: 6, scope: !608, inlinedAt: !510)
!608 = distinct !DILexicalBlock(scope: !506, file: !4, line: 362, column: 6)
!609 = !DILocation(line: 362, column: 11, scope: !608, inlinedAt: !510)
!610 = !DILocation(line: 362, column: 6, scope: !506, inlinedAt: !510)
!611 = !DILocation(line: 362, column: 26, scope: !608, inlinedAt: !510)
!612 = !DILocation(line: 363, column: 6, scope: !613, inlinedAt: !510)
!613 = distinct !DILexicalBlock(scope: !506, file: !4, line: 363, column: 6)
!614 = !DILocation(line: 363, column: 11, scope: !613, inlinedAt: !510)
!615 = !DILocation(line: 363, column: 6, scope: !506, inlinedAt: !510)
!616 = !DILocation(line: 363, column: 26, scope: !613, inlinedAt: !510)
!617 = !DILocation(line: 364, column: 6, scope: !618, inlinedAt: !510)
!618 = distinct !DILexicalBlock(scope: !506, file: !4, line: 364, column: 6)
!619 = !DILocation(line: 364, column: 11, scope: !618, inlinedAt: !510)
!620 = !DILocation(line: 364, column: 6, scope: !506, inlinedAt: !510)
!621 = !DILocation(line: 364, column: 26, scope: !618, inlinedAt: !510)
!622 = !DILocation(line: 365, column: 6, scope: !623, inlinedAt: !510)
!623 = distinct !DILexicalBlock(scope: !506, file: !4, line: 365, column: 6)
!624 = !DILocation(line: 365, column: 11, scope: !623, inlinedAt: !510)
!625 = !DILocation(line: 365, column: 6, scope: !506, inlinedAt: !510)
!626 = !DILocation(line: 365, column: 26, scope: !623, inlinedAt: !510)
!627 = !DILocation(line: 366, column: 6, scope: !628, inlinedAt: !510)
!628 = distinct !DILexicalBlock(scope: !506, file: !4, line: 366, column: 6)
!629 = !DILocation(line: 366, column: 11, scope: !628, inlinedAt: !510)
!630 = !DILocation(line: 366, column: 6, scope: !506, inlinedAt: !510)
!631 = !DILocation(line: 366, column: 26, scope: !628, inlinedAt: !510)
!632 = !DILocation(line: 367, column: 6, scope: !633, inlinedAt: !510)
!633 = distinct !DILexicalBlock(scope: !506, file: !4, line: 367, column: 6)
!634 = !DILocation(line: 367, column: 11, scope: !633, inlinedAt: !510)
!635 = !DILocation(line: 367, column: 6, scope: !506, inlinedAt: !510)
!636 = !DILocation(line: 367, column: 26, scope: !633, inlinedAt: !510)
!637 = !DILocation(line: 368, column: 6, scope: !638, inlinedAt: !510)
!638 = distinct !DILexicalBlock(scope: !506, file: !4, line: 368, column: 6)
!639 = !DILocation(line: 368, column: 11, scope: !638, inlinedAt: !510)
!640 = !DILocation(line: 368, column: 6, scope: !506, inlinedAt: !510)
!641 = !DILocation(line: 368, column: 26, scope: !638, inlinedAt: !510)
!642 = !DILocation(line: 369, column: 6, scope: !643, inlinedAt: !510)
!643 = distinct !DILexicalBlock(scope: !506, file: !4, line: 369, column: 6)
!644 = !DILocation(line: 369, column: 11, scope: !643, inlinedAt: !510)
!645 = !DILocation(line: 369, column: 6, scope: !506, inlinedAt: !510)
!646 = !DILocation(line: 369, column: 26, scope: !643, inlinedAt: !510)
!647 = !DILocation(line: 370, column: 6, scope: !648, inlinedAt: !510)
!648 = distinct !DILexicalBlock(scope: !506, file: !4, line: 370, column: 6)
!649 = !DILocation(line: 370, column: 11, scope: !648, inlinedAt: !510)
!650 = !DILocation(line: 370, column: 6, scope: !506, inlinedAt: !510)
!651 = !DILocation(line: 370, column: 26, scope: !648, inlinedAt: !510)
!652 = !DILocation(line: 371, column: 6, scope: !653, inlinedAt: !510)
!653 = distinct !DILexicalBlock(scope: !506, file: !4, line: 371, column: 6)
!654 = !DILocation(line: 371, column: 11, scope: !653, inlinedAt: !510)
!655 = !DILocation(line: 371, column: 6, scope: !506, inlinedAt: !510)
!656 = !DILocation(line: 371, column: 26, scope: !653, inlinedAt: !510)
!657 = !DILocation(line: 372, column: 6, scope: !658, inlinedAt: !510)
!658 = distinct !DILexicalBlock(scope: !506, file: !4, line: 372, column: 6)
!659 = !DILocation(line: 372, column: 11, scope: !658, inlinedAt: !510)
!660 = !DILocation(line: 372, column: 6, scope: !506, inlinedAt: !510)
!661 = !DILocation(line: 372, column: 26, scope: !658, inlinedAt: !510)
!662 = !DILocation(line: 373, column: 6, scope: !663, inlinedAt: !510)
!663 = distinct !DILexicalBlock(scope: !506, file: !4, line: 373, column: 6)
!664 = !DILocation(line: 373, column: 11, scope: !663, inlinedAt: !510)
!665 = !DILocation(line: 373, column: 6, scope: !506, inlinedAt: !510)
!666 = !DILocation(line: 373, column: 26, scope: !663, inlinedAt: !510)
!667 = !DILocation(line: 374, column: 6, scope: !668, inlinedAt: !510)
!668 = distinct !DILexicalBlock(scope: !506, file: !4, line: 374, column: 6)
!669 = !DILocation(line: 374, column: 11, scope: !668, inlinedAt: !510)
!670 = !DILocation(line: 374, column: 6, scope: !506, inlinedAt: !510)
!671 = !DILocation(line: 374, column: 26, scope: !668, inlinedAt: !510)
!672 = !DILocation(line: 375, column: 6, scope: !673, inlinedAt: !510)
!673 = distinct !DILexicalBlock(scope: !506, file: !4, line: 375, column: 6)
!674 = !DILocation(line: 375, column: 11, scope: !673, inlinedAt: !510)
!675 = !DILocation(line: 375, column: 6, scope: !506, inlinedAt: !510)
!676 = !DILocation(line: 375, column: 27, scope: !673, inlinedAt: !510)
!677 = !DILocation(line: 376, column: 6, scope: !678, inlinedAt: !510)
!678 = distinct !DILexicalBlock(scope: !506, file: !4, line: 376, column: 6)
!679 = !DILocation(line: 376, column: 11, scope: !678, inlinedAt: !510)
!680 = !DILocation(line: 376, column: 6, scope: !506, inlinedAt: !510)
!681 = !DILocation(line: 376, column: 32, scope: !678, inlinedAt: !510)
!682 = !DILocation(line: 377, column: 6, scope: !683, inlinedAt: !510)
!683 = distinct !DILexicalBlock(scope: !506, file: !4, line: 377, column: 6)
!684 = !DILocation(line: 377, column: 11, scope: !683, inlinedAt: !510)
!685 = !DILocation(line: 377, column: 6, scope: !506, inlinedAt: !510)
!686 = !DILocation(line: 377, column: 32, scope: !683, inlinedAt: !510)
!687 = !DILocation(line: 378, column: 6, scope: !688, inlinedAt: !510)
!688 = distinct !DILexicalBlock(scope: !506, file: !4, line: 378, column: 6)
!689 = !DILocation(line: 378, column: 11, scope: !688, inlinedAt: !510)
!690 = !DILocation(line: 378, column: 6, scope: !506, inlinedAt: !510)
!691 = !DILocation(line: 378, column: 32, scope: !688, inlinedAt: !510)
!692 = !DILocation(line: 379, column: 6, scope: !693, inlinedAt: !510)
!693 = distinct !DILexicalBlock(scope: !506, file: !4, line: 379, column: 6)
!694 = !DILocation(line: 379, column: 11, scope: !693, inlinedAt: !510)
!695 = !DILocation(line: 379, column: 6, scope: !506, inlinedAt: !510)
!696 = !DILocation(line: 379, column: 33, scope: !693, inlinedAt: !510)
!697 = !DILocation(line: 380, column: 6, scope: !698, inlinedAt: !510)
!698 = distinct !DILexicalBlock(scope: !506, file: !4, line: 380, column: 6)
!699 = !DILocation(line: 380, column: 11, scope: !698, inlinedAt: !510)
!700 = !DILocation(line: 380, column: 6, scope: !506, inlinedAt: !510)
!701 = !DILocation(line: 380, column: 33, scope: !698, inlinedAt: !510)
!702 = !DILocation(line: 381, column: 6, scope: !703, inlinedAt: !510)
!703 = distinct !DILexicalBlock(scope: !506, file: !4, line: 381, column: 6)
!704 = !DILocation(line: 381, column: 11, scope: !703, inlinedAt: !510)
!705 = !DILocation(line: 381, column: 6, scope: !506, inlinedAt: !510)
!706 = !DILocation(line: 381, column: 33, scope: !703, inlinedAt: !510)
!707 = !DILocation(line: 382, column: 2, scope: !708, inlinedAt: !510)
!708 = distinct !DILexicalBlock(scope: !709, file: !4, line: 382, column: 2)
!709 = distinct !DILexicalBlock(scope: !506, file: !4, line: 382, column: 2)
!710 = !{i32 -2144105361, i32 -2144105332, i32 -2144105286, i32 -2144105228, i32 -2144105174, i32 -2144105120, i32 -2144105065, i32 -2144105034}
!711 = !DILocation(line: 382, column: 2, scope: !712, inlinedAt: !510)
!712 = distinct !DILexicalBlock(scope: !713, file: !4, line: 382, column: 2)
!713 = distinct !DILexicalBlock(scope: !709, file: !4, line: 382, column: 2)
!714 = !{i32 -2144104591, i32 -2144104584, i32 -2144104530, i32 -2144104499, i32 -2144104469}
!715 = !DILocation(line: 382, column: 2, scope: !713, inlinedAt: !510)
!716 = !DILocation(line: 386, column: 1, scope: !506, inlinedAt: !510)
!717 = !DILocation(line: 547, column: 9, scope: !489, inlinedAt: !492)
!718 = !DILocation(line: 549, column: 8, scope: !719, inlinedAt: !492)
!719 = distinct !DILexicalBlock(scope: !489, file: !4, line: 549, column: 7)
!720 = !DILocation(line: 549, column: 7, scope: !489, inlinedAt: !492)
!721 = !DILocation(line: 550, column: 4, scope: !719, inlinedAt: !492)
!722 = !DILocation(line: 553, column: 33, scope: !489, inlinedAt: !492)
!723 = !DILocation(line: 325, column: 6, scope: !724, inlinedAt: !504)
!724 = distinct !DILexicalBlock(scope: !500, file: !4, line: 325, column: 6)
!725 = !DILocation(line: 325, column: 6, scope: !500, inlinedAt: !504)
!726 = !DILocation(line: 326, column: 3, scope: !724, inlinedAt: !504)
!727 = !DILocation(line: 332, column: 9, scope: !500, inlinedAt: !504)
!728 = !DILocation(line: 332, column: 15, scope: !500, inlinedAt: !504)
!729 = !DILocation(line: 332, column: 2, scope: !500, inlinedAt: !504)
!730 = !DILocation(line: 336, column: 1, scope: !500, inlinedAt: !504)
!731 = !DILocation(line: 553, column: 5, scope: !489, inlinedAt: !492)
!732 = !DILocation(line: 553, column: 41, scope: !489, inlinedAt: !492)
!733 = !DILocation(line: 554, column: 5, scope: !489, inlinedAt: !492)
!734 = !DILocation(line: 554, column: 12, scope: !489, inlinedAt: !492)
!735 = !DILocation(line: 448, column: 31, scope: !481, inlinedAt: !488)
!736 = !DILocation(line: 448, column: 34, scope: !481, inlinedAt: !488)
!737 = !DILocation(line: 448, column: 14, scope: !481, inlinedAt: !488)
!738 = !DILocation(line: 450, column: 22, scope: !481, inlinedAt: !488)
!739 = !DILocation(line: 450, column: 25, scope: !481, inlinedAt: !488)
!740 = !DILocation(line: 450, column: 30, scope: !481, inlinedAt: !488)
!741 = !DILocation(line: 450, column: 36, scope: !481, inlinedAt: !488)
!742 = !DILocation(line: 450, column: 8, scope: !481, inlinedAt: !488)
!743 = !DILocation(line: 450, column: 6, scope: !481, inlinedAt: !488)
!744 = !DILocation(line: 451, column: 9, scope: !481, inlinedAt: !488)
!745 = !DILocation(line: 552, column: 3, scope: !489, inlinedAt: !492)
!746 = !DILocation(line: 557, column: 19, scope: !491, inlinedAt: !492)
!747 = !DILocation(line: 557, column: 25, scope: !491, inlinedAt: !492)
!748 = !DILocation(line: 557, column: 9, scope: !491, inlinedAt: !492)
!749 = !DILocation(line: 557, column: 2, scope: !491, inlinedAt: !492)
!750 = !DILocation(line: 558, column: 1, scope: !491, inlinedAt: !492)
!751 = !DILocation(line: 664, column: 2, scope: !473)
!752 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !753, file: !753, line: 646, type: !754, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!753 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!754 = !DISubroutineType(types: !755)
!755 = !{!26}
!756 = !DILocalVariable(name: "__ret", scope: !757, file: !753, line: 648, type: !26)
!757 = distinct !DILexicalBlock(scope: !752, file: !753, line: 648, column: 9)
!758 = !DILocation(line: 648, column: 9, scope: !757)
!759 = !DILocalVariable(name: "__edi", scope: !757, file: !753, line: 648, type: !26)
!760 = !DILocalVariable(name: "__esi", scope: !757, file: !753, line: 648, type: !26)
!761 = !DILocalVariable(name: "__edx", scope: !757, file: !753, line: 648, type: !26)
!762 = !DILocalVariable(name: "__ecx", scope: !757, file: !753, line: 648, type: !26)
!763 = !DILocalVariable(name: "__eax", scope: !757, file: !753, line: 648, type: !26)
!764 = !DILocation(line: 648, column: 9, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !753, line: 648, column: 9)
!766 = distinct !DILexicalBlock(scope: !757, file: !753, line: 648, column: 9)
!767 = !{i32 -2145778967, i32 -2145776652, i32 -2145776418, i32 -2145776367, i32 -2145776339, i32 -2145776314, i32 -2145776630, i32 -2145776617, i32 -2145776179, i32 -2145776060, i32 -2145776525, i32 -2145776498, i32 -2145776470, i32 -2145776440}
!768 = !DILocalVariable(name: "__mask", scope: !769, file: !753, line: 648, type: !26)
!769 = distinct !DILexicalBlock(scope: !765, file: !753, line: 648, column: 9)
!770 = !DILocation(line: 648, column: 9, scope: !769)
!771 = !DILocation(line: 648, column: 9, scope: !766)
!772 = !DILocation(line: 648, column: 2, scope: !752)
!773 = distinct !DISubprogram(name: "get_order", scope: !774, file: !774, line: 29, type: !444, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!774 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!775 = !DILocalVariable(name: "x", arg: 1, scope: !776, file: !777, line: 366, type: !22)
!776 = distinct !DISubprogram(name: "fls64", scope: !777, file: !777, line: 366, type: !778, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!777 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!778 = !DISubroutineType(types: !779)
!779 = !{!446, !22}
!780 = !DILocation(line: 366, column: 40, scope: !776, inlinedAt: !781)
!781 = distinct !DILocation(line: 46, column: 9, scope: !773)
!782 = !DILocalVariable(name: "bitpos", scope: !776, file: !777, line: 368, type: !446)
!783 = !DILocation(line: 368, column: 6, scope: !776, inlinedAt: !781)
!784 = !DILocalVariable(name: "size", arg: 1, scope: !773, file: !774, line: 29, type: !26)
!785 = !DILocation(line: 29, column: 63, scope: !773)
!786 = !DILocation(line: 31, column: 27, scope: !787)
!787 = distinct !DILexicalBlock(scope: !773, file: !774, line: 31, column: 6)
!788 = !DILocation(line: 31, column: 6, scope: !787)
!789 = !DILocation(line: 31, column: 6, scope: !773)
!790 = !DILocation(line: 32, column: 8, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !774, line: 32, column: 7)
!792 = distinct !DILexicalBlock(scope: !787, file: !774, line: 31, column: 34)
!793 = !DILocation(line: 32, column: 7, scope: !792)
!794 = !DILocation(line: 33, column: 4, scope: !791)
!795 = !DILocation(line: 35, column: 7, scope: !796)
!796 = distinct !DILexicalBlock(scope: !792, file: !774, line: 35, column: 7)
!797 = !DILocation(line: 35, column: 12, scope: !796)
!798 = !DILocation(line: 35, column: 7, scope: !792)
!799 = !DILocation(line: 36, column: 4, scope: !796)
!800 = !DILocation(line: 38, column: 10, scope: !792)
!801 = !DILocation(line: 38, column: 28, scope: !792)
!802 = !DILocation(line: 38, column: 41, scope: !792)
!803 = !DILocation(line: 38, column: 3, scope: !792)
!804 = !DILocation(line: 41, column: 6, scope: !773)
!805 = !DILocation(line: 42, column: 7, scope: !773)
!806 = !DILocation(line: 46, column: 15, scope: !773)
!807 = !DILocation(line: 374, column: 2, scope: !776, inlinedAt: !781)
!808 = !DILocation(line: 376, column: 14, scope: !776, inlinedAt: !781)
!809 = !{i32 665841}
!810 = !DILocation(line: 377, column: 9, scope: !776, inlinedAt: !781)
!811 = !DILocation(line: 377, column: 16, scope: !776, inlinedAt: !781)
!812 = !DILocation(line: 46, column: 2, scope: !773)
!813 = !DILocation(line: 48, column: 1, scope: !773)
!814 = distinct !DISubprogram(name: "__ilog2_u64", scope: !815, file: !815, line: 30, type: !816, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!815 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!816 = !DISubroutineType(types: !817)
!817 = !{!446, !21}
!818 = !DILocation(line: 366, column: 40, scope: !776, inlinedAt: !819)
!819 = distinct !DILocation(line: 32, column: 9, scope: !814)
!820 = !DILocation(line: 368, column: 6, scope: !776, inlinedAt: !819)
!821 = !DILocalVariable(name: "n", arg: 1, scope: !814, file: !815, line: 30, type: !21)
!822 = !DILocation(line: 30, column: 21, scope: !814)
!823 = !DILocation(line: 32, column: 15, scope: !814)
!824 = !DILocation(line: 374, column: 2, scope: !776, inlinedAt: !819)
!825 = !DILocation(line: 376, column: 14, scope: !776, inlinedAt: !819)
!826 = !DILocation(line: 377, column: 9, scope: !776, inlinedAt: !819)
!827 = !DILocation(line: 377, column: 16, scope: !776, inlinedAt: !819)
!828 = !DILocation(line: 32, column: 18, scope: !814)
!829 = !DILocation(line: 32, column: 2, scope: !814)
!830 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !831, file: !831, line: 137, type: !832, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !36)
!831 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!832 = !DISubroutineType(types: !833)
!833 = !{!19, !484, !834, !476, !24}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!836 = !DILocalVariable(name: "s", arg: 1, scope: !830, file: !831, line: 137, type: !484)
!837 = !DILocation(line: 137, column: 54, scope: !830)
!838 = !DILocalVariable(name: "object", arg: 2, scope: !830, file: !831, line: 137, type: !834)
!839 = !DILocation(line: 137, column: 69, scope: !830)
!840 = !DILocalVariable(name: "size", arg: 3, scope: !830, file: !831, line: 138, type: !476)
!841 = !DILocation(line: 138, column: 12, scope: !830)
!842 = !DILocalVariable(name: "flags", arg: 4, scope: !830, file: !831, line: 138, type: !24)
!843 = !DILocation(line: 138, column: 24, scope: !830)
!844 = !DILocation(line: 140, column: 17, scope: !830)
!845 = !DILocation(line: 140, column: 2, scope: !830)
