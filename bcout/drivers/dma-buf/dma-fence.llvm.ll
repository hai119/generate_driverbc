; ModuleID = '../bcout/drivers/dma-buf/dma-fence.llvm.bc'
source_filename = "drivers/dma-buf/dma-fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.dma_fence = type { %struct.spinlock*, %struct.dma_fence_ops*, %union.anon.0, i64, i64, i64, %struct.kref, i32 }
%struct.dma_fence_ops = type { i8, i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i64 (%struct.dma_fence*, i1, i64)*, void (%struct.dma_fence*)*, void (%struct.dma_fence*, i8*, i32)*, void (%struct.dma_fence*, i8*, i32)* }
%union.anon.0 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.43, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.46 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { i64, i64 }
%union.anon.46 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.28, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.1, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.1 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
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
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.15 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.15 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.7, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.8, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.9, %union.anon.13, %struct.key_restriction* }
%union.anon.7 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.8 = type { i64 }
%union.anon.9 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.10, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.10 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.13 = type { %union.key_payload }
%union.key_payload = type { [4 x i8*] }
%struct.key_restriction = type { i32 (%struct.key*, %struct.key_type*, %union.key_payload*, %struct.key*)*, %struct.key*, %struct.key_type* }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.mutex }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, %struct.seccomp_filter* }
%struct.seccomp_filter = type opaque
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.16 }
%struct.anon.16 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.20 }
%struct.anon.20 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.27, i32, [12 x i8] }
%union.anon.27 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.28 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.29, %union.anon.42, %struct.atomic_t, [8 x i8] }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.42 = type { %struct.atomic_t }
%struct.vm_struct = type opaque
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
%struct.kmem_cache = type opaque
%struct.dma_fence_cb = type { %struct.list_head, void (%struct.dma_fence*, %struct.dma_fence_cb*)* }
%struct.default_wait_cb = type { %struct.dma_fence_cb, %struct.task_struct* }

@dma_fence_stub_lock = internal global %struct.spinlock undef, align 1, !dbg !0
@dma_fence_stub = internal global %struct.dma_fence zeroinitializer, align 8, !dbg !1570
@dma_fence_stub_ops = internal constant %struct.dma_fence_ops { i8 0, i8* (%struct.dma_fence*)* @dma_fence_stub_get_name, i8* (%struct.dma_fence*)* @dma_fence_stub_get_name, i1 (%struct.dma_fence*)* null, i1 (%struct.dma_fence*)* null, i64 (%struct.dma_fence*, i1, i64)* null, void (%struct.dma_fence*)* null, void (%struct.dma_fence*, i8*, i32)* null, void (%struct.dma_fence*, i8*, i32)* null }, align 8, !dbg !1572
@.str = private unnamed_addr constant [28 x i8] c"drivers/dma-buf/dma-fence.c\00", align 1
@dma_fence_context_counter = internal global %struct.atomic64_t { i64 1 }, align 8, !dbg !1574
@.str.1 = private unnamed_addr constant [54 x i8] c"Fence %s:%s:%llx:%llx released with pending signals!\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"stub\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dma_fence* @dma_fence_get_stub() #0 !dbg !1582 {
entry:
  %lock.addr.i2 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i2, metadata !1585, metadata !DIExpression()), !dbg !1590
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !1592, metadata !DIExpression()), !dbg !1594
  store %struct.spinlock* @dma_fence_stub_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !1596, !srcloc !1598
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !1599
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !1599
  %rlock.i = bitcast %union.anon* %1 to %struct.raw_spinlock*, !dbg !1599
  %2 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** getelementptr inbounds (%struct.dma_fence, %struct.dma_fence* @dma_fence_stub, i32 0, i32 1), align 8, !dbg !1601
  %tobool = icmp ne %struct.dma_fence_ops* %2, null, !dbg !1603
  br i1 %tobool, label %if.end, label %if.then, !dbg !1604

if.then:                                          ; preds = %entry
  call void @dma_fence_init(%struct.dma_fence* @dma_fence_stub, %struct.dma_fence_ops* @dma_fence_stub_ops, %struct.spinlock* @dma_fence_stub_lock, i64 0, i64 0) #8, !dbg !1605
  %call = call i32 @dma_fence_signal_locked(%struct.dma_fence* @dma_fence_stub) #8, !dbg !1607
  br label %if.end, !dbg !1608

if.end:                                           ; preds = %if.then, %entry
  store %struct.spinlock* @dma_fence_stub_lock, %struct.spinlock** %lock.addr.i2, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !1609, !srcloc !1611
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i2, align 8, !dbg !1612
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !1612
  %rlock.i3 = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !1612
  %call1 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* @dma_fence_stub) #8, !dbg !1614
  ret %struct.dma_fence* %call1, !dbg !1615
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dma_fence_init(%struct.dma_fence* %fence, %struct.dma_fence_ops* %ops, %struct.spinlock* %lock, i64 %context, i64 %seqno) #0 !dbg !1616 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  %ops.addr = alloca %struct.dma_fence_ops*, align 8
  %lock.addr = alloca %struct.spinlock*, align 8
  %context.addr = alloca i64, align 8
  %seqno.addr = alloca i64, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !1619, metadata !DIExpression()), !dbg !1620
  store %struct.dma_fence_ops* %ops, %struct.dma_fence_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence_ops** %ops.addr, metadata !1621, metadata !DIExpression()), !dbg !1622
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !1623, metadata !DIExpression()), !dbg !1624
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !1625, metadata !DIExpression()), !dbg !1626
  store i64 %seqno, i64* %seqno.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %seqno.addr, metadata !1627, metadata !DIExpression()), !dbg !1628
  br label %do.body, !dbg !1629

do.body:                                          ; preds = %entry
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !1630
  %tobool = icmp ne %struct.spinlock* %0, null, !dbg !1630
  %lnot = xor i1 %tobool, true, !dbg !1630
  %lnot1 = xor i1 %lnot, true, !dbg !1630
  %lnot2 = xor i1 %lnot1, true, !dbg !1630
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1630
  %conv = sext i32 %lnot.ext to i64, !dbg !1630
  %tobool3 = icmp ne i64 %conv, 0, !dbg !1630
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1633

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !1630

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !1634

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !1636

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !1634

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 851, i32 0, i64 12) #5, !dbg !1638, !srcloc !1640
  br label %do.end7, !dbg !1638

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1634

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 194) #5, !dbg !1641, !srcloc !1644
  unreachable, !dbg !1645

do.end9:                                          ; No predecessors!
  br label %do.end10, !dbg !1634

do.end10:                                         ; preds = %do.end9
  br label %if.end, !dbg !1634

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.end11, !dbg !1633

do.end11:                                         ; preds = %if.end
  br label %do.body12, !dbg !1646

do.body12:                                        ; preds = %do.end11
  %1 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops.addr, align 8, !dbg !1647
  %tobool13 = icmp ne %struct.dma_fence_ops* %1, null, !dbg !1647
  br i1 %tobool13, label %lor.lhs.false, label %lor.end, !dbg !1647

lor.lhs.false:                                    ; preds = %do.body12
  %2 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops.addr, align 8, !dbg !1647
  %get_driver_name = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %2, i32 0, i32 1, !dbg !1647
  %3 = load i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)** %get_driver_name, align 8, !dbg !1647
  %tobool14 = icmp ne i8* (%struct.dma_fence*)* %3, null, !dbg !1647
  br i1 %tobool14, label %lor.rhs, label %lor.end, !dbg !1647

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops.addr, align 8, !dbg !1647
  %get_timeline_name = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %4, i32 0, i32 2, !dbg !1647
  %5 = load i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)** %get_timeline_name, align 8, !dbg !1647
  %tobool15 = icmp ne i8* (%struct.dma_fence*)* %5, null, !dbg !1647
  %lnot16 = xor i1 %tobool15, true, !dbg !1647
  br label %lor.end, !dbg !1647

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.body12
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %do.body12 ], [ %lnot16, %lor.rhs ]
  %lnot18 = xor i1 %6, true, !dbg !1647
  %lnot20 = xor i1 %lnot18, true, !dbg !1647
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !1647
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !1647
  %tobool23 = icmp ne i64 %conv22, 0, !dbg !1647
  br i1 %tobool23, label %if.then24, label %if.end33, !dbg !1650

if.then24:                                        ; preds = %lor.end
  br label %do.body25, !dbg !1647

do.body25:                                        ; preds = %if.then24
  br label %do.body26, !dbg !1651

do.body26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !1653

do.end27:                                         ; preds = %do.body26
  br label %do.body28, !dbg !1651

do.body28:                                        ; preds = %do.end27
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 852, i32 0, i64 12) #5, !dbg !1655, !srcloc !1657
  br label %do.end29, !dbg !1655

do.end29:                                         ; preds = %do.body28
  br label %do.body30, !dbg !1651

do.body30:                                        ; preds = %do.end29
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 195) #5, !dbg !1658, !srcloc !1661
  unreachable, !dbg !1662

do.end31:                                         ; No predecessors!
  br label %do.end32, !dbg !1651

do.end32:                                         ; preds = %do.end31
  br label %if.end33, !dbg !1651

if.end33:                                         ; preds = %do.end32, %lor.end
  br label %do.end34, !dbg !1650

do.end34:                                         ; preds = %if.end33
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1663
  %refcount = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %7, i32 0, i32 6, !dbg !1664
  call void @kref_init(%struct.kref* %refcount) #8, !dbg !1665
  %8 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops.addr, align 8, !dbg !1666
  %9 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1667
  %ops35 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %9, i32 0, i32 1, !dbg !1668
  store %struct.dma_fence_ops* %8, %struct.dma_fence_ops** %ops35, align 8, !dbg !1669
  %10 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1670
  %11 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %10, i32 0, i32 2, !dbg !1671
  %cb_list = bitcast %union.anon.0* %11 to %struct.list_head*, !dbg !1671
  call void @INIT_LIST_HEAD(%struct.list_head* %cb_list) #8, !dbg !1672
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !1673
  %13 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1674
  %lock36 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %13, i32 0, i32 0, !dbg !1675
  store %struct.spinlock* %12, %struct.spinlock** %lock36, align 8, !dbg !1676
  %14 = load i64, i64* %context.addr, align 8, !dbg !1677
  %15 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1678
  %context37 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %15, i32 0, i32 3, !dbg !1679
  store i64 %14, i64* %context37, align 8, !dbg !1680
  %16 = load i64, i64* %seqno.addr, align 8, !dbg !1681
  %17 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1682
  %seqno38 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %17, i32 0, i32 4, !dbg !1683
  store i64 %16, i64* %seqno38, align 8, !dbg !1684
  %18 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1685
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %18, i32 0, i32 5, !dbg !1686
  store i64 0, i64* %flags, align 8, !dbg !1687
  %19 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1688
  %error = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %19, i32 0, i32 7, !dbg !1689
  store i32 0, i32* %error, align 4, !dbg !1690
  %20 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1691
  call void @trace_dma_fence_init(%struct.dma_fence* %20) #8, !dbg !1692
  ret void, !dbg !1693
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dma_fence_signal_locked(%struct.dma_fence* %fence) #0 !dbg !1694 {
entry:
  %retval = alloca i32, align 4
  %fence.addr = alloca %struct.dma_fence*, align 8
  %cur = alloca %struct.dma_fence_cb*, align 8
  %tmp = alloca %struct.dma_fence_cb*, align 8
  %cb_list = alloca %struct.list_head, align 8
  %__mptr = alloca i8*, align 8
  %tmp7 = alloca %struct.dma_fence_cb*, align 8
  %__mptr8 = alloca i8*, align 8
  %tmp12 = alloca %struct.dma_fence_cb*, align 8
  %__mptr19 = alloca i8*, align 8
  %tmp24 = alloca %struct.dma_fence_cb*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !1697, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.declare(metadata %struct.dma_fence_cb** %cur, metadata !1699, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.declare(metadata %struct.dma_fence_cb** %tmp, metadata !1701, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.declare(metadata %struct.list_head* %cb_list, metadata !1703, metadata !DIExpression()), !dbg !1704
  br label %do.body, !dbg !1705

do.body:                                          ; preds = %entry
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1706
  %lock = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 0, !dbg !1706
  %1 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !1706
  br label %do.end, !dbg !1706

do.end:                                           ; preds = %do.body
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1708
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %2, i32 0, i32 5, !dbg !1708
  %call = call zeroext i1 @test_and_set_bit(i64 0, i64* %flags) #8, !dbg !1708
  %lnot = xor i1 %call, true, !dbg !1708
  %lnot1 = xor i1 %lnot, true, !dbg !1708
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1708
  %conv = sext i32 %lnot.ext to i64, !dbg !1708
  %tobool = icmp ne i64 %conv, 0, !dbg !1708
  br i1 %tobool, label %if.then, label %if.end, !dbg !1710

if.then:                                          ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !1711
  br label %return, !dbg !1711

if.end:                                           ; preds = %do.end
  %3 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1712
  %4 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %3, i32 0, i32 2, !dbg !1713
  %cb_list2 = bitcast %union.anon.0* %4 to %struct.list_head*, !dbg !1713
  call void @list_replace(%struct.list_head* %cb_list2, %struct.list_head* %cb_list) #8, !dbg !1714
  %call3 = call i64 @ktime_get() #8, !dbg !1715
  %5 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1716
  %6 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %5, i32 0, i32 2, !dbg !1717
  %timestamp = bitcast %union.anon.0* %6 to i64*, !dbg !1717
  store i64 %call3, i64* %timestamp, align 8, !dbg !1718
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1719
  %flags4 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %7, i32 0, i32 5, !dbg !1720
  call void @set_bit(i64 1, i64* %flags4) #8, !dbg !1721
  %8 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1722
  call void @trace_dma_fence_signaled(%struct.dma_fence* %8) #8, !dbg !1723
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1724, metadata !DIExpression()), !dbg !1727
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %cb_list, i32 0, i32 0, !dbg !1727
  %9 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1727
  %10 = bitcast %struct.list_head* %9 to i8*, !dbg !1727
  store i8* %10, i8** %__mptr, align 8, !dbg !1727
  br label %do.body5, !dbg !1727

do.body5:                                         ; preds = %if.end
  br label %do.end6, !dbg !1728

do.end6:                                          ; preds = %do.body5
  %11 = load i8*, i8** %__mptr, align 8, !dbg !1727
  %add.ptr = getelementptr i8, i8* %11, i64 0, !dbg !1727
  %12 = bitcast i8* %add.ptr to %struct.dma_fence_cb*, !dbg !1727
  store %struct.dma_fence_cb* %12, %struct.dma_fence_cb** %tmp7, align 8, !dbg !1728
  %13 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %tmp7, align 8, !dbg !1727
  store %struct.dma_fence_cb* %13, %struct.dma_fence_cb** %cur, align 8, !dbg !1730
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !1731, metadata !DIExpression()), !dbg !1733
  %14 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cur, align 8, !dbg !1733
  %node = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %14, i32 0, i32 0, !dbg !1733
  %next9 = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !1733
  %15 = load %struct.list_head*, %struct.list_head** %next9, align 8, !dbg !1733
  %16 = bitcast %struct.list_head* %15 to i8*, !dbg !1733
  store i8* %16, i8** %__mptr8, align 8, !dbg !1733
  br label %do.body10, !dbg !1733

do.body10:                                        ; preds = %do.end6
  br label %do.end11, !dbg !1734

do.end11:                                         ; preds = %do.body10
  %17 = load i8*, i8** %__mptr8, align 8, !dbg !1733
  %add.ptr13 = getelementptr i8, i8* %17, i64 0, !dbg !1733
  %18 = bitcast i8* %add.ptr13 to %struct.dma_fence_cb*, !dbg !1733
  store %struct.dma_fence_cb* %18, %struct.dma_fence_cb** %tmp12, align 8, !dbg !1734
  %19 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %tmp12, align 8, !dbg !1733
  store %struct.dma_fence_cb* %19, %struct.dma_fence_cb** %tmp, align 8, !dbg !1730
  br label %for.cond, !dbg !1730

for.cond:                                         ; preds = %do.end23, %do.end11
  %20 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cur, align 8, !dbg !1736
  %node14 = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %20, i32 0, i32 0, !dbg !1736
  %cmp = icmp eq %struct.list_head* %node14, %cb_list, !dbg !1736
  %lnot16 = xor i1 %cmp, true, !dbg !1736
  br i1 %lnot16, label %for.body, label %for.end, !dbg !1730

for.body:                                         ; preds = %for.cond
  %21 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cur, align 8, !dbg !1738
  %node18 = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %21, i32 0, i32 0, !dbg !1740
  call void @INIT_LIST_HEAD(%struct.list_head* %node18) #8, !dbg !1741
  %22 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cur, align 8, !dbg !1742
  %func = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %22, i32 0, i32 1, !dbg !1743
  %23 = load void (%struct.dma_fence*, %struct.dma_fence_cb*)*, void (%struct.dma_fence*, %struct.dma_fence_cb*)** %func, align 8, !dbg !1743
  %24 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1744
  %25 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cur, align 8, !dbg !1745
  call void %23(%struct.dma_fence* %24, %struct.dma_fence_cb* %25) #8, !dbg !1742
  br label %for.inc, !dbg !1746

for.inc:                                          ; preds = %for.body
  %26 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %tmp, align 8, !dbg !1736
  store %struct.dma_fence_cb* %26, %struct.dma_fence_cb** %cur, align 8, !dbg !1736
  call void @llvm.dbg.declare(metadata i8** %__mptr19, metadata !1747, metadata !DIExpression()), !dbg !1749
  %27 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %tmp, align 8, !dbg !1749
  %node20 = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %27, i32 0, i32 0, !dbg !1749
  %next21 = getelementptr inbounds %struct.list_head, %struct.list_head* %node20, i32 0, i32 0, !dbg !1749
  %28 = load %struct.list_head*, %struct.list_head** %next21, align 8, !dbg !1749
  %29 = bitcast %struct.list_head* %28 to i8*, !dbg !1749
  store i8* %29, i8** %__mptr19, align 8, !dbg !1749
  br label %do.body22, !dbg !1749

do.body22:                                        ; preds = %for.inc
  br label %do.end23, !dbg !1750

do.end23:                                         ; preds = %do.body22
  %30 = load i8*, i8** %__mptr19, align 8, !dbg !1749
  %add.ptr25 = getelementptr i8, i8* %30, i64 0, !dbg !1749
  %31 = bitcast i8* %add.ptr25 to %struct.dma_fence_cb*, !dbg !1749
  store %struct.dma_fence_cb* %31, %struct.dma_fence_cb** %tmp24, align 8, !dbg !1750
  %32 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %tmp24, align 8, !dbg !1749
  store %struct.dma_fence_cb* %32, %struct.dma_fence_cb** %tmp, align 8, !dbg !1736
  br label %for.cond, !dbg !1736, !llvm.loop !1752

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1754
  br label %return, !dbg !1754

return:                                           ; preds = %for.end, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !1755
  ret i32 %33, !dbg !1755
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %fence) #0 !dbg !1756 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !1759, metadata !DIExpression()), !dbg !1760
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1761
  %tobool = icmp ne %struct.dma_fence* %0, null, !dbg !1761
  br i1 %tobool, label %if.then, label %if.end, !dbg !1763

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1764
  %refcount = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 6, !dbg !1765
  call void @kref_get(%struct.kref* %refcount) #8, !dbg !1766
  br label %if.end, !dbg !1766

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1767
  ret %struct.dma_fence* %2, !dbg !1768
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dma_fence_context_alloc(i32 %num) #0 !dbg !1769 {
entry:
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !1772, metadata !DIExpression()), !dbg !1780
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1788, metadata !DIExpression()), !dbg !1789
  %i.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i, metadata !1790, metadata !DIExpression()), !dbg !1791
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !1792, metadata !DIExpression()), !dbg !1793
  %num.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !1794, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !1796, metadata !DIExpression()), !dbg !1798
  %0 = load i32, i32* %num.addr, align 4, !dbg !1798
  %tobool = icmp ne i32 %0, 0, !dbg !1798
  %lnot = xor i1 %tobool, true, !dbg !1798
  %lnot1 = xor i1 %lnot, true, !dbg !1798
  %lnot2 = xor i1 %lnot1, true, !dbg !1798
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1798
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !1798
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !1799
  %tobool3 = icmp ne i32 %1, 0, !dbg !1799
  %lnot4 = xor i1 %tobool3, true, !dbg !1799
  %lnot6 = xor i1 %lnot4, true, !dbg !1799
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1799
  %conv = sext i32 %lnot.ext7 to i64, !dbg !1799
  %tobool8 = icmp ne i64 %conv, 0, !dbg !1799
  br i1 %tobool8, label %if.then, label %if.end, !dbg !1798

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1799

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !1801

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !1803

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !1801

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 154, i32 2305, i64 12) #5, !dbg !1805, !srcloc !1807
  br label %do.end11, !dbg !1805

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 181) #5, !dbg !1808, !srcloc !1810
  br label %do.body12, !dbg !1801

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !1811

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !1801

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !1801

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !1798
  %tobool15 = icmp ne i32 %2, 0, !dbg !1798
  %lnot16 = xor i1 %tobool15, true, !dbg !1798
  %lnot18 = xor i1 %lnot16, true, !dbg !1798
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !1798
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !1798
  store i64 %conv20, i64* %tmp, align 8, !dbg !1799
  %3 = load i64, i64* %tmp, align 8, !dbg !1798
  %4 = load i32, i32* %num.addr, align 4, !dbg !1813
  %conv21 = zext i32 %4 to i64, !dbg !1813
  store i64 %conv21, i64* %i.addr.i, align 8
  store %struct.atomic64_t* @dma_fence_context_counter, %struct.atomic64_t** %v.addr.i, align 8
  %5 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !1814
  %6 = bitcast %struct.atomic64_t* %5 to i8*, !dbg !1814
  store i8* %6, i8** %v.addr.i.i, align 8
  store i64 8, i64* %size.addr.i.i, align 8
  %7 = load i8*, i8** %v.addr.i.i, align 8, !dbg !1815
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1816
  %conv.i.i = trunc i64 %8 to i32, !dbg !1816
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %7, i32 %conv.i.i) #9, !dbg !1817
  %9 = load i8*, i8** %v.addr.i.i, align 8, !dbg !1818
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !1818
  call void @kcsan_check_access(i8* %9, i64 %10, i32 7) #9, !dbg !1818
  %11 = load i64, i64* %i.addr.i, align 8, !dbg !1819
  %12 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !1820
  %call.i = call i64 @arch_atomic64_fetch_add(i64 %11, %struct.atomic64_t* %12) #9, !dbg !1821
  ret i64 %call.i, !dbg !1822
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !1823 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1829, metadata !DIExpression()), !dbg !1832
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1834, metadata !DIExpression()), !dbg !1835
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !1836, metadata !DIExpression()), !dbg !1838
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !1772, metadata !DIExpression()), !dbg !1839
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1788, metadata !DIExpression()), !dbg !1841
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1842, metadata !DIExpression()), !dbg !1843
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1844, metadata !DIExpression()), !dbg !1845
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1846
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1847
  %div = sdiv i64 %1, 64, !dbg !1847
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1848
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1846
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1849
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1850
  %conv.i = trunc i64 %4 to i32, !dbg !1850
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !1851
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1852
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1852
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #9, !dbg !1852
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1853
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !1854
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !1838
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !1838
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #5, !dbg !1838, !srcloc !1855
  store i8 %11, i8* %c.i, align 1, !dbg !1838
  %12 = load i8, i8* %c.i, align 1, !dbg !1838
  %tobool.i = trunc i8 %12 to i1, !dbg !1838
  %frombool.i = zext i1 %tobool.i to i8, !dbg !1838
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !1838
  %13 = load i8, i8* %tmp.i, align 1, !dbg !1838
  %tobool1.i = trunc i8 %13 to i1, !dbg !1838
  ret i1 %tobool1.i, !dbg !1856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_replace(%struct.list_head* %old, %struct.list_head* %new) #0 !dbg !1857 {
entry:
  %old.addr = alloca %struct.list_head*, align 8
  %new.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %old, %struct.list_head** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %old.addr, metadata !1861, metadata !DIExpression()), !dbg !1862
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1863, metadata !DIExpression()), !dbg !1864
  %0 = load %struct.list_head*, %struct.list_head** %old.addr, align 8, !dbg !1865
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !1866
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1866
  %2 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1867
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !1868
  store %struct.list_head* %1, %struct.list_head** %next1, align 8, !dbg !1869
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1870
  %4 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1871
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 0, !dbg !1872
  %5 = load %struct.list_head*, %struct.list_head** %next2, align 8, !dbg !1872
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i32 0, i32 1, !dbg !1873
  store %struct.list_head* %3, %struct.list_head** %prev, align 8, !dbg !1874
  %6 = load %struct.list_head*, %struct.list_head** %old.addr, align 8, !dbg !1875
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 1, !dbg !1876
  %7 = load %struct.list_head*, %struct.list_head** %prev3, align 8, !dbg !1876
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1877
  %prev4 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !1878
  store %struct.list_head* %7, %struct.list_head** %prev4, align 8, !dbg !1879
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1880
  %10 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1881
  %prev5 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 1, !dbg !1882
  %11 = load %struct.list_head*, %struct.list_head** %prev5, align 8, !dbg !1882
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 0, !dbg !1883
  store %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !1884
  ret void, !dbg !1885
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !1886 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1889, metadata !DIExpression()), !dbg !1891
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1893, metadata !DIExpression()), !dbg !1894
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !1895, metadata !DIExpression()), !dbg !1897
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1899, metadata !DIExpression()), !dbg !1900
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1901, metadata !DIExpression()), !dbg !1902
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1903, metadata !DIExpression()), !dbg !1904
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1905
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1906
  %div = sdiv i64 %1, 64, !dbg !1906
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1907
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1905
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1908
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1909
  %conv.i = trunc i64 %4 to i32, !dbg !1909
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !1910
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1911
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1911
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #9, !dbg !1911
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1912
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !1913
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !1914
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #5, !dbg !1916
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !1917

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !1918
  %12 = bitcast i64* %11 to i8*, !dbg !1918
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !1918
  %shr.i = ashr i64 %13, 3, !dbg !1918
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !1918
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !1920
  %and.i = and i64 %14, 7, !dbg !1920
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !1920
  %shl.i = shl i32 1, %sh_prom.i, !dbg !1920
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #5, !dbg !1921, !srcloc !1922
  br label %arch_set_bit.exit, !dbg !1923

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !1924
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !1926
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #5, !dbg !1927, !srcloc !1928
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !1929
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_dma_fence_signaled(%struct.dma_fence* %fence) #0 !dbg !1930 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !1932, metadata !DIExpression()), !dbg !1933
  ret void, !dbg !1933
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !1934 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !1937, metadata !DIExpression()), !dbg !1938
  br label %do.body, !dbg !1939

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1940

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1942

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1940

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !1944
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !1944
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !1944
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !1944
  br label %do.end3, !dbg !1944

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1940

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !1946
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !1947
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !1948
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !1949
  ret void, !dbg !1950
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dma_fence_signal(%struct.dma_fence* %fence) #0 !dbg !1951 {
entry:
  %lock.addr.i24 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i24, metadata !1952, metadata !DIExpression()), !dbg !1956
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1958, metadata !DIExpression()), !dbg !1959
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !1960, metadata !DIExpression()), !dbg !1965
  %retval = alloca i32, align 4
  %fence.addr = alloca %struct.dma_fence*, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp2 = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !1972, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !1974, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1976, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.declare(metadata i8* %tmp, metadata !1978, metadata !DIExpression()), !dbg !1979
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !1980
  %tobool = icmp ne %struct.dma_fence* %0, null, !dbg !1980
  br i1 %tobool, label %if.end, label %if.then, !dbg !1982

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !1983
  br label %return, !dbg !1983

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @dma_fence_begin_signalling() #8, !dbg !1984
  %frombool = zext i1 %call to i8, !dbg !1985
  store i8 %frombool, i8* %tmp, align 1, !dbg !1985
  br label %do.body, !dbg !1986

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !1987

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1988, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1991, metadata !DIExpression()), !dbg !1990
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1990
  %conv = zext i1 %cmp to i32, !dbg !1990
  store i32 1, i32* %tmp2, align 4, !dbg !1990
  %1 = load i32, i32* %tmp2, align 4, !dbg !1990
  br label %do.body3, !dbg !1992

do.body3:                                         ; preds = %do.body1
  br label %do.body4, !dbg !1993

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !1994

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !1996, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !2000, metadata !DIExpression()), !dbg !1999
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !1999
  %conv9 = zext i1 %cmp8 to i32, !dbg !1999
  store i32 1, i32* %tmp10, align 4, !dbg !1999
  %2 = load i32, i32* %tmp10, align 4, !dbg !1999
  %call11 = call i64 @arch_local_irq_save() #8, !dbg !2001
  store i64 %call11, i64* %flags, align 8, !dbg !2001
  br label %do.end, !dbg !2001

do.end:                                           ; preds = %do.body5
  br label %do.end12, !dbg !1994

do.end12:                                         ; preds = %do.end
  br label %do.body13, !dbg !1993

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2002, !srcloc !2003
  br label %do.body14, !dbg !2002

do.body14:                                        ; preds = %do.body13
  %3 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2004
  %lock = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %3, i32 0, i32 0, !dbg !2004
  %4 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !2004
  store %struct.spinlock* %4, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2005
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !2006
  %rlock.i = bitcast %union.anon* %6 to %struct.raw_spinlock*, !dbg !2006
  br label %do.end16, !dbg !2004

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !2002

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !1993

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !1992

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !1987

do.end20:                                         ; preds = %do.end19
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2007
  %call21 = call i32 @dma_fence_signal_locked(%struct.dma_fence* %7) #8, !dbg !2008
  store i32 %call21, i32* %ret, align 4, !dbg !2009
  %8 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2010
  %lock22 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %8, i32 0, i32 0, !dbg !2011
  %9 = load %struct.spinlock*, %struct.spinlock** %lock22, align 8, !dbg !2011
  %10 = load i64, i64* %flags, align 8, !dbg !2012
  store %struct.spinlock* %9, %struct.spinlock** %lock.addr.i24, align 8
  store i64 %10, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !80, metadata !2013, metadata !DIExpression()) #5, !dbg !2016
  call void @llvm.dbg.declare(metadata !80, metadata !2017, metadata !DIExpression()) #5, !dbg !2016
  store i32 1, i32* %tmp.i, align 4, !dbg !2016
  %11 = load i32, i32* %tmp.i, align 4, !dbg !2016
  call void @llvm.dbg.declare(metadata !80, metadata !2018, metadata !DIExpression()) #5, !dbg !2023
  call void @llvm.dbg.declare(metadata !80, metadata !2024, metadata !DIExpression()) #5, !dbg !2023
  store i32 1, i32* %tmp8.i, align 4, !dbg !2023
  %12 = load i32, i32* %tmp8.i, align 4, !dbg !2023
  %13 = load i64, i64* %flags.addr.i, align 8, !dbg !2025
  call void @arch_local_irq_restore(i64 %13) #9, !dbg !2025
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2026, !srcloc !2028
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i24, align 8, !dbg !2029
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !2029
  %rlock.i25 = bitcast %union.anon* %15 to %struct.raw_spinlock*, !dbg !2029
  %16 = load i8, i8* %tmp, align 1, !dbg !2031
  %tobool23 = trunc i8 %16 to i1, !dbg !2031
  call void @dma_fence_end_signalling(i1 zeroext %tobool23) #8, !dbg !2032
  %17 = load i32, i32* %ret, align 4, !dbg !2033
  store i32 %17, i32* %retval, align 4, !dbg !2034
  br label %return, !dbg !2034

return:                                           ; preds = %do.end20, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !2035
  ret i32 %18, !dbg !2035
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dma_fence_begin_signalling() #0 !dbg !2036 {
entry:
  ret i1 true, !dbg !2039
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !2040 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !2044, metadata !DIExpression()), !dbg !2045
  %call = call i64 @arch_local_save_flags() #8, !dbg !2046
  store i64 %call, i64* %f, align 8, !dbg !2047
  call void @arch_local_irq_disable() #8, !dbg !2048
  %0 = load i64, i64* %f, align 8, !dbg !2049
  ret i64 %0, !dbg !2050
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_end_signalling(i1 zeroext %cookie) #0 !dbg !2051 {
entry:
  %cookie.addr = alloca i8, align 1
  %frombool = zext i1 %cookie to i8
  store i8 %frombool, i8* %cookie.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cookie.addr, metadata !2054, metadata !DIExpression()), !dbg !2055
  ret void, !dbg !2056
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dma_fence_wait_timeout(%struct.dma_fence* %fence, i1 zeroext %intr, i64 %timeout) #0 !dbg !2057 {
entry:
  %retval = alloca i64, align 8
  %fence.addr = alloca %struct.dma_fence*, align 8
  %intr.addr = alloca i8, align 1
  %timeout.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2058, metadata !DIExpression()), !dbg !2059
  %frombool = zext i1 %intr to i8
  store i8 %frombool, i8* %intr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %intr.addr, metadata !2060, metadata !DIExpression()), !dbg !2061
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !2062, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !2064, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2066, metadata !DIExpression()), !dbg !2069
  %0 = load i64, i64* %timeout.addr, align 8, !dbg !2069
  %cmp = icmp slt i64 %0, 0, !dbg !2069
  %lnot = xor i1 %cmp, true, !dbg !2069
  %lnot1 = xor i1 %lnot, true, !dbg !2069
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2069
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2069
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !2070
  %tobool = icmp ne i32 %1, 0, !dbg !2070
  %lnot2 = xor i1 %tobool, true, !dbg !2070
  %lnot4 = xor i1 %lnot2, true, !dbg !2070
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2070
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2070
  %tobool6 = icmp ne i64 %conv, 0, !dbg !2070
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2069

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2070

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !2072

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !2074

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !2072

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 414, i32 2305, i64 12) #5, !dbg !2076, !srcloc !2078
  br label %do.end9, !dbg !2076

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 185) #5, !dbg !2079, !srcloc !2081
  br label %do.body10, !dbg !2072

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !2082

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !2072

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !2072

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !2069
  %tobool13 = icmp ne i32 %2, 0, !dbg !2069
  %lnot14 = xor i1 %tobool13, true, !dbg !2069
  %lnot16 = xor i1 %lnot14, true, !dbg !2069
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !2069
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !2069
  store i64 %conv18, i64* %tmp, align 8, !dbg !2070
  %3 = load i64, i64* %tmp, align 8, !dbg !2069
  %tobool19 = icmp ne i64 %3, 0, !dbg !2084
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !2085

if.then20:                                        ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !2086
  br label %return, !dbg !2086

if.end21:                                         ; preds = %if.end
  br label %do.body22, !dbg !2087

do.body22:                                        ; preds = %if.end21
  br label %do.body23, !dbg !2088

do.body23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !2090

do.end24:                                         ; preds = %do.body23
  br label %do.end25, !dbg !2088

do.end25:                                         ; preds = %do.end24
  call void @__dma_fence_might_wait() #8, !dbg !2092
  %4 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2093
  call void @trace_dma_fence_wait_start(%struct.dma_fence* %4) #8, !dbg !2094
  %5 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2095
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %5, i32 0, i32 1, !dbg !2097
  %6 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !2097
  %wait = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %6, i32 0, i32 5, !dbg !2098
  %7 = load i64 (%struct.dma_fence*, i1, i64)*, i64 (%struct.dma_fence*, i1, i64)** %wait, align 8, !dbg !2098
  %tobool26 = icmp ne i64 (%struct.dma_fence*, i1, i64)* %7, null, !dbg !2095
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !2099

if.then27:                                        ; preds = %do.end25
  %8 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2100
  %ops28 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %8, i32 0, i32 1, !dbg !2101
  %9 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops28, align 8, !dbg !2101
  %wait29 = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %9, i32 0, i32 5, !dbg !2102
  %10 = load i64 (%struct.dma_fence*, i1, i64)*, i64 (%struct.dma_fence*, i1, i64)** %wait29, align 8, !dbg !2102
  %11 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2103
  %12 = load i8, i8* %intr.addr, align 1, !dbg !2104
  %tobool30 = trunc i8 %12 to i1, !dbg !2104
  %13 = load i64, i64* %timeout.addr, align 8, !dbg !2105
  %call = call i64 %10(%struct.dma_fence* %11, i1 zeroext %tobool30, i64 %13) #8, !dbg !2100
  store i64 %call, i64* %ret, align 8, !dbg !2106
  br label %if.end33, !dbg !2107

if.else:                                          ; preds = %do.end25
  %14 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2108
  %15 = load i8, i8* %intr.addr, align 1, !dbg !2109
  %tobool31 = trunc i8 %15 to i1, !dbg !2109
  %16 = load i64, i64* %timeout.addr, align 8, !dbg !2110
  %call32 = call i64 @dma_fence_default_wait(%struct.dma_fence* %14, i1 zeroext %tobool31, i64 %16) #8, !dbg !2111
  store i64 %call32, i64* %ret, align 8, !dbg !2112
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then27
  %17 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2113
  call void @trace_dma_fence_wait_end(%struct.dma_fence* %17) #8, !dbg !2114
  %18 = load i64, i64* %ret, align 8, !dbg !2115
  store i64 %18, i64* %retval, align 8, !dbg !2116
  br label %return, !dbg !2116

return:                                           ; preds = %if.end33, %if.then20
  %19 = load i64, i64* %retval, align 8, !dbg !2117
  ret i64 %19, !dbg !2117
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__dma_fence_might_wait() #0 !dbg !2118 {
entry:
  ret void, !dbg !2119
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_dma_fence_wait_start(%struct.dma_fence* %fence) #0 !dbg !2120 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2121, metadata !DIExpression()), !dbg !2122
  ret void, !dbg !2122
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dma_fence_default_wait(%struct.dma_fence* %fence, i1 zeroext %intr, i64 %timeout) #0 !dbg !2123 {
entry:
  %pscr_ret__.i127 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i127, metadata !2124, metadata !DIExpression()), !dbg !2130
  %__vpp_verify.i128 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i128, metadata !2132, metadata !DIExpression()), !dbg !2136
  %pfo_val__.i129 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i129, metadata !2137, metadata !DIExpression()), !dbg !2139
  %tmp.i130 = alloca %struct.task_struct*, align 8
  %tmp1.i131 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i122 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i122, metadata !2124, metadata !DIExpression()), !dbg !2140
  %__vpp_verify.i123 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i123, metadata !2132, metadata !DIExpression()), !dbg !2144
  %pfo_val__.i124 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i124, metadata !2137, metadata !DIExpression()), !dbg !2145
  %tmp.i125 = alloca %struct.task_struct*, align 8
  %tmp1.i126 = alloca %struct.task_struct*, align 8
  %lock.addr.i120 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i120, metadata !1960, metadata !DIExpression()), !dbg !2146
  %lock.addr.i115 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i115, metadata !1952, metadata !DIExpression()), !dbg !2153
  %flags.addr.i116 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i116, metadata !1958, metadata !DIExpression()), !dbg !2155
  %tmp.i117 = alloca i32, align 4
  %tmp8.i118 = alloca i32, align 4
  %pscr_ret__.i110 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i110, metadata !2124, metadata !DIExpression()), !dbg !2156
  %__vpp_verify.i111 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i111, metadata !2132, metadata !DIExpression()), !dbg !2159
  %pfo_val__.i112 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i112, metadata !2137, metadata !DIExpression()), !dbg !2160
  %tmp.i113 = alloca %struct.task_struct*, align 8
  %tmp1.i114 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i105 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i105, metadata !2124, metadata !DIExpression()), !dbg !2161
  %__vpp_verify.i106 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i106, metadata !2132, metadata !DIExpression()), !dbg !2163
  %pfo_val__.i107 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i107, metadata !2137, metadata !DIExpression()), !dbg !2164
  %tmp.i108 = alloca %struct.task_struct*, align 8
  %tmp1.i109 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i100 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i100, metadata !2124, metadata !DIExpression()), !dbg !2165
  %__vpp_verify.i101 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i101, metadata !2132, metadata !DIExpression()), !dbg !2167
  %pfo_val__.i102 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i102, metadata !2137, metadata !DIExpression()), !dbg !2168
  %tmp.i103 = alloca %struct.task_struct*, align 8
  %tmp1.i104 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !2124, metadata !DIExpression()), !dbg !2169
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !2132, metadata !DIExpression()), !dbg !2172
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !2137, metadata !DIExpression()), !dbg !2173
  %tmp.i99 = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %lock.addr.i97 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i97, metadata !1952, metadata !DIExpression()), !dbg !2174
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1958, metadata !DIExpression()), !dbg !2176
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !1960, metadata !DIExpression()), !dbg !2177
  %retval = alloca i64, align 8
  %fence.addr = alloca %struct.dma_fence*, align 8
  %intr.addr = alloca i8, align 1
  %timeout.addr = alloca i64, align 8
  %cb = alloca %struct.default_wait_cb, align 8
  %flags = alloca i64, align 8
  %ret = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__dummy50 = alloca i64, align 8
  %__dummy251 = alloca i64, align 8
  %tmp54 = alloca i32, align 4
  %__dummy58 = alloca i64, align 8
  %__dummy259 = alloca i64, align 8
  %tmp62 = alloca i32, align 4
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2184, metadata !DIExpression()), !dbg !2185
  %frombool = zext i1 %intr to i8
  store i8 %frombool, i8* %intr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %intr.addr, metadata !2186, metadata !DIExpression()), !dbg !2187
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !2188, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.declare(metadata %struct.default_wait_cb* %cb, metadata !2190, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2192, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !2194, metadata !DIExpression()), !dbg !2195
  %0 = load i64, i64* %timeout.addr, align 8, !dbg !2196
  %tobool = icmp ne i64 %0, 0, !dbg !2196
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2196

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %timeout.addr, align 8, !dbg !2197
  br label %cond.end, !dbg !2196

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2196

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 1, %cond.false ], !dbg !2196
  store i64 %cond, i64* %ret, align 8, !dbg !2195
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2198
  %flags1 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %2, i32 0, i32 5, !dbg !2200
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags1) #8, !dbg !2201
  br i1 %call, label %if.then, label %if.end, !dbg !2202

if.then:                                          ; preds = %cond.end
  %3 = load i64, i64* %ret, align 8, !dbg !2203
  store i64 %3, i64* %retval, align 8, !dbg !2204
  br label %return, !dbg !2204

if.end:                                           ; preds = %cond.end
  br label %do.body, !dbg !2205

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !2206

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2207, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2210, metadata !DIExpression()), !dbg !2209
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2209
  %conv = zext i1 %cmp to i32, !dbg !2209
  store i32 1, i32* %tmp, align 4, !dbg !2209
  %4 = load i32, i32* %tmp, align 4, !dbg !2209
  br label %do.body3, !dbg !2211

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2212

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !2213

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !2215, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !2219, metadata !DIExpression()), !dbg !2218
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !2218
  %conv9 = zext i1 %cmp8 to i32, !dbg !2218
  store i32 1, i32* %tmp10, align 4, !dbg !2218
  %5 = load i32, i32* %tmp10, align 4, !dbg !2218
  %call11 = call i64 @arch_local_irq_save() #8, !dbg !2220
  store i64 %call11, i64* %flags, align 8, !dbg !2220
  br label %do.end, !dbg !2220

do.end:                                           ; preds = %do.body5
  br label %do.end12, !dbg !2213

do.end12:                                         ; preds = %do.end
  br label %do.body13, !dbg !2212

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2221, !srcloc !2222
  br label %do.body14, !dbg !2221

do.body14:                                        ; preds = %do.body13
  %6 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2223
  %lock = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %6, i32 0, i32 0, !dbg !2223
  %7 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !2223
  store %struct.spinlock* %7, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2224
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !2225
  %rlock.i = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !2225
  br label %do.end16, !dbg !2223

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !2221

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2212

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2211

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !2206

do.end20:                                         ; preds = %do.end19
  %10 = load i8, i8* %intr.addr, align 1, !dbg !2226
  %tobool21 = trunc i8 %10 to i1, !dbg !2226
  br i1 %tobool21, label %land.lhs.true, label %if.end27, !dbg !2227

land.lhs.true:                                    ; preds = %do.end20
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !2172
  %11 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !2172
  %12 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #10, !dbg !2173, !srcloc !2228
  store i64 %12, i64* %pfo_val__.i, align 8, !dbg !2173
  %13 = load i64, i64* %pfo_val__.i, align 8, !dbg !2173
  %14 = inttoptr i64 %13 to %struct.task_struct*, !dbg !2173
  store %struct.task_struct* %14, %struct.task_struct** %tmp.i99, align 8, !dbg !2173
  %15 = load %struct.task_struct*, %struct.task_struct** %tmp.i99, align 8, !dbg !2173
  store %struct.task_struct* %15, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !2169
  %16 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !2169
  store %struct.task_struct* %16, %struct.task_struct** %tmp1.i, align 8, !dbg !2169
  %17 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !2169
  %call24 = call i32 @signal_pending(%struct.task_struct* %17) #8, !dbg !2229
  %tobool25 = icmp ne i32 %call24, 0, !dbg !2229
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !2230

if.then26:                                        ; preds = %land.lhs.true
  store i64 -512, i64* %ret, align 8, !dbg !2231
  br label %out, !dbg !2233

if.end27:                                         ; preds = %land.lhs.true, %do.end20
  %18 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2234
  %call28 = call zeroext i1 @__dma_fence_enable_signaling(%struct.dma_fence* %18) #8, !dbg !2236
  br i1 %call28, label %if.end30, label %if.then29, !dbg !2237

if.then29:                                        ; preds = %if.end27
  br label %out, !dbg !2238

if.end30:                                         ; preds = %if.end27
  %19 = load i64, i64* %timeout.addr, align 8, !dbg !2239
  %tobool31 = icmp ne i64 %19, 0, !dbg !2239
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !2241

if.then32:                                        ; preds = %if.end30
  store i64 0, i64* %ret, align 8, !dbg !2242
  br label %out, !dbg !2244

if.end33:                                         ; preds = %if.end30
  %base = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %cb, i32 0, i32 0, !dbg !2245
  %func = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %base, i32 0, i32 1, !dbg !2246
  store void (%struct.dma_fence*, %struct.dma_fence_cb*)* @dma_fence_default_wait_cb, void (%struct.dma_fence*, %struct.dma_fence_cb*)** %func, align 8, !dbg !2247
  store i8* null, i8** %__vpp_verify.i101, align 8, !dbg !2167
  %20 = load i8*, i8** %__vpp_verify.i101, align 8, !dbg !2167
  %21 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #10, !dbg !2168, !srcloc !2228
  store i64 %21, i64* %pfo_val__.i102, align 8, !dbg !2168
  %22 = load i64, i64* %pfo_val__.i102, align 8, !dbg !2168
  %23 = inttoptr i64 %22 to %struct.task_struct*, !dbg !2168
  store %struct.task_struct* %23, %struct.task_struct** %tmp.i103, align 8, !dbg !2168
  %24 = load %struct.task_struct*, %struct.task_struct** %tmp.i103, align 8, !dbg !2168
  store %struct.task_struct* %24, %struct.task_struct** %pscr_ret__.i100, align 8, !dbg !2165
  %25 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i100, align 8, !dbg !2165
  store %struct.task_struct* %25, %struct.task_struct** %tmp1.i104, align 8, !dbg !2165
  %26 = load %struct.task_struct*, %struct.task_struct** %tmp1.i104, align 8, !dbg !2165
  %task = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %cb, i32 0, i32 1, !dbg !2248
  store %struct.task_struct* %26, %struct.task_struct** %task, align 8, !dbg !2249
  %base35 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %cb, i32 0, i32 0, !dbg !2250
  %node = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %base35, i32 0, i32 0, !dbg !2251
  %27 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2252
  %28 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %27, i32 0, i32 2, !dbg !2253
  %cb_list = bitcast %union.anon.0* %28 to %struct.list_head*, !dbg !2253
  call void @list_add(%struct.list_head* %node, %struct.list_head* %cb_list) #8, !dbg !2254
  br label %while.cond, !dbg !2255

while.cond:                                       ; preds = %if.end85, %if.end33
  %29 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2256
  %flags36 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %29, i32 0, i32 5, !dbg !2257
  %call37 = call zeroext i1 @test_bit(i64 0, i64* %flags36) #8, !dbg !2258
  br i1 %call37, label %land.end, label %land.rhs, !dbg !2259

land.rhs:                                         ; preds = %while.cond
  %30 = load i64, i64* %ret, align 8, !dbg !2260
  %cmp38 = icmp sgt i64 %30, 0, !dbg !2261
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %cmp38, %land.rhs ], !dbg !2262
  br i1 %31, label %while.body, label %while.end, !dbg !2255

while.body:                                       ; preds = %land.end
  %32 = load i8, i8* %intr.addr, align 1, !dbg !2263
  %tobool40 = trunc i8 %32 to i1, !dbg !2263
  br i1 %tobool40, label %if.then41, label %if.else, !dbg !2264

if.then41:                                        ; preds = %while.body
  store i8* null, i8** %__vpp_verify.i106, align 8, !dbg !2163
  %33 = load i8*, i8** %__vpp_verify.i106, align 8, !dbg !2163
  %34 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #10, !dbg !2164, !srcloc !2228
  store i64 %34, i64* %pfo_val__.i107, align 8, !dbg !2164
  %35 = load i64, i64* %pfo_val__.i107, align 8, !dbg !2164
  %36 = inttoptr i64 %35 to %struct.task_struct*, !dbg !2164
  store %struct.task_struct* %36, %struct.task_struct** %tmp.i108, align 8, !dbg !2164
  %37 = load %struct.task_struct*, %struct.task_struct** %tmp.i108, align 8, !dbg !2164
  store %struct.task_struct* %37, %struct.task_struct** %pscr_ret__.i105, align 8, !dbg !2161
  %38 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i105, align 8, !dbg !2161
  store %struct.task_struct* %38, %struct.task_struct** %tmp1.i109, align 8, !dbg !2161
  %39 = load %struct.task_struct*, %struct.task_struct** %tmp1.i109, align 8, !dbg !2161
  %state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 1, !dbg !2265
  store volatile i64 1, i64* %state, align 16, !dbg !2265
  br label %if.end45, !dbg !2265

if.else:                                          ; preds = %while.body
  store i8* null, i8** %__vpp_verify.i111, align 8, !dbg !2159
  %40 = load i8*, i8** %__vpp_verify.i111, align 8, !dbg !2159
  %41 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #10, !dbg !2160, !srcloc !2228
  store i64 %41, i64* %pfo_val__.i112, align 8, !dbg !2160
  %42 = load i64, i64* %pfo_val__.i112, align 8, !dbg !2160
  %43 = inttoptr i64 %42 to %struct.task_struct*, !dbg !2160
  store %struct.task_struct* %43, %struct.task_struct** %tmp.i113, align 8, !dbg !2160
  %44 = load %struct.task_struct*, %struct.task_struct** %tmp.i113, align 8, !dbg !2160
  store %struct.task_struct* %44, %struct.task_struct** %pscr_ret__.i110, align 8, !dbg !2156
  %45 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i110, align 8, !dbg !2156
  store %struct.task_struct* %45, %struct.task_struct** %tmp1.i114, align 8, !dbg !2156
  %46 = load %struct.task_struct*, %struct.task_struct** %tmp1.i114, align 8, !dbg !2156
  %state44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 1, !dbg !2266
  store volatile i64 2, i64* %state44, align 16, !dbg !2266
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then41
  %47 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2267
  %lock46 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %47, i32 0, i32 0, !dbg !2268
  %48 = load %struct.spinlock*, %struct.spinlock** %lock46, align 8, !dbg !2268
  %49 = load i64, i64* %flags, align 8, !dbg !2269
  store %struct.spinlock* %48, %struct.spinlock** %lock.addr.i115, align 8
  store i64 %49, i64* %flags.addr.i116, align 8
  call void @llvm.dbg.declare(metadata !80, metadata !2013, metadata !DIExpression()) #5, !dbg !2270
  call void @llvm.dbg.declare(metadata !80, metadata !2017, metadata !DIExpression()) #5, !dbg !2270
  store i32 1, i32* %tmp.i117, align 4, !dbg !2270
  %50 = load i32, i32* %tmp.i117, align 4, !dbg !2270
  call void @llvm.dbg.declare(metadata !80, metadata !2018, metadata !DIExpression()) #5, !dbg !2271
  call void @llvm.dbg.declare(metadata !80, metadata !2024, metadata !DIExpression()) #5, !dbg !2271
  store i32 1, i32* %tmp8.i118, align 4, !dbg !2271
  %51 = load i32, i32* %tmp8.i118, align 4, !dbg !2271
  %52 = load i64, i64* %flags.addr.i116, align 8, !dbg !2272
  call void @arch_local_irq_restore(i64 %52) #9, !dbg !2272
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2273, !srcloc !2028
  %53 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i115, align 8, !dbg !2274
  %54 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %53, i32 0, i32 0, !dbg !2274
  %rlock.i119 = bitcast %union.anon* %54 to %struct.raw_spinlock*, !dbg !2274
  %55 = load i64, i64* %ret, align 8, !dbg !2275
  %call47 = call i64 @schedule_timeout(i64 %55) #8, !dbg !2276
  store i64 %call47, i64* %ret, align 8, !dbg !2277
  br label %do.body48, !dbg !2278

do.body48:                                        ; preds = %if.end45
  br label %do.body49, !dbg !2279

do.body49:                                        ; preds = %do.body48
  call void @llvm.dbg.declare(metadata i64* %__dummy50, metadata !2280, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.declare(metadata i64* %__dummy251, metadata !2283, metadata !DIExpression()), !dbg !2282
  %cmp52 = icmp eq i64* %__dummy50, %__dummy251, !dbg !2282
  %conv53 = zext i1 %cmp52 to i32, !dbg !2282
  store i32 1, i32* %tmp54, align 4, !dbg !2282
  %56 = load i32, i32* %tmp54, align 4, !dbg !2282
  br label %do.body55, !dbg !2284

do.body55:                                        ; preds = %do.body49
  br label %do.body56, !dbg !2285

do.body56:                                        ; preds = %do.body55
  br label %do.body57, !dbg !2286

do.body57:                                        ; preds = %do.body56
  call void @llvm.dbg.declare(metadata i64* %__dummy58, metadata !2288, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.declare(metadata i64* %__dummy259, metadata !2292, metadata !DIExpression()), !dbg !2291
  %cmp60 = icmp eq i64* %__dummy58, %__dummy259, !dbg !2291
  %conv61 = zext i1 %cmp60 to i32, !dbg !2291
  store i32 1, i32* %tmp62, align 4, !dbg !2291
  %57 = load i32, i32* %tmp62, align 4, !dbg !2291
  %call63 = call i64 @arch_local_irq_save() #8, !dbg !2293
  store i64 %call63, i64* %flags, align 8, !dbg !2293
  br label %do.end64, !dbg !2293

do.end64:                                         ; preds = %do.body57
  br label %do.end65, !dbg !2286

do.end65:                                         ; preds = %do.end64
  br label %do.body66, !dbg !2285

do.body66:                                        ; preds = %do.end65
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2294, !srcloc !2295
  br label %do.body67, !dbg !2294

do.body67:                                        ; preds = %do.body66
  %58 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2296
  %lock68 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %58, i32 0, i32 0, !dbg !2296
  %59 = load %struct.spinlock*, %struct.spinlock** %lock68, align 8, !dbg !2296
  store %struct.spinlock* %59, %struct.spinlock** %lock.addr.i120, align 8
  %60 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i120, align 8, !dbg !2297
  %61 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %60, i32 0, i32 0, !dbg !2298
  %rlock.i121 = bitcast %union.anon* %61 to %struct.raw_spinlock*, !dbg !2298
  br label %do.end70, !dbg !2296

do.end70:                                         ; preds = %do.body67
  br label %do.end71, !dbg !2294

do.end71:                                         ; preds = %do.end70
  br label %do.end72, !dbg !2285

do.end72:                                         ; preds = %do.end71
  br label %do.end73, !dbg !2284

do.end73:                                         ; preds = %do.end72
  br label %do.end74, !dbg !2279

do.end74:                                         ; preds = %do.end73
  %62 = load i64, i64* %ret, align 8, !dbg !2299
  %cmp75 = icmp sgt i64 %62, 0, !dbg !2300
  br i1 %cmp75, label %land.lhs.true77, label %if.end85, !dbg !2301

land.lhs.true77:                                  ; preds = %do.end74
  %63 = load i8, i8* %intr.addr, align 1, !dbg !2302
  %tobool78 = trunc i8 %63 to i1, !dbg !2302
  br i1 %tobool78, label %land.lhs.true80, label %if.end85, !dbg !2303

land.lhs.true80:                                  ; preds = %land.lhs.true77
  store i8* null, i8** %__vpp_verify.i123, align 8, !dbg !2144
  %64 = load i8*, i8** %__vpp_verify.i123, align 8, !dbg !2144
  %65 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #10, !dbg !2145, !srcloc !2228
  store i64 %65, i64* %pfo_val__.i124, align 8, !dbg !2145
  %66 = load i64, i64* %pfo_val__.i124, align 8, !dbg !2145
  %67 = inttoptr i64 %66 to %struct.task_struct*, !dbg !2145
  store %struct.task_struct* %67, %struct.task_struct** %tmp.i125, align 8, !dbg !2145
  %68 = load %struct.task_struct*, %struct.task_struct** %tmp.i125, align 8, !dbg !2145
  store %struct.task_struct* %68, %struct.task_struct** %pscr_ret__.i122, align 8, !dbg !2140
  %69 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i122, align 8, !dbg !2140
  store %struct.task_struct* %69, %struct.task_struct** %tmp1.i126, align 8, !dbg !2140
  %70 = load %struct.task_struct*, %struct.task_struct** %tmp1.i126, align 8, !dbg !2140
  %call82 = call i32 @signal_pending(%struct.task_struct* %70) #8, !dbg !2304
  %tobool83 = icmp ne i32 %call82, 0, !dbg !2304
  br i1 %tobool83, label %if.then84, label %if.end85, !dbg !2305

if.then84:                                        ; preds = %land.lhs.true80
  store i64 -512, i64* %ret, align 8, !dbg !2306
  br label %if.end85, !dbg !2307

if.end85:                                         ; preds = %if.then84, %land.lhs.true80, %land.lhs.true77, %do.end74
  br label %while.cond, !dbg !2255, !llvm.loop !2308

while.end:                                        ; preds = %land.end
  %base86 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %cb, i32 0, i32 0, !dbg !2310
  %node87 = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %base86, i32 0, i32 0, !dbg !2312
  %call88 = call i32 @list_empty(%struct.list_head* %node87) #8, !dbg !2313
  %tobool89 = icmp ne i32 %call88, 0, !dbg !2313
  br i1 %tobool89, label %if.end93, label %if.then90, !dbg !2314

if.then90:                                        ; preds = %while.end
  %base91 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %cb, i32 0, i32 0, !dbg !2315
  %node92 = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %base91, i32 0, i32 0, !dbg !2316
  call void @list_del(%struct.list_head* %node92) #8, !dbg !2317
  br label %if.end93, !dbg !2317

if.end93:                                         ; preds = %if.then90, %while.end
  store i8* null, i8** %__vpp_verify.i128, align 8, !dbg !2136
  %71 = load i8*, i8** %__vpp_verify.i128, align 8, !dbg !2136
  %72 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #10, !dbg !2139, !srcloc !2228
  store i64 %72, i64* %pfo_val__.i129, align 8, !dbg !2139
  %73 = load i64, i64* %pfo_val__.i129, align 8, !dbg !2139
  %74 = inttoptr i64 %73 to %struct.task_struct*, !dbg !2139
  store %struct.task_struct* %74, %struct.task_struct** %tmp.i130, align 8, !dbg !2139
  %75 = load %struct.task_struct*, %struct.task_struct** %tmp.i130, align 8, !dbg !2139
  store %struct.task_struct* %75, %struct.task_struct** %pscr_ret__.i127, align 8, !dbg !2130
  %76 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i127, align 8, !dbg !2130
  store %struct.task_struct* %76, %struct.task_struct** %tmp1.i131, align 8, !dbg !2130
  %77 = load %struct.task_struct*, %struct.task_struct** %tmp1.i131, align 8, !dbg !2130
  %state95 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 1, !dbg !2318
  store volatile i64 0, i64* %state95, align 16, !dbg !2318
  br label %out, !dbg !2318

out:                                              ; preds = %if.end93, %if.then32, %if.then29, %if.then26
  call void @llvm.dbg.label(metadata !2319), !dbg !2320
  %78 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2321
  %lock96 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %78, i32 0, i32 0, !dbg !2322
  %79 = load %struct.spinlock*, %struct.spinlock** %lock96, align 8, !dbg !2322
  %80 = load i64, i64* %flags, align 8, !dbg !2323
  store %struct.spinlock* %79, %struct.spinlock** %lock.addr.i97, align 8
  store i64 %80, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !80, metadata !2013, metadata !DIExpression()) #5, !dbg !2324
  call void @llvm.dbg.declare(metadata !80, metadata !2017, metadata !DIExpression()) #5, !dbg !2324
  store i32 1, i32* %tmp.i, align 4, !dbg !2324
  %81 = load i32, i32* %tmp.i, align 4, !dbg !2324
  call void @llvm.dbg.declare(metadata !80, metadata !2018, metadata !DIExpression()) #5, !dbg !2325
  call void @llvm.dbg.declare(metadata !80, metadata !2024, metadata !DIExpression()) #5, !dbg !2325
  store i32 1, i32* %tmp8.i, align 4, !dbg !2325
  %82 = load i32, i32* %tmp8.i, align 4, !dbg !2325
  %83 = load i64, i64* %flags.addr.i, align 8, !dbg !2326
  call void @arch_local_irq_restore(i64 %83) #9, !dbg !2326
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2327, !srcloc !2028
  %84 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i97, align 8, !dbg !2328
  %85 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %84, i32 0, i32 0, !dbg !2328
  %rlock.i98 = bitcast %union.anon* %85 to %struct.raw_spinlock*, !dbg !2328
  %86 = load i64, i64* %ret, align 8, !dbg !2329
  store i64 %86, i64* %retval, align 8, !dbg !2330
  br label %return, !dbg !2330

return:                                           ; preds = %out, %if.then
  %87 = load i64, i64* %retval, align 8, !dbg !2331
  ret i64 %87, !dbg !2331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_dma_fence_wait_end(%struct.dma_fence* %fence) #0 !dbg !2332 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2333, metadata !DIExpression()), !dbg !2334
  ret void, !dbg !2334
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dma_fence_release(%struct.kref* %kref) #0 !dbg !2335 {
entry:
  %lock.addr.i69 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i69, metadata !1952, metadata !DIExpression()), !dbg !2339
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1958, metadata !DIExpression()), !dbg !2343
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !1960, metadata !DIExpression()), !dbg !2344
  %kref.addr = alloca %struct.kref*, align 8
  %fence = alloca %struct.dma_fence*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dma_fence*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp27 = alloca i64, align 8
  %flags36 = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp40 = alloca i32, align 4
  %__dummy44 = alloca i64, align 8
  %__dummy245 = alloca i64, align 8
  %tmp48 = alloca i32, align 4
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !2351, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence, metadata !2353, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2355, metadata !DIExpression()), !dbg !2357
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !2357
  %1 = bitcast %struct.kref* %0 to i8*, !dbg !2357
  store i8* %1, i8** %__mptr, align 8, !dbg !2357
  br label %do.body, !dbg !2357

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2358

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2357
  %add.ptr = getelementptr i8, i8* %2, i64 -56, !dbg !2357
  %3 = bitcast i8* %add.ptr to %struct.dma_fence*, !dbg !2357
  store %struct.dma_fence* %3, %struct.dma_fence** %tmp, align 8, !dbg !2358
  %4 = load %struct.dma_fence*, %struct.dma_fence** %tmp, align 8, !dbg !2357
  store %struct.dma_fence* %4, %struct.dma_fence** %fence, align 8, !dbg !2354
  %5 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2360
  call void @trace_dma_fence_destroy(%struct.dma_fence* %5) #8, !dbg !2361
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2362, metadata !DIExpression()), !dbg !2364
  %6 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2364
  %7 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %6, i32 0, i32 2, !dbg !2364
  %cb_list = bitcast %union.anon.0* %7 to %struct.list_head*, !dbg !2364
  %call = call i32 @list_empty(%struct.list_head* %cb_list) #8, !dbg !2364
  %tobool = icmp ne i32 %call, 0, !dbg !2364
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2364

land.rhs:                                         ; preds = %do.end
  %8 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2364
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %8, i32 0, i32 5, !dbg !2364
  %call1 = call zeroext i1 @test_bit(i64 0, i64* %flags) #8, !dbg !2364
  %lnot = xor i1 %call1, true, !dbg !2364
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %9 = phi i1 [ false, %do.end ], [ %lnot, %land.rhs ], !dbg !2365
  %lnot2 = xor i1 %9, true, !dbg !2364
  %lnot3 = xor i1 %lnot2, true, !dbg !2364
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2364
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2364
  %10 = load i32, i32* %__ret_warn_on, align 4, !dbg !2366
  %tobool4 = icmp ne i32 %10, 0, !dbg !2366
  %lnot5 = xor i1 %tobool4, true, !dbg !2366
  %lnot7 = xor i1 %lnot5, true, !dbg !2366
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2366
  %conv = sext i32 %lnot.ext8 to i64, !dbg !2366
  %tobool9 = icmp ne i64 %conv, 0, !dbg !2366
  br i1 %tobool9, label %if.then, label %if.end, !dbg !2364

if.then:                                          ; preds = %land.end
  br label %do.body10, !dbg !2366

do.body10:                                        ; preds = %if.then
  br label %do.body11, !dbg !2368

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !2370

do.end12:                                         ; preds = %do.body11
  %11 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2368
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %11, i32 0, i32 1, !dbg !2368
  %12 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !2368
  %get_driver_name = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %12, i32 0, i32 1, !dbg !2368
  %13 = load i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)** %get_driver_name, align 8, !dbg !2368
  %14 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2368
  %call13 = call i8* %13(%struct.dma_fence* %14) #8, !dbg !2368
  %15 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2368
  %ops14 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %15, i32 0, i32 1, !dbg !2368
  %16 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops14, align 8, !dbg !2368
  %get_timeline_name = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %16, i32 0, i32 2, !dbg !2368
  %17 = load i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)** %get_timeline_name, align 8, !dbg !2368
  %18 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2368
  %call15 = call i8* %17(%struct.dma_fence* %18) #8, !dbg !2368
  %19 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2368
  %context = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %19, i32 0, i32 3, !dbg !2368
  %20 = load i64, i64* %context, align 8, !dbg !2368
  %21 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2368
  %seqno = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %21, i32 0, i32 4, !dbg !2368
  %22 = load i64, i64* %seqno, align 8, !dbg !2368
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %call13, i8* %call15, i64 %20, i64 %22) #8, !dbg !2368
  br label %do.body16, !dbg !2368

do.body16:                                        ; preds = %do.end12
  br label %do.body17, !dbg !2372

do.body17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !2374

do.end18:                                         ; preds = %do.body17
  br label %do.body19, !dbg !2372

do.body19:                                        ; preds = %do.end18
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 450, i32 2313, i64 12) #5, !dbg !2376, !srcloc !2378
  br label %do.end20, !dbg !2376

do.end20:                                         ; preds = %do.body19
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 187) #5, !dbg !2379, !srcloc !2381
  br label %do.body21, !dbg !2372

do.body21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !2382

do.end22:                                         ; preds = %do.body21
  br label %do.end23, !dbg !2372

do.end23:                                         ; preds = %do.end22
  br label %do.body24, !dbg !2368

do.body24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !2384

do.end25:                                         ; preds = %do.body24
  br label %do.end26, !dbg !2368

do.end26:                                         ; preds = %do.end25
  br label %if.end, !dbg !2368

if.end:                                           ; preds = %do.end26, %land.end
  %23 = load i32, i32* %__ret_warn_on, align 4, !dbg !2364
  %tobool28 = icmp ne i32 %23, 0, !dbg !2364
  %lnot29 = xor i1 %tobool28, true, !dbg !2364
  %lnot31 = xor i1 %lnot29, true, !dbg !2364
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !2364
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !2364
  store i64 %conv33, i64* %tmp27, align 8, !dbg !2366
  %24 = load i64, i64* %tmp27, align 8, !dbg !2364
  %tobool34 = icmp ne i64 %24, 0, !dbg !2386
  br i1 %tobool34, label %if.then35, label %if.end62, !dbg !2387

if.then35:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %flags36, metadata !2388, metadata !DIExpression()), !dbg !2389
  br label %do.body37, !dbg !2390

do.body37:                                        ; preds = %if.then35
  br label %do.body38, !dbg !2391

do.body38:                                        ; preds = %do.body37
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2395, metadata !DIExpression()), !dbg !2394
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2394
  %conv39 = zext i1 %cmp to i32, !dbg !2394
  store i32 1, i32* %tmp40, align 4, !dbg !2394
  %25 = load i32, i32* %tmp40, align 4, !dbg !2394
  br label %do.body41, !dbg !2396

do.body41:                                        ; preds = %do.body38
  br label %do.body42, !dbg !2397

do.body42:                                        ; preds = %do.body41
  br label %do.body43, !dbg !2398

do.body43:                                        ; preds = %do.body42
  call void @llvm.dbg.declare(metadata i64* %__dummy44, metadata !2400, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.declare(metadata i64* %__dummy245, metadata !2404, metadata !DIExpression()), !dbg !2403
  %cmp46 = icmp eq i64* %__dummy44, %__dummy245, !dbg !2403
  %conv47 = zext i1 %cmp46 to i32, !dbg !2403
  store i32 1, i32* %tmp48, align 4, !dbg !2403
  %26 = load i32, i32* %tmp48, align 4, !dbg !2403
  %call49 = call i64 @arch_local_irq_save() #8, !dbg !2405
  store i64 %call49, i64* %flags36, align 8, !dbg !2405
  br label %do.end50, !dbg !2405

do.end50:                                         ; preds = %do.body43
  br label %do.end51, !dbg !2398

do.end51:                                         ; preds = %do.end50
  br label %do.body52, !dbg !2397

do.body52:                                        ; preds = %do.end51
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2406, !srcloc !2407
  br label %do.body53, !dbg !2406

do.body53:                                        ; preds = %do.body52
  %27 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2408
  %lock = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %27, i32 0, i32 0, !dbg !2408
  %28 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !2408
  store %struct.spinlock* %28, %struct.spinlock** %lock.addr.i, align 8
  %29 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2409
  %30 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %29, i32 0, i32 0, !dbg !2410
  %rlock.i = bitcast %union.anon* %30 to %struct.raw_spinlock*, !dbg !2410
  br label %do.end55, !dbg !2408

do.end55:                                         ; preds = %do.body53
  br label %do.end56, !dbg !2406

do.end56:                                         ; preds = %do.end55
  br label %do.end57, !dbg !2397

do.end57:                                         ; preds = %do.end56
  br label %do.end58, !dbg !2396

do.end58:                                         ; preds = %do.end57
  br label %do.end59, !dbg !2391

do.end59:                                         ; preds = %do.end58
  %31 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2411
  %error = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %31, i32 0, i32 7, !dbg !2412
  store i32 -35, i32* %error, align 4, !dbg !2413
  %32 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2414
  %call60 = call i32 @dma_fence_signal_locked(%struct.dma_fence* %32) #8, !dbg !2415
  %33 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2416
  %lock61 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %33, i32 0, i32 0, !dbg !2417
  %34 = load %struct.spinlock*, %struct.spinlock** %lock61, align 8, !dbg !2417
  %35 = load i64, i64* %flags36, align 8, !dbg !2418
  store %struct.spinlock* %34, %struct.spinlock** %lock.addr.i69, align 8
  store i64 %35, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !80, metadata !2013, metadata !DIExpression()) #5, !dbg !2419
  call void @llvm.dbg.declare(metadata !80, metadata !2017, metadata !DIExpression()) #5, !dbg !2419
  store i32 1, i32* %tmp.i, align 4, !dbg !2419
  %36 = load i32, i32* %tmp.i, align 4, !dbg !2419
  call void @llvm.dbg.declare(metadata !80, metadata !2018, metadata !DIExpression()) #5, !dbg !2420
  call void @llvm.dbg.declare(metadata !80, metadata !2024, metadata !DIExpression()) #5, !dbg !2420
  store i32 1, i32* %tmp8.i, align 4, !dbg !2420
  %37 = load i32, i32* %tmp8.i, align 4, !dbg !2420
  %38 = load i64, i64* %flags.addr.i, align 8, !dbg !2421
  call void @arch_local_irq_restore(i64 %38) #9, !dbg !2421
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2422, !srcloc !2028
  %39 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i69, align 8, !dbg !2423
  %40 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %39, i32 0, i32 0, !dbg !2423
  %rlock.i70 = bitcast %union.anon* %40 to %struct.raw_spinlock*, !dbg !2423
  br label %if.end62, !dbg !2424

if.end62:                                         ; preds = %do.end59, %if.end
  %41 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2425
  %ops63 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %41, i32 0, i32 1, !dbg !2427
  %42 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops63, align 8, !dbg !2427
  %release = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %42, i32 0, i32 6, !dbg !2428
  %43 = load void (%struct.dma_fence*)*, void (%struct.dma_fence*)** %release, align 8, !dbg !2428
  %tobool64 = icmp ne void (%struct.dma_fence*)* %43, null, !dbg !2425
  br i1 %tobool64, label %if.then65, label %if.else, !dbg !2429

if.then65:                                        ; preds = %if.end62
  %44 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2430
  %ops66 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %44, i32 0, i32 1, !dbg !2431
  %45 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops66, align 8, !dbg !2431
  %release67 = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %45, i32 0, i32 6, !dbg !2432
  %46 = load void (%struct.dma_fence*)*, void (%struct.dma_fence*)** %release67, align 8, !dbg !2432
  %47 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2433
  call void %46(%struct.dma_fence* %47) #8, !dbg !2430
  br label %if.end68, !dbg !2430

if.else:                                          ; preds = %if.end62
  %48 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !2434
  call void @dma_fence_free(%struct.dma_fence* %48) #8, !dbg !2435
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then65
  ret void, !dbg !2436
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_dma_fence_destroy(%struct.dma_fence* %fence) #0 !dbg !2437 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2438, metadata !DIExpression()), !dbg !2439
  ret void, !dbg !2439
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !2440 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2445, metadata !DIExpression()), !dbg !2446
  br label %do.body, !dbg !2447

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2449

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2447
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !2447
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2447
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !2449
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !2447
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2451
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !2452
  %conv = zext i1 %cmp to i32, !dbg !2452
  ret i32 %conv, !dbg !2453
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !2454 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !2460, metadata !DIExpression()), !dbg !2462
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !2464, metadata !DIExpression()), !dbg !2465
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !2466, metadata !DIExpression()), !dbg !2467
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2468, metadata !DIExpression()), !dbg !2470
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2472, metadata !DIExpression()), !dbg !2473
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2474, metadata !DIExpression()), !dbg !2476
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2478, metadata !DIExpression()), !dbg !2479
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2480, metadata !DIExpression()), !dbg !2481
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2482, metadata !DIExpression()), !dbg !2483
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2484
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2485
  %div = sdiv i64 %1, 64, !dbg !2485
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2486
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2484
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2487
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2488
  %conv.i = trunc i64 %4 to i32, !dbg !2488
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #9, !dbg !2489
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2490
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2490
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #9, !dbg !2490
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2491
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2491
  br i1 %8, label %cond.true, label %cond.false, !dbg !2491

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !2491
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !2491
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !2492
  %and.i = and i64 %11, 63, !dbg !2493
  %shl.i = shl i64 1, %and.i, !dbg !2494
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !2495
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2496
  %shr.i = ashr i64 %13, 6, !dbg !2497
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !2495
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !2495
  %and1.i = and i64 %shl.i, %14, !dbg !2498
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !2499
  %conv = zext i1 %cmp.i to i32, !dbg !2491
  br label %cond.end, !dbg !2491

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !2491
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !2491
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !2500
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !2501
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #5, !dbg !2502, !srcloc !2503
  store i8 %19, i8* %oldbit.i, align 1, !dbg !2502
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !2504
  %tobool.i = trunc i8 %20 to i1, !dbg !2504
  %conv2 = zext i1 %tobool.i to i32, !dbg !2491
  br label %cond.end, !dbg !2491

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2491
  %tobool = icmp ne i32 %cond, 0, !dbg !2491
  ret i1 %tobool, !dbg !2505
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dma_fence_free(%struct.dma_fence* %fence) #0 !dbg !2506 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  %___p = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2507, metadata !DIExpression()), !dbg !2508
  br label %do.body, !dbg !2509

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %___p, metadata !2510, metadata !DIExpression()), !dbg !2512
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2512
  store %struct.dma_fence* %0, %struct.dma_fence** %___p, align 8, !dbg !2512
  %1 = load %struct.dma_fence*, %struct.dma_fence** %___p, align 8, !dbg !2513
  %tobool = icmp ne %struct.dma_fence* %1, null, !dbg !2513
  br i1 %tobool, label %if.then, label %if.end, !dbg !2512

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !2513

do.body1:                                         ; preds = %if.then
  br label %do.body2, !dbg !2515

do.body2:                                         ; preds = %do.body1
  br label %do.end, !dbg !2517

do.end:                                           ; preds = %do.body2
  %2 = load %struct.dma_fence*, %struct.dma_fence** %___p, align 8, !dbg !2515
  %3 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %2, i32 0, i32 2, !dbg !2515
  %rcu = bitcast %union.anon.0* %3 to %struct.callback_head*, !dbg !2515
  call void @kvfree_call_rcu(%struct.callback_head* %rcu, void (%struct.callback_head*)* inttoptr (i64 16 to void (%struct.callback_head*)*)) #8, !dbg !2515
  br label %do.end3, !dbg !2515

do.end3:                                          ; preds = %do.end
  br label %if.end, !dbg !2515

if.end:                                           ; preds = %do.end3, %do.body
  br label %do.end4, !dbg !2512

do.end4:                                          ; preds = %if.end
  ret void, !dbg !2519
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kvfree_call_rcu(%struct.callback_head* %head, void (%struct.callback_head*)* %func) #0 !dbg !2520 {
entry:
  %head.addr = alloca %struct.callback_head*, align 8
  %func.addr = alloca void (%struct.callback_head*)*, align 8
  store %struct.callback_head* %head, %struct.callback_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.callback_head** %head.addr, metadata !2524, metadata !DIExpression()), !dbg !2525
  store void (%struct.callback_head*)* %func, void (%struct.callback_head*)** %func.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.callback_head*)** %func.addr, metadata !2526, metadata !DIExpression()), !dbg !2527
  %0 = load %struct.callback_head*, %struct.callback_head** %head.addr, align 8, !dbg !2528
  %tobool = icmp ne %struct.callback_head* %0, null, !dbg !2528
  br i1 %tobool, label %if.then, label %if.end, !dbg !2530

if.then:                                          ; preds = %entry
  %1 = load %struct.callback_head*, %struct.callback_head** %head.addr, align 8, !dbg !2531
  %2 = load void (%struct.callback_head*)*, void (%struct.callback_head*)** %func.addr, align 8, !dbg !2533
  call void @call_rcu(%struct.callback_head* %1, void (%struct.callback_head*)* %2) #8, !dbg !2534
  br label %return, !dbg !2535

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2536

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !2537

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2539

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !2537

do.end2:                                          ; preds = %do.end
  call void @synchronize_rcu() #8, !dbg !2541
  %3 = load void (%struct.callback_head*)*, void (%struct.callback_head*)** %func.addr, align 8, !dbg !2542
  %4 = bitcast void (%struct.callback_head*)* %3 to i8*, !dbg !2543
  call void @kvfree(i8* %4) #8, !dbg !2544
  br label %return, !dbg !2545

return:                                           ; preds = %do.end2, %if.then
  ret void, !dbg !2545
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dma_fence_enable_sw_signaling(%struct.dma_fence* %fence) #0 !dbg !2546 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !1952, metadata !DIExpression()), !dbg !2547
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1958, metadata !DIExpression()), !dbg !2549
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !1960, metadata !DIExpression()), !dbg !2550
  %fence.addr = alloca %struct.dma_fence*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2557, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2559, metadata !DIExpression()), !dbg !2560
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2561
  %flags1 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 5, !dbg !2563
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags1) #8, !dbg !2564
  br i1 %call, label %if.then, label %if.end, !dbg !2565

if.then:                                          ; preds = %entry
  br label %return, !dbg !2566

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2567

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !2568

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2569, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2572, metadata !DIExpression()), !dbg !2571
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2571
  %conv = zext i1 %cmp to i32, !dbg !2571
  store i32 1, i32* %tmp, align 4, !dbg !2571
  %1 = load i32, i32* %tmp, align 4, !dbg !2571
  br label %do.body3, !dbg !2573

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2574

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !2575

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !2577, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !2581, metadata !DIExpression()), !dbg !2580
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !2580
  %conv9 = zext i1 %cmp8 to i32, !dbg !2580
  store i32 1, i32* %tmp10, align 4, !dbg !2580
  %2 = load i32, i32* %tmp10, align 4, !dbg !2580
  %call11 = call i64 @arch_local_irq_save() #8, !dbg !2582
  store i64 %call11, i64* %flags, align 8, !dbg !2582
  br label %do.end, !dbg !2582

do.end:                                           ; preds = %do.body5
  br label %do.end12, !dbg !2575

do.end12:                                         ; preds = %do.end
  br label %do.body13, !dbg !2574

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2583, !srcloc !2584
  br label %do.body14, !dbg !2583

do.body14:                                        ; preds = %do.body13
  %3 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2585
  %lock = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %3, i32 0, i32 0, !dbg !2585
  %4 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !2585
  store %struct.spinlock* %4, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2586
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !2587
  %rlock.i = bitcast %union.anon* %6 to %struct.raw_spinlock*, !dbg !2587
  br label %do.end16, !dbg !2585

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !2583

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2574

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2573

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !2568

do.end20:                                         ; preds = %do.end19
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2588
  %call21 = call zeroext i1 @__dma_fence_enable_signaling(%struct.dma_fence* %7) #8, !dbg !2589
  %8 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2590
  %lock22 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %8, i32 0, i32 0, !dbg !2591
  %9 = load %struct.spinlock*, %struct.spinlock** %lock22, align 8, !dbg !2591
  %10 = load i64, i64* %flags, align 8, !dbg !2592
  store %struct.spinlock* %9, %struct.spinlock** %lock.addr.i23, align 8
  store i64 %10, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !80, metadata !2013, metadata !DIExpression()) #5, !dbg !2593
  call void @llvm.dbg.declare(metadata !80, metadata !2017, metadata !DIExpression()) #5, !dbg !2593
  store i32 1, i32* %tmp.i, align 4, !dbg !2593
  %11 = load i32, i32* %tmp.i, align 4, !dbg !2593
  call void @llvm.dbg.declare(metadata !80, metadata !2018, metadata !DIExpression()) #5, !dbg !2594
  call void @llvm.dbg.declare(metadata !80, metadata !2024, metadata !DIExpression()) #5, !dbg !2594
  store i32 1, i32* %tmp8.i, align 4, !dbg !2594
  %12 = load i32, i32* %tmp8.i, align 4, !dbg !2594
  %13 = load i64, i64* %flags.addr.i, align 8, !dbg !2595
  call void @arch_local_irq_restore(i64 %13) #9, !dbg !2595
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2596, !srcloc !2028
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !2597
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !2597
  %rlock.i24 = bitcast %union.anon* %15 to %struct.raw_spinlock*, !dbg !2597
  br label %return, !dbg !2598

return:                                           ; preds = %do.end20, %if.then
  ret void, !dbg !2598
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__dma_fence_enable_signaling(%struct.dma_fence* %fence) #0 !dbg !2599 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca %struct.dma_fence*, align 8
  %was_set = alloca i8, align 1
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2600, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.declare(metadata i8* %was_set, metadata !2602, metadata !DIExpression()), !dbg !2603
  br label %do.body, !dbg !2604

do.body:                                          ; preds = %entry
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2605
  %lock = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 0, !dbg !2605
  %1 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !2605
  br label %do.end, !dbg !2605

do.end:                                           ; preds = %do.body
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2607
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %2, i32 0, i32 5, !dbg !2608
  %call = call zeroext i1 @test_and_set_bit(i64 2, i64* %flags) #8, !dbg !2609
  %frombool = zext i1 %call to i8, !dbg !2610
  store i8 %frombool, i8* %was_set, align 1, !dbg !2610
  %3 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2611
  %flags1 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %3, i32 0, i32 5, !dbg !2613
  %call2 = call zeroext i1 @test_bit(i64 0, i64* %flags1) #8, !dbg !2614
  br i1 %call2, label %if.then, label %if.end, !dbg !2615

if.then:                                          ; preds = %do.end
  store i1 false, i1* %retval, align 1, !dbg !2616
  br label %return, !dbg !2616

if.end:                                           ; preds = %do.end
  %4 = load i8, i8* %was_set, align 1, !dbg !2617
  %tobool = trunc i8 %4 to i1, !dbg !2617
  br i1 %tobool, label %if.end11, label %land.lhs.true, !dbg !2619

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2620
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %5, i32 0, i32 1, !dbg !2621
  %6 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !2621
  %enable_signaling = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %6, i32 0, i32 3, !dbg !2622
  %7 = load i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)** %enable_signaling, align 8, !dbg !2622
  %tobool3 = icmp ne i1 (%struct.dma_fence*)* %7, null, !dbg !2620
  br i1 %tobool3, label %if.then4, label %if.end11, !dbg !2623

if.then4:                                         ; preds = %land.lhs.true
  %8 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2624
  call void @trace_dma_fence_enable_signal(%struct.dma_fence* %8) #8, !dbg !2626
  %9 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2627
  %ops5 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %9, i32 0, i32 1, !dbg !2629
  %10 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops5, align 8, !dbg !2629
  %enable_signaling6 = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %10, i32 0, i32 3, !dbg !2630
  %11 = load i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)** %enable_signaling6, align 8, !dbg !2630
  %12 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2631
  %call7 = call zeroext i1 %11(%struct.dma_fence* %12) #8, !dbg !2627
  br i1 %call7, label %if.end10, label %if.then8, !dbg !2632

if.then8:                                         ; preds = %if.then4
  %13 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2633
  %call9 = call i32 @dma_fence_signal_locked(%struct.dma_fence* %13) #8, !dbg !2635
  store i1 false, i1* %retval, align 1, !dbg !2636
  br label %return, !dbg !2636

if.end10:                                         ; preds = %if.then4
  br label %if.end11, !dbg !2637

if.end11:                                         ; preds = %if.end10, %land.lhs.true, %if.end
  store i1 true, i1* %retval, align 1, !dbg !2638
  br label %return, !dbg !2638

return:                                           ; preds = %if.end11, %if.then8, %if.then
  %14 = load i1, i1* %retval, align 1, !dbg !2639
  ret i1 %14, !dbg !2639
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dma_fence_add_callback(%struct.dma_fence* %fence, %struct.dma_fence_cb* %cb, void (%struct.dma_fence*, %struct.dma_fence_cb*)* %func) #0 !dbg !2640 {
entry:
  %lock.addr.i58 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i58, metadata !1952, metadata !DIExpression()), !dbg !2643
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1958, metadata !DIExpression()), !dbg !2645
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !1960, metadata !DIExpression()), !dbg !2646
  %retval = alloca i32, align 4
  %fence.addr = alloca %struct.dma_fence*, align 8
  %cb.addr = alloca %struct.dma_fence_cb*, align 8
  %func.addr = alloca void (%struct.dma_fence*, %struct.dma_fence_cb*)*, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp31 = alloca i32, align 4
  %__dummy35 = alloca i64, align 8
  %__dummy236 = alloca i64, align 8
  %tmp39 = alloca i32, align 4
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2653, metadata !DIExpression()), !dbg !2654
  store %struct.dma_fence_cb* %cb, %struct.dma_fence_cb** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence_cb** %cb.addr, metadata !2655, metadata !DIExpression()), !dbg !2656
  store void (%struct.dma_fence*, %struct.dma_fence_cb*)* %func, void (%struct.dma_fence*, %struct.dma_fence_cb*)** %func.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.dma_fence*, %struct.dma_fence_cb*)** %func.addr, metadata !2657, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2659, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2661, metadata !DIExpression()), !dbg !2662
  store i32 0, i32* %ret, align 4, !dbg !2662
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2663, metadata !DIExpression()), !dbg !2666
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2666
  %tobool = icmp ne %struct.dma_fence* %0, null, !dbg !2666
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2666

lor.rhs:                                          ; preds = %entry
  %1 = load void (%struct.dma_fence*, %struct.dma_fence_cb*)*, void (%struct.dma_fence*, %struct.dma_fence_cb*)** %func.addr, align 8, !dbg !2666
  %tobool1 = icmp ne void (%struct.dma_fence*, %struct.dma_fence_cb*)* %1, null, !dbg !2666
  %lnot = xor i1 %tobool1, true, !dbg !2666
  br label %lor.end, !dbg !2666

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %2, true, !dbg !2666
  %lnot3 = xor i1 %lnot2, true, !dbg !2666
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2666
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2666
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2667
  %tobool4 = icmp ne i32 %3, 0, !dbg !2667
  %lnot5 = xor i1 %tobool4, true, !dbg !2667
  %lnot7 = xor i1 %lnot5, true, !dbg !2667
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2667
  %conv = sext i32 %lnot.ext8 to i64, !dbg !2667
  %tobool9 = icmp ne i64 %conv, 0, !dbg !2667
  br i1 %tobool9, label %if.then, label %if.end, !dbg !2666

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !2667

do.body:                                          ; preds = %if.then
  br label %do.body10, !dbg !2669

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !2671

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !2669

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 562, i32 2305, i64 12) #5, !dbg !2673, !srcloc !2675
  br label %do.end12, !dbg !2673

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 189) #5, !dbg !2676, !srcloc !2678
  br label %do.body13, !dbg !2669

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !2679

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !2669

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !2669

if.end:                                           ; preds = %do.end15, %lor.end
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !2666
  %tobool16 = icmp ne i32 %4, 0, !dbg !2666
  %lnot17 = xor i1 %tobool16, true, !dbg !2666
  %lnot19 = xor i1 %lnot17, true, !dbg !2666
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2666
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2666
  store i64 %conv21, i64* %tmp, align 8, !dbg !2667
  %5 = load i64, i64* %tmp, align 8, !dbg !2666
  %tobool22 = icmp ne i64 %5, 0, !dbg !2681
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2682

if.then23:                                        ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !2683
  br label %return, !dbg !2683

if.end24:                                         ; preds = %if.end
  %6 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2684
  %flags25 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %6, i32 0, i32 5, !dbg !2686
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags25) #8, !dbg !2687
  br i1 %call, label %if.then26, label %if.end27, !dbg !2688

if.then26:                                        ; preds = %if.end24
  %7 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cb.addr, align 8, !dbg !2689
  %node = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %7, i32 0, i32 0, !dbg !2691
  call void @INIT_LIST_HEAD(%struct.list_head* %node) #8, !dbg !2692
  store i32 -2, i32* %retval, align 4, !dbg !2693
  br label %return, !dbg !2693

if.end27:                                         ; preds = %if.end24
  br label %do.body28, !dbg !2694

do.body28:                                        ; preds = %if.end27
  br label %do.body29, !dbg !2695

do.body29:                                        ; preds = %do.body28
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2696, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2699, metadata !DIExpression()), !dbg !2698
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2698
  %conv30 = zext i1 %cmp to i32, !dbg !2698
  store i32 1, i32* %tmp31, align 4, !dbg !2698
  %8 = load i32, i32* %tmp31, align 4, !dbg !2698
  br label %do.body32, !dbg !2700

do.body32:                                        ; preds = %do.body29
  br label %do.body33, !dbg !2701

do.body33:                                        ; preds = %do.body32
  br label %do.body34, !dbg !2702

do.body34:                                        ; preds = %do.body33
  call void @llvm.dbg.declare(metadata i64* %__dummy35, metadata !2704, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.declare(metadata i64* %__dummy236, metadata !2708, metadata !DIExpression()), !dbg !2707
  %cmp37 = icmp eq i64* %__dummy35, %__dummy236, !dbg !2707
  %conv38 = zext i1 %cmp37 to i32, !dbg !2707
  store i32 1, i32* %tmp39, align 4, !dbg !2707
  %9 = load i32, i32* %tmp39, align 4, !dbg !2707
  %call40 = call i64 @arch_local_irq_save() #8, !dbg !2709
  store i64 %call40, i64* %flags, align 8, !dbg !2709
  br label %do.end41, !dbg !2709

do.end41:                                         ; preds = %do.body34
  br label %do.end42, !dbg !2702

do.end42:                                         ; preds = %do.end41
  br label %do.body43, !dbg !2701

do.body43:                                        ; preds = %do.end42
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2710, !srcloc !2711
  br label %do.body44, !dbg !2710

do.body44:                                        ; preds = %do.body43
  %10 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2712
  %lock = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %10, i32 0, i32 0, !dbg !2712
  %11 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !2712
  store %struct.spinlock* %11, %struct.spinlock** %lock.addr.i, align 8
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2713
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !2714
  %rlock.i = bitcast %union.anon* %13 to %struct.raw_spinlock*, !dbg !2714
  br label %do.end46, !dbg !2712

do.end46:                                         ; preds = %do.body44
  br label %do.end47, !dbg !2710

do.end47:                                         ; preds = %do.end46
  br label %do.end48, !dbg !2701

do.end48:                                         ; preds = %do.end47
  br label %do.end49, !dbg !2700

do.end49:                                         ; preds = %do.end48
  br label %do.end50, !dbg !2695

do.end50:                                         ; preds = %do.end49
  %14 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2715
  %call51 = call zeroext i1 @__dma_fence_enable_signaling(%struct.dma_fence* %14) #8, !dbg !2717
  br i1 %call51, label %if.then52, label %if.else, !dbg !2718

if.then52:                                        ; preds = %do.end50
  %15 = load void (%struct.dma_fence*, %struct.dma_fence_cb*)*, void (%struct.dma_fence*, %struct.dma_fence_cb*)** %func.addr, align 8, !dbg !2719
  %16 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cb.addr, align 8, !dbg !2721
  %func53 = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %16, i32 0, i32 1, !dbg !2722
  store void (%struct.dma_fence*, %struct.dma_fence_cb*)* %15, void (%struct.dma_fence*, %struct.dma_fence_cb*)** %func53, align 8, !dbg !2723
  %17 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cb.addr, align 8, !dbg !2724
  %node54 = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %17, i32 0, i32 0, !dbg !2725
  %18 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2726
  %19 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %18, i32 0, i32 2, !dbg !2727
  %cb_list = bitcast %union.anon.0* %19 to %struct.list_head*, !dbg !2727
  call void @list_add_tail(%struct.list_head* %node54, %struct.list_head* %cb_list) #8, !dbg !2728
  br label %if.end56, !dbg !2729

if.else:                                          ; preds = %do.end50
  %20 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cb.addr, align 8, !dbg !2730
  %node55 = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %20, i32 0, i32 0, !dbg !2732
  call void @INIT_LIST_HEAD(%struct.list_head* %node55) #8, !dbg !2733
  store i32 -2, i32* %ret, align 4, !dbg !2734
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then52
  %21 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2735
  %lock57 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %21, i32 0, i32 0, !dbg !2736
  %22 = load %struct.spinlock*, %struct.spinlock** %lock57, align 8, !dbg !2736
  %23 = load i64, i64* %flags, align 8, !dbg !2737
  store %struct.spinlock* %22, %struct.spinlock** %lock.addr.i58, align 8
  store i64 %23, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !80, metadata !2013, metadata !DIExpression()) #5, !dbg !2738
  call void @llvm.dbg.declare(metadata !80, metadata !2017, metadata !DIExpression()) #5, !dbg !2738
  store i32 1, i32* %tmp.i, align 4, !dbg !2738
  %24 = load i32, i32* %tmp.i, align 4, !dbg !2738
  call void @llvm.dbg.declare(metadata !80, metadata !2018, metadata !DIExpression()) #5, !dbg !2739
  call void @llvm.dbg.declare(metadata !80, metadata !2024, metadata !DIExpression()) #5, !dbg !2739
  store i32 1, i32* %tmp8.i, align 4, !dbg !2739
  %25 = load i32, i32* %tmp8.i, align 4, !dbg !2739
  %26 = load i64, i64* %flags.addr.i, align 8, !dbg !2740
  call void @arch_local_irq_restore(i64 %26) #9, !dbg !2740
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2741, !srcloc !2028
  %27 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i58, align 8, !dbg !2742
  %28 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %27, i32 0, i32 0, !dbg !2742
  %rlock.i59 = bitcast %union.anon* %28 to %struct.raw_spinlock*, !dbg !2742
  %29 = load i32, i32* %ret, align 4, !dbg !2743
  store i32 %29, i32* %retval, align 4, !dbg !2744
  br label %return, !dbg !2744

return:                                           ; preds = %if.end56, %if.then26, %if.then23
  %30 = load i32, i32* %retval, align 4, !dbg !2745
  ret i32 %30, !dbg !2745
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !2746 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2747, metadata !DIExpression()), !dbg !2748
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2749, metadata !DIExpression()), !dbg !2750
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2751
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2752
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !2753
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2753
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2754
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !2755
  ret void, !dbg !2756
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dma_fence_get_status(%struct.dma_fence* %fence) #0 !dbg !2757 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !1952, metadata !DIExpression()), !dbg !2758
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1958, metadata !DIExpression()), !dbg !2760
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !1960, metadata !DIExpression()), !dbg !2761
  %fence.addr = alloca %struct.dma_fence*, align 8
  %flags = alloca i64, align 8
  %status = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2768, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2770, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2772, metadata !DIExpression()), !dbg !2773
  br label %do.body, !dbg !2774

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2775

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2776, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2779, metadata !DIExpression()), !dbg !2778
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2778
  %conv = zext i1 %cmp to i32, !dbg !2778
  store i32 1, i32* %tmp, align 4, !dbg !2778
  %0 = load i32, i32* %tmp, align 4, !dbg !2778
  br label %do.body2, !dbg !2780

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !2781

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2782

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !2784, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !2788, metadata !DIExpression()), !dbg !2787
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !2787
  %conv8 = zext i1 %cmp7 to i32, !dbg !2787
  store i32 1, i32* %tmp9, align 4, !dbg !2787
  %1 = load i32, i32* %tmp9, align 4, !dbg !2787
  %call = call i64 @arch_local_irq_save() #8, !dbg !2789
  store i64 %call, i64* %flags, align 8, !dbg !2789
  br label %do.end, !dbg !2789

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !2782

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !2781

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2790, !srcloc !2791
  br label %do.body12, !dbg !2790

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2792
  %lock = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %2, i32 0, i32 0, !dbg !2792
  %3 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !2792
  store %struct.spinlock* %3, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2793
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !2794
  %rlock.i = bitcast %union.anon* %5 to %struct.raw_spinlock*, !dbg !2794
  br label %do.end14, !dbg !2792

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !2790

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !2781

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !2780

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2775

do.end18:                                         ; preds = %do.end17
  %6 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2795
  %call19 = call i32 @dma_fence_get_status_locked(%struct.dma_fence* %6) #8, !dbg !2796
  store i32 %call19, i32* %status, align 4, !dbg !2797
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2798
  %lock20 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %7, i32 0, i32 0, !dbg !2799
  %8 = load %struct.spinlock*, %struct.spinlock** %lock20, align 8, !dbg !2799
  %9 = load i64, i64* %flags, align 8, !dbg !2800
  store %struct.spinlock* %8, %struct.spinlock** %lock.addr.i21, align 8
  store i64 %9, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !80, metadata !2013, metadata !DIExpression()) #5, !dbg !2801
  call void @llvm.dbg.declare(metadata !80, metadata !2017, metadata !DIExpression()) #5, !dbg !2801
  store i32 1, i32* %tmp.i, align 4, !dbg !2801
  %10 = load i32, i32* %tmp.i, align 4, !dbg !2801
  call void @llvm.dbg.declare(metadata !80, metadata !2018, metadata !DIExpression()) #5, !dbg !2802
  call void @llvm.dbg.declare(metadata !80, metadata !2024, metadata !DIExpression()) #5, !dbg !2802
  store i32 1, i32* %tmp8.i, align 4, !dbg !2802
  %11 = load i32, i32* %tmp8.i, align 4, !dbg !2802
  %12 = load i64, i64* %flags.addr.i, align 8, !dbg !2803
  call void @arch_local_irq_restore(i64 %12) #9, !dbg !2803
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2804, !srcloc !2028
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !2805
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !2805
  %rlock.i22 = bitcast %union.anon* %14 to %struct.raw_spinlock*, !dbg !2805
  %15 = load i32, i32* %status, align 4, !dbg !2806
  ret i32 %15, !dbg !2807
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_fence_get_status_locked(%struct.dma_fence* %fence) #0 !dbg !2808 {
entry:
  %retval = alloca i32, align 4
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2809, metadata !DIExpression()), !dbg !2810
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2811
  %call = call zeroext i1 @dma_fence_is_signaled_locked(%struct.dma_fence* %0) #8, !dbg !2813
  br i1 %call, label %if.then, label %if.else, !dbg !2814

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2815
  %error = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 7, !dbg !2816
  %2 = load i32, i32* %error, align 4, !dbg !2816
  %tobool = icmp ne i32 %2, 0, !dbg !2815
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2815

cond.true:                                        ; preds = %if.then
  br label %cond.end, !dbg !2815

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !2815

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 1, %cond.false ], !dbg !2815
  store i32 %cond, i32* %retval, align 4, !dbg !2817
  br label %return, !dbg !2817

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2818
  br label %return, !dbg !2818

return:                                           ; preds = %if.else, %cond.end
  %3 = load i32, i32* %retval, align 4, !dbg !2819
  ret i32 %3, !dbg !2819
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @dma_fence_remove_callback(%struct.dma_fence* %fence, %struct.dma_fence_cb* %cb) #0 !dbg !2820 {
entry:
  %lock.addr.i24 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i24, metadata !1952, metadata !DIExpression()), !dbg !2823
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1958, metadata !DIExpression()), !dbg !2825
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !1960, metadata !DIExpression()), !dbg !2826
  %fence.addr = alloca %struct.dma_fence*, align 8
  %cb.addr = alloca %struct.dma_fence_cb*, align 8
  %flags = alloca i64, align 8
  %ret = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2833, metadata !DIExpression()), !dbg !2834
  store %struct.dma_fence_cb* %cb, %struct.dma_fence_cb** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence_cb** %cb.addr, metadata !2835, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2837, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !2839, metadata !DIExpression()), !dbg !2840
  br label %do.body, !dbg !2841

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2842

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2843, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2846, metadata !DIExpression()), !dbg !2845
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2845
  %conv = zext i1 %cmp to i32, !dbg !2845
  store i32 1, i32* %tmp, align 4, !dbg !2845
  %0 = load i32, i32* %tmp, align 4, !dbg !2845
  br label %do.body2, !dbg !2847

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !2848

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2849

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !2851, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !2855, metadata !DIExpression()), !dbg !2854
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !2854
  %conv8 = zext i1 %cmp7 to i32, !dbg !2854
  store i32 1, i32* %tmp9, align 4, !dbg !2854
  %1 = load i32, i32* %tmp9, align 4, !dbg !2854
  %call = call i64 @arch_local_irq_save() #8, !dbg !2856
  store i64 %call, i64* %flags, align 8, !dbg !2856
  br label %do.end, !dbg !2856

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !2849

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !2848

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2857, !srcloc !2858
  br label %do.body12, !dbg !2857

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2859
  %lock = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %2, i32 0, i32 0, !dbg !2859
  %3 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !2859
  store %struct.spinlock* %3, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2860
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !2861
  %rlock.i = bitcast %union.anon* %5 to %struct.raw_spinlock*, !dbg !2861
  br label %do.end14, !dbg !2859

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !2857

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !2848

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !2847

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2842

do.end18:                                         ; preds = %do.end17
  %6 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cb.addr, align 8, !dbg !2862
  %node = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %6, i32 0, i32 0, !dbg !2863
  %call19 = call i32 @list_empty(%struct.list_head* %node) #8, !dbg !2864
  %tobool = icmp ne i32 %call19, 0, !dbg !2865
  %lnot = xor i1 %tobool, true, !dbg !2865
  %frombool = zext i1 %lnot to i8, !dbg !2866
  store i8 %frombool, i8* %ret, align 1, !dbg !2866
  %7 = load i8, i8* %ret, align 1, !dbg !2867
  %tobool20 = trunc i8 %7 to i1, !dbg !2867
  br i1 %tobool20, label %if.then, label %if.end, !dbg !2869

if.then:                                          ; preds = %do.end18
  %8 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cb.addr, align 8, !dbg !2870
  %node21 = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %8, i32 0, i32 0, !dbg !2871
  call void @list_del_init(%struct.list_head* %node21) #8, !dbg !2872
  br label %if.end, !dbg !2872

if.end:                                           ; preds = %if.then, %do.end18
  %9 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2873
  %lock22 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %9, i32 0, i32 0, !dbg !2874
  %10 = load %struct.spinlock*, %struct.spinlock** %lock22, align 8, !dbg !2874
  %11 = load i64, i64* %flags, align 8, !dbg !2875
  store %struct.spinlock* %10, %struct.spinlock** %lock.addr.i24, align 8
  store i64 %11, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !80, metadata !2013, metadata !DIExpression()) #5, !dbg !2876
  call void @llvm.dbg.declare(metadata !80, metadata !2017, metadata !DIExpression()) #5, !dbg !2876
  store i32 1, i32* %tmp.i, align 4, !dbg !2876
  %12 = load i32, i32* %tmp.i, align 4, !dbg !2876
  call void @llvm.dbg.declare(metadata !80, metadata !2018, metadata !DIExpression()) #5, !dbg !2877
  call void @llvm.dbg.declare(metadata !80, metadata !2024, metadata !DIExpression()) #5, !dbg !2877
  store i32 1, i32* %tmp8.i, align 4, !dbg !2877
  %13 = load i32, i32* %tmp8.i, align 4, !dbg !2877
  %14 = load i64, i64* %flags.addr.i, align 8, !dbg !2878
  call void @arch_local_irq_restore(i64 %14) #9, !dbg !2878
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2879, !srcloc !2028
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i24, align 8, !dbg !2880
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !2880
  %rlock.i25 = bitcast %union.anon* %16 to %struct.raw_spinlock*, !dbg !2880
  %17 = load i8, i8* %ret, align 1, !dbg !2881
  %tobool23 = trunc i8 %17 to i1, !dbg !2881
  ret i1 %tobool23, !dbg !2882
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del_init(%struct.list_head* %entry1) #0 !dbg !2883 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2884, metadata !DIExpression()), !dbg !2885
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2886
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !2887
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2888
  call void @INIT_LIST_HEAD(%struct.list_head* %1) #8, !dbg !2889
  ret void, !dbg !2890
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @signal_pending(%struct.task_struct* %p) #0 !dbg !2891 {
entry:
  %p.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %p, %struct.task_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p.addr, metadata !2894, metadata !DIExpression()), !dbg !2895
  %0 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !2896
  %call = call i32 @test_tsk_thread_flag(%struct.task_struct* %0, i32 2) #8, !dbg !2896
  %tobool = icmp ne i32 %call, 0, !dbg !2896
  %lnot = xor i1 %tobool, true, !dbg !2896
  %lnot1 = xor i1 %lnot, true, !dbg !2896
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2896
  %conv = sext i32 %lnot.ext to i64, !dbg !2896
  %conv2 = trunc i64 %conv to i32, !dbg !2896
  ret i32 %conv2, !dbg !2897
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_default_wait_cb(%struct.dma_fence* %fence, %struct.dma_fence_cb* %cb) #0 !dbg !2898 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  %cb.addr = alloca %struct.dma_fence_cb*, align 8
  %wait = alloca %struct.default_wait_cb*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.default_wait_cb*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2899, metadata !DIExpression()), !dbg !2900
  store %struct.dma_fence_cb* %cb, %struct.dma_fence_cb** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence_cb** %cb.addr, metadata !2901, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.declare(metadata %struct.default_wait_cb** %wait, metadata !2903, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2905, metadata !DIExpression()), !dbg !2907
  %0 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cb.addr, align 8, !dbg !2907
  %1 = bitcast %struct.dma_fence_cb* %0 to i8*, !dbg !2907
  store i8* %1, i8** %__mptr, align 8, !dbg !2907
  br label %do.body, !dbg !2907

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2908

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2907
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2907
  %3 = bitcast i8* %add.ptr to %struct.default_wait_cb*, !dbg !2907
  store %struct.default_wait_cb* %3, %struct.default_wait_cb** %tmp, align 8, !dbg !2908
  %4 = load %struct.default_wait_cb*, %struct.default_wait_cb** %tmp, align 8, !dbg !2907
  store %struct.default_wait_cb* %4, %struct.default_wait_cb** %wait, align 8, !dbg !2904
  %5 = load %struct.default_wait_cb*, %struct.default_wait_cb** %wait, align 8, !dbg !2910
  %task = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %5, i32 0, i32 1, !dbg !2911
  %6 = load %struct.task_struct*, %struct.task_struct** %task, align 8, !dbg !2911
  %call = call i32 @wake_up_state(%struct.task_struct* %6, i32 3) #8, !dbg !2912
  ret void, !dbg !2913
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !2914 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2915, metadata !DIExpression()), !dbg !2916
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2917, metadata !DIExpression()), !dbg !2918
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2919
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2920
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2921
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !2922
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2922
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #8, !dbg !2923
  ret void, !dbg !2924
}

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !2925 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2926, metadata !DIExpression()), !dbg !2927
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2928
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !2929
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2930
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2931
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !2932
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2933
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !2934
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !2935
  ret void, !dbg !2936
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dma_fence_wait_any_timeout(%struct.dma_fence** %fences, i32 %count, i1 zeroext %intr, i64 %timeout, i32* %idx) #0 !dbg !2937 {
entry:
  %pscr_ret__.i128 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i128, metadata !2124, metadata !DIExpression()), !dbg !2942
  %__vpp_verify.i129 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i129, metadata !2132, metadata !DIExpression()), !dbg !2944
  %pfo_val__.i130 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i130, metadata !2137, metadata !DIExpression()), !dbg !2945
  %tmp.i131 = alloca %struct.task_struct*, align 8
  %tmp1.i132 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i123 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i123, metadata !2124, metadata !DIExpression()), !dbg !2946
  %__vpp_verify.i124 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i124, metadata !2132, metadata !DIExpression()), !dbg !2950
  %pfo_val__.i125 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i125, metadata !2137, metadata !DIExpression()), !dbg !2951
  %tmp.i126 = alloca %struct.task_struct*, align 8
  %tmp1.i127 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i118 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i118, metadata !2124, metadata !DIExpression()), !dbg !2952
  %__vpp_verify.i119 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i119, metadata !2132, metadata !DIExpression()), !dbg !2958
  %pfo_val__.i120 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i120, metadata !2137, metadata !DIExpression()), !dbg !2959
  %tmp.i121 = alloca %struct.task_struct*, align 8
  %tmp1.i122 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i113 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i113, metadata !2124, metadata !DIExpression()), !dbg !2960
  %__vpp_verify.i114 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i114, metadata !2132, metadata !DIExpression()), !dbg !2965
  %pfo_val__.i115 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i115, metadata !2137, metadata !DIExpression()), !dbg !2966
  %tmp.i116 = alloca %struct.task_struct*, align 8
  %tmp1.i117 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !2124, metadata !DIExpression()), !dbg !2967
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !2132, metadata !DIExpression()), !dbg !2972
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !2137, metadata !DIExpression()), !dbg !2973
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i64, align 8
  %fences.addr = alloca %struct.dma_fence**, align 8
  %count.addr = alloca i32, align 4
  %intr.addr = alloca i8, align 1
  %timeout.addr = alloca i64, align 8
  %idx.addr = alloca i32*, align 8
  %cb = alloca %struct.default_wait_cb*, align 8
  %ret = alloca i64, align 8
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %fence = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence** %fences, %struct.dma_fence*** %fences.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %fences.addr, metadata !2974, metadata !DIExpression()), !dbg !2975
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !2976, metadata !DIExpression()), !dbg !2977
  %frombool = zext i1 %intr to i8
  store i8 %frombool, i8* %intr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %intr.addr, metadata !2978, metadata !DIExpression()), !dbg !2979
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !2980, metadata !DIExpression()), !dbg !2981
  store i32* %idx, i32** %idx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %idx.addr, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.declare(metadata %struct.default_wait_cb** %cb, metadata !2984, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !2986, metadata !DIExpression()), !dbg !2987
  %0 = load i64, i64* %timeout.addr, align 8, !dbg !2988
  store i64 %0, i64* %ret, align 8, !dbg !2987
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2989, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2991, metadata !DIExpression()), !dbg !2994
  %1 = load %struct.dma_fence**, %struct.dma_fence*** %fences.addr, align 8, !dbg !2994
  %tobool = icmp ne %struct.dma_fence** %1, null, !dbg !2994
  br i1 %tobool, label %lor.lhs.false, label %lor.end, !dbg !2994

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %count.addr, align 4, !dbg !2994
  %tobool1 = icmp ne i32 %2, 0, !dbg !2994
  br i1 %tobool1, label %lor.rhs, label %lor.end, !dbg !2994

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load i64, i64* %timeout.addr, align 8, !dbg !2994
  %cmp = icmp slt i64 %3, 0, !dbg !2994
  br label %lor.end, !dbg !2994

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp, %lor.rhs ]
  %lnot = xor i1 %4, true, !dbg !2994
  %lnot2 = xor i1 %lnot, true, !dbg !2994
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2994
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2994
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !2995
  %tobool3 = icmp ne i32 %5, 0, !dbg !2995
  %lnot4 = xor i1 %tobool3, true, !dbg !2995
  %lnot6 = xor i1 %lnot4, true, !dbg !2995
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2995
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2995
  %tobool8 = icmp ne i64 %conv, 0, !dbg !2995
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2994

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !2995

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !2997

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !2999

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !2997

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 771, i32 2305, i64 12) #5, !dbg !3001, !srcloc !3003
  br label %do.end11, !dbg !3001

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 191) #5, !dbg !3004, !srcloc !3006
  br label %do.body12, !dbg !2997

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !3007

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !2997

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !2997

if.end:                                           ; preds = %do.end14, %lor.end
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !2994
  %tobool15 = icmp ne i32 %6, 0, !dbg !2994
  %lnot16 = xor i1 %tobool15, true, !dbg !2994
  %lnot18 = xor i1 %lnot16, true, !dbg !2994
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !2994
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !2994
  store i64 %conv20, i64* %tmp, align 8, !dbg !2995
  %7 = load i64, i64* %tmp, align 8, !dbg !2994
  %tobool21 = icmp ne i64 %7, 0, !dbg !3009
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !3010

if.then22:                                        ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !3011
  br label %return, !dbg !3011

if.end23:                                         ; preds = %if.end
  %8 = load i64, i64* %timeout.addr, align 8, !dbg !3012
  %cmp24 = icmp eq i64 %8, 0, !dbg !3014
  br i1 %cmp24, label %if.then26, label %if.end34, !dbg !3015

if.then26:                                        ; preds = %if.end23
  store i32 0, i32* %i, align 4, !dbg !3016
  br label %for.cond, !dbg !3019

for.cond:                                         ; preds = %for.inc, %if.then26
  %9 = load i32, i32* %i, align 4, !dbg !3020
  %10 = load i32, i32* %count.addr, align 4, !dbg !3022
  %cmp27 = icmp ult i32 %9, %10, !dbg !3023
  br i1 %cmp27, label %for.body, label %for.end, !dbg !3024

for.body:                                         ; preds = %for.cond
  %11 = load %struct.dma_fence**, %struct.dma_fence*** %fences.addr, align 8, !dbg !3025
  %12 = load i32, i32* %i, align 4, !dbg !3027
  %idxprom = zext i32 %12 to i64, !dbg !3025
  %arrayidx = getelementptr %struct.dma_fence*, %struct.dma_fence** %11, i64 %idxprom, !dbg !3025
  %13 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !3025
  %call = call zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %13) #8, !dbg !3028
  br i1 %call, label %if.then29, label %if.end33, !dbg !3029

if.then29:                                        ; preds = %for.body
  %14 = load i32*, i32** %idx.addr, align 8, !dbg !3030
  %tobool30 = icmp ne i32* %14, null, !dbg !3030
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !3033

if.then31:                                        ; preds = %if.then29
  %15 = load i32, i32* %i, align 4, !dbg !3034
  %16 = load i32*, i32** %idx.addr, align 8, !dbg !3035
  store i32 %15, i32* %16, align 4, !dbg !3036
  br label %if.end32, !dbg !3037

if.end32:                                         ; preds = %if.then31, %if.then29
  store i64 1, i64* %retval, align 8, !dbg !3038
  br label %return, !dbg !3038

if.end33:                                         ; preds = %for.body
  br label %for.inc, !dbg !3039

for.inc:                                          ; preds = %if.end33
  %17 = load i32, i32* %i, align 4, !dbg !3040
  %inc = add i32 %17, 1, !dbg !3040
  store i32 %inc, i32* %i, align 4, !dbg !3040
  br label %for.cond, !dbg !3041, !llvm.loop !3042

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %retval, align 8, !dbg !3044
  br label %return, !dbg !3044

if.end34:                                         ; preds = %if.end23
  %18 = load i32, i32* %count.addr, align 4, !dbg !3045
  %conv35 = zext i32 %18 to i64, !dbg !3045
  %call36 = call i8* @kcalloc(i64 %conv35, i64 32, i32 3264) #8, !dbg !3046
  %19 = bitcast i8* %call36 to %struct.default_wait_cb*, !dbg !3046
  store %struct.default_wait_cb* %19, %struct.default_wait_cb** %cb, align 8, !dbg !3047
  %20 = load %struct.default_wait_cb*, %struct.default_wait_cb** %cb, align 8, !dbg !3048
  %cmp37 = icmp eq %struct.default_wait_cb* %20, null, !dbg !3050
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !3051

if.then39:                                        ; preds = %if.end34
  store i64 -12, i64* %ret, align 8, !dbg !3052
  br label %err_free_cb, !dbg !3054

if.end40:                                         ; preds = %if.end34
  store i32 0, i32* %i, align 4, !dbg !3055
  br label %for.cond41, !dbg !3056

for.cond41:                                       ; preds = %for.inc59, %if.end40
  %21 = load i32, i32* %i, align 4, !dbg !3057
  %22 = load i32, i32* %count.addr, align 4, !dbg !3058
  %cmp42 = icmp ult i32 %21, %22, !dbg !3059
  br i1 %cmp42, label %for.body44, label %for.end61, !dbg !3060

for.body44:                                       ; preds = %for.cond41
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence, metadata !3061, metadata !DIExpression()), !dbg !3062
  %23 = load %struct.dma_fence**, %struct.dma_fence*** %fences.addr, align 8, !dbg !3063
  %24 = load i32, i32* %i, align 4, !dbg !3064
  %idxprom45 = zext i32 %24 to i64, !dbg !3063
  %arrayidx46 = getelementptr %struct.dma_fence*, %struct.dma_fence** %23, i64 %idxprom45, !dbg !3063
  %25 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx46, align 8, !dbg !3063
  store %struct.dma_fence* %25, %struct.dma_fence** %fence, align 8, !dbg !3062
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !2972
  %26 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !2972
  %27 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #10, !dbg !2973, !srcloc !2228
  store i64 %27, i64* %pfo_val__.i, align 8, !dbg !2973
  %28 = load i64, i64* %pfo_val__.i, align 8, !dbg !2973
  %29 = inttoptr i64 %28 to %struct.task_struct*, !dbg !2973
  store %struct.task_struct* %29, %struct.task_struct** %tmp.i, align 8, !dbg !2973
  %30 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !2973
  store %struct.task_struct* %30, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !2967
  %31 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !2967
  store %struct.task_struct* %31, %struct.task_struct** %tmp1.i, align 8, !dbg !2967
  %32 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !2967
  %33 = load %struct.default_wait_cb*, %struct.default_wait_cb** %cb, align 8, !dbg !3065
  %34 = load i32, i32* %i, align 4, !dbg !3066
  %idxprom48 = zext i32 %34 to i64, !dbg !3065
  %arrayidx49 = getelementptr %struct.default_wait_cb, %struct.default_wait_cb* %33, i64 %idxprom48, !dbg !3065
  %task = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %arrayidx49, i32 0, i32 1, !dbg !3067
  store %struct.task_struct* %32, %struct.task_struct** %task, align 8, !dbg !3068
  %35 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !3069
  %36 = load %struct.default_wait_cb*, %struct.default_wait_cb** %cb, align 8, !dbg !3071
  %37 = load i32, i32* %i, align 4, !dbg !3072
  %idxprom50 = zext i32 %37 to i64, !dbg !3071
  %arrayidx51 = getelementptr %struct.default_wait_cb, %struct.default_wait_cb* %36, i64 %idxprom50, !dbg !3071
  %base = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %arrayidx51, i32 0, i32 0, !dbg !3073
  %call52 = call i32 @dma_fence_add_callback(%struct.dma_fence* %35, %struct.dma_fence_cb* %base, void (%struct.dma_fence*, %struct.dma_fence_cb*)* @dma_fence_default_wait_cb) #8, !dbg !3074
  %tobool53 = icmp ne i32 %call52, 0, !dbg !3074
  br i1 %tobool53, label %if.then54, label %if.end58, !dbg !3075

if.then54:                                        ; preds = %for.body44
  %38 = load i32*, i32** %idx.addr, align 8, !dbg !3076
  %tobool55 = icmp ne i32* %38, null, !dbg !3076
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !3079

if.then56:                                        ; preds = %if.then54
  %39 = load i32, i32* %i, align 4, !dbg !3080
  %40 = load i32*, i32** %idx.addr, align 8, !dbg !3081
  store i32 %39, i32* %40, align 4, !dbg !3082
  br label %if.end57, !dbg !3083

if.end57:                                         ; preds = %if.then56, %if.then54
  br label %fence_rm_cb, !dbg !3084

if.end58:                                         ; preds = %for.body44
  br label %for.inc59, !dbg !3085

for.inc59:                                        ; preds = %if.end58
  %41 = load i32, i32* %i, align 4, !dbg !3086
  %inc60 = add i32 %41, 1, !dbg !3086
  store i32 %inc60, i32* %i, align 4, !dbg !3086
  br label %for.cond41, !dbg !3087, !llvm.loop !3088

for.end61:                                        ; preds = %for.cond41
  br label %while.cond, !dbg !3090

while.cond:                                       ; preds = %if.end99, %for.end61
  %42 = load i64, i64* %ret, align 8, !dbg !3091
  %cmp62 = icmp sgt i64 %42, 0, !dbg !3092
  br i1 %cmp62, label %while.body, label %while.end, !dbg !3090

while.body:                                       ; preds = %while.cond
  %43 = load i8, i8* %intr.addr, align 1, !dbg !3093
  %tobool64 = trunc i8 %43 to i1, !dbg !3093
  br i1 %tobool64, label %if.then65, label %if.else, !dbg !3094

if.then65:                                        ; preds = %while.body
  br label %do.body66, !dbg !3095

do.body66:                                        ; preds = %if.then65
  br label %do.body67, !dbg !3096

do.body67:                                        ; preds = %do.body66
  br label %do.body68, !dbg !3097

do.body68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !3098

do.end69:                                         ; preds = %do.body68
  br label %do.body70, !dbg !3097

do.body70:                                        ; preds = %do.end69
  store i8* null, i8** %__vpp_verify.i114, align 8, !dbg !2965
  %44 = load i8*, i8** %__vpp_verify.i114, align 8, !dbg !2965
  %45 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #10, !dbg !2966, !srcloc !2228
  store i64 %45, i64* %pfo_val__.i115, align 8, !dbg !2966
  %46 = load i64, i64* %pfo_val__.i115, align 8, !dbg !2966
  %47 = inttoptr i64 %46 to %struct.task_struct*, !dbg !2966
  store %struct.task_struct* %47, %struct.task_struct** %tmp.i116, align 8, !dbg !2966
  %48 = load %struct.task_struct*, %struct.task_struct** %tmp.i116, align 8, !dbg !2966
  store %struct.task_struct* %48, %struct.task_struct** %pscr_ret__.i113, align 8, !dbg !2960
  %49 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i113, align 8, !dbg !2960
  store %struct.task_struct* %49, %struct.task_struct** %tmp1.i117, align 8, !dbg !2960
  %50 = load %struct.task_struct*, %struct.task_struct** %tmp1.i117, align 8, !dbg !2960
  %state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 1, !dbg !3100
  store volatile i64 1, i64* %state, align 16, !dbg !3100
  br label %do.end72, !dbg !3100

do.end72:                                         ; preds = %do.body70
  br label %do.end73, !dbg !3097

do.end73:                                         ; preds = %do.end72
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !3096, !srcloc !3101
  br label %do.end74, !dbg !3096

do.end74:                                         ; preds = %do.end73
  br label %if.end85, !dbg !3096

if.else:                                          ; preds = %while.body
  br label %do.body75, !dbg !3102

do.body75:                                        ; preds = %if.else
  br label %do.body76, !dbg !3103

do.body76:                                        ; preds = %do.body75
  br label %do.body77, !dbg !3104

do.body77:                                        ; preds = %do.body76
  br label %do.end78, !dbg !3105

do.end78:                                         ; preds = %do.body77
  br label %do.body79, !dbg !3104

do.body79:                                        ; preds = %do.end78
  store i8* null, i8** %__vpp_verify.i119, align 8, !dbg !2958
  %51 = load i8*, i8** %__vpp_verify.i119, align 8, !dbg !2958
  %52 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #10, !dbg !2959, !srcloc !2228
  store i64 %52, i64* %pfo_val__.i120, align 8, !dbg !2959
  %53 = load i64, i64* %pfo_val__.i120, align 8, !dbg !2959
  %54 = inttoptr i64 %53 to %struct.task_struct*, !dbg !2959
  store %struct.task_struct* %54, %struct.task_struct** %tmp.i121, align 8, !dbg !2959
  %55 = load %struct.task_struct*, %struct.task_struct** %tmp.i121, align 8, !dbg !2959
  store %struct.task_struct* %55, %struct.task_struct** %pscr_ret__.i118, align 8, !dbg !2952
  %56 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i118, align 8, !dbg !2952
  store %struct.task_struct* %56, %struct.task_struct** %tmp1.i122, align 8, !dbg !2952
  %57 = load %struct.task_struct*, %struct.task_struct** %tmp1.i122, align 8, !dbg !2952
  %state81 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 1, !dbg !3107
  store volatile i64 2, i64* %state81, align 16, !dbg !3107
  br label %do.end82, !dbg !3107

do.end82:                                         ; preds = %do.body79
  br label %do.end83, !dbg !3104

do.end83:                                         ; preds = %do.end82
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !3103, !srcloc !3108
  br label %do.end84, !dbg !3103

do.end84:                                         ; preds = %do.end83
  br label %if.end85

if.end85:                                         ; preds = %do.end84, %do.end74
  %58 = load %struct.dma_fence**, %struct.dma_fence*** %fences.addr, align 8, !dbg !3109
  %59 = load i32, i32* %count.addr, align 4, !dbg !3111
  %60 = load i32*, i32** %idx.addr, align 8, !dbg !3112
  %call86 = call zeroext i1 @dma_fence_test_signaled_any(%struct.dma_fence** %58, i32 %59, i32* %60) #8, !dbg !3113
  br i1 %call86, label %if.then87, label %if.end88, !dbg !3114

if.then87:                                        ; preds = %if.end85
  br label %while.end, !dbg !3115

if.end88:                                         ; preds = %if.end85
  %61 = load i64, i64* %ret, align 8, !dbg !3116
  %call89 = call i64 @schedule_timeout(i64 %61) #8, !dbg !3117
  store i64 %call89, i64* %ret, align 8, !dbg !3118
  %62 = load i64, i64* %ret, align 8, !dbg !3119
  %cmp90 = icmp sgt i64 %62, 0, !dbg !3120
  br i1 %cmp90, label %land.lhs.true, label %if.end99, !dbg !3121

land.lhs.true:                                    ; preds = %if.end88
  %63 = load i8, i8* %intr.addr, align 1, !dbg !3122
  %tobool92 = trunc i8 %63 to i1, !dbg !3122
  br i1 %tobool92, label %land.lhs.true94, label %if.end99, !dbg !3123

land.lhs.true94:                                  ; preds = %land.lhs.true
  store i8* null, i8** %__vpp_verify.i124, align 8, !dbg !2950
  %64 = load i8*, i8** %__vpp_verify.i124, align 8, !dbg !2950
  %65 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #10, !dbg !2951, !srcloc !2228
  store i64 %65, i64* %pfo_val__.i125, align 8, !dbg !2951
  %66 = load i64, i64* %pfo_val__.i125, align 8, !dbg !2951
  %67 = inttoptr i64 %66 to %struct.task_struct*, !dbg !2951
  store %struct.task_struct* %67, %struct.task_struct** %tmp.i126, align 8, !dbg !2951
  %68 = load %struct.task_struct*, %struct.task_struct** %tmp.i126, align 8, !dbg !2951
  store %struct.task_struct* %68, %struct.task_struct** %pscr_ret__.i123, align 8, !dbg !2946
  %69 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i123, align 8, !dbg !2946
  store %struct.task_struct* %69, %struct.task_struct** %tmp1.i127, align 8, !dbg !2946
  %70 = load %struct.task_struct*, %struct.task_struct** %tmp1.i127, align 8, !dbg !2946
  %call96 = call i32 @signal_pending(%struct.task_struct* %70) #8, !dbg !3124
  %tobool97 = icmp ne i32 %call96, 0, !dbg !3124
  br i1 %tobool97, label %if.then98, label %if.end99, !dbg !3125

if.then98:                                        ; preds = %land.lhs.true94
  store i64 -512, i64* %ret, align 8, !dbg !3126
  br label %if.end99, !dbg !3127

if.end99:                                         ; preds = %if.then98, %land.lhs.true94, %land.lhs.true, %if.end88
  br label %while.cond, !dbg !3090, !llvm.loop !3128

while.end:                                        ; preds = %if.then87, %while.cond
  store i8* null, i8** %__vpp_verify.i129, align 8, !dbg !2944
  %71 = load i8*, i8** %__vpp_verify.i129, align 8, !dbg !2944
  %72 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #10, !dbg !2945, !srcloc !2228
  store i64 %72, i64* %pfo_val__.i130, align 8, !dbg !2945
  %73 = load i64, i64* %pfo_val__.i130, align 8, !dbg !2945
  %74 = inttoptr i64 %73 to %struct.task_struct*, !dbg !2945
  store %struct.task_struct* %74, %struct.task_struct** %tmp.i131, align 8, !dbg !2945
  %75 = load %struct.task_struct*, %struct.task_struct** %tmp.i131, align 8, !dbg !2945
  store %struct.task_struct* %75, %struct.task_struct** %pscr_ret__.i128, align 8, !dbg !2942
  %76 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i128, align 8, !dbg !2942
  store %struct.task_struct* %76, %struct.task_struct** %tmp1.i132, align 8, !dbg !2942
  %77 = load %struct.task_struct*, %struct.task_struct** %tmp1.i132, align 8, !dbg !2942
  %state101 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 1, !dbg !3130
  store volatile i64 0, i64* %state101, align 16, !dbg !3130
  br label %fence_rm_cb, !dbg !3130

fence_rm_cb:                                      ; preds = %while.end, %if.end57
  call void @llvm.dbg.label(metadata !3131), !dbg !3132
  br label %while.cond102, !dbg !3133

while.cond102:                                    ; preds = %while.body105, %fence_rm_cb
  %78 = load i32, i32* %i, align 4, !dbg !3134
  %dec = add i32 %78, -1, !dbg !3134
  store i32 %dec, i32* %i, align 4, !dbg !3134
  %cmp103 = icmp ugt i32 %78, 0, !dbg !3135
  br i1 %cmp103, label %while.body105, label %while.end112, !dbg !3133

while.body105:                                    ; preds = %while.cond102
  %79 = load %struct.dma_fence**, %struct.dma_fence*** %fences.addr, align 8, !dbg !3136
  %80 = load i32, i32* %i, align 4, !dbg !3137
  %idxprom106 = zext i32 %80 to i64, !dbg !3136
  %arrayidx107 = getelementptr %struct.dma_fence*, %struct.dma_fence** %79, i64 %idxprom106, !dbg !3136
  %81 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx107, align 8, !dbg !3136
  %82 = load %struct.default_wait_cb*, %struct.default_wait_cb** %cb, align 8, !dbg !3138
  %83 = load i32, i32* %i, align 4, !dbg !3139
  %idxprom108 = zext i32 %83 to i64, !dbg !3138
  %arrayidx109 = getelementptr %struct.default_wait_cb, %struct.default_wait_cb* %82, i64 %idxprom108, !dbg !3138
  %base110 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %arrayidx109, i32 0, i32 0, !dbg !3140
  %call111 = call zeroext i1 @dma_fence_remove_callback(%struct.dma_fence* %81, %struct.dma_fence_cb* %base110) #8, !dbg !3141
  br label %while.cond102, !dbg !3133, !llvm.loop !3142

while.end112:                                     ; preds = %while.cond102
  br label %err_free_cb, !dbg !3133

err_free_cb:                                      ; preds = %while.end112, %if.then39
  call void @llvm.dbg.label(metadata !3144), !dbg !3145
  %84 = load %struct.default_wait_cb*, %struct.default_wait_cb** %cb, align 8, !dbg !3146
  %85 = bitcast %struct.default_wait_cb* %84 to i8*, !dbg !3146
  call void @kfree(i8* %85) #8, !dbg !3147
  %86 = load i64, i64* %ret, align 8, !dbg !3148
  store i64 %86, i64* %retval, align 8, !dbg !3149
  br label %return, !dbg !3149

return:                                           ; preds = %err_free_cb, %for.end, %if.end32, %if.then22
  %87 = load i64, i64* %retval, align 8, !dbg !3150
  ret i64 %87, !dbg !3150
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %fence) #0 !dbg !3151 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !3152, metadata !DIExpression()), !dbg !3153
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3154
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 5, !dbg !3156
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags) #8, !dbg !3157
  br i1 %call, label %if.then, label %if.end, !dbg !3158

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !3159
  br label %return, !dbg !3159

if.end:                                           ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3160
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 1, !dbg !3162
  %2 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !3162
  %signaled = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %2, i32 0, i32 4, !dbg !3163
  %3 = load i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)** %signaled, align 8, !dbg !3163
  %tobool = icmp ne i1 (%struct.dma_fence*)* %3, null, !dbg !3160
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !3164

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3165
  %ops1 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %4, i32 0, i32 1, !dbg !3166
  %5 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops1, align 8, !dbg !3166
  %signaled2 = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %5, i32 0, i32 4, !dbg !3167
  %6 = load i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)** %signaled2, align 8, !dbg !3167
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3168
  %call3 = call zeroext i1 %6(%struct.dma_fence* %7) #8, !dbg !3165
  br i1 %call3, label %if.then4, label %if.end6, !dbg !3169

if.then4:                                         ; preds = %land.lhs.true
  %8 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3170
  %call5 = call i32 @dma_fence_signal(%struct.dma_fence* %8) #8, !dbg !3172
  store i1 true, i1* %retval, align 1, !dbg !3173
  br label %return, !dbg !3173

if.end6:                                          ; preds = %land.lhs.true, %if.end
  store i1 false, i1* %retval, align 1, !dbg !3174
  br label %return, !dbg !3174

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !3175
  ret i1 %9, !dbg !3175
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !3176 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3179, metadata !DIExpression()), !dbg !3180
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3181, metadata !DIExpression()), !dbg !3182
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3183, metadata !DIExpression()), !dbg !3184
  %0 = load i64, i64* %n.addr, align 8, !dbg !3185
  %1 = load i64, i64* %size.addr, align 8, !dbg !3186
  %2 = load i32, i32* %flags.addr, align 4, !dbg !3187
  %or = or i32 %2, 256, !dbg !3188
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #8, !dbg !3189
  ret i8* %call, !dbg !3190
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dma_fence_test_signaled_any(%struct.dma_fence** %fences, i32 %count, i32* %idx) #0 !dbg !3191 {
entry:
  %retval = alloca i1, align 1
  %fences.addr = alloca %struct.dma_fence**, align 8
  %count.addr = alloca i32, align 4
  %idx.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %fence = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence** %fences, %struct.dma_fence*** %fences.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %fences.addr, metadata !3194, metadata !DIExpression()), !dbg !3195
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !3196, metadata !DIExpression()), !dbg !3197
  store i32* %idx, i32** %idx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %idx.addr, metadata !3198, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3200, metadata !DIExpression()), !dbg !3201
  store i32 0, i32* %i, align 4, !dbg !3202
  br label %for.cond, !dbg !3204

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3205
  %1 = load i32, i32* %count.addr, align 4, !dbg !3207
  %cmp = icmp ult i32 %0, %1, !dbg !3208
  br i1 %cmp, label %for.body, label %for.end, !dbg !3209

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence, metadata !3210, metadata !DIExpression()), !dbg !3212
  %2 = load %struct.dma_fence**, %struct.dma_fence*** %fences.addr, align 8, !dbg !3213
  %3 = load i32, i32* %i, align 4, !dbg !3214
  %idxprom = sext i32 %3 to i64, !dbg !3213
  %arrayidx = getelementptr %struct.dma_fence*, %struct.dma_fence** %2, i64 %idxprom, !dbg !3213
  %4 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !3213
  store %struct.dma_fence* %4, %struct.dma_fence** %fence, align 8, !dbg !3212
  %5 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !3215
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %5, i32 0, i32 5, !dbg !3217
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags) #8, !dbg !3218
  br i1 %call, label %if.then, label %if.end2, !dbg !3219

if.then:                                          ; preds = %for.body
  %6 = load i32*, i32** %idx.addr, align 8, !dbg !3220
  %tobool = icmp ne i32* %6, null, !dbg !3220
  br i1 %tobool, label %if.then1, label %if.end, !dbg !3223

if.then1:                                         ; preds = %if.then
  %7 = load i32, i32* %i, align 4, !dbg !3224
  %8 = load i32*, i32** %idx.addr, align 8, !dbg !3225
  store i32 %7, i32* %8, align 4, !dbg !3226
  br label %if.end, !dbg !3227

if.end:                                           ; preds = %if.then1, %if.then
  store i1 true, i1* %retval, align 1, !dbg !3228
  br label %return, !dbg !3228

if.end2:                                          ; preds = %for.body
  br label %for.inc, !dbg !3229

for.inc:                                          ; preds = %if.end2
  %9 = load i32, i32* %i, align 4, !dbg !3230
  %inc = add i32 %9, 1, !dbg !3230
  store i32 %inc, i32* %i, align 4, !dbg !3230
  br label %for.cond, !dbg !3231, !llvm.loop !3232

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !3234
  br label %return, !dbg !3234

return:                                           ; preds = %for.end, %if.end
  %10 = load i1, i1* %retval, align 1, !dbg !3235
  ret i1 %10, !dbg !3235
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_init(%struct.kref* %kref) #0 !dbg !3236 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !3237, metadata !DIExpression()), !dbg !3238
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !3239
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !3240
  call void @refcount_set(%struct.refcount_struct* %refcount, i32 1) #8, !dbg !3241
  ret void, !dbg !3242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_dma_fence_init(%struct.dma_fence* %fence) #0 !dbg !3243 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !3244, metadata !DIExpression()), !dbg !3245
  ret void, !dbg !3245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dma_fence_stub_get_name(%struct.dma_fence* %fence) #0 !dbg !3246 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !3247, metadata !DIExpression()), !dbg !3248
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), !dbg !3249
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !3250 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !3251, metadata !DIExpression()), !dbg !3252
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !3253
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !3254
  call void @refcount_inc(%struct.refcount_struct* %refcount) #8, !dbg !3255
  ret void, !dbg !3256
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !3257 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !3261, metadata !DIExpression()), !dbg !3262
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !3263
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #8, !dbg !3264
  ret void, !dbg !3265
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !3266 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !3269, metadata !DIExpression()), !dbg !3270
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !3271, metadata !DIExpression()), !dbg !3272
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !3273
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !3274
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #8, !dbg !3275
  ret void, !dbg !3276
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !3277 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !3280, metadata !DIExpression()), !dbg !3286
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !3290, metadata !DIExpression()), !dbg !3291
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !3292, metadata !DIExpression()), !dbg !3294
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !1772, metadata !DIExpression()), !dbg !3295
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1788, metadata !DIExpression()), !dbg !3297
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !3298, metadata !DIExpression()), !dbg !3299
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !3300, metadata !DIExpression()), !dbg !3301
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !3302, metadata !DIExpression()), !dbg !3303
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !3304, metadata !DIExpression()), !dbg !3305
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !3306, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.declare(metadata i32* %old, metadata !3308, metadata !DIExpression()), !dbg !3309
  %0 = load i32, i32* %i.addr, align 4, !dbg !3310
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !3311
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !3312
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !3313
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !3313
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !3314
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !3315
  %conv.i.i = trunc i64 %5 to i32, !dbg !3315
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #9, !dbg !3316
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !3317
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3317
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #9, !dbg !3317
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !3318
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !3319
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !3294
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !3294
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !3294
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !3294
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !3294
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #5, !dbg !3294, !srcloc !3320
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !3294
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !3294
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !3294
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !3294
  store i32 %15, i32* %old, align 4, !dbg !3309
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !3321
  %tobool = icmp ne i32* %16, null, !dbg !3321
  br i1 %tobool, label %if.then, label %if.end, !dbg !3323

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !3324
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !3325
  store i32 %17, i32* %18, align 4, !dbg !3326
  br label %if.end, !dbg !3327

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !3328
  %tobool1 = icmp ne i32 %19, 0, !dbg !3328
  %lnot = xor i1 %tobool1, true, !dbg !3328
  %lnot2 = xor i1 %lnot, true, !dbg !3328
  %lnot3 = xor i1 %lnot2, true, !dbg !3328
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3328
  %conv = sext i32 %lnot.ext to i64, !dbg !3328
  %tobool4 = icmp ne i64 %conv, 0, !dbg !3328
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !3330

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !3331
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #8, !dbg !3332
  br label %if.end17, !dbg !3332

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !3333
  %cmp = icmp slt i32 %21, 0, !dbg !3333
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3333

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !3333
  %23 = load i32, i32* %i.addr, align 4, !dbg !3333
  %add = add i32 %22, %23, !dbg !3333
  %cmp7 = icmp slt i32 %add, 0, !dbg !3333
  br label %lor.end, !dbg !3333

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !3333
  %lnot11 = xor i1 %lnot9, true, !dbg !3333
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !3333
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !3333
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !3333
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3335

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !3336
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #8, !dbg !3337
  br label %if.end16, !dbg !3337

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !3338
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !3339 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3343, metadata !DIExpression()), !dbg !3344
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3345, metadata !DIExpression()), !dbg !3346
  ret i1 true, !dbg !3347
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3348 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3352, metadata !DIExpression()), !dbg !3353
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3354, metadata !DIExpression()), !dbg !3355
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3356, metadata !DIExpression()), !dbg !3357
  ret void, !dbg !3358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_atomic64_fetch_add(i64 %i, %struct.atomic64_t* %v) #0 !dbg !3359 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct.atomic64_t*, align 8
  %__ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr, metadata !3361, metadata !DIExpression()), !dbg !3362
  store %struct.atomic64_t* %v, %struct.atomic64_t** %v.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr, metadata !3363, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3365, metadata !DIExpression()), !dbg !3367
  %0 = load i64, i64* %i.addr, align 8, !dbg !3367
  store i64 %0, i64* %__ret, align 8, !dbg !3367
  %1 = load i64, i64* %__ret, align 8, !dbg !3367
  %2 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr, align 8, !dbg !3367
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %2, i32 0, i32 0, !dbg !3367
  %3 = call i64 asm sideeffect "xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %counter, i64 %1, i64* %counter) #5, !dbg !3367, !srcloc !3368
  store i64 %3, i64* %__ret, align 8, !dbg !3367
  %4 = load i64, i64* %__ret, align 8, !dbg !3367
  store i64 %4, i64* %tmp, align 8, !dbg !3367
  %5 = load i64, i64* %tmp, align 8, !dbg !3367
  ret i64 %5, !dbg !3369
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !3370 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3371, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3374, metadata !DIExpression()), !dbg !3373
  %0 = load i64, i64* %__edi, align 8, !dbg !3373
  store i64 %0, i64* %__edi, align 8, !dbg !3373
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3375, metadata !DIExpression()), !dbg !3373
  %1 = load i64, i64* %__esi, align 8, !dbg !3373
  store i64 %1, i64* %__esi, align 8, !dbg !3373
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3376, metadata !DIExpression()), !dbg !3373
  %2 = load i64, i64* %__edx, align 8, !dbg !3373
  store i64 %2, i64* %__edx, align 8, !dbg !3373
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3377, metadata !DIExpression()), !dbg !3373
  %3 = load i64, i64* %__ecx, align 8, !dbg !3373
  store i64 %3, i64* %__ecx, align 8, !dbg !3373
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3378, metadata !DIExpression()), !dbg !3373
  %4 = load i64, i64* %__eax, align 8, !dbg !3373
  store i64 %4, i64* %__eax, align 8, !dbg !3373
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3373
  %6 = call i64 @llvm.read_register.i64(metadata !1576), !dbg !3379
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !3379, !srcloc !3382
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3379
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3379
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3379
  call void @llvm.write_register.i64(metadata !1576, i64 %asmresult1), !dbg !3379
  %8 = load i64, i64* %__eax, align 8, !dbg !3379
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3383, metadata !DIExpression()), !dbg !3385
  store i64 -1, i64* %__mask, align 8, !dbg !3385
  %9 = load i64, i64* %__mask, align 8, !dbg !3385
  store i64 %9, i64* %tmp, align 8, !dbg !3385
  %10 = load i64, i64* %tmp, align 8, !dbg !3385
  %and = and i64 %8, %10, !dbg !3379
  store i64 %and, i64* %__ret, align 8, !dbg !3379
  %11 = load i64, i64* %__ret, align 8, !dbg !3373
  store i64 %11, i64* %tmp2, align 8, !dbg !3386
  %12 = load i64, i64* %tmp2, align 8, !dbg !3373
  ret i64 %12, !dbg !3387
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !3388 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3389, metadata !DIExpression()), !dbg !3391
  %0 = load i64, i64* %__edi, align 8, !dbg !3391
  store i64 %0, i64* %__edi, align 8, !dbg !3391
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3392, metadata !DIExpression()), !dbg !3391
  %1 = load i64, i64* %__esi, align 8, !dbg !3391
  store i64 %1, i64* %__esi, align 8, !dbg !3391
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3393, metadata !DIExpression()), !dbg !3391
  %2 = load i64, i64* %__edx, align 8, !dbg !3391
  store i64 %2, i64* %__edx, align 8, !dbg !3391
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3394, metadata !DIExpression()), !dbg !3391
  %3 = load i64, i64* %__ecx, align 8, !dbg !3391
  store i64 %3, i64* %__ecx, align 8, !dbg !3391
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3395, metadata !DIExpression()), !dbg !3391
  %4 = load i64, i64* %__eax, align 8, !dbg !3391
  store i64 %4, i64* %__eax, align 8, !dbg !3391
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !3391
  %6 = call i64 @llvm.read_register.i64(metadata !1576), !dbg !3391
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !3391, !srcloc !3396
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3391
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3391
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3391
  call void @llvm.write_register.i64(metadata !1576, i64 %asmresult1), !dbg !3391
  ret void, !dbg !3397
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !3398 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !3401, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3403, metadata !DIExpression()), !dbg !3405
  %0 = load i64, i64* %__edi, align 8, !dbg !3405
  store i64 %0, i64* %__edi, align 8, !dbg !3405
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3406, metadata !DIExpression()), !dbg !3405
  %1 = load i64, i64* %__esi, align 8, !dbg !3405
  store i64 %1, i64* %__esi, align 8, !dbg !3405
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3407, metadata !DIExpression()), !dbg !3405
  %2 = load i64, i64* %__edx, align 8, !dbg !3405
  store i64 %2, i64* %__edx, align 8, !dbg !3405
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3408, metadata !DIExpression()), !dbg !3405
  %3 = load i64, i64* %__ecx, align 8, !dbg !3405
  store i64 %3, i64* %__ecx, align 8, !dbg !3405
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3409, metadata !DIExpression()), !dbg !3405
  %4 = load i64, i64* %__eax, align 8, !dbg !3405
  store i64 %4, i64* %__eax, align 8, !dbg !3405
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !3405
  %6 = call i64 @llvm.read_register.i64(metadata !1576), !dbg !3405
  %7 = load i64, i64* %f.addr, align 8, !dbg !3405
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !3405, !srcloc !3410
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !3405
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !3405
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3405
  call void @llvm.write_register.i64(metadata !1576, i64 %asmresult1), !dbg !3405
  ret void, !dbg !3411
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !3412 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3413, metadata !DIExpression()), !dbg !3414
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3415, metadata !DIExpression()), !dbg !3416
  ret i1 true, !dbg !3417
}

; Function Attrs: noredzone
declare dso_local void @call_rcu(%struct.callback_head*, void (%struct.callback_head*)*) #2

; Function Attrs: noredzone
declare dso_local void @synchronize_rcu() #2

; Function Attrs: noredzone
declare dso_local void @kvfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_dma_fence_enable_signal(%struct.dma_fence* %fence) #0 !dbg !3418 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !3419, metadata !DIExpression()), !dbg !3420
  ret void, !dbg !3420
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3421 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3424, metadata !DIExpression()), !dbg !3425
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3426, metadata !DIExpression()), !dbg !3427
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3428, metadata !DIExpression()), !dbg !3429
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3430
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3432
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3433
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !3434
  br i1 %call, label %if.end, label %if.then, !dbg !3435

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3436

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3437
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3438
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !3439
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !3440
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3441
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3442
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3443
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !3444
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3445
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3446
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !3447
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !3448
  br label %do.body, !dbg !3449

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3450

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3452

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3450

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3454
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3454
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !3454
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !3454
  br label %do.end7, !dbg !3454

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3450

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3456
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3457 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3460, metadata !DIExpression()), !dbg !3461
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3462, metadata !DIExpression()), !dbg !3463
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3464, metadata !DIExpression()), !dbg !3465
  ret i1 true, !dbg !3466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dma_fence_is_signaled_locked(%struct.dma_fence* %fence) #0 !dbg !3467 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !3468, metadata !DIExpression()), !dbg !3469
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3470
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 5, !dbg !3472
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags) #8, !dbg !3473
  br i1 %call, label %if.then, label %if.end, !dbg !3474

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !3475
  br label %return, !dbg !3475

if.end:                                           ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3476
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 1, !dbg !3478
  %2 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !3478
  %signaled = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %2, i32 0, i32 4, !dbg !3479
  %3 = load i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)** %signaled, align 8, !dbg !3479
  %tobool = icmp ne i1 (%struct.dma_fence*)* %3, null, !dbg !3476
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !3480

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3481
  %ops1 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %4, i32 0, i32 1, !dbg !3482
  %5 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops1, align 8, !dbg !3482
  %signaled2 = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %5, i32 0, i32 4, !dbg !3483
  %6 = load i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)** %signaled2, align 8, !dbg !3483
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3484
  %call3 = call zeroext i1 %6(%struct.dma_fence* %7) #8, !dbg !3481
  br i1 %call3, label %if.then4, label %if.end6, !dbg !3485

if.then4:                                         ; preds = %land.lhs.true
  %8 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3486
  %call5 = call i32 @dma_fence_signal_locked(%struct.dma_fence* %8) #8, !dbg !3488
  store i1 true, i1* %retval, align 1, !dbg !3489
  br label %return, !dbg !3489

if.end6:                                          ; preds = %land.lhs.true, %if.end
  store i1 false, i1* %retval, align 1, !dbg !3490
  br label %return, !dbg !3490

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !3491
  ret i1 %9, !dbg !3491
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !3492 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3493, metadata !DIExpression()), !dbg !3494
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3495
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !3497
  br i1 %call, label %if.end, label %if.then, !dbg !3498

if.then:                                          ; preds = %entry
  br label %return, !dbg !3499

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3500
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3501
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3501
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3502
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3503
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3503
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !3504
  br label %return, !dbg !3505

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3505
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !3506 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3509, metadata !DIExpression()), !dbg !3510
  ret i1 true, !dbg !3511
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3512 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3513, metadata !DIExpression()), !dbg !3514
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3515, metadata !DIExpression()), !dbg !3516
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3517
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3518
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3519
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !3520
  br label %do.body, !dbg !3521

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3522

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3524

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3522

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3526
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3526
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3526
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !3526
  br label %do.end5, !dbg !3526

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3522

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3528
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_tsk_thread_flag(%struct.task_struct* %tsk, i32 %flag) #0 !dbg !3529 {
entry:
  %tsk.addr = alloca %struct.task_struct*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.task_struct* %tsk, %struct.task_struct** %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %tsk.addr, metadata !3532, metadata !DIExpression()), !dbg !3533
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !3534, metadata !DIExpression()), !dbg !3535
  %0 = load %struct.task_struct*, %struct.task_struct** %tsk.addr, align 8, !dbg !3536
  %call = call %struct.thread_info* @task_thread_info(%struct.task_struct* %0) #8, !dbg !3537
  %1 = load i32, i32* %flag.addr, align 4, !dbg !3538
  %call1 = call i32 @test_ti_thread_flag(%struct.thread_info* %call, i32 %1) #8, !dbg !3539
  ret i32 %call1, !dbg !3540
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #0 !dbg !3541 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !3546, metadata !DIExpression()), !dbg !3547
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !3548, metadata !DIExpression()), !dbg !3549
  %0 = load i32, i32* %flag.addr, align 4, !dbg !3550
  %conv = sext i32 %0 to i64, !dbg !3550
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !3551
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !3552
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %flags) #8, !dbg !3553
  %conv1 = zext i1 %call to i32, !dbg !3553
  ret i32 %conv1, !dbg !3554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.thread_info* @task_thread_info(%struct.task_struct* %task) #0 !dbg !3555 {
entry:
  %task.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %task, %struct.task_struct** %task.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %task.addr, metadata !3558, metadata !DIExpression()), !dbg !3559
  %0 = load %struct.task_struct*, %struct.task_struct** %task.addr, align 8, !dbg !3560
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i32 0, i32 0, !dbg !3561
  ret %struct.thread_info* %thread_info, !dbg !3562
}

; Function Attrs: noredzone
declare dso_local i32 @wake_up_state(%struct.task_struct*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !3563 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3564, metadata !DIExpression()), !dbg !3568
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3577, metadata !DIExpression()), !dbg !3578
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3579, metadata !DIExpression()), !dbg !3580
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3581, metadata !DIExpression()), !dbg !3582
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3583, metadata !DIExpression()), !dbg !3587
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3589, metadata !DIExpression()), !dbg !3593
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3595, metadata !DIExpression()), !dbg !3599
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3604, metadata !DIExpression()), !dbg !3605
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3606, metadata !DIExpression()), !dbg !3607
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3608, metadata !DIExpression()), !dbg !3609
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3610, metadata !DIExpression()), !dbg !3611
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3612, metadata !DIExpression()), !dbg !3613
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3614, metadata !DIExpression()), !dbg !3615
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3616, metadata !DIExpression()), !dbg !3617
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3618, metadata !DIExpression()), !dbg !3619
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3620, metadata !DIExpression()), !dbg !3621
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3622, metadata !DIExpression()), !dbg !3623
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3624, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !3626, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !3628, metadata !DIExpression()), !dbg !3631
  %0 = load i64, i64* %n.addr, align 8, !dbg !3631
  store i64 %0, i64* %__a, align 8, !dbg !3631
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !3632, metadata !DIExpression()), !dbg !3631
  %1 = load i64, i64* %size.addr, align 8, !dbg !3631
  store i64 %1, i64* %__b, align 8, !dbg !3631
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !3633, metadata !DIExpression()), !dbg !3631
  store i64* %bytes, i64** %__d, align 8, !dbg !3631
  %cmp = icmp eq i64* %__a, %__b, !dbg !3631
  %conv = zext i1 %cmp to i32, !dbg !3631
  %2 = load i64*, i64** %__d, align 8, !dbg !3631
  %cmp1 = icmp eq i64* %__a, %2, !dbg !3631
  %conv2 = zext i1 %cmp1 to i32, !dbg !3631
  %3 = load i64, i64* %__a, align 8, !dbg !3631
  %4 = load i64, i64* %__b, align 8, !dbg !3631
  %5 = load i64*, i64** %__d, align 8, !dbg !3631
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !3631
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3631
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !3631
  store i64 %8, i64* %5, align 8, !dbg !3631
  %frombool = zext i1 %7 to i8, !dbg !3631
  store i8 %frombool, i8* %tmp, align 1, !dbg !3631
  %9 = load i8, i8* %tmp, align 1, !dbg !3631
  %tobool = trunc i8 %9 to i1, !dbg !3631
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !3635
  %lnot = xor i1 %call, true, !dbg !3635
  %lnot3 = xor i1 %lnot, true, !dbg !3635
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3635
  %conv4 = sext i32 %lnot.ext to i64, !dbg !3635
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !3635
  br i1 %tobool5, label %if.then, label %if.end, !dbg !3636

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !3637
  br label %return, !dbg !3637

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !3638
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !3639
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !3640

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !3641
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3642
  br i1 %13, label %if.then6, label %if.end8, !dbg !3643

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !3644
  %15 = load i32, i32* %flags.addr, align 4, !dbg !3645
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !3646
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #5, !dbg !3647
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !3648

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !3649
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !3650
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3651

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !3652
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !3653
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !3654
  %call.i.i = call i32 @get_order(i64 %21) #11, !dbg !3655
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3613
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !3656
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3657
  %24 = load i32, i32* %order.i.i, align 4, !dbg !3658
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3659
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3660
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3661
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #9, !dbg !3662
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3662
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3662
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3662
  call void @llvm.assume(i1 %maskcond.i.i.i) #5, !dbg !3662
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3663
  br label %kmalloc.exit, !dbg !3663

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !3664
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3665
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !3665
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3667

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3668
  br label %kmalloc_index.exit.i, !dbg !3668

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3669
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !3671
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3672

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3673
  br label %kmalloc_index.exit.i, !dbg !3673

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3674
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !3676
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3677

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3678
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !3679
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3680

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3681
  br label %kmalloc_index.exit.i, !dbg !3681

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3682
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !3684
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3685

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3686
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !3687
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3688

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3689
  br label %kmalloc_index.exit.i, !dbg !3689

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3690
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !3692
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3693

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3694
  br label %kmalloc_index.exit.i, !dbg !3694

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3695
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !3697
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3698

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3699
  br label %kmalloc_index.exit.i, !dbg !3699

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3700
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !3702
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3703

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3704
  br label %kmalloc_index.exit.i, !dbg !3704

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3705
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !3707
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3708

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3709
  br label %kmalloc_index.exit.i, !dbg !3709

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3710
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !3712
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3713

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3714
  br label %kmalloc_index.exit.i, !dbg !3714

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3715
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !3717
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3718

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3719
  br label %kmalloc_index.exit.i, !dbg !3719

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3720
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !3722
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3723

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3724
  br label %kmalloc_index.exit.i, !dbg !3724

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3725
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !3727
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3728

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3729
  br label %kmalloc_index.exit.i, !dbg !3729

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3730
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !3732
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3733

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3734
  br label %kmalloc_index.exit.i, !dbg !3734

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3735
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !3737
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3738

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3739
  br label %kmalloc_index.exit.i, !dbg !3739

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3740
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !3742
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3743

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3744
  br label %kmalloc_index.exit.i, !dbg !3744

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3745
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !3747
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3748

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3749
  br label %kmalloc_index.exit.i, !dbg !3749

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3750
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !3752
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3753

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3754
  br label %kmalloc_index.exit.i, !dbg !3754

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3755
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !3757
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3758

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3759
  br label %kmalloc_index.exit.i, !dbg !3759

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3760
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !3762
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3763

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3764
  br label %kmalloc_index.exit.i, !dbg !3764

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3765
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !3767
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3768

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3769
  br label %kmalloc_index.exit.i, !dbg !3769

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3770
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !3772
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3773

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3774
  br label %kmalloc_index.exit.i, !dbg !3774

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3775
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !3777
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3778

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3779
  br label %kmalloc_index.exit.i, !dbg !3779

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3780
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !3782
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3783

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3784
  br label %kmalloc_index.exit.i, !dbg !3784

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3785
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !3787
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3788

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3789
  br label %kmalloc_index.exit.i, !dbg !3789

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3790
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !3792
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3793

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3794
  br label %kmalloc_index.exit.i, !dbg !3794

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3795
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !3797
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3798

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3799
  br label %kmalloc_index.exit.i, !dbg !3799

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3800
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !3802
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3803

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3804
  br label %kmalloc_index.exit.i, !dbg !3804

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3805
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !3807
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3808

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3809
  br label %kmalloc_index.exit.i, !dbg !3809

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #5, !dbg !3810, !srcloc !3813
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #5, !dbg !3814, !srcloc !3817
  unreachable, !dbg !3818

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !3819
  store i32 %59, i32* %index.i, align 4, !dbg !3820
  %60 = load i32, i32* %index.i, align 4, !dbg !3821
  %tobool.i = icmp ne i32 %60, 0, !dbg !3821
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3823

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3824
  br label %kmalloc.exit, !dbg !3824

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !3825
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3826
  %and.i.i = and i32 %62, 17, !dbg !3826
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3826
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3826
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3826
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3826
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3828

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3829
  br label %kmalloc_type.exit.i, !dbg !3829

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3830
  %and2.i.i = and i32 %63, 1, !dbg !3831
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3830
  %64 = zext i1 %tobool3.i.i to i64, !dbg !3830
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3830
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3832
  br label %kmalloc_type.exit.i, !dbg !3832

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !3833
  %idxprom.i = zext i32 %65 to i64, !dbg !3834
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3834
  %66 = load i32, i32* %index.i, align 4, !dbg !3835
  %idxprom6.i = zext i32 %66 to i64, !dbg !3834
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3834
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3834
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !3836
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !3837
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3838
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3839
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #9, !dbg !3840
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3840
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3840
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3840
  call void @llvm.assume(i1 %maskcond.i.i) #5, !dbg !3840
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3582
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3841
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !3842
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3843
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3844
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #9, !dbg !3845
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3846
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !3847
  store i8* %76, i8** %retval.i, align 8, !dbg !3848
  br label %kmalloc.exit, !dbg !3848

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !3849
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !3850
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #9, !dbg !3851
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3851
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3851
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3851
  call void @llvm.assume(i1 %maskcond.i) #5, !dbg !3851
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3852
  br label %kmalloc.exit, !dbg !3852

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !3853
  store i8* %79, i8** %retval, align 8, !dbg !3854
  br label %return, !dbg !3854

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !3855
  %81 = load i32, i32* %flags.addr, align 4, !dbg !3856
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #8, !dbg !3857
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !3857
  %maskedptr = and i64 %ptrint, 7, !dbg !3857
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !3857
  call void @llvm.assume(i1 %maskcond), !dbg !3857
  store i8* %call9, i8** %retval, align 8, !dbg !3858
  br label %return, !dbg !3858

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !3859
  ret i8* %82, !dbg !3859
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !3860 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !3864, metadata !DIExpression()), !dbg !3865
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !3866
  %tobool = trunc i8 %0 to i1, !dbg !3866
  %lnot = xor i1 %tobool, true, !dbg !3866
  %lnot1 = xor i1 %lnot, true, !dbg !3866
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3866
  %conv = sext i32 %lnot.ext to i64, !dbg !3866
  %tobool2 = icmp ne i64 %conv, 0, !dbg !3866
  ret i1 %tobool2, !dbg !3867
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !3868 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3872, metadata !DIExpression()), !dbg !3876
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3878, metadata !DIExpression()), !dbg !3879
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3880, metadata !DIExpression()), !dbg !3881
  %0 = load i64, i64* %size.addr, align 8, !dbg !3882
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3884
  br i1 %1, label %if.then, label %if.end447, !dbg !3885

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3886
  %tobool = icmp ne i64 %2, 0, !dbg !3886
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3889

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3890
  br label %return, !dbg !3890

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3891
  %cmp = icmp ult i64 %3, 4096, !dbg !3893
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3894

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3895
  br label %return, !dbg !3895

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub = sub i64 %4, 1, !dbg !3896
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3896
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3896

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub4 = sub i64 %6, 1, !dbg !3896
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3896
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3896

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub6 = sub i64 %8, 1, !dbg !3896
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3896
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3896

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3896

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub9 = sub i64 %9, 1, !dbg !3896
  %and = and i64 %sub9, -9223372036854775808, !dbg !3896
  %tobool10 = icmp ne i64 %and, 0, !dbg !3896
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3896

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3896

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub13 = sub i64 %10, 1, !dbg !3896
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3896
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3896
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3896

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3896

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub18 = sub i64 %11, 1, !dbg !3896
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3896
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3896
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3896

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3896

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub23 = sub i64 %12, 1, !dbg !3896
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3896
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3896
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3896

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3896

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub28 = sub i64 %13, 1, !dbg !3896
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3896
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3896
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3896

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3896

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub33 = sub i64 %14, 1, !dbg !3896
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3896
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3896
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3896

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3896

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub38 = sub i64 %15, 1, !dbg !3896
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3896
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3896
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3896

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3896

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub43 = sub i64 %16, 1, !dbg !3896
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3896
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3896
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3896

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3896

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub48 = sub i64 %17, 1, !dbg !3896
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3896
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3896
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3896

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3896

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub53 = sub i64 %18, 1, !dbg !3896
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3896
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3896
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3896

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3896

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub58 = sub i64 %19, 1, !dbg !3896
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3896
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3896
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3896

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3896

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub63 = sub i64 %20, 1, !dbg !3896
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3896
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3896
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3896

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3896

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub68 = sub i64 %21, 1, !dbg !3896
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3896
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3896
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3896

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3896

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub73 = sub i64 %22, 1, !dbg !3896
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3896
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3896
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3896

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3896

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub78 = sub i64 %23, 1, !dbg !3896
  %and79 = and i64 %sub78, 562949953421312, !dbg !3896
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3896
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3896

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3896

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub83 = sub i64 %24, 1, !dbg !3896
  %and84 = and i64 %sub83, 281474976710656, !dbg !3896
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3896
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3896

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3896

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub88 = sub i64 %25, 1, !dbg !3896
  %and89 = and i64 %sub88, 140737488355328, !dbg !3896
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3896
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3896

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3896

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub93 = sub i64 %26, 1, !dbg !3896
  %and94 = and i64 %sub93, 70368744177664, !dbg !3896
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3896
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3896

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3896

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub98 = sub i64 %27, 1, !dbg !3896
  %and99 = and i64 %sub98, 35184372088832, !dbg !3896
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3896
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3896

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3896

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub103 = sub i64 %28, 1, !dbg !3896
  %and104 = and i64 %sub103, 17592186044416, !dbg !3896
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3896
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3896

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3896

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub108 = sub i64 %29, 1, !dbg !3896
  %and109 = and i64 %sub108, 8796093022208, !dbg !3896
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3896
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3896

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3896

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub113 = sub i64 %30, 1, !dbg !3896
  %and114 = and i64 %sub113, 4398046511104, !dbg !3896
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3896
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3896

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3896

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub118 = sub i64 %31, 1, !dbg !3896
  %and119 = and i64 %sub118, 2199023255552, !dbg !3896
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3896
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3896

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3896

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub123 = sub i64 %32, 1, !dbg !3896
  %and124 = and i64 %sub123, 1099511627776, !dbg !3896
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3896
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3896

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3896

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub128 = sub i64 %33, 1, !dbg !3896
  %and129 = and i64 %sub128, 549755813888, !dbg !3896
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3896
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3896

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3896

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub133 = sub i64 %34, 1, !dbg !3896
  %and134 = and i64 %sub133, 274877906944, !dbg !3896
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3896
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3896

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3896

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub138 = sub i64 %35, 1, !dbg !3896
  %and139 = and i64 %sub138, 137438953472, !dbg !3896
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3896
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3896

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3896

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub143 = sub i64 %36, 1, !dbg !3896
  %and144 = and i64 %sub143, 68719476736, !dbg !3896
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3896
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3896

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3896

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub148 = sub i64 %37, 1, !dbg !3896
  %and149 = and i64 %sub148, 34359738368, !dbg !3896
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3896
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3896

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3896

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub153 = sub i64 %38, 1, !dbg !3896
  %and154 = and i64 %sub153, 17179869184, !dbg !3896
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3896
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3896

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3896

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub158 = sub i64 %39, 1, !dbg !3896
  %and159 = and i64 %sub158, 8589934592, !dbg !3896
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3896
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3896

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3896

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub163 = sub i64 %40, 1, !dbg !3896
  %and164 = and i64 %sub163, 4294967296, !dbg !3896
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3896
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3896

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3896

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub168 = sub i64 %41, 1, !dbg !3896
  %and169 = and i64 %sub168, 2147483648, !dbg !3896
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3896
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3896

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3896

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub173 = sub i64 %42, 1, !dbg !3896
  %and174 = and i64 %sub173, 1073741824, !dbg !3896
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3896
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3896

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3896

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub178 = sub i64 %43, 1, !dbg !3896
  %and179 = and i64 %sub178, 536870912, !dbg !3896
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3896
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3896

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3896

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub183 = sub i64 %44, 1, !dbg !3896
  %and184 = and i64 %sub183, 268435456, !dbg !3896
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3896
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3896

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3896

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub188 = sub i64 %45, 1, !dbg !3896
  %and189 = and i64 %sub188, 134217728, !dbg !3896
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3896
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3896

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3896

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub193 = sub i64 %46, 1, !dbg !3896
  %and194 = and i64 %sub193, 67108864, !dbg !3896
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3896
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3896

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3896

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub198 = sub i64 %47, 1, !dbg !3896
  %and199 = and i64 %sub198, 33554432, !dbg !3896
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3896
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3896

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3896

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub203 = sub i64 %48, 1, !dbg !3896
  %and204 = and i64 %sub203, 16777216, !dbg !3896
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3896
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3896

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3896

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub208 = sub i64 %49, 1, !dbg !3896
  %and209 = and i64 %sub208, 8388608, !dbg !3896
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3896
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3896

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3896

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub213 = sub i64 %50, 1, !dbg !3896
  %and214 = and i64 %sub213, 4194304, !dbg !3896
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3896
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3896

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3896

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub218 = sub i64 %51, 1, !dbg !3896
  %and219 = and i64 %sub218, 2097152, !dbg !3896
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3896
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3896

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3896

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub223 = sub i64 %52, 1, !dbg !3896
  %and224 = and i64 %sub223, 1048576, !dbg !3896
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3896
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3896

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3896

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub228 = sub i64 %53, 1, !dbg !3896
  %and229 = and i64 %sub228, 524288, !dbg !3896
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3896
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3896

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3896

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub233 = sub i64 %54, 1, !dbg !3896
  %and234 = and i64 %sub233, 262144, !dbg !3896
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3896
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3896

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3896

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub238 = sub i64 %55, 1, !dbg !3896
  %and239 = and i64 %sub238, 131072, !dbg !3896
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3896
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3896

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3896

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub243 = sub i64 %56, 1, !dbg !3896
  %and244 = and i64 %sub243, 65536, !dbg !3896
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3896
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3896

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3896

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub248 = sub i64 %57, 1, !dbg !3896
  %and249 = and i64 %sub248, 32768, !dbg !3896
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3896
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3896

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3896

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub253 = sub i64 %58, 1, !dbg !3896
  %and254 = and i64 %sub253, 16384, !dbg !3896
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3896
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3896

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3896

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub258 = sub i64 %59, 1, !dbg !3896
  %and259 = and i64 %sub258, 8192, !dbg !3896
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3896
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3896

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3896

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub263 = sub i64 %60, 1, !dbg !3896
  %and264 = and i64 %sub263, 4096, !dbg !3896
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3896
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3896

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3896

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub268 = sub i64 %61, 1, !dbg !3896
  %and269 = and i64 %sub268, 2048, !dbg !3896
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3896
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3896

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3896

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub273 = sub i64 %62, 1, !dbg !3896
  %and274 = and i64 %sub273, 1024, !dbg !3896
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3896
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3896

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3896

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub278 = sub i64 %63, 1, !dbg !3896
  %and279 = and i64 %sub278, 512, !dbg !3896
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3896
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3896

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3896

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub283 = sub i64 %64, 1, !dbg !3896
  %and284 = and i64 %sub283, 256, !dbg !3896
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3896
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3896

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3896

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub288 = sub i64 %65, 1, !dbg !3896
  %and289 = and i64 %sub288, 128, !dbg !3896
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3896
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3896

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3896

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub293 = sub i64 %66, 1, !dbg !3896
  %and294 = and i64 %sub293, 64, !dbg !3896
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3896
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3896

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3896

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub298 = sub i64 %67, 1, !dbg !3896
  %and299 = and i64 %sub298, 32, !dbg !3896
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3896
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3896

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3896

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub303 = sub i64 %68, 1, !dbg !3896
  %and304 = and i64 %sub303, 16, !dbg !3896
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3896
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3896

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3896

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub308 = sub i64 %69, 1, !dbg !3896
  %and309 = and i64 %sub308, 8, !dbg !3896
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3896
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3896

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3896

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub313 = sub i64 %70, 1, !dbg !3896
  %and314 = and i64 %sub313, 4, !dbg !3896
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3896
  %71 = zext i1 %tobool315 to i64, !dbg !3896
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3896
  br label %cond.end, !dbg !3896

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3896
  br label %cond.end317, !dbg !3896

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3896
  br label %cond.end319, !dbg !3896

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3896
  br label %cond.end321, !dbg !3896

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3896
  br label %cond.end323, !dbg !3896

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3896
  br label %cond.end325, !dbg !3896

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3896
  br label %cond.end327, !dbg !3896

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3896
  br label %cond.end329, !dbg !3896

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3896
  br label %cond.end331, !dbg !3896

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3896
  br label %cond.end333, !dbg !3896

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3896
  br label %cond.end335, !dbg !3896

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3896
  br label %cond.end337, !dbg !3896

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3896
  br label %cond.end339, !dbg !3896

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3896
  br label %cond.end341, !dbg !3896

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3896
  br label %cond.end343, !dbg !3896

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3896
  br label %cond.end345, !dbg !3896

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3896
  br label %cond.end347, !dbg !3896

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3896
  br label %cond.end349, !dbg !3896

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3896
  br label %cond.end351, !dbg !3896

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3896
  br label %cond.end353, !dbg !3896

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3896
  br label %cond.end355, !dbg !3896

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3896
  br label %cond.end357, !dbg !3896

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3896
  br label %cond.end359, !dbg !3896

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3896
  br label %cond.end361, !dbg !3896

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3896
  br label %cond.end363, !dbg !3896

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3896
  br label %cond.end365, !dbg !3896

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3896
  br label %cond.end367, !dbg !3896

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3896
  br label %cond.end369, !dbg !3896

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3896
  br label %cond.end371, !dbg !3896

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3896
  br label %cond.end373, !dbg !3896

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3896
  br label %cond.end375, !dbg !3896

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3896
  br label %cond.end377, !dbg !3896

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3896
  br label %cond.end379, !dbg !3896

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3896
  br label %cond.end381, !dbg !3896

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3896
  br label %cond.end383, !dbg !3896

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3896
  br label %cond.end385, !dbg !3896

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3896
  br label %cond.end387, !dbg !3896

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3896
  br label %cond.end389, !dbg !3896

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3896
  br label %cond.end391, !dbg !3896

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3896
  br label %cond.end393, !dbg !3896

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3896
  br label %cond.end395, !dbg !3896

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3896
  br label %cond.end397, !dbg !3896

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3896
  br label %cond.end399, !dbg !3896

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3896
  br label %cond.end401, !dbg !3896

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3896
  br label %cond.end403, !dbg !3896

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3896
  br label %cond.end405, !dbg !3896

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3896
  br label %cond.end407, !dbg !3896

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3896
  br label %cond.end409, !dbg !3896

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3896
  br label %cond.end411, !dbg !3896

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3896
  br label %cond.end413, !dbg !3896

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3896
  br label %cond.end415, !dbg !3896

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3896
  br label %cond.end417, !dbg !3896

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3896
  br label %cond.end419, !dbg !3896

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3896
  br label %cond.end421, !dbg !3896

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3896
  br label %cond.end423, !dbg !3896

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3896
  br label %cond.end425, !dbg !3896

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3896
  br label %cond.end427, !dbg !3896

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3896
  br label %cond.end429, !dbg !3896

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3896
  br label %cond.end431, !dbg !3896

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3896
  br label %cond.end433, !dbg !3896

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3896
  br label %cond.end435, !dbg !3896

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3896
  br label %cond.end437, !dbg !3896

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3896
  br label %cond.end440, !dbg !3896

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3896

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3896
  br label %cond.end444, !dbg !3896

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3896
  %sub443 = sub i64 %72, 1, !dbg !3896
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !3896
  br label %cond.end444, !dbg !3896

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3896
  %sub446 = sub i32 %cond445, 12, !dbg !3897
  %add = add i32 %sub446, 1, !dbg !3898
  store i32 %add, i32* %retval, align 4, !dbg !3899
  br label %return, !dbg !3899

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3900
  %dec = add i64 %73, -1, !dbg !3900
  store i64 %dec, i64* %size.addr, align 8, !dbg !3900
  %74 = load i64, i64* %size.addr, align 8, !dbg !3901
  %shr = lshr i64 %74, 12, !dbg !3901
  store i64 %shr, i64* %size.addr, align 8, !dbg !3901
  %75 = load i64, i64* %size.addr, align 8, !dbg !3902
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3879
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3903
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3904
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #4, !dbg !3903, !srcloc !3905
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3903
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3906
  %add.i = add i32 %79, 1, !dbg !3907
  store i32 %add.i, i32* %retval, align 4, !dbg !3908
  br label %return, !dbg !3908

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3909
  ret i32 %80, !dbg !3909
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !3910 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3872, metadata !DIExpression()), !dbg !3914
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3878, metadata !DIExpression()), !dbg !3916
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3917, metadata !DIExpression()), !dbg !3918
  %0 = load i64, i64* %n.addr, align 8, !dbg !3919
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3916
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3920
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3921
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #4, !dbg !3920, !srcloc !3905
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3920
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3922
  %add.i = add i32 %4, 1, !dbg !3923
  %sub = sub i32 %add.i, 1, !dbg !3924
  ret i32 %sub, !dbg !3925
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3926 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3929, metadata !DIExpression()), !dbg !3930
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3931, metadata !DIExpression()), !dbg !3932
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3933, metadata !DIExpression()), !dbg !3934
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3935, metadata !DIExpression()), !dbg !3936
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3937
  ret i8* %0, !dbg !3938
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !3939 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !3942, metadata !DIExpression()), !dbg !3946
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !3950, metadata !DIExpression()), !dbg !3951
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !1895, metadata !DIExpression()), !dbg !3952
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1899, metadata !DIExpression()), !dbg !3954
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !3955, metadata !DIExpression()), !dbg !3956
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !3957, metadata !DIExpression()), !dbg !3958
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !3959, metadata !DIExpression()), !dbg !3960
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !3961, metadata !DIExpression()), !dbg !3962
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !3963
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !3964
  %1 = load i32, i32* %n.addr, align 4, !dbg !3965
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !3966
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !3966
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !3967
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !3968
  %conv.i.i = trunc i64 %5 to i32, !dbg !3968
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #9, !dbg !3969
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !3970
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3970
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #9, !dbg !3970
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !3971
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !3972
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !3973
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !3973
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !3973
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !3973
  ret void, !dbg !3975
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!1576}
!llvm.module.flags = !{!1577, !1578, !1579, !1580}
!llvm.ident = !{!1581}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dma_fence_stub_lock", scope: !2, file: !3, line: 26, type: !66, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !44, globals: !1569, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/dma-buf/dma-fence.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !32, !37}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_fence_flag_bits", file: !6, line: 98, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "DMA_FENCE_FLAG_SIGNALED_BIT", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "DMA_FENCE_FLAG_TIMESTAMP_BIT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "DMA_FENCE_FLAG_USER_BITS", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !14, line: 65, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !19, line: 16, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !25, line: 119, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!31 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 10, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!36 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !38, line: 305, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!44 = !{!45, !46, !61, !160, !145, !161, !162, !164, !166, !168, !170, !171, !172, !1562, !1567}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !6, line: 116, size: 192, elements: !48)
!48 = !{!49, !56}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !47, file: !6, line: 117, baseType: !50, size: 128)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !51, line: 178, size: 128, elements: !52)
!51 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !55}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !50, file: !51, line: 179, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !50, file: !51, line: 179, baseType: !54, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !47, file: !6, line: 118, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !6, line: 105, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61, !46}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !6, line: 65, size: 512, elements: !63)
!63 = !{!64, !81, !118, !139, !143, !144, !146, !159}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !62, file: !6, line: 66, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !67, line: 83, baseType: !68)
!67 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !67, line: 71, elements: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !67, line: 72, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !68, file: !67, line: 72, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !71, file: !67, line: 73, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !67, line: 20, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !74, file: !67, line: 21, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !78, line: 25, baseType: !79)
!78 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 25, elements: !80)
!80 = !{}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !62, file: !6, line: 67, baseType: !82, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !6, line: 125, size: 576, elements: !85)
!85 = !{!86, !89, !96, !97, !101, !102, !107, !111, !117}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !84, file: !6, line: 132, baseType: !87, size: 8)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !51, line: 30, baseType: !88)
!88 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !84, file: !6, line: 143, baseType: !90, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!93, !61}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !84, file: !6, line: 155, baseType: !90, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !84, file: !6, line: 192, baseType: !98, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!87, !61}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !84, file: !6, line: 209, baseType: !98, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !84, file: !6, line: 231, baseType: !103, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !61, !87, !106}
!106 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !84, file: !6, line: 242, baseType: !108, size: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !61}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !84, file: !6, line: 252, baseType: !112, size: 64, offset: 448)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !61, !115, !116}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!116 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !84, file: !6, line: 262, baseType: !112, size: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !62, file: !6, line: 84, baseType: !119, size: 128, offset: 128)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !6, line: 84, size: 128, elements: !120)
!120 = !{!121, !122, !130}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !119, file: !6, line: 85, baseType: !50, size: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !119, file: !6, line: 87, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !124, line: 29, baseType: !125)
!124 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !126, line: 22, baseType: !127)
!126 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !128, line: 30, baseType: !129)
!128 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!129 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !119, file: !6, line: 89, baseType: !131, size: 128, align: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !51, line: 216, size: 128, align: 64, elements: !132)
!132 = !{!133, !135}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !131, file: !51, line: 217, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !131, file: !51, line: 218, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !134}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !62, file: !6, line: 91, baseType: !140, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !126, line: 23, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !128, line: 31, baseType: !142)
!142 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !62, file: !6, line: 92, baseType: !140, size: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !6, line: 93, baseType: !145, size: 64, offset: 384)
!145 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !62, file: !6, line: 94, baseType: !147, size: 32, offset: 448)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !148, line: 19, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !147, file: !148, line: 20, baseType: !151, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !25, line: 113, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !25, line: 111, size: 32, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !152, file: !25, line: 112, baseType: !155, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !51, line: 168, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 166, size: 32, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !156, file: !51, line: 167, baseType: !116, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !62, file: !6, line: 95, baseType: !116, size: 32, offset: 480)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !51, line: 222, baseType: !136)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !51, line: 148, baseType: !7)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !95)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !174, line: 640, size: 48640, elements: !175)
!174 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!175 = !{!176, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !198, !223, !235, !333, !334, !335, !346, !347, !349, !350, !562, !563, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !642, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !690, !692, !693, !694, !696, !698, !699, !700, !701, !702, !708, !709, !710, !711, !712, !713, !714, !728, !733, !931, !932, !933, !934, !938, !941, !944, !947, !950, !953, !1059, !1090, !1091, !1092, !1093, !1094, !1095, !1098, !1099, !1100, !1109, !1110, !1111, !1112, !1113, !1118, !1119, !1120, !1123, !1124, !1127, !1130, !1133, !1136, !1139, !1142, !1143, !1223, !1224, !1227, !1228, !1231, !1232, !1233, !1237, !1238, !1239, !1252, !1253, !1254, !1264, !1269, !1272, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !173, file: !174, line: 646, baseType: !177, size: 128)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !178, line: 56, size: 128, elements: !179)
!178 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !177, file: !178, line: 57, baseType: !145, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !177, file: !178, line: 58, baseType: !182, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !126, line: 21, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !128, line: 27, baseType: !7)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !173, file: !174, line: 649, baseType: !163, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !173, file: !174, line: 657, baseType: !45, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !173, file: !174, line: 658, baseType: !151, size: 32, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !173, file: !174, line: 660, baseType: !7, size: 32, offset: 288)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !173, file: !174, line: 661, baseType: !7, size: 32, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !173, file: !174, line: 684, baseType: !116, size: 32, offset: 352)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !173, file: !174, line: 686, baseType: !116, size: 32, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !173, file: !174, line: 687, baseType: !116, size: 32, offset: 416)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !173, file: !174, line: 688, baseType: !116, size: 32, offset: 448)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !173, file: !174, line: 689, baseType: !7, size: 32, offset: 480)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !173, file: !174, line: 691, baseType: !195, size: 64, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !174, line: 691, flags: DIFlagFwdDecl)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !173, file: !174, line: 692, baseType: !199, size: 832, offset: 576)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !174, line: 451, size: 832, elements: !200)
!200 = !{!201, !206, !214, !215, !216, !217, !218, !219, !220, !221}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !199, file: !174, line: 453, baseType: !202, size: 128)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !174, line: 325, size: 128, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !202, file: !174, line: 326, baseType: !145, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !202, file: !174, line: 327, baseType: !182, size: 32, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !199, file: !174, line: 454, baseType: !207, size: 192, align: 64, offset: 128)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !208, line: 24, size: 192, align: 64, elements: !209)
!208 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!209 = !{!210, !211, !213}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !207, file: !208, line: 25, baseType: !145, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !207, file: !208, line: 26, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !207, file: !208, line: 27, baseType: !212, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !199, file: !174, line: 455, baseType: !50, size: 128, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !199, file: !174, line: 456, baseType: !7, size: 32, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !199, file: !174, line: 458, baseType: !140, size: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !199, file: !174, line: 459, baseType: !140, size: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !199, file: !174, line: 460, baseType: !140, size: 64, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !199, file: !174, line: 461, baseType: !140, size: 64, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !199, file: !174, line: 463, baseType: !140, size: 64, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !199, file: !174, line: 465, baseType: !222, offset: 832)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !174, line: 415, elements: !80)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !173, file: !174, line: 693, baseType: !224, size: 384, offset: 1408)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !174, line: 489, size: 384, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !232, !233}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !224, file: !174, line: 490, baseType: !50, size: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !224, file: !174, line: 491, baseType: !145, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !224, file: !174, line: 492, baseType: !145, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !224, file: !174, line: 493, baseType: !7, size: 32, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !224, file: !174, line: 494, baseType: !231, size: 16, offset: 288)
!231 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !224, file: !174, line: 495, baseType: !231, size: 16, offset: 304)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !224, file: !174, line: 497, baseType: !234, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !173, file: !174, line: 697, baseType: !236, size: 1792, offset: 1792)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !174, line: 507, size: 1792, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !330, !331}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !236, file: !174, line: 508, baseType: !207, size: 192, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !236, file: !174, line: 515, baseType: !140, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !236, file: !174, line: 516, baseType: !140, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !236, file: !174, line: 517, baseType: !140, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !236, file: !174, line: 518, baseType: !140, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !236, file: !174, line: 519, baseType: !140, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !236, file: !174, line: 526, baseType: !125, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !236, file: !174, line: 527, baseType: !140, size: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !174, line: 528, baseType: !7, size: 32, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !236, file: !174, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !236, file: !174, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !236, file: !174, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !236, file: !174, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !236, file: !174, line: 563, baseType: !252, size: 512, offset: 704)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !253)
!253 = !{!254, !260, !261, !266, !323, !327, !328, !329}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !252, file: !14, line: 119, baseType: !255, size: 256)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !256, line: 9, size: 256, elements: !257)
!256 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !255, file: !256, line: 10, baseType: !207, size: 192, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !255, file: !256, line: 11, baseType: !123, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !252, file: !14, line: 120, baseType: !123, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !252, file: !14, line: 121, baseType: !262, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!13, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !252, file: !14, line: 122, baseType: !267, size: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !269)
!269 = !{!270, !291, !292, !296, !306, !307, !318, !322}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !268, file: !14, line: 160, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !273)
!273 = !{!274, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !272, file: !14, line: 215, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !67, line: 29, baseType: !74)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !272, file: !14, line: 216, baseType: !7, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !272, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !272, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !272, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !272, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !272, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !272, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !272, file: !14, line: 233, baseType: !123, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !272, file: !14, line: 234, baseType: !265, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !272, file: !14, line: 235, baseType: !123, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !272, file: !14, line: 236, baseType: !265, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !272, file: !14, line: 237, baseType: !288, size: 4096, offset: 512)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 4096, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 8)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !268, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !268, file: !14, line: 162, baseType: !293, size: 32, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !51, line: 27, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !295, line: 96, baseType: !116)
!295 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!296 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !268, file: !14, line: 163, baseType: !297, size: 32, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !298, line: 276, baseType: !299)
!298 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !298, line: 276, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !299, file: !298, line: 276, baseType: !302, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !298, line: 70, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !298, line: 65, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !303, file: !298, line: 66, baseType: !7, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !268, file: !14, line: 164, baseType: !265, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !268, file: !14, line: 165, baseType: !308, size: 128, offset: 256)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !256, line: 14, size: 128, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !308, file: !256, line: 15, baseType: !311, size: 128)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !208, line: 125, size: 128, elements: !312)
!312 = !{!313, !317}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !311, file: !208, line: 126, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !208, line: 31, size: 64, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !314, file: !208, line: 32, baseType: !212, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !311, file: !208, line: 127, baseType: !212, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !268, file: !14, line: 166, baseType: !319, size: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!123}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !268, file: !14, line: 167, baseType: !123, size: 64, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !252, file: !14, line: 123, baseType: !324, size: 8, offset: 448)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !126, line: 17, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !128, line: 21, baseType: !326)
!326 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !252, file: !14, line: 124, baseType: !324, size: 8, offset: 456)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !252, file: !14, line: 125, baseType: !324, size: 8, offset: 464)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !252, file: !14, line: 126, baseType: !324, size: 8, offset: 472)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !236, file: !174, line: 572, baseType: !252, size: 512, offset: 1216)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !236, file: !174, line: 580, baseType: !332, size: 64, offset: 1728)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !173, file: !174, line: 721, baseType: !7, size: 32, offset: 3584)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !173, file: !174, line: 722, baseType: !116, size: 32, offset: 3616)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !173, file: !174, line: 723, baseType: !336, size: 64, offset: 3648)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !339, line: 17, baseType: !340)
!339 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !339, line: 17, size: 64, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !340, file: !339, line: 17, baseType: !343, size: 64)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 1)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !173, file: !174, line: 724, baseType: !338, size: 64, offset: 3712)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !173, file: !174, line: 749, baseType: !348, offset: 3776)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !174, line: 290, elements: !80)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !173, file: !174, line: 751, baseType: !50, size: 128, offset: 3776)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !173, file: !174, line: 757, baseType: !351, size: 64, offset: 3904)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !353, line: 388, size: 7296, elements: !354)
!353 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!354 = !{!355, !558}
!355 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !353, line: 389, baseType: !356, size: 7296)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !353, line: 389, size: 7296, elements: !357)
!357 = !{!358, !405, !406, !407, !411, !412, !413, !414, !415, !422, !423, !424, !425, !426, !427, !428, !429, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !463, !471, !474, !506, !507, !529, !530, !533, !536, !537, !540, !541, !542, !545, !557}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !356, file: !353, line: 390, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !353, line: 305, size: 1472, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !377, !378, !383, !384, !387, !391, !392, !395, !396, !403}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !360, file: !353, line: 308, baseType: !145, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !360, file: !353, line: 309, baseType: !145, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !360, file: !353, line: 313, baseType: !359, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !360, file: !353, line: 313, baseType: !359, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !360, file: !353, line: 315, baseType: !207, size: 192, align: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !360, file: !353, line: 323, baseType: !145, size: 64, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !360, file: !353, line: 327, baseType: !351, size: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !360, file: !353, line: 333, baseType: !370, size: 64, offset: 576)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !371, line: 284, baseType: !372)
!371 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !371, line: 284, size: 64, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !372, file: !371, line: 284, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !376, line: 19, baseType: !145)
!376 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !360, file: !353, line: 334, baseType: !145, size: 64, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !360, file: !353, line: 343, baseType: !379, size: 256, offset: 704)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !353, line: 340, size: 256, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !379, file: !353, line: 341, baseType: !207, size: 192, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !379, file: !353, line: 342, baseType: !145, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !360, file: !353, line: 351, baseType: !50, size: 128, offset: 960)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !360, file: !353, line: 353, baseType: !385, size: 64, offset: 1088)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !353, line: 353, flags: DIFlagFwdDecl)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !360, file: !353, line: 356, baseType: !388, size: 64, offset: 1152)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !353, line: 356, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !360, file: !353, line: 359, baseType: !145, size: 64, offset: 1216)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !360, file: !353, line: 361, baseType: !393, size: 64, offset: 1280)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !371, line: 526, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !360, file: !353, line: 362, baseType: !45, size: 64, offset: 1344)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !360, file: !353, line: 365, baseType: !397, size: 64, offset: 1408)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !398, line: 13, baseType: !399)
!398 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !51, line: 175, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 173, size: 64, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !400, file: !51, line: 174, baseType: !125, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !360, file: !353, line: 373, baseType: !404, offset: 1472)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !353, line: 296, elements: !80)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !356, file: !353, line: 391, baseType: !314, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !356, file: !353, line: 392, baseType: !140, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !356, file: !353, line: 394, baseType: !408, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!145, !393, !145, !145, !145, !145}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !356, file: !353, line: 398, baseType: !145, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !356, file: !353, line: 399, baseType: !145, size: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !356, file: !353, line: 405, baseType: !145, size: 64, offset: 384)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !356, file: !353, line: 406, baseType: !145, size: 64, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !356, file: !353, line: 407, baseType: !416, size: 64, offset: 512)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !371, line: 286, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 286, size: 64, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !418, file: !371, line: 286, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !376, line: 18, baseType: !145)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !356, file: !353, line: 416, baseType: !155, size: 32, offset: 576)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !356, file: !353, line: 428, baseType: !155, size: 32, offset: 608)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !356, file: !353, line: 437, baseType: !155, size: 32, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !356, file: !353, line: 447, baseType: !155, size: 32, offset: 672)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !356, file: !353, line: 450, baseType: !397, size: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !356, file: !353, line: 452, baseType: !116, size: 32, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !356, file: !353, line: 454, baseType: !66, offset: 800)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !356, file: !353, line: 457, baseType: !430, size: 256, offset: 832)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !431, line: 35, size: 256, elements: !432)
!431 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!432 = !{!433, !434, !435, !436}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !430, file: !431, line: 36, baseType: !397, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !430, file: !431, line: 42, baseType: !397, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !430, file: !431, line: 46, baseType: !275, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !430, file: !431, line: 47, baseType: !50, size: 128, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !356, file: !353, line: 459, baseType: !50, size: 128, offset: 1088)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !356, file: !353, line: 466, baseType: !145, size: 64, offset: 1216)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !356, file: !353, line: 467, baseType: !145, size: 64, offset: 1280)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !356, file: !353, line: 469, baseType: !145, size: 64, offset: 1344)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !356, file: !353, line: 470, baseType: !145, size: 64, offset: 1408)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !356, file: !353, line: 471, baseType: !399, size: 64, offset: 1472)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !356, file: !353, line: 472, baseType: !145, size: 64, offset: 1536)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !356, file: !353, line: 473, baseType: !145, size: 64, offset: 1600)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !356, file: !353, line: 474, baseType: !145, size: 64, offset: 1664)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !356, file: !353, line: 475, baseType: !145, size: 64, offset: 1728)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !356, file: !353, line: 477, baseType: !66, offset: 1792)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !356, file: !353, line: 478, baseType: !145, size: 64, offset: 1792)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !356, file: !353, line: 478, baseType: !145, size: 64, offset: 1856)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !356, file: !353, line: 478, baseType: !145, size: 64, offset: 1920)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !356, file: !353, line: 478, baseType: !145, size: 64, offset: 1984)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !356, file: !353, line: 479, baseType: !145, size: 64, offset: 2048)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !356, file: !353, line: 479, baseType: !145, size: 64, offset: 2112)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !356, file: !353, line: 479, baseType: !145, size: 64, offset: 2176)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !356, file: !353, line: 480, baseType: !145, size: 64, offset: 2240)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !356, file: !353, line: 480, baseType: !145, size: 64, offset: 2304)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !356, file: !353, line: 480, baseType: !145, size: 64, offset: 2368)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !356, file: !353, line: 480, baseType: !145, size: 64, offset: 2432)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !356, file: !353, line: 482, baseType: !460, size: 2816, offset: 2496)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 2816, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 44)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !356, file: !353, line: 488, baseType: !464, size: 256, offset: 5312)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !465, line: 60, size: 256, elements: !466)
!465 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !464, file: !465, line: 61, baseType: !468, size: 256)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 256, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 4)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !356, file: !353, line: 490, baseType: !472, size: 64, offset: 5568)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !353, line: 490, flags: DIFlagFwdDecl)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !356, file: !353, line: 493, baseType: !475, size: 896, offset: 5632)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !476, line: 53, baseType: !477)
!476 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 13, size: 896, elements: !478)
!478 = !{!479, !480, !481, !482, !485, !486, !493, !494, !498, !499, !502}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !477, file: !476, line: 18, baseType: !140, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !477, file: !476, line: 28, baseType: !399, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !477, file: !476, line: 31, baseType: !430, size: 256, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !477, file: !476, line: 32, baseType: !483, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !476, line: 32, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !477, file: !476, line: 37, baseType: !231, size: 16, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !477, file: !476, line: 40, baseType: !487, size: 192, offset: 512)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !488, line: 53, size: 192, elements: !489)
!488 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!489 = !{!490, !491, !492}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !487, file: !488, line: 54, baseType: !397, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !487, file: !488, line: 55, baseType: !66, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !487, file: !488, line: 59, baseType: !50, size: 128, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !477, file: !476, line: 41, baseType: !45, size: 64, offset: 704)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !477, file: !476, line: 42, baseType: !495, size: 64, offset: 768)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !476, line: 42, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !477, file: !476, line: 44, baseType: !155, size: 32, offset: 832)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !477, file: !476, line: 50, baseType: !500, size: 16, offset: 864)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !126, line: 19, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !128, line: 24, baseType: !231)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !477, file: !476, line: 51, baseType: !503, size: 16, offset: 880)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !126, line: 18, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !128, line: 23, baseType: !505)
!505 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !353, line: 495, baseType: !145, size: 64, offset: 6528)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !356, file: !353, line: 497, baseType: !508, size: 64, offset: 6592)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !353, line: 381, size: 384, elements: !510)
!510 = !{!511, !512, !518}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !509, file: !353, line: 382, baseType: !155, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !509, file: !353, line: 383, baseType: !513, size: 128, offset: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !353, line: 376, size: 128, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !513, file: !353, line: 377, baseType: !172, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !353, line: 378, baseType: !517, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !509, file: !353, line: 384, baseType: !519, size: 192, offset: 192)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !520, line: 26, size: 192, elements: !521)
!520 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !519, file: !520, line: 27, baseType: !7, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !519, file: !520, line: 28, baseType: !524, size: 128, offset: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !525, line: 43, size: 128, elements: !526)
!525 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !524, file: !525, line: 44, baseType: !275)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !524, file: !525, line: 45, baseType: !50, size: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !356, file: !353, line: 500, baseType: !66, offset: 6656)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !356, file: !353, line: 501, baseType: !531, size: 64, offset: 6656)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !353, line: 387, flags: DIFlagFwdDecl)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !356, file: !353, line: 516, baseType: !534, size: 64, offset: 6720)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !353, line: 516, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !356, file: !353, line: 519, baseType: !393, size: 64, offset: 6784)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !356, file: !353, line: 521, baseType: !538, size: 64, offset: 6848)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !353, line: 521, flags: DIFlagFwdDecl)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !356, file: !353, line: 545, baseType: !155, size: 32, offset: 6912)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !356, file: !353, line: 548, baseType: !87, size: 8, offset: 6944)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !356, file: !353, line: 550, baseType: !543, offset: 6952)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !544, line: 142, elements: !80)
!544 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!545 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !356, file: !353, line: 554, baseType: !546, size: 256, offset: 6976)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !547, line: 102, size: 256, elements: !548)
!547 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!548 = !{!549, !550, !551}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !546, file: !547, line: 103, baseType: !397, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !546, file: !547, line: 104, baseType: !50, size: 128, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !546, file: !547, line: 105, baseType: !552, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !547, line: 21, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !356, file: !353, line: 557, baseType: !182, size: 32, offset: 7232)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !352, file: !353, line: 565, baseType: !559, offset: 7296)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: -1)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !173, file: !174, line: 758, baseType: !351, size: 64, offset: 3968)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !173, file: !174, line: 761, baseType: !564, size: 320, offset: 4032)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !465, line: 34, size: 320, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !564, file: !465, line: 35, baseType: !140, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !564, file: !465, line: 36, baseType: !568, size: 256, offset: 64)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 256, elements: !469)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !173, file: !174, line: 766, baseType: !116, size: 32, offset: 4352)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !173, file: !174, line: 767, baseType: !116, size: 32, offset: 4384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !173, file: !174, line: 768, baseType: !116, size: 32, offset: 4416)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !173, file: !174, line: 770, baseType: !116, size: 32, offset: 4448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !173, file: !174, line: 772, baseType: !145, size: 64, offset: 4480)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !173, file: !174, line: 775, baseType: !7, size: 32, offset: 4544)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !173, file: !174, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !173, file: !174, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !173, file: !174, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !173, file: !174, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !173, file: !174, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !173, file: !174, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !173, file: !174, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !173, file: !174, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !173, file: !174, line: 831, baseType: !145, size: 64, offset: 4672)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !173, file: !174, line: 833, baseType: !585, size: 384, offset: 4736)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !586)
!586 = !{!587, !592}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !585, file: !19, line: 26, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!106, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, scope: !585, file: !19, line: 27, baseType: !593, size: 320, offset: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !585, file: !19, line: 27, size: 320, elements: !594)
!594 = !{!595, !605, !632}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !593, file: !19, line: 36, baseType: !596, size: 320)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !19, line: 29, size: 320, elements: !597)
!597 = !{!598, !600, !601, !602, !603, !604}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !596, file: !19, line: 30, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !596, file: !19, line: 31, baseType: !182, size: 32, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !19, line: 32, baseType: !182, size: 32, offset: 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !596, file: !19, line: 33, baseType: !182, size: 32, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !596, file: !19, line: 34, baseType: !140, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !596, file: !19, line: 35, baseType: !599, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !593, file: !19, line: 46, baseType: !606, size: 192)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !19, line: 38, size: 192, elements: !607)
!607 = !{!608, !609, !610, !631}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !606, file: !19, line: 39, baseType: !293, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !606, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !19, line: 41, baseType: !611, size: 64, offset: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !19, line: 41, size: 64, elements: !612)
!612 = !{!613, !621}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !611, file: !19, line: 42, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !616, line: 7, size: 128, elements: !617)
!616 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!617 = !{!618, !620}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !615, file: !616, line: 8, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !295, line: 93, baseType: !129)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !615, file: !616, line: 9, baseType: !129, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !611, file: !19, line: 43, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !624, line: 7, size: 64, elements: !625)
!624 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!625 = !{!626, !630}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !623, file: !624, line: 8, baseType: !627, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !624, line: 5, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !126, line: 20, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !128, line: 26, baseType: !116)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !623, file: !624, line: 9, baseType: !628, size: 32, offset: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !606, file: !19, line: 45, baseType: !140, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !593, file: !19, line: 54, baseType: !633, size: 256)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !19, line: 48, size: 256, elements: !634)
!634 = !{!635, !638, !639, !640, !641}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !633, file: !19, line: 49, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !633, file: !19, line: 50, baseType: !116, size: 32, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !633, file: !19, line: 51, baseType: !116, size: 32, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !633, file: !19, line: 52, baseType: !145, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !633, file: !19, line: 53, baseType: !145, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !173, file: !174, line: 835, baseType: !643, size: 32, offset: 5120)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !51, line: 22, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !295, line: 28, baseType: !116)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !173, file: !174, line: 836, baseType: !643, size: 32, offset: 5152)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !173, file: !174, line: 840, baseType: !145, size: 64, offset: 5184)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !173, file: !174, line: 849, baseType: !172, size: 64, offset: 5248)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !173, file: !174, line: 852, baseType: !172, size: 64, offset: 5312)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !173, file: !174, line: 857, baseType: !50, size: 128, offset: 5376)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !173, file: !174, line: 858, baseType: !50, size: 128, offset: 5504)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !173, file: !174, line: 859, baseType: !172, size: 64, offset: 5632)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !173, file: !174, line: 867, baseType: !50, size: 128, offset: 5696)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !173, file: !174, line: 868, baseType: !50, size: 128, offset: 5824)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !173, file: !174, line: 871, baseType: !655, size: 64, offset: 5952)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !657, line: 59, size: 768, elements: !658)
!657 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!658 = !{!659, !660, !661, !662, !673, !674, !681, !682}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !656, file: !657, line: 61, baseType: !151, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !656, file: !657, line: 62, baseType: !7, size: 32, offset: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !656, file: !657, line: 63, baseType: !66, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !656, file: !657, line: 65, baseType: !663, size: 256, offset: 64)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 256, elements: !469)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !51, line: 182, size: 64, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !664, file: !51, line: 183, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !51, line: 186, size: 128, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !668, file: !51, line: 187, baseType: !667, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !668, file: !51, line: 187, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !656, file: !657, line: 66, baseType: !664, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !656, file: !657, line: 68, baseType: !675, size: 128, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !676, line: 40, baseType: !677)
!676 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !676, line: 36, size: 128, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !677, file: !676, line: 37, baseType: !66)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !677, file: !676, line: 38, baseType: !50, size: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !656, file: !657, line: 69, baseType: !131, size: 128, align: 64, offset: 512)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !656, file: !657, line: 70, baseType: !683, size: 128, offset: 640)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 128, elements: !344)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !657, line: 54, size: 128, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !684, file: !657, line: 55, baseType: !116, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !684, file: !657, line: 56, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !657, line: 56, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !173, file: !174, line: 872, baseType: !691, size: 512, offset: 6016)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 512, elements: !469)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !173, file: !174, line: 873, baseType: !50, size: 128, offset: 6528)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !173, file: !174, line: 874, baseType: !50, size: 128, offset: 6656)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !173, file: !174, line: 876, baseType: !695, size: 64, offset: 6784)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !173, file: !174, line: 879, baseType: !697, size: 64, offset: 6848)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !173, file: !174, line: 882, baseType: !697, size: 64, offset: 6912)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !173, file: !174, line: 884, baseType: !140, size: 64, offset: 6976)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !173, file: !174, line: 885, baseType: !140, size: 64, offset: 7040)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !173, file: !174, line: 890, baseType: !140, size: 64, offset: 7104)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !173, file: !174, line: 891, baseType: !703, size: 128, offset: 7168)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !174, line: 242, size: 128, elements: !704)
!704 = !{!705, !706, !707}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !703, file: !174, line: 244, baseType: !140, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !703, file: !174, line: 245, baseType: !140, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !703, file: !174, line: 246, baseType: !275, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !173, file: !174, line: 900, baseType: !145, size: 64, offset: 7296)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !173, file: !174, line: 901, baseType: !145, size: 64, offset: 7360)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !173, file: !174, line: 904, baseType: !140, size: 64, offset: 7424)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !173, file: !174, line: 907, baseType: !140, size: 64, offset: 7488)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !173, file: !174, line: 910, baseType: !145, size: 64, offset: 7552)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !173, file: !174, line: 911, baseType: !145, size: 64, offset: 7616)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !173, file: !174, line: 914, baseType: !715, size: 640, offset: 7680)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !716, line: 123, size: 640, elements: !717)
!716 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!717 = !{!718, !726, !727}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !715, file: !716, line: 124, baseType: !719, size: 576)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 576, elements: !724)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !716, line: 108, size: 192, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !720, file: !716, line: 109, baseType: !140, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !720, file: !716, line: 110, baseType: !308, size: 128, offset: 64)
!724 = !{!725}
!725 = !DISubrange(count: 3)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !715, file: !716, line: 125, baseType: !7, size: 32, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !715, file: !716, line: 126, baseType: !7, size: 32, offset: 608)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !173, file: !174, line: 917, baseType: !729, size: 192, offset: 8320)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !716, line: 134, size: 192, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !729, file: !716, line: 135, baseType: !131, size: 128, align: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !729, file: !716, line: 136, baseType: !7, size: 32, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !173, file: !174, line: 923, baseType: !734, size: 64, offset: 8512)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !737, line: 111, size: 1280, elements: !738)
!737 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !740, !748, !755, !756, !757, !758, !759, !760, !761, !762, !771, !772, !773, !774, !775, !776, !886, !887, !888, !889, !915, !916, !926}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !736, file: !737, line: 112, baseType: !155, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !736, file: !737, line: 120, baseType: !741, size: 32, offset: 32)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !742, line: 23, baseType: !743)
!742 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !742, line: 21, size: 32, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !743, file: !742, line: 22, baseType: !746, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !51, line: 32, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !295, line: 49, baseType: !7)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !736, file: !737, line: 121, baseType: !749, size: 32, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !742, line: 28, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !742, line: 26, size: 32, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !750, file: !742, line: 27, baseType: !753, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !51, line: 33, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !295, line: 50, baseType: !7)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !736, file: !737, line: 122, baseType: !741, size: 32, offset: 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !736, file: !737, line: 123, baseType: !749, size: 32, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !736, file: !737, line: 124, baseType: !741, size: 32, offset: 160)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !736, file: !737, line: 125, baseType: !749, size: 32, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !736, file: !737, line: 126, baseType: !741, size: 32, offset: 224)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !736, file: !737, line: 127, baseType: !749, size: 32, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !736, file: !737, line: 128, baseType: !7, size: 32, offset: 288)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !736, file: !737, line: 129, baseType: !763, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !764, line: 26, baseType: !765)
!764 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !764, line: 24, size: 64, elements: !766)
!766 = !{!767}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !765, file: !764, line: 25, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 64, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 2)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !736, file: !737, line: 130, baseType: !763, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !736, file: !737, line: 131, baseType: !763, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !736, file: !737, line: 132, baseType: !763, size: 64, offset: 512)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !736, file: !737, line: 133, baseType: !763, size: 64, offset: 576)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !736, file: !737, line: 135, baseType: !326, size: 8, offset: 640)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !736, file: !737, line: 137, baseType: !777, size: 64, offset: 704)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !779, line: 189, size: 1664, elements: !780)
!779 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!780 = !{!781, !782, !785, !790, !791, !794, !795, !802, !803, !804, !805, !808, !809, !810, !811, !812, !850, !871}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !778, file: !779, line: 190, baseType: !151, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !778, file: !779, line: 191, baseType: !783, size: 32, offset: 32)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !779, line: 28, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !51, line: 98, baseType: !628)
!785 = !DIDerivedType(tag: DW_TAG_member, scope: !778, file: !779, line: 192, baseType: !786, size: 192, offset: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !778, file: !779, line: 192, size: 192, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !786, file: !779, line: 193, baseType: !50, size: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !786, file: !779, line: 194, baseType: !207, size: 192, align: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !778, file: !779, line: 199, baseType: !430, size: 256, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !778, file: !779, line: 200, baseType: !792, size: 64, offset: 512)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !779, line: 200, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !778, file: !779, line: 201, baseType: !45, size: 64, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, scope: !778, file: !779, line: 202, baseType: !796, size: 64, offset: 640)
!796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !778, file: !779, line: 202, size: 64, elements: !797)
!797 = !{!798, !801}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !796, file: !779, line: 203, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !800, line: 8, baseType: !127)
!800 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!801 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !796, file: !779, line: 204, baseType: !799, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !778, file: !779, line: 206, baseType: !799, size: 64, offset: 704)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !778, file: !779, line: 207, baseType: !741, size: 32, offset: 768)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !778, file: !779, line: 208, baseType: !749, size: 32, offset: 800)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !778, file: !779, line: 209, baseType: !806, size: 32, offset: 832)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !779, line: 31, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !51, line: 104, baseType: !182)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !778, file: !779, line: 210, baseType: !231, size: 16, offset: 864)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !778, file: !779, line: 211, baseType: !231, size: 16, offset: 880)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !778, file: !779, line: 215, baseType: !505, size: 16, offset: 896)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !778, file: !779, line: 222, baseType: !145, size: 64, offset: 960)
!812 = !DIDerivedType(tag: DW_TAG_member, scope: !778, file: !779, line: 239, baseType: !813, size: 320, offset: 1024)
!813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !778, file: !779, line: 239, size: 320, elements: !814)
!814 = !{!815, !842}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !813, file: !779, line: 240, baseType: !816, size: 320)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !779, line: 108, size: 320, elements: !817)
!817 = !{!818, !819, !831, !834, !841}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !816, file: !779, line: 110, baseType: !145, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !779, line: 111, baseType: !820, size: 64, offset: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !779, line: 111, size: 64, elements: !821)
!821 = !{!822, !830}
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !779, line: 112, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !820, file: !779, line: 112, size: 64, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !823, file: !779, line: 114, baseType: !500, size: 16)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !823, file: !779, line: 115, baseType: !827, size: 48, offset: 16)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 48, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 6)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !820, file: !779, line: 121, baseType: !145, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !816, file: !779, line: 123, baseType: !832, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !779, line: 96, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !816, file: !779, line: 124, baseType: !835, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !779, line: 102, size: 192, elements: !837)
!837 = !{!838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !836, file: !779, line: 103, baseType: !131, size: 128, align: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !836, file: !779, line: 104, baseType: !151, size: 32, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !836, file: !779, line: 105, baseType: !87, size: 8, offset: 160)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !816, file: !779, line: 125, baseType: !93, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !779, line: 241, baseType: !843, size: 320)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !779, line: 241, size: 320, elements: !844)
!844 = !{!845, !846, !847, !848, !849}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !843, file: !779, line: 242, baseType: !145, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !843, file: !779, line: 243, baseType: !145, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !843, file: !779, line: 244, baseType: !832, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !843, file: !779, line: 245, baseType: !835, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !843, file: !779, line: 246, baseType: !115, size: 64, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !778, file: !779, line: 254, baseType: !851, size: 256, offset: 1344)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !778, file: !779, line: 254, size: 256, elements: !852)
!852 = !{!853, !859}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !851, file: !779, line: 255, baseType: !854, size: 256)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !779, line: 128, size: 256, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !854, file: !779, line: 129, baseType: !45, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !854, file: !779, line: 130, baseType: !858, size: 256)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !469)
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !779, line: 256, baseType: !860, size: 256)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !779, line: 256, size: 256, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !860, file: !779, line: 258, baseType: !50, size: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !860, file: !779, line: 259, baseType: !864, size: 128, offset: 128)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !865, line: 22, size: 128, elements: !866)
!865 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!866 = !{!867, !870}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !864, file: !865, line: 23, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !865, line: 23, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !864, file: !865, line: 24, baseType: !145, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !778, file: !779, line: 274, baseType: !872, size: 64, offset: 1600)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !779, line: 170, size: 192, elements: !874)
!874 = !{!875, !884, !885}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !873, file: !779, line: 171, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !779, line: 165, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!116, !777, !880, !882, !777}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !873, file: !779, line: 172, baseType: !777, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !873, file: !779, line: 173, baseType: !832, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !736, file: !737, line: 138, baseType: !777, size: 64, offset: 768)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !736, file: !737, line: 139, baseType: !777, size: 64, offset: 832)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !736, file: !737, line: 140, baseType: !777, size: 64, offset: 896)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !736, file: !737, line: 145, baseType: !890, size: 64, offset: 960)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !892, line: 13, size: 896, elements: !893)
!892 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!893 = !{!894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !891, file: !892, line: 14, baseType: !151, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !891, file: !892, line: 15, baseType: !155, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !891, file: !892, line: 16, baseType: !155, size: 32, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !891, file: !892, line: 21, baseType: !397, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !891, file: !892, line: 27, baseType: !145, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !891, file: !892, line: 28, baseType: !145, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !891, file: !892, line: 29, baseType: !397, size: 64, offset: 320)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !891, file: !892, line: 32, baseType: !668, size: 128, offset: 384)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !891, file: !892, line: 33, baseType: !741, size: 32, offset: 512)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !891, file: !892, line: 37, baseType: !397, size: 64, offset: 576)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !891, file: !892, line: 44, baseType: !905, size: 256, offset: 640)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !906, line: 15, size: 256, elements: !907)
!906 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!907 = !{!908, !909, !910, !911, !912, !913, !914}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !905, file: !906, line: 16, baseType: !275)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !905, file: !906, line: 18, baseType: !116, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !905, file: !906, line: 19, baseType: !116, size: 32, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !905, file: !906, line: 20, baseType: !116, size: 32, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !905, file: !906, line: 21, baseType: !116, size: 32, offset: 96)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !905, file: !906, line: 22, baseType: !145, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !905, file: !906, line: 23, baseType: !145, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !736, file: !737, line: 146, baseType: !534, size: 64, offset: 1024)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !736, file: !737, line: 147, baseType: !917, size: 64, offset: 1088)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !737, line: 25, size: 64, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !918, file: !737, line: 26, baseType: !155, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !918, file: !737, line: 27, baseType: !116, size: 32, offset: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !918, file: !737, line: 28, baseType: !923, offset: 64)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !749, elements: !924)
!924 = !{!925}
!925 = !DISubrange(count: 0)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !737, line: 149, baseType: !927, size: 128, offset: 1152)
!927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !736, file: !737, line: 149, size: 128, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !927, file: !737, line: 150, baseType: !116, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !927, file: !737, line: 151, baseType: !131, size: 128, align: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !173, file: !174, line: 926, baseType: !734, size: 64, offset: 8576)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !173, file: !174, line: 929, baseType: !734, size: 64, offset: 8640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !173, file: !174, line: 933, baseType: !777, size: 64, offset: 8704)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !173, file: !174, line: 943, baseType: !935, size: 128, offset: 8768)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 16)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !173, file: !174, line: 945, baseType: !939, size: 64, offset: 8896)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !174, line: 49, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !173, file: !174, line: 956, baseType: !942, size: 64, offset: 8960)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !174, line: 45, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !173, file: !174, line: 959, baseType: !945, size: 64, offset: 9024)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !174, line: 959, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !173, file: !174, line: 962, baseType: !948, size: 64, offset: 9088)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !174, line: 66, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !173, file: !174, line: 966, baseType: !951, size: 64, offset: 9152)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !174, line: 50, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !173, file: !174, line: 969, baseType: !954, size: 64, offset: 9216)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !956, line: 82, size: 7296, elements: !957)
!956 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!957 = !{!958, !959, !960, !961, !962, !963, !964, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !993, !1002, !1003, !1005, !1006, !1007, !1010, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1044, !1045, !1053, !1054, !1055, !1056, !1057, !1058}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !955, file: !956, line: 83, baseType: !151, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !955, file: !956, line: 84, baseType: !155, size: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !955, file: !956, line: 85, baseType: !116, size: 32, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !955, file: !956, line: 86, baseType: !50, size: 128, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !955, file: !956, line: 88, baseType: !675, size: 128, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !955, file: !956, line: 91, baseType: !172, size: 64, offset: 384)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !955, file: !956, line: 94, baseType: !965, size: 192, offset: 448)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !966, line: 30, size: 192, elements: !967)
!966 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !965, file: !966, line: 31, baseType: !50, size: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !965, file: !966, line: 32, baseType: !970, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !971, line: 25, baseType: !972)
!971 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !971, line: 23, size: 64, elements: !973)
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !972, file: !971, line: 24, baseType: !343, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !955, file: !956, line: 97, baseType: !664, size: 64, offset: 640)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !955, file: !956, line: 100, baseType: !116, size: 32, offset: 704)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !955, file: !956, line: 106, baseType: !116, size: 32, offset: 736)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !955, file: !956, line: 107, baseType: !172, size: 64, offset: 768)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !955, file: !956, line: 110, baseType: !116, size: 32, offset: 832)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !955, file: !956, line: 111, baseType: !7, size: 32, offset: 864)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !955, file: !956, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !955, file: !956, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !955, file: !956, line: 128, baseType: !116, size: 32, offset: 928)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !955, file: !956, line: 129, baseType: !50, size: 128, offset: 960)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !955, file: !956, line: 132, baseType: !252, size: 512, offset: 1088)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !955, file: !956, line: 133, baseType: !123, size: 64, offset: 1600)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !955, file: !956, line: 140, baseType: !988, size: 256, offset: 1664)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !989, size: 256, elements: !769)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !956, line: 38, size: 128, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !989, file: !956, line: 39, baseType: !140, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !989, file: !956, line: 40, baseType: !140, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !955, file: !956, line: 146, baseType: !994, size: 192, offset: 1920)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !956, line: 66, size: 192, elements: !995)
!995 = !{!996}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !994, file: !956, line: 67, baseType: !997, size: 192)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !956, line: 47, size: 192, elements: !998)
!998 = !{!999, !1000, !1001}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !997, file: !956, line: 48, baseType: !399, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !997, file: !956, line: 49, baseType: !399, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !997, file: !956, line: 50, baseType: !399, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !955, file: !956, line: 150, baseType: !715, size: 640, offset: 2112)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !955, file: !956, line: 153, baseType: !1004, size: 256, offset: 2752)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 256, elements: !469)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !955, file: !956, line: 159, baseType: !655, size: 64, offset: 3008)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !955, file: !956, line: 162, baseType: !116, size: 32, offset: 3072)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !955, file: !956, line: 164, baseType: !1008, size: 64, offset: 3136)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !956, line: 164, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !955, file: !956, line: 175, baseType: !1011, size: 32, offset: 3200)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !298, line: 805, baseType: !1012)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 798, size: 32, elements: !1013)
!1013 = !{!1014, !1019}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1012, file: !298, line: 803, baseType: !1015, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !298, line: 277, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !298, line: 277, size: 32, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1016, file: !298, line: 277, baseType: !302, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1012, file: !298, line: 804, baseType: !66, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !955, file: !956, line: 176, baseType: !140, size: 64, offset: 3264)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !955, file: !956, line: 176, baseType: !140, size: 64, offset: 3328)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !955, file: !956, line: 176, baseType: !140, size: 64, offset: 3392)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !955, file: !956, line: 176, baseType: !140, size: 64, offset: 3456)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !955, file: !956, line: 177, baseType: !140, size: 64, offset: 3520)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !955, file: !956, line: 178, baseType: !140, size: 64, offset: 3584)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !955, file: !956, line: 179, baseType: !703, size: 128, offset: 3648)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !955, file: !956, line: 180, baseType: !145, size: 64, offset: 3776)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !955, file: !956, line: 180, baseType: !145, size: 64, offset: 3840)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !955, file: !956, line: 180, baseType: !145, size: 64, offset: 3904)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !955, file: !956, line: 180, baseType: !145, size: 64, offset: 3968)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !955, file: !956, line: 181, baseType: !145, size: 64, offset: 4032)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !955, file: !956, line: 181, baseType: !145, size: 64, offset: 4096)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !955, file: !956, line: 181, baseType: !145, size: 64, offset: 4160)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !955, file: !956, line: 181, baseType: !145, size: 64, offset: 4224)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !955, file: !956, line: 182, baseType: !145, size: 64, offset: 4288)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !955, file: !956, line: 182, baseType: !145, size: 64, offset: 4352)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !955, file: !956, line: 182, baseType: !145, size: 64, offset: 4416)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !955, file: !956, line: 182, baseType: !145, size: 64, offset: 4480)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !955, file: !956, line: 183, baseType: !145, size: 64, offset: 4544)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !955, file: !956, line: 183, baseType: !145, size: 64, offset: 4608)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !955, file: !956, line: 184, baseType: !1042, offset: 4672)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1043, line: 12, elements: !80)
!1043 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !955, file: !956, line: 192, baseType: !142, size: 64, offset: 4672)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !955, file: !956, line: 203, baseType: !1046, size: 2048, offset: 4736)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1047, size: 2048, elements: !936)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1048, line: 43, size: 128, elements: !1049)
!1048 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1049 = !{!1050, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1047, file: !1048, line: 44, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !295, line: 16, baseType: !145)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1047, file: !1048, line: 45, baseType: !1051, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !955, file: !956, line: 220, baseType: !87, size: 8, offset: 6784)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !955, file: !956, line: 221, baseType: !505, size: 16, offset: 6800)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !955, file: !956, line: 222, baseType: !505, size: 16, offset: 6816)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !955, file: !956, line: 224, baseType: !351, size: 64, offset: 6848)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !955, file: !956, line: 227, baseType: !487, size: 192, offset: 6912)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !955, file: !956, line: 233, baseType: !487, size: 192, offset: 7104)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !173, file: !174, line: 970, baseType: !1060, size: 64, offset: 9280)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !956, line: 20, size: 16576, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1066}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1061, file: !956, line: 21, baseType: !66)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1061, file: !956, line: 22, baseType: !151, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1061, file: !956, line: 23, baseType: !675, size: 128, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1061, file: !956, line: 24, baseType: !1067, size: 16384, offset: 192)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1068, size: 16384, elements: !1088)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !966, line: 49, size: 256, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1068, file: !966, line: 50, baseType: !1071, size: 256)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !966, line: 35, size: 256, elements: !1072)
!1072 = !{!1073, !1080, !1081, !1087}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1071, file: !966, line: 37, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1075, line: 19, baseType: !1076)
!1075 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1075, line: 18, baseType: !1078)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !116}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1071, file: !966, line: 38, baseType: !145, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1071, file: !966, line: 44, baseType: !1082, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1075, line: 22, baseType: !1083)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1075, line: 21, baseType: !1085)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1071, file: !966, line: 46, baseType: !970, size: 64, offset: 192)
!1088 = !{!1089}
!1089 = !DISubrange(count: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !173, file: !174, line: 971, baseType: !970, size: 64, offset: 9344)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !173, file: !174, line: 972, baseType: !970, size: 64, offset: 9408)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !173, file: !174, line: 974, baseType: !970, size: 64, offset: 9472)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !173, file: !174, line: 975, baseType: !965, size: 192, offset: 9536)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !173, file: !174, line: 976, baseType: !145, size: 64, offset: 9728)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !173, file: !174, line: 977, baseType: !1096, size: 64, offset: 9792)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 55, baseType: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !295, line: 72, baseType: !1051)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !173, file: !174, line: 978, baseType: !7, size: 32, offset: 9856)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !173, file: !174, line: 980, baseType: !134, size: 64, offset: 9920)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !173, file: !174, line: 989, baseType: !1101, size: 128, offset: 9984)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1102, line: 35, size: 128, elements: !1103)
!1102 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1101, file: !1102, line: 36, baseType: !116, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1101, file: !1102, line: 37, baseType: !155, size: 32, offset: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1101, file: !1102, line: 38, baseType: !1107, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1102, line: 23, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !173, file: !174, line: 992, baseType: !140, size: 64, offset: 10112)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !173, file: !174, line: 993, baseType: !140, size: 64, offset: 10176)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !173, file: !174, line: 996, baseType: !66, offset: 10240)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !173, file: !174, line: 999, baseType: !275, offset: 10240)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !173, file: !174, line: 1001, baseType: !1114, size: 64, offset: 10240)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !174, line: 636, size: 64, elements: !1115)
!1115 = !{!1116}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1114, file: !174, line: 637, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !173, file: !174, line: 1005, baseType: !311, size: 128, offset: 10304)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !173, file: !174, line: 1007, baseType: !172, size: 64, offset: 10432)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !173, file: !174, line: 1009, baseType: !1121, size: 64, offset: 10496)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !174, line: 1009, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !173, file: !174, line: 1043, baseType: !45, size: 64, offset: 10560)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !173, file: !174, line: 1046, baseType: !1125, size: 64, offset: 10624)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !174, line: 41, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !173, file: !174, line: 1050, baseType: !1128, size: 64, offset: 10688)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !174, line: 42, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !173, file: !174, line: 1054, baseType: !1131, size: 64, offset: 10752)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !174, line: 55, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !173, file: !174, line: 1056, baseType: !1134, size: 64, offset: 10816)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !174, line: 40, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !173, file: !174, line: 1058, baseType: !1137, size: 64, offset: 10880)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !174, line: 47, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !173, file: !174, line: 1061, baseType: !1140, size: 64, offset: 10944)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !174, line: 43, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !173, file: !174, line: 1064, baseType: !145, size: 64, offset: 11008)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !173, file: !174, line: 1065, baseType: !1144, size: 64, offset: 11072)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !966, line: 14, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !966, line: 12, size: 384, elements: !1147)
!1147 = !{!1148}
!1148 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !966, line: 13, baseType: !1149, size: 384)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !966, line: 13, size: 384, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1149, file: !966, line: 13, baseType: !116, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1149, file: !966, line: 13, baseType: !116, size: 32, offset: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1149, file: !966, line: 13, baseType: !116, size: 32, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1149, file: !966, line: 13, baseType: !1155, size: 256, offset: 128)
!1155 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1156, line: 32, size: 256, elements: !1157)
!1156 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1157 = !{!1158, !1163, !1176, !1182, !1192, !1212, !1217}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1155, file: !1156, line: 37, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !1156, line: 34, size: 64, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1159, file: !1156, line: 35, baseType: !644, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1159, file: !1156, line: 36, baseType: !747, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1155, file: !1156, line: 45, baseType: !1164, size: 192)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !1156, line: 40, size: 192, elements: !1165)
!1165 = !{!1166, !1168, !1169, !1175}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1164, file: !1156, line: 41, baseType: !1167, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !295, line: 95, baseType: !116)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1164, file: !1156, line: 42, baseType: !116, size: 32, offset: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1164, file: !1156, line: 43, baseType: !1170, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1156, line: 11, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1156, line: 8, size: 64, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1171, file: !1156, line: 9, baseType: !116, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1171, file: !1156, line: 10, baseType: !45, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1164, file: !1156, line: 44, baseType: !116, size: 32, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1155, file: !1156, line: 52, baseType: !1177, size: 128)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !1156, line: 48, size: 128, elements: !1178)
!1178 = !{!1179, !1180, !1181}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1177, file: !1156, line: 49, baseType: !644, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1177, file: !1156, line: 50, baseType: !747, size: 32, offset: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1177, file: !1156, line: 51, baseType: !1170, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1155, file: !1156, line: 61, baseType: !1183, size: 256)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !1156, line: 55, size: 256, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1191}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1183, file: !1156, line: 56, baseType: !644, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1183, file: !1156, line: 57, baseType: !747, size: 32, offset: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1183, file: !1156, line: 58, baseType: !116, size: 32, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1183, file: !1156, line: 59, baseType: !1189, size: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !295, line: 94, baseType: !1190)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !295, line: 15, baseType: !106)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1183, file: !1156, line: 60, baseType: !1189, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1155, file: !1156, line: 95, baseType: !1193, size: 256)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !1156, line: 64, size: 256, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1193, file: !1156, line: 65, baseType: !45, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !1156, line: 77, baseType: !1197, size: 192, offset: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !1156, line: 77, size: 192, elements: !1198)
!1198 = !{!1199, !1200, !1207}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1197, file: !1156, line: 82, baseType: !505, size: 16)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1197, file: !1156, line: 88, baseType: !1201, size: 192)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !1156, line: 84, size: 192, elements: !1202)
!1202 = !{!1203, !1205, !1206}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1201, file: !1156, line: 85, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, elements: !289)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1201, file: !1156, line: 86, baseType: !45, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1201, file: !1156, line: 87, baseType: !45, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1197, file: !1156, line: 93, baseType: !1208, size: 96)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !1156, line: 90, size: 96, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1208, file: !1156, line: 91, baseType: !1204, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1208, file: !1156, line: 92, baseType: !183, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1155, file: !1156, line: 101, baseType: !1213, size: 128)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !1156, line: 98, size: 128, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1213, file: !1156, line: 99, baseType: !106, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1213, file: !1156, line: 100, baseType: !116, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1155, file: !1156, line: 108, baseType: !1218, size: 128)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !1156, line: 104, size: 128, elements: !1219)
!1219 = !{!1220, !1221, !1222}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1218, file: !1156, line: 105, baseType: !45, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1218, file: !1156, line: 106, baseType: !116, size: 32, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1218, file: !1156, line: 107, baseType: !7, size: 32, offset: 96)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !173, file: !174, line: 1067, baseType: !1042, offset: 11136)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !173, file: !174, line: 1099, baseType: !1225, size: 64, offset: 11136)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !174, line: 56, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !173, file: !174, line: 1103, baseType: !50, size: 128, offset: 11200)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !173, file: !174, line: 1104, baseType: !1229, size: 64, offset: 11328)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !174, line: 46, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !173, file: !174, line: 1105, baseType: !487, size: 192, offset: 11392)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !173, file: !174, line: 1106, baseType: !7, size: 32, offset: 11584)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !173, file: !174, line: 1109, baseType: !1234, size: 128, offset: 11648)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1235, size: 128, elements: !769)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !174, line: 51, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !173, file: !174, line: 1110, baseType: !487, size: 192, offset: 11776)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !173, file: !174, line: 1111, baseType: !50, size: 128, offset: 11968)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !173, file: !174, line: 1173, baseType: !1240, size: 64, offset: 12096)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1242, line: 62, size: 256, align: 256, elements: !1243)
!1242 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1243 = !{!1244, !1245, !1246, !1251}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1241, file: !1242, line: 75, baseType: !183, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1241, file: !1242, line: 90, baseType: !183, size: 32, offset: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1241, file: !1242, line: 124, baseType: !1247, size: 64, offset: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1241, file: !1242, line: 109, size: 64, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1247, file: !1242, line: 110, baseType: !141, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1247, file: !1242, line: 112, baseType: !141, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1241, file: !1242, line: 144, baseType: !183, size: 32, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !173, file: !174, line: 1174, baseType: !182, size: 32, offset: 12160)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !173, file: !174, line: 1179, baseType: !145, size: 64, offset: 12224)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !173, file: !174, line: 1182, baseType: !1255, size: 128, offset: 12288)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !465, line: 76, size: 128, elements: !1256)
!1256 = !{!1257, !1262, !1263}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1255, file: !465, line: 85, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1259, line: 7, size: 64, elements: !1260)
!1259 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1260 = !{!1261}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1258, file: !1259, line: 12, baseType: !340, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1255, file: !465, line: 88, baseType: !87, size: 8, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1255, file: !465, line: 95, baseType: !87, size: 8, offset: 72)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !174, line: 1184, baseType: !1265, size: 128, offset: 12416)
!1265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !174, line: 1184, size: 128, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1265, file: !174, line: 1185, baseType: !151, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1265, file: !174, line: 1186, baseType: !131, size: 128, align: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !173, file: !174, line: 1190, baseType: !1270, size: 64, offset: 12544)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !174, line: 53, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !173, file: !174, line: 1192, baseType: !1273, size: 128, offset: 12608)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !465, line: 64, size: 128, elements: !1274)
!1274 = !{!1275, !1368, !1369}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1273, file: !465, line: 65, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !353, line: 68, size: 512, align: 128, elements: !1278)
!1278 = !{!1279, !1280, !1360, !1367}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !353, line: 69, baseType: !145, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, scope: !1277, file: !353, line: 77, baseType: !1281, size: 320, offset: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1277, file: !353, line: 77, size: 320, elements: !1282)
!1282 = !{!1283, !1292, !1297, !1325, !1333, !1339, !1352, !1359}
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !353, line: 78, baseType: !1284, size: 320)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1281, file: !353, line: 78, size: 320, elements: !1285)
!1285 = !{!1286, !1287, !1290, !1291}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1284, file: !353, line: 84, baseType: !50, size: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1284, file: !353, line: 86, baseType: !1288, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !353, line: 26, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1284, file: !353, line: 87, baseType: !145, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1284, file: !353, line: 94, baseType: !145, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !353, line: 96, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1281, file: !353, line: 96, size: 64, elements: !1294)
!1294 = !{!1295}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1293, file: !353, line: 101, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !51, line: 143, baseType: !140)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !353, line: 103, baseType: !1298, size: 320)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1281, file: !353, line: 103, size: 320, elements: !1299)
!1299 = !{!1300, !1310, !1313, !1314}
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !353, line: 104, baseType: !1301, size: 128)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !353, line: 104, size: 128, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1301, file: !353, line: 105, baseType: !50, size: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !353, line: 106, baseType: !1305, size: 128)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !353, line: 106, size: 128, elements: !1306)
!1306 = !{!1307, !1308, !1309}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1305, file: !353, line: 107, baseType: !1276, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1305, file: !353, line: 109, baseType: !116, size: 32, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1305, file: !353, line: 110, baseType: !116, size: 32, offset: 96)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1298, file: !353, line: 117, baseType: !1311, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !353, line: 117, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1298, file: !353, line: 119, baseType: !45, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !353, line: 120, baseType: !1315, size: 64, offset: 256)
!1315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !353, line: 120, size: 64, elements: !1316)
!1316 = !{!1317, !1318, !1319}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1315, file: !353, line: 121, baseType: !45, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1315, file: !353, line: 122, baseType: !145, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1315, file: !353, line: 123, baseType: !1320, size: 32)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1315, file: !353, line: 123, size: 32, elements: !1321)
!1321 = !{!1322, !1323, !1324}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1320, file: !353, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1320, file: !353, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1320, file: !353, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !353, line: 130, baseType: !1326, size: 192)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1281, file: !353, line: 130, size: 192, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1332}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1326, file: !353, line: 131, baseType: !145, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1326, file: !353, line: 134, baseType: !326, size: 8, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1326, file: !353, line: 135, baseType: !326, size: 8, offset: 72)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1326, file: !353, line: 136, baseType: !155, size: 32, offset: 96)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1326, file: !353, line: 137, baseType: !7, size: 32, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !353, line: 139, baseType: !1334, size: 256)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1281, file: !353, line: 139, size: 256, elements: !1335)
!1335 = !{!1336, !1337, !1338}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1334, file: !353, line: 140, baseType: !145, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1334, file: !353, line: 141, baseType: !155, size: 32, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1334, file: !353, line: 143, baseType: !50, size: 128, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !353, line: 145, baseType: !1340, size: 256)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1281, file: !353, line: 145, size: 256, elements: !1341)
!1341 = !{!1342, !1343, !1345, !1346, !1351}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1340, file: !353, line: 146, baseType: !145, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1340, file: !353, line: 147, baseType: !1344, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !371, line: 509, baseType: !1276)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1340, file: !353, line: 148, baseType: !145, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !353, line: 149, baseType: !1347, size: 64, offset: 192)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1340, file: !353, line: 149, size: 64, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1347, file: !353, line: 150, baseType: !351, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1347, file: !353, line: 151, baseType: !155, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1340, file: !353, line: 156, baseType: !66, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !353, line: 159, baseType: !1353, size: 128)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1281, file: !353, line: 159, size: 128, elements: !1354)
!1354 = !{!1355, !1358}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1353, file: !353, line: 161, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !353, line: 161, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1353, file: !353, line: 162, baseType: !45, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1281, file: !353, line: 176, baseType: !131, size: 128, align: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1277, file: !353, line: 179, baseType: !1361, size: 32, offset: 384)
!1361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1277, file: !353, line: 179, size: 32, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1361, file: !353, line: 184, baseType: !155, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1361, file: !353, line: 192, baseType: !7, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1361, file: !353, line: 194, baseType: !7, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1361, file: !353, line: 195, baseType: !116, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1277, file: !353, line: 199, baseType: !155, size: 32, offset: 416)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1273, file: !465, line: 67, baseType: !183, size: 32, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1273, file: !465, line: 68, baseType: !183, size: 32, offset: 96)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !173, file: !174, line: 1206, baseType: !116, size: 32, offset: 12736)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !173, file: !174, line: 1207, baseType: !116, size: 32, offset: 12768)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !173, file: !174, line: 1209, baseType: !145, size: 64, offset: 12800)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !173, file: !174, line: 1219, baseType: !140, size: 64, offset: 12864)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !173, file: !174, line: 1220, baseType: !140, size: 64, offset: 12928)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !173, file: !174, line: 1317, baseType: !116, size: 32, offset: 12992)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !173, file: !174, line: 1319, baseType: !172, size: 64, offset: 13056)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !173, file: !174, line: 1322, baseType: !1378, size: 64, offset: 13120)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1380, line: 9, flags: DIFlagFwdDecl)
!1380 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !173, file: !174, line: 1326, baseType: !151, size: 32, offset: 13184)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !173, file: !174, line: 1342, baseType: !45, size: 64, offset: 13248)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !173, file: !174, line: 1343, baseType: !141, size: 64, offset: 13312)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !173, file: !174, line: 1344, baseType: !140, size: 64, offset: 13376)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !173, file: !174, line: 1345, baseType: !141, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !173, file: !174, line: 1346, baseType: !141, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !173, file: !174, line: 1347, baseType: !141, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !173, file: !174, line: 1348, baseType: !131, size: 128, align: 64, offset: 13504)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !173, file: !174, line: 1358, baseType: !1390, size: 34816, offset: 13824)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1391, line: 485, size: 34816, elements: !1392)
!1391 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1392 = !{!1393, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1422, !1423, !1424, !1425, !1426, !1427, !1430, !1431, !1432}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1390, file: !1391, line: 487, baseType: !1394, size: 192)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1395, size: 192, elements: !724)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1396, line: 16, size: 64, elements: !1397)
!1396 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1395, file: !1396, line: 17, baseType: !500, size: 16)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1395, file: !1396, line: 18, baseType: !500, size: 16, offset: 16)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1395, file: !1396, line: 19, baseType: !500, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1395, file: !1396, line: 19, baseType: !500, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1395, file: !1396, line: 19, baseType: !500, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1395, file: !1396, line: 19, baseType: !500, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1395, file: !1396, line: 19, baseType: !500, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1395, file: !1396, line: 20, baseType: !500, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1395, file: !1396, line: 20, baseType: !500, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1395, file: !1396, line: 20, baseType: !500, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1395, file: !1396, line: 20, baseType: !500, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1395, file: !1396, line: 20, baseType: !500, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1395, file: !1396, line: 20, baseType: !500, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1390, file: !1391, line: 491, baseType: !145, size: 64, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1390, file: !1391, line: 495, baseType: !231, size: 16, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1390, file: !1391, line: 496, baseType: !231, size: 16, offset: 272)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1390, file: !1391, line: 497, baseType: !231, size: 16, offset: 288)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1390, file: !1391, line: 498, baseType: !231, size: 16, offset: 304)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1390, file: !1391, line: 502, baseType: !145, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1390, file: !1391, line: 503, baseType: !145, size: 64, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1390, file: !1391, line: 514, baseType: !1419, size: 256, offset: 448)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, size: 256, elements: !469)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1391, line: 483, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1390, file: !1391, line: 516, baseType: !145, size: 64, offset: 704)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1390, file: !1391, line: 518, baseType: !145, size: 64, offset: 768)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1390, file: !1391, line: 520, baseType: !145, size: 64, offset: 832)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1390, file: !1391, line: 521, baseType: !145, size: 64, offset: 896)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1390, file: !1391, line: 522, baseType: !145, size: 64, offset: 960)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1390, file: !1391, line: 528, baseType: !1428, size: 64, offset: 1024)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1391, line: 10, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1390, file: !1391, line: 535, baseType: !145, size: 64, offset: 1088)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1390, file: !1391, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1390, file: !1391, line: 540, baseType: !1433, size: 33280, offset: 1536)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1434, line: 317, size: 33280, elements: !1435)
!1434 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1435 = !{!1436, !1437, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1433, file: !1434, line: 330, baseType: !7, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1433, file: !1434, line: 337, baseType: !145, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1433, file: !1434, line: 348, baseType: !1439, size: 32768, offset: 512)
!1439 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1434, line: 304, size: 32768, elements: !1440)
!1440 = !{!1441, !1456, !1495, !1545, !1558}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1439, file: !1434, line: 305, baseType: !1442, size: 896)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1434, line: 12, size: 896, elements: !1443)
!1443 = !{!1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1455}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1442, file: !1434, line: 13, baseType: !182, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1442, file: !1434, line: 14, baseType: !182, size: 32, offset: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1442, file: !1434, line: 15, baseType: !182, size: 32, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1442, file: !1434, line: 16, baseType: !182, size: 32, offset: 96)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1442, file: !1434, line: 17, baseType: !182, size: 32, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1442, file: !1434, line: 18, baseType: !182, size: 32, offset: 160)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1442, file: !1434, line: 19, baseType: !182, size: 32, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1442, file: !1434, line: 22, baseType: !1452, size: 640, offset: 224)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 640, elements: !1453)
!1453 = !{!1454}
!1454 = !DISubrange(count: 20)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1442, file: !1434, line: 25, baseType: !182, size: 32, offset: 864)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1439, file: !1434, line: 306, baseType: !1457, size: 4096, align: 128)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1434, line: 34, size: 4096, align: 128, elements: !1458)
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1478, !1479, !1480, !1484, !1486, !1490}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1457, file: !1434, line: 35, baseType: !500, size: 16)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1457, file: !1434, line: 36, baseType: !500, size: 16, offset: 16)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1457, file: !1434, line: 37, baseType: !500, size: 16, offset: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1457, file: !1434, line: 38, baseType: !500, size: 16, offset: 48)
!1463 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1434, line: 39, baseType: !1464, size: 128, offset: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !1434, line: 39, size: 128, elements: !1465)
!1465 = !{!1466, !1471}
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !1434, line: 40, baseType: !1467, size: 128)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1464, file: !1434, line: 40, size: 128, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1467, file: !1434, line: 41, baseType: !140, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1467, file: !1434, line: 42, baseType: !140, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !1434, line: 44, baseType: !1472, size: 128)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1464, file: !1434, line: 44, size: 128, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1472, file: !1434, line: 45, baseType: !182, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1472, file: !1434, line: 46, baseType: !182, size: 32, offset: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1472, file: !1434, line: 47, baseType: !182, size: 32, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1472, file: !1434, line: 48, baseType: !182, size: 32, offset: 96)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1457, file: !1434, line: 51, baseType: !182, size: 32, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1457, file: !1434, line: 52, baseType: !182, size: 32, offset: 224)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1457, file: !1434, line: 55, baseType: !1481, size: 1024, offset: 256)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 1024, elements: !1482)
!1482 = !{!1483}
!1483 = !DISubrange(count: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1457, file: !1434, line: 58, baseType: !1485, size: 2048, offset: 1280)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 2048, elements: !1088)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1457, file: !1434, line: 60, baseType: !1487, size: 384, offset: 3328)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 384, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 12)
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1434, line: 62, baseType: !1491, size: 384, offset: 3712)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !1434, line: 62, size: 384, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1491, file: !1434, line: 63, baseType: !1487, size: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1491, file: !1434, line: 64, baseType: !1487, size: 384)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1439, file: !1434, line: 307, baseType: !1496, size: 1088)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1434, line: 79, size: 1088, elements: !1497)
!1497 = !{!1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1544}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1496, file: !1434, line: 80, baseType: !182, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1496, file: !1434, line: 81, baseType: !182, size: 32, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1496, file: !1434, line: 82, baseType: !182, size: 32, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1496, file: !1434, line: 83, baseType: !182, size: 32, offset: 96)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1496, file: !1434, line: 84, baseType: !182, size: 32, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1496, file: !1434, line: 85, baseType: !182, size: 32, offset: 160)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1496, file: !1434, line: 86, baseType: !182, size: 32, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1496, file: !1434, line: 88, baseType: !1452, size: 640, offset: 224)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1496, file: !1434, line: 89, baseType: !324, size: 8, offset: 864)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1496, file: !1434, line: 90, baseType: !324, size: 8, offset: 872)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1496, file: !1434, line: 91, baseType: !324, size: 8, offset: 880)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1496, file: !1434, line: 92, baseType: !324, size: 8, offset: 888)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1496, file: !1434, line: 93, baseType: !324, size: 8, offset: 896)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1496, file: !1434, line: 94, baseType: !324, size: 8, offset: 904)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1496, file: !1434, line: 95, baseType: !1513, size: 64, offset: 960)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1515, line: 11, size: 128, elements: !1516)
!1515 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1514, file: !1515, line: 12, baseType: !106, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1514, file: !1515, line: 13, baseType: !1519, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1521, line: 56, size: 1344, elements: !1522)
!1521 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1522 = !{!1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1520, file: !1521, line: 61, baseType: !145, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1520, file: !1521, line: 62, baseType: !145, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1520, file: !1521, line: 63, baseType: !145, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1520, file: !1521, line: 64, baseType: !145, size: 64, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1520, file: !1521, line: 65, baseType: !145, size: 64, offset: 256)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1520, file: !1521, line: 66, baseType: !145, size: 64, offset: 320)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1520, file: !1521, line: 68, baseType: !145, size: 64, offset: 384)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1520, file: !1521, line: 69, baseType: !145, size: 64, offset: 448)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1520, file: !1521, line: 70, baseType: !145, size: 64, offset: 512)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1520, file: !1521, line: 71, baseType: !145, size: 64, offset: 576)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1520, file: !1521, line: 72, baseType: !145, size: 64, offset: 640)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1520, file: !1521, line: 73, baseType: !145, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1520, file: !1521, line: 74, baseType: !145, size: 64, offset: 768)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1520, file: !1521, line: 75, baseType: !145, size: 64, offset: 832)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1520, file: !1521, line: 76, baseType: !145, size: 64, offset: 896)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1520, file: !1521, line: 81, baseType: !145, size: 64, offset: 960)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1520, file: !1521, line: 83, baseType: !145, size: 64, offset: 1024)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1520, file: !1521, line: 84, baseType: !145, size: 64, offset: 1088)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1520, file: !1521, line: 85, baseType: !145, size: 64, offset: 1152)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1520, file: !1521, line: 86, baseType: !145, size: 64, offset: 1216)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1520, file: !1521, line: 87, baseType: !145, size: 64, offset: 1280)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1496, file: !1434, line: 96, baseType: !182, size: 32, offset: 1024)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1439, file: !1434, line: 308, baseType: !1546, size: 4608, align: 512)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1434, line: 289, size: 4608, align: 512, elements: !1547)
!1547 = !{!1548, !1549, !1556}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1546, file: !1434, line: 290, baseType: !1457, size: 4096, align: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1546, file: !1434, line: 291, baseType: !1550, size: 512, offset: 4096)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1434, line: 268, size: 512, elements: !1551)
!1551 = !{!1552, !1553, !1554}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1550, file: !1434, line: 269, baseType: !140, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1550, file: !1434, line: 270, baseType: !140, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1550, file: !1434, line: 271, baseType: !1555, size: 384, offset: 128)
!1555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 384, elements: !828)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1546, file: !1434, line: 292, baseType: !1557, offset: 4608)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, elements: !924)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1439, file: !1434, line: 309, baseType: !1559, size: 32768)
!1559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 32768, elements: !1560)
!1560 = !{!1561}
!1561 = !DISubrange(count: 4096)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_wait_cb", file: !3, line: 647, size: 256, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1563, file: !3, line: 648, baseType: !47, size: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1563, file: !3, line: 649, baseType: !172, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!1569 = !{!1570, !0, !1572, !1574}
!1570 = !DIGlobalVariableExpression(var: !1571, expr: !DIExpression())
!1571 = distinct !DIGlobalVariable(name: "dma_fence_stub", scope: !2, file: !3, line: 27, type: !62, isLocal: true, isDefinition: true)
!1572 = !DIGlobalVariableExpression(var: !1573, expr: !DIExpression())
!1573 = distinct !DIGlobalVariable(name: "dma_fence_stub_ops", scope: !2, file: !3, line: 118, type: !83, isLocal: true, isDefinition: true)
!1574 = !DIGlobalVariableExpression(var: !1575, expr: !DIExpression())
!1575 = distinct !DIGlobalVariable(name: "dma_fence_context_counter", scope: !2, file: !3, line: 35, type: !399, isLocal: true, isDefinition: true)
!1576 = !{!"rsp"}
!1577 = !{i32 7, !"Dwarf Version", i32 4}
!1578 = !{i32 2, !"Debug Info Version", i32 3}
!1579 = !{i32 1, !"wchar_size", i32 2}
!1580 = !{i32 1, !"Code Model", i32 2}
!1581 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!1582 = distinct !DISubprogram(name: "dma_fence_get_stub", scope: !3, file: !3, line: 128, type: !1583, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!61}
!1585 = !DILocalVariable(name: "lock", arg: 1, scope: !1586, file: !1587, line: 392, type: !65)
!1586 = distinct !DISubprogram(name: "spin_unlock", scope: !1587, file: !1587, line: 392, type: !1588, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1587 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !65}
!1590 = !DILocation(line: 392, column: 53, scope: !1586, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 138, column: 2, scope: !1582)
!1592 = !DILocalVariable(name: "lock", arg: 1, scope: !1593, file: !1587, line: 352, type: !65)
!1593 = distinct !DISubprogram(name: "spin_lock", scope: !1587, file: !1587, line: 352, type: !1588, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1594 = !DILocation(line: 352, column: 51, scope: !1593, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 130, column: 2, scope: !1582)
!1596 = !DILocation(line: 354, column: 2, scope: !1597, inlinedAt: !1595)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !1587, line: 354, column: 2)
!1598 = !{i32 -2145510822}
!1599 = !DILocation(line: 354, column: 2, scope: !1600, inlinedAt: !1595)
!1600 = distinct !DILexicalBlock(scope: !1597, file: !1587, line: 354, column: 2)
!1601 = !DILocation(line: 131, column: 22, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 131, column: 6)
!1603 = !DILocation(line: 131, column: 7, scope: !1602)
!1604 = !DILocation(line: 131, column: 6, scope: !1582)
!1605 = !DILocation(line: 132, column: 3, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 131, column: 27)
!1607 = !DILocation(line: 136, column: 3, scope: !1606)
!1608 = !DILocation(line: 137, column: 2, scope: !1606)
!1609 = !DILocation(line: 394, column: 2, scope: !1610, inlinedAt: !1591)
!1610 = distinct !DILexicalBlock(scope: !1586, file: !1587, line: 394, column: 2)
!1611 = !{i32 -2145508461}
!1612 = !DILocation(line: 394, column: 2, scope: !1613, inlinedAt: !1591)
!1613 = distinct !DILexicalBlock(scope: !1610, file: !1587, line: 394, column: 2)
!1614 = !DILocation(line: 140, column: 9, scope: !1582)
!1615 = !DILocation(line: 140, column: 2, scope: !1582)
!1616 = distinct !DISubprogram(name: "dma_fence_init", scope: !3, file: !3, line: 848, type: !1617, scopeLine: 850, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !61, !82, !65, !140, !140}
!1619 = !DILocalVariable(name: "fence", arg: 1, scope: !1616, file: !3, line: 848, type: !61)
!1620 = !DILocation(line: 848, column: 34, scope: !1616)
!1621 = !DILocalVariable(name: "ops", arg: 2, scope: !1616, file: !3, line: 848, type: !82)
!1622 = !DILocation(line: 848, column: 69, scope: !1616)
!1623 = !DILocalVariable(name: "lock", arg: 3, scope: !1616, file: !3, line: 849, type: !65)
!1624 = !DILocation(line: 849, column: 21, scope: !1616)
!1625 = !DILocalVariable(name: "context", arg: 4, scope: !1616, file: !3, line: 849, type: !140)
!1626 = !DILocation(line: 849, column: 31, scope: !1616)
!1627 = !DILocalVariable(name: "seqno", arg: 5, scope: !1616, file: !3, line: 849, type: !140)
!1628 = !DILocation(line: 849, column: 44, scope: !1616)
!1629 = !DILocation(line: 851, column: 2, scope: !1616)
!1630 = !DILocation(line: 851, column: 2, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 851, column: 2)
!1632 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 851, column: 2)
!1633 = !DILocation(line: 851, column: 2, scope: !1632)
!1634 = !DILocation(line: 851, column: 2, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 851, column: 2)
!1636 = !DILocation(line: 851, column: 2, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 851, column: 2)
!1638 = !DILocation(line: 851, column: 2, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 851, column: 2)
!1640 = !{i32 -2143243165, i32 -2143243136, i32 -2143243090, i32 -2143243032, i32 -2143242978, i32 -2143242924, i32 -2143242869, i32 -2143242838}
!1641 = !DILocation(line: 851, column: 2, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 851, column: 2)
!1643 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 851, column: 2)
!1644 = !{i32 -2143242388, i32 -2143242381, i32 -2143242327, i32 -2143242296, i32 -2143242266}
!1645 = !DILocation(line: 851, column: 2, scope: !1643)
!1646 = !DILocation(line: 852, column: 2, scope: !1616)
!1647 = !DILocation(line: 852, column: 2, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 852, column: 2)
!1649 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 852, column: 2)
!1650 = !DILocation(line: 852, column: 2, scope: !1649)
!1651 = !DILocation(line: 852, column: 2, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 852, column: 2)
!1653 = !DILocation(line: 852, column: 2, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 852, column: 2)
!1655 = !DILocation(line: 852, column: 2, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 852, column: 2)
!1657 = !{i32 -2143241871, i32 -2143241842, i32 -2143241796, i32 -2143241738, i32 -2143241684, i32 -2143241630, i32 -2143241575, i32 -2143241544}
!1658 = !DILocation(line: 852, column: 2, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 852, column: 2)
!1660 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 852, column: 2)
!1661 = !{i32 -2143241094, i32 -2143241087, i32 -2143241033, i32 -2143241002, i32 -2143240972}
!1662 = !DILocation(line: 852, column: 2, scope: !1660)
!1663 = !DILocation(line: 854, column: 13, scope: !1616)
!1664 = !DILocation(line: 854, column: 20, scope: !1616)
!1665 = !DILocation(line: 854, column: 2, scope: !1616)
!1666 = !DILocation(line: 855, column: 15, scope: !1616)
!1667 = !DILocation(line: 855, column: 2, scope: !1616)
!1668 = !DILocation(line: 855, column: 9, scope: !1616)
!1669 = !DILocation(line: 855, column: 13, scope: !1616)
!1670 = !DILocation(line: 856, column: 18, scope: !1616)
!1671 = !DILocation(line: 856, column: 25, scope: !1616)
!1672 = !DILocation(line: 856, column: 2, scope: !1616)
!1673 = !DILocation(line: 857, column: 16, scope: !1616)
!1674 = !DILocation(line: 857, column: 2, scope: !1616)
!1675 = !DILocation(line: 857, column: 9, scope: !1616)
!1676 = !DILocation(line: 857, column: 14, scope: !1616)
!1677 = !DILocation(line: 858, column: 19, scope: !1616)
!1678 = !DILocation(line: 858, column: 2, scope: !1616)
!1679 = !DILocation(line: 858, column: 9, scope: !1616)
!1680 = !DILocation(line: 858, column: 17, scope: !1616)
!1681 = !DILocation(line: 859, column: 17, scope: !1616)
!1682 = !DILocation(line: 859, column: 2, scope: !1616)
!1683 = !DILocation(line: 859, column: 9, scope: !1616)
!1684 = !DILocation(line: 859, column: 15, scope: !1616)
!1685 = !DILocation(line: 860, column: 2, scope: !1616)
!1686 = !DILocation(line: 860, column: 9, scope: !1616)
!1687 = !DILocation(line: 860, column: 15, scope: !1616)
!1688 = !DILocation(line: 861, column: 2, scope: !1616)
!1689 = !DILocation(line: 861, column: 9, scope: !1616)
!1690 = !DILocation(line: 861, column: 15, scope: !1616)
!1691 = !DILocation(line: 863, column: 23, scope: !1616)
!1692 = !DILocation(line: 863, column: 2, scope: !1616)
!1693 = !DILocation(line: 864, column: 1, scope: !1616)
!1694 = distinct !DISubprogram(name: "dma_fence_signal_locked", scope: !3, file: !3, line: 330, type: !1695, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!116, !61}
!1697 = !DILocalVariable(name: "fence", arg: 1, scope: !1694, file: !3, line: 330, type: !61)
!1698 = !DILocation(line: 330, column: 47, scope: !1694)
!1699 = !DILocalVariable(name: "cur", scope: !1694, file: !3, line: 332, type: !46)
!1700 = !DILocation(line: 332, column: 23, scope: !1694)
!1701 = !DILocalVariable(name: "tmp", scope: !1694, file: !3, line: 332, type: !46)
!1702 = !DILocation(line: 332, column: 29, scope: !1694)
!1703 = !DILocalVariable(name: "cb_list", scope: !1694, file: !3, line: 333, type: !50)
!1704 = !DILocation(line: 333, column: 19, scope: !1694)
!1705 = !DILocation(line: 335, column: 2, scope: !1694)
!1706 = !DILocation(line: 335, column: 2, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 335, column: 2)
!1708 = !DILocation(line: 337, column: 6, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 337, column: 6)
!1710 = !DILocation(line: 337, column: 6, scope: !1694)
!1711 = !DILocation(line: 339, column: 3, scope: !1709)
!1712 = !DILocation(line: 342, column: 16, scope: !1694)
!1713 = !DILocation(line: 342, column: 23, scope: !1694)
!1714 = !DILocation(line: 342, column: 2, scope: !1694)
!1715 = !DILocation(line: 344, column: 21, scope: !1694)
!1716 = !DILocation(line: 344, column: 2, scope: !1694)
!1717 = !DILocation(line: 344, column: 9, scope: !1694)
!1718 = !DILocation(line: 344, column: 19, scope: !1694)
!1719 = !DILocation(line: 345, column: 41, scope: !1694)
!1720 = !DILocation(line: 345, column: 48, scope: !1694)
!1721 = !DILocation(line: 345, column: 2, scope: !1694)
!1722 = !DILocation(line: 346, column: 27, scope: !1694)
!1723 = !DILocation(line: 346, column: 2, scope: !1694)
!1724 = !DILocalVariable(name: "__mptr", scope: !1725, file: !3, line: 348, type: !45)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 348, column: 2)
!1726 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 348, column: 2)
!1727 = !DILocation(line: 348, column: 2, scope: !1725)
!1728 = !DILocation(line: 348, column: 2, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 348, column: 2)
!1730 = !DILocation(line: 348, column: 2, scope: !1726)
!1731 = !DILocalVariable(name: "__mptr", scope: !1732, file: !3, line: 348, type: !45)
!1732 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 348, column: 2)
!1733 = !DILocation(line: 348, column: 2, scope: !1732)
!1734 = !DILocation(line: 348, column: 2, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 348, column: 2)
!1736 = !DILocation(line: 348, column: 2, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 348, column: 2)
!1738 = !DILocation(line: 349, column: 19, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 348, column: 53)
!1740 = !DILocation(line: 349, column: 24, scope: !1739)
!1741 = !DILocation(line: 349, column: 3, scope: !1739)
!1742 = !DILocation(line: 350, column: 3, scope: !1739)
!1743 = !DILocation(line: 350, column: 8, scope: !1739)
!1744 = !DILocation(line: 350, column: 13, scope: !1739)
!1745 = !DILocation(line: 350, column: 20, scope: !1739)
!1746 = !DILocation(line: 351, column: 2, scope: !1739)
!1747 = !DILocalVariable(name: "__mptr", scope: !1748, file: !3, line: 348, type: !45)
!1748 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 348, column: 2)
!1749 = !DILocation(line: 348, column: 2, scope: !1748)
!1750 = !DILocation(line: 348, column: 2, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 348, column: 2)
!1752 = distinct !{!1752, !1730, !1753}
!1753 = !DILocation(line: 351, column: 2, scope: !1726)
!1754 = !DILocation(line: 353, column: 2, scope: !1694)
!1755 = !DILocation(line: 354, column: 1, scope: !1694)
!1756 = distinct !DISubprogram(name: "dma_fence_get", scope: !6, file: !6, line: 288, type: !1757, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!61, !61}
!1759 = !DILocalVariable(name: "fence", arg: 1, scope: !1756, file: !6, line: 288, type: !61)
!1760 = !DILocation(line: 288, column: 65, scope: !1756)
!1761 = !DILocation(line: 290, column: 6, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1756, file: !6, line: 290, column: 6)
!1763 = !DILocation(line: 290, column: 6, scope: !1756)
!1764 = !DILocation(line: 291, column: 13, scope: !1762)
!1765 = !DILocation(line: 291, column: 20, scope: !1762)
!1766 = !DILocation(line: 291, column: 3, scope: !1762)
!1767 = !DILocation(line: 292, column: 9, scope: !1756)
!1768 = !DILocation(line: 292, column: 2, scope: !1756)
!1769 = distinct !DISubprogram(name: "dma_fence_context_alloc", scope: !3, file: !3, line: 152, type: !1770, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!140, !7}
!1772 = !DILocalVariable(name: "v", arg: 1, scope: !1773, file: !1774, line: 99, type: !1777)
!1773 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1774, file: !1774, line: 99, type: !1775, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1774 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !1777, !1096}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1779)
!1779 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1780 = !DILocation(line: 99, column: 79, scope: !1773, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 922, column: 2, scope: !1782, inlinedAt: !1787)
!1782 = distinct !DISubprogram(name: "atomic64_fetch_add", scope: !1783, file: !1783, line: 920, type: !1784, scopeLine: 921, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1783 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!125, !125, !1786}
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1787 = distinct !DILocation(line: 155, column: 9, scope: !1769)
!1788 = !DILocalVariable(name: "size", arg: 2, scope: !1773, file: !1774, line: 99, type: !1096)
!1789 = !DILocation(line: 99, column: 89, scope: !1773, inlinedAt: !1781)
!1790 = !DILocalVariable(name: "i", arg: 1, scope: !1782, file: !1783, line: 920, type: !125)
!1791 = !DILocation(line: 920, column: 24, scope: !1782, inlinedAt: !1787)
!1792 = !DILocalVariable(name: "v", arg: 2, scope: !1782, file: !1783, line: 920, type: !1786)
!1793 = !DILocation(line: 920, column: 39, scope: !1782, inlinedAt: !1787)
!1794 = !DILocalVariable(name: "num", arg: 1, scope: !1769, file: !3, line: 152, type: !7)
!1795 = !DILocation(line: 152, column: 38, scope: !1769)
!1796 = !DILocalVariable(name: "__ret_warn_on", scope: !1797, file: !3, line: 154, type: !116)
!1797 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 154, column: 2)
!1798 = !DILocation(line: 154, column: 2, scope: !1797)
!1799 = !DILocation(line: 154, column: 2, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 154, column: 2)
!1801 = !DILocation(line: 154, column: 2, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 154, column: 2)
!1803 = !DILocation(line: 154, column: 2, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 154, column: 2)
!1805 = !DILocation(line: 154, column: 2, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 154, column: 2)
!1807 = !{i32 -2143274301, i32 -2143274272, i32 -2143274226, i32 -2143274168, i32 -2143274114, i32 -2143274060, i32 -2143274005, i32 -2143273974}
!1808 = !DILocation(line: 154, column: 2, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 154, column: 2)
!1810 = !{i32 -2143273565, i32 -2143273558, i32 -2143273506, i32 -2143273475, i32 -2143273445}
!1811 = !DILocation(line: 154, column: 2, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 154, column: 2)
!1813 = !DILocation(line: 155, column: 28, scope: !1769)
!1814 = !DILocation(line: 922, column: 31, scope: !1782, inlinedAt: !1787)
!1815 = !DILocation(line: 101, column: 20, scope: !1773, inlinedAt: !1781)
!1816 = !DILocation(line: 101, column: 23, scope: !1773, inlinedAt: !1781)
!1817 = !DILocation(line: 101, column: 2, scope: !1773, inlinedAt: !1781)
!1818 = !DILocation(line: 102, column: 2, scope: !1773, inlinedAt: !1781)
!1819 = !DILocation(line: 923, column: 33, scope: !1782, inlinedAt: !1787)
!1820 = !DILocation(line: 923, column: 36, scope: !1782, inlinedAt: !1787)
!1821 = !DILocation(line: 923, column: 9, scope: !1782, inlinedAt: !1787)
!1822 = !DILocation(line: 155, column: 2, scope: !1769)
!1823 = distinct !DISubprogram(name: "test_and_set_bit", scope: !1824, file: !1824, line: 68, type: !1825, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1824 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!87, !106, !1827}
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !145)
!1829 = !DILocalVariable(name: "nr", arg: 1, scope: !1830, file: !1831, line: 136, type: !106)
!1830 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !1831, file: !1831, line: 136, type: !1825, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1831 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1832 = !DILocation(line: 136, column: 28, scope: !1830, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 71, column: 9, scope: !1823)
!1834 = !DILocalVariable(name: "addr", arg: 2, scope: !1830, file: !1831, line: 136, type: !1827)
!1835 = !DILocation(line: 136, column: 56, scope: !1830, inlinedAt: !1833)
!1836 = !DILocalVariable(name: "c", scope: !1837, file: !1831, line: 138, type: !87)
!1837 = distinct !DILexicalBlock(scope: !1830, file: !1831, line: 138, column: 9)
!1838 = !DILocation(line: 138, column: 9, scope: !1837, inlinedAt: !1833)
!1839 = !DILocation(line: 99, column: 79, scope: !1773, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 70, column: 2, scope: !1823)
!1841 = !DILocation(line: 99, column: 89, scope: !1773, inlinedAt: !1840)
!1842 = !DILocalVariable(name: "nr", arg: 1, scope: !1823, file: !1824, line: 68, type: !106)
!1843 = !DILocation(line: 68, column: 42, scope: !1823)
!1844 = !DILocalVariable(name: "addr", arg: 2, scope: !1823, file: !1824, line: 68, type: !1827)
!1845 = !DILocation(line: 68, column: 70, scope: !1823)
!1846 = !DILocation(line: 70, column: 31, scope: !1823)
!1847 = !DILocation(line: 70, column: 38, scope: !1823)
!1848 = !DILocation(line: 70, column: 36, scope: !1823)
!1849 = !DILocation(line: 101, column: 20, scope: !1773, inlinedAt: !1840)
!1850 = !DILocation(line: 101, column: 23, scope: !1773, inlinedAt: !1840)
!1851 = !DILocation(line: 101, column: 2, scope: !1773, inlinedAt: !1840)
!1852 = !DILocation(line: 102, column: 2, scope: !1773, inlinedAt: !1840)
!1853 = !DILocation(line: 71, column: 31, scope: !1823)
!1854 = !DILocation(line: 71, column: 35, scope: !1823)
!1855 = !{i32 -2147120311, i32 -2147120215}
!1856 = !DILocation(line: 71, column: 2, scope: !1823)
!1857 = distinct !DISubprogram(name: "list_replace", scope: !1858, file: !1858, line: 158, type: !1859, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1858 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !54, !54}
!1861 = !DILocalVariable(name: "old", arg: 1, scope: !1857, file: !1858, line: 158, type: !54)
!1862 = !DILocation(line: 158, column: 51, scope: !1857)
!1863 = !DILocalVariable(name: "new", arg: 2, scope: !1857, file: !1858, line: 159, type: !54)
!1864 = !DILocation(line: 159, column: 23, scope: !1857)
!1865 = !DILocation(line: 161, column: 14, scope: !1857)
!1866 = !DILocation(line: 161, column: 19, scope: !1857)
!1867 = !DILocation(line: 161, column: 2, scope: !1857)
!1868 = !DILocation(line: 161, column: 7, scope: !1857)
!1869 = !DILocation(line: 161, column: 12, scope: !1857)
!1870 = !DILocation(line: 162, column: 20, scope: !1857)
!1871 = !DILocation(line: 162, column: 2, scope: !1857)
!1872 = !DILocation(line: 162, column: 7, scope: !1857)
!1873 = !DILocation(line: 162, column: 13, scope: !1857)
!1874 = !DILocation(line: 162, column: 18, scope: !1857)
!1875 = !DILocation(line: 163, column: 14, scope: !1857)
!1876 = !DILocation(line: 163, column: 19, scope: !1857)
!1877 = !DILocation(line: 163, column: 2, scope: !1857)
!1878 = !DILocation(line: 163, column: 7, scope: !1857)
!1879 = !DILocation(line: 163, column: 12, scope: !1857)
!1880 = !DILocation(line: 164, column: 20, scope: !1857)
!1881 = !DILocation(line: 164, column: 2, scope: !1857)
!1882 = !DILocation(line: 164, column: 7, scope: !1857)
!1883 = !DILocation(line: 164, column: 13, scope: !1857)
!1884 = !DILocation(line: 164, column: 18, scope: !1857)
!1885 = !DILocation(line: 165, column: 1, scope: !1857)
!1886 = distinct !DISubprogram(name: "set_bit", scope: !1824, file: !1824, line: 26, type: !1887, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !106, !1827}
!1889 = !DILocalVariable(name: "nr", arg: 1, scope: !1890, file: !1831, line: 52, type: !106)
!1890 = distinct !DISubprogram(name: "arch_set_bit", scope: !1831, file: !1831, line: 52, type: !1887, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1891 = !DILocation(line: 52, column: 19, scope: !1890, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 29, column: 2, scope: !1886)
!1893 = !DILocalVariable(name: "addr", arg: 2, scope: !1890, file: !1831, line: 52, type: !1827)
!1894 = !DILocation(line: 52, column: 47, scope: !1890, inlinedAt: !1892)
!1895 = !DILocalVariable(name: "v", arg: 1, scope: !1896, file: !1774, line: 84, type: !1777)
!1896 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1774, file: !1774, line: 84, type: !1775, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1897 = !DILocation(line: 84, column: 74, scope: !1896, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 28, column: 2, scope: !1886)
!1899 = !DILocalVariable(name: "size", arg: 2, scope: !1896, file: !1774, line: 84, type: !1096)
!1900 = !DILocation(line: 84, column: 84, scope: !1896, inlinedAt: !1898)
!1901 = !DILocalVariable(name: "nr", arg: 1, scope: !1886, file: !1824, line: 26, type: !106)
!1902 = !DILocation(line: 26, column: 33, scope: !1886)
!1903 = !DILocalVariable(name: "addr", arg: 2, scope: !1886, file: !1824, line: 26, type: !1827)
!1904 = !DILocation(line: 26, column: 61, scope: !1886)
!1905 = !DILocation(line: 28, column: 26, scope: !1886)
!1906 = !DILocation(line: 28, column: 33, scope: !1886)
!1907 = !DILocation(line: 28, column: 31, scope: !1886)
!1908 = !DILocation(line: 86, column: 20, scope: !1896, inlinedAt: !1898)
!1909 = !DILocation(line: 86, column: 23, scope: !1896, inlinedAt: !1898)
!1910 = !DILocation(line: 86, column: 2, scope: !1896, inlinedAt: !1898)
!1911 = !DILocation(line: 87, column: 2, scope: !1896, inlinedAt: !1898)
!1912 = !DILocation(line: 29, column: 15, scope: !1886)
!1913 = !DILocation(line: 29, column: 19, scope: !1886)
!1914 = !DILocation(line: 54, column: 27, scope: !1915, inlinedAt: !1892)
!1915 = distinct !DILexicalBlock(scope: !1890, file: !1831, line: 54, column: 6)
!1916 = !DILocation(line: 54, column: 6, scope: !1915, inlinedAt: !1892)
!1917 = !DILocation(line: 54, column: 6, scope: !1890, inlinedAt: !1892)
!1918 = !DILocation(line: 56, column: 6, scope: !1919, inlinedAt: !1892)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !1831, line: 54, column: 32)
!1920 = !DILocation(line: 57, column: 12, scope: !1919, inlinedAt: !1892)
!1921 = !DILocation(line: 55, column: 3, scope: !1919, inlinedAt: !1892)
!1922 = !{i32 -2147124797}
!1923 = !DILocation(line: 59, column: 2, scope: !1919, inlinedAt: !1892)
!1924 = !DILocation(line: 61, column: 8, scope: !1925, inlinedAt: !1892)
!1925 = distinct !DILexicalBlock(scope: !1915, file: !1831, line: 59, column: 9)
!1926 = !DILocation(line: 61, column: 32, scope: !1925, inlinedAt: !1892)
!1927 = !DILocation(line: 60, column: 3, scope: !1925, inlinedAt: !1892)
!1928 = !{i32 -2147124665}
!1929 = !DILocation(line: 30, column: 1, scope: !1886)
!1930 = distinct !DISubprogram(name: "trace_dma_fence_signaled", scope: !1931, file: !1931, line: 65, type: !109, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1931 = !DIFile(filename: "./include/trace/events/dma_fence.h", directory: "/home/lizy2001/genbc/linux")
!1932 = !DILocalVariable(name: "fence", arg: 1, scope: !1930, file: !1931, line: 65, type: !61)
!1933 = !DILocation(line: 65, column: 1, scope: !1930)
!1934 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !1858, file: !1858, line: 33, type: !1935, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !54}
!1937 = !DILocalVariable(name: "list", arg: 1, scope: !1934, file: !1858, line: 33, type: !54)
!1938 = !DILocation(line: 33, column: 53, scope: !1934)
!1939 = !DILocation(line: 35, column: 2, scope: !1934)
!1940 = !DILocation(line: 35, column: 2, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1934, file: !1858, line: 35, column: 2)
!1942 = !DILocation(line: 35, column: 2, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1941, file: !1858, line: 35, column: 2)
!1944 = !DILocation(line: 35, column: 2, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !1858, line: 35, column: 2)
!1946 = !DILocation(line: 36, column: 15, scope: !1934)
!1947 = !DILocation(line: 36, column: 2, scope: !1934)
!1948 = !DILocation(line: 36, column: 8, scope: !1934)
!1949 = !DILocation(line: 36, column: 13, scope: !1934)
!1950 = !DILocation(line: 37, column: 1, scope: !1934)
!1951 = distinct !DISubprogram(name: "dma_fence_signal", scope: !3, file: !3, line: 370, type: !1695, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1952 = !DILocalVariable(name: "lock", arg: 1, scope: !1953, file: !1587, line: 407, type: !65)
!1953 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !1587, file: !1587, line: 407, type: !1954, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !65, !145}
!1956 = !DILocation(line: 407, column: 64, scope: !1953, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 383, column: 2, scope: !1951)
!1958 = !DILocalVariable(name: "flags", arg: 2, scope: !1953, file: !1587, line: 407, type: !145)
!1959 = !DILocation(line: 407, column: 84, scope: !1953, inlinedAt: !1957)
!1960 = !DILocalVariable(name: "lock", arg: 1, scope: !1961, file: !1587, line: 327, type: !65)
!1961 = distinct !DISubprogram(name: "spinlock_check", scope: !1587, file: !1587, line: 327, type: !1962, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!1964, !65}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!1965 = !DILocation(line: 327, column: 67, scope: !1961, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 381, column: 2, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 381, column: 2)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 381, column: 2)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 381, column: 2)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 381, column: 2)
!1971 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 381, column: 2)
!1972 = !DILocalVariable(name: "fence", arg: 1, scope: !1951, file: !3, line: 370, type: !61)
!1973 = !DILocation(line: 370, column: 40, scope: !1951)
!1974 = !DILocalVariable(name: "flags", scope: !1951, file: !3, line: 372, type: !145)
!1975 = !DILocation(line: 372, column: 16, scope: !1951)
!1976 = !DILocalVariable(name: "ret", scope: !1951, file: !3, line: 373, type: !116)
!1977 = !DILocation(line: 373, column: 6, scope: !1951)
!1978 = !DILocalVariable(name: "tmp", scope: !1951, file: !3, line: 374, type: !87)
!1979 = !DILocation(line: 374, column: 7, scope: !1951)
!1980 = !DILocation(line: 376, column: 7, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 376, column: 6)
!1982 = !DILocation(line: 376, column: 6, scope: !1951)
!1983 = !DILocation(line: 377, column: 3, scope: !1981)
!1984 = !DILocation(line: 379, column: 8, scope: !1951)
!1985 = !DILocation(line: 379, column: 6, scope: !1951)
!1986 = !DILocation(line: 381, column: 2, scope: !1951)
!1987 = !DILocation(line: 381, column: 2, scope: !1971)
!1988 = !DILocalVariable(name: "__dummy", scope: !1989, file: !3, line: 381, type: !145)
!1989 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 381, column: 2)
!1990 = !DILocation(line: 381, column: 2, scope: !1989)
!1991 = !DILocalVariable(name: "__dummy2", scope: !1989, file: !3, line: 381, type: !145)
!1992 = !DILocation(line: 381, column: 2, scope: !1970)
!1993 = !DILocation(line: 381, column: 2, scope: !1969)
!1994 = !DILocation(line: 381, column: 2, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 381, column: 2)
!1996 = !DILocalVariable(name: "__dummy", scope: !1997, file: !3, line: 381, type: !145)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 381, column: 2)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 381, column: 2)
!1999 = !DILocation(line: 381, column: 2, scope: !1997)
!2000 = !DILocalVariable(name: "__dummy2", scope: !1997, file: !3, line: 381, type: !145)
!2001 = !DILocation(line: 381, column: 2, scope: !1998)
!2002 = !DILocation(line: 381, column: 2, scope: !1968)
!2003 = !{i32 -2143266535}
!2004 = !DILocation(line: 381, column: 2, scope: !1967)
!2005 = !DILocation(line: 329, column: 10, scope: !1961, inlinedAt: !1966)
!2006 = !DILocation(line: 329, column: 16, scope: !1961, inlinedAt: !1966)
!2007 = !DILocation(line: 382, column: 32, scope: !1951)
!2008 = !DILocation(line: 382, column: 8, scope: !1951)
!2009 = !DILocation(line: 382, column: 6, scope: !1951)
!2010 = !DILocation(line: 383, column: 25, scope: !1951)
!2011 = !DILocation(line: 383, column: 32, scope: !1951)
!2012 = !DILocation(line: 383, column: 38, scope: !1951)
!2013 = !DILocalVariable(name: "__dummy", scope: !2014, file: !1587, line: 409, type: !145)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !1587, line: 409, column: 2)
!2015 = distinct !DILexicalBlock(scope: !1953, file: !1587, line: 409, column: 2)
!2016 = !DILocation(line: 409, column: 2, scope: !2014, inlinedAt: !1957)
!2017 = !DILocalVariable(name: "__dummy2", scope: !2014, file: !1587, line: 409, type: !145)
!2018 = !DILocalVariable(name: "__dummy", scope: !2019, file: !1587, line: 409, type: !145)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !1587, line: 409, column: 2)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !1587, line: 409, column: 2)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !1587, line: 409, column: 2)
!2022 = distinct !DILexicalBlock(scope: !2015, file: !1587, line: 409, column: 2)
!2023 = !DILocation(line: 409, column: 2, scope: !2019, inlinedAt: !1957)
!2024 = !DILocalVariable(name: "__dummy2", scope: !2019, file: !1587, line: 409, type: !145)
!2025 = !DILocation(line: 409, column: 2, scope: !2020, inlinedAt: !1957)
!2026 = !DILocation(line: 409, column: 2, scope: !2027, inlinedAt: !1957)
!2027 = distinct !DILexicalBlock(scope: !2022, file: !1587, line: 409, column: 2)
!2028 = !{i32 -2145506135}
!2029 = !DILocation(line: 409, column: 2, scope: !2030, inlinedAt: !1957)
!2030 = distinct !DILexicalBlock(scope: !2027, file: !1587, line: 409, column: 2)
!2031 = !DILocation(line: 385, column: 27, scope: !1951)
!2032 = !DILocation(line: 385, column: 2, scope: !1951)
!2033 = !DILocation(line: 387, column: 9, scope: !1951)
!2034 = !DILocation(line: 387, column: 2, scope: !1951)
!2035 = !DILocation(line: 388, column: 1, scope: !1951)
!2036 = distinct !DISubprogram(name: "dma_fence_begin_signalling", scope: !6, file: !6, line: 365, type: !2037, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!87}
!2039 = !DILocation(line: 367, column: 2, scope: !2036)
!2040 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2041, file: !2041, line: 666, type: !2042, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2041 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!145}
!2044 = !DILocalVariable(name: "f", scope: !2040, file: !2041, line: 668, type: !145)
!2045 = !DILocation(line: 668, column: 16, scope: !2040)
!2046 = !DILocation(line: 670, column: 6, scope: !2040)
!2047 = !DILocation(line: 670, column: 4, scope: !2040)
!2048 = !DILocation(line: 671, column: 2, scope: !2040)
!2049 = !DILocation(line: 672, column: 9, scope: !2040)
!2050 = !DILocation(line: 672, column: 2, scope: !2040)
!2051 = distinct !DISubprogram(name: "dma_fence_end_signalling", scope: !6, file: !6, line: 369, type: !2052, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !87}
!2054 = !DILocalVariable(name: "cookie", arg: 1, scope: !2051, file: !6, line: 369, type: !87)
!2055 = !DILocation(line: 369, column: 50, scope: !2051)
!2056 = !DILocation(line: 369, column: 59, scope: !2051)
!2057 = distinct !DISubprogram(name: "dma_fence_wait_timeout", scope: !3, file: !3, line: 410, type: !104, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2058 = !DILocalVariable(name: "fence", arg: 1, scope: !2057, file: !3, line: 410, type: !61)
!2059 = !DILocation(line: 410, column: 42, scope: !2057)
!2060 = !DILocalVariable(name: "intr", arg: 2, scope: !2057, file: !3, line: 410, type: !87)
!2061 = !DILocation(line: 410, column: 54, scope: !2057)
!2062 = !DILocalVariable(name: "timeout", arg: 3, scope: !2057, file: !3, line: 410, type: !106)
!2063 = !DILocation(line: 410, column: 72, scope: !2057)
!2064 = !DILocalVariable(name: "ret", scope: !2057, file: !3, line: 412, type: !106)
!2065 = !DILocation(line: 412, column: 14, scope: !2057)
!2066 = !DILocalVariable(name: "__ret_warn_on", scope: !2067, file: !3, line: 414, type: !116)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 414, column: 6)
!2068 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 414, column: 6)
!2069 = !DILocation(line: 414, column: 6, scope: !2067)
!2070 = !DILocation(line: 414, column: 6, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2067, file: !3, line: 414, column: 6)
!2072 = !DILocation(line: 414, column: 6, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 414, column: 6)
!2074 = !DILocation(line: 414, column: 6, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 414, column: 6)
!2076 = !DILocation(line: 414, column: 6, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 414, column: 6)
!2078 = !{i32 -2143265823, i32 -2143265794, i32 -2143265748, i32 -2143265690, i32 -2143265636, i32 -2143265582, i32 -2143265527, i32 -2143265496}
!2079 = !DILocation(line: 414, column: 6, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 414, column: 6)
!2081 = !{i32 -2143265087, i32 -2143265080, i32 -2143265028, i32 -2143264997, i32 -2143264967}
!2082 = !DILocation(line: 414, column: 6, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 414, column: 6)
!2084 = !DILocation(line: 414, column: 6, scope: !2068)
!2085 = !DILocation(line: 414, column: 6, scope: !2057)
!2086 = !DILocation(line: 415, column: 3, scope: !2068)
!2087 = !DILocation(line: 417, column: 2, scope: !2057)
!2088 = !DILocation(line: 417, column: 2, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 417, column: 2)
!2090 = !DILocation(line: 417, column: 2, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 417, column: 2)
!2092 = !DILocation(line: 419, column: 2, scope: !2057)
!2093 = !DILocation(line: 421, column: 29, scope: !2057)
!2094 = !DILocation(line: 421, column: 2, scope: !2057)
!2095 = !DILocation(line: 422, column: 6, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 422, column: 6)
!2097 = !DILocation(line: 422, column: 13, scope: !2096)
!2098 = !DILocation(line: 422, column: 18, scope: !2096)
!2099 = !DILocation(line: 422, column: 6, scope: !2057)
!2100 = !DILocation(line: 423, column: 9, scope: !2096)
!2101 = !DILocation(line: 423, column: 16, scope: !2096)
!2102 = !DILocation(line: 423, column: 21, scope: !2096)
!2103 = !DILocation(line: 423, column: 26, scope: !2096)
!2104 = !DILocation(line: 423, column: 33, scope: !2096)
!2105 = !DILocation(line: 423, column: 39, scope: !2096)
!2106 = !DILocation(line: 423, column: 7, scope: !2096)
!2107 = !DILocation(line: 423, column: 3, scope: !2096)
!2108 = !DILocation(line: 425, column: 32, scope: !2096)
!2109 = !DILocation(line: 425, column: 39, scope: !2096)
!2110 = !DILocation(line: 425, column: 45, scope: !2096)
!2111 = !DILocation(line: 425, column: 9, scope: !2096)
!2112 = !DILocation(line: 425, column: 7, scope: !2096)
!2113 = !DILocation(line: 426, column: 27, scope: !2057)
!2114 = !DILocation(line: 426, column: 2, scope: !2057)
!2115 = !DILocation(line: 427, column: 9, scope: !2057)
!2116 = !DILocation(line: 427, column: 2, scope: !2057)
!2117 = !DILocation(line: 428, column: 1, scope: !2057)
!2118 = distinct !DISubprogram(name: "__dma_fence_might_wait", scope: !6, file: !6, line: 370, type: !1085, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2119 = !DILocation(line: 370, column: 50, scope: !2118)
!2120 = distinct !DISubprogram(name: "trace_dma_fence_wait_start", scope: !1931, file: !1931, line: 72, type: !109, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2121 = !DILocalVariable(name: "fence", arg: 1, scope: !2120, file: !1931, line: 72, type: !61)
!2122 = !DILocation(line: 72, column: 1, scope: !2120)
!2123 = distinct !DISubprogram(name: "dma_fence_default_wait", scope: !3, file: !3, line: 674, type: !104, scopeLine: 675, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2124 = !DILocalVariable(name: "pscr_ret__", scope: !2125, file: !2126, line: 15, type: !172)
!2125 = distinct !DILexicalBlock(scope: !2127, file: !2126, line: 15, column: 9)
!2126 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!2127 = distinct !DISubprogram(name: "get_current", scope: !2126, file: !2126, line: 13, type: !2128, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!172}
!2130 = !DILocation(line: 15, column: 9, scope: !2125, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 718, column: 2, scope: !2123)
!2132 = !DILocalVariable(name: "__vpp_verify", scope: !2133, file: !2126, line: 15, type: !2134)
!2133 = distinct !DILexicalBlock(scope: !2125, file: !2126, line: 15, column: 9)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2136 = !DILocation(line: 15, column: 9, scope: !2133, inlinedAt: !2131)
!2137 = !DILocalVariable(name: "pfo_val__", scope: !2138, file: !2126, line: 15, type: !140)
!2138 = distinct !DILexicalBlock(scope: !2125, file: !2126, line: 15, column: 9)
!2139 = !DILocation(line: 15, column: 9, scope: !2138, inlinedAt: !2131)
!2140 = !DILocation(line: 15, column: 9, scope: !2125, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 712, column: 41, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 712, column: 7)
!2143 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 702, column: 75)
!2144 = !DILocation(line: 15, column: 9, scope: !2133, inlinedAt: !2141)
!2145 = !DILocation(line: 15, column: 9, scope: !2138, inlinedAt: !2141)
!2146 = !DILocation(line: 327, column: 67, scope: !1961, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 711, column: 3, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 711, column: 3)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 711, column: 3)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 711, column: 3)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 711, column: 3)
!2152 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 711, column: 3)
!2153 = !DILocation(line: 407, column: 64, scope: !1953, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 707, column: 3, scope: !2143)
!2155 = !DILocation(line: 407, column: 84, scope: !1953, inlinedAt: !2154)
!2156 = !DILocation(line: 15, column: 9, scope: !2125, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 706, column: 4, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 703, column: 7)
!2159 = !DILocation(line: 15, column: 9, scope: !2133, inlinedAt: !2157)
!2160 = !DILocation(line: 15, column: 9, scope: !2138, inlinedAt: !2157)
!2161 = !DILocation(line: 15, column: 9, scope: !2125, inlinedAt: !2162)
!2162 = distinct !DILocation(line: 704, column: 4, scope: !2158)
!2163 = !DILocation(line: 15, column: 9, scope: !2133, inlinedAt: !2162)
!2164 = !DILocation(line: 15, column: 9, scope: !2138, inlinedAt: !2162)
!2165 = !DILocation(line: 15, column: 9, scope: !2125, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 699, column: 12, scope: !2123)
!2167 = !DILocation(line: 15, column: 9, scope: !2133, inlinedAt: !2166)
!2168 = !DILocation(line: 15, column: 9, scope: !2138, inlinedAt: !2166)
!2169 = !DILocation(line: 15, column: 9, scope: !2125, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 685, column: 29, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 685, column: 6)
!2172 = !DILocation(line: 15, column: 9, scope: !2133, inlinedAt: !2170)
!2173 = !DILocation(line: 15, column: 9, scope: !2138, inlinedAt: !2170)
!2174 = !DILocation(line: 407, column: 64, scope: !1953, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 721, column: 2, scope: !2123)
!2176 = !DILocation(line: 407, column: 84, scope: !1953, inlinedAt: !2175)
!2177 = !DILocation(line: 327, column: 67, scope: !1961, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 683, column: 2, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 683, column: 2)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 683, column: 2)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 683, column: 2)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 683, column: 2)
!2183 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 683, column: 2)
!2184 = !DILocalVariable(name: "fence", arg: 1, scope: !2123, file: !3, line: 674, type: !61)
!2185 = !DILocation(line: 674, column: 42, scope: !2123)
!2186 = !DILocalVariable(name: "intr", arg: 2, scope: !2123, file: !3, line: 674, type: !87)
!2187 = !DILocation(line: 674, column: 54, scope: !2123)
!2188 = !DILocalVariable(name: "timeout", arg: 3, scope: !2123, file: !3, line: 674, type: !106)
!2189 = !DILocation(line: 674, column: 72, scope: !2123)
!2190 = !DILocalVariable(name: "cb", scope: !2123, file: !3, line: 676, type: !1563)
!2191 = !DILocation(line: 676, column: 25, scope: !2123)
!2192 = !DILocalVariable(name: "flags", scope: !2123, file: !3, line: 677, type: !145)
!2193 = !DILocation(line: 677, column: 16, scope: !2123)
!2194 = !DILocalVariable(name: "ret", scope: !2123, file: !3, line: 678, type: !106)
!2195 = !DILocation(line: 678, column: 14, scope: !2123)
!2196 = !DILocation(line: 678, column: 20, scope: !2123)
!2197 = !DILocation(line: 678, column: 30, scope: !2123)
!2198 = !DILocation(line: 680, column: 45, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 680, column: 6)
!2200 = !DILocation(line: 680, column: 52, scope: !2199)
!2201 = !DILocation(line: 680, column: 6, scope: !2199)
!2202 = !DILocation(line: 680, column: 6, scope: !2123)
!2203 = !DILocation(line: 681, column: 10, scope: !2199)
!2204 = !DILocation(line: 681, column: 3, scope: !2199)
!2205 = !DILocation(line: 683, column: 2, scope: !2123)
!2206 = !DILocation(line: 683, column: 2, scope: !2183)
!2207 = !DILocalVariable(name: "__dummy", scope: !2208, file: !3, line: 683, type: !145)
!2208 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 683, column: 2)
!2209 = !DILocation(line: 683, column: 2, scope: !2208)
!2210 = !DILocalVariable(name: "__dummy2", scope: !2208, file: !3, line: 683, type: !145)
!2211 = !DILocation(line: 683, column: 2, scope: !2182)
!2212 = !DILocation(line: 683, column: 2, scope: !2181)
!2213 = !DILocation(line: 683, column: 2, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 683, column: 2)
!2215 = !DILocalVariable(name: "__dummy", scope: !2216, file: !3, line: 683, type: !145)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 683, column: 2)
!2217 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 683, column: 2)
!2218 = !DILocation(line: 683, column: 2, scope: !2216)
!2219 = !DILocalVariable(name: "__dummy2", scope: !2216, file: !3, line: 683, type: !145)
!2220 = !DILocation(line: 683, column: 2, scope: !2217)
!2221 = !DILocation(line: 683, column: 2, scope: !2180)
!2222 = !{i32 -2143250073}
!2223 = !DILocation(line: 683, column: 2, scope: !2179)
!2224 = !DILocation(line: 329, column: 10, scope: !1961, inlinedAt: !2178)
!2225 = !DILocation(line: 329, column: 16, scope: !1961, inlinedAt: !2178)
!2226 = !DILocation(line: 685, column: 6, scope: !2171)
!2227 = !DILocation(line: 685, column: 11, scope: !2171)
!2228 = !{i32 -2146672816}
!2229 = !DILocation(line: 685, column: 14, scope: !2171)
!2230 = !DILocation(line: 685, column: 6, scope: !2123)
!2231 = !DILocation(line: 686, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 685, column: 39)
!2233 = !DILocation(line: 687, column: 3, scope: !2232)
!2234 = !DILocation(line: 690, column: 36, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 690, column: 6)
!2236 = !DILocation(line: 690, column: 7, scope: !2235)
!2237 = !DILocation(line: 690, column: 6, scope: !2123)
!2238 = !DILocation(line: 691, column: 3, scope: !2235)
!2239 = !DILocation(line: 693, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 693, column: 6)
!2241 = !DILocation(line: 693, column: 6, scope: !2123)
!2242 = !DILocation(line: 694, column: 7, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 693, column: 16)
!2244 = !DILocation(line: 695, column: 3, scope: !2243)
!2245 = !DILocation(line: 698, column: 5, scope: !2123)
!2246 = !DILocation(line: 698, column: 10, scope: !2123)
!2247 = !DILocation(line: 698, column: 15, scope: !2123)
!2248 = !DILocation(line: 699, column: 5, scope: !2123)
!2249 = !DILocation(line: 699, column: 10, scope: !2123)
!2250 = !DILocation(line: 700, column: 15, scope: !2123)
!2251 = !DILocation(line: 700, column: 20, scope: !2123)
!2252 = !DILocation(line: 700, column: 27, scope: !2123)
!2253 = !DILocation(line: 700, column: 34, scope: !2123)
!2254 = !DILocation(line: 700, column: 2, scope: !2123)
!2255 = !DILocation(line: 702, column: 2, scope: !2123)
!2256 = !DILocation(line: 702, column: 49, scope: !2123)
!2257 = !DILocation(line: 702, column: 56, scope: !2123)
!2258 = !DILocation(line: 702, column: 10, scope: !2123)
!2259 = !DILocation(line: 702, column: 63, scope: !2123)
!2260 = !DILocation(line: 702, column: 66, scope: !2123)
!2261 = !DILocation(line: 702, column: 70, scope: !2123)
!2262 = !DILocation(line: 0, scope: !2123)
!2263 = !DILocation(line: 703, column: 7, scope: !2158)
!2264 = !DILocation(line: 703, column: 7, scope: !2143)
!2265 = !DILocation(line: 704, column: 4, scope: !2158)
!2266 = !DILocation(line: 706, column: 4, scope: !2158)
!2267 = !DILocation(line: 707, column: 26, scope: !2143)
!2268 = !DILocation(line: 707, column: 33, scope: !2143)
!2269 = !DILocation(line: 707, column: 39, scope: !2143)
!2270 = !DILocation(line: 409, column: 2, scope: !2014, inlinedAt: !2154)
!2271 = !DILocation(line: 409, column: 2, scope: !2019, inlinedAt: !2154)
!2272 = !DILocation(line: 409, column: 2, scope: !2020, inlinedAt: !2154)
!2273 = !DILocation(line: 409, column: 2, scope: !2027, inlinedAt: !2154)
!2274 = !DILocation(line: 409, column: 2, scope: !2030, inlinedAt: !2154)
!2275 = !DILocation(line: 709, column: 26, scope: !2143)
!2276 = !DILocation(line: 709, column: 9, scope: !2143)
!2277 = !DILocation(line: 709, column: 7, scope: !2143)
!2278 = !DILocation(line: 711, column: 3, scope: !2143)
!2279 = !DILocation(line: 711, column: 3, scope: !2152)
!2280 = !DILocalVariable(name: "__dummy", scope: !2281, file: !3, line: 711, type: !145)
!2281 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 711, column: 3)
!2282 = !DILocation(line: 711, column: 3, scope: !2281)
!2283 = !DILocalVariable(name: "__dummy2", scope: !2281, file: !3, line: 711, type: !145)
!2284 = !DILocation(line: 711, column: 3, scope: !2151)
!2285 = !DILocation(line: 711, column: 3, scope: !2150)
!2286 = !DILocation(line: 711, column: 3, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 711, column: 3)
!2288 = !DILocalVariable(name: "__dummy", scope: !2289, file: !3, line: 711, type: !145)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 711, column: 3)
!2290 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 711, column: 3)
!2291 = !DILocation(line: 711, column: 3, scope: !2289)
!2292 = !DILocalVariable(name: "__dummy2", scope: !2289, file: !3, line: 711, type: !145)
!2293 = !DILocation(line: 711, column: 3, scope: !2290)
!2294 = !DILocation(line: 711, column: 3, scope: !2149)
!2295 = !{i32 -2143248904}
!2296 = !DILocation(line: 711, column: 3, scope: !2148)
!2297 = !DILocation(line: 329, column: 10, scope: !1961, inlinedAt: !2147)
!2298 = !DILocation(line: 329, column: 16, scope: !1961, inlinedAt: !2147)
!2299 = !DILocation(line: 712, column: 7, scope: !2142)
!2300 = !DILocation(line: 712, column: 11, scope: !2142)
!2301 = !DILocation(line: 712, column: 15, scope: !2142)
!2302 = !DILocation(line: 712, column: 18, scope: !2142)
!2303 = !DILocation(line: 712, column: 23, scope: !2142)
!2304 = !DILocation(line: 712, column: 26, scope: !2142)
!2305 = !DILocation(line: 712, column: 7, scope: !2143)
!2306 = !DILocation(line: 713, column: 8, scope: !2142)
!2307 = !DILocation(line: 713, column: 4, scope: !2142)
!2308 = distinct !{!2308, !2255, !2309}
!2309 = !DILocation(line: 714, column: 2, scope: !2123)
!2310 = !DILocation(line: 716, column: 22, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 716, column: 6)
!2312 = !DILocation(line: 716, column: 27, scope: !2311)
!2313 = !DILocation(line: 716, column: 7, scope: !2311)
!2314 = !DILocation(line: 716, column: 6, scope: !2123)
!2315 = !DILocation(line: 717, column: 16, scope: !2311)
!2316 = !DILocation(line: 717, column: 21, scope: !2311)
!2317 = !DILocation(line: 717, column: 3, scope: !2311)
!2318 = !DILocation(line: 718, column: 2, scope: !2123)
!2319 = !DILabel(scope: !2123, name: "out", file: !3, line: 720)
!2320 = !DILocation(line: 720, column: 1, scope: !2123)
!2321 = !DILocation(line: 721, column: 25, scope: !2123)
!2322 = !DILocation(line: 721, column: 32, scope: !2123)
!2323 = !DILocation(line: 721, column: 38, scope: !2123)
!2324 = !DILocation(line: 409, column: 2, scope: !2014, inlinedAt: !2175)
!2325 = !DILocation(line: 409, column: 2, scope: !2019, inlinedAt: !2175)
!2326 = !DILocation(line: 409, column: 2, scope: !2020, inlinedAt: !2175)
!2327 = !DILocation(line: 409, column: 2, scope: !2027, inlinedAt: !2175)
!2328 = !DILocation(line: 409, column: 2, scope: !2030, inlinedAt: !2175)
!2329 = !DILocation(line: 722, column: 9, scope: !2123)
!2330 = !DILocation(line: 722, column: 2, scope: !2123)
!2331 = !DILocation(line: 723, column: 1, scope: !2123)
!2332 = distinct !DISubprogram(name: "trace_dma_fence_wait_end", scope: !1931, file: !1931, line: 79, type: !109, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2333 = !DILocalVariable(name: "fence", arg: 1, scope: !2332, file: !1931, line: 79, type: !61)
!2334 = !DILocation(line: 79, column: 1, scope: !2332)
!2335 = distinct !DISubprogram(name: "dma_fence_release", scope: !3, file: !3, line: 438, type: !2336, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!2339 = !DILocation(line: 407, column: 64, scope: !1953, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 463, column: 3, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 450, column: 35)
!2342 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 445, column: 6)
!2343 = !DILocation(line: 407, column: 84, scope: !1953, inlinedAt: !2340)
!2344 = !DILocation(line: 327, column: 67, scope: !1961, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 460, column: 3, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 460, column: 3)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 460, column: 3)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 460, column: 3)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 460, column: 3)
!2350 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 460, column: 3)
!2351 = !DILocalVariable(name: "kref", arg: 1, scope: !2335, file: !3, line: 438, type: !2338)
!2352 = !DILocation(line: 438, column: 37, scope: !2335)
!2353 = !DILocalVariable(name: "fence", scope: !2335, file: !3, line: 440, type: !61)
!2354 = !DILocation(line: 440, column: 20, scope: !2335)
!2355 = !DILocalVariable(name: "__mptr", scope: !2356, file: !3, line: 441, type: !45)
!2356 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 441, column: 3)
!2357 = !DILocation(line: 441, column: 3, scope: !2356)
!2358 = !DILocation(line: 441, column: 3, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 441, column: 3)
!2360 = !DILocation(line: 443, column: 26, scope: !2335)
!2361 = !DILocation(line: 443, column: 2, scope: !2335)
!2362 = !DILocalVariable(name: "__ret_warn_on", scope: !2363, file: !3, line: 445, type: !116)
!2363 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 445, column: 6)
!2364 = !DILocation(line: 445, column: 6, scope: !2363)
!2365 = !DILocation(line: 0, scope: !2363)
!2366 = !DILocation(line: 445, column: 6, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 445, column: 6)
!2368 = !DILocation(line: 445, column: 6, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 445, column: 6)
!2370 = !DILocation(line: 445, column: 6, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 445, column: 6)
!2372 = !DILocation(line: 445, column: 6, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 445, column: 6)
!2374 = !DILocation(line: 445, column: 6, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 445, column: 6)
!2376 = !DILocation(line: 445, column: 6, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 445, column: 6)
!2378 = !{i32 -2143262142, i32 -2143262113, i32 -2143262067, i32 -2143262009, i32 -2143261955, i32 -2143261901, i32 -2143261846, i32 -2143261815}
!2379 = !DILocation(line: 445, column: 6, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 445, column: 6)
!2381 = !{i32 -2143261395, i32 -2143261388, i32 -2143261336, i32 -2143261305, i32 -2143261275}
!2382 = !DILocation(line: 445, column: 6, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 445, column: 6)
!2384 = !DILocation(line: 445, column: 6, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 445, column: 6)
!2386 = !DILocation(line: 445, column: 6, scope: !2342)
!2387 = !DILocation(line: 445, column: 6, scope: !2335)
!2388 = !DILocalVariable(name: "flags", scope: !2341, file: !3, line: 451, type: !145)
!2389 = !DILocation(line: 451, column: 17, scope: !2341)
!2390 = !DILocation(line: 460, column: 3, scope: !2341)
!2391 = !DILocation(line: 460, column: 3, scope: !2350)
!2392 = !DILocalVariable(name: "__dummy", scope: !2393, file: !3, line: 460, type: !145)
!2393 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 460, column: 3)
!2394 = !DILocation(line: 460, column: 3, scope: !2393)
!2395 = !DILocalVariable(name: "__dummy2", scope: !2393, file: !3, line: 460, type: !145)
!2396 = !DILocation(line: 460, column: 3, scope: !2349)
!2397 = !DILocation(line: 460, column: 3, scope: !2348)
!2398 = !DILocation(line: 460, column: 3, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 460, column: 3)
!2400 = !DILocalVariable(name: "__dummy", scope: !2401, file: !3, line: 460, type: !145)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 460, column: 3)
!2402 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 460, column: 3)
!2403 = !DILocation(line: 460, column: 3, scope: !2401)
!2404 = !DILocalVariable(name: "__dummy2", scope: !2401, file: !3, line: 460, type: !145)
!2405 = !DILocation(line: 460, column: 3, scope: !2402)
!2406 = !DILocation(line: 460, column: 3, scope: !2347)
!2407 = !{i32 -2143260278}
!2408 = !DILocation(line: 460, column: 3, scope: !2346)
!2409 = !DILocation(line: 329, column: 10, scope: !1961, inlinedAt: !2345)
!2410 = !DILocation(line: 329, column: 16, scope: !1961, inlinedAt: !2345)
!2411 = !DILocation(line: 461, column: 3, scope: !2341)
!2412 = !DILocation(line: 461, column: 10, scope: !2341)
!2413 = !DILocation(line: 461, column: 16, scope: !2341)
!2414 = !DILocation(line: 462, column: 27, scope: !2341)
!2415 = !DILocation(line: 462, column: 3, scope: !2341)
!2416 = !DILocation(line: 463, column: 26, scope: !2341)
!2417 = !DILocation(line: 463, column: 33, scope: !2341)
!2418 = !DILocation(line: 463, column: 39, scope: !2341)
!2419 = !DILocation(line: 409, column: 2, scope: !2014, inlinedAt: !2340)
!2420 = !DILocation(line: 409, column: 2, scope: !2019, inlinedAt: !2340)
!2421 = !DILocation(line: 409, column: 2, scope: !2020, inlinedAt: !2340)
!2422 = !DILocation(line: 409, column: 2, scope: !2027, inlinedAt: !2340)
!2423 = !DILocation(line: 409, column: 2, scope: !2030, inlinedAt: !2340)
!2424 = !DILocation(line: 464, column: 2, scope: !2341)
!2425 = !DILocation(line: 466, column: 6, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 466, column: 6)
!2427 = !DILocation(line: 466, column: 13, scope: !2426)
!2428 = !DILocation(line: 466, column: 18, scope: !2426)
!2429 = !DILocation(line: 466, column: 6, scope: !2335)
!2430 = !DILocation(line: 467, column: 3, scope: !2426)
!2431 = !DILocation(line: 467, column: 10, scope: !2426)
!2432 = !DILocation(line: 467, column: 15, scope: !2426)
!2433 = !DILocation(line: 467, column: 23, scope: !2426)
!2434 = !DILocation(line: 469, column: 18, scope: !2426)
!2435 = !DILocation(line: 469, column: 3, scope: !2426)
!2436 = !DILocation(line: 470, column: 1, scope: !2335)
!2437 = distinct !DISubprogram(name: "trace_dma_fence_destroy", scope: !1931, file: !1931, line: 51, type: !109, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2438 = !DILocalVariable(name: "fence", arg: 1, scope: !2437, file: !1931, line: 51, type: !61)
!2439 = !DILocation(line: 51, column: 1, scope: !2437)
!2440 = distinct !DISubprogram(name: "list_empty", scope: !1858, file: !1858, line: 280, type: !2441, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!116, !2443}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!2445 = !DILocalVariable(name: "head", arg: 1, scope: !2440, file: !1858, line: 280, type: !2443)
!2446 = !DILocation(line: 280, column: 54, scope: !2440)
!2447 = !DILocation(line: 282, column: 9, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2440, file: !1858, line: 282, column: 9)
!2449 = !DILocation(line: 282, column: 9, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2448, file: !1858, line: 282, column: 9)
!2451 = !DILocation(line: 282, column: 34, scope: !2440)
!2452 = !DILocation(line: 282, column: 31, scope: !2440)
!2453 = !DILocation(line: 282, column: 2, scope: !2440)
!2454 = distinct !DISubprogram(name: "test_bit", scope: !2455, file: !2455, line: 132, type: !2456, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2455 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!87, !106, !2458}
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1828)
!2460 = !DILocalVariable(name: "nr", arg: 1, scope: !2461, file: !1831, line: 210, type: !106)
!2461 = distinct !DISubprogram(name: "variable_test_bit", scope: !1831, file: !1831, line: 210, type: !2456, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2462 = !DILocation(line: 210, column: 52, scope: !2461, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 135, column: 9, scope: !2454)
!2464 = !DILocalVariable(name: "addr", arg: 2, scope: !2461, file: !1831, line: 210, type: !2458)
!2465 = !DILocation(line: 210, column: 86, scope: !2461, inlinedAt: !2463)
!2466 = !DILocalVariable(name: "oldbit", scope: !2461, file: !1831, line: 212, type: !87)
!2467 = !DILocation(line: 212, column: 7, scope: !2461, inlinedAt: !2463)
!2468 = !DILocalVariable(name: "nr", arg: 1, scope: !2469, file: !1831, line: 204, type: !106)
!2469 = distinct !DISubprogram(name: "constant_test_bit", scope: !1831, file: !1831, line: 204, type: !2456, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2470 = !DILocation(line: 204, column: 52, scope: !2469, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 135, column: 9, scope: !2454)
!2472 = !DILocalVariable(name: "addr", arg: 2, scope: !2469, file: !1831, line: 204, type: !2458)
!2473 = !DILocation(line: 204, column: 86, scope: !2469, inlinedAt: !2471)
!2474 = !DILocalVariable(name: "v", arg: 1, scope: !2475, file: !1774, line: 69, type: !1777)
!2475 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1774, file: !1774, line: 69, type: !1775, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2476 = !DILocation(line: 69, column: 73, scope: !2475, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 134, column: 2, scope: !2454)
!2478 = !DILocalVariable(name: "size", arg: 2, scope: !2475, file: !1774, line: 69, type: !1096)
!2479 = !DILocation(line: 69, column: 83, scope: !2475, inlinedAt: !2477)
!2480 = !DILocalVariable(name: "nr", arg: 1, scope: !2454, file: !2455, line: 132, type: !106)
!2481 = !DILocation(line: 132, column: 34, scope: !2454)
!2482 = !DILocalVariable(name: "addr", arg: 2, scope: !2454, file: !2455, line: 132, type: !2458)
!2483 = !DILocation(line: 132, column: 68, scope: !2454)
!2484 = !DILocation(line: 134, column: 25, scope: !2454)
!2485 = !DILocation(line: 134, column: 32, scope: !2454)
!2486 = !DILocation(line: 134, column: 30, scope: !2454)
!2487 = !DILocation(line: 71, column: 19, scope: !2475, inlinedAt: !2477)
!2488 = !DILocation(line: 71, column: 22, scope: !2475, inlinedAt: !2477)
!2489 = !DILocation(line: 71, column: 2, scope: !2475, inlinedAt: !2477)
!2490 = !DILocation(line: 72, column: 2, scope: !2475, inlinedAt: !2477)
!2491 = !DILocation(line: 135, column: 9, scope: !2454)
!2492 = !DILocation(line: 206, column: 19, scope: !2469, inlinedAt: !2471)
!2493 = !DILocation(line: 206, column: 22, scope: !2469, inlinedAt: !2471)
!2494 = !DILocation(line: 206, column: 15, scope: !2469, inlinedAt: !2471)
!2495 = !DILocation(line: 207, column: 4, scope: !2469, inlinedAt: !2471)
!2496 = !DILocation(line: 207, column: 9, scope: !2469, inlinedAt: !2471)
!2497 = !DILocation(line: 207, column: 12, scope: !2469, inlinedAt: !2471)
!2498 = !DILocation(line: 206, column: 44, scope: !2469, inlinedAt: !2471)
!2499 = !DILocation(line: 207, column: 37, scope: !2469, inlinedAt: !2471)
!2500 = !DILocation(line: 217, column: 33, scope: !2461, inlinedAt: !2463)
!2501 = !DILocation(line: 217, column: 46, scope: !2461, inlinedAt: !2463)
!2502 = !DILocation(line: 214, column: 2, scope: !2461, inlinedAt: !2463)
!2503 = !{i32 -2147115549, i32 -2147115489}
!2504 = !DILocation(line: 219, column: 9, scope: !2461, inlinedAt: !2463)
!2505 = !DILocation(line: 135, column: 2, scope: !2454)
!2506 = distinct !DISubprogram(name: "dma_fence_free", scope: !3, file: !3, line: 480, type: !109, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2507 = !DILocalVariable(name: "fence", arg: 1, scope: !2506, file: !3, line: 480, type: !61)
!2508 = !DILocation(line: 480, column: 39, scope: !2506)
!2509 = !DILocation(line: 482, column: 2, scope: !2506)
!2510 = !DILocalVariable(name: "___p", scope: !2511, file: !3, line: 482, type: !61)
!2511 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 482, column: 2)
!2512 = !DILocation(line: 482, column: 2, scope: !2511)
!2513 = !DILocation(line: 482, column: 2, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 482, column: 2)
!2515 = !DILocation(line: 482, column: 2, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 482, column: 2)
!2517 = !DILocation(line: 482, column: 2, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 482, column: 2)
!2519 = !DILocation(line: 483, column: 1, scope: !2506)
!2520 = distinct !DISubprogram(name: "kvfree_call_rcu", scope: !2521, file: !2521, line: 45, type: !2522, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2521 = !DIFile(filename: "./include/linux/rcutiny.h", directory: "/home/lizy2001/genbc/linux")
!2522 = !DISubroutineType(types: !2523)
!2523 = !{null, !134, !160}
!2524 = !DILocalVariable(name: "head", arg: 1, scope: !2520, file: !2521, line: 45, type: !134)
!2525 = !DILocation(line: 45, column: 53, scope: !2520)
!2526 = !DILocalVariable(name: "func", arg: 2, scope: !2520, file: !2521, line: 45, type: !160)
!2527 = !DILocation(line: 45, column: 74, scope: !2520)
!2528 = !DILocation(line: 47, column: 6, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2520, file: !2521, line: 47, column: 6)
!2530 = !DILocation(line: 47, column: 6, scope: !2520)
!2531 = !DILocation(line: 48, column: 12, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2529, file: !2521, line: 47, column: 12)
!2533 = !DILocation(line: 48, column: 18, scope: !2532)
!2534 = !DILocation(line: 48, column: 3, scope: !2532)
!2535 = !DILocation(line: 49, column: 3, scope: !2532)
!2536 = !DILocation(line: 53, column: 2, scope: !2520)
!2537 = !DILocation(line: 53, column: 2, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2520, file: !2521, line: 53, column: 2)
!2539 = !DILocation(line: 53, column: 2, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2538, file: !2521, line: 53, column: 2)
!2541 = !DILocation(line: 54, column: 2, scope: !2520)
!2542 = !DILocation(line: 55, column: 18, scope: !2520)
!2543 = !DILocation(line: 55, column: 9, scope: !2520)
!2544 = !DILocation(line: 55, column: 2, scope: !2520)
!2545 = !DILocation(line: 56, column: 1, scope: !2520)
!2546 = distinct !DISubprogram(name: "dma_fence_enable_sw_signaling", scope: !3, file: !3, line: 518, type: !109, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2547 = !DILocation(line: 407, column: 64, scope: !1953, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 527, column: 2, scope: !2546)
!2549 = !DILocation(line: 407, column: 84, scope: !1953, inlinedAt: !2548)
!2550 = !DILocation(line: 327, column: 67, scope: !1961, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 525, column: 2, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 525, column: 2)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 525, column: 2)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 525, column: 2)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 525, column: 2)
!2556 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 525, column: 2)
!2557 = !DILocalVariable(name: "fence", arg: 1, scope: !2546, file: !3, line: 518, type: !61)
!2558 = !DILocation(line: 518, column: 54, scope: !2546)
!2559 = !DILocalVariable(name: "flags", scope: !2546, file: !3, line: 520, type: !145)
!2560 = !DILocation(line: 520, column: 16, scope: !2546)
!2561 = !DILocation(line: 522, column: 45, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 522, column: 6)
!2563 = !DILocation(line: 522, column: 52, scope: !2562)
!2564 = !DILocation(line: 522, column: 6, scope: !2562)
!2565 = !DILocation(line: 522, column: 6, scope: !2546)
!2566 = !DILocation(line: 523, column: 3, scope: !2562)
!2567 = !DILocation(line: 525, column: 2, scope: !2546)
!2568 = !DILocation(line: 525, column: 2, scope: !2556)
!2569 = !DILocalVariable(name: "__dummy", scope: !2570, file: !3, line: 525, type: !145)
!2570 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 525, column: 2)
!2571 = !DILocation(line: 525, column: 2, scope: !2570)
!2572 = !DILocalVariable(name: "__dummy2", scope: !2570, file: !3, line: 525, type: !145)
!2573 = !DILocation(line: 525, column: 2, scope: !2555)
!2574 = !DILocation(line: 525, column: 2, scope: !2554)
!2575 = !DILocation(line: 525, column: 2, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 525, column: 2)
!2577 = !DILocalVariable(name: "__dummy", scope: !2578, file: !3, line: 525, type: !145)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 525, column: 2)
!2579 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 525, column: 2)
!2580 = !DILocation(line: 525, column: 2, scope: !2578)
!2581 = !DILocalVariable(name: "__dummy2", scope: !2578, file: !3, line: 525, type: !145)
!2582 = !DILocation(line: 525, column: 2, scope: !2579)
!2583 = !DILocation(line: 525, column: 2, scope: !2553)
!2584 = !{i32 -2143257557}
!2585 = !DILocation(line: 525, column: 2, scope: !2552)
!2586 = !DILocation(line: 329, column: 10, scope: !1961, inlinedAt: !2551)
!2587 = !DILocation(line: 329, column: 16, scope: !1961, inlinedAt: !2551)
!2588 = !DILocation(line: 526, column: 31, scope: !2546)
!2589 = !DILocation(line: 526, column: 2, scope: !2546)
!2590 = !DILocation(line: 527, column: 25, scope: !2546)
!2591 = !DILocation(line: 527, column: 32, scope: !2546)
!2592 = !DILocation(line: 527, column: 38, scope: !2546)
!2593 = !DILocation(line: 409, column: 2, scope: !2014, inlinedAt: !2548)
!2594 = !DILocation(line: 409, column: 2, scope: !2019, inlinedAt: !2548)
!2595 = !DILocation(line: 409, column: 2, scope: !2020, inlinedAt: !2548)
!2596 = !DILocation(line: 409, column: 2, scope: !2027, inlinedAt: !2548)
!2597 = !DILocation(line: 409, column: 2, scope: !2030, inlinedAt: !2548)
!2598 = !DILocation(line: 528, column: 1, scope: !2546)
!2599 = distinct !DISubprogram(name: "__dma_fence_enable_signaling", scope: !3, file: !3, line: 486, type: !99, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2600 = !DILocalVariable(name: "fence", arg: 1, scope: !2599, file: !3, line: 486, type: !61)
!2601 = !DILocation(line: 486, column: 60, scope: !2599)
!2602 = !DILocalVariable(name: "was_set", scope: !2599, file: !3, line: 488, type: !87)
!2603 = !DILocation(line: 488, column: 7, scope: !2599)
!2604 = !DILocation(line: 490, column: 2, scope: !2599)
!2605 = !DILocation(line: 490, column: 2, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 490, column: 2)
!2607 = !DILocation(line: 493, column: 9, scope: !2599)
!2608 = !DILocation(line: 493, column: 16, scope: !2599)
!2609 = !DILocation(line: 492, column: 12, scope: !2599)
!2610 = !DILocation(line: 492, column: 10, scope: !2599)
!2611 = !DILocation(line: 495, column: 45, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 495, column: 6)
!2613 = !DILocation(line: 495, column: 52, scope: !2612)
!2614 = !DILocation(line: 495, column: 6, scope: !2612)
!2615 = !DILocation(line: 495, column: 6, scope: !2599)
!2616 = !DILocation(line: 496, column: 3, scope: !2612)
!2617 = !DILocation(line: 498, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 498, column: 6)
!2619 = !DILocation(line: 498, column: 15, scope: !2618)
!2620 = !DILocation(line: 498, column: 18, scope: !2618)
!2621 = !DILocation(line: 498, column: 25, scope: !2618)
!2622 = !DILocation(line: 498, column: 30, scope: !2618)
!2623 = !DILocation(line: 498, column: 6, scope: !2599)
!2624 = !DILocation(line: 499, column: 33, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 498, column: 48)
!2626 = !DILocation(line: 499, column: 3, scope: !2625)
!2627 = !DILocation(line: 501, column: 8, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 501, column: 7)
!2629 = !DILocation(line: 501, column: 15, scope: !2628)
!2630 = !DILocation(line: 501, column: 20, scope: !2628)
!2631 = !DILocation(line: 501, column: 37, scope: !2628)
!2632 = !DILocation(line: 501, column: 7, scope: !2625)
!2633 = !DILocation(line: 502, column: 28, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 501, column: 45)
!2635 = !DILocation(line: 502, column: 4, scope: !2634)
!2636 = !DILocation(line: 503, column: 4, scope: !2634)
!2637 = !DILocation(line: 505, column: 2, scope: !2625)
!2638 = !DILocation(line: 507, column: 2, scope: !2599)
!2639 = !DILocation(line: 508, column: 1, scope: !2599)
!2640 = distinct !DISubprogram(name: "dma_fence_add_callback", scope: !3, file: !3, line: 556, type: !2641, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!116, !61, !46, !57}
!2643 = !DILocation(line: 407, column: 64, scope: !1953, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 580, column: 2, scope: !2640)
!2645 = !DILocation(line: 407, column: 84, scope: !1953, inlinedAt: !2644)
!2646 = !DILocation(line: 327, column: 67, scope: !1961, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 570, column: 2, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 570, column: 2)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 570, column: 2)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 570, column: 2)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 570, column: 2)
!2652 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 570, column: 2)
!2653 = !DILocalVariable(name: "fence", arg: 1, scope: !2640, file: !3, line: 556, type: !61)
!2654 = !DILocation(line: 556, column: 46, scope: !2640)
!2655 = !DILocalVariable(name: "cb", arg: 2, scope: !2640, file: !3, line: 556, type: !46)
!2656 = !DILocation(line: 556, column: 74, scope: !2640)
!2657 = !DILocalVariable(name: "func", arg: 3, scope: !2640, file: !3, line: 557, type: !57)
!2658 = !DILocation(line: 557, column: 24, scope: !2640)
!2659 = !DILocalVariable(name: "flags", scope: !2640, file: !3, line: 559, type: !145)
!2660 = !DILocation(line: 559, column: 16, scope: !2640)
!2661 = !DILocalVariable(name: "ret", scope: !2640, file: !3, line: 560, type: !116)
!2662 = !DILocation(line: 560, column: 6, scope: !2640)
!2663 = !DILocalVariable(name: "__ret_warn_on", scope: !2664, file: !3, line: 562, type: !116)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 562, column: 6)
!2665 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 562, column: 6)
!2666 = !DILocation(line: 562, column: 6, scope: !2664)
!2667 = !DILocation(line: 562, column: 6, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 562, column: 6)
!2669 = !DILocation(line: 562, column: 6, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 562, column: 6)
!2671 = !DILocation(line: 562, column: 6, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 562, column: 6)
!2673 = !DILocation(line: 562, column: 6, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 562, column: 6)
!2675 = !{i32 -2143256815, i32 -2143256786, i32 -2143256740, i32 -2143256682, i32 -2143256628, i32 -2143256574, i32 -2143256519, i32 -2143256488}
!2676 = !DILocation(line: 562, column: 6, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 562, column: 6)
!2678 = !{i32 -2143256079, i32 -2143256072, i32 -2143256020, i32 -2143255989, i32 -2143255959}
!2679 = !DILocation(line: 562, column: 6, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 562, column: 6)
!2681 = !DILocation(line: 562, column: 6, scope: !2665)
!2682 = !DILocation(line: 562, column: 6, scope: !2640)
!2683 = !DILocation(line: 563, column: 3, scope: !2665)
!2684 = !DILocation(line: 565, column: 45, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 565, column: 6)
!2686 = !DILocation(line: 565, column: 52, scope: !2685)
!2687 = !DILocation(line: 565, column: 6, scope: !2685)
!2688 = !DILocation(line: 565, column: 6, scope: !2640)
!2689 = !DILocation(line: 566, column: 19, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 565, column: 60)
!2691 = !DILocation(line: 566, column: 23, scope: !2690)
!2692 = !DILocation(line: 566, column: 3, scope: !2690)
!2693 = !DILocation(line: 567, column: 3, scope: !2690)
!2694 = !DILocation(line: 570, column: 2, scope: !2640)
!2695 = !DILocation(line: 570, column: 2, scope: !2652)
!2696 = !DILocalVariable(name: "__dummy", scope: !2697, file: !3, line: 570, type: !145)
!2697 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 570, column: 2)
!2698 = !DILocation(line: 570, column: 2, scope: !2697)
!2699 = !DILocalVariable(name: "__dummy2", scope: !2697, file: !3, line: 570, type: !145)
!2700 = !DILocation(line: 570, column: 2, scope: !2651)
!2701 = !DILocation(line: 570, column: 2, scope: !2650)
!2702 = !DILocation(line: 570, column: 2, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 570, column: 2)
!2704 = !DILocalVariable(name: "__dummy", scope: !2705, file: !3, line: 570, type: !145)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 570, column: 2)
!2706 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 570, column: 2)
!2707 = !DILocation(line: 570, column: 2, scope: !2705)
!2708 = !DILocalVariable(name: "__dummy2", scope: !2705, file: !3, line: 570, type: !145)
!2709 = !DILocation(line: 570, column: 2, scope: !2706)
!2710 = !DILocation(line: 570, column: 2, scope: !2649)
!2711 = !{i32 -2143254973}
!2712 = !DILocation(line: 570, column: 2, scope: !2648)
!2713 = !DILocation(line: 329, column: 10, scope: !1961, inlinedAt: !2647)
!2714 = !DILocation(line: 329, column: 16, scope: !1961, inlinedAt: !2647)
!2715 = !DILocation(line: 572, column: 35, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 572, column: 6)
!2717 = !DILocation(line: 572, column: 6, scope: !2716)
!2718 = !DILocation(line: 572, column: 6, scope: !2640)
!2719 = !DILocation(line: 573, column: 14, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 572, column: 43)
!2721 = !DILocation(line: 573, column: 3, scope: !2720)
!2722 = !DILocation(line: 573, column: 7, scope: !2720)
!2723 = !DILocation(line: 573, column: 12, scope: !2720)
!2724 = !DILocation(line: 574, column: 18, scope: !2720)
!2725 = !DILocation(line: 574, column: 22, scope: !2720)
!2726 = !DILocation(line: 574, column: 29, scope: !2720)
!2727 = !DILocation(line: 574, column: 36, scope: !2720)
!2728 = !DILocation(line: 574, column: 3, scope: !2720)
!2729 = !DILocation(line: 575, column: 2, scope: !2720)
!2730 = !DILocation(line: 576, column: 19, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 575, column: 9)
!2732 = !DILocation(line: 576, column: 23, scope: !2731)
!2733 = !DILocation(line: 576, column: 3, scope: !2731)
!2734 = !DILocation(line: 577, column: 7, scope: !2731)
!2735 = !DILocation(line: 580, column: 25, scope: !2640)
!2736 = !DILocation(line: 580, column: 32, scope: !2640)
!2737 = !DILocation(line: 580, column: 38, scope: !2640)
!2738 = !DILocation(line: 409, column: 2, scope: !2014, inlinedAt: !2644)
!2739 = !DILocation(line: 409, column: 2, scope: !2019, inlinedAt: !2644)
!2740 = !DILocation(line: 409, column: 2, scope: !2020, inlinedAt: !2644)
!2741 = !DILocation(line: 409, column: 2, scope: !2027, inlinedAt: !2644)
!2742 = !DILocation(line: 409, column: 2, scope: !2030, inlinedAt: !2644)
!2743 = !DILocation(line: 582, column: 9, scope: !2640)
!2744 = !DILocation(line: 582, column: 2, scope: !2640)
!2745 = !DILocation(line: 583, column: 1, scope: !2640)
!2746 = distinct !DISubprogram(name: "list_add_tail", scope: !1858, file: !1858, line: 98, type: !1859, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2747 = !DILocalVariable(name: "new", arg: 1, scope: !2746, file: !1858, line: 98, type: !54)
!2748 = !DILocation(line: 98, column: 52, scope: !2746)
!2749 = !DILocalVariable(name: "head", arg: 2, scope: !2746, file: !1858, line: 98, type: !54)
!2750 = !DILocation(line: 98, column: 75, scope: !2746)
!2751 = !DILocation(line: 100, column: 13, scope: !2746)
!2752 = !DILocation(line: 100, column: 18, scope: !2746)
!2753 = !DILocation(line: 100, column: 24, scope: !2746)
!2754 = !DILocation(line: 100, column: 30, scope: !2746)
!2755 = !DILocation(line: 100, column: 2, scope: !2746)
!2756 = !DILocation(line: 101, column: 1, scope: !2746)
!2757 = distinct !DISubprogram(name: "dma_fence_get_status", scope: !3, file: !3, line: 598, type: !1695, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2758 = !DILocation(line: 407, column: 64, scope: !1953, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 605, column: 2, scope: !2757)
!2760 = !DILocation(line: 407, column: 84, scope: !1953, inlinedAt: !2759)
!2761 = !DILocation(line: 327, column: 67, scope: !1961, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 603, column: 2, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 603, column: 2)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 603, column: 2)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 603, column: 2)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 603, column: 2)
!2767 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 603, column: 2)
!2768 = !DILocalVariable(name: "fence", arg: 1, scope: !2757, file: !3, line: 598, type: !61)
!2769 = !DILocation(line: 598, column: 44, scope: !2757)
!2770 = !DILocalVariable(name: "flags", scope: !2757, file: !3, line: 600, type: !145)
!2771 = !DILocation(line: 600, column: 16, scope: !2757)
!2772 = !DILocalVariable(name: "status", scope: !2757, file: !3, line: 601, type: !116)
!2773 = !DILocation(line: 601, column: 6, scope: !2757)
!2774 = !DILocation(line: 603, column: 2, scope: !2757)
!2775 = !DILocation(line: 603, column: 2, scope: !2767)
!2776 = !DILocalVariable(name: "__dummy", scope: !2777, file: !3, line: 603, type: !145)
!2777 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 603, column: 2)
!2778 = !DILocation(line: 603, column: 2, scope: !2777)
!2779 = !DILocalVariable(name: "__dummy2", scope: !2777, file: !3, line: 603, type: !145)
!2780 = !DILocation(line: 603, column: 2, scope: !2766)
!2781 = !DILocation(line: 603, column: 2, scope: !2765)
!2782 = !DILocation(line: 603, column: 2, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 603, column: 2)
!2784 = !DILocalVariable(name: "__dummy", scope: !2785, file: !3, line: 603, type: !145)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 603, column: 2)
!2786 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 603, column: 2)
!2787 = !DILocation(line: 603, column: 2, scope: !2785)
!2788 = !DILocalVariable(name: "__dummy2", scope: !2785, file: !3, line: 603, type: !145)
!2789 = !DILocation(line: 603, column: 2, scope: !2786)
!2790 = !DILocation(line: 603, column: 2, scope: !2764)
!2791 = !{i32 -2143253849}
!2792 = !DILocation(line: 603, column: 2, scope: !2763)
!2793 = !DILocation(line: 329, column: 10, scope: !1961, inlinedAt: !2762)
!2794 = !DILocation(line: 329, column: 16, scope: !1961, inlinedAt: !2762)
!2795 = !DILocation(line: 604, column: 39, scope: !2757)
!2796 = !DILocation(line: 604, column: 11, scope: !2757)
!2797 = !DILocation(line: 604, column: 9, scope: !2757)
!2798 = !DILocation(line: 605, column: 25, scope: !2757)
!2799 = !DILocation(line: 605, column: 32, scope: !2757)
!2800 = !DILocation(line: 605, column: 38, scope: !2757)
!2801 = !DILocation(line: 409, column: 2, scope: !2014, inlinedAt: !2759)
!2802 = !DILocation(line: 409, column: 2, scope: !2019, inlinedAt: !2759)
!2803 = !DILocation(line: 409, column: 2, scope: !2020, inlinedAt: !2759)
!2804 = !DILocation(line: 409, column: 2, scope: !2027, inlinedAt: !2759)
!2805 = !DILocation(line: 409, column: 2, scope: !2030, inlinedAt: !2759)
!2806 = !DILocation(line: 607, column: 9, scope: !2757)
!2807 = !DILocation(line: 607, column: 2, scope: !2757)
!2808 = distinct !DISubprogram(name: "dma_fence_get_status_locked", scope: !6, file: !6, line: 521, type: !1695, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2809 = !DILocalVariable(name: "fence", arg: 1, scope: !2808, file: !6, line: 521, type: !61)
!2810 = !DILocation(line: 521, column: 65, scope: !2808)
!2811 = !DILocation(line: 523, column: 35, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2808, file: !6, line: 523, column: 6)
!2813 = !DILocation(line: 523, column: 6, scope: !2812)
!2814 = !DILocation(line: 523, column: 6, scope: !2808)
!2815 = !DILocation(line: 524, column: 10, scope: !2812)
!2816 = !DILocation(line: 524, column: 17, scope: !2812)
!2817 = !DILocation(line: 524, column: 3, scope: !2812)
!2818 = !DILocation(line: 526, column: 3, scope: !2812)
!2819 = !DILocation(line: 527, column: 1, scope: !2808)
!2820 = distinct !DISubprogram(name: "dma_fence_remove_callback", scope: !3, file: !3, line: 630, type: !2821, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!87, !61, !46}
!2823 = !DILocation(line: 407, column: 64, scope: !1953, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 641, column: 2, scope: !2820)
!2825 = !DILocation(line: 407, column: 84, scope: !1953, inlinedAt: !2824)
!2826 = !DILocation(line: 327, column: 67, scope: !1961, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 635, column: 2, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 635, column: 2)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 635, column: 2)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 635, column: 2)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 635, column: 2)
!2832 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 635, column: 2)
!2833 = !DILocalVariable(name: "fence", arg: 1, scope: !2820, file: !3, line: 630, type: !61)
!2834 = !DILocation(line: 630, column: 45, scope: !2820)
!2835 = !DILocalVariable(name: "cb", arg: 2, scope: !2820, file: !3, line: 630, type: !46)
!2836 = !DILocation(line: 630, column: 73, scope: !2820)
!2837 = !DILocalVariable(name: "flags", scope: !2820, file: !3, line: 632, type: !145)
!2838 = !DILocation(line: 632, column: 16, scope: !2820)
!2839 = !DILocalVariable(name: "ret", scope: !2820, file: !3, line: 633, type: !87)
!2840 = !DILocation(line: 633, column: 7, scope: !2820)
!2841 = !DILocation(line: 635, column: 2, scope: !2820)
!2842 = !DILocation(line: 635, column: 2, scope: !2832)
!2843 = !DILocalVariable(name: "__dummy", scope: !2844, file: !3, line: 635, type: !145)
!2844 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 635, column: 2)
!2845 = !DILocation(line: 635, column: 2, scope: !2844)
!2846 = !DILocalVariable(name: "__dummy2", scope: !2844, file: !3, line: 635, type: !145)
!2847 = !DILocation(line: 635, column: 2, scope: !2831)
!2848 = !DILocation(line: 635, column: 2, scope: !2830)
!2849 = !DILocation(line: 635, column: 2, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 635, column: 2)
!2851 = !DILocalVariable(name: "__dummy", scope: !2852, file: !3, line: 635, type: !145)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 635, column: 2)
!2853 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 635, column: 2)
!2854 = !DILocation(line: 635, column: 2, scope: !2852)
!2855 = !DILocalVariable(name: "__dummy2", scope: !2852, file: !3, line: 635, type: !145)
!2856 = !DILocation(line: 635, column: 2, scope: !2853)
!2857 = !DILocation(line: 635, column: 2, scope: !2829)
!2858 = !{i32 -2143252731}
!2859 = !DILocation(line: 635, column: 2, scope: !2828)
!2860 = !DILocation(line: 329, column: 10, scope: !1961, inlinedAt: !2827)
!2861 = !DILocation(line: 329, column: 16, scope: !1961, inlinedAt: !2827)
!2862 = !DILocation(line: 637, column: 21, scope: !2820)
!2863 = !DILocation(line: 637, column: 25, scope: !2820)
!2864 = !DILocation(line: 637, column: 9, scope: !2820)
!2865 = !DILocation(line: 637, column: 8, scope: !2820)
!2866 = !DILocation(line: 637, column: 6, scope: !2820)
!2867 = !DILocation(line: 638, column: 6, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 638, column: 6)
!2869 = !DILocation(line: 638, column: 6, scope: !2820)
!2870 = !DILocation(line: 639, column: 18, scope: !2868)
!2871 = !DILocation(line: 639, column: 22, scope: !2868)
!2872 = !DILocation(line: 639, column: 3, scope: !2868)
!2873 = !DILocation(line: 641, column: 25, scope: !2820)
!2874 = !DILocation(line: 641, column: 32, scope: !2820)
!2875 = !DILocation(line: 641, column: 38, scope: !2820)
!2876 = !DILocation(line: 409, column: 2, scope: !2014, inlinedAt: !2824)
!2877 = !DILocation(line: 409, column: 2, scope: !2019, inlinedAt: !2824)
!2878 = !DILocation(line: 409, column: 2, scope: !2020, inlinedAt: !2824)
!2879 = !DILocation(line: 409, column: 2, scope: !2027, inlinedAt: !2824)
!2880 = !DILocation(line: 409, column: 2, scope: !2030, inlinedAt: !2824)
!2881 = !DILocation(line: 643, column: 9, scope: !2820)
!2882 = !DILocation(line: 643, column: 2, scope: !2820)
!2883 = distinct !DISubprogram(name: "list_del_init", scope: !1858, file: !1858, line: 202, type: !1935, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2884 = !DILocalVariable(name: "entry", arg: 1, scope: !2883, file: !1858, line: 202, type: !54)
!2885 = !DILocation(line: 202, column: 52, scope: !2883)
!2886 = !DILocation(line: 204, column: 19, scope: !2883)
!2887 = !DILocation(line: 204, column: 2, scope: !2883)
!2888 = !DILocation(line: 205, column: 17, scope: !2883)
!2889 = !DILocation(line: 205, column: 2, scope: !2883)
!2890 = !DILocation(line: 206, column: 1, scope: !2883)
!2891 = distinct !DISubprogram(name: "signal_pending", scope: !956, file: !956, line: 356, type: !2892, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!116, !172}
!2894 = !DILocalVariable(name: "p", arg: 1, scope: !2891, file: !956, line: 356, type: !172)
!2895 = !DILocation(line: 356, column: 54, scope: !2891)
!2896 = !DILocation(line: 358, column: 9, scope: !2891)
!2897 = !DILocation(line: 358, column: 2, scope: !2891)
!2898 = distinct !DISubprogram(name: "dma_fence_default_wait_cb", scope: !3, file: !3, line: 653, type: !59, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2899 = !DILocalVariable(name: "fence", arg: 1, scope: !2898, file: !3, line: 653, type: !61)
!2900 = !DILocation(line: 653, column: 45, scope: !2898)
!2901 = !DILocalVariable(name: "cb", arg: 2, scope: !2898, file: !3, line: 653, type: !46)
!2902 = !DILocation(line: 653, column: 73, scope: !2898)
!2903 = !DILocalVariable(name: "wait", scope: !2898, file: !3, line: 655, type: !1562)
!2904 = !DILocation(line: 655, column: 26, scope: !2898)
!2905 = !DILocalVariable(name: "__mptr", scope: !2906, file: !3, line: 656, type: !45)
!2906 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 656, column: 3)
!2907 = !DILocation(line: 656, column: 3, scope: !2906)
!2908 = !DILocation(line: 656, column: 3, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 656, column: 3)
!2910 = !DILocation(line: 658, column: 16, scope: !2898)
!2911 = !DILocation(line: 658, column: 22, scope: !2898)
!2912 = !DILocation(line: 658, column: 2, scope: !2898)
!2913 = !DILocation(line: 659, column: 1, scope: !2898)
!2914 = distinct !DISubprogram(name: "list_add", scope: !1858, file: !1858, line: 84, type: !1859, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2915 = !DILocalVariable(name: "new", arg: 1, scope: !2914, file: !1858, line: 84, type: !54)
!2916 = !DILocation(line: 84, column: 47, scope: !2914)
!2917 = !DILocalVariable(name: "head", arg: 2, scope: !2914, file: !1858, line: 84, type: !54)
!2918 = !DILocation(line: 84, column: 70, scope: !2914)
!2919 = !DILocation(line: 86, column: 13, scope: !2914)
!2920 = !DILocation(line: 86, column: 18, scope: !2914)
!2921 = !DILocation(line: 86, column: 24, scope: !2914)
!2922 = !DILocation(line: 86, column: 30, scope: !2914)
!2923 = !DILocation(line: 86, column: 2, scope: !2914)
!2924 = !DILocation(line: 87, column: 1, scope: !2914)
!2925 = distinct !DISubprogram(name: "list_del", scope: !1858, file: !1858, line: 144, type: !1935, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2926 = !DILocalVariable(name: "entry", arg: 1, scope: !2925, file: !1858, line: 144, type: !54)
!2927 = !DILocation(line: 144, column: 47, scope: !2925)
!2928 = !DILocation(line: 146, column: 19, scope: !2925)
!2929 = !DILocation(line: 146, column: 2, scope: !2925)
!2930 = !DILocation(line: 147, column: 2, scope: !2925)
!2931 = !DILocation(line: 147, column: 9, scope: !2925)
!2932 = !DILocation(line: 147, column: 14, scope: !2925)
!2933 = !DILocation(line: 148, column: 2, scope: !2925)
!2934 = !DILocation(line: 148, column: 9, scope: !2925)
!2935 = !DILocation(line: 148, column: 14, scope: !2925)
!2936 = !DILocation(line: 149, column: 1, scope: !2925)
!2937 = distinct !DISubprogram(name: "dma_fence_wait_any_timeout", scope: !3, file: !3, line: 764, type: !2938, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !80)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!106, !2940, !807, !87, !106, !2941}
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!2942 = !DILocation(line: 15, column: 9, scope: !2125, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 819, column: 2, scope: !2937)
!2944 = !DILocation(line: 15, column: 9, scope: !2133, inlinedAt: !2943)
!2945 = !DILocation(line: 15, column: 9, scope: !2138, inlinedAt: !2943)
!2946 = !DILocation(line: 15, column: 9, scope: !2125, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 815, column: 41, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 815, column: 7)
!2949 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 804, column: 18)
!2950 = !DILocation(line: 15, column: 9, scope: !2133, inlinedAt: !2947)
!2951 = !DILocation(line: 15, column: 9, scope: !2138, inlinedAt: !2947)
!2952 = !DILocation(line: 15, column: 9, scope: !2125, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 808, column: 4, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 808, column: 4)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 808, column: 4)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 808, column: 4)
!2957 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 805, column: 7)
!2958 = !DILocation(line: 15, column: 9, scope: !2133, inlinedAt: !2953)
!2959 = !DILocation(line: 15, column: 9, scope: !2138, inlinedAt: !2953)
!2960 = !DILocation(line: 15, column: 9, scope: !2125, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 806, column: 4, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 806, column: 4)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 806, column: 4)
!2964 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 806, column: 4)
!2965 = !DILocation(line: 15, column: 9, scope: !2133, inlinedAt: !2961)
!2966 = !DILocation(line: 15, column: 9, scope: !2138, inlinedAt: !2961)
!2967 = !DILocation(line: 15, column: 9, scope: !2125, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 794, column: 16, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 791, column: 30)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 791, column: 2)
!2971 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 791, column: 2)
!2972 = !DILocation(line: 15, column: 9, scope: !2133, inlinedAt: !2968)
!2973 = !DILocation(line: 15, column: 9, scope: !2138, inlinedAt: !2968)
!2974 = !DILocalVariable(name: "fences", arg: 1, scope: !2937, file: !3, line: 764, type: !2940)
!2975 = !DILocation(line: 764, column: 47, scope: !2937)
!2976 = !DILocalVariable(name: "count", arg: 2, scope: !2937, file: !3, line: 764, type: !807)
!2977 = !DILocation(line: 764, column: 64, scope: !2937)
!2978 = !DILocalVariable(name: "intr", arg: 3, scope: !2937, file: !3, line: 765, type: !87)
!2979 = !DILocation(line: 765, column: 12, scope: !2937)
!2980 = !DILocalVariable(name: "timeout", arg: 4, scope: !2937, file: !3, line: 765, type: !106)
!2981 = !DILocation(line: 765, column: 30, scope: !2937)
!2982 = !DILocalVariable(name: "idx", arg: 5, scope: !2937, file: !3, line: 765, type: !2941)
!2983 = !DILocation(line: 765, column: 49, scope: !2937)
!2984 = !DILocalVariable(name: "cb", scope: !2937, file: !3, line: 767, type: !1562)
!2985 = !DILocation(line: 767, column: 26, scope: !2937)
!2986 = !DILocalVariable(name: "ret", scope: !2937, file: !3, line: 768, type: !106)
!2987 = !DILocation(line: 768, column: 14, scope: !2937)
!2988 = !DILocation(line: 768, column: 20, scope: !2937)
!2989 = !DILocalVariable(name: "i", scope: !2937, file: !3, line: 769, type: !7)
!2990 = !DILocation(line: 769, column: 11, scope: !2937)
!2991 = !DILocalVariable(name: "__ret_warn_on", scope: !2992, file: !3, line: 771, type: !116)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 771, column: 6)
!2993 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 771, column: 6)
!2994 = !DILocation(line: 771, column: 6, scope: !2992)
!2995 = !DILocation(line: 771, column: 6, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 771, column: 6)
!2997 = !DILocation(line: 771, column: 6, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 771, column: 6)
!2999 = !DILocation(line: 771, column: 6, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 771, column: 6)
!3001 = !DILocation(line: 771, column: 6, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 771, column: 6)
!3003 = !{i32 -2143248082, i32 -2143248053, i32 -2143248007, i32 -2143247949, i32 -2143247895, i32 -2143247841, i32 -2143247786, i32 -2143247755}
!3004 = !DILocation(line: 771, column: 6, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 771, column: 6)
!3006 = !{i32 -2143247346, i32 -2143247339, i32 -2143247287, i32 -2143247256, i32 -2143247226}
!3007 = !DILocation(line: 771, column: 6, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 771, column: 6)
!3009 = !DILocation(line: 771, column: 6, scope: !2993)
!3010 = !DILocation(line: 771, column: 6, scope: !2937)
!3011 = !DILocation(line: 772, column: 3, scope: !2993)
!3012 = !DILocation(line: 774, column: 6, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 774, column: 6)
!3014 = !DILocation(line: 774, column: 14, scope: !3013)
!3015 = !DILocation(line: 774, column: 6, scope: !2937)
!3016 = !DILocation(line: 775, column: 10, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 775, column: 3)
!3018 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 774, column: 20)
!3019 = !DILocation(line: 775, column: 8, scope: !3017)
!3020 = !DILocation(line: 775, column: 15, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 775, column: 3)
!3022 = !DILocation(line: 775, column: 19, scope: !3021)
!3023 = !DILocation(line: 775, column: 17, scope: !3021)
!3024 = !DILocation(line: 775, column: 3, scope: !3017)
!3025 = !DILocation(line: 776, column: 30, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 776, column: 8)
!3027 = !DILocation(line: 776, column: 37, scope: !3026)
!3028 = !DILocation(line: 776, column: 8, scope: !3026)
!3029 = !DILocation(line: 776, column: 8, scope: !3021)
!3030 = !DILocation(line: 777, column: 9, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 777, column: 9)
!3032 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 776, column: 42)
!3033 = !DILocation(line: 777, column: 9, scope: !3032)
!3034 = !DILocation(line: 778, column: 13, scope: !3031)
!3035 = !DILocation(line: 778, column: 7, scope: !3031)
!3036 = !DILocation(line: 778, column: 11, scope: !3031)
!3037 = !DILocation(line: 778, column: 6, scope: !3031)
!3038 = !DILocation(line: 779, column: 5, scope: !3032)
!3039 = !DILocation(line: 776, column: 39, scope: !3026)
!3040 = !DILocation(line: 775, column: 26, scope: !3021)
!3041 = !DILocation(line: 775, column: 3, scope: !3021)
!3042 = distinct !{!3042, !3024, !3043}
!3043 = !DILocation(line: 780, column: 4, scope: !3017)
!3044 = !DILocation(line: 782, column: 3, scope: !3018)
!3045 = !DILocation(line: 785, column: 15, scope: !2937)
!3046 = !DILocation(line: 785, column: 7, scope: !2937)
!3047 = !DILocation(line: 785, column: 5, scope: !2937)
!3048 = !DILocation(line: 786, column: 6, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 786, column: 6)
!3050 = !DILocation(line: 786, column: 9, scope: !3049)
!3051 = !DILocation(line: 786, column: 6, scope: !2937)
!3052 = !DILocation(line: 787, column: 7, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 786, column: 18)
!3054 = !DILocation(line: 788, column: 3, scope: !3053)
!3055 = !DILocation(line: 791, column: 9, scope: !2971)
!3056 = !DILocation(line: 791, column: 7, scope: !2971)
!3057 = !DILocation(line: 791, column: 14, scope: !2970)
!3058 = !DILocation(line: 791, column: 18, scope: !2970)
!3059 = !DILocation(line: 791, column: 16, scope: !2970)
!3060 = !DILocation(line: 791, column: 2, scope: !2971)
!3061 = !DILocalVariable(name: "fence", scope: !2969, file: !3, line: 792, type: !61)
!3062 = !DILocation(line: 792, column: 21, scope: !2969)
!3063 = !DILocation(line: 792, column: 29, scope: !2969)
!3064 = !DILocation(line: 792, column: 36, scope: !2969)
!3065 = !DILocation(line: 794, column: 3, scope: !2969)
!3066 = !DILocation(line: 794, column: 6, scope: !2969)
!3067 = !DILocation(line: 794, column: 9, scope: !2969)
!3068 = !DILocation(line: 794, column: 14, scope: !2969)
!3069 = !DILocation(line: 795, column: 30, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 795, column: 7)
!3071 = !DILocation(line: 795, column: 38, scope: !3070)
!3072 = !DILocation(line: 795, column: 41, scope: !3070)
!3073 = !DILocation(line: 795, column: 44, scope: !3070)
!3074 = !DILocation(line: 795, column: 7, scope: !3070)
!3075 = !DILocation(line: 795, column: 7, scope: !2969)
!3076 = !DILocation(line: 798, column: 8, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 798, column: 8)
!3078 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 796, column: 37)
!3079 = !DILocation(line: 798, column: 8, scope: !3078)
!3080 = !DILocation(line: 799, column: 12, scope: !3077)
!3081 = !DILocation(line: 799, column: 6, scope: !3077)
!3082 = !DILocation(line: 799, column: 10, scope: !3077)
!3083 = !DILocation(line: 799, column: 5, scope: !3077)
!3084 = !DILocation(line: 800, column: 4, scope: !3078)
!3085 = !DILocation(line: 802, column: 2, scope: !2969)
!3086 = !DILocation(line: 791, column: 25, scope: !2970)
!3087 = !DILocation(line: 791, column: 2, scope: !2970)
!3088 = distinct !{!3088, !3060, !3089}
!3089 = !DILocation(line: 802, column: 2, scope: !2971)
!3090 = !DILocation(line: 804, column: 2, scope: !2937)
!3091 = !DILocation(line: 804, column: 9, scope: !2937)
!3092 = !DILocation(line: 804, column: 13, scope: !2937)
!3093 = !DILocation(line: 805, column: 7, scope: !2957)
!3094 = !DILocation(line: 805, column: 7, scope: !2949)
!3095 = !DILocation(line: 806, column: 4, scope: !2957)
!3096 = !DILocation(line: 806, column: 4, scope: !2964)
!3097 = !DILocation(line: 806, column: 4, scope: !2963)
!3098 = !DILocation(line: 806, column: 4, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 806, column: 4)
!3100 = !DILocation(line: 806, column: 4, scope: !2962)
!3101 = !{i32 -2143245280}
!3102 = !DILocation(line: 808, column: 4, scope: !2957)
!3103 = !DILocation(line: 808, column: 4, scope: !2956)
!3104 = !DILocation(line: 808, column: 4, scope: !2955)
!3105 = !DILocation(line: 808, column: 4, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 808, column: 4)
!3107 = !DILocation(line: 808, column: 4, scope: !2954)
!3108 = !{i32 -2143243625}
!3109 = !DILocation(line: 810, column: 35, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 810, column: 7)
!3111 = !DILocation(line: 810, column: 43, scope: !3110)
!3112 = !DILocation(line: 810, column: 50, scope: !3110)
!3113 = !DILocation(line: 810, column: 7, scope: !3110)
!3114 = !DILocation(line: 810, column: 7, scope: !2949)
!3115 = !DILocation(line: 811, column: 4, scope: !3110)
!3116 = !DILocation(line: 813, column: 26, scope: !2949)
!3117 = !DILocation(line: 813, column: 9, scope: !2949)
!3118 = !DILocation(line: 813, column: 7, scope: !2949)
!3119 = !DILocation(line: 815, column: 7, scope: !2948)
!3120 = !DILocation(line: 815, column: 11, scope: !2948)
!3121 = !DILocation(line: 815, column: 15, scope: !2948)
!3122 = !DILocation(line: 815, column: 18, scope: !2948)
!3123 = !DILocation(line: 815, column: 23, scope: !2948)
!3124 = !DILocation(line: 815, column: 26, scope: !2948)
!3125 = !DILocation(line: 815, column: 7, scope: !2949)
!3126 = !DILocation(line: 816, column: 8, scope: !2948)
!3127 = !DILocation(line: 816, column: 4, scope: !2948)
!3128 = distinct !{!3128, !3090, !3129}
!3129 = !DILocation(line: 817, column: 2, scope: !2937)
!3130 = !DILocation(line: 819, column: 2, scope: !2937)
!3131 = !DILabel(scope: !2937, name: "fence_rm_cb", file: !3, line: 821)
!3132 = !DILocation(line: 821, column: 1, scope: !2937)
!3133 = !DILocation(line: 822, column: 2, scope: !2937)
!3134 = !DILocation(line: 822, column: 10, scope: !2937)
!3135 = !DILocation(line: 822, column: 13, scope: !2937)
!3136 = !DILocation(line: 823, column: 29, scope: !2937)
!3137 = !DILocation(line: 823, column: 36, scope: !2937)
!3138 = !DILocation(line: 823, column: 41, scope: !2937)
!3139 = !DILocation(line: 823, column: 44, scope: !2937)
!3140 = !DILocation(line: 823, column: 47, scope: !2937)
!3141 = !DILocation(line: 823, column: 3, scope: !2937)
!3142 = distinct !{!3142, !3133, !3143}
!3143 = !DILocation(line: 823, column: 51, scope: !2937)
!3144 = !DILabel(scope: !2937, name: "err_free_cb", file: !3, line: 825)
!3145 = !DILocation(line: 825, column: 1, scope: !2937)
!3146 = !DILocation(line: 826, column: 8, scope: !2937)
!3147 = !DILocation(line: 826, column: 2, scope: !2937)
!3148 = !DILocation(line: 828, column: 9, scope: !2937)
!3149 = !DILocation(line: 828, column: 2, scope: !2937)
!3150 = !DILocation(line: 829, column: 1, scope: !2937)
!3151 = distinct !DISubprogram(name: "dma_fence_is_signaled", scope: !6, file: !6, line: 429, type: !99, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3152 = !DILocalVariable(name: "fence", arg: 1, scope: !3151, file: !6, line: 429, type: !61)
!3153 = !DILocation(line: 429, column: 41, scope: !3151)
!3154 = !DILocation(line: 431, column: 45, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3151, file: !6, line: 431, column: 6)
!3156 = !DILocation(line: 431, column: 52, scope: !3155)
!3157 = !DILocation(line: 431, column: 6, scope: !3155)
!3158 = !DILocation(line: 431, column: 6, scope: !3151)
!3159 = !DILocation(line: 432, column: 3, scope: !3155)
!3160 = !DILocation(line: 434, column: 6, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3151, file: !6, line: 434, column: 6)
!3162 = !DILocation(line: 434, column: 13, scope: !3161)
!3163 = !DILocation(line: 434, column: 18, scope: !3161)
!3164 = !DILocation(line: 434, column: 27, scope: !3161)
!3165 = !DILocation(line: 434, column: 30, scope: !3161)
!3166 = !DILocation(line: 434, column: 37, scope: !3161)
!3167 = !DILocation(line: 434, column: 42, scope: !3161)
!3168 = !DILocation(line: 434, column: 51, scope: !3161)
!3169 = !DILocation(line: 434, column: 6, scope: !3151)
!3170 = !DILocation(line: 435, column: 20, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3161, file: !6, line: 434, column: 59)
!3172 = !DILocation(line: 435, column: 3, scope: !3171)
!3173 = !DILocation(line: 436, column: 3, scope: !3171)
!3174 = !DILocation(line: 439, column: 2, scope: !3151)
!3175 = !DILocation(line: 440, column: 1, scope: !3151)
!3176 = distinct !DISubprogram(name: "kcalloc", scope: !38, file: !38, line: 601, type: !3177, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!45, !1096, !1096, !161}
!3179 = !DILocalVariable(name: "n", arg: 1, scope: !3176, file: !38, line: 601, type: !1096)
!3180 = !DILocation(line: 601, column: 36, scope: !3176)
!3181 = !DILocalVariable(name: "size", arg: 2, scope: !3176, file: !38, line: 601, type: !1096)
!3182 = !DILocation(line: 601, column: 46, scope: !3176)
!3183 = !DILocalVariable(name: "flags", arg: 3, scope: !3176, file: !38, line: 601, type: !161)
!3184 = !DILocation(line: 601, column: 58, scope: !3176)
!3185 = !DILocation(line: 603, column: 23, scope: !3176)
!3186 = !DILocation(line: 603, column: 26, scope: !3176)
!3187 = !DILocation(line: 603, column: 32, scope: !3176)
!3188 = !DILocation(line: 603, column: 38, scope: !3176)
!3189 = !DILocation(line: 603, column: 9, scope: !3176)
!3190 = !DILocation(line: 603, column: 2, scope: !3176)
!3191 = distinct !DISubprogram(name: "dma_fence_test_signaled_any", scope: !3, file: !3, line: 727, type: !3192, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!87, !2940, !807, !2941}
!3194 = !DILocalVariable(name: "fences", arg: 1, scope: !3191, file: !3, line: 727, type: !2940)
!3195 = !DILocation(line: 727, column: 48, scope: !3191)
!3196 = !DILocalVariable(name: "count", arg: 2, scope: !3191, file: !3, line: 727, type: !807)
!3197 = !DILocation(line: 727, column: 65, scope: !3191)
!3198 = !DILocalVariable(name: "idx", arg: 3, scope: !3191, file: !3, line: 728, type: !2941)
!3199 = !DILocation(line: 728, column: 18, scope: !3191)
!3200 = !DILocalVariable(name: "i", scope: !3191, file: !3, line: 730, type: !116)
!3201 = !DILocation(line: 730, column: 6, scope: !3191)
!3202 = !DILocation(line: 732, column: 9, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 732, column: 2)
!3204 = !DILocation(line: 732, column: 7, scope: !3203)
!3205 = !DILocation(line: 732, column: 14, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 732, column: 2)
!3207 = !DILocation(line: 732, column: 18, scope: !3206)
!3208 = !DILocation(line: 732, column: 16, scope: !3206)
!3209 = !DILocation(line: 732, column: 2, scope: !3203)
!3210 = !DILocalVariable(name: "fence", scope: !3211, file: !3, line: 733, type: !61)
!3211 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 732, column: 30)
!3212 = !DILocation(line: 733, column: 21, scope: !3211)
!3213 = !DILocation(line: 733, column: 29, scope: !3211)
!3214 = !DILocation(line: 733, column: 36, scope: !3211)
!3215 = !DILocation(line: 734, column: 46, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 734, column: 7)
!3217 = !DILocation(line: 734, column: 53, scope: !3216)
!3218 = !DILocation(line: 734, column: 7, scope: !3216)
!3219 = !DILocation(line: 734, column: 7, scope: !3211)
!3220 = !DILocation(line: 735, column: 8, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 735, column: 8)
!3222 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 734, column: 61)
!3223 = !DILocation(line: 735, column: 8, scope: !3222)
!3224 = !DILocation(line: 736, column: 12, scope: !3221)
!3225 = !DILocation(line: 736, column: 6, scope: !3221)
!3226 = !DILocation(line: 736, column: 10, scope: !3221)
!3227 = !DILocation(line: 736, column: 5, scope: !3221)
!3228 = !DILocation(line: 737, column: 4, scope: !3222)
!3229 = !DILocation(line: 739, column: 2, scope: !3211)
!3230 = !DILocation(line: 732, column: 25, scope: !3206)
!3231 = !DILocation(line: 732, column: 2, scope: !3206)
!3232 = distinct !{!3232, !3209, !3233}
!3233 = !DILocation(line: 739, column: 2, scope: !3203)
!3234 = !DILocation(line: 740, column: 2, scope: !3191)
!3235 = !DILocation(line: 741, column: 1, scope: !3191)
!3236 = distinct !DISubprogram(name: "kref_init", scope: !148, file: !148, line: 29, type: !2336, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3237 = !DILocalVariable(name: "kref", arg: 1, scope: !3236, file: !148, line: 29, type: !2338)
!3238 = !DILocation(line: 29, column: 43, scope: !3236)
!3239 = !DILocation(line: 31, column: 16, scope: !3236)
!3240 = !DILocation(line: 31, column: 22, scope: !3236)
!3241 = !DILocation(line: 31, column: 2, scope: !3236)
!3242 = !DILocation(line: 32, column: 1, scope: !3236)
!3243 = distinct !DISubprogram(name: "trace_dma_fence_init", scope: !1931, file: !1931, line: 44, type: !109, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3244 = !DILocalVariable(name: "fence", arg: 1, scope: !3243, file: !1931, line: 44, type: !61)
!3245 = !DILocation(line: 44, column: 1, scope: !3243)
!3246 = distinct !DISubprogram(name: "dma_fence_stub_get_name", scope: !3, file: !3, line: 113, type: !91, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3247 = !DILocalVariable(name: "fence", arg: 1, scope: !3246, file: !3, line: 113, type: !61)
!3248 = !DILocation(line: 113, column: 62, scope: !3246)
!3249 = !DILocation(line: 115, column: 9, scope: !3246)
!3250 = distinct !DISubprogram(name: "kref_get", scope: !148, file: !148, line: 43, type: !2336, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3251 = !DILocalVariable(name: "kref", arg: 1, scope: !3250, file: !148, line: 43, type: !2338)
!3252 = !DILocation(line: 43, column: 42, scope: !3250)
!3253 = !DILocation(line: 45, column: 16, scope: !3250)
!3254 = !DILocation(line: 45, column: 22, scope: !3250)
!3255 = !DILocation(line: 45, column: 2, scope: !3250)
!3256 = !DILocation(line: 46, column: 1, scope: !3250)
!3257 = distinct !DISubprogram(name: "refcount_inc", scope: !25, file: !25, line: 265, type: !3258, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !3260}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!3261 = !DILocalVariable(name: "r", arg: 1, scope: !3257, file: !25, line: 265, type: !3260)
!3262 = !DILocation(line: 265, column: 45, scope: !3257)
!3263 = !DILocation(line: 267, column: 17, scope: !3257)
!3264 = !DILocation(line: 267, column: 2, scope: !3257)
!3265 = !DILocation(line: 268, column: 1, scope: !3257)
!3266 = distinct !DISubprogram(name: "__refcount_inc", scope: !25, file: !25, line: 248, type: !3267, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{null, !3260, !697}
!3269 = !DILocalVariable(name: "r", arg: 1, scope: !3266, file: !25, line: 248, type: !3260)
!3270 = !DILocation(line: 248, column: 47, scope: !3266)
!3271 = !DILocalVariable(name: "oldp", arg: 2, scope: !3266, file: !25, line: 248, type: !697)
!3272 = !DILocation(line: 248, column: 55, scope: !3266)
!3273 = !DILocation(line: 250, column: 20, scope: !3266)
!3274 = !DILocation(line: 250, column: 23, scope: !3266)
!3275 = !DILocation(line: 250, column: 2, scope: !3266)
!3276 = !DILocation(line: 251, column: 1, scope: !3266)
!3277 = distinct !DISubprogram(name: "__refcount_add", scope: !25, file: !25, line: 191, type: !3278, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !116, !3260, !697}
!3280 = !DILocalVariable(name: "i", arg: 1, scope: !3281, file: !3282, line: 182, type: !116)
!3281 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !3282, file: !3282, line: 182, type: !3283, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3282 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!116, !116, !3285}
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!3286 = !DILocation(line: 182, column: 54, scope: !3281, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 143, column: 9, scope: !3288, inlinedAt: !3289)
!3288 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !1783, file: !1783, line: 140, type: !3283, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3289 = distinct !DILocation(line: 193, column: 12, scope: !3277)
!3290 = !DILocalVariable(name: "v", arg: 2, scope: !3281, file: !3282, line: 182, type: !3285)
!3291 = !DILocation(line: 182, column: 67, scope: !3281, inlinedAt: !3287)
!3292 = !DILocalVariable(name: "__ret", scope: !3293, file: !3282, line: 184, type: !116)
!3293 = distinct !DILexicalBlock(scope: !3281, file: !3282, line: 184, column: 9)
!3294 = !DILocation(line: 184, column: 9, scope: !3293, inlinedAt: !3287)
!3295 = !DILocation(line: 99, column: 79, scope: !1773, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 142, column: 2, scope: !3288, inlinedAt: !3289)
!3297 = !DILocation(line: 99, column: 89, scope: !1773, inlinedAt: !3296)
!3298 = !DILocalVariable(name: "i", arg: 1, scope: !3288, file: !1783, line: 140, type: !116)
!3299 = !DILocation(line: 140, column: 30, scope: !3288, inlinedAt: !3289)
!3300 = !DILocalVariable(name: "v", arg: 2, scope: !3288, file: !1783, line: 140, type: !3285)
!3301 = !DILocation(line: 140, column: 43, scope: !3288, inlinedAt: !3289)
!3302 = !DILocalVariable(name: "i", arg: 1, scope: !3277, file: !25, line: 191, type: !116)
!3303 = !DILocation(line: 191, column: 39, scope: !3277)
!3304 = !DILocalVariable(name: "r", arg: 2, scope: !3277, file: !25, line: 191, type: !3260)
!3305 = !DILocation(line: 191, column: 54, scope: !3277)
!3306 = !DILocalVariable(name: "oldp", arg: 3, scope: !3277, file: !25, line: 191, type: !697)
!3307 = !DILocation(line: 191, column: 62, scope: !3277)
!3308 = !DILocalVariable(name: "old", scope: !3277, file: !25, line: 193, type: !116)
!3309 = !DILocation(line: 193, column: 6, scope: !3277)
!3310 = !DILocation(line: 193, column: 37, scope: !3277)
!3311 = !DILocation(line: 193, column: 41, scope: !3277)
!3312 = !DILocation(line: 193, column: 44, scope: !3277)
!3313 = !DILocation(line: 142, column: 31, scope: !3288, inlinedAt: !3289)
!3314 = !DILocation(line: 101, column: 20, scope: !1773, inlinedAt: !3296)
!3315 = !DILocation(line: 101, column: 23, scope: !1773, inlinedAt: !3296)
!3316 = !DILocation(line: 101, column: 2, scope: !1773, inlinedAt: !3296)
!3317 = !DILocation(line: 102, column: 2, scope: !1773, inlinedAt: !3296)
!3318 = !DILocation(line: 143, column: 39, scope: !3288, inlinedAt: !3289)
!3319 = !DILocation(line: 143, column: 42, scope: !3288, inlinedAt: !3289)
!3320 = !{i32 -2146429273}
!3321 = !DILocation(line: 195, column: 6, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3277, file: !25, line: 195, column: 6)
!3323 = !DILocation(line: 195, column: 6, scope: !3277)
!3324 = !DILocation(line: 196, column: 11, scope: !3322)
!3325 = !DILocation(line: 196, column: 4, scope: !3322)
!3326 = !DILocation(line: 196, column: 9, scope: !3322)
!3327 = !DILocation(line: 196, column: 3, scope: !3322)
!3328 = !DILocation(line: 198, column: 6, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3277, file: !25, line: 198, column: 6)
!3330 = !DILocation(line: 198, column: 6, scope: !3277)
!3331 = !DILocation(line: 199, column: 26, scope: !3329)
!3332 = !DILocation(line: 199, column: 3, scope: !3329)
!3333 = !DILocation(line: 200, column: 11, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3329, file: !25, line: 200, column: 11)
!3335 = !DILocation(line: 200, column: 11, scope: !3329)
!3336 = !DILocation(line: 201, column: 26, scope: !3334)
!3337 = !DILocation(line: 201, column: 3, scope: !3334)
!3338 = !DILocation(line: 202, column: 1, scope: !3277)
!3339 = distinct !DISubprogram(name: "kasan_check_write", scope: !3340, file: !3340, line: 38, type: !3341, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3340 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!87, !1777, !7}
!3343 = !DILocalVariable(name: "p", arg: 1, scope: !3339, file: !3340, line: 38, type: !1777)
!3344 = !DILocation(line: 38, column: 59, scope: !3339)
!3345 = !DILocalVariable(name: "size", arg: 2, scope: !3339, file: !3340, line: 38, type: !7)
!3346 = !DILocation(line: 38, column: 75, scope: !3339)
!3347 = !DILocation(line: 40, column: 2, scope: !3339)
!3348 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3349, file: !3349, line: 178, type: !3350, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3349 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3350 = !DISubroutineType(types: !3351)
!3351 = !{null, !1777, !1096, !116}
!3352 = !DILocalVariable(name: "ptr", arg: 1, scope: !3348, file: !3349, line: 178, type: !1777)
!3353 = !DILocation(line: 178, column: 60, scope: !3348)
!3354 = !DILocalVariable(name: "size", arg: 2, scope: !3348, file: !3349, line: 178, type: !1096)
!3355 = !DILocation(line: 178, column: 72, scope: !3348)
!3356 = !DILocalVariable(name: "type", arg: 3, scope: !3348, file: !3349, line: 179, type: !116)
!3357 = !DILocation(line: 179, column: 15, scope: !3348)
!3358 = !DILocation(line: 179, column: 23, scope: !3348)
!3359 = distinct !DISubprogram(name: "arch_atomic64_fetch_add", scope: !3360, file: !3360, line: 170, type: !1784, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3360 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/lizy2001/genbc/linux")
!3361 = !DILocalVariable(name: "i", arg: 1, scope: !3359, file: !3360, line: 170, type: !125)
!3362 = !DILocation(line: 170, column: 47, scope: !3359)
!3363 = !DILocalVariable(name: "v", arg: 2, scope: !3359, file: !3360, line: 170, type: !1786)
!3364 = !DILocation(line: 170, column: 62, scope: !3359)
!3365 = !DILocalVariable(name: "__ret", scope: !3366, file: !3360, line: 172, type: !125)
!3366 = distinct !DILexicalBlock(scope: !3359, file: !3360, line: 172, column: 9)
!3367 = !DILocation(line: 172, column: 9, scope: !3366)
!3368 = !{i32 -2146405660}
!3369 = !DILocation(line: 172, column: 2, scope: !3359)
!3370 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2041, file: !2041, line: 646, type: !2042, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3371 = !DILocalVariable(name: "__ret", scope: !3372, file: !2041, line: 648, type: !145)
!3372 = distinct !DILexicalBlock(scope: !3370, file: !2041, line: 648, column: 9)
!3373 = !DILocation(line: 648, column: 9, scope: !3372)
!3374 = !DILocalVariable(name: "__edi", scope: !3372, file: !2041, line: 648, type: !145)
!3375 = !DILocalVariable(name: "__esi", scope: !3372, file: !2041, line: 648, type: !145)
!3376 = !DILocalVariable(name: "__edx", scope: !3372, file: !2041, line: 648, type: !145)
!3377 = !DILocalVariable(name: "__ecx", scope: !3372, file: !2041, line: 648, type: !145)
!3378 = !DILocalVariable(name: "__eax", scope: !3372, file: !2041, line: 648, type: !145)
!3379 = !DILocation(line: 648, column: 9, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !2041, line: 648, column: 9)
!3381 = distinct !DILexicalBlock(scope: !3372, file: !2041, line: 648, column: 9)
!3382 = !{i32 -2145679993, i32 -2145677678, i32 -2145677444, i32 -2145677393, i32 -2145677365, i32 -2145677340, i32 -2145677656, i32 -2145677643, i32 -2145677205, i32 -2145677086, i32 -2145677551, i32 -2145677524, i32 -2145677496, i32 -2145677466}
!3383 = !DILocalVariable(name: "__mask", scope: !3384, file: !2041, line: 648, type: !145)
!3384 = distinct !DILexicalBlock(scope: !3380, file: !2041, line: 648, column: 9)
!3385 = !DILocation(line: 648, column: 9, scope: !3384)
!3386 = !DILocation(line: 648, column: 9, scope: !3381)
!3387 = !DILocation(line: 648, column: 2, scope: !3370)
!3388 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2041, file: !2041, line: 656, type: !1085, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3389 = !DILocalVariable(name: "__edi", scope: !3390, file: !2041, line: 658, type: !145)
!3390 = distinct !DILexicalBlock(scope: !3388, file: !2041, line: 658, column: 2)
!3391 = !DILocation(line: 658, column: 2, scope: !3390)
!3392 = !DILocalVariable(name: "__esi", scope: !3390, file: !2041, line: 658, type: !145)
!3393 = !DILocalVariable(name: "__edx", scope: !3390, file: !2041, line: 658, type: !145)
!3394 = !DILocalVariable(name: "__ecx", scope: !3390, file: !2041, line: 658, type: !145)
!3395 = !DILocalVariable(name: "__eax", scope: !3390, file: !2041, line: 658, type: !145)
!3396 = !{i32 -2145672899, i32 -2145672167, i32 -2145671933, i32 -2145671882, i32 -2145671854, i32 -2145671829, i32 -2145672145, i32 -2145672132, i32 -2145671694, i32 -2145671575, i32 -2145672040, i32 -2145672013, i32 -2145671985, i32 -2145671955}
!3397 = !DILocation(line: 659, column: 1, scope: !3388)
!3398 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2041, file: !2041, line: 651, type: !3399, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{null, !145}
!3401 = !DILocalVariable(name: "f", arg: 1, scope: !3398, file: !2041, line: 651, type: !145)
!3402 = !DILocation(line: 651, column: 65, scope: !3398)
!3403 = !DILocalVariable(name: "__edi", scope: !3404, file: !2041, line: 653, type: !145)
!3404 = distinct !DILexicalBlock(scope: !3398, file: !2041, line: 653, column: 2)
!3405 = !DILocation(line: 653, column: 2, scope: !3404)
!3406 = !DILocalVariable(name: "__esi", scope: !3404, file: !2041, line: 653, type: !145)
!3407 = !DILocalVariable(name: "__edx", scope: !3404, file: !2041, line: 653, type: !145)
!3408 = !DILocalVariable(name: "__ecx", scope: !3404, file: !2041, line: 653, type: !145)
!3409 = !DILocalVariable(name: "__eax", scope: !3404, file: !2041, line: 653, type: !145)
!3410 = !{i32 -2145675526, i32 -2145674776, i32 -2145674542, i32 -2145674491, i32 -2145674463, i32 -2145674438, i32 -2145674754, i32 -2145674741, i32 -2145674303, i32 -2145674184, i32 -2145674649, i32 -2145674622, i32 -2145674594, i32 -2145674564}
!3411 = !DILocation(line: 654, column: 1, scope: !3398)
!3412 = distinct !DISubprogram(name: "kasan_check_read", scope: !3340, file: !3340, line: 34, type: !3341, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3413 = !DILocalVariable(name: "p", arg: 1, scope: !3412, file: !3340, line: 34, type: !1777)
!3414 = !DILocation(line: 34, column: 58, scope: !3412)
!3415 = !DILocalVariable(name: "size", arg: 2, scope: !3412, file: !3340, line: 34, type: !7)
!3416 = !DILocation(line: 34, column: 74, scope: !3412)
!3417 = !DILocation(line: 36, column: 2, scope: !3412)
!3418 = distinct !DISubprogram(name: "trace_dma_fence_enable_signal", scope: !1931, file: !1931, line: 58, type: !109, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3419 = !DILocalVariable(name: "fence", arg: 1, scope: !3418, file: !1931, line: 58, type: !61)
!3420 = !DILocation(line: 58, column: 1, scope: !3418)
!3421 = distinct !DISubprogram(name: "__list_add", scope: !1858, file: !1858, line: 63, type: !3422, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{null, !54, !54, !54}
!3424 = !DILocalVariable(name: "new", arg: 1, scope: !3421, file: !1858, line: 63, type: !54)
!3425 = !DILocation(line: 63, column: 49, scope: !3421)
!3426 = !DILocalVariable(name: "prev", arg: 2, scope: !3421, file: !1858, line: 64, type: !54)
!3427 = !DILocation(line: 64, column: 28, scope: !3421)
!3428 = !DILocalVariable(name: "next", arg: 3, scope: !3421, file: !1858, line: 65, type: !54)
!3429 = !DILocation(line: 65, column: 28, scope: !3421)
!3430 = !DILocation(line: 67, column: 24, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3421, file: !1858, line: 67, column: 6)
!3432 = !DILocation(line: 67, column: 29, scope: !3431)
!3433 = !DILocation(line: 67, column: 35, scope: !3431)
!3434 = !DILocation(line: 67, column: 7, scope: !3431)
!3435 = !DILocation(line: 67, column: 6, scope: !3421)
!3436 = !DILocation(line: 68, column: 3, scope: !3431)
!3437 = !DILocation(line: 70, column: 15, scope: !3421)
!3438 = !DILocation(line: 70, column: 2, scope: !3421)
!3439 = !DILocation(line: 70, column: 8, scope: !3421)
!3440 = !DILocation(line: 70, column: 13, scope: !3421)
!3441 = !DILocation(line: 71, column: 14, scope: !3421)
!3442 = !DILocation(line: 71, column: 2, scope: !3421)
!3443 = !DILocation(line: 71, column: 7, scope: !3421)
!3444 = !DILocation(line: 71, column: 12, scope: !3421)
!3445 = !DILocation(line: 72, column: 14, scope: !3421)
!3446 = !DILocation(line: 72, column: 2, scope: !3421)
!3447 = !DILocation(line: 72, column: 7, scope: !3421)
!3448 = !DILocation(line: 72, column: 12, scope: !3421)
!3449 = !DILocation(line: 73, column: 2, scope: !3421)
!3450 = !DILocation(line: 73, column: 2, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3421, file: !1858, line: 73, column: 2)
!3452 = !DILocation(line: 73, column: 2, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3451, file: !1858, line: 73, column: 2)
!3454 = !DILocation(line: 73, column: 2, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3451, file: !1858, line: 73, column: 2)
!3456 = !DILocation(line: 74, column: 1, scope: !3421)
!3457 = distinct !DISubprogram(name: "__list_add_valid", scope: !1858, file: !1858, line: 45, type: !3458, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!87, !54, !54, !54}
!3460 = !DILocalVariable(name: "new", arg: 1, scope: !3457, file: !1858, line: 45, type: !54)
!3461 = !DILocation(line: 45, column: 55, scope: !3457)
!3462 = !DILocalVariable(name: "prev", arg: 2, scope: !3457, file: !1858, line: 46, type: !54)
!3463 = !DILocation(line: 46, column: 23, scope: !3457)
!3464 = !DILocalVariable(name: "next", arg: 3, scope: !3457, file: !1858, line: 47, type: !54)
!3465 = !DILocation(line: 47, column: 23, scope: !3457)
!3466 = !DILocation(line: 49, column: 2, scope: !3457)
!3467 = distinct !DISubprogram(name: "dma_fence_is_signaled_locked", scope: !6, file: !6, line: 399, type: !99, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3468 = !DILocalVariable(name: "fence", arg: 1, scope: !3467, file: !6, line: 399, type: !61)
!3469 = !DILocation(line: 399, column: 48, scope: !3467)
!3470 = !DILocation(line: 401, column: 45, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3467, file: !6, line: 401, column: 6)
!3472 = !DILocation(line: 401, column: 52, scope: !3471)
!3473 = !DILocation(line: 401, column: 6, scope: !3471)
!3474 = !DILocation(line: 401, column: 6, scope: !3467)
!3475 = !DILocation(line: 402, column: 3, scope: !3471)
!3476 = !DILocation(line: 404, column: 6, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3467, file: !6, line: 404, column: 6)
!3478 = !DILocation(line: 404, column: 13, scope: !3477)
!3479 = !DILocation(line: 404, column: 18, scope: !3477)
!3480 = !DILocation(line: 404, column: 27, scope: !3477)
!3481 = !DILocation(line: 404, column: 30, scope: !3477)
!3482 = !DILocation(line: 404, column: 37, scope: !3477)
!3483 = !DILocation(line: 404, column: 42, scope: !3477)
!3484 = !DILocation(line: 404, column: 51, scope: !3477)
!3485 = !DILocation(line: 404, column: 6, scope: !3467)
!3486 = !DILocation(line: 405, column: 27, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3477, file: !6, line: 404, column: 59)
!3488 = !DILocation(line: 405, column: 3, scope: !3487)
!3489 = !DILocation(line: 406, column: 3, scope: !3487)
!3490 = !DILocation(line: 409, column: 2, scope: !3467)
!3491 = !DILocation(line: 410, column: 1, scope: !3467)
!3492 = distinct !DISubprogram(name: "__list_del_entry", scope: !1858, file: !1858, line: 130, type: !1935, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3493 = !DILocalVariable(name: "entry", arg: 1, scope: !3492, file: !1858, line: 130, type: !54)
!3494 = !DILocation(line: 130, column: 55, scope: !3492)
!3495 = !DILocation(line: 132, column: 30, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3492, file: !1858, line: 132, column: 6)
!3497 = !DILocation(line: 132, column: 7, scope: !3496)
!3498 = !DILocation(line: 132, column: 6, scope: !3492)
!3499 = !DILocation(line: 133, column: 3, scope: !3496)
!3500 = !DILocation(line: 135, column: 13, scope: !3492)
!3501 = !DILocation(line: 135, column: 20, scope: !3492)
!3502 = !DILocation(line: 135, column: 26, scope: !3492)
!3503 = !DILocation(line: 135, column: 33, scope: !3492)
!3504 = !DILocation(line: 135, column: 2, scope: !3492)
!3505 = !DILocation(line: 136, column: 1, scope: !3492)
!3506 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !1858, file: !1858, line: 51, type: !3507, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!87, !54}
!3509 = !DILocalVariable(name: "entry", arg: 1, scope: !3506, file: !1858, line: 51, type: !54)
!3510 = !DILocation(line: 51, column: 61, scope: !3506)
!3511 = !DILocation(line: 53, column: 2, scope: !3506)
!3512 = distinct !DISubprogram(name: "__list_del", scope: !1858, file: !1858, line: 110, type: !1859, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3513 = !DILocalVariable(name: "prev", arg: 1, scope: !3512, file: !1858, line: 110, type: !54)
!3514 = !DILocation(line: 110, column: 50, scope: !3512)
!3515 = !DILocalVariable(name: "next", arg: 2, scope: !3512, file: !1858, line: 110, type: !54)
!3516 = !DILocation(line: 110, column: 75, scope: !3512)
!3517 = !DILocation(line: 112, column: 15, scope: !3512)
!3518 = !DILocation(line: 112, column: 2, scope: !3512)
!3519 = !DILocation(line: 112, column: 8, scope: !3512)
!3520 = !DILocation(line: 112, column: 13, scope: !3512)
!3521 = !DILocation(line: 113, column: 2, scope: !3512)
!3522 = !DILocation(line: 113, column: 2, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3512, file: !1858, line: 113, column: 2)
!3524 = !DILocation(line: 113, column: 2, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3523, file: !1858, line: 113, column: 2)
!3526 = !DILocation(line: 113, column: 2, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3523, file: !1858, line: 113, column: 2)
!3528 = !DILocation(line: 114, column: 1, scope: !3512)
!3529 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !174, file: !174, line: 1828, type: !3530, scopeLine: 1829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!116, !172, !116}
!3532 = !DILocalVariable(name: "tsk", arg: 1, scope: !3529, file: !174, line: 1828, type: !172)
!3533 = !DILocation(line: 1828, column: 60, scope: !3529)
!3534 = !DILocalVariable(name: "flag", arg: 2, scope: !3529, file: !174, line: 1828, type: !116)
!3535 = !DILocation(line: 1828, column: 69, scope: !3529)
!3536 = !DILocation(line: 1830, column: 46, scope: !3529)
!3537 = !DILocation(line: 1830, column: 29, scope: !3529)
!3538 = !DILocation(line: 1830, column: 52, scope: !3529)
!3539 = !DILocation(line: 1830, column: 9, scope: !3529)
!3540 = !DILocation(line: 1830, column: 2, scope: !3529)
!3541 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !3542, file: !3542, line: 82, type: !3543, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3542 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!116, !3545, !116}
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!3546 = !DILocalVariable(name: "ti", arg: 1, scope: !3541, file: !3542, line: 82, type: !3545)
!3547 = !DILocation(line: 82, column: 59, scope: !3541)
!3548 = !DILocalVariable(name: "flag", arg: 2, scope: !3541, file: !3542, line: 82, type: !116)
!3549 = !DILocation(line: 82, column: 67, scope: !3541)
!3550 = !DILocation(line: 84, column: 18, scope: !3541)
!3551 = !DILocation(line: 84, column: 42, scope: !3541)
!3552 = !DILocation(line: 84, column: 46, scope: !3541)
!3553 = !DILocation(line: 84, column: 9, scope: !3541)
!3554 = !DILocation(line: 84, column: 2, scope: !3541)
!3555 = distinct !DISubprogram(name: "task_thread_info", scope: !174, file: !174, line: 1729, type: !3556, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!3545, !172}
!3558 = !DILocalVariable(name: "task", arg: 1, scope: !3555, file: !174, line: 1729, type: !172)
!3559 = !DILocation(line: 1729, column: 72, scope: !3555)
!3560 = !DILocation(line: 1731, column: 10, scope: !3555)
!3561 = !DILocation(line: 1731, column: 16, scope: !3555)
!3562 = !DILocation(line: 1731, column: 2, scope: !3555)
!3563 = distinct !DISubprogram(name: "kmalloc_array", scope: !38, file: !38, line: 584, type: !3177, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3564 = !DILocalVariable(name: "s", arg: 1, scope: !3565, file: !38, line: 445, type: !1311)
!3565 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !38, file: !38, line: 445, type: !3566, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!45, !1311, !161, !1096}
!3568 = !DILocation(line: 445, column: 72, scope: !3565, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 552, column: 10, scope: !3570, inlinedAt: !3575)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !38, line: 540, column: 34)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !38, line: 540, column: 6)
!3572 = distinct !DISubprogram(name: "kmalloc", scope: !38, file: !38, line: 538, type: !3573, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!45, !1096, !161}
!3575 = distinct !DILocation(line: 591, column: 10, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3563, file: !38, line: 590, column: 6)
!3577 = !DILocalVariable(name: "flags", arg: 2, scope: !3565, file: !38, line: 446, type: !161)
!3578 = !DILocation(line: 446, column: 9, scope: !3565, inlinedAt: !3569)
!3579 = !DILocalVariable(name: "size", arg: 3, scope: !3565, file: !38, line: 446, type: !1096)
!3580 = !DILocation(line: 446, column: 23, scope: !3565, inlinedAt: !3569)
!3581 = !DILocalVariable(name: "ret", scope: !3565, file: !38, line: 448, type: !45)
!3582 = !DILocation(line: 448, column: 8, scope: !3565, inlinedAt: !3569)
!3583 = !DILocalVariable(name: "flags", arg: 1, scope: !3584, file: !38, line: 318, type: !161)
!3584 = distinct !DISubprogram(name: "kmalloc_type", scope: !38, file: !38, line: 318, type: !3585, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!37, !161}
!3587 = !DILocation(line: 318, column: 67, scope: !3584, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 553, column: 20, scope: !3570, inlinedAt: !3575)
!3589 = !DILocalVariable(name: "size", arg: 1, scope: !3590, file: !38, line: 346, type: !1096)
!3590 = distinct !DISubprogram(name: "kmalloc_index", scope: !38, file: !38, line: 346, type: !3591, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!7, !1096}
!3593 = !DILocation(line: 346, column: 58, scope: !3590, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 547, column: 11, scope: !3570, inlinedAt: !3575)
!3595 = !DILocalVariable(name: "size", arg: 1, scope: !3596, file: !38, line: 472, type: !1096)
!3596 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !38, file: !38, line: 472, type: !3597, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!45, !1096, !161, !7}
!3599 = !DILocation(line: 472, column: 28, scope: !3596, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 481, column: 9, scope: !3601, inlinedAt: !3602)
!3601 = distinct !DISubprogram(name: "kmalloc_large", scope: !38, file: !38, line: 478, type: !3573, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3602 = distinct !DILocation(line: 545, column: 11, scope: !3603, inlinedAt: !3575)
!3603 = distinct !DILexicalBlock(scope: !3570, file: !38, line: 544, column: 7)
!3604 = !DILocalVariable(name: "flags", arg: 2, scope: !3596, file: !38, line: 472, type: !161)
!3605 = !DILocation(line: 472, column: 40, scope: !3596, inlinedAt: !3600)
!3606 = !DILocalVariable(name: "order", arg: 3, scope: !3596, file: !38, line: 472, type: !7)
!3607 = !DILocation(line: 472, column: 60, scope: !3596, inlinedAt: !3600)
!3608 = !DILocalVariable(name: "size", arg: 1, scope: !3601, file: !38, line: 478, type: !1096)
!3609 = !DILocation(line: 478, column: 51, scope: !3601, inlinedAt: !3602)
!3610 = !DILocalVariable(name: "flags", arg: 2, scope: !3601, file: !38, line: 478, type: !161)
!3611 = !DILocation(line: 478, column: 63, scope: !3601, inlinedAt: !3602)
!3612 = !DILocalVariable(name: "order", scope: !3601, file: !38, line: 480, type: !7)
!3613 = !DILocation(line: 480, column: 15, scope: !3601, inlinedAt: !3602)
!3614 = !DILocalVariable(name: "size", arg: 1, scope: !3572, file: !38, line: 538, type: !1096)
!3615 = !DILocation(line: 538, column: 45, scope: !3572, inlinedAt: !3575)
!3616 = !DILocalVariable(name: "flags", arg: 2, scope: !3572, file: !38, line: 538, type: !161)
!3617 = !DILocation(line: 538, column: 57, scope: !3572, inlinedAt: !3575)
!3618 = !DILocalVariable(name: "index", scope: !3570, file: !38, line: 542, type: !7)
!3619 = !DILocation(line: 542, column: 16, scope: !3570, inlinedAt: !3575)
!3620 = !DILocalVariable(name: "n", arg: 1, scope: !3563, file: !38, line: 584, type: !1096)
!3621 = !DILocation(line: 584, column: 42, scope: !3563)
!3622 = !DILocalVariable(name: "size", arg: 2, scope: !3563, file: !38, line: 584, type: !1096)
!3623 = !DILocation(line: 584, column: 52, scope: !3563)
!3624 = !DILocalVariable(name: "flags", arg: 3, scope: !3563, file: !38, line: 584, type: !161)
!3625 = !DILocation(line: 584, column: 64, scope: !3563)
!3626 = !DILocalVariable(name: "bytes", scope: !3563, file: !38, line: 586, type: !1096)
!3627 = !DILocation(line: 586, column: 9, scope: !3563)
!3628 = !DILocalVariable(name: "__a", scope: !3629, file: !38, line: 588, type: !1096)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !38, line: 588, column: 6)
!3630 = distinct !DILexicalBlock(scope: !3563, file: !38, line: 588, column: 6)
!3631 = !DILocation(line: 588, column: 6, scope: !3629)
!3632 = !DILocalVariable(name: "__b", scope: !3629, file: !38, line: 588, type: !1096)
!3633 = !DILocalVariable(name: "__d", scope: !3629, file: !38, line: 588, type: !3634)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!3635 = !DILocation(line: 588, column: 6, scope: !3630)
!3636 = !DILocation(line: 588, column: 6, scope: !3563)
!3637 = !DILocation(line: 589, column: 3, scope: !3630)
!3638 = !DILocation(line: 590, column: 27, scope: !3576)
!3639 = !DILocation(line: 590, column: 6, scope: !3576)
!3640 = !DILocation(line: 590, column: 30, scope: !3576)
!3641 = !DILocation(line: 590, column: 54, scope: !3576)
!3642 = !DILocation(line: 590, column: 33, scope: !3576)
!3643 = !DILocation(line: 590, column: 6, scope: !3563)
!3644 = !DILocation(line: 591, column: 18, scope: !3576)
!3645 = !DILocation(line: 591, column: 25, scope: !3576)
!3646 = !DILocation(line: 540, column: 27, scope: !3571, inlinedAt: !3575)
!3647 = !DILocation(line: 540, column: 6, scope: !3571, inlinedAt: !3575)
!3648 = !DILocation(line: 540, column: 6, scope: !3572, inlinedAt: !3575)
!3649 = !DILocation(line: 544, column: 7, scope: !3603, inlinedAt: !3575)
!3650 = !DILocation(line: 544, column: 12, scope: !3603, inlinedAt: !3575)
!3651 = !DILocation(line: 544, column: 7, scope: !3570, inlinedAt: !3575)
!3652 = !DILocation(line: 545, column: 25, scope: !3603, inlinedAt: !3575)
!3653 = !DILocation(line: 545, column: 31, scope: !3603, inlinedAt: !3575)
!3654 = !DILocation(line: 480, column: 33, scope: !3601, inlinedAt: !3602)
!3655 = !DILocation(line: 480, column: 23, scope: !3601, inlinedAt: !3602)
!3656 = !DILocation(line: 481, column: 29, scope: !3601, inlinedAt: !3602)
!3657 = !DILocation(line: 481, column: 35, scope: !3601, inlinedAt: !3602)
!3658 = !DILocation(line: 481, column: 42, scope: !3601, inlinedAt: !3602)
!3659 = !DILocation(line: 474, column: 23, scope: !3596, inlinedAt: !3600)
!3660 = !DILocation(line: 474, column: 29, scope: !3596, inlinedAt: !3600)
!3661 = !DILocation(line: 474, column: 36, scope: !3596, inlinedAt: !3600)
!3662 = !DILocation(line: 474, column: 9, scope: !3596, inlinedAt: !3600)
!3663 = !DILocation(line: 545, column: 4, scope: !3603, inlinedAt: !3575)
!3664 = !DILocation(line: 547, column: 25, scope: !3570, inlinedAt: !3575)
!3665 = !DILocation(line: 348, column: 7, scope: !3666, inlinedAt: !3594)
!3666 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 348, column: 6)
!3667 = !DILocation(line: 348, column: 6, scope: !3590, inlinedAt: !3594)
!3668 = !DILocation(line: 349, column: 3, scope: !3666, inlinedAt: !3594)
!3669 = !DILocation(line: 351, column: 6, scope: !3670, inlinedAt: !3594)
!3670 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 351, column: 6)
!3671 = !DILocation(line: 351, column: 11, scope: !3670, inlinedAt: !3594)
!3672 = !DILocation(line: 351, column: 6, scope: !3590, inlinedAt: !3594)
!3673 = !DILocation(line: 352, column: 3, scope: !3670, inlinedAt: !3594)
!3674 = !DILocation(line: 354, column: 32, scope: !3675, inlinedAt: !3594)
!3675 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 354, column: 6)
!3676 = !DILocation(line: 354, column: 37, scope: !3675, inlinedAt: !3594)
!3677 = !DILocation(line: 354, column: 42, scope: !3675, inlinedAt: !3594)
!3678 = !DILocation(line: 354, column: 45, scope: !3675, inlinedAt: !3594)
!3679 = !DILocation(line: 354, column: 50, scope: !3675, inlinedAt: !3594)
!3680 = !DILocation(line: 354, column: 6, scope: !3590, inlinedAt: !3594)
!3681 = !DILocation(line: 355, column: 3, scope: !3675, inlinedAt: !3594)
!3682 = !DILocation(line: 356, column: 32, scope: !3683, inlinedAt: !3594)
!3683 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 356, column: 6)
!3684 = !DILocation(line: 356, column: 37, scope: !3683, inlinedAt: !3594)
!3685 = !DILocation(line: 356, column: 43, scope: !3683, inlinedAt: !3594)
!3686 = !DILocation(line: 356, column: 46, scope: !3683, inlinedAt: !3594)
!3687 = !DILocation(line: 356, column: 51, scope: !3683, inlinedAt: !3594)
!3688 = !DILocation(line: 356, column: 6, scope: !3590, inlinedAt: !3594)
!3689 = !DILocation(line: 357, column: 3, scope: !3683, inlinedAt: !3594)
!3690 = !DILocation(line: 358, column: 6, scope: !3691, inlinedAt: !3594)
!3691 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 358, column: 6)
!3692 = !DILocation(line: 358, column: 11, scope: !3691, inlinedAt: !3594)
!3693 = !DILocation(line: 358, column: 6, scope: !3590, inlinedAt: !3594)
!3694 = !DILocation(line: 358, column: 26, scope: !3691, inlinedAt: !3594)
!3695 = !DILocation(line: 359, column: 6, scope: !3696, inlinedAt: !3594)
!3696 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 359, column: 6)
!3697 = !DILocation(line: 359, column: 11, scope: !3696, inlinedAt: !3594)
!3698 = !DILocation(line: 359, column: 6, scope: !3590, inlinedAt: !3594)
!3699 = !DILocation(line: 359, column: 26, scope: !3696, inlinedAt: !3594)
!3700 = !DILocation(line: 360, column: 6, scope: !3701, inlinedAt: !3594)
!3701 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 360, column: 6)
!3702 = !DILocation(line: 360, column: 11, scope: !3701, inlinedAt: !3594)
!3703 = !DILocation(line: 360, column: 6, scope: !3590, inlinedAt: !3594)
!3704 = !DILocation(line: 360, column: 26, scope: !3701, inlinedAt: !3594)
!3705 = !DILocation(line: 361, column: 6, scope: !3706, inlinedAt: !3594)
!3706 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 361, column: 6)
!3707 = !DILocation(line: 361, column: 11, scope: !3706, inlinedAt: !3594)
!3708 = !DILocation(line: 361, column: 6, scope: !3590, inlinedAt: !3594)
!3709 = !DILocation(line: 361, column: 26, scope: !3706, inlinedAt: !3594)
!3710 = !DILocation(line: 362, column: 6, scope: !3711, inlinedAt: !3594)
!3711 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 362, column: 6)
!3712 = !DILocation(line: 362, column: 11, scope: !3711, inlinedAt: !3594)
!3713 = !DILocation(line: 362, column: 6, scope: !3590, inlinedAt: !3594)
!3714 = !DILocation(line: 362, column: 26, scope: !3711, inlinedAt: !3594)
!3715 = !DILocation(line: 363, column: 6, scope: !3716, inlinedAt: !3594)
!3716 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 363, column: 6)
!3717 = !DILocation(line: 363, column: 11, scope: !3716, inlinedAt: !3594)
!3718 = !DILocation(line: 363, column: 6, scope: !3590, inlinedAt: !3594)
!3719 = !DILocation(line: 363, column: 26, scope: !3716, inlinedAt: !3594)
!3720 = !DILocation(line: 364, column: 6, scope: !3721, inlinedAt: !3594)
!3721 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 364, column: 6)
!3722 = !DILocation(line: 364, column: 11, scope: !3721, inlinedAt: !3594)
!3723 = !DILocation(line: 364, column: 6, scope: !3590, inlinedAt: !3594)
!3724 = !DILocation(line: 364, column: 26, scope: !3721, inlinedAt: !3594)
!3725 = !DILocation(line: 365, column: 6, scope: !3726, inlinedAt: !3594)
!3726 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 365, column: 6)
!3727 = !DILocation(line: 365, column: 11, scope: !3726, inlinedAt: !3594)
!3728 = !DILocation(line: 365, column: 6, scope: !3590, inlinedAt: !3594)
!3729 = !DILocation(line: 365, column: 26, scope: !3726, inlinedAt: !3594)
!3730 = !DILocation(line: 366, column: 6, scope: !3731, inlinedAt: !3594)
!3731 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 366, column: 6)
!3732 = !DILocation(line: 366, column: 11, scope: !3731, inlinedAt: !3594)
!3733 = !DILocation(line: 366, column: 6, scope: !3590, inlinedAt: !3594)
!3734 = !DILocation(line: 366, column: 26, scope: !3731, inlinedAt: !3594)
!3735 = !DILocation(line: 367, column: 6, scope: !3736, inlinedAt: !3594)
!3736 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 367, column: 6)
!3737 = !DILocation(line: 367, column: 11, scope: !3736, inlinedAt: !3594)
!3738 = !DILocation(line: 367, column: 6, scope: !3590, inlinedAt: !3594)
!3739 = !DILocation(line: 367, column: 26, scope: !3736, inlinedAt: !3594)
!3740 = !DILocation(line: 368, column: 6, scope: !3741, inlinedAt: !3594)
!3741 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 368, column: 6)
!3742 = !DILocation(line: 368, column: 11, scope: !3741, inlinedAt: !3594)
!3743 = !DILocation(line: 368, column: 6, scope: !3590, inlinedAt: !3594)
!3744 = !DILocation(line: 368, column: 26, scope: !3741, inlinedAt: !3594)
!3745 = !DILocation(line: 369, column: 6, scope: !3746, inlinedAt: !3594)
!3746 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 369, column: 6)
!3747 = !DILocation(line: 369, column: 11, scope: !3746, inlinedAt: !3594)
!3748 = !DILocation(line: 369, column: 6, scope: !3590, inlinedAt: !3594)
!3749 = !DILocation(line: 369, column: 26, scope: !3746, inlinedAt: !3594)
!3750 = !DILocation(line: 370, column: 6, scope: !3751, inlinedAt: !3594)
!3751 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 370, column: 6)
!3752 = !DILocation(line: 370, column: 11, scope: !3751, inlinedAt: !3594)
!3753 = !DILocation(line: 370, column: 6, scope: !3590, inlinedAt: !3594)
!3754 = !DILocation(line: 370, column: 26, scope: !3751, inlinedAt: !3594)
!3755 = !DILocation(line: 371, column: 6, scope: !3756, inlinedAt: !3594)
!3756 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 371, column: 6)
!3757 = !DILocation(line: 371, column: 11, scope: !3756, inlinedAt: !3594)
!3758 = !DILocation(line: 371, column: 6, scope: !3590, inlinedAt: !3594)
!3759 = !DILocation(line: 371, column: 26, scope: !3756, inlinedAt: !3594)
!3760 = !DILocation(line: 372, column: 6, scope: !3761, inlinedAt: !3594)
!3761 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 372, column: 6)
!3762 = !DILocation(line: 372, column: 11, scope: !3761, inlinedAt: !3594)
!3763 = !DILocation(line: 372, column: 6, scope: !3590, inlinedAt: !3594)
!3764 = !DILocation(line: 372, column: 26, scope: !3761, inlinedAt: !3594)
!3765 = !DILocation(line: 373, column: 6, scope: !3766, inlinedAt: !3594)
!3766 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 373, column: 6)
!3767 = !DILocation(line: 373, column: 11, scope: !3766, inlinedAt: !3594)
!3768 = !DILocation(line: 373, column: 6, scope: !3590, inlinedAt: !3594)
!3769 = !DILocation(line: 373, column: 26, scope: !3766, inlinedAt: !3594)
!3770 = !DILocation(line: 374, column: 6, scope: !3771, inlinedAt: !3594)
!3771 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 374, column: 6)
!3772 = !DILocation(line: 374, column: 11, scope: !3771, inlinedAt: !3594)
!3773 = !DILocation(line: 374, column: 6, scope: !3590, inlinedAt: !3594)
!3774 = !DILocation(line: 374, column: 26, scope: !3771, inlinedAt: !3594)
!3775 = !DILocation(line: 375, column: 6, scope: !3776, inlinedAt: !3594)
!3776 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 375, column: 6)
!3777 = !DILocation(line: 375, column: 11, scope: !3776, inlinedAt: !3594)
!3778 = !DILocation(line: 375, column: 6, scope: !3590, inlinedAt: !3594)
!3779 = !DILocation(line: 375, column: 27, scope: !3776, inlinedAt: !3594)
!3780 = !DILocation(line: 376, column: 6, scope: !3781, inlinedAt: !3594)
!3781 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 376, column: 6)
!3782 = !DILocation(line: 376, column: 11, scope: !3781, inlinedAt: !3594)
!3783 = !DILocation(line: 376, column: 6, scope: !3590, inlinedAt: !3594)
!3784 = !DILocation(line: 376, column: 32, scope: !3781, inlinedAt: !3594)
!3785 = !DILocation(line: 377, column: 6, scope: !3786, inlinedAt: !3594)
!3786 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 377, column: 6)
!3787 = !DILocation(line: 377, column: 11, scope: !3786, inlinedAt: !3594)
!3788 = !DILocation(line: 377, column: 6, scope: !3590, inlinedAt: !3594)
!3789 = !DILocation(line: 377, column: 32, scope: !3786, inlinedAt: !3594)
!3790 = !DILocation(line: 378, column: 6, scope: !3791, inlinedAt: !3594)
!3791 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 378, column: 6)
!3792 = !DILocation(line: 378, column: 11, scope: !3791, inlinedAt: !3594)
!3793 = !DILocation(line: 378, column: 6, scope: !3590, inlinedAt: !3594)
!3794 = !DILocation(line: 378, column: 32, scope: !3791, inlinedAt: !3594)
!3795 = !DILocation(line: 379, column: 6, scope: !3796, inlinedAt: !3594)
!3796 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 379, column: 6)
!3797 = !DILocation(line: 379, column: 11, scope: !3796, inlinedAt: !3594)
!3798 = !DILocation(line: 379, column: 6, scope: !3590, inlinedAt: !3594)
!3799 = !DILocation(line: 379, column: 33, scope: !3796, inlinedAt: !3594)
!3800 = !DILocation(line: 380, column: 6, scope: !3801, inlinedAt: !3594)
!3801 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 380, column: 6)
!3802 = !DILocation(line: 380, column: 11, scope: !3801, inlinedAt: !3594)
!3803 = !DILocation(line: 380, column: 6, scope: !3590, inlinedAt: !3594)
!3804 = !DILocation(line: 380, column: 33, scope: !3801, inlinedAt: !3594)
!3805 = !DILocation(line: 381, column: 6, scope: !3806, inlinedAt: !3594)
!3806 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 381, column: 6)
!3807 = !DILocation(line: 381, column: 11, scope: !3806, inlinedAt: !3594)
!3808 = !DILocation(line: 381, column: 6, scope: !3590, inlinedAt: !3594)
!3809 = !DILocation(line: 381, column: 33, scope: !3806, inlinedAt: !3594)
!3810 = !DILocation(line: 382, column: 2, scope: !3811, inlinedAt: !3594)
!3811 = distinct !DILexicalBlock(scope: !3812, file: !38, line: 382, column: 2)
!3812 = distinct !DILexicalBlock(scope: !3590, file: !38, line: 382, column: 2)
!3813 = !{i32 -2144627888, i32 -2144627859, i32 -2144627813, i32 -2144627755, i32 -2144627701, i32 -2144627647, i32 -2144627592, i32 -2144627561}
!3814 = !DILocation(line: 382, column: 2, scope: !3815, inlinedAt: !3594)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !38, line: 382, column: 2)
!3816 = distinct !DILexicalBlock(scope: !3812, file: !38, line: 382, column: 2)
!3817 = !{i32 -2144627118, i32 -2144627111, i32 -2144627057, i32 -2144627026, i32 -2144626996}
!3818 = !DILocation(line: 382, column: 2, scope: !3816, inlinedAt: !3594)
!3819 = !DILocation(line: 386, column: 1, scope: !3590, inlinedAt: !3594)
!3820 = !DILocation(line: 547, column: 9, scope: !3570, inlinedAt: !3575)
!3821 = !DILocation(line: 549, column: 8, scope: !3822, inlinedAt: !3575)
!3822 = distinct !DILexicalBlock(scope: !3570, file: !38, line: 549, column: 7)
!3823 = !DILocation(line: 549, column: 7, scope: !3570, inlinedAt: !3575)
!3824 = !DILocation(line: 550, column: 4, scope: !3822, inlinedAt: !3575)
!3825 = !DILocation(line: 553, column: 33, scope: !3570, inlinedAt: !3575)
!3826 = !DILocation(line: 325, column: 6, scope: !3827, inlinedAt: !3588)
!3827 = distinct !DILexicalBlock(scope: !3584, file: !38, line: 325, column: 6)
!3828 = !DILocation(line: 325, column: 6, scope: !3584, inlinedAt: !3588)
!3829 = !DILocation(line: 326, column: 3, scope: !3827, inlinedAt: !3588)
!3830 = !DILocation(line: 332, column: 9, scope: !3584, inlinedAt: !3588)
!3831 = !DILocation(line: 332, column: 15, scope: !3584, inlinedAt: !3588)
!3832 = !DILocation(line: 332, column: 2, scope: !3584, inlinedAt: !3588)
!3833 = !DILocation(line: 336, column: 1, scope: !3584, inlinedAt: !3588)
!3834 = !DILocation(line: 553, column: 5, scope: !3570, inlinedAt: !3575)
!3835 = !DILocation(line: 553, column: 41, scope: !3570, inlinedAt: !3575)
!3836 = !DILocation(line: 554, column: 5, scope: !3570, inlinedAt: !3575)
!3837 = !DILocation(line: 554, column: 12, scope: !3570, inlinedAt: !3575)
!3838 = !DILocation(line: 448, column: 31, scope: !3565, inlinedAt: !3569)
!3839 = !DILocation(line: 448, column: 34, scope: !3565, inlinedAt: !3569)
!3840 = !DILocation(line: 448, column: 14, scope: !3565, inlinedAt: !3569)
!3841 = !DILocation(line: 450, column: 22, scope: !3565, inlinedAt: !3569)
!3842 = !DILocation(line: 450, column: 25, scope: !3565, inlinedAt: !3569)
!3843 = !DILocation(line: 450, column: 30, scope: !3565, inlinedAt: !3569)
!3844 = !DILocation(line: 450, column: 36, scope: !3565, inlinedAt: !3569)
!3845 = !DILocation(line: 450, column: 8, scope: !3565, inlinedAt: !3569)
!3846 = !DILocation(line: 450, column: 6, scope: !3565, inlinedAt: !3569)
!3847 = !DILocation(line: 451, column: 9, scope: !3565, inlinedAt: !3569)
!3848 = !DILocation(line: 552, column: 3, scope: !3570, inlinedAt: !3575)
!3849 = !DILocation(line: 557, column: 19, scope: !3572, inlinedAt: !3575)
!3850 = !DILocation(line: 557, column: 25, scope: !3572, inlinedAt: !3575)
!3851 = !DILocation(line: 557, column: 9, scope: !3572, inlinedAt: !3575)
!3852 = !DILocation(line: 557, column: 2, scope: !3572, inlinedAt: !3575)
!3853 = !DILocation(line: 558, column: 1, scope: !3572, inlinedAt: !3575)
!3854 = !DILocation(line: 591, column: 3, scope: !3576)
!3855 = !DILocation(line: 592, column: 19, scope: !3563)
!3856 = !DILocation(line: 592, column: 26, scope: !3563)
!3857 = !DILocation(line: 592, column: 9, scope: !3563)
!3858 = !DILocation(line: 592, column: 2, scope: !3563)
!3859 = !DILocation(line: 593, column: 1, scope: !3563)
!3860 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3861, file: !3861, line: 52, type: !3862, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3861 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!87, !87}
!3864 = !DILocalVariable(name: "overflow", arg: 1, scope: !3860, file: !3861, line: 52, type: !87)
!3865 = !DILocation(line: 52, column: 60, scope: !3860)
!3866 = !DILocation(line: 54, column: 9, scope: !3860)
!3867 = !DILocation(line: 54, column: 2, scope: !3860)
!3868 = distinct !DISubprogram(name: "get_order", scope: !3869, file: !3869, line: 29, type: !3870, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3869 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!116, !145}
!3872 = !DILocalVariable(name: "x", arg: 1, scope: !3873, file: !1831, line: 366, type: !141)
!3873 = distinct !DISubprogram(name: "fls64", scope: !1831, file: !1831, line: 366, type: !3874, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!116, !141}
!3876 = !DILocation(line: 366, column: 40, scope: !3873, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 46, column: 9, scope: !3868)
!3878 = !DILocalVariable(name: "bitpos", scope: !3873, file: !1831, line: 368, type: !116)
!3879 = !DILocation(line: 368, column: 6, scope: !3873, inlinedAt: !3877)
!3880 = !DILocalVariable(name: "size", arg: 1, scope: !3868, file: !3869, line: 29, type: !145)
!3881 = !DILocation(line: 29, column: 63, scope: !3868)
!3882 = !DILocation(line: 31, column: 27, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3868, file: !3869, line: 31, column: 6)
!3884 = !DILocation(line: 31, column: 6, scope: !3883)
!3885 = !DILocation(line: 31, column: 6, scope: !3868)
!3886 = !DILocation(line: 32, column: 8, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !3869, line: 32, column: 7)
!3888 = distinct !DILexicalBlock(scope: !3883, file: !3869, line: 31, column: 34)
!3889 = !DILocation(line: 32, column: 7, scope: !3888)
!3890 = !DILocation(line: 33, column: 4, scope: !3887)
!3891 = !DILocation(line: 35, column: 7, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3888, file: !3869, line: 35, column: 7)
!3893 = !DILocation(line: 35, column: 12, scope: !3892)
!3894 = !DILocation(line: 35, column: 7, scope: !3888)
!3895 = !DILocation(line: 36, column: 4, scope: !3892)
!3896 = !DILocation(line: 38, column: 10, scope: !3888)
!3897 = !DILocation(line: 38, column: 28, scope: !3888)
!3898 = !DILocation(line: 38, column: 41, scope: !3888)
!3899 = !DILocation(line: 38, column: 3, scope: !3888)
!3900 = !DILocation(line: 41, column: 6, scope: !3868)
!3901 = !DILocation(line: 42, column: 7, scope: !3868)
!3902 = !DILocation(line: 46, column: 15, scope: !3868)
!3903 = !DILocation(line: 374, column: 2, scope: !3873, inlinedAt: !3877)
!3904 = !DILocation(line: 376, column: 14, scope: !3873, inlinedAt: !3877)
!3905 = !{i32 327424}
!3906 = !DILocation(line: 377, column: 9, scope: !3873, inlinedAt: !3877)
!3907 = !DILocation(line: 377, column: 16, scope: !3873, inlinedAt: !3877)
!3908 = !DILocation(line: 46, column: 2, scope: !3868)
!3909 = !DILocation(line: 48, column: 1, scope: !3868)
!3910 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3911, file: !3911, line: 30, type: !3912, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3911 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!116, !140}
!3914 = !DILocation(line: 366, column: 40, scope: !3873, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 32, column: 9, scope: !3910)
!3916 = !DILocation(line: 368, column: 6, scope: !3873, inlinedAt: !3915)
!3917 = !DILocalVariable(name: "n", arg: 1, scope: !3910, file: !3911, line: 30, type: !140)
!3918 = !DILocation(line: 30, column: 21, scope: !3910)
!3919 = !DILocation(line: 32, column: 15, scope: !3910)
!3920 = !DILocation(line: 374, column: 2, scope: !3873, inlinedAt: !3915)
!3921 = !DILocation(line: 376, column: 14, scope: !3873, inlinedAt: !3915)
!3922 = !DILocation(line: 377, column: 9, scope: !3873, inlinedAt: !3915)
!3923 = !DILocation(line: 377, column: 16, scope: !3873, inlinedAt: !3915)
!3924 = !DILocation(line: 32, column: 18, scope: !3910)
!3925 = !DILocation(line: 32, column: 2, scope: !3910)
!3926 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1380, file: !1380, line: 137, type: !3927, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!45, !1311, !2134, !1096, !161}
!3929 = !DILocalVariable(name: "s", arg: 1, scope: !3926, file: !1380, line: 137, type: !1311)
!3930 = !DILocation(line: 137, column: 54, scope: !3926)
!3931 = !DILocalVariable(name: "object", arg: 2, scope: !3926, file: !1380, line: 137, type: !2134)
!3932 = !DILocation(line: 137, column: 69, scope: !3926)
!3933 = !DILocalVariable(name: "size", arg: 3, scope: !3926, file: !1380, line: 138, type: !1096)
!3934 = !DILocation(line: 138, column: 12, scope: !3926)
!3935 = !DILocalVariable(name: "flags", arg: 4, scope: !3926, file: !1380, line: 138, type: !161)
!3936 = !DILocation(line: 138, column: 24, scope: !3926)
!3937 = !DILocation(line: 140, column: 17, scope: !3926)
!3938 = !DILocation(line: 140, column: 2, scope: !3926)
!3939 = distinct !DISubprogram(name: "refcount_set", scope: !25, file: !25, line: 134, type: !3940, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{null, !3260, !116}
!3942 = !DILocalVariable(name: "v", arg: 1, scope: !3943, file: !3282, line: 39, type: !3285)
!3943 = distinct !DISubprogram(name: "arch_atomic_set", scope: !3282, file: !3282, line: 39, type: !3944, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{null, !3285, !116}
!3946 = !DILocation(line: 39, column: 55, scope: !3943, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 46, column: 2, scope: !3948, inlinedAt: !3949)
!3948 = distinct !DISubprogram(name: "atomic_set", scope: !1783, file: !1783, line: 43, type: !3944, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !80)
!3949 = distinct !DILocation(line: 136, column: 2, scope: !3939)
!3950 = !DILocalVariable(name: "i", arg: 2, scope: !3943, file: !3282, line: 39, type: !116)
!3951 = !DILocation(line: 39, column: 62, scope: !3943, inlinedAt: !3947)
!3952 = !DILocation(line: 84, column: 74, scope: !1896, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 45, column: 2, scope: !3948, inlinedAt: !3949)
!3954 = !DILocation(line: 84, column: 84, scope: !1896, inlinedAt: !3953)
!3955 = !DILocalVariable(name: "v", arg: 1, scope: !3948, file: !1783, line: 43, type: !3285)
!3956 = !DILocation(line: 43, column: 22, scope: !3948, inlinedAt: !3949)
!3957 = !DILocalVariable(name: "i", arg: 2, scope: !3948, file: !1783, line: 43, type: !116)
!3958 = !DILocation(line: 43, column: 29, scope: !3948, inlinedAt: !3949)
!3959 = !DILocalVariable(name: "r", arg: 1, scope: !3939, file: !25, line: 134, type: !3260)
!3960 = !DILocation(line: 134, column: 45, scope: !3939)
!3961 = !DILocalVariable(name: "n", arg: 2, scope: !3939, file: !25, line: 134, type: !116)
!3962 = !DILocation(line: 134, column: 52, scope: !3939)
!3963 = !DILocation(line: 136, column: 14, scope: !3939)
!3964 = !DILocation(line: 136, column: 17, scope: !3939)
!3965 = !DILocation(line: 136, column: 23, scope: !3939)
!3966 = !DILocation(line: 45, column: 26, scope: !3948, inlinedAt: !3949)
!3967 = !DILocation(line: 86, column: 20, scope: !1896, inlinedAt: !3953)
!3968 = !DILocation(line: 86, column: 23, scope: !1896, inlinedAt: !3953)
!3969 = !DILocation(line: 86, column: 2, scope: !1896, inlinedAt: !3953)
!3970 = !DILocation(line: 87, column: 2, scope: !1896, inlinedAt: !3953)
!3971 = !DILocation(line: 46, column: 18, scope: !3948, inlinedAt: !3949)
!3972 = !DILocation(line: 46, column: 21, scope: !3948, inlinedAt: !3949)
!3973 = !DILocation(line: 41, column: 2, scope: !3974, inlinedAt: !3947)
!3974 = distinct !DILexicalBlock(scope: !3943, file: !3282, line: 41, column: 2)
!3975 = !DILocation(line: 137, column: 1, scope: !3939)
