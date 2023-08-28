; ModuleID = '../bcout/drivers/cpuidle/cpuidle-haltpoll.llvm.bc'
source_filename = "drivers/cpuidle/cpuidle-haltpoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_haltpoll_init6:\09\09\09"
module asm ".long\09haltpoll_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_kobj*], %struct.cpuidle_driver_kobj*, %struct.cpuidle_device_kobj*, %struct.list_head }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpuidle_state_kobj = type opaque
%struct.cpuidle_driver_kobj = type opaque
%struct.cpuidle_device_kobj = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)*, i32 (%struct.cpuidle_device*, i32)*, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* }
%struct.cpuidle_driver = type { i8*, %struct.module*, i8, [10 x %struct.cpuidle_state], i32, i32, %struct.cpumask*, i8* }
%struct.cpumask = type { [1 x i64] }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.19, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
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
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.kernel_siginfo = type { %struct.anon.7 }
%struct.anon.7 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.11 }
%struct.anon.11 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.18, i32, [12 x i8] }
%union.anon.18 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.19 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.20, %union.anon.33, %struct.atomic_t, [8 x i8] }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.33 = type { %struct.atomic_t }
%struct.vm_struct = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.34, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.37 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i64, i64 }
%union.anon.37 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
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

@__param_str_force = internal constant [23 x i8] c"cpuidle_haltpoll.force\00", align 16, !dbg !0
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@force = internal global i8 0, section ".data..read_mostly", align 1, !dbg !1504
@__param_force = internal constant %struct.kernel_param { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__param_str_force, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon { i8* @force } }, section "__param", align 8, !dbg !1408
@__UNIQUE_ID_forcetype159 = internal constant [37 x i8] c"cpuidle_haltpoll.parmtype=force:bool\00", section ".modinfo", align 1, !dbg !1470
@__UNIQUE_ID_force160 = internal constant [49 x i8] c"cpuidle_haltpoll.parm=force:Load unconditionally\00", section ".modinfo", align 1, !dbg !1475
@__UNIQUE_ID___addressable_haltpoll_init161 = internal global i8* bitcast (i32 ()* @haltpoll_init to i8*), section ".discard.addressable", align 8, !dbg !1480
@__exitcall_haltpoll_exit = internal global void ()* @haltpoll_exit, section ".exitcall.exit", align 8, !dbg !1482
@__UNIQUE_ID_file162 = internal constant [55 x i8] c"cpuidle_haltpoll.file=drivers/cpuidle/cpuidle-haltpoll\00", section ".modinfo", align 1, !dbg !1489
@__UNIQUE_ID_license163 = internal constant [29 x i8] c"cpuidle_haltpoll.license=GPL\00", section ".modinfo", align 1, !dbg !1494
@__UNIQUE_ID_author164 = internal constant [62 x i8] c"cpuidle_haltpoll.author=Marcelo Tosatti <mtosatti@redhat.com>\00", section ".modinfo", align 1, !dbg !1499
@haltpoll_hp_state = internal global i32 0, align 4, !dbg !1506
@haltpoll_cpuidle_devices = internal global %struct.cpuidle_device* null, align 8, !dbg !1543
@.str = private unnamed_addr constant [9 x i8] c"haltpoll\00", align 1
@haltpoll_driver = internal global { i8*, %struct.module*, i8, [7 x i8], <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }>, i32, i32, %struct.cpumask*, i8* } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.module* null, i8 0, [7 x i8] undef, <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }> <{ %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state { [16 x i8] c"haltpoll idle\00\00\00", [32 x i8] c"default architecture idle\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 1, i32 -1, i32 1, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @default_enter_idle, i32 (%struct.cpuidle_device*, i32)* null, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* null }, [8 x %struct.cpuidle_state] zeroinitializer }>, i32 2, i32 0, %struct.cpumask* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0) }, align 8, !dbg !1508
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@boot_option_idle_override = external dso_local global i64, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"cpuidle/haltpoll:online\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\015cpuidle_register_device %d failed!\0A\00", align 1
@llvm.used = appending global [9 x i8*] [i8* bitcast (%struct.kernel_param* @__param_force to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_forcetype159, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_force160, i32 0, i32 0), i8* bitcast (void ()* @haltpoll_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_haltpoll_init161 to i8*), i8* bitcast (void ()** @__exitcall_haltpoll_exit to i8*), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__UNIQUE_ID_file162, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__UNIQUE_ID_license163, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__UNIQUE_ID_author164, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @haltpoll_exit() #0 section ".exit.text" !dbg !1554 {
entry:
  call void @haltpoll_uninit() #8, !dbg !1555
  ret void, !dbg !1556
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @haltpoll_uninit() #1 !dbg !1557 {
entry:
  %0 = load i32, i32* @haltpoll_hp_state, align 4, !dbg !1558
  %tobool = icmp ne i32 %0, 0, !dbg !1558
  br i1 %tobool, label %if.then, label %if.end, !dbg !1560

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @haltpoll_hp_state, align 4, !dbg !1561
  call void @cpuhp_remove_state(i32 %1) #8, !dbg !1562
  br label %if.end, !dbg !1562

if.end:                                           ; preds = %if.then, %entry
  call void @cpuidle_unregister_driver(%struct.cpuidle_driver* bitcast ({ i8*, %struct.module*, i8, [7 x i8], <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }>, i32, i32, %struct.cpumask*, i8* }* @haltpoll_driver to %struct.cpuidle_driver*)) #8, !dbg !1563
  %2 = load %struct.cpuidle_device*, %struct.cpuidle_device** @haltpoll_cpuidle_devices, align 8, !dbg !1564
  %3 = bitcast %struct.cpuidle_device* %2 to i8*, !dbg !1564
  call void @free_percpu(i8* %3) #8, !dbg !1565
  store %struct.cpuidle_device* null, %struct.cpuidle_device** @haltpoll_cpuidle_devices, align 8, !dbg !1566
  ret void, !dbg !1567
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @haltpoll_init() #0 section ".init.text" !dbg !1568 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %drv = alloca %struct.cpuidle_driver*, align 8
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1571, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv, metadata !1573, metadata !DIExpression()), !dbg !1574
  store %struct.cpuidle_driver* bitcast ({ i8*, %struct.module*, i8, [7 x i8], <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }>, i32, i32, %struct.cpumask*, i8* }* @haltpoll_driver to %struct.cpuidle_driver*), %struct.cpuidle_driver** %drv, align 8, !dbg !1574
  %0 = load i64, i64* @boot_option_idle_override, align 8, !dbg !1575
  %cmp = icmp ne i64 %0, 0, !dbg !1577
  br i1 %cmp, label %if.then, label %if.end, !dbg !1578

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !1579
  br label %return, !dbg !1579

if.end:                                           ; preds = %entry
  %1 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !1580
  call void @cpuidle_poll_state_init(%struct.cpuidle_driver* %1) #8, !dbg !1581
  %call = call zeroext i1 @kvm_para_available() #8, !dbg !1582
  br i1 %call, label %lor.lhs.false, label %if.then2, !dbg !1584

lor.lhs.false:                                    ; preds = %if.end
  %call1 = call zeroext i1 @haltpoll_want() #8, !dbg !1585
  br i1 %call1, label %if.end3, label %if.then2, !dbg !1586

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -19, i32* %retval, align 4, !dbg !1587
  br label %return, !dbg !1587

if.end3:                                          ; preds = %lor.lhs.false
  %2 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !1588
  %call4 = call i32 @cpuidle_register_driver(%struct.cpuidle_driver* %2) #8, !dbg !1589
  store i32 %call4, i32* %ret, align 4, !dbg !1590
  %3 = load i32, i32* %ret, align 4, !dbg !1591
  %cmp5 = icmp slt i32 %3, 0, !dbg !1593
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1594

if.then6:                                         ; preds = %if.end3
  %4 = load i32, i32* %ret, align 4, !dbg !1595
  store i32 %4, i32* %retval, align 4, !dbg !1596
  br label %return, !dbg !1596

if.end7:                                          ; preds = %if.end3
  %call8 = call i8* @__alloc_percpu(i64 800, i64 8) #8, !dbg !1597
  %5 = bitcast i8* %call8 to %struct.cpuidle_device*, !dbg !1597
  store %struct.cpuidle_device* %5, %struct.cpuidle_device** @haltpoll_cpuidle_devices, align 8, !dbg !1598
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** @haltpoll_cpuidle_devices, align 8, !dbg !1599
  %cmp9 = icmp eq %struct.cpuidle_device* %6, null, !dbg !1601
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1602

if.then10:                                        ; preds = %if.end7
  %7 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !1603
  call void @cpuidle_unregister_driver(%struct.cpuidle_driver* %7) #8, !dbg !1605
  store i32 -12, i32* %retval, align 4, !dbg !1606
  br label %return, !dbg !1606

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @cpuhp_setup_state(i32 182, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* @haltpoll_cpu_online, i32 (i32)* @haltpoll_cpu_offline) #8, !dbg !1607
  store i32 %call12, i32* %ret, align 4, !dbg !1608
  %8 = load i32, i32* %ret, align 4, !dbg !1609
  %cmp13 = icmp slt i32 %8, 0, !dbg !1611
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !1612

if.then14:                                        ; preds = %if.end11
  call void @haltpoll_uninit() #8, !dbg !1613
  br label %if.end15, !dbg !1615

if.else:                                          ; preds = %if.end11
  %9 = load i32, i32* %ret, align 4, !dbg !1616
  store i32 %9, i32* @haltpoll_hp_state, align 4, !dbg !1618
  store i32 0, i32* %ret, align 4, !dbg !1619
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  %10 = load i32, i32* %ret, align 4, !dbg !1620
  store i32 %10, i32* %retval, align 4, !dbg !1621
  br label %return, !dbg !1621

return:                                           ; preds = %if.end15, %if.then10, %if.then6, %if.then2, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !1622
  ret i32 %11, !dbg !1622
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuhp_remove_state(i32 %state) #1 !dbg !1623 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !1626, metadata !DIExpression()), !dbg !1627
  %0 = load i32, i32* %state.addr, align 4, !dbg !1628
  call void @__cpuhp_remove_state(i32 %0, i1 zeroext true) #8, !dbg !1629
  ret void, !dbg !1630
}

; Function Attrs: noredzone
declare dso_local void @cpuidle_unregister_driver(%struct.cpuidle_driver*) #2

; Function Attrs: noredzone
declare dso_local void @free_percpu(i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local void @__cpuhp_remove_state(i32, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @default_enter_idle(%struct.cpuidle_device* %dev, %struct.cpuidle_driver* %drv, i32 %index) #1 !dbg !1631 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %index.addr = alloca i32, align 4
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1632, metadata !DIExpression()), !dbg !1633
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !1634, metadata !DIExpression()), !dbg !1635
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1636, metadata !DIExpression()), !dbg !1637
  %call = call zeroext i1 @current_clr_polling_and_test() #8, !dbg !1638
  br i1 %call, label %if.then, label %if.end, !dbg !1640

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1641

do.body:                                          ; preds = %if.then
  call void @arch_local_irq_enable() #8, !dbg !1643
  br label %do.end, !dbg !1643

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %index.addr, align 4, !dbg !1645
  store i32 %0, i32* %retval, align 4, !dbg !1646
  br label %return, !dbg !1646

if.end:                                           ; preds = %entry
  call void @default_idle() #8, !dbg !1647
  %1 = load i32, i32* %index.addr, align 4, !dbg !1648
  store i32 %1, i32* %retval, align 4, !dbg !1649
  br label %return, !dbg !1649

return:                                           ; preds = %if.end, %do.end
  %2 = load i32, i32* %retval, align 4, !dbg !1650
  ret i32 %2, !dbg !1650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @current_clr_polling_and_test() #1 !dbg !1651 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !1655, metadata !DIExpression()), !dbg !1661
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !1663, metadata !DIExpression()), !dbg !1667
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !1668, metadata !DIExpression()), !dbg !1670
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  call void @__current_clr_polling() #8, !dbg !1671
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !1672, !srcloc !1673
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !1667
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !1667
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #9, !dbg !1670, !srcloc !1674
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !1670
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !1670
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !1670
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !1670
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !1670
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !1661
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !1661
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !1661
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !1661
  %7 = bitcast %struct.task_struct* %6 to %struct.thread_info*, !dbg !1675
  %call1 = call i32 @test_ti_thread_flag(%struct.thread_info* %7, i32 3) #8, !dbg !1675
  %tobool = icmp ne i32 %call1, 0, !dbg !1675
  %lnot = xor i1 %tobool, true, !dbg !1675
  %lnot2 = xor i1 %lnot, true, !dbg !1675
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1675
  %conv = sext i32 %lnot.ext to i64, !dbg !1675
  %tobool3 = icmp ne i64 %conv, 0, !dbg !1675
  ret i1 %tobool3, !dbg !1676
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #1 !dbg !1677 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1679, metadata !DIExpression()), !dbg !1681
  %0 = load i64, i64* %__edi, align 8, !dbg !1681
  store i64 %0, i64* %__edi, align 8, !dbg !1681
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1682, metadata !DIExpression()), !dbg !1681
  %1 = load i64, i64* %__esi, align 8, !dbg !1681
  store i64 %1, i64* %__esi, align 8, !dbg !1681
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1683, metadata !DIExpression()), !dbg !1681
  %2 = load i64, i64* %__edx, align 8, !dbg !1681
  store i64 %2, i64* %__edx, align 8, !dbg !1681
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1684, metadata !DIExpression()), !dbg !1681
  %3 = load i64, i64* %__ecx, align 8, !dbg !1681
  store i64 %3, i64* %__ecx, align 8, !dbg !1681
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1685, metadata !DIExpression()), !dbg !1681
  %4 = load i64, i64* %__eax, align 8, !dbg !1681
  store i64 %4, i64* %__eax, align 8, !dbg !1681
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !1681
  %6 = call i64 @llvm.read_register.i64(metadata !1548), !dbg !1681
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #6, !dbg !1681, !srcloc !1686
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1681
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1681
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1681
  call void @llvm.write_register.i64(metadata !1548, i64 %asmresult1), !dbg !1681
  ret void, !dbg !1687
}

; Function Attrs: noredzone
declare dso_local void @default_idle() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__current_clr_polling() #1 !dbg !1688 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !1655, metadata !DIExpression()), !dbg !1689
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !1663, metadata !DIExpression()), !dbg !1691
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !1668, metadata !DIExpression()), !dbg !1692
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !1691
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !1691
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #9, !dbg !1692, !srcloc !1674
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !1692
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !1692
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !1692
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !1692
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !1692
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !1689
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !1689
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !1689
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !1689
  %7 = bitcast %struct.task_struct* %6 to %struct.thread_info*, !dbg !1693
  call void @clear_ti_thread_flag(%struct.thread_info* %7, i32 21) #8, !dbg !1693
  ret void, !dbg !1694
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #1 !dbg !1695 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !1699, metadata !DIExpression()), !dbg !1700
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !1701, metadata !DIExpression()), !dbg !1702
  %0 = load i32, i32* %flag.addr, align 4, !dbg !1703
  %conv = sext i32 %0 to i64, !dbg !1703
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !1704
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !1705
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %flags) #8, !dbg !1706
  %conv1 = zext i1 %call to i32, !dbg !1706
  ret i32 %conv1, !dbg !1707
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #1 !dbg !1708 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !1711, metadata !DIExpression()), !dbg !1712
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !1713, metadata !DIExpression()), !dbg !1714
  %0 = load i32, i32* %flag.addr, align 4, !dbg !1715
  %conv = sext i32 %0 to i64, !dbg !1715
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !1716
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !1717
  call void @clear_bit(i64 %conv, i64* %flags) #8, !dbg !1718
  ret void, !dbg !1719
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #1 !dbg !1720 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1726, metadata !DIExpression()), !dbg !1729
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1731, metadata !DIExpression()), !dbg !1732
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !1733, metadata !DIExpression()), !dbg !1741
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1743, metadata !DIExpression()), !dbg !1744
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1745, metadata !DIExpression()), !dbg !1746
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1747, metadata !DIExpression()), !dbg !1748
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1749
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1750
  %div = sdiv i64 %1, 64, !dbg !1750
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1751
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1749
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1752
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1753
  %conv.i = trunc i64 %4 to i32, !dbg !1753
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #10, !dbg !1754
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1755
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1755
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #10, !dbg !1755
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1756
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !1757
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !1758
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #6, !dbg !1760
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !1761

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !1762
  %12 = bitcast i64* %11 to i8*, !dbg !1762
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !1762
  %shr.i = ashr i64 %13, 3, !dbg !1762
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !1762
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !1764
  %and.i = and i64 %14, 7, !dbg !1764
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !1764
  %shl.i = shl i32 1, %sh_prom.i, !dbg !1764
  %neg.i = xor i32 %shl.i, -1, !dbg !1765
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #6, !dbg !1766, !srcloc !1767
  br label %arch_clear_bit.exit, !dbg !1768

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !1769
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !1771
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #6, !dbg !1772, !srcloc !1773
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !1774
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #1 !dbg !1775 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1779, metadata !DIExpression()), !dbg !1780
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1781, metadata !DIExpression()), !dbg !1782
  ret i1 true, !dbg !1783
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #1 !dbg !1784 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1788, metadata !DIExpression()), !dbg !1789
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1790, metadata !DIExpression()), !dbg !1791
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !1792, metadata !DIExpression()), !dbg !1793
  ret void, !dbg !1794
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #1 !dbg !1795 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !1801, metadata !DIExpression()), !dbg !1803
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !1805, metadata !DIExpression()), !dbg !1806
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !1807, metadata !DIExpression()), !dbg !1808
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1809, metadata !DIExpression()), !dbg !1811
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1813, metadata !DIExpression()), !dbg !1814
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !1815, metadata !DIExpression()), !dbg !1817
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1819, metadata !DIExpression()), !dbg !1820
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1821, metadata !DIExpression()), !dbg !1822
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1823, metadata !DIExpression()), !dbg !1824
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1825
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1826
  %div = sdiv i64 %1, 64, !dbg !1826
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1827
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1825
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1828
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1829
  %conv.i = trunc i64 %4 to i32, !dbg !1829
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #10, !dbg !1830
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1831
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1831
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #10, !dbg !1831
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1832
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !1832
  br i1 %8, label %cond.true, label %cond.false, !dbg !1832

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !1832
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !1832
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !1833
  %and.i = and i64 %11, 63, !dbg !1834
  %shl.i = shl i64 1, %and.i, !dbg !1835
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !1836
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !1837
  %shr.i = ashr i64 %13, 6, !dbg !1838
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !1836
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !1836
  %and1.i = and i64 %shl.i, %14, !dbg !1839
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !1840
  %conv = zext i1 %cmp.i to i32, !dbg !1832
  br label %cond.end, !dbg !1832

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !1832
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !1832
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !1841
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !1842
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #6, !dbg !1843, !srcloc !1844
  store i8 %19, i8* %oldbit.i, align 1, !dbg !1843
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !1845
  %tobool.i = trunc i8 %20 to i1, !dbg !1845
  %conv2 = zext i1 %tobool.i to i32, !dbg !1832
  br label %cond.end, !dbg !1832

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1832
  %tobool = icmp ne i32 %cond, 0, !dbg !1832
  ret i1 %tobool, !dbg !1846
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #1 !dbg !1847 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1848, metadata !DIExpression()), !dbg !1849
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1850, metadata !DIExpression()), !dbg !1851
  ret i1 true, !dbg !1852
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noredzone
declare dso_local void @cpuidle_poll_state_init(%struct.cpuidle_driver*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @kvm_para_available() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @haltpoll_want() #1 !dbg !1853 {
entry:
  %call = call zeroext i1 @kvm_para_has_hint(i32 0) #8, !dbg !1854
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !1855

lor.rhs:                                          ; preds = %entry
  %0 = load i8, i8* @force, align 1, !dbg !1856
  %tobool = trunc i8 %0 to i1, !dbg !1856
  br label %lor.end, !dbg !1855

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  ret i1 %1, !dbg !1857
}

; Function Attrs: noredzone
declare dso_local i32 @cpuidle_register_driver(%struct.cpuidle_driver*) #2

; Function Attrs: noredzone
declare dso_local i8* @__alloc_percpu(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpuhp_setup_state(i32 %state, i8* %name, i32 (i32)* %startup, i32 (i32)* %teardown) #1 !dbg !1858 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %startup.addr = alloca i32 (i32)*, align 8
  %teardown.addr = alloca i32 (i32)*, align 8
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !1864, metadata !DIExpression()), !dbg !1865
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !1866, metadata !DIExpression()), !dbg !1867
  store i32 (i32)* %startup, i32 (i32)** %startup.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32)** %startup.addr, metadata !1868, metadata !DIExpression()), !dbg !1869
  store i32 (i32)* %teardown, i32 (i32)** %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32)** %teardown.addr, metadata !1870, metadata !DIExpression()), !dbg !1871
  %0 = load i32, i32* %state.addr, align 4, !dbg !1872
  %1 = load i8*, i8** %name.addr, align 8, !dbg !1873
  %2 = load i32 (i32)*, i32 (i32)** %startup.addr, align 8, !dbg !1874
  %3 = load i32 (i32)*, i32 (i32)** %teardown.addr, align 8, !dbg !1875
  %call = call i32 @__cpuhp_setup_state(i32 %0, i8* %1, i1 zeroext true, i32 (i32)* %2, i32 (i32)* %3, i1 zeroext false) #8, !dbg !1876
  ret i32 %call, !dbg !1877
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @haltpoll_cpu_online(i32 %cpu) #1 !dbg !1878 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %dev = alloca %struct.cpuidle_device*, align 8
  %tmp = alloca %struct.cpuidle_device*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.cpuidle_device*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !1879, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev, metadata !1881, metadata !DIExpression()), !dbg !1882
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !1883
  br label %do.body, !dbg !1885

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !1887, metadata !DIExpression()), !dbg !1889
  store i8* null, i8** %__vpp_verify, align 8, !dbg !1889
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !1889
  br label %do.end, !dbg !1889

do.end:                                           ; preds = %do.body
  %2 = load %struct.cpuidle_device*, %struct.cpuidle_device** @haltpoll_cpuidle_devices, align 8, !dbg !1885
  store %struct.cpuidle_device* %2, %struct.cpuidle_device** %tmp1, align 8, !dbg !1889
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %tmp1, align 8, !dbg !1885
  store %struct.cpuidle_device* %3, %struct.cpuidle_device** %tmp, align 8, !dbg !1883
  %4 = load %struct.cpuidle_device*, %struct.cpuidle_device** %tmp, align 8, !dbg !1883
  store %struct.cpuidle_device* %4, %struct.cpuidle_device** %dev, align 8, !dbg !1890
  %5 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !1891
  %6 = bitcast %struct.cpuidle_device* %5 to i8*, !dbg !1893
  %bf.load = load i8, i8* %6, align 8, !dbg !1893
  %bf.clear = and i8 %bf.load, 1, !dbg !1893
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1893
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !1891
  br i1 %tobool, label %if.end6, label %if.then, !dbg !1894

if.then:                                          ; preds = %do.end
  %7 = load i32, i32* %cpu.addr, align 4, !dbg !1895
  %8 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !1897
  %cpu2 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %8, i32 0, i32 1, !dbg !1898
  store i32 %7, i32* %cpu2, align 4, !dbg !1899
  %9 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !1900
  %call = call i32 @cpuidle_register_device(%struct.cpuidle_device* %9) #8, !dbg !1902
  %tobool3 = icmp ne i32 %call, 0, !dbg !1902
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !1903

if.then4:                                         ; preds = %if.then
  %10 = load i32, i32* %cpu.addr, align 4, !dbg !1904
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %10) #11, !dbg !1904
  store i32 -5, i32* %retval, align 4, !dbg !1906
  br label %return, !dbg !1906

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %cpu.addr, align 4, !dbg !1907
  call void @arch_haltpoll_enable(i32 %11) #8, !dbg !1908
  br label %if.end6, !dbg !1909

if.end6:                                          ; preds = %if.end, %do.end
  store i32 0, i32* %retval, align 4, !dbg !1910
  br label %return, !dbg !1910

return:                                           ; preds = %if.end6, %if.then4
  %12 = load i32, i32* %retval, align 4, !dbg !1911
  ret i32 %12, !dbg !1911
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @haltpoll_cpu_offline(i32 %cpu) #1 !dbg !1912 {
entry:
  %cpu.addr = alloca i32, align 4
  %dev = alloca %struct.cpuidle_device*, align 8
  %tmp = alloca %struct.cpuidle_device*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.cpuidle_device*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !1913, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev, metadata !1915, metadata !DIExpression()), !dbg !1916
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !1917
  br label %do.body, !dbg !1919

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !1921, metadata !DIExpression()), !dbg !1923
  store i8* null, i8** %__vpp_verify, align 8, !dbg !1923
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !1923
  br label %do.end, !dbg !1923

do.end:                                           ; preds = %do.body
  %2 = load %struct.cpuidle_device*, %struct.cpuidle_device** @haltpoll_cpuidle_devices, align 8, !dbg !1919
  store %struct.cpuidle_device* %2, %struct.cpuidle_device** %tmp1, align 8, !dbg !1923
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %tmp1, align 8, !dbg !1919
  store %struct.cpuidle_device* %3, %struct.cpuidle_device** %tmp, align 8, !dbg !1917
  %4 = load %struct.cpuidle_device*, %struct.cpuidle_device** %tmp, align 8, !dbg !1917
  store %struct.cpuidle_device* %4, %struct.cpuidle_device** %dev, align 8, !dbg !1924
  %5 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !1925
  %6 = bitcast %struct.cpuidle_device* %5 to i8*, !dbg !1927
  %bf.load = load i8, i8* %6, align 8, !dbg !1927
  %bf.clear = and i8 %bf.load, 1, !dbg !1927
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1927
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !1925
  br i1 %tobool, label %if.then, label %if.end, !dbg !1928

if.then:                                          ; preds = %do.end
  %7 = load i32, i32* %cpu.addr, align 4, !dbg !1929
  call void @arch_haltpoll_disable(i32 %7) #8, !dbg !1931
  %8 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !1932
  call void @cpuidle_unregister_device(%struct.cpuidle_device* %8) #8, !dbg !1933
  br label %if.end, !dbg !1934

if.end:                                           ; preds = %if.then, %do.end
  ret i32 0, !dbg !1935
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kvm_para_has_hint(i32 %feature) #1 !dbg !1936 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, i32* %feature.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %feature.addr, metadata !1940, metadata !DIExpression()), !dbg !1941
  %call = call i32 @kvm_arch_para_hints() #8, !dbg !1942
  %conv = zext i32 %call to i64, !dbg !1942
  %0 = load i32, i32* %feature.addr, align 4, !dbg !1943
  %sh_prom = zext i32 %0 to i64, !dbg !1944
  %shl = shl i64 1, %sh_prom, !dbg !1944
  %and = and i64 %conv, %shl, !dbg !1945
  %tobool = icmp ne i64 %and, 0, !dbg !1946
  %lnot = xor i1 %tobool, true, !dbg !1946
  %lnot1 = xor i1 %lnot, true, !dbg !1947
  ret i1 %lnot1, !dbg !1948
}

; Function Attrs: noredzone
declare dso_local i32 @kvm_arch_para_hints() #2

; Function Attrs: noredzone
declare dso_local i32 @__cpuhp_setup_state(i32, i8*, i1 zeroext, i32 (i32)*, i32 (i32)*, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @cpuidle_register_device(%struct.cpuidle_device*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: noredzone
declare dso_local void @arch_haltpoll_enable(i32) #2

; Function Attrs: noredzone
declare dso_local void @arch_haltpoll_disable(i32) #2

; Function Attrs: noredzone
declare dso_local void @cpuidle_unregister_device(%struct.cpuidle_device*) #2

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!1548}
!llvm.module.flags = !{!1549, !1550, !1551, !1552}
!llvm.ident = !{!1553}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_force", scope: !2, file: !3, line: 22, type: !1545, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !203, globals: !1407, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/cpuidle/cpuidle-haltpoll.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !179, !185, !190, !196}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !6, line: 25, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!9 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!10 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!11 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!12 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!13 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!14 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!15 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!16 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!17 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!18 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!19 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!20 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!21 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 11)
!22 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 12)
!23 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 13)
!24 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 14)
!25 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 15)
!26 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 16)
!27 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 17)
!28 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 18)
!29 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 19)
!30 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 20)
!31 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 21)
!32 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 22)
!33 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 23)
!34 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 24)
!35 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 25)
!36 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 26)
!37 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 27)
!38 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 28)
!39 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 29)
!40 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC_DEAD", value: 30)
!41 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 31)
!42 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 32)
!43 = !DIEnumerator(name: "CPUHP_IOMMU_INTEL_DEAD", value: 33)
!44 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 34)
!45 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 35)
!46 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 36)
!47 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 37)
!48 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 38)
!49 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 39)
!50 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 40)
!51 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 41)
!52 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 42)
!53 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 43)
!54 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 44)
!55 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 45)
!56 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 46)
!57 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 47)
!58 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 48)
!59 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 49)
!60 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 50)
!61 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 51)
!62 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 52)
!63 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 53)
!64 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 54)
!65 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 55)
!66 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 56)
!67 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 57)
!68 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 58)
!69 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 59)
!70 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 60)
!71 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 61)
!72 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 62)
!73 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 63)
!74 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 64)
!75 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 65)
!76 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 66)
!77 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 86)
!78 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 87)
!79 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 88)
!80 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 89)
!81 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 90)
!82 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 91)
!83 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 92)
!84 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 93)
!85 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 94)
!86 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 95)
!87 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 96)
!88 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 97)
!89 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 98)
!90 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 99)
!91 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 100)
!92 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 101)
!93 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 102)
!94 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 103)
!95 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 104)
!96 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 105)
!97 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 106)
!98 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 107)
!99 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 108)
!100 = !DIEnumerator(name: "CPUHP_AP_ARM_SDEI_STARTING", value: 109)
!101 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 110)
!102 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 111)
!103 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 112)
!104 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 113)
!105 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 114)
!106 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 115)
!107 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 116)
!108 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 117)
!109 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 118)
!110 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 119)
!111 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 120)
!112 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 121)
!113 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 122)
!114 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 123)
!115 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 124)
!116 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 125)
!117 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 126)
!118 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 127)
!119 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 128)
!120 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 129)
!121 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 130)
!122 = !DIEnumerator(name: "CPUHP_AP_KVM_STARTING", value: 131)
!123 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_VGIC_INIT_STARTING", value: 132)
!124 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_VGIC_STARTING", value: 133)
!125 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_TIMER_STARTING", value: 134)
!126 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 135)
!127 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 136)
!128 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 137)
!129 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 138)
!130 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 139)
!131 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 140)
!132 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 141)
!133 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 142)
!134 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 143)
!135 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 144)
!136 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 145)
!137 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 146)
!138 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 147)
!139 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 148)
!140 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 149)
!141 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 150)
!142 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 151)
!143 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 152)
!144 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 153)
!145 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 154)
!146 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 155)
!147 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 156)
!148 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 157)
!149 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 158)
!150 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 159)
!151 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 160)
!152 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 161)
!153 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 162)
!154 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 163)
!155 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 164)
!156 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 165)
!157 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 166)
!158 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 167)
!159 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 168)
!160 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 169)
!161 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 170)
!162 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 171)
!163 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 172)
!164 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 173)
!165 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 174)
!166 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 175)
!167 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 176)
!168 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 177)
!169 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 178)
!170 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 179)
!171 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 180)
!172 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 181)
!173 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 182)
!174 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 212)
!175 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 213)
!176 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 214)
!177 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 215)
!178 = !DIEnumerator(name: "CPUHP_ONLINE", value: 216)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !180, line: 10, baseType: !181, size: 32, elements: !182)
!180 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!181 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!182 = !{!183, !184}
!183 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!184 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !186, line: 65, baseType: !181, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!187 = !{!188, !189}
!188 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!189 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !191, line: 16, baseType: !181, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!194 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!195 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "idle_boot_override", file: !197, line: 678, baseType: !181, size: 32, elements: !198)
!197 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !200, !201, !202}
!199 = !DIEnumerator(name: "IDLE_NO_OVERRIDE", value: 0, isUnsigned: true)
!200 = !DIEnumerator(name: "IDLE_HALT", value: 1, isUnsigned: true)
!201 = !DIEnumerator(name: "IDLE_NOMWAIT", value: 2, isUnsigned: true)
!202 = !DIEnumerator(name: "IDLE_POLL", value: 3, isUnsigned: true)
!203 = !{!204, !215, !216, !219, !220, !223, !224, !209, !1369}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !206, line: 56, size: 128, elements: !207)
!206 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!207 = !{!208, !210}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !205, file: !206, line: 57, baseType: !209, size: 64)
!209 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !205, file: !206, line: 58, baseType: !211, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !212, line: 21, baseType: !213)
!212 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !214, line: 27, baseType: !181)
!214 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !218)
!218 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !222)
!222 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !226, line: 640, size: 48640, elements: !227)
!226 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!227 = !{!228, !229, !230, !231, !242, !243, !244, !245, !246, !247, !248, !249, !253, !287, !299, !409, !410, !411, !422, !423, !425, !426, !664, !665, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !744, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !800, !802, !803, !804, !806, !808, !809, !810, !811, !812, !818, !819, !820, !821, !822, !823, !824, !838, !843, !847, !848, !849, !852, !856, !859, !862, !865, !868, !871, !874, !877, !883, !884, !885, !891, !892, !896, !897, !898, !907, !908, !909, !910, !911, !916, !917, !918, !921, !922, !925, !928, !931, !934, !937, !940, !941, !1022, !1025, !1028, !1029, !1032, !1033, !1034, !1040, !1041, !1042, !1055, !1056, !1057, !1067, !1072, !1075, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !225, file: !226, line: 646, baseType: !205, size: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !225, file: !226, line: 649, baseType: !221, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !225, file: !226, line: 657, baseType: !219, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !225, file: !226, line: 658, baseType: !232, size: 32, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !233, line: 113, baseType: !234)
!233 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !233, line: 111, size: 32, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !234, file: !233, line: 112, baseType: !237, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !238, line: 168, baseType: !239)
!238 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 166, size: 32, elements: !240)
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !239, file: !238, line: 167, baseType: !7, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !226, line: 660, baseType: !181, size: 32, offset: 288)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !225, file: !226, line: 661, baseType: !181, size: 32, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !225, file: !226, line: 684, baseType: !7, size: 32, offset: 352)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !225, file: !226, line: 686, baseType: !7, size: 32, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !225, file: !226, line: 687, baseType: !7, size: 32, offset: 416)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !225, file: !226, line: 688, baseType: !7, size: 32, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !225, file: !226, line: 689, baseType: !181, size: 32, offset: 480)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !225, file: !226, line: 691, baseType: !250, size: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !226, line: 691, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !225, file: !226, line: 692, baseType: !254, size: 832, offset: 576)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !226, line: 451, size: 832, elements: !255)
!255 = !{!256, !261, !269, !275, !276, !280, !281, !282, !283, !284}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !254, file: !226, line: 453, baseType: !257, size: 128)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !226, line: 325, size: 128, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !257, file: !226, line: 326, baseType: !209, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !257, file: !226, line: 327, baseType: !211, size: 32, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !254, file: !226, line: 454, baseType: !262, size: 192, align: 64, offset: 128)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !263, line: 24, size: 192, align: 64, elements: !264)
!263 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!264 = !{!265, !266, !268}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !262, file: !263, line: 25, baseType: !209, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !262, file: !263, line: 26, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !262, file: !263, line: 27, baseType: !267, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !254, file: !226, line: 455, baseType: !270, size: 128, offset: 320)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !238, line: 178, size: 128, elements: !271)
!271 = !{!272, !274}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !238, line: 179, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !270, file: !238, line: 179, baseType: !273, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !254, file: !226, line: 456, baseType: !181, size: 32, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !254, file: !226, line: 458, baseType: !277, size: 64, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !212, line: 23, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !214, line: 31, baseType: !279)
!279 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !254, file: !226, line: 459, baseType: !277, size: 64, offset: 576)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !254, file: !226, line: 460, baseType: !277, size: 64, offset: 640)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !254, file: !226, line: 461, baseType: !277, size: 64, offset: 704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !254, file: !226, line: 463, baseType: !277, size: 64, offset: 768)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !254, file: !226, line: 465, baseType: !285, offset: 832)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !226, line: 415, elements: !286)
!286 = !{}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !225, file: !226, line: 693, baseType: !288, size: 384, offset: 1408)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !226, line: 489, size: 384, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !296, !297}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !288, file: !226, line: 490, baseType: !270, size: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !288, file: !226, line: 491, baseType: !209, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !288, file: !226, line: 492, baseType: !209, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !288, file: !226, line: 493, baseType: !181, size: 32, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !288, file: !226, line: 494, baseType: !295, size: 16, offset: 288)
!295 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !288, file: !226, line: 495, baseType: !295, size: 16, offset: 304)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !288, file: !226, line: 497, baseType: !298, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !225, file: !226, line: 697, baseType: !300, size: 1792, offset: 1792)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !226, line: 507, size: 1792, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !312, !313, !314, !315, !316, !317, !318, !406, !407}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !300, file: !226, line: 508, baseType: !262, size: 192, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !300, file: !226, line: 515, baseType: !277, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !300, file: !226, line: 516, baseType: !277, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !300, file: !226, line: 517, baseType: !277, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !300, file: !226, line: 518, baseType: !277, size: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !300, file: !226, line: 519, baseType: !277, size: 64, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !300, file: !226, line: 526, baseType: !309, size: 64, offset: 512)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !212, line: 22, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !214, line: 30, baseType: !311)
!311 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !300, file: !226, line: 527, baseType: !277, size: 64, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !226, line: 528, baseType: !181, size: 32, offset: 640)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !300, file: !226, line: 554, baseType: !181, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !300, file: !226, line: 555, baseType: !181, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !300, file: !226, line: 556, baseType: !181, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !300, file: !226, line: 557, baseType: !181, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !300, file: !226, line: 563, baseType: !319, size: 512, offset: 704)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !186, line: 118, size: 512, elements: !320)
!320 = !{!321, !329, !330, !335, !399, !403, !404, !405}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !319, file: !186, line: 119, baseType: !322, size: 256)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !323, line: 9, size: 256, elements: !324)
!323 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !322, file: !323, line: 10, baseType: !262, size: 192, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !322, file: !323, line: 11, baseType: !327, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !328, line: 29, baseType: !309)
!328 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !319, file: !186, line: 120, baseType: !327, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !319, file: !186, line: 121, baseType: !331, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!185, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !319, file: !186, line: 122, baseType: !336, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !186, line: 159, size: 512, align: 512, elements: !338)
!338 = !{!339, !367, !368, !372, !382, !383, !394, !398}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !337, file: !186, line: 160, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !186, line: 214, size: 4608, align: 512, elements: !342)
!342 = !{!343, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !341, file: !186, line: 215, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !345, line: 29, baseType: !346)
!345 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !345, line: 20, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !346, file: !345, line: 21, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !350, line: 25, baseType: !351)
!350 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 25, elements: !286)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !341, file: !186, line: 216, baseType: !181, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !341, file: !186, line: 217, baseType: !181, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !341, file: !186, line: 218, baseType: !181, size: 32, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !341, file: !186, line: 219, baseType: !181, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !341, file: !186, line: 220, baseType: !181, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !341, file: !186, line: 221, baseType: !181, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !341, file: !186, line: 222, baseType: !181, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !341, file: !186, line: 233, baseType: !327, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !341, file: !186, line: 234, baseType: !334, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !341, file: !186, line: 235, baseType: !327, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !341, file: !186, line: 236, baseType: !334, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !341, file: !186, line: 237, baseType: !364, size: 4096, offset: 512)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 4096, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 8)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !337, file: !186, line: 161, baseType: !181, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !337, file: !186, line: 162, baseType: !369, size: 32, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !238, line: 27, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !371, line: 96, baseType: !7)
!371 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!372 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !337, file: !186, line: 163, baseType: !373, size: 32, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !374, line: 276, baseType: !375)
!374 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !374, line: 276, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !375, file: !374, line: 276, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !374, line: 70, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !374, line: 65, size: 32, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !379, file: !374, line: 66, baseType: !181, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !337, file: !186, line: 164, baseType: !334, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !337, file: !186, line: 165, baseType: !384, size: 128, offset: 256)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !323, line: 14, size: 128, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !384, file: !323, line: 15, baseType: !387, size: 128)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !263, line: 125, size: 128, elements: !388)
!388 = !{!389, !393}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !387, file: !263, line: 126, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !263, line: 31, size: 64, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !390, file: !263, line: 32, baseType: !267, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !387, file: !263, line: 127, baseType: !267, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !337, file: !186, line: 166, baseType: !395, size: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!327}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !337, file: !186, line: 167, baseType: !327, size: 64, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !186, line: 123, baseType: !400, size: 8, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !212, line: 17, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !214, line: 21, baseType: !402)
!402 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !319, file: !186, line: 124, baseType: !400, size: 8, offset: 456)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !319, file: !186, line: 125, baseType: !400, size: 8, offset: 464)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !319, file: !186, line: 126, baseType: !400, size: 8, offset: 472)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !300, file: !226, line: 572, baseType: !319, size: 512, offset: 1216)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !300, file: !226, line: 580, baseType: !408, size: 64, offset: 1728)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !225, file: !226, line: 721, baseType: !181, size: 32, offset: 3584)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !225, file: !226, line: 722, baseType: !7, size: 32, offset: 3616)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !225, file: !226, line: 723, baseType: !412, size: 64, offset: 3648)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !415, line: 17, baseType: !416)
!415 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !415, line: 17, size: 64, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !416, file: !415, line: 17, baseType: !419, size: 64)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 64, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 1)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !225, file: !226, line: 724, baseType: !414, size: 64, offset: 3712)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !225, file: !226, line: 749, baseType: !424, offset: 3776)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !226, line: 290, elements: !286)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !225, file: !226, line: 751, baseType: !270, size: 128, offset: 3776)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !225, file: !226, line: 757, baseType: !427, size: 64, offset: 3904)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !429, line: 388, size: 7296, elements: !430)
!429 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!430 = !{!431, !660}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !429, line: 389, baseType: !432, size: 7296)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !428, file: !429, line: 389, size: 7296, elements: !433)
!433 = !{!434, !481, !482, !483, !487, !488, !489, !490, !491, !498, !499, !500, !501, !502, !503, !504, !512, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !546, !554, !557, !605, !606, !628, !629, !632, !636, !637, !640, !641, !644, !647, !659}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !432, file: !429, line: 390, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !429, line: 305, size: 1472, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !453, !454, !459, !460, !463, !467, !468, !471, !472, !479}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !436, file: !429, line: 308, baseType: !209, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !436, file: !429, line: 309, baseType: !209, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !436, file: !429, line: 313, baseType: !435, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !436, file: !429, line: 313, baseType: !435, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !436, file: !429, line: 315, baseType: !262, size: 192, align: 64, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !436, file: !429, line: 323, baseType: !209, size: 64, offset: 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !436, file: !429, line: 327, baseType: !427, size: 64, offset: 512)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !436, file: !429, line: 333, baseType: !446, size: 64, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !447, line: 284, baseType: !448)
!447 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !447, line: 284, size: 64, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !448, file: !447, line: 284, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !452, line: 19, baseType: !209)
!452 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !436, file: !429, line: 334, baseType: !209, size: 64, offset: 640)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !436, file: !429, line: 343, baseType: !455, size: 256, offset: 704)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !436, file: !429, line: 340, size: 256, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !455, file: !429, line: 341, baseType: !262, size: 192, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !455, file: !429, line: 342, baseType: !209, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !436, file: !429, line: 351, baseType: !270, size: 128, offset: 960)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !436, file: !429, line: 353, baseType: !461, size: 64, offset: 1088)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !429, line: 353, flags: DIFlagFwdDecl)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !436, file: !429, line: 356, baseType: !464, size: 64, offset: 1152)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !429, line: 356, flags: DIFlagFwdDecl)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !436, file: !429, line: 359, baseType: !209, size: 64, offset: 1216)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !436, file: !429, line: 361, baseType: !469, size: 64, offset: 1280)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !447, line: 526, flags: DIFlagFwdDecl)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !436, file: !429, line: 362, baseType: !219, size: 64, offset: 1344)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !436, file: !429, line: 365, baseType: !473, size: 64, offset: 1408)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !474, line: 13, baseType: !475)
!474 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !238, line: 175, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 173, size: 64, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !476, file: !238, line: 174, baseType: !309, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !436, file: !429, line: 373, baseType: !480, offset: 1472)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !429, line: 296, elements: !286)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !432, file: !429, line: 391, baseType: !390, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !432, file: !429, line: 392, baseType: !277, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !432, file: !429, line: 394, baseType: !484, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!209, !469, !209, !209, !209, !209}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !432, file: !429, line: 398, baseType: !209, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !432, file: !429, line: 399, baseType: !209, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !432, file: !429, line: 405, baseType: !209, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !432, file: !429, line: 406, baseType: !209, size: 64, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !432, file: !429, line: 407, baseType: !492, size: 64, offset: 512)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !447, line: 286, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 286, size: 64, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !494, file: !447, line: 286, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !452, line: 18, baseType: !209)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !432, file: !429, line: 416, baseType: !237, size: 32, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !432, file: !429, line: 428, baseType: !237, size: 32, offset: 608)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !432, file: !429, line: 437, baseType: !237, size: 32, offset: 640)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !432, file: !429, line: 447, baseType: !237, size: 32, offset: 672)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !432, file: !429, line: 450, baseType: !473, size: 64, offset: 704)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !432, file: !429, line: 452, baseType: !7, size: 32, offset: 768)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !432, file: !429, line: 454, baseType: !505, offset: 800)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !345, line: 83, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !345, line: 71, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, scope: !506, file: !345, line: 72, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !506, file: !345, line: 72, elements: !510)
!510 = !{!511}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !509, file: !345, line: 73, baseType: !346)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !432, file: !429, line: 457, baseType: !513, size: 256, offset: 832)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !514, line: 35, size: 256, elements: !515)
!514 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!515 = !{!516, !517, !518, !519}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !513, file: !514, line: 36, baseType: !473, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !513, file: !514, line: 42, baseType: !473, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !513, file: !514, line: 46, baseType: !344, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !513, file: !514, line: 47, baseType: !270, size: 128, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !432, file: !429, line: 459, baseType: !270, size: 128, offset: 1088)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !432, file: !429, line: 466, baseType: !209, size: 64, offset: 1216)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !432, file: !429, line: 467, baseType: !209, size: 64, offset: 1280)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !432, file: !429, line: 469, baseType: !209, size: 64, offset: 1344)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !432, file: !429, line: 470, baseType: !209, size: 64, offset: 1408)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !432, file: !429, line: 471, baseType: !475, size: 64, offset: 1472)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !432, file: !429, line: 472, baseType: !209, size: 64, offset: 1536)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !432, file: !429, line: 473, baseType: !209, size: 64, offset: 1600)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !432, file: !429, line: 474, baseType: !209, size: 64, offset: 1664)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !432, file: !429, line: 475, baseType: !209, size: 64, offset: 1728)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !432, file: !429, line: 477, baseType: !505, offset: 1792)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !432, file: !429, line: 478, baseType: !209, size: 64, offset: 1792)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !432, file: !429, line: 478, baseType: !209, size: 64, offset: 1856)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !432, file: !429, line: 478, baseType: !209, size: 64, offset: 1920)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !432, file: !429, line: 478, baseType: !209, size: 64, offset: 1984)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !432, file: !429, line: 479, baseType: !209, size: 64, offset: 2048)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !432, file: !429, line: 479, baseType: !209, size: 64, offset: 2112)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !432, file: !429, line: 479, baseType: !209, size: 64, offset: 2176)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !432, file: !429, line: 480, baseType: !209, size: 64, offset: 2240)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !432, file: !429, line: 480, baseType: !209, size: 64, offset: 2304)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !432, file: !429, line: 480, baseType: !209, size: 64, offset: 2368)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !432, file: !429, line: 480, baseType: !209, size: 64, offset: 2432)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !432, file: !429, line: 482, baseType: !543, size: 2816, offset: 2496)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 2816, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 44)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !432, file: !429, line: 488, baseType: !547, size: 256, offset: 5312)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !548, line: 60, size: 256, elements: !549)
!548 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !547, file: !548, line: 61, baseType: !551, size: 256)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 256, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 4)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !432, file: !429, line: 490, baseType: !555, size: 64, offset: 5568)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !429, line: 490, flags: DIFlagFwdDecl)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !432, file: !429, line: 493, baseType: !558, size: 896, offset: 5632)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !559, line: 53, baseType: !560)
!559 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !559, line: 13, size: 896, elements: !561)
!561 = !{!562, !563, !564, !565, !568, !569, !576, !577, !597, !598, !601}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !560, file: !559, line: 18, baseType: !277, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !560, file: !559, line: 28, baseType: !475, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !560, file: !559, line: 31, baseType: !513, size: 256, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !560, file: !559, line: 32, baseType: !566, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !559, line: 32, flags: DIFlagFwdDecl)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !560, file: !559, line: 37, baseType: !295, size: 16, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !560, file: !559, line: 40, baseType: !570, size: 192, offset: 512)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !571, line: 53, size: 192, elements: !572)
!571 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!572 = !{!573, !574, !575}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !570, file: !571, line: 54, baseType: !473, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !570, file: !571, line: 55, baseType: !505, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !570, file: !571, line: 59, baseType: !270, size: 128, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !560, file: !559, line: 41, baseType: !219, size: 64, offset: 704)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !560, file: !559, line: 42, baseType: !578, size: 64, offset: 768)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !581, line: 13, size: 896, elements: !582)
!581 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !580, file: !581, line: 14, baseType: !219, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !580, file: !581, line: 15, baseType: !209, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !580, file: !581, line: 17, baseType: !209, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !580, file: !581, line: 17, baseType: !209, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !580, file: !581, line: 19, baseType: !222, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !580, file: !581, line: 21, baseType: !222, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !580, file: !581, line: 22, baseType: !222, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !580, file: !581, line: 23, baseType: !222, size: 64, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !580, file: !581, line: 24, baseType: !222, size: 64, offset: 512)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !580, file: !581, line: 25, baseType: !222, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !580, file: !581, line: 26, baseType: !222, size: 64, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !580, file: !581, line: 27, baseType: !222, size: 64, offset: 704)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !580, file: !581, line: 28, baseType: !222, size: 64, offset: 768)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !580, file: !581, line: 29, baseType: !222, size: 64, offset: 832)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !560, file: !559, line: 44, baseType: !237, size: 32, offset: 832)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !560, file: !559, line: 50, baseType: !599, size: 16, offset: 864)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !212, line: 19, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !214, line: 24, baseType: !295)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !560, file: !559, line: 51, baseType: !602, size: 16, offset: 880)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !212, line: 18, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !214, line: 23, baseType: !604)
!604 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !432, file: !429, line: 495, baseType: !209, size: 64, offset: 6528)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !432, file: !429, line: 497, baseType: !607, size: 64, offset: 6592)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !429, line: 381, size: 384, elements: !609)
!609 = !{!610, !611, !617}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !608, file: !429, line: 382, baseType: !237, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !608, file: !429, line: 383, baseType: !612, size: 128, offset: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !429, line: 376, size: 128, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !612, file: !429, line: 377, baseType: !224, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !612, file: !429, line: 378, baseType: !616, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !608, file: !429, line: 384, baseType: !618, size: 192, offset: 192)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !619, line: 26, size: 192, elements: !620)
!619 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !618, file: !619, line: 27, baseType: !181, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !618, file: !619, line: 28, baseType: !623, size: 128, offset: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !624, line: 43, size: 128, elements: !625)
!624 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !623, file: !624, line: 44, baseType: !344)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !623, file: !624, line: 45, baseType: !270, size: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !432, file: !429, line: 500, baseType: !505, offset: 6656)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !432, file: !429, line: 501, baseType: !630, size: 64, offset: 6656)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !429, line: 387, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !432, file: !429, line: 516, baseType: !633, size: 64, offset: 6720)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !635, line: 18, flags: DIFlagFwdDecl)
!635 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!636 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !432, file: !429, line: 519, baseType: !469, size: 64, offset: 6784)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !432, file: !429, line: 521, baseType: !638, size: 64, offset: 6848)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !429, line: 521, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !432, file: !429, line: 545, baseType: !237, size: 32, offset: 6912)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !432, file: !429, line: 548, baseType: !642, size: 8, offset: 6944)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !238, line: 30, baseType: !643)
!643 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !432, file: !429, line: 550, baseType: !645, offset: 6952)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !646, line: 142, elements: !286)
!646 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!647 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !432, file: !429, line: 554, baseType: !648, size: 256, offset: 6976)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !649, line: 102, size: 256, elements: !650)
!649 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!650 = !{!651, !652, !653}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !648, file: !649, line: 103, baseType: !473, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !648, file: !649, line: 104, baseType: !270, size: 128, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !648, file: !649, line: 105, baseType: !654, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !649, line: 21, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !432, file: !429, line: 557, baseType: !211, size: 32, offset: 7232)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !428, file: !429, line: 565, baseType: !661, offset: 7296)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: -1)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !225, file: !226, line: 758, baseType: !427, size: 64, offset: 3968)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !225, file: !226, line: 761, baseType: !666, size: 320, offset: 4032)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !548, line: 34, size: 320, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !666, file: !548, line: 35, baseType: !277, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !666, file: !548, line: 36, baseType: !670, size: 256, offset: 64)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 256, elements: !552)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !225, file: !226, line: 766, baseType: !7, size: 32, offset: 4352)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !225, file: !226, line: 767, baseType: !7, size: 32, offset: 4384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !225, file: !226, line: 768, baseType: !7, size: 32, offset: 4416)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !225, file: !226, line: 770, baseType: !7, size: 32, offset: 4448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !225, file: !226, line: 772, baseType: !209, size: 64, offset: 4480)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !225, file: !226, line: 775, baseType: !181, size: 32, offset: 4544)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !225, file: !226, line: 778, baseType: !181, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !225, file: !226, line: 779, baseType: !181, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !225, file: !226, line: 780, baseType: !181, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !225, file: !226, line: 803, baseType: !181, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !225, file: !226, line: 806, baseType: !181, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !225, file: !226, line: 807, baseType: !181, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !225, file: !226, line: 809, baseType: !181, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !225, file: !226, line: 815, baseType: !181, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !225, file: !226, line: 831, baseType: !209, size: 64, offset: 4672)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !225, file: !226, line: 833, baseType: !687, size: 384, offset: 4736)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !191, line: 25, size: 384, elements: !688)
!688 = !{!689, !694}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !687, file: !191, line: 26, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!222, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !191, line: 27, baseType: !695, size: 320, offset: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !687, file: !191, line: 27, size: 320, elements: !696)
!696 = !{!697, !707, !734}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !695, file: !191, line: 36, baseType: !698, size: 320)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !191, line: 29, size: 320, elements: !699)
!699 = !{!700, !702, !703, !704, !705, !706}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !698, file: !191, line: 30, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !698, file: !191, line: 31, baseType: !211, size: 32, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !191, line: 32, baseType: !211, size: 32, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !698, file: !191, line: 33, baseType: !211, size: 32, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !698, file: !191, line: 34, baseType: !277, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !698, file: !191, line: 35, baseType: !701, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !695, file: !191, line: 46, baseType: !708, size: 192)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !191, line: 38, size: 192, elements: !709)
!709 = !{!710, !711, !712, !733}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !708, file: !191, line: 39, baseType: !369, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !708, file: !191, line: 40, baseType: !190, size: 32, offset: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !191, line: 41, baseType: !713, size: 64, offset: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !708, file: !191, line: 41, size: 64, elements: !714)
!714 = !{!715, !723}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !713, file: !191, line: 42, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !718, line: 7, size: 128, elements: !719)
!718 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!719 = !{!720, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !717, file: !718, line: 8, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !371, line: 93, baseType: !311)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !717, file: !718, line: 9, baseType: !311, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !713, file: !191, line: 43, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !726, line: 7, size: 64, elements: !727)
!726 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!727 = !{!728, !732}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !725, file: !726, line: 8, baseType: !729, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !726, line: 5, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !212, line: 20, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !214, line: 26, baseType: !7)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !725, file: !726, line: 9, baseType: !730, size: 32, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !708, file: !191, line: 45, baseType: !277, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !695, file: !191, line: 54, baseType: !735, size: 256)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !191, line: 48, size: 256, elements: !736)
!736 = !{!737, !740, !741, !742, !743}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !735, file: !191, line: 49, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !191, line: 14, flags: DIFlagFwdDecl)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !735, file: !191, line: 50, baseType: !7, size: 32, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !735, file: !191, line: 51, baseType: !7, size: 32, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !735, file: !191, line: 52, baseType: !209, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !735, file: !191, line: 53, baseType: !209, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !225, file: !226, line: 835, baseType: !745, size: 32, offset: 5120)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !238, line: 22, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !371, line: 28, baseType: !7)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !225, file: !226, line: 836, baseType: !745, size: 32, offset: 5152)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !225, file: !226, line: 840, baseType: !209, size: 64, offset: 5184)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !225, file: !226, line: 849, baseType: !224, size: 64, offset: 5248)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !226, line: 852, baseType: !224, size: 64, offset: 5312)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !225, file: !226, line: 857, baseType: !270, size: 128, offset: 5376)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !225, file: !226, line: 858, baseType: !270, size: 128, offset: 5504)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !225, file: !226, line: 859, baseType: !224, size: 64, offset: 5632)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !225, file: !226, line: 867, baseType: !270, size: 128, offset: 5696)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !225, file: !226, line: 868, baseType: !270, size: 128, offset: 5824)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !225, file: !226, line: 871, baseType: !757, size: 64, offset: 5952)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !759, line: 59, size: 768, elements: !760)
!759 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!760 = !{!761, !762, !763, !764, !775, !776, !783, !792}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !758, file: !759, line: 61, baseType: !232, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !758, file: !759, line: 62, baseType: !181, size: 32, offset: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !758, file: !759, line: 63, baseType: !505, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !758, file: !759, line: 65, baseType: !765, size: 256, offset: 64)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 256, elements: !552)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !238, line: 182, size: 64, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !766, file: !238, line: 183, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !238, line: 186, size: 128, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !770, file: !238, line: 187, baseType: !769, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !770, file: !238, line: 187, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !758, file: !759, line: 66, baseType: !766, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !758, file: !759, line: 68, baseType: !777, size: 128, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !778, line: 40, baseType: !779)
!778 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !778, line: 36, size: 128, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !779, file: !778, line: 37, baseType: !505)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !779, file: !778, line: 38, baseType: !270, size: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !758, file: !759, line: 69, baseType: !784, size: 128, align: 64, offset: 512)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !238, line: 216, size: 128, align: 64, elements: !785)
!785 = !{!786, !788}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !784, file: !238, line: 217, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !784, file: !238, line: 218, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !787}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !758, file: !759, line: 70, baseType: !793, size: 128, offset: 640)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 128, elements: !420)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !759, line: 54, size: 128, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !794, file: !759, line: 55, baseType: !7, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !794, file: !759, line: 56, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !759, line: 56, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !225, file: !226, line: 872, baseType: !801, size: 512, offset: 6016)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 512, elements: !552)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !225, file: !226, line: 873, baseType: !270, size: 128, offset: 6528)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !225, file: !226, line: 874, baseType: !270, size: 128, offset: 6656)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !225, file: !226, line: 876, baseType: !805, size: 64, offset: 6784)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !225, file: !226, line: 879, baseType: !807, size: 64, offset: 6848)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !225, file: !226, line: 882, baseType: !807, size: 64, offset: 6912)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !225, file: !226, line: 884, baseType: !277, size: 64, offset: 6976)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !225, file: !226, line: 885, baseType: !277, size: 64, offset: 7040)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !225, file: !226, line: 890, baseType: !277, size: 64, offset: 7104)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !225, file: !226, line: 891, baseType: !813, size: 128, offset: 7168)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !226, line: 242, size: 128, elements: !814)
!814 = !{!815, !816, !817}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !813, file: !226, line: 244, baseType: !277, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !813, file: !226, line: 245, baseType: !277, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !813, file: !226, line: 246, baseType: !344, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !225, file: !226, line: 900, baseType: !209, size: 64, offset: 7296)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !225, file: !226, line: 901, baseType: !209, size: 64, offset: 7360)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !225, file: !226, line: 904, baseType: !277, size: 64, offset: 7424)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !225, file: !226, line: 907, baseType: !277, size: 64, offset: 7488)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !225, file: !226, line: 910, baseType: !209, size: 64, offset: 7552)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !225, file: !226, line: 911, baseType: !209, size: 64, offset: 7616)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !225, file: !226, line: 914, baseType: !825, size: 640, offset: 7680)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !826, line: 123, size: 640, elements: !827)
!826 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!827 = !{!828, !836, !837}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !825, file: !826, line: 124, baseType: !829, size: 576)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 576, elements: !834)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !826, line: 108, size: 192, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !830, file: !826, line: 109, baseType: !277, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !830, file: !826, line: 110, baseType: !384, size: 128, offset: 64)
!834 = !{!835}
!835 = !DISubrange(count: 3)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !825, file: !826, line: 125, baseType: !181, size: 32, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !825, file: !826, line: 126, baseType: !181, size: 32, offset: 608)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !225, file: !226, line: 917, baseType: !839, size: 192, offset: 8320)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !826, line: 134, size: 192, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !839, file: !826, line: 135, baseType: !784, size: 128, align: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !839, file: !826, line: 136, baseType: !181, size: 32, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !225, file: !226, line: 923, baseType: !844, size: 64, offset: 8512)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !846)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !226, line: 923, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !225, file: !226, line: 926, baseType: !844, size: 64, offset: 8576)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !225, file: !226, line: 929, baseType: !844, size: 64, offset: 8640)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !225, file: !226, line: 933, baseType: !850, size: 64, offset: 8704)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !226, line: 933, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !225, file: !226, line: 943, baseType: !853, size: 128, offset: 8768)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 128, elements: !854)
!854 = !{!855}
!855 = !DISubrange(count: 16)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !225, file: !226, line: 945, baseType: !857, size: 64, offset: 8896)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !226, line: 49, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !225, file: !226, line: 956, baseType: !860, size: 64, offset: 8960)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !226, line: 45, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !225, file: !226, line: 959, baseType: !863, size: 64, offset: 9024)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !226, line: 959, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !225, file: !226, line: 962, baseType: !866, size: 64, offset: 9088)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !226, line: 66, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !225, file: !226, line: 966, baseType: !869, size: 64, offset: 9152)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !226, line: 50, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !225, file: !226, line: 969, baseType: !872, size: 64, offset: 9216)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !826, line: 223, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !225, file: !226, line: 970, baseType: !875, size: 64, offset: 9280)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !226, line: 62, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !225, file: !226, line: 971, baseType: !878, size: 64, offset: 9344)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !879, line: 25, baseType: !880)
!879 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !879, line: 23, size: 64, elements: !881)
!881 = !{!882}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !880, file: !879, line: 24, baseType: !419, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !225, file: !226, line: 972, baseType: !878, size: 64, offset: 9408)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !225, file: !226, line: 974, baseType: !878, size: 64, offset: 9472)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !225, file: !226, line: 975, baseType: !886, size: 192, offset: 9536)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !887, line: 30, size: 192, elements: !888)
!887 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !886, file: !887, line: 31, baseType: !270, size: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !886, file: !887, line: 32, baseType: !878, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !225, file: !226, line: 976, baseType: !209, size: 64, offset: 9728)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !225, file: !226, line: 977, baseType: !893, size: 64, offset: 9792)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !238, line: 55, baseType: !894)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !371, line: 72, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !371, line: 16, baseType: !209)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !225, file: !226, line: 978, baseType: !181, size: 32, offset: 9856)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !225, file: !226, line: 980, baseType: !787, size: 64, offset: 9920)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !225, file: !226, line: 989, baseType: !899, size: 128, offset: 9984)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !900, line: 35, size: 128, elements: !901)
!900 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !899, file: !900, line: 36, baseType: !7, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !899, file: !900, line: 37, baseType: !237, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !899, file: !900, line: 38, baseType: !905, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !900, line: 23, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !225, file: !226, line: 992, baseType: !277, size: 64, offset: 10112)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !225, file: !226, line: 993, baseType: !277, size: 64, offset: 10176)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !225, file: !226, line: 996, baseType: !505, offset: 10240)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !225, file: !226, line: 999, baseType: !344, offset: 10240)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !225, file: !226, line: 1001, baseType: !912, size: 64, offset: 10240)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !226, line: 636, size: 64, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !912, file: !226, line: 637, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !225, file: !226, line: 1005, baseType: !387, size: 128, offset: 10304)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !225, file: !226, line: 1007, baseType: !224, size: 64, offset: 10432)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !225, file: !226, line: 1009, baseType: !919, size: 64, offset: 10496)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !226, line: 1009, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !225, file: !226, line: 1043, baseType: !219, size: 64, offset: 10560)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !225, file: !226, line: 1046, baseType: !923, size: 64, offset: 10624)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !226, line: 41, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !225, file: !226, line: 1050, baseType: !926, size: 64, offset: 10688)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !226, line: 42, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !225, file: !226, line: 1054, baseType: !929, size: 64, offset: 10752)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !226, line: 55, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !225, file: !226, line: 1056, baseType: !932, size: 64, offset: 10816)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !226, line: 40, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !225, file: !226, line: 1058, baseType: !935, size: 64, offset: 10880)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !226, line: 47, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !225, file: !226, line: 1061, baseType: !938, size: 64, offset: 10944)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !226, line: 43, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !225, file: !226, line: 1064, baseType: !209, size: 64, offset: 11008)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !225, file: !226, line: 1065, baseType: !942, size: 64, offset: 11072)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !887, line: 14, baseType: !944)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !887, line: 12, size: 384, elements: !945)
!945 = !{!946}
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !887, line: 13, baseType: !947, size: 384)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !887, line: 13, size: 384, elements: !948)
!948 = !{!949, !950, !951, !952}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !947, file: !887, line: 13, baseType: !7, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !947, file: !887, line: 13, baseType: !7, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !947, file: !887, line: 13, baseType: !7, size: 32, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !947, file: !887, line: 13, baseType: !953, size: 256, offset: 128)
!953 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !954, line: 32, size: 256, elements: !955)
!954 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!955 = !{!956, !962, !975, !981, !991, !1011, !1016}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !953, file: !954, line: 37, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !954, line: 34, size: 64, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !957, file: !954, line: 35, baseType: !746, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !957, file: !954, line: 36, baseType: !961, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !371, line: 49, baseType: !181)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !953, file: !954, line: 45, baseType: !963, size: 192)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !954, line: 40, size: 192, elements: !964)
!964 = !{!965, !967, !968, !974}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !963, file: !954, line: 41, baseType: !966, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !371, line: 95, baseType: !7)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !963, file: !954, line: 42, baseType: !7, size: 32, offset: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !963, file: !954, line: 43, baseType: !969, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !954, line: 11, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !954, line: 8, size: 64, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !970, file: !954, line: 9, baseType: !7, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !970, file: !954, line: 10, baseType: !219, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !963, file: !954, line: 44, baseType: !7, size: 32, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !953, file: !954, line: 52, baseType: !976, size: 128)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !954, line: 48, size: 128, elements: !977)
!977 = !{!978, !979, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !976, file: !954, line: 49, baseType: !746, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !976, file: !954, line: 50, baseType: !961, size: 32, offset: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !976, file: !954, line: 51, baseType: !969, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !953, file: !954, line: 61, baseType: !982, size: 256)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !954, line: 55, size: 256, elements: !983)
!983 = !{!984, !985, !986, !987, !990}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !982, file: !954, line: 56, baseType: !746, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !982, file: !954, line: 57, baseType: !961, size: 32, offset: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !982, file: !954, line: 58, baseType: !7, size: 32, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !982, file: !954, line: 59, baseType: !988, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !371, line: 94, baseType: !989)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !371, line: 15, baseType: !222)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !982, file: !954, line: 60, baseType: !988, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !953, file: !954, line: 95, baseType: !992, size: 256)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !954, line: 64, size: 256, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !992, file: !954, line: 65, baseType: !219, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !954, line: 77, baseType: !996, size: 192, offset: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !954, line: 77, size: 192, elements: !997)
!997 = !{!998, !999, !1006}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !996, file: !954, line: 82, baseType: !604, size: 16)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !996, file: !954, line: 88, baseType: !1000, size: 192)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !996, file: !954, line: 84, size: 192, elements: !1001)
!1001 = !{!1002, !1004, !1005}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1000, file: !954, line: 85, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 64, elements: !365)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1000, file: !954, line: 86, baseType: !219, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1000, file: !954, line: 87, baseType: !219, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !996, file: !954, line: 93, baseType: !1007, size: 96)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !996, file: !954, line: 90, size: 96, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1007, file: !954, line: 91, baseType: !1003, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1007, file: !954, line: 92, baseType: !213, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !953, file: !954, line: 101, baseType: !1012, size: 128)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !954, line: 98, size: 128, elements: !1013)
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1012, file: !954, line: 99, baseType: !222, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1012, file: !954, line: 100, baseType: !7, size: 32, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !953, file: !954, line: 108, baseType: !1017, size: 128)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !954, line: 104, size: 128, elements: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1017, file: !954, line: 105, baseType: !219, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1017, file: !954, line: 106, baseType: !7, size: 32, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1017, file: !954, line: 107, baseType: !181, size: 32, offset: 96)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !225, file: !226, line: 1067, baseType: !1023, offset: 11136)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1024, line: 12, elements: !286)
!1024 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !225, file: !226, line: 1099, baseType: !1026, size: 64, offset: 11136)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !226, line: 56, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !225, file: !226, line: 1103, baseType: !270, size: 128, offset: 11200)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !225, file: !226, line: 1104, baseType: !1030, size: 64, offset: 11328)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !226, line: 46, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !225, file: !226, line: 1105, baseType: !570, size: 192, offset: 11392)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !225, file: !226, line: 1106, baseType: !181, size: 32, offset: 11584)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !225, file: !226, line: 1109, baseType: !1035, size: 128, offset: 11648)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, size: 128, elements: !1038)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !226, line: 51, flags: DIFlagFwdDecl)
!1038 = !{!1039}
!1039 = !DISubrange(count: 2)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !225, file: !226, line: 1110, baseType: !570, size: 192, offset: 11776)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !225, file: !226, line: 1111, baseType: !270, size: 128, offset: 11968)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !225, file: !226, line: 1173, baseType: !1043, size: 64, offset: 12096)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1045, line: 62, size: 256, align: 256, elements: !1046)
!1045 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1046 = !{!1047, !1048, !1049, !1054}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1044, file: !1045, line: 75, baseType: !213, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1044, file: !1045, line: 90, baseType: !213, size: 32, offset: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1044, file: !1045, line: 124, baseType: !1050, size: 64, offset: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1044, file: !1045, line: 109, size: 64, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1050, file: !1045, line: 110, baseType: !278, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1050, file: !1045, line: 112, baseType: !278, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1044, file: !1045, line: 144, baseType: !213, size: 32, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !225, file: !226, line: 1174, baseType: !211, size: 32, offset: 12160)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !225, file: !226, line: 1179, baseType: !209, size: 64, offset: 12224)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !225, file: !226, line: 1182, baseType: !1058, size: 128, offset: 12288)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !548, line: 76, size: 128, elements: !1059)
!1059 = !{!1060, !1065, !1066}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1058, file: !548, line: 85, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1062, line: 7, size: 64, elements: !1063)
!1062 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1061, file: !1062, line: 12, baseType: !416, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1058, file: !548, line: 88, baseType: !642, size: 8, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1058, file: !548, line: 95, baseType: !642, size: 8, offset: 72)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !226, line: 1184, baseType: !1068, size: 128, offset: 12416)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !225, file: !226, line: 1184, size: 128, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1068, file: !226, line: 1185, baseType: !232, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1068, file: !226, line: 1186, baseType: !784, size: 128, align: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !225, file: !226, line: 1190, baseType: !1073, size: 64, offset: 12544)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !226, line: 53, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !225, file: !226, line: 1192, baseType: !1076, size: 128, offset: 12608)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !548, line: 64, size: 128, elements: !1077)
!1077 = !{!1078, !1171, !1172}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1076, file: !548, line: 65, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !429, line: 68, size: 512, align: 128, elements: !1081)
!1081 = !{!1082, !1083, !1163, !1170}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1080, file: !429, line: 69, baseType: !209, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !429, line: 77, baseType: !1084, size: 320, offset: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1080, file: !429, line: 77, size: 320, elements: !1085)
!1085 = !{!1086, !1095, !1100, !1128, !1136, !1142, !1155, !1162}
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !429, line: 78, baseType: !1087, size: 320)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !429, line: 78, size: 320, elements: !1088)
!1088 = !{!1089, !1090, !1093, !1094}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1087, file: !429, line: 84, baseType: !270, size: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1087, file: !429, line: 86, baseType: !1091, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !429, line: 26, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1087, file: !429, line: 87, baseType: !209, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1087, file: !429, line: 94, baseType: !209, size: 64, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !429, line: 96, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !429, line: 96, size: 64, elements: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1096, file: !429, line: 101, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !238, line: 143, baseType: !277)
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !429, line: 103, baseType: !1101, size: 320)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !429, line: 103, size: 320, elements: !1102)
!1102 = !{!1103, !1113, !1116, !1117}
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !429, line: 104, baseType: !1104, size: 128)
!1104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !429, line: 104, size: 128, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1104, file: !429, line: 105, baseType: !270, size: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1104, file: !429, line: 106, baseType: !1108, size: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1104, file: !429, line: 106, size: 128, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1108, file: !429, line: 107, baseType: !1079, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1108, file: !429, line: 109, baseType: !7, size: 32, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1108, file: !429, line: 110, baseType: !7, size: 32, offset: 96)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1101, file: !429, line: 117, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !429, line: 117, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1101, file: !429, line: 119, baseType: !219, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !429, line: 120, baseType: !1118, size: 64, offset: 256)
!1118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !429, line: 120, size: 64, elements: !1119)
!1119 = !{!1120, !1121, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1118, file: !429, line: 121, baseType: !219, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1118, file: !429, line: 122, baseType: !209, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1118, file: !429, line: 123, baseType: !1123, size: 32)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1118, file: !429, line: 123, size: 32, elements: !1124)
!1124 = !{!1125, !1126, !1127}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1123, file: !429, line: 124, baseType: !181, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1123, file: !429, line: 125, baseType: !181, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1123, file: !429, line: 126, baseType: !181, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !429, line: 130, baseType: !1129, size: 192)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !429, line: 130, size: 192, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1134, !1135}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1129, file: !429, line: 131, baseType: !209, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1129, file: !429, line: 134, baseType: !402, size: 8, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1129, file: !429, line: 135, baseType: !402, size: 8, offset: 72)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1129, file: !429, line: 136, baseType: !237, size: 32, offset: 96)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1129, file: !429, line: 137, baseType: !181, size: 32, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !429, line: 139, baseType: !1137, size: 256)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !429, line: 139, size: 256, elements: !1138)
!1138 = !{!1139, !1140, !1141}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1137, file: !429, line: 140, baseType: !209, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1137, file: !429, line: 141, baseType: !237, size: 32, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1137, file: !429, line: 143, baseType: !270, size: 128, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !429, line: 145, baseType: !1143, size: 256)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !429, line: 145, size: 256, elements: !1144)
!1144 = !{!1145, !1146, !1148, !1149, !1154}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1143, file: !429, line: 146, baseType: !209, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1143, file: !429, line: 147, baseType: !1147, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !447, line: 509, baseType: !1079)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1143, file: !429, line: 148, baseType: !209, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !429, line: 149, baseType: !1150, size: 64, offset: 192)
!1150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1143, file: !429, line: 149, size: 64, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1150, file: !429, line: 150, baseType: !427, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1150, file: !429, line: 151, baseType: !237, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1143, file: !429, line: 156, baseType: !505, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !429, line: 159, baseType: !1156, size: 128)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !429, line: 159, size: 128, elements: !1157)
!1157 = !{!1158, !1161}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1156, file: !429, line: 161, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !429, line: 161, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1156, file: !429, line: 162, baseType: !219, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1084, file: !429, line: 176, baseType: !784, size: 128, align: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !429, line: 179, baseType: !1164, size: 32, offset: 384)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1080, file: !429, line: 179, size: 32, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1164, file: !429, line: 184, baseType: !237, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1164, file: !429, line: 192, baseType: !181, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1164, file: !429, line: 194, baseType: !181, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1164, file: !429, line: 195, baseType: !7, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1080, file: !429, line: 199, baseType: !237, size: 32, offset: 416)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1076, file: !548, line: 67, baseType: !213, size: 32, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1076, file: !548, line: 68, baseType: !213, size: 32, offset: 96)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !225, file: !226, line: 1206, baseType: !7, size: 32, offset: 12736)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !225, file: !226, line: 1207, baseType: !7, size: 32, offset: 12768)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !225, file: !226, line: 1209, baseType: !209, size: 64, offset: 12800)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !225, file: !226, line: 1219, baseType: !277, size: 64, offset: 12864)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !225, file: !226, line: 1220, baseType: !277, size: 64, offset: 12928)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !225, file: !226, line: 1317, baseType: !7, size: 32, offset: 12992)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !225, file: !226, line: 1319, baseType: !224, size: 64, offset: 13056)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !225, file: !226, line: 1322, baseType: !1181, size: 64, offset: 13120)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !226, line: 1322, flags: DIFlagFwdDecl)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !225, file: !226, line: 1326, baseType: !232, size: 32, offset: 13184)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !225, file: !226, line: 1342, baseType: !219, size: 64, offset: 13248)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !225, file: !226, line: 1343, baseType: !278, size: 64, offset: 13312)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !225, file: !226, line: 1344, baseType: !277, size: 64, offset: 13376)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !225, file: !226, line: 1345, baseType: !278, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !225, file: !226, line: 1346, baseType: !278, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !225, file: !226, line: 1347, baseType: !278, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !225, file: !226, line: 1348, baseType: !784, size: 128, align: 64, offset: 13504)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !225, file: !226, line: 1358, baseType: !1192, size: 34816, offset: 13824)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !197, line: 485, size: 34816, elements: !1193)
!1193 = !{!1194, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1223, !1224, !1225, !1226, !1227, !1228, !1231, !1232, !1233}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1192, file: !197, line: 487, baseType: !1195, size: 192)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1196, size: 192, elements: !834)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1197, line: 16, size: 64, elements: !1198)
!1197 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1196, file: !1197, line: 17, baseType: !599, size: 16)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1196, file: !1197, line: 18, baseType: !599, size: 16, offset: 16)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1196, file: !1197, line: 19, baseType: !599, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1196, file: !1197, line: 19, baseType: !599, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1196, file: !1197, line: 19, baseType: !599, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1196, file: !1197, line: 19, baseType: !599, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1196, file: !1197, line: 19, baseType: !599, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1196, file: !1197, line: 20, baseType: !599, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1196, file: !1197, line: 20, baseType: !599, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1196, file: !1197, line: 20, baseType: !599, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1196, file: !1197, line: 20, baseType: !599, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1196, file: !1197, line: 20, baseType: !599, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1196, file: !1197, line: 20, baseType: !599, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1192, file: !197, line: 491, baseType: !209, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1192, file: !197, line: 495, baseType: !295, size: 16, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1192, file: !197, line: 496, baseType: !295, size: 16, offset: 272)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1192, file: !197, line: 497, baseType: !295, size: 16, offset: 288)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1192, file: !197, line: 498, baseType: !295, size: 16, offset: 304)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1192, file: !197, line: 502, baseType: !209, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1192, file: !197, line: 503, baseType: !209, size: 64, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1192, file: !197, line: 514, baseType: !1220, size: 256, offset: 448)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 256, elements: !552)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !197, line: 483, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1192, file: !197, line: 516, baseType: !209, size: 64, offset: 704)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1192, file: !197, line: 518, baseType: !209, size: 64, offset: 768)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1192, file: !197, line: 520, baseType: !209, size: 64, offset: 832)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1192, file: !197, line: 521, baseType: !209, size: 64, offset: 896)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1192, file: !197, line: 522, baseType: !209, size: 64, offset: 960)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1192, file: !197, line: 528, baseType: !1229, size: 64, offset: 1024)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !197, line: 10, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1192, file: !197, line: 535, baseType: !209, size: 64, offset: 1088)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1192, file: !197, line: 537, baseType: !181, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1192, file: !197, line: 540, baseType: !1234, size: 33280, offset: 1536)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1235, line: 317, size: 33280, elements: !1236)
!1235 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1236 = !{!1237, !1238, !1239}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1234, file: !1235, line: 330, baseType: !181, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1234, file: !1235, line: 337, baseType: !209, size: 64, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1234, file: !1235, line: 348, baseType: !1240, size: 32768, offset: 512)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1235, line: 304, size: 32768, elements: !1241)
!1241 = !{!1242, !1257, !1298, !1348, !1365}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1240, file: !1235, line: 305, baseType: !1243, size: 896)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1235, line: 12, size: 896, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1256}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1243, file: !1235, line: 13, baseType: !211, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1243, file: !1235, line: 14, baseType: !211, size: 32, offset: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1243, file: !1235, line: 15, baseType: !211, size: 32, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1243, file: !1235, line: 16, baseType: !211, size: 32, offset: 96)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1243, file: !1235, line: 17, baseType: !211, size: 32, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1243, file: !1235, line: 18, baseType: !211, size: 32, offset: 160)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1243, file: !1235, line: 19, baseType: !211, size: 32, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1243, file: !1235, line: 22, baseType: !1253, size: 640, offset: 224)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 640, elements: !1254)
!1254 = !{!1255}
!1255 = !DISubrange(count: 20)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1243, file: !1235, line: 25, baseType: !211, size: 32, offset: 864)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1240, file: !1235, line: 306, baseType: !1258, size: 4096, align: 128)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1235, line: 34, size: 4096, align: 128, elements: !1259)
!1259 = !{!1260, !1261, !1262, !1263, !1264, !1279, !1280, !1281, !1285, !1289, !1293}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1258, file: !1235, line: 35, baseType: !599, size: 16)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1258, file: !1235, line: 36, baseType: !599, size: 16, offset: 16)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1258, file: !1235, line: 37, baseType: !599, size: 16, offset: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1258, file: !1235, line: 38, baseType: !599, size: 16, offset: 48)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1235, line: 39, baseType: !1265, size: 128, offset: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1235, line: 39, size: 128, elements: !1266)
!1266 = !{!1267, !1272}
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !1235, line: 40, baseType: !1268, size: 128)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1265, file: !1235, line: 40, size: 128, elements: !1269)
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1268, file: !1235, line: 41, baseType: !277, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1268, file: !1235, line: 42, baseType: !277, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !1235, line: 44, baseType: !1273, size: 128)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1265, file: !1235, line: 44, size: 128, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1273, file: !1235, line: 45, baseType: !211, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1273, file: !1235, line: 46, baseType: !211, size: 32, offset: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1273, file: !1235, line: 47, baseType: !211, size: 32, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1273, file: !1235, line: 48, baseType: !211, size: 32, offset: 96)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1258, file: !1235, line: 51, baseType: !211, size: 32, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1258, file: !1235, line: 52, baseType: !211, size: 32, offset: 224)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1258, file: !1235, line: 55, baseType: !1282, size: 1024, offset: 256)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 1024, elements: !1283)
!1283 = !{!1284}
!1284 = !DISubrange(count: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1258, file: !1235, line: 58, baseType: !1286, size: 2048, offset: 1280)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 2048, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1258, file: !1235, line: 60, baseType: !1290, size: 384, offset: 3328)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 384, elements: !1291)
!1291 = !{!1292}
!1292 = !DISubrange(count: 12)
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1235, line: 62, baseType: !1294, size: 384, offset: 3712)
!1294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1235, line: 62, size: 384, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1294, file: !1235, line: 63, baseType: !1290, size: 384)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1294, file: !1235, line: 64, baseType: !1290, size: 384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1240, file: !1235, line: 307, baseType: !1299, size: 1088)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1235, line: 79, size: 1088, elements: !1300)
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1347}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1299, file: !1235, line: 80, baseType: !211, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1299, file: !1235, line: 81, baseType: !211, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1299, file: !1235, line: 82, baseType: !211, size: 32, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1299, file: !1235, line: 83, baseType: !211, size: 32, offset: 96)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1299, file: !1235, line: 84, baseType: !211, size: 32, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1299, file: !1235, line: 85, baseType: !211, size: 32, offset: 160)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1299, file: !1235, line: 86, baseType: !211, size: 32, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1299, file: !1235, line: 88, baseType: !1253, size: 640, offset: 224)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1299, file: !1235, line: 89, baseType: !400, size: 8, offset: 864)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1299, file: !1235, line: 90, baseType: !400, size: 8, offset: 872)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1299, file: !1235, line: 91, baseType: !400, size: 8, offset: 880)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1299, file: !1235, line: 92, baseType: !400, size: 8, offset: 888)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1299, file: !1235, line: 93, baseType: !400, size: 8, offset: 896)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1299, file: !1235, line: 94, baseType: !400, size: 8, offset: 904)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1299, file: !1235, line: 95, baseType: !1316, size: 64, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1318, line: 11, size: 128, elements: !1319)
!1318 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1317, file: !1318, line: 12, baseType: !222, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1317, file: !1318, line: 13, baseType: !1322, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1324, line: 56, size: 1344, elements: !1325)
!1324 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1323, file: !1324, line: 61, baseType: !209, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1323, file: !1324, line: 62, baseType: !209, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1323, file: !1324, line: 63, baseType: !209, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1323, file: !1324, line: 64, baseType: !209, size: 64, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1323, file: !1324, line: 65, baseType: !209, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1323, file: !1324, line: 66, baseType: !209, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1323, file: !1324, line: 68, baseType: !209, size: 64, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1323, file: !1324, line: 69, baseType: !209, size: 64, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1323, file: !1324, line: 70, baseType: !209, size: 64, offset: 512)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1323, file: !1324, line: 71, baseType: !209, size: 64, offset: 576)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1323, file: !1324, line: 72, baseType: !209, size: 64, offset: 640)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1323, file: !1324, line: 73, baseType: !209, size: 64, offset: 704)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1323, file: !1324, line: 74, baseType: !209, size: 64, offset: 768)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1323, file: !1324, line: 75, baseType: !209, size: 64, offset: 832)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1323, file: !1324, line: 76, baseType: !209, size: 64, offset: 896)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1323, file: !1324, line: 81, baseType: !209, size: 64, offset: 960)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1323, file: !1324, line: 83, baseType: !209, size: 64, offset: 1024)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1323, file: !1324, line: 84, baseType: !209, size: 64, offset: 1088)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1323, file: !1324, line: 85, baseType: !209, size: 64, offset: 1152)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1323, file: !1324, line: 86, baseType: !209, size: 64, offset: 1216)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1323, file: !1324, line: 87, baseType: !209, size: 64, offset: 1280)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1299, file: !1235, line: 96, baseType: !211, size: 32, offset: 1024)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1240, file: !1235, line: 308, baseType: !1349, size: 4608, align: 512)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1235, line: 289, size: 4608, align: 512, elements: !1350)
!1350 = !{!1351, !1352, !1361}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1349, file: !1235, line: 290, baseType: !1258, size: 4096, align: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1349, file: !1235, line: 291, baseType: !1353, size: 512, offset: 4096)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1235, line: 268, size: 512, elements: !1354)
!1354 = !{!1355, !1356, !1357}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1353, file: !1235, line: 269, baseType: !277, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1353, file: !1235, line: 270, baseType: !277, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1353, file: !1235, line: 271, baseType: !1358, size: 384, offset: 128)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 384, elements: !1359)
!1359 = !{!1360}
!1360 = !DISubrange(count: 6)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1349, file: !1235, line: 292, baseType: !1362, offset: 4608)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, elements: !1363)
!1363 = !{!1364}
!1364 = !DISubrange(count: 0)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1240, file: !1235, line: 309, baseType: !1366, size: 32768)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 32768, elements: !1367)
!1367 = !{!1368}
!1368 = !DISubrange(count: 4096)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !1371, line: 92, size: 6400, elements: !1372)
!1371 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/lizy2001/genbc/linux")
!1372 = !{!1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1396, !1400, !1403, !1406}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1370, file: !1371, line: 93, baseType: !181, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1370, file: !1371, line: 94, baseType: !181, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !1370, file: !1371, line: 95, baseType: !181, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1370, file: !1371, line: 96, baseType: !181, size: 32, offset: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !1370, file: !1371, line: 97, baseType: !327, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !1370, file: !1371, line: 99, baseType: !7, size: 32, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !1370, file: !1371, line: 100, baseType: !277, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !1370, file: !1371, line: 101, baseType: !277, size: 64, offset: 256)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !1370, file: !1371, line: 102, baseType: !277, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !1370, file: !1371, line: 103, baseType: !1383, size: 5120, offset: 384)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 5120, elements: !1394)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !1371, line: 35, size: 512, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !1384, file: !1371, line: 36, baseType: !279, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1384, file: !1371, line: 37, baseType: !279, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1384, file: !1371, line: 38, baseType: !277, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !1384, file: !1371, line: 39, baseType: !279, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !1384, file: !1371, line: 40, baseType: !279, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !1384, file: !1371, line: 41, baseType: !279, size: 64, offset: 320)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !1384, file: !1371, line: 43, baseType: !279, size: 64, offset: 384)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !1384, file: !1371, line: 44, baseType: !279, size: 64, offset: 448)
!1394 = !{!1395}
!1395 = !DISubrange(count: 10)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !1370, file: !1371, line: 104, baseType: !1397, size: 640, offset: 5504)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, size: 640, elements: !1394)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !1371, line: 89, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !1370, file: !1371, line: 105, baseType: !1401, size: 64, offset: 6144)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !1371, line: 90, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !1370, file: !1371, line: 106, baseType: !1404, size: 64, offset: 6208)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !1371, line: 88, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !1370, file: !1371, line: 107, baseType: !270, size: 128, offset: 6272)
!1407 = !{!1408, !1470, !1475, !1480, !1482, !1489, !1494, !1499, !1504, !0, !1506, !1508, !1543}
!1408 = !DIGlobalVariableExpression(var: !1409, expr: !DIExpression())
!1409 = distinct !DIGlobalVariable(name: "__param_force", scope: !2, file: !3, line: 22, type: !1410, isLocal: true, isDefinition: true, align: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1412, line: 69, size: 320, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!1413 = !{!1414, !1417, !1421, !1441, !1443, !1447, !1448}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1411, file: !1412, line: 70, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1411, file: !1412, line: 71, baseType: !1418, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1420, line: 76, flags: DIFlagFwdDecl)
!1420 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1411, file: !1412, line: 72, baseType: !1422, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1424)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1412, line: 47, size: 256, elements: !1425)
!1425 = !{!1426, !1427, !1432, !1437}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1424, file: !1412, line: 49, baseType: !181, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1424, file: !1412, line: 51, baseType: !1428, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!7, !1415, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1424, file: !1412, line: 53, baseType: !1433, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!7, !1436, !1431}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1424, file: !1412, line: 55, baseType: !1438, size: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !219}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1411, file: !1412, line: 73, baseType: !1442, size: 16, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1411, file: !1412, line: 74, baseType: !1444, size: 8, offset: 208)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !212, line: 16, baseType: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !214, line: 20, baseType: !1446)
!1446 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1411, file: !1412, line: 75, baseType: !400, size: 8, offset: 216)
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !1412, line: 76, baseType: !1449, size: 64, offset: 256)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !1412, line: 76, size: 64, elements: !1450)
!1450 = !{!1451, !1452, !1459}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1449, file: !1412, line: 77, baseType: !219, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1449, file: !1412, line: 78, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1412, line: 86, size: 128, elements: !1456)
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1455, file: !1412, line: 87, baseType: !181, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1455, file: !1412, line: 88, baseType: !1436, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1449, file: !1412, line: 79, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1462)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1412, line: 92, size: 256, elements: !1463)
!1463 = !{!1464, !1465, !1466, !1468, !1469}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1462, file: !1412, line: 94, baseType: !181, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1462, file: !1412, line: 95, baseType: !181, size: 32, offset: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1462, file: !1412, line: 96, baseType: !1467, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1462, file: !1412, line: 97, baseType: !1422, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1462, file: !1412, line: 98, baseType: !219, size: 64, offset: 192)
!1470 = !DIGlobalVariableExpression(var: !1471, expr: !DIExpression())
!1471 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_forcetype159", scope: !2, file: !3, line: 22, type: !1472, isLocal: true, isDefinition: true, align: 8)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1416, size: 296, elements: !1473)
!1473 = !{!1474}
!1474 = !DISubrange(count: 37)
!1475 = !DIGlobalVariableExpression(var: !1476, expr: !DIExpression())
!1476 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force160", scope: !2, file: !3, line: 23, type: !1477, isLocal: true, isDefinition: true, align: 8)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1416, size: 392, elements: !1478)
!1478 = !{!1479}
!1479 = !DISubrange(count: 49)
!1480 = !DIGlobalVariableExpression(var: !1481, expr: !DIExpression())
!1481 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_haltpoll_init161", scope: !2, file: !3, line: 143, type: !219, isLocal: true, isDefinition: true)
!1482 = !DIGlobalVariableExpression(var: !1483, expr: !DIExpression())
!1483 = distinct !DIGlobalVariable(name: "__exitcall_haltpoll_exit", scope: !2, file: !3, line: 144, type: !1484, isLocal: true, isDefinition: true)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !1485, line: 117, baseType: !1486)
!1485 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{null}
!1489 = !DIGlobalVariableExpression(var: !1490, expr: !DIExpression())
!1490 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file162", scope: !2, file: !3, line: 145, type: !1491, isLocal: true, isDefinition: true, align: 8)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1416, size: 440, elements: !1492)
!1492 = !{!1493}
!1493 = !DISubrange(count: 55)
!1494 = !DIGlobalVariableExpression(var: !1495, expr: !DIExpression())
!1495 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license163", scope: !2, file: !3, line: 145, type: !1496, isLocal: true, isDefinition: true, align: 8)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1416, size: 232, elements: !1497)
!1497 = !{!1498}
!1498 = !DISubrange(count: 29)
!1499 = !DIGlobalVariableExpression(var: !1500, expr: !DIExpression())
!1500 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author164", scope: !2, file: !3, line: 146, type: !1501, isLocal: true, isDefinition: true, align: 8)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1416, size: 496, elements: !1502)
!1502 = !{!1503}
!1503 = !DISubrange(count: 62)
!1504 = !DIGlobalVariableExpression(var: !1505, expr: !DIExpression())
!1505 = distinct !DIGlobalVariable(name: "force", scope: !2, file: !3, line: 21, type: !642, isLocal: true, isDefinition: true)
!1506 = !DIGlobalVariableExpression(var: !1507, expr: !DIExpression())
!1507 = distinct !DIGlobalVariable(name: "haltpoll_hp_state", scope: !2, file: !3, line: 26, type: !5, isLocal: true, isDefinition: true)
!1508 = !DIGlobalVariableExpression(var: !1509, expr: !DIExpression())
!1509 = distinct !DIGlobalVariable(name: "haltpoll_driver", scope: !2, file: !3, line: 39, type: !1510, isLocal: true, isDefinition: true)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver", file: !1371, line: 122, size: 8704, elements: !1511)
!1511 = !{!1512, !1513, !1514, !1515, !1538, !1539, !1540, !1542}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1510, file: !1371, line: 123, baseType: !1415, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1510, file: !1371, line: 124, baseType: !1418, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "bctimer", scope: !1510, file: !1371, line: 127, baseType: !181, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1510, file: !1371, line: 129, baseType: !1516, size: 8320, offset: 192)
!1516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1517, size: 8320, elements: !1394)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state", file: !1371, line: 48, size: 832, elements: !1518)
!1518 = !{!1519, !1520, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1533, !1537}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1517, file: !1371, line: 49, baseType: !853, size: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1517, file: !1371, line: 50, baseType: !1521, size: 256, offset: 128)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 256, elements: !1283)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency_ns", scope: !1517, file: !1371, line: 52, baseType: !277, size: 64, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency_ns", scope: !1517, file: !1371, line: 53, baseType: !277, size: 64, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1517, file: !1371, line: 54, baseType: !181, size: 32, offset: 512)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency", scope: !1517, file: !1371, line: 55, baseType: !181, size: 32, offset: 544)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "power_usage", scope: !1517, file: !1371, line: 56, baseType: !7, size: 32, offset: 576)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency", scope: !1517, file: !1371, line: 57, baseType: !181, size: 32, offset: 608)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "enter", scope: !1517, file: !1371, line: 59, baseType: !1529, size: 64, offset: 640)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!7, !1369, !1532, !7}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "enter_dead", scope: !1517, file: !1371, line: 63, baseType: !1534, size: 64, offset: 704)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!7, !1369, !7}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "enter_s2idle", scope: !1517, file: !1371, line: 73, baseType: !1529, size: 64, offset: 768)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1510, file: !1371, line: 130, baseType: !7, size: 32, offset: 8512)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "safe_state_index", scope: !1510, file: !1371, line: 131, baseType: !7, size: 32, offset: 8544)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1510, file: !1371, line: 134, baseType: !1541, size: 64, offset: 8576)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !1510, file: !1371, line: 137, baseType: !1415, size: 64, offset: 8640)
!1543 = !DIGlobalVariableExpression(var: !1544, expr: !DIExpression())
!1544 = distinct !DIGlobalVariable(name: "haltpoll_cpuidle_devices", scope: !2, file: !3, line: 25, type: !1369, isLocal: true, isDefinition: true)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1416, size: 184, elements: !1546)
!1546 = !{!1547}
!1547 = !DISubrange(count: 23)
!1548 = !{!"rsp"}
!1549 = !{i32 7, !"Dwarf Version", i32 4}
!1550 = !{i32 2, !"Debug Info Version", i32 3}
!1551 = !{i32 1, !"wchar_size", i32 2}
!1552 = !{i32 1, !"Code Model", i32 2}
!1553 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!1554 = distinct !DISubprogram(name: "haltpoll_exit", scope: !3, file: !3, line: 138, type: !1487, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1555 = !DILocation(line: 140, column: 2, scope: !1554)
!1556 = !DILocation(line: 141, column: 1, scope: !1554)
!1557 = distinct !DISubprogram(name: "haltpoll_uninit", scope: !3, file: !3, line: 87, type: !1487, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1558 = !DILocation(line: 89, column: 6, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 89, column: 6)
!1560 = !DILocation(line: 89, column: 6, scope: !1557)
!1561 = !DILocation(line: 90, column: 22, scope: !1559)
!1562 = !DILocation(line: 90, column: 3, scope: !1559)
!1563 = !DILocation(line: 91, column: 2, scope: !1557)
!1564 = !DILocation(line: 93, column: 14, scope: !1557)
!1565 = !DILocation(line: 93, column: 2, scope: !1557)
!1566 = !DILocation(line: 94, column: 27, scope: !1557)
!1567 = !DILocation(line: 95, column: 1, scope: !1557)
!1568 = distinct !DISubprogram(name: "haltpoll_init", scope: !3, file: !3, line: 102, type: !1569, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!7}
!1571 = !DILocalVariable(name: "ret", scope: !1568, file: !3, line: 104, type: !7)
!1572 = !DILocation(line: 104, column: 6, scope: !1568)
!1573 = !DILocalVariable(name: "drv", scope: !1568, file: !3, line: 105, type: !1532)
!1574 = !DILocation(line: 105, column: 25, scope: !1568)
!1575 = !DILocation(line: 108, column: 6, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 108, column: 6)
!1577 = !DILocation(line: 108, column: 32, scope: !1576)
!1578 = !DILocation(line: 108, column: 6, scope: !1568)
!1579 = !DILocation(line: 109, column: 3, scope: !1576)
!1580 = !DILocation(line: 111, column: 26, scope: !1568)
!1581 = !DILocation(line: 111, column: 2, scope: !1568)
!1582 = !DILocation(line: 113, column: 7, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 113, column: 6)
!1584 = !DILocation(line: 113, column: 28, scope: !1583)
!1585 = !DILocation(line: 113, column: 32, scope: !1583)
!1586 = !DILocation(line: 113, column: 6, scope: !1568)
!1587 = !DILocation(line: 114, column: 3, scope: !1583)
!1588 = !DILocation(line: 116, column: 32, scope: !1568)
!1589 = !DILocation(line: 116, column: 8, scope: !1568)
!1590 = !DILocation(line: 116, column: 6, scope: !1568)
!1591 = !DILocation(line: 117, column: 6, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 117, column: 6)
!1593 = !DILocation(line: 117, column: 10, scope: !1592)
!1594 = !DILocation(line: 117, column: 6, scope: !1568)
!1595 = !DILocation(line: 118, column: 10, scope: !1592)
!1596 = !DILocation(line: 118, column: 3, scope: !1592)
!1597 = !DILocation(line: 120, column: 29, scope: !1568)
!1598 = !DILocation(line: 120, column: 27, scope: !1568)
!1599 = !DILocation(line: 121, column: 6, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 121, column: 6)
!1601 = !DILocation(line: 121, column: 31, scope: !1600)
!1602 = !DILocation(line: 121, column: 6, scope: !1568)
!1603 = !DILocation(line: 122, column: 29, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 121, column: 40)
!1605 = !DILocation(line: 122, column: 3, scope: !1604)
!1606 = !DILocation(line: 123, column: 3, scope: !1604)
!1607 = !DILocation(line: 126, column: 8, scope: !1568)
!1608 = !DILocation(line: 126, column: 6, scope: !1568)
!1609 = !DILocation(line: 128, column: 6, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 128, column: 6)
!1611 = !DILocation(line: 128, column: 10, scope: !1610)
!1612 = !DILocation(line: 128, column: 6, scope: !1568)
!1613 = !DILocation(line: 129, column: 3, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 128, column: 15)
!1615 = !DILocation(line: 130, column: 2, scope: !1614)
!1616 = !DILocation(line: 131, column: 23, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 130, column: 9)
!1618 = !DILocation(line: 131, column: 21, scope: !1617)
!1619 = !DILocation(line: 132, column: 7, scope: !1617)
!1620 = !DILocation(line: 135, column: 9, scope: !1568)
!1621 = !DILocation(line: 135, column: 2, scope: !1568)
!1622 = !DILocation(line: 136, column: 1, scope: !1568)
!1623 = distinct !DISubprogram(name: "cpuhp_remove_state", scope: !6, file: !6, line: 341, type: !1624, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !5}
!1626 = !DILocalVariable(name: "state", arg: 1, scope: !1623, file: !6, line: 341, type: !5)
!1627 = !DILocation(line: 341, column: 56, scope: !1623)
!1628 = !DILocation(line: 343, column: 23, scope: !1623)
!1629 = !DILocation(line: 343, column: 2, scope: !1623)
!1630 = !DILocation(line: 344, column: 1, scope: !1623)
!1631 = distinct !DISubprogram(name: "default_enter_idle", scope: !3, file: !3, line: 28, type: !1530, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1632 = !DILocalVariable(name: "dev", arg: 1, scope: !1631, file: !3, line: 28, type: !1369)
!1633 = !DILocation(line: 28, column: 54, scope: !1631)
!1634 = !DILocalVariable(name: "drv", arg: 2, scope: !1631, file: !3, line: 29, type: !1532)
!1635 = !DILocation(line: 29, column: 33, scope: !1631)
!1636 = !DILocalVariable(name: "index", arg: 3, scope: !1631, file: !3, line: 29, type: !7)
!1637 = !DILocation(line: 29, column: 42, scope: !1631)
!1638 = !DILocation(line: 31, column: 6, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 31, column: 6)
!1640 = !DILocation(line: 31, column: 6, scope: !1631)
!1641 = !DILocation(line: 32, column: 3, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 31, column: 38)
!1643 = !DILocation(line: 32, column: 3, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 32, column: 3)
!1645 = !DILocation(line: 33, column: 10, scope: !1642)
!1646 = !DILocation(line: 33, column: 3, scope: !1642)
!1647 = !DILocation(line: 35, column: 2, scope: !1631)
!1648 = !DILocation(line: 36, column: 9, scope: !1631)
!1649 = !DILocation(line: 36, column: 2, scope: !1631)
!1650 = !DILocation(line: 37, column: 1, scope: !1631)
!1651 = distinct !DISubprogram(name: "current_clr_polling_and_test", scope: !1652, file: !1652, line: 45, type: !1653, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1652 = !DIFile(filename: "./include/linux/sched/idle.h", directory: "/home/lizy2001/genbc/linux")
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!642}
!1655 = !DILocalVariable(name: "pscr_ret__", scope: !1656, file: !1657, line: 15, type: !224)
!1656 = distinct !DILexicalBlock(scope: !1658, file: !1657, line: 15, column: 9)
!1657 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!1658 = distinct !DISubprogram(name: "get_current", scope: !1657, file: !1657, line: 13, type: !1659, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!224}
!1661 = !DILocation(line: 15, column: 9, scope: !1656, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 55, column: 9, scope: !1651)
!1663 = !DILocalVariable(name: "__vpp_verify", scope: !1664, file: !1657, line: 15, type: !1665)
!1664 = distinct !DILexicalBlock(scope: !1656, file: !1657, line: 15, column: 9)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1667 = !DILocation(line: 15, column: 9, scope: !1664, inlinedAt: !1662)
!1668 = !DILocalVariable(name: "pfo_val__", scope: !1669, file: !1657, line: 15, type: !277)
!1669 = distinct !DILexicalBlock(scope: !1656, file: !1657, line: 15, column: 9)
!1670 = !DILocation(line: 15, column: 9, scope: !1669, inlinedAt: !1662)
!1671 = !DILocation(line: 47, column: 2, scope: !1651)
!1672 = !DILocation(line: 53, column: 2, scope: !1651)
!1673 = !{i32 -2143925224}
!1674 = !{i32 -2146811737}
!1675 = !DILocation(line: 55, column: 9, scope: !1651)
!1676 = !DILocation(line: 55, column: 2, scope: !1651)
!1677 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !1678, file: !1678, line: 661, type: !1487, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1678 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1679 = !DILocalVariable(name: "__edi", scope: !1680, file: !1678, line: 663, type: !209)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !1678, line: 663, column: 2)
!1681 = !DILocation(line: 663, column: 2, scope: !1680)
!1682 = !DILocalVariable(name: "__esi", scope: !1680, file: !1678, line: 663, type: !209)
!1683 = !DILocalVariable(name: "__edx", scope: !1680, file: !1678, line: 663, type: !209)
!1684 = !DILocalVariable(name: "__ecx", scope: !1680, file: !1678, line: 663, type: !209)
!1685 = !DILocalVariable(name: "__eax", scope: !1680, file: !1678, line: 663, type: !209)
!1686 = !{i32 -2145749859, i32 -2145749129, i32 -2145748895, i32 -2145748844, i32 -2145748816, i32 -2145748791, i32 -2145749107, i32 -2145749094, i32 -2145748656, i32 -2145748537, i32 -2145749002, i32 -2145748975, i32 -2145748947, i32 -2145748917}
!1687 = !DILocation(line: 664, column: 1, scope: !1677)
!1688 = distinct !DISubprogram(name: "__current_clr_polling", scope: !1652, file: !1652, line: 40, type: !1487, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1689 = !DILocation(line: 15, column: 9, scope: !1656, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 42, column: 2, scope: !1688)
!1691 = !DILocation(line: 15, column: 9, scope: !1664, inlinedAt: !1690)
!1692 = !DILocation(line: 15, column: 9, scope: !1669, inlinedAt: !1690)
!1693 = !DILocation(line: 42, column: 2, scope: !1688)
!1694 = !DILocation(line: 43, column: 1, scope: !1688)
!1695 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !1696, file: !1696, line: 82, type: !1697, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1696 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!7, !204, !7}
!1699 = !DILocalVariable(name: "ti", arg: 1, scope: !1695, file: !1696, line: 82, type: !204)
!1700 = !DILocation(line: 82, column: 59, scope: !1695)
!1701 = !DILocalVariable(name: "flag", arg: 2, scope: !1695, file: !1696, line: 82, type: !7)
!1702 = !DILocation(line: 82, column: 67, scope: !1695)
!1703 = !DILocation(line: 84, column: 18, scope: !1695)
!1704 = !DILocation(line: 84, column: 42, scope: !1695)
!1705 = !DILocation(line: 84, column: 46, scope: !1695)
!1706 = !DILocation(line: 84, column: 9, scope: !1695)
!1707 = !DILocation(line: 84, column: 2, scope: !1695)
!1708 = distinct !DISubprogram(name: "clear_ti_thread_flag", scope: !1696, file: !1696, line: 58, type: !1709, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{null, !204, !7}
!1711 = !DILocalVariable(name: "ti", arg: 1, scope: !1708, file: !1696, line: 58, type: !204)
!1712 = !DILocation(line: 58, column: 61, scope: !1708)
!1713 = !DILocalVariable(name: "flag", arg: 2, scope: !1708, file: !1696, line: 58, type: !7)
!1714 = !DILocation(line: 58, column: 69, scope: !1708)
!1715 = !DILocation(line: 60, column: 12, scope: !1708)
!1716 = !DILocation(line: 60, column: 36, scope: !1708)
!1717 = !DILocation(line: 60, column: 40, scope: !1708)
!1718 = !DILocation(line: 60, column: 2, scope: !1708)
!1719 = !DILocation(line: 61, column: 1, scope: !1708)
!1720 = distinct !DISubprogram(name: "clear_bit", scope: !1721, file: !1721, line: 39, type: !1722, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1721 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !222, !1724}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !209)
!1726 = !DILocalVariable(name: "nr", arg: 1, scope: !1727, file: !1728, line: 72, type: !222)
!1727 = distinct !DISubprogram(name: "arch_clear_bit", scope: !1728, file: !1728, line: 72, type: !1722, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1728 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1729 = !DILocation(line: 72, column: 21, scope: !1727, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 42, column: 2, scope: !1720)
!1731 = !DILocalVariable(name: "addr", arg: 2, scope: !1727, file: !1728, line: 72, type: !1724)
!1732 = !DILocation(line: 72, column: 49, scope: !1727, inlinedAt: !1730)
!1733 = !DILocalVariable(name: "v", arg: 1, scope: !1734, file: !1735, line: 84, type: !1738)
!1734 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1735, file: !1735, line: 84, type: !1736, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1735 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1738, !893}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1740)
!1740 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1741 = !DILocation(line: 84, column: 74, scope: !1734, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 41, column: 2, scope: !1720)
!1743 = !DILocalVariable(name: "size", arg: 2, scope: !1734, file: !1735, line: 84, type: !893)
!1744 = !DILocation(line: 84, column: 84, scope: !1734, inlinedAt: !1742)
!1745 = !DILocalVariable(name: "nr", arg: 1, scope: !1720, file: !1721, line: 39, type: !222)
!1746 = !DILocation(line: 39, column: 35, scope: !1720)
!1747 = !DILocalVariable(name: "addr", arg: 2, scope: !1720, file: !1721, line: 39, type: !1724)
!1748 = !DILocation(line: 39, column: 63, scope: !1720)
!1749 = !DILocation(line: 41, column: 26, scope: !1720)
!1750 = !DILocation(line: 41, column: 33, scope: !1720)
!1751 = !DILocation(line: 41, column: 31, scope: !1720)
!1752 = !DILocation(line: 86, column: 20, scope: !1734, inlinedAt: !1742)
!1753 = !DILocation(line: 86, column: 23, scope: !1734, inlinedAt: !1742)
!1754 = !DILocation(line: 86, column: 2, scope: !1734, inlinedAt: !1742)
!1755 = !DILocation(line: 87, column: 2, scope: !1734, inlinedAt: !1742)
!1756 = !DILocation(line: 42, column: 17, scope: !1720)
!1757 = !DILocation(line: 42, column: 21, scope: !1720)
!1758 = !DILocation(line: 74, column: 27, scope: !1759, inlinedAt: !1730)
!1759 = distinct !DILexicalBlock(scope: !1727, file: !1728, line: 74, column: 6)
!1760 = !DILocation(line: 74, column: 6, scope: !1759, inlinedAt: !1730)
!1761 = !DILocation(line: 74, column: 6, scope: !1727, inlinedAt: !1730)
!1762 = !DILocation(line: 76, column: 6, scope: !1763, inlinedAt: !1730)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !1728, line: 74, column: 32)
!1764 = !DILocation(line: 77, column: 13, scope: !1763, inlinedAt: !1730)
!1765 = !DILocation(line: 77, column: 12, scope: !1763, inlinedAt: !1730)
!1766 = !DILocation(line: 75, column: 3, scope: !1763, inlinedAt: !1730)
!1767 = !{i32 -2147049871}
!1768 = !DILocation(line: 78, column: 2, scope: !1763, inlinedAt: !1730)
!1769 = !DILocation(line: 80, column: 8, scope: !1770, inlinedAt: !1730)
!1770 = distinct !DILexicalBlock(scope: !1759, file: !1728, line: 78, column: 9)
!1771 = !DILocation(line: 80, column: 32, scope: !1770, inlinedAt: !1730)
!1772 = !DILocation(line: 79, column: 3, scope: !1770, inlinedAt: !1730)
!1773 = !{i32 -2147049739}
!1774 = !DILocation(line: 43, column: 1, scope: !1720)
!1775 = distinct !DISubprogram(name: "kasan_check_write", scope: !1776, file: !1776, line: 38, type: !1777, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1776 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!642, !1738, !181}
!1779 = !DILocalVariable(name: "p", arg: 1, scope: !1775, file: !1776, line: 38, type: !1738)
!1780 = !DILocation(line: 38, column: 59, scope: !1775)
!1781 = !DILocalVariable(name: "size", arg: 2, scope: !1775, file: !1776, line: 38, type: !181)
!1782 = !DILocation(line: 38, column: 75, scope: !1775)
!1783 = !DILocation(line: 40, column: 2, scope: !1775)
!1784 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1785, file: !1785, line: 178, type: !1786, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1785 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !1738, !893, !7}
!1788 = !DILocalVariable(name: "ptr", arg: 1, scope: !1784, file: !1785, line: 178, type: !1738)
!1789 = !DILocation(line: 178, column: 60, scope: !1784)
!1790 = !DILocalVariable(name: "size", arg: 2, scope: !1784, file: !1785, line: 178, type: !893)
!1791 = !DILocation(line: 178, column: 72, scope: !1784)
!1792 = !DILocalVariable(name: "type", arg: 3, scope: !1784, file: !1785, line: 179, type: !7)
!1793 = !DILocation(line: 179, column: 15, scope: !1784)
!1794 = !DILocation(line: 179, column: 23, scope: !1784)
!1795 = distinct !DISubprogram(name: "test_bit", scope: !1796, file: !1796, line: 132, type: !1797, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1796 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!642, !222, !1799}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1725)
!1801 = !DILocalVariable(name: "nr", arg: 1, scope: !1802, file: !1728, line: 210, type: !222)
!1802 = distinct !DISubprogram(name: "variable_test_bit", scope: !1728, file: !1728, line: 210, type: !1797, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1803 = !DILocation(line: 210, column: 52, scope: !1802, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 135, column: 9, scope: !1795)
!1805 = !DILocalVariable(name: "addr", arg: 2, scope: !1802, file: !1728, line: 210, type: !1799)
!1806 = !DILocation(line: 210, column: 86, scope: !1802, inlinedAt: !1804)
!1807 = !DILocalVariable(name: "oldbit", scope: !1802, file: !1728, line: 212, type: !642)
!1808 = !DILocation(line: 212, column: 7, scope: !1802, inlinedAt: !1804)
!1809 = !DILocalVariable(name: "nr", arg: 1, scope: !1810, file: !1728, line: 204, type: !222)
!1810 = distinct !DISubprogram(name: "constant_test_bit", scope: !1728, file: !1728, line: 204, type: !1797, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1811 = !DILocation(line: 204, column: 52, scope: !1810, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 135, column: 9, scope: !1795)
!1813 = !DILocalVariable(name: "addr", arg: 2, scope: !1810, file: !1728, line: 204, type: !1799)
!1814 = !DILocation(line: 204, column: 86, scope: !1810, inlinedAt: !1812)
!1815 = !DILocalVariable(name: "v", arg: 1, scope: !1816, file: !1735, line: 69, type: !1738)
!1816 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1735, file: !1735, line: 69, type: !1736, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1817 = !DILocation(line: 69, column: 73, scope: !1816, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 134, column: 2, scope: !1795)
!1819 = !DILocalVariable(name: "size", arg: 2, scope: !1816, file: !1735, line: 69, type: !893)
!1820 = !DILocation(line: 69, column: 83, scope: !1816, inlinedAt: !1818)
!1821 = !DILocalVariable(name: "nr", arg: 1, scope: !1795, file: !1796, line: 132, type: !222)
!1822 = !DILocation(line: 132, column: 34, scope: !1795)
!1823 = !DILocalVariable(name: "addr", arg: 2, scope: !1795, file: !1796, line: 132, type: !1799)
!1824 = !DILocation(line: 132, column: 68, scope: !1795)
!1825 = !DILocation(line: 134, column: 25, scope: !1795)
!1826 = !DILocation(line: 134, column: 32, scope: !1795)
!1827 = !DILocation(line: 134, column: 30, scope: !1795)
!1828 = !DILocation(line: 71, column: 19, scope: !1816, inlinedAt: !1818)
!1829 = !DILocation(line: 71, column: 22, scope: !1816, inlinedAt: !1818)
!1830 = !DILocation(line: 71, column: 2, scope: !1816, inlinedAt: !1818)
!1831 = !DILocation(line: 72, column: 2, scope: !1816, inlinedAt: !1818)
!1832 = !DILocation(line: 135, column: 9, scope: !1795)
!1833 = !DILocation(line: 206, column: 19, scope: !1810, inlinedAt: !1812)
!1834 = !DILocation(line: 206, column: 22, scope: !1810, inlinedAt: !1812)
!1835 = !DILocation(line: 206, column: 15, scope: !1810, inlinedAt: !1812)
!1836 = !DILocation(line: 207, column: 4, scope: !1810, inlinedAt: !1812)
!1837 = !DILocation(line: 207, column: 9, scope: !1810, inlinedAt: !1812)
!1838 = !DILocation(line: 207, column: 12, scope: !1810, inlinedAt: !1812)
!1839 = !DILocation(line: 206, column: 44, scope: !1810, inlinedAt: !1812)
!1840 = !DILocation(line: 207, column: 37, scope: !1810, inlinedAt: !1812)
!1841 = !DILocation(line: 217, column: 33, scope: !1802, inlinedAt: !1804)
!1842 = !DILocation(line: 217, column: 46, scope: !1802, inlinedAt: !1804)
!1843 = !DILocation(line: 214, column: 2, scope: !1802, inlinedAt: !1804)
!1844 = !{i32 -2147041577, i32 -2147041517}
!1845 = !DILocation(line: 219, column: 9, scope: !1802, inlinedAt: !1804)
!1846 = !DILocation(line: 135, column: 2, scope: !1795)
!1847 = distinct !DISubprogram(name: "kasan_check_read", scope: !1776, file: !1776, line: 34, type: !1777, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1848 = !DILocalVariable(name: "p", arg: 1, scope: !1847, file: !1776, line: 34, type: !1738)
!1849 = !DILocation(line: 34, column: 58, scope: !1847)
!1850 = !DILocalVariable(name: "size", arg: 2, scope: !1847, file: !1776, line: 34, type: !181)
!1851 = !DILocation(line: 34, column: 74, scope: !1847)
!1852 = !DILocation(line: 36, column: 2, scope: !1847)
!1853 = distinct !DISubprogram(name: "haltpoll_want", scope: !3, file: !3, line: 97, type: !1653, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1854 = !DILocation(line: 99, column: 9, scope: !1853)
!1855 = !DILocation(line: 99, column: 47, scope: !1853)
!1856 = !DILocation(line: 99, column: 50, scope: !1853)
!1857 = !DILocation(line: 99, column: 2, scope: !1853)
!1858 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !6, file: !6, line: 218, type: !1859, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!7, !5, !1415, !1861, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!7, !181}
!1864 = !DILocalVariable(name: "state", arg: 1, scope: !1858, file: !6, line: 218, type: !5)
!1865 = !DILocation(line: 218, column: 54, scope: !1858)
!1866 = !DILocalVariable(name: "name", arg: 2, scope: !1858, file: !6, line: 219, type: !1415)
!1867 = !DILocation(line: 219, column: 21, scope: !1858)
!1868 = !DILocalVariable(name: "startup", arg: 3, scope: !1858, file: !6, line: 220, type: !1861)
!1869 = !DILocation(line: 220, column: 15, scope: !1858)
!1870 = !DILocalVariable(name: "teardown", arg: 4, scope: !1858, file: !6, line: 221, type: !1861)
!1871 = !DILocation(line: 221, column: 15, scope: !1858)
!1872 = !DILocation(line: 223, column: 29, scope: !1858)
!1873 = !DILocation(line: 223, column: 36, scope: !1858)
!1874 = !DILocation(line: 223, column: 48, scope: !1858)
!1875 = !DILocation(line: 223, column: 57, scope: !1858)
!1876 = !DILocation(line: 223, column: 9, scope: !1858)
!1877 = !DILocation(line: 223, column: 2, scope: !1858)
!1878 = distinct !DISubprogram(name: "haltpoll_cpu_online", scope: !3, file: !3, line: 57, type: !1862, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1879 = !DILocalVariable(name: "cpu", arg: 1, scope: !1878, file: !3, line: 57, type: !181)
!1880 = !DILocation(line: 57, column: 45, scope: !1878)
!1881 = !DILocalVariable(name: "dev", scope: !1878, file: !3, line: 59, type: !1369)
!1882 = !DILocation(line: 59, column: 25, scope: !1878)
!1883 = !DILocation(line: 61, column: 8, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 61, column: 8)
!1885 = !DILocation(line: 61, column: 8, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 61, column: 8)
!1887 = !DILocalVariable(name: "__vpp_verify", scope: !1888, file: !3, line: 61, type: !1665)
!1888 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 61, column: 8)
!1889 = !DILocation(line: 61, column: 8, scope: !1888)
!1890 = !DILocation(line: 61, column: 6, scope: !1878)
!1891 = !DILocation(line: 62, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 62, column: 6)
!1893 = !DILocation(line: 62, column: 12, scope: !1892)
!1894 = !DILocation(line: 62, column: 6, scope: !1878)
!1895 = !DILocation(line: 63, column: 14, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 62, column: 24)
!1897 = !DILocation(line: 63, column: 3, scope: !1896)
!1898 = !DILocation(line: 63, column: 8, scope: !1896)
!1899 = !DILocation(line: 63, column: 12, scope: !1896)
!1900 = !DILocation(line: 64, column: 31, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 64, column: 7)
!1902 = !DILocation(line: 64, column: 7, scope: !1901)
!1903 = !DILocation(line: 64, column: 7, scope: !1896)
!1904 = !DILocation(line: 65, column: 4, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 64, column: 37)
!1906 = !DILocation(line: 66, column: 4, scope: !1905)
!1907 = !DILocation(line: 68, column: 24, scope: !1896)
!1908 = !DILocation(line: 68, column: 3, scope: !1896)
!1909 = !DILocation(line: 69, column: 2, scope: !1896)
!1910 = !DILocation(line: 71, column: 2, scope: !1878)
!1911 = !DILocation(line: 72, column: 1, scope: !1878)
!1912 = distinct !DISubprogram(name: "haltpoll_cpu_offline", scope: !3, file: !3, line: 74, type: !1862, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1913 = !DILocalVariable(name: "cpu", arg: 1, scope: !1912, file: !3, line: 74, type: !181)
!1914 = !DILocation(line: 74, column: 46, scope: !1912)
!1915 = !DILocalVariable(name: "dev", scope: !1912, file: !3, line: 76, type: !1369)
!1916 = !DILocation(line: 76, column: 25, scope: !1912)
!1917 = !DILocation(line: 78, column: 8, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 78, column: 8)
!1919 = !DILocation(line: 78, column: 8, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 78, column: 8)
!1921 = !DILocalVariable(name: "__vpp_verify", scope: !1922, file: !3, line: 78, type: !1665)
!1922 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 78, column: 8)
!1923 = !DILocation(line: 78, column: 8, scope: !1922)
!1924 = !DILocation(line: 78, column: 6, scope: !1912)
!1925 = !DILocation(line: 79, column: 6, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 79, column: 6)
!1927 = !DILocation(line: 79, column: 11, scope: !1926)
!1928 = !DILocation(line: 79, column: 6, scope: !1912)
!1929 = !DILocation(line: 80, column: 25, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 79, column: 23)
!1931 = !DILocation(line: 80, column: 3, scope: !1930)
!1932 = !DILocation(line: 81, column: 29, scope: !1930)
!1933 = !DILocation(line: 81, column: 3, scope: !1930)
!1934 = !DILocation(line: 82, column: 2, scope: !1930)
!1935 = !DILocation(line: 84, column: 2, scope: !1912)
!1936 = distinct !DISubprogram(name: "kvm_para_has_hint", scope: !1937, file: !1937, line: 13, type: !1938, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!1937 = !DIFile(filename: "./include/linux/kvm_para.h", directory: "/home/lizy2001/genbc/linux")
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!642, !181}
!1940 = !DILocalVariable(name: "feature", arg: 1, scope: !1936, file: !1937, line: 13, type: !181)
!1941 = !DILocation(line: 13, column: 51, scope: !1936)
!1942 = !DILocation(line: 15, column: 12, scope: !1936)
!1943 = !DILocation(line: 15, column: 44, scope: !1936)
!1944 = !DILocation(line: 15, column: 41, scope: !1936)
!1945 = !DILocation(line: 15, column: 34, scope: !1936)
!1946 = !DILocation(line: 15, column: 10, scope: !1936)
!1947 = !DILocation(line: 15, column: 9, scope: !1936)
!1948 = !DILocation(line: 15, column: 2, scope: !1936)
