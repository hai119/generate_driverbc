; ModuleID = '../bcout/drivers/mmc/core/sdio_io.llvm.bc'
source_filename = "drivers/mmc/core/sdio_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.sdio_func = type { %struct.mmc_card*, %struct.device, {}*, i32, i8, i16, i16, i32, i32, i32, i32, i8*, i8, i8, i32, i8**, %struct.sdio_func_tuple* }
%struct.mmc_card = type { %struct.mmc_host*, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x %struct.sdio_func*], %struct.sdio_func*, i8, i8, i32, i8**, %struct.sdio_func_tuple*, i32, i32, i32, %struct.dentry*, [7 x %struct.mmc_part], i32, i32, %struct.workqueue_struct* }
%struct.mmc_host = type { %struct.device*, %struct.device, i32, %struct.mmc_host_ops*, %struct.mmc_pwrseq*, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.wakeup_source*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, %struct.mmc_card*, %struct.wait_queue_head, %struct.mmc_ctx*, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, %struct.mmc_bus_ops*, i32, i32, %struct.task_struct*, %struct.delayed_work, i8, %struct.atomic_t, i32, %struct.led_trigger*, %struct.mmc_supply, %struct.dentry*, %struct.mmc_request*, i32, i32, i32, i32, %struct.mmc_cqe_ops*, i8*, i32, i8, i8, i8, [41 x i8], [0 x i64] }
%struct.mmc_host_ops = type { void (%struct.mmc_host*, %struct.mmc_request*, i32)*, void (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*, %struct.mmc_request*)*, i32 (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, void (%struct.mmc_host*, i32)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*, %struct.mmc_card*)*, i32 (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_card*, i32, i32, i32, i32*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_card*, i32, i32)* }
%struct.mmc_pwrseq = type opaque
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.wake_irq = type opaque
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { %struct.task_struct* }
%struct.mmc_slot = type { i32, i8, i8* }
%struct.mmc_bus_ops = type { void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.17, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.36, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
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
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.5 }
%struct.anon.5 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.9 }
%struct.anon.9 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.16, i32, [12 x i8] }
%union.anon.16 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.17 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.18, %union.anon.31, %struct.atomic_t, [8 x i8] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.31 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.32, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.35 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { i64, i64 }
%union.anon.35 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.led_trigger = type opaque
%struct.mmc_supply = type { %struct.regulator*, %struct.regulator* }
%struct.regulator = type opaque
%struct.mmc_request = type { %struct.mmc_command*, %struct.mmc_command*, %struct.mmc_data*, %struct.mmc_command*, %struct.completion, %struct.completion, void (%struct.mmc_request*)*, void (%struct.mmc_request*)*, %struct.mmc_host*, i8, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.mmc_command*, %struct.mmc_request*, i32, i32, %struct.scatterlist*, i32 }
%struct.scatterlist = type opaque
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, %struct.mmc_data*, %struct.mmc_request* }
%struct.mmc_cqe_ops = type { i32 (%struct.mmc_host*, %struct.mmc_card*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i1 (%struct.mmc_host*, %struct.mmc_request*, i8*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*)* }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.dentry = type opaque
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.workqueue_struct = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.37 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type opaque
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.sdio_func_tuple = type { %struct.sdio_func_tuple*, i8, i8, [0 x i8] }

@.str = private unnamed_addr constant [27 x i8] c"drivers/mmc/core/sdio_io.c\00", align 1
@jiffies = external dso_local global i64, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sdio_claim_host(%struct.sdio_func* %func) #0 !dbg !70 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !2445, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2447, metadata !DIExpression()), !dbg !2450
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2450
  %tobool = icmp ne %struct.sdio_func* %0, null, !dbg !2450
  %lnot = xor i1 %tobool, true, !dbg !2450
  %lnot1 = xor i1 %lnot, true, !dbg !2450
  %lnot2 = xor i1 %lnot1, true, !dbg !2450
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2450
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2450
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !2451
  %tobool3 = icmp ne i32 %1, 0, !dbg !2451
  %lnot4 = xor i1 %tobool3, true, !dbg !2451
  %lnot6 = xor i1 %lnot4, true, !dbg !2451
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2451
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2451
  %tobool8 = icmp ne i64 %conv, 0, !dbg !2451
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2450

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2451

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !2453

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !2455

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !2453

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 29, i32 2305, i64 12) #4, !dbg !2457, !srcloc !2459
  br label %do.end11, !dbg !2457

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #4, !dbg !2460, !srcloc !2462
  br label %do.body12, !dbg !2453

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !2463

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !2453

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !2453

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !2450
  %tobool15 = icmp ne i32 %2, 0, !dbg !2450
  %lnot16 = xor i1 %tobool15, true, !dbg !2450
  %lnot18 = xor i1 %lnot16, true, !dbg !2450
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !2450
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !2450
  store i64 %conv20, i64* %tmp, align 8, !dbg !2451
  %3 = load i64, i64* %tmp, align 8, !dbg !2450
  %tobool21 = icmp ne i64 %3, 0, !dbg !2465
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !2466

if.then22:                                        ; preds = %if.end
  br label %return, !dbg !2467

if.end23:                                         ; preds = %if.end
  %4 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2468
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %4, i32 0, i32 0, !dbg !2469
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2469
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 0, !dbg !2470
  %6 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !2470
  call void @mmc_claim_host(%struct.mmc_host* %6) #5, !dbg !2471
  br label %return, !dbg !2472

return:                                           ; preds = %if.end23, %if.then22
  ret void, !dbg !2472
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mmc_claim_host(%struct.mmc_host* %host) #0 !dbg !2473 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !2474, metadata !DIExpression()), !dbg !2475
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2476
  %call = call i32 @__mmc_claim_host(%struct.mmc_host* %0, %struct.mmc_ctx* null, %struct.atomic_t* null) #5, !dbg !2477
  ret void, !dbg !2478
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sdio_release_host(%struct.sdio_func* %func) #0 !dbg !2479 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !2480, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2482, metadata !DIExpression()), !dbg !2485
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2485
  %tobool = icmp ne %struct.sdio_func* %0, null, !dbg !2485
  %lnot = xor i1 %tobool, true, !dbg !2485
  %lnot1 = xor i1 %lnot, true, !dbg !2485
  %lnot2 = xor i1 %lnot1, true, !dbg !2485
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2485
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2485
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !2486
  %tobool3 = icmp ne i32 %1, 0, !dbg !2486
  %lnot4 = xor i1 %tobool3, true, !dbg !2486
  %lnot6 = xor i1 %lnot4, true, !dbg !2486
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2486
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2486
  %tobool8 = icmp ne i64 %conv, 0, !dbg !2486
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2485

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2486

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !2488

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !2490

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !2488

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 45, i32 2305, i64 12) #4, !dbg !2492, !srcloc !2494
  br label %do.end11, !dbg !2492

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 157) #4, !dbg !2495, !srcloc !2497
  br label %do.body12, !dbg !2488

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !2498

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !2488

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !2488

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !2485
  %tobool15 = icmp ne i32 %2, 0, !dbg !2485
  %lnot16 = xor i1 %tobool15, true, !dbg !2485
  %lnot18 = xor i1 %lnot16, true, !dbg !2485
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !2485
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !2485
  store i64 %conv20, i64* %tmp, align 8, !dbg !2486
  %3 = load i64, i64* %tmp, align 8, !dbg !2485
  %tobool21 = icmp ne i64 %3, 0, !dbg !2500
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !2501

if.then22:                                        ; preds = %if.end
  br label %return, !dbg !2502

if.end23:                                         ; preds = %if.end
  %4 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2503
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %4, i32 0, i32 0, !dbg !2504
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2504
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 0, !dbg !2505
  %6 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !2505
  call void @mmc_release_host(%struct.mmc_host* %6) #5, !dbg !2506
  br label %return, !dbg !2507

return:                                           ; preds = %if.end23, %if.then22
  ret void, !dbg !2507
}

; Function Attrs: noredzone
declare dso_local void @mmc_release_host(%struct.mmc_host*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sdio_enable_func(%struct.sdio_func* %func) #0 !dbg !2508 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !2511, metadata !DIExpression()), !dbg !2517
  %retval = alloca i32, align 4
  %func.addr = alloca %struct.sdio_func*, align 8
  %ret = alloca i32, align 4
  %reg = alloca i8, align 1
  %timeout = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !2519, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2521, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !2523, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !2525, metadata !DIExpression()), !dbg !2526
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2527
  %tobool = icmp ne %struct.sdio_func* %0, null, !dbg !2527
  br i1 %tobool, label %if.end, label %if.then, !dbg !2529

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2530
  br label %return, !dbg !2530

if.end:                                           ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !2531
  %1 = load i32, i32* %tmp, align 4, !dbg !2534
  %2 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2535
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %2, i32 0, i32 0, !dbg !2536
  %3 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2536
  %call = call i32 @mmc_io_rw_direct(%struct.mmc_card* %3, i32 0, i32 0, i32 2, i8 zeroext 0, i8* %reg) #5, !dbg !2537
  store i32 %call, i32* %ret, align 4, !dbg !2538
  %4 = load i32, i32* %ret, align 4, !dbg !2539
  %tobool1 = icmp ne i32 %4, 0, !dbg !2539
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2541

if.then2:                                         ; preds = %if.end
  br label %err, !dbg !2542

if.end3:                                          ; preds = %if.end
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2543
  %num = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 3, !dbg !2544
  %6 = load i32, i32* %num, align 8, !dbg !2544
  %shl = shl i32 1, %6, !dbg !2545
  %7 = load i8, i8* %reg, align 1, !dbg !2546
  %conv = zext i8 %7 to i32, !dbg !2546
  %or = or i32 %conv, %shl, !dbg !2546
  %conv4 = trunc i32 %or to i8, !dbg !2546
  store i8 %conv4, i8* %reg, align 1, !dbg !2546
  %8 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2547
  %card5 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %8, i32 0, i32 0, !dbg !2548
  %9 = load %struct.mmc_card*, %struct.mmc_card** %card5, align 8, !dbg !2548
  %10 = load i8, i8* %reg, align 1, !dbg !2549
  %call6 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %9, i32 1, i32 0, i32 2, i8 zeroext %10, i8* null) #5, !dbg !2550
  store i32 %call6, i32* %ret, align 4, !dbg !2551
  %11 = load i32, i32* %ret, align 4, !dbg !2552
  %tobool7 = icmp ne i32 %11, 0, !dbg !2552
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2554

if.then8:                                         ; preds = %if.end3
  br label %err, !dbg !2555

if.end9:                                          ; preds = %if.end3
  %12 = load volatile i64, i64* @jiffies, align 8, !dbg !2556
  %13 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2557
  %enable_timeout = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %13, i32 0, i32 9, !dbg !2558
  %14 = load i32, i32* %enable_timeout, align 4, !dbg !2558
  store i32 %14, i32* %m.addr.i, align 4
  %15 = load i32, i32* %m.addr.i, align 4, !dbg !2559
  %16 = call i1 @llvm.is.constant.i32(i32 %15) #4, !dbg !2561
  br i1 %16, label %if.then.i, label %if.else.i, !dbg !2562

if.then.i:                                        ; preds = %if.end9
  %17 = load i32, i32* %m.addr.i, align 4, !dbg !2563
  %cmp.i = icmp slt i32 %17, 0, !dbg !2566
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2567

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !2568
  br label %msecs_to_jiffies.exit, !dbg !2568

if.end.i:                                         ; preds = %if.then.i
  %18 = load i32, i32* %m.addr.i, align 4, !dbg !2569
  %call.i = call i64 @_msecs_to_jiffies(i32 %18) #6, !dbg !2570
  store i64 %call.i, i64* %retval.i, align 8, !dbg !2571
  br label %msecs_to_jiffies.exit, !dbg !2571

if.else.i:                                        ; preds = %if.end9
  %19 = load i32, i32* %m.addr.i, align 4, !dbg !2572
  %call2.i = call i64 @__msecs_to_jiffies(i32 %19) #6, !dbg !2574
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !2575
  br label %msecs_to_jiffies.exit, !dbg !2575

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %20 = load i64, i64* %retval.i, align 8, !dbg !2576
  %add = add i64 %12, %20, !dbg !2577
  store i64 %add, i64* %timeout, align 8, !dbg !2578
  br label %while.body, !dbg !2579

while.body:                                       ; preds = %msecs_to_jiffies.exit, %if.end24
  %21 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2580
  %card11 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %21, i32 0, i32 0, !dbg !2582
  %22 = load %struct.mmc_card*, %struct.mmc_card** %card11, align 8, !dbg !2582
  %call12 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %22, i32 0, i32 0, i32 3, i8 zeroext 0, i8* %reg) #5, !dbg !2583
  store i32 %call12, i32* %ret, align 4, !dbg !2584
  %23 = load i32, i32* %ret, align 4, !dbg !2585
  %tobool13 = icmp ne i32 %23, 0, !dbg !2585
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2587

if.then14:                                        ; preds = %while.body
  br label %err, !dbg !2588

if.end15:                                         ; preds = %while.body
  %24 = load i8, i8* %reg, align 1, !dbg !2589
  %conv16 = zext i8 %24 to i32, !dbg !2589
  %25 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2591
  %num17 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %25, i32 0, i32 3, !dbg !2592
  %26 = load i32, i32* %num17, align 8, !dbg !2592
  %shl18 = shl i32 1, %26, !dbg !2593
  %and = and i32 %conv16, %shl18, !dbg !2594
  %tobool19 = icmp ne i32 %and, 0, !dbg !2594
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !2595

if.then20:                                        ; preds = %if.end15
  br label %while.end, !dbg !2596

if.end21:                                         ; preds = %if.end15
  store i32 -62, i32* %ret, align 4, !dbg !2597
  %27 = load i64, i64* %timeout, align 8, !dbg !2598
  %28 = load volatile i64, i64* @jiffies, align 8, !dbg !2598
  %sub = sub i64 %27, %28, !dbg !2598
  %cmp = icmp slt i64 %sub, 0, !dbg !2598
  br i1 %cmp, label %if.then23, label %if.end24, !dbg !2600

if.then23:                                        ; preds = %if.end21
  br label %err, !dbg !2601

if.end24:                                         ; preds = %if.end21
  br label %while.body, !dbg !2579, !llvm.loop !2602

while.end:                                        ; preds = %if.then20
  store i32 0, i32* %tmp25, align 4, !dbg !2604
  %29 = load i32, i32* %tmp25, align 4, !dbg !2607
  store i32 0, i32* %retval, align 4, !dbg !2608
  br label %return, !dbg !2608

err:                                              ; preds = %if.then23, %if.then14, %if.then8, %if.then2
  call void @llvm.dbg.label(metadata !2609), !dbg !2610
  store i32 0, i32* %tmp26, align 4, !dbg !2611
  %30 = load i32, i32* %tmp26, align 4, !dbg !2614
  %31 = load i32, i32* %ret, align 4, !dbg !2615
  store i32 %31, i32* %retval, align 4, !dbg !2616
  br label %return, !dbg !2616

return:                                           ; preds = %err, %while.end, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !2617
  ret i32 %32, !dbg !2617
}

; Function Attrs: noredzone
declare dso_local i32 @mmc_io_rw_direct(%struct.mmc_card*, i32, i32, i32, i8 zeroext, i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sdio_disable_func(%struct.sdio_func* %func) #0 !dbg !2618 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca %struct.sdio_func*, align 8
  %ret = alloca i32, align 4
  %reg = alloca i8, align 1
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2621, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !2623, metadata !DIExpression()), !dbg !2624
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2625
  %tobool = icmp ne %struct.sdio_func* %0, null, !dbg !2625
  br i1 %tobool, label %if.end, label %if.then, !dbg !2627

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2628
  br label %return, !dbg !2628

if.end:                                           ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !2629
  %1 = load i32, i32* %tmp, align 4, !dbg !2632
  %2 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2633
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %2, i32 0, i32 0, !dbg !2634
  %3 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2634
  %call = call i32 @mmc_io_rw_direct(%struct.mmc_card* %3, i32 0, i32 0, i32 2, i8 zeroext 0, i8* %reg) #5, !dbg !2635
  store i32 %call, i32* %ret, align 4, !dbg !2636
  %4 = load i32, i32* %ret, align 4, !dbg !2637
  %tobool1 = icmp ne i32 %4, 0, !dbg !2637
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2639

if.then2:                                         ; preds = %if.end
  br label %err, !dbg !2640

if.end3:                                          ; preds = %if.end
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2641
  %num = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 3, !dbg !2642
  %6 = load i32, i32* %num, align 8, !dbg !2642
  %shl = shl i32 1, %6, !dbg !2643
  %neg = xor i32 %shl, -1, !dbg !2644
  %7 = load i8, i8* %reg, align 1, !dbg !2645
  %conv = zext i8 %7 to i32, !dbg !2645
  %and = and i32 %conv, %neg, !dbg !2645
  %conv4 = trunc i32 %and to i8, !dbg !2645
  store i8 %conv4, i8* %reg, align 1, !dbg !2645
  %8 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2646
  %card5 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %8, i32 0, i32 0, !dbg !2647
  %9 = load %struct.mmc_card*, %struct.mmc_card** %card5, align 8, !dbg !2647
  %10 = load i8, i8* %reg, align 1, !dbg !2648
  %call6 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %9, i32 1, i32 0, i32 2, i8 zeroext %10, i8* null) #5, !dbg !2649
  store i32 %call6, i32* %ret, align 4, !dbg !2650
  %11 = load i32, i32* %ret, align 4, !dbg !2651
  %tobool7 = icmp ne i32 %11, 0, !dbg !2651
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2653

if.then8:                                         ; preds = %if.end3
  br label %err, !dbg !2654

if.end9:                                          ; preds = %if.end3
  store i32 0, i32* %tmp10, align 4, !dbg !2655
  %12 = load i32, i32* %tmp10, align 4, !dbg !2658
  store i32 0, i32* %retval, align 4, !dbg !2659
  br label %return, !dbg !2659

err:                                              ; preds = %if.then8, %if.then2
  call void @llvm.dbg.label(metadata !2660), !dbg !2661
  store i32 0, i32* %tmp11, align 4, !dbg !2662
  %13 = load i32, i32* %tmp11, align 4, !dbg !2665
  %14 = load i32, i32* %ret, align 4, !dbg !2666
  store i32 %14, i32* %retval, align 4, !dbg !2667
  br label %return, !dbg !2667

return:                                           ; preds = %err, %if.end9, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !2668
  ret i32 %15, !dbg !2668
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sdio_set_block_size(%struct.sdio_func* %func, i32 %blksz) #0 !dbg !2669 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca %struct.sdio_func*, align 8
  %blksz.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %__UNIQUE_ID___x158 = alloca i32, align 4
  %__UNIQUE_ID___y159 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x160 = alloca i32, align 4
  %__UNIQUE_ID___y161 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !2672, metadata !DIExpression()), !dbg !2673
  store i32 %blksz, i32* %blksz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %blksz.addr, metadata !2674, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2676, metadata !DIExpression()), !dbg !2677
  %0 = load i32, i32* %blksz.addr, align 4, !dbg !2678
  %1 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2680
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %1, i32 0, i32 0, !dbg !2681
  %2 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2681
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %2, i32 0, i32 0, !dbg !2682
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !2682
  %max_blk_size = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %3, i32 0, i32 25, !dbg !2683
  %4 = load i32, i32* %max_blk_size, align 64, !dbg !2683
  %cmp = icmp ugt i32 %0, %4, !dbg !2684
  br i1 %cmp, label %if.then, label %if.end, !dbg !2685

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2686
  br label %return, !dbg !2686

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %blksz.addr, align 4, !dbg !2687
  %cmp1 = icmp eq i32 %5, 0, !dbg !2689
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !2690

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x158, metadata !2691, metadata !DIExpression()), !dbg !2694
  %6 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2694
  %max_blksize = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 7, !dbg !2694
  %7 = load i32, i32* %max_blksize, align 4, !dbg !2694
  store i32 %7, i32* %__UNIQUE_ID___x158, align 4, !dbg !2694
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y159, metadata !2695, metadata !DIExpression()), !dbg !2694
  %8 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2694
  %card3 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %8, i32 0, i32 0, !dbg !2694
  %9 = load %struct.mmc_card*, %struct.mmc_card** %card3, align 8, !dbg !2694
  %host4 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 0, !dbg !2694
  %10 = load %struct.mmc_host*, %struct.mmc_host** %host4, align 8, !dbg !2694
  %max_blk_size5 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 25, !dbg !2694
  %11 = load i32, i32* %max_blk_size5, align 64, !dbg !2694
  store i32 %11, i32* %__UNIQUE_ID___y159, align 4, !dbg !2694
  %12 = load i32, i32* %__UNIQUE_ID___x158, align 4, !dbg !2694
  %13 = load i32, i32* %__UNIQUE_ID___y159, align 4, !dbg !2694
  %cmp6 = icmp ult i32 %12, %13, !dbg !2694
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !2694

cond.true:                                        ; preds = %if.then2
  %14 = load i32, i32* %__UNIQUE_ID___x158, align 4, !dbg !2694
  br label %cond.end, !dbg !2694

cond.false:                                       ; preds = %if.then2
  %15 = load i32, i32* %__UNIQUE_ID___y159, align 4, !dbg !2694
  br label %cond.end, !dbg !2694

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !2694
  store i32 %cond, i32* %tmp, align 4, !dbg !2694
  %16 = load i32, i32* %tmp, align 4, !dbg !2694
  store i32 %16, i32* %blksz.addr, align 4, !dbg !2696
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x160, metadata !2697, metadata !DIExpression()), !dbg !2699
  %17 = load i32, i32* %blksz.addr, align 4, !dbg !2699
  store i32 %17, i32* %__UNIQUE_ID___x160, align 4, !dbg !2699
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y161, metadata !2700, metadata !DIExpression()), !dbg !2699
  store i32 512, i32* %__UNIQUE_ID___y161, align 4, !dbg !2699
  %18 = load i32, i32* %__UNIQUE_ID___x160, align 4, !dbg !2699
  %19 = load i32, i32* %__UNIQUE_ID___y161, align 4, !dbg !2699
  %cmp8 = icmp ult i32 %18, %19, !dbg !2699
  br i1 %cmp8, label %cond.true9, label %cond.false10, !dbg !2699

cond.true9:                                       ; preds = %cond.end
  %20 = load i32, i32* %__UNIQUE_ID___x160, align 4, !dbg !2699
  br label %cond.end11, !dbg !2699

cond.false10:                                     ; preds = %cond.end
  %21 = load i32, i32* %__UNIQUE_ID___y161, align 4, !dbg !2699
  br label %cond.end11, !dbg !2699

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i32 [ %20, %cond.true9 ], [ %21, %cond.false10 ], !dbg !2699
  store i32 %cond12, i32* %tmp7, align 4, !dbg !2699
  %22 = load i32, i32* %tmp7, align 4, !dbg !2699
  store i32 %22, i32* %blksz.addr, align 4, !dbg !2701
  br label %if.end13, !dbg !2702

if.end13:                                         ; preds = %cond.end11, %if.end
  %23 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2703
  %card14 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %23, i32 0, i32 0, !dbg !2704
  %24 = load %struct.mmc_card*, %struct.mmc_card** %card14, align 8, !dbg !2704
  %25 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2705
  %num = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %25, i32 0, i32 3, !dbg !2705
  %26 = load i32, i32* %num, align 8, !dbg !2705
  %mul = mul i32 %26, 256, !dbg !2705
  %add = add i32 %mul, 16, !dbg !2706
  %27 = load i32, i32* %blksz.addr, align 4, !dbg !2707
  %and = and i32 %27, 255, !dbg !2708
  %conv = trunc i32 %and to i8, !dbg !2707
  %call = call i32 @mmc_io_rw_direct(%struct.mmc_card* %24, i32 1, i32 0, i32 %add, i8 zeroext %conv, i8* null) #5, !dbg !2709
  store i32 %call, i32* %ret, align 4, !dbg !2710
  %28 = load i32, i32* %ret, align 4, !dbg !2711
  %tobool = icmp ne i32 %28, 0, !dbg !2711
  br i1 %tobool, label %if.then15, label %if.end16, !dbg !2713

if.then15:                                        ; preds = %if.end13
  %29 = load i32, i32* %ret, align 4, !dbg !2714
  store i32 %29, i32* %retval, align 4, !dbg !2715
  br label %return, !dbg !2715

if.end16:                                         ; preds = %if.end13
  %30 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2716
  %card17 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %30, i32 0, i32 0, !dbg !2717
  %31 = load %struct.mmc_card*, %struct.mmc_card** %card17, align 8, !dbg !2717
  %32 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2718
  %num18 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %32, i32 0, i32 3, !dbg !2718
  %33 = load i32, i32* %num18, align 8, !dbg !2718
  %mul19 = mul i32 %33, 256, !dbg !2718
  %add20 = add i32 %mul19, 16, !dbg !2719
  %add21 = add i32 %add20, 1, !dbg !2720
  %34 = load i32, i32* %blksz.addr, align 4, !dbg !2721
  %shr = lshr i32 %34, 8, !dbg !2722
  %and22 = and i32 %shr, 255, !dbg !2723
  %conv23 = trunc i32 %and22 to i8, !dbg !2724
  %call24 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %31, i32 1, i32 0, i32 %add21, i8 zeroext %conv23, i8* null) #5, !dbg !2725
  store i32 %call24, i32* %ret, align 4, !dbg !2726
  %35 = load i32, i32* %ret, align 4, !dbg !2727
  %tobool25 = icmp ne i32 %35, 0, !dbg !2727
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !2729

if.then26:                                        ; preds = %if.end16
  %36 = load i32, i32* %ret, align 4, !dbg !2730
  store i32 %36, i32* %retval, align 4, !dbg !2731
  br label %return, !dbg !2731

if.end27:                                         ; preds = %if.end16
  %37 = load i32, i32* %blksz.addr, align 4, !dbg !2732
  %38 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2733
  %cur_blksize = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %38, i32 0, i32 8, !dbg !2734
  store i32 %37, i32* %cur_blksize, align 8, !dbg !2735
  store i32 0, i32* %retval, align 4, !dbg !2736
  br label %return, !dbg !2736

return:                                           ; preds = %if.end27, %if.then26, %if.then15, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !2737
  ret i32 %39, !dbg !2737
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sdio_align_size(%struct.sdio_func* %func, i32 %sz) #0 !dbg !2738 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca %struct.sdio_func*, align 8
  %sz.addr = alloca i32, align 4
  %orig_sz = alloca i32, align 4
  %blk_sz = alloca i32, align 4
  %byte_sz = alloca i32, align 4
  %chunk_sz = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !2741, metadata !DIExpression()), !dbg !2742
  store i32 %sz, i32* %sz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.addr, metadata !2743, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.declare(metadata i32* %orig_sz, metadata !2745, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.declare(metadata i32* %blk_sz, metadata !2747, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.declare(metadata i32* %byte_sz, metadata !2749, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.declare(metadata i32* %chunk_sz, metadata !2751, metadata !DIExpression()), !dbg !2752
  %0 = load i32, i32* %sz.addr, align 4, !dbg !2753
  store i32 %0, i32* %orig_sz, align 4, !dbg !2754
  %1 = load i32, i32* %sz.addr, align 4, !dbg !2755
  %call = call i32 @_sdio_align_size(i32 %1) #5, !dbg !2756
  store i32 %call, i32* %sz.addr, align 4, !dbg !2757
  %2 = load i32, i32* %sz.addr, align 4, !dbg !2758
  %3 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2760
  %call1 = call i32 @sdio_max_byte_size(%struct.sdio_func* %3) #5, !dbg !2761
  %cmp = icmp ule i32 %2, %call1, !dbg !2762
  br i1 %cmp, label %if.then, label %if.end, !dbg !2763

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %sz.addr, align 4, !dbg !2764
  store i32 %4, i32* %retval, align 4, !dbg !2765
  br label %return, !dbg !2765

if.end:                                           ; preds = %entry
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2766
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 0, !dbg !2768
  %6 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2768
  %cccr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 27, !dbg !2769
  %multi_block = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr, i32 0, i32 2, !dbg !2770
  %bf.load = load i8, i8* %multi_block, align 8, !dbg !2770
  %bf.clear = and i8 %bf.load, 1, !dbg !2770
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2770
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2766
  br i1 %tobool, label %if.then2, label %if.else, !dbg !2771

if.then2:                                         ; preds = %if.end
  %7 = load i32, i32* %sz.addr, align 4, !dbg !2772
  %8 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2775
  %cur_blksize = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %8, i32 0, i32 8, !dbg !2776
  %9 = load i32, i32* %cur_blksize, align 8, !dbg !2776
  %rem = urem i32 %7, %9, !dbg !2777
  %cmp3 = icmp eq i32 %rem, 0, !dbg !2778
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2779

if.then4:                                         ; preds = %if.then2
  %10 = load i32, i32* %sz.addr, align 4, !dbg !2780
  store i32 %10, i32* %retval, align 4, !dbg !2781
  br label %return, !dbg !2781

if.end5:                                          ; preds = %if.then2
  %11 = load i32, i32* %sz.addr, align 4, !dbg !2782
  %12 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2783
  %cur_blksize6 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %12, i32 0, i32 8, !dbg !2784
  %13 = load i32, i32* %cur_blksize6, align 8, !dbg !2784
  %add = add i32 %11, %13, !dbg !2785
  %sub = sub i32 %add, 1, !dbg !2786
  %14 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2787
  %cur_blksize7 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %14, i32 0, i32 8, !dbg !2788
  %15 = load i32, i32* %cur_blksize7, align 8, !dbg !2788
  %div = udiv i32 %sub, %15, !dbg !2789
  %16 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2790
  %cur_blksize8 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %16, i32 0, i32 8, !dbg !2791
  %17 = load i32, i32* %cur_blksize8, align 8, !dbg !2791
  %mul = mul i32 %div, %17, !dbg !2792
  store i32 %mul, i32* %blk_sz, align 4, !dbg !2793
  %18 = load i32, i32* %blk_sz, align 4, !dbg !2794
  %call9 = call i32 @_sdio_align_size(i32 %18) #5, !dbg !2795
  store i32 %call9, i32* %blk_sz, align 4, !dbg !2796
  %19 = load i32, i32* %blk_sz, align 4, !dbg !2797
  %20 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2799
  %cur_blksize10 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %20, i32 0, i32 8, !dbg !2800
  %21 = load i32, i32* %cur_blksize10, align 8, !dbg !2800
  %rem11 = urem i32 %19, %21, !dbg !2801
  %cmp12 = icmp eq i32 %rem11, 0, !dbg !2802
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2803

if.then13:                                        ; preds = %if.end5
  %22 = load i32, i32* %blk_sz, align 4, !dbg !2804
  store i32 %22, i32* %retval, align 4, !dbg !2805
  br label %return, !dbg !2805

if.end14:                                         ; preds = %if.end5
  %23 = load i32, i32* %sz.addr, align 4, !dbg !2806
  %24 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2807
  %cur_blksize15 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %24, i32 0, i32 8, !dbg !2808
  %25 = load i32, i32* %cur_blksize15, align 8, !dbg !2808
  %rem16 = urem i32 %23, %25, !dbg !2809
  %call17 = call i32 @_sdio_align_size(i32 %rem16) #5, !dbg !2810
  store i32 %call17, i32* %byte_sz, align 4, !dbg !2811
  %26 = load i32, i32* %byte_sz, align 4, !dbg !2812
  %27 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2814
  %call18 = call i32 @sdio_max_byte_size(%struct.sdio_func* %27) #5, !dbg !2815
  %cmp19 = icmp ule i32 %26, %call18, !dbg !2816
  br i1 %cmp19, label %if.then20, label %if.end26, !dbg !2817

if.then20:                                        ; preds = %if.end14
  %28 = load i32, i32* %sz.addr, align 4, !dbg !2818
  %29 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2820
  %cur_blksize21 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %29, i32 0, i32 8, !dbg !2821
  %30 = load i32, i32* %cur_blksize21, align 8, !dbg !2821
  %div22 = udiv i32 %28, %30, !dbg !2822
  store i32 %div22, i32* %blk_sz, align 4, !dbg !2823
  %31 = load i32, i32* %blk_sz, align 4, !dbg !2824
  %32 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2825
  %cur_blksize23 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %32, i32 0, i32 8, !dbg !2826
  %33 = load i32, i32* %cur_blksize23, align 8, !dbg !2826
  %mul24 = mul i32 %31, %33, !dbg !2827
  %34 = load i32, i32* %byte_sz, align 4, !dbg !2828
  %add25 = add i32 %mul24, %34, !dbg !2829
  store i32 %add25, i32* %retval, align 4, !dbg !2830
  br label %return, !dbg !2830

if.end26:                                         ; preds = %if.end14
  br label %if.end41, !dbg !2831

if.else:                                          ; preds = %if.end
  %35 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2832
  %call27 = call i32 @sdio_max_byte_size(%struct.sdio_func* %35) #5, !dbg !2834
  %call28 = call i32 @_sdio_align_size(i32 %call27) #5, !dbg !2835
  store i32 %call28, i32* %chunk_sz, align 4, !dbg !2836
  %36 = load i32, i32* %chunk_sz, align 4, !dbg !2837
  %37 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2839
  %call29 = call i32 @sdio_max_byte_size(%struct.sdio_func* %37) #5, !dbg !2840
  %cmp30 = icmp eq i32 %36, %call29, !dbg !2841
  br i1 %cmp30, label %if.then31, label %if.end40, !dbg !2842

if.then31:                                        ; preds = %if.else
  %38 = load i32, i32* %orig_sz, align 4, !dbg !2843
  %39 = load i32, i32* %chunk_sz, align 4, !dbg !2845
  %rem32 = urem i32 %38, %39, !dbg !2846
  store i32 %rem32, i32* %byte_sz, align 4, !dbg !2847
  %40 = load i32, i32* %byte_sz, align 4, !dbg !2848
  %tobool33 = icmp ne i32 %40, 0, !dbg !2848
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !2850

if.then34:                                        ; preds = %if.then31
  %41 = load i32, i32* %byte_sz, align 4, !dbg !2851
  %call35 = call i32 @_sdio_align_size(i32 %41) #5, !dbg !2853
  store i32 %call35, i32* %byte_sz, align 4, !dbg !2854
  br label %if.end36, !dbg !2855

if.end36:                                         ; preds = %if.then34, %if.then31
  %42 = load i32, i32* %orig_sz, align 4, !dbg !2856
  %43 = load i32, i32* %chunk_sz, align 4, !dbg !2857
  %div37 = udiv i32 %42, %43, !dbg !2858
  %44 = load i32, i32* %chunk_sz, align 4, !dbg !2859
  %mul38 = mul i32 %div37, %44, !dbg !2860
  %45 = load i32, i32* %byte_sz, align 4, !dbg !2861
  %add39 = add i32 %mul38, %45, !dbg !2862
  store i32 %add39, i32* %retval, align 4, !dbg !2863
  br label %return, !dbg !2863

if.end40:                                         ; preds = %if.else
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end26
  %46 = load i32, i32* %orig_sz, align 4, !dbg !2864
  store i32 %46, i32* %retval, align 4, !dbg !2865
  br label %return, !dbg !2865

return:                                           ; preds = %if.end41, %if.end36, %if.then20, %if.then13, %if.then4, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !2866
  ret i32 %47, !dbg !2866
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_sdio_align_size(i32 %sz) #0 !dbg !2867 {
entry:
  %sz.addr = alloca i32, align 4
  store i32 %sz, i32* %sz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.addr, metadata !2870, metadata !DIExpression()), !dbg !2871
  %0 = load i32, i32* %sz.addr, align 4, !dbg !2872
  %add = add i32 %0, 3, !dbg !2872
  %and = and i32 %add, -4, !dbg !2872
  ret i32 %and, !dbg !2873
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_max_byte_size(%struct.sdio_func* %func) #0 !dbg !2874 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca %struct.sdio_func*, align 8
  %mval = alloca i32, align 4
  %__UNIQUE_ID___x162 = alloca i32, align 4
  %__UNIQUE_ID___y163 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x164 = alloca i32, align 4
  %__UNIQUE_ID___y165 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %__UNIQUE_ID___x166 = alloca i32, align 4
  %__UNIQUE_ID___y167 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %__UNIQUE_ID___x168 = alloca i32, align 4
  %__UNIQUE_ID___y169 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !2877, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.declare(metadata i32* %mval, metadata !2879, metadata !DIExpression()), !dbg !2880
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2881
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %0, i32 0, i32 0, !dbg !2882
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2882
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %1, i32 0, i32 0, !dbg !2883
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !2883
  %max_blk_size = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %2, i32 0, i32 25, !dbg !2884
  %3 = load i32, i32* %max_blk_size, align 64, !dbg !2884
  store i32 %3, i32* %mval, align 4, !dbg !2880
  %4 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2885
  %card1 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %4, i32 0, i32 0, !dbg !2887
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card1, align 8, !dbg !2887
  %call = call i32 @mmc_blksz_for_byte_mode(%struct.mmc_card* %5) #5, !dbg !2888
  %tobool = icmp ne i32 %call, 0, !dbg !2888
  br i1 %tobool, label %if.then, label %if.else, !dbg !2889

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x162, metadata !2890, metadata !DIExpression()), !dbg !2892
  %6 = load i32, i32* %mval, align 4, !dbg !2892
  store i32 %6, i32* %__UNIQUE_ID___x162, align 4, !dbg !2892
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y163, metadata !2893, metadata !DIExpression()), !dbg !2892
  %7 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2892
  %cur_blksize = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %7, i32 0, i32 8, !dbg !2892
  %8 = load i32, i32* %cur_blksize, align 8, !dbg !2892
  store i32 %8, i32* %__UNIQUE_ID___y163, align 4, !dbg !2892
  %9 = load i32, i32* %__UNIQUE_ID___x162, align 4, !dbg !2892
  %10 = load i32, i32* %__UNIQUE_ID___y163, align 4, !dbg !2892
  %cmp = icmp ult i32 %9, %10, !dbg !2892
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2892

cond.true:                                        ; preds = %if.then
  %11 = load i32, i32* %__UNIQUE_ID___x162, align 4, !dbg !2892
  br label %cond.end, !dbg !2892

cond.false:                                       ; preds = %if.then
  %12 = load i32, i32* %__UNIQUE_ID___y163, align 4, !dbg !2892
  br label %cond.end, !dbg !2892

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !2892
  store i32 %cond, i32* %tmp, align 4, !dbg !2892
  %13 = load i32, i32* %tmp, align 4, !dbg !2892
  store i32 %13, i32* %mval, align 4, !dbg !2894
  br label %if.end, !dbg !2895

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x164, metadata !2896, metadata !DIExpression()), !dbg !2898
  %14 = load i32, i32* %mval, align 4, !dbg !2898
  store i32 %14, i32* %__UNIQUE_ID___x164, align 4, !dbg !2898
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y165, metadata !2899, metadata !DIExpression()), !dbg !2898
  %15 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2898
  %max_blksize = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %15, i32 0, i32 7, !dbg !2898
  %16 = load i32, i32* %max_blksize, align 4, !dbg !2898
  store i32 %16, i32* %__UNIQUE_ID___y165, align 4, !dbg !2898
  %17 = load i32, i32* %__UNIQUE_ID___x164, align 4, !dbg !2898
  %18 = load i32, i32* %__UNIQUE_ID___y165, align 4, !dbg !2898
  %cmp3 = icmp ult i32 %17, %18, !dbg !2898
  br i1 %cmp3, label %cond.true4, label %cond.false5, !dbg !2898

cond.true4:                                       ; preds = %if.else
  %19 = load i32, i32* %__UNIQUE_ID___x164, align 4, !dbg !2898
  br label %cond.end6, !dbg !2898

cond.false5:                                      ; preds = %if.else
  %20 = load i32, i32* %__UNIQUE_ID___y165, align 4, !dbg !2898
  br label %cond.end6, !dbg !2898

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i32 [ %19, %cond.true4 ], [ %20, %cond.false5 ], !dbg !2898
  store i32 %cond7, i32* %tmp2, align 4, !dbg !2898
  %21 = load i32, i32* %tmp2, align 4, !dbg !2898
  store i32 %21, i32* %mval, align 4, !dbg !2900
  br label %if.end

if.end:                                           ; preds = %cond.end6, %cond.end
  %22 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2901
  %card8 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %22, i32 0, i32 0, !dbg !2903
  %23 = load %struct.mmc_card*, %struct.mmc_card** %card8, align 8, !dbg !2903
  %call9 = call i32 @mmc_card_broken_byte_mode_512(%struct.mmc_card* %23) #5, !dbg !2904
  %tobool10 = icmp ne i32 %call9, 0, !dbg !2904
  br i1 %tobool10, label %if.then11, label %if.end18, !dbg !2905

if.then11:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x166, metadata !2906, metadata !DIExpression()), !dbg !2908
  %24 = load i32, i32* %mval, align 4, !dbg !2908
  store i32 %24, i32* %__UNIQUE_ID___x166, align 4, !dbg !2908
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y167, metadata !2909, metadata !DIExpression()), !dbg !2908
  store i32 511, i32* %__UNIQUE_ID___y167, align 4, !dbg !2908
  %25 = load i32, i32* %__UNIQUE_ID___x166, align 4, !dbg !2908
  %26 = load i32, i32* %__UNIQUE_ID___y167, align 4, !dbg !2908
  %cmp13 = icmp ult i32 %25, %26, !dbg !2908
  br i1 %cmp13, label %cond.true14, label %cond.false15, !dbg !2908

cond.true14:                                      ; preds = %if.then11
  %27 = load i32, i32* %__UNIQUE_ID___x166, align 4, !dbg !2908
  br label %cond.end16, !dbg !2908

cond.false15:                                     ; preds = %if.then11
  %28 = load i32, i32* %__UNIQUE_ID___y167, align 4, !dbg !2908
  br label %cond.end16, !dbg !2908

cond.end16:                                       ; preds = %cond.false15, %cond.true14
  %cond17 = phi i32 [ %27, %cond.true14 ], [ %28, %cond.false15 ], !dbg !2908
  store i32 %cond17, i32* %tmp12, align 4, !dbg !2908
  %29 = load i32, i32* %tmp12, align 4, !dbg !2908
  store i32 %29, i32* %retval, align 4, !dbg !2910
  br label %return, !dbg !2910

if.end18:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x168, metadata !2911, metadata !DIExpression()), !dbg !2913
  %30 = load i32, i32* %mval, align 4, !dbg !2913
  store i32 %30, i32* %__UNIQUE_ID___x168, align 4, !dbg !2913
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y169, metadata !2914, metadata !DIExpression()), !dbg !2913
  store i32 512, i32* %__UNIQUE_ID___y169, align 4, !dbg !2913
  %31 = load i32, i32* %__UNIQUE_ID___x168, align 4, !dbg !2913
  %32 = load i32, i32* %__UNIQUE_ID___y169, align 4, !dbg !2913
  %cmp20 = icmp ult i32 %31, %32, !dbg !2913
  br i1 %cmp20, label %cond.true21, label %cond.false22, !dbg !2913

cond.true21:                                      ; preds = %if.end18
  %33 = load i32, i32* %__UNIQUE_ID___x168, align 4, !dbg !2913
  br label %cond.end23, !dbg !2913

cond.false22:                                     ; preds = %if.end18
  %34 = load i32, i32* %__UNIQUE_ID___y169, align 4, !dbg !2913
  br label %cond.end23, !dbg !2913

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %cond24 = phi i32 [ %33, %cond.true21 ], [ %34, %cond.false22 ], !dbg !2913
  store i32 %cond24, i32* %tmp19, align 4, !dbg !2913
  %35 = load i32, i32* %tmp19, align 4, !dbg !2913
  store i32 %35, i32* %retval, align 4, !dbg !2915
  br label %return, !dbg !2915

return:                                           ; preds = %cond.end23, %cond.end16
  %36 = load i32, i32* %retval, align 4, !dbg !2916
  ret i32 %36, !dbg !2916
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @sdio_readb(%struct.sdio_func* %func, i32 %addr, i32* %err_ret) #0 !dbg !2917 {
entry:
  %retval = alloca i8, align 1
  %func.addr = alloca %struct.sdio_func*, align 8
  %addr.addr = alloca i32, align 4
  %err_ret.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %val = alloca i8, align 1
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !2920, metadata !DIExpression()), !dbg !2921
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !2922, metadata !DIExpression()), !dbg !2923
  store i32* %err_ret, i32** %err_ret.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err_ret.addr, metadata !2924, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2926, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.declare(metadata i8* %val, metadata !2928, metadata !DIExpression()), !dbg !2929
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2930
  %tobool = icmp ne %struct.sdio_func* %0, null, !dbg !2930
  br i1 %tobool, label %if.end3, label %if.then, !dbg !2932

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %err_ret.addr, align 8, !dbg !2933
  %tobool1 = icmp ne i32* %1, null, !dbg !2933
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2936

if.then2:                                         ; preds = %if.then
  %2 = load i32*, i32** %err_ret.addr, align 8, !dbg !2937
  store i32 -22, i32* %2, align 4, !dbg !2938
  br label %if.end, !dbg !2939

if.end:                                           ; preds = %if.then2, %if.then
  store i8 -1, i8* %retval, align 1, !dbg !2940
  br label %return, !dbg !2940

if.end3:                                          ; preds = %entry
  %3 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2941
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %3, i32 0, i32 0, !dbg !2942
  %4 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2942
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2943
  %num = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 3, !dbg !2944
  %6 = load i32, i32* %num, align 8, !dbg !2944
  %7 = load i32, i32* %addr.addr, align 4, !dbg !2945
  %call = call i32 @mmc_io_rw_direct(%struct.mmc_card* %4, i32 0, i32 %6, i32 %7, i8 zeroext 0, i8* %val) #5, !dbg !2946
  store i32 %call, i32* %ret, align 4, !dbg !2947
  %8 = load i32*, i32** %err_ret.addr, align 8, !dbg !2948
  %tobool4 = icmp ne i32* %8, null, !dbg !2948
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2950

if.then5:                                         ; preds = %if.end3
  %9 = load i32, i32* %ret, align 4, !dbg !2951
  %10 = load i32*, i32** %err_ret.addr, align 8, !dbg !2952
  store i32 %9, i32* %10, align 4, !dbg !2953
  br label %if.end6, !dbg !2954

if.end6:                                          ; preds = %if.then5, %if.end3
  %11 = load i32, i32* %ret, align 4, !dbg !2955
  %tobool7 = icmp ne i32 %11, 0, !dbg !2955
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2957

if.then8:                                         ; preds = %if.end6
  store i8 -1, i8* %retval, align 1, !dbg !2958
  br label %return, !dbg !2958

if.end9:                                          ; preds = %if.end6
  %12 = load i8, i8* %val, align 1, !dbg !2959
  store i8 %12, i8* %retval, align 1, !dbg !2960
  br label %return, !dbg !2960

return:                                           ; preds = %if.end9, %if.then8, %if.end
  %13 = load i8, i8* %retval, align 1, !dbg !2961
  ret i8 %13, !dbg !2961
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sdio_writeb(%struct.sdio_func* %func, i8 zeroext %b, i32 %addr, i32* %err_ret) #0 !dbg !2962 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  %b.addr = alloca i8, align 1
  %addr.addr = alloca i32, align 4
  %err_ret.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !2965, metadata !DIExpression()), !dbg !2966
  store i8 %b, i8* %b.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %b.addr, metadata !2967, metadata !DIExpression()), !dbg !2968
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !2969, metadata !DIExpression()), !dbg !2970
  store i32* %err_ret, i32** %err_ret.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err_ret.addr, metadata !2971, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2973, metadata !DIExpression()), !dbg !2974
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2975
  %tobool = icmp ne %struct.sdio_func* %0, null, !dbg !2975
  br i1 %tobool, label %if.end3, label %if.then, !dbg !2977

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %err_ret.addr, align 8, !dbg !2978
  %tobool1 = icmp ne i32* %1, null, !dbg !2978
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2981

if.then2:                                         ; preds = %if.then
  %2 = load i32*, i32** %err_ret.addr, align 8, !dbg !2982
  store i32 -22, i32* %2, align 4, !dbg !2983
  br label %if.end, !dbg !2984

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end6, !dbg !2985

if.end3:                                          ; preds = %entry
  %3 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2986
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %3, i32 0, i32 0, !dbg !2987
  %4 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2987
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !2988
  %num = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 3, !dbg !2989
  %6 = load i32, i32* %num, align 8, !dbg !2989
  %7 = load i32, i32* %addr.addr, align 4, !dbg !2990
  %8 = load i8, i8* %b.addr, align 1, !dbg !2991
  %call = call i32 @mmc_io_rw_direct(%struct.mmc_card* %4, i32 1, i32 %6, i32 %7, i8 zeroext %8, i8* null) #5, !dbg !2992
  store i32 %call, i32* %ret, align 4, !dbg !2993
  %9 = load i32*, i32** %err_ret.addr, align 8, !dbg !2994
  %tobool4 = icmp ne i32* %9, null, !dbg !2994
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2996

if.then5:                                         ; preds = %if.end3
  %10 = load i32, i32* %ret, align 4, !dbg !2997
  %11 = load i32*, i32** %err_ret.addr, align 8, !dbg !2998
  store i32 %10, i32* %11, align 4, !dbg !2999
  br label %if.end6, !dbg !3000

if.end6:                                          ; preds = %if.end, %if.then5, %if.end3
  ret void, !dbg !3001
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @sdio_writeb_readb(%struct.sdio_func* %func, i8 zeroext %write_byte, i32 %addr, i32* %err_ret) #0 !dbg !3002 {
entry:
  %retval = alloca i8, align 1
  %func.addr = alloca %struct.sdio_func*, align 8
  %write_byte.addr = alloca i8, align 1
  %addr.addr = alloca i32, align 4
  %err_ret.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %val = alloca i8, align 1
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3005, metadata !DIExpression()), !dbg !3006
  store i8 %write_byte, i8* %write_byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %write_byte.addr, metadata !3007, metadata !DIExpression()), !dbg !3008
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3009, metadata !DIExpression()), !dbg !3010
  store i32* %err_ret, i32** %err_ret.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err_ret.addr, metadata !3011, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3013, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.declare(metadata i8* %val, metadata !3015, metadata !DIExpression()), !dbg !3016
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3017
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %0, i32 0, i32 0, !dbg !3018
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3018
  %2 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3019
  %num = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %2, i32 0, i32 3, !dbg !3020
  %3 = load i32, i32* %num, align 8, !dbg !3020
  %4 = load i32, i32* %addr.addr, align 4, !dbg !3021
  %5 = load i8, i8* %write_byte.addr, align 1, !dbg !3022
  %call = call i32 @mmc_io_rw_direct(%struct.mmc_card* %1, i32 1, i32 %3, i32 %4, i8 zeroext %5, i8* %val) #5, !dbg !3023
  store i32 %call, i32* %ret, align 4, !dbg !3024
  %6 = load i32*, i32** %err_ret.addr, align 8, !dbg !3025
  %tobool = icmp ne i32* %6, null, !dbg !3025
  br i1 %tobool, label %if.then, label %if.end, !dbg !3027

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %ret, align 4, !dbg !3028
  %8 = load i32*, i32** %err_ret.addr, align 8, !dbg !3029
  store i32 %7, i32* %8, align 4, !dbg !3030
  br label %if.end, !dbg !3031

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ret, align 4, !dbg !3032
  %tobool1 = icmp ne i32 %9, 0, !dbg !3032
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3034

if.then2:                                         ; preds = %if.end
  store i8 -1, i8* %retval, align 1, !dbg !3035
  br label %return, !dbg !3035

if.end3:                                          ; preds = %if.end
  %10 = load i8, i8* %val, align 1, !dbg !3036
  store i8 %10, i8* %retval, align 1, !dbg !3037
  br label %return, !dbg !3037

return:                                           ; preds = %if.end3, %if.then2
  %11 = load i8, i8* %retval, align 1, !dbg !3038
  ret i8 %11, !dbg !3038
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sdio_memcpy_fromio(%struct.sdio_func* %func, i8* %dst, i32 %addr, i32 %count) #0 !dbg !3039 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  %dst.addr = alloca i8*, align 8
  %addr.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3042, metadata !DIExpression()), !dbg !3043
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !3044, metadata !DIExpression()), !dbg !3045
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3046, metadata !DIExpression()), !dbg !3047
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !3048, metadata !DIExpression()), !dbg !3049
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3050
  %1 = load i32, i32* %addr.addr, align 4, !dbg !3051
  %2 = load i8*, i8** %dst.addr, align 8, !dbg !3052
  %3 = load i32, i32* %count.addr, align 4, !dbg !3053
  %call = call i32 @sdio_io_rw_ext_helper(%struct.sdio_func* %0, i32 0, i32 %1, i32 1, i8* %2, i32 %3) #5, !dbg !3054
  ret i32 %call, !dbg !3055
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_io_rw_ext_helper(%struct.sdio_func* %func, i32 %write, i32 %addr, i32 %incr_addr, i8* %buf, i32 %size) #0 !dbg !3056 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca %struct.sdio_func*, align 8
  %write.addr = alloca i32, align 4
  %addr.addr = alloca i32, align 4
  %incr_addr.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  %max_blocks = alloca i32, align 4
  %ret = alloca i32, align 4
  %__UNIQUE_ID___x170 = alloca i32, align 4
  %__UNIQUE_ID___y171 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %blocks = alloca i32, align 4
  %__UNIQUE_ID___x172 = alloca i32, align 4
  %__UNIQUE_ID___y173 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3059, metadata !DIExpression()), !dbg !3060
  store i32 %write, i32* %write.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %write.addr, metadata !3061, metadata !DIExpression()), !dbg !3062
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3063, metadata !DIExpression()), !dbg !3064
  store i32 %incr_addr, i32* %incr_addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %incr_addr.addr, metadata !3065, metadata !DIExpression()), !dbg !3066
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3067, metadata !DIExpression()), !dbg !3068
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3069, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !3071, metadata !DIExpression()), !dbg !3072
  %0 = load i32, i32* %size.addr, align 4, !dbg !3073
  store i32 %0, i32* %remainder, align 4, !dbg !3072
  call void @llvm.dbg.declare(metadata i32* %max_blocks, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3076, metadata !DIExpression()), !dbg !3077
  %1 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3078
  %tobool = icmp ne %struct.sdio_func* %1, null, !dbg !3078
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3080

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3081
  %num = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %2, i32 0, i32 3, !dbg !3082
  %3 = load i32, i32* %num, align 8, !dbg !3082
  %cmp = icmp ugt i32 %3, 7, !dbg !3083
  br i1 %cmp, label %if.then, label %if.end, !dbg !3084

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !3085
  br label %return, !dbg !3085

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3086
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %4, i32 0, i32 0, !dbg !3088
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3088
  %cccr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 27, !dbg !3089
  %multi_block = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr, i32 0, i32 2, !dbg !3090
  %bf.load = load i8, i8* %multi_block, align 8, !dbg !3090
  %bf.clear = and i8 %bf.load, 1, !dbg !3090
  %bf.cast = zext i8 %bf.clear to i32, !dbg !3090
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !3086
  br i1 %tobool1, label %land.lhs.true, label %if.end22, !dbg !3091

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %size.addr, align 4, !dbg !3092
  %7 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3093
  %call = call i32 @sdio_max_byte_size(%struct.sdio_func* %7) #5, !dbg !3094
  %cmp2 = icmp ugt i32 %6, %call, !dbg !3095
  br i1 %cmp2, label %if.then3, label %if.end22, !dbg !3096

if.then3:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x170, metadata !3097, metadata !DIExpression()), !dbg !3100
  %8 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3100
  %card4 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %8, i32 0, i32 0, !dbg !3100
  %9 = load %struct.mmc_card*, %struct.mmc_card** %card4, align 8, !dbg !3100
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 0, !dbg !3100
  %10 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3100
  %max_blk_count = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 26, !dbg !3100
  %11 = load i32, i32* %max_blk_count, align 4, !dbg !3100
  store i32 %11, i32* %__UNIQUE_ID___x170, align 4, !dbg !3100
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y171, metadata !3101, metadata !DIExpression()), !dbg !3100
  store i32 511, i32* %__UNIQUE_ID___y171, align 4, !dbg !3100
  %12 = load i32, i32* %__UNIQUE_ID___x170, align 4, !dbg !3100
  %13 = load i32, i32* %__UNIQUE_ID___y171, align 4, !dbg !3100
  %cmp5 = icmp ult i32 %12, %13, !dbg !3100
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !3100

cond.true:                                        ; preds = %if.then3
  %14 = load i32, i32* %__UNIQUE_ID___x170, align 4, !dbg !3100
  br label %cond.end, !dbg !3100

cond.false:                                       ; preds = %if.then3
  %15 = load i32, i32* %__UNIQUE_ID___y171, align 4, !dbg !3100
  br label %cond.end, !dbg !3100

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !3100
  store i32 %cond, i32* %tmp, align 4, !dbg !3100
  %16 = load i32, i32* %tmp, align 4, !dbg !3100
  store i32 %16, i32* %max_blocks, align 4, !dbg !3102
  br label %while.cond, !dbg !3103

while.cond:                                       ; preds = %if.end21, %cond.end
  %17 = load i32, i32* %remainder, align 4, !dbg !3104
  %18 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3105
  %cur_blksize = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %18, i32 0, i32 8, !dbg !3106
  %19 = load i32, i32* %cur_blksize, align 8, !dbg !3106
  %cmp6 = icmp uge i32 %17, %19, !dbg !3107
  br i1 %cmp6, label %while.body, label %while.end, !dbg !3103

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %blocks, metadata !3108, metadata !DIExpression()), !dbg !3110
  %20 = load i32, i32* %remainder, align 4, !dbg !3111
  %21 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3112
  %cur_blksize7 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %21, i32 0, i32 8, !dbg !3113
  %22 = load i32, i32* %cur_blksize7, align 8, !dbg !3113
  %div = udiv i32 %20, %22, !dbg !3114
  store i32 %div, i32* %blocks, align 4, !dbg !3115
  %23 = load i32, i32* %blocks, align 4, !dbg !3116
  %24 = load i32, i32* %max_blocks, align 4, !dbg !3118
  %cmp8 = icmp ugt i32 %23, %24, !dbg !3119
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !3120

if.then9:                                         ; preds = %while.body
  %25 = load i32, i32* %max_blocks, align 4, !dbg !3121
  store i32 %25, i32* %blocks, align 4, !dbg !3122
  br label %if.end10, !dbg !3123

if.end10:                                         ; preds = %if.then9, %while.body
  %26 = load i32, i32* %blocks, align 4, !dbg !3124
  %27 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3125
  %cur_blksize11 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %27, i32 0, i32 8, !dbg !3126
  %28 = load i32, i32* %cur_blksize11, align 8, !dbg !3126
  %mul = mul i32 %26, %28, !dbg !3127
  store i32 %mul, i32* %size.addr, align 4, !dbg !3128
  %29 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3129
  %card12 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %29, i32 0, i32 0, !dbg !3130
  %30 = load %struct.mmc_card*, %struct.mmc_card** %card12, align 8, !dbg !3130
  %31 = load i32, i32* %write.addr, align 4, !dbg !3131
  %32 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3132
  %num13 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %32, i32 0, i32 3, !dbg !3133
  %33 = load i32, i32* %num13, align 8, !dbg !3133
  %34 = load i32, i32* %addr.addr, align 4, !dbg !3134
  %35 = load i32, i32* %incr_addr.addr, align 4, !dbg !3135
  %36 = load i8*, i8** %buf.addr, align 8, !dbg !3136
  %37 = load i32, i32* %blocks, align 4, !dbg !3137
  %38 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3138
  %cur_blksize14 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %38, i32 0, i32 8, !dbg !3139
  %39 = load i32, i32* %cur_blksize14, align 8, !dbg !3139
  %call15 = call i32 @mmc_io_rw_extended(%struct.mmc_card* %30, i32 %31, i32 %33, i32 %34, i32 %35, i8* %36, i32 %37, i32 %39) #5, !dbg !3140
  store i32 %call15, i32* %ret, align 4, !dbg !3141
  %40 = load i32, i32* %ret, align 4, !dbg !3142
  %tobool16 = icmp ne i32 %40, 0, !dbg !3142
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !3144

if.then17:                                        ; preds = %if.end10
  %41 = load i32, i32* %ret, align 4, !dbg !3145
  store i32 %41, i32* %retval, align 4, !dbg !3146
  br label %return, !dbg !3146

if.end18:                                         ; preds = %if.end10
  %42 = load i32, i32* %size.addr, align 4, !dbg !3147
  %43 = load i32, i32* %remainder, align 4, !dbg !3148
  %sub = sub i32 %43, %42, !dbg !3148
  store i32 %sub, i32* %remainder, align 4, !dbg !3148
  %44 = load i32, i32* %size.addr, align 4, !dbg !3149
  %45 = load i8*, i8** %buf.addr, align 8, !dbg !3150
  %idx.ext = zext i32 %44 to i64, !dbg !3150
  %add.ptr = getelementptr i8, i8* %45, i64 %idx.ext, !dbg !3150
  store i8* %add.ptr, i8** %buf.addr, align 8, !dbg !3150
  %46 = load i32, i32* %incr_addr.addr, align 4, !dbg !3151
  %tobool19 = icmp ne i32 %46, 0, !dbg !3151
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !3153

if.then20:                                        ; preds = %if.end18
  %47 = load i32, i32* %size.addr, align 4, !dbg !3154
  %48 = load i32, i32* %addr.addr, align 4, !dbg !3155
  %add = add i32 %48, %47, !dbg !3155
  store i32 %add, i32* %addr.addr, align 4, !dbg !3155
  br label %if.end21, !dbg !3156

if.end21:                                         ; preds = %if.then20, %if.end18
  br label %while.cond, !dbg !3103, !llvm.loop !3157

while.end:                                        ; preds = %while.cond
  br label %if.end22, !dbg !3159

if.end22:                                         ; preds = %while.end, %land.lhs.true, %if.end
  br label %while.cond23, !dbg !3160

while.cond23:                                     ; preds = %if.end45, %if.end22
  %49 = load i32, i32* %remainder, align 4, !dbg !3161
  %cmp24 = icmp ugt i32 %49, 0, !dbg !3162
  br i1 %cmp24, label %while.body25, label %while.end46, !dbg !3160

while.body25:                                     ; preds = %while.cond23
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x172, metadata !3163, metadata !DIExpression()), !dbg !3166
  %50 = load i32, i32* %remainder, align 4, !dbg !3166
  store i32 %50, i32* %__UNIQUE_ID___x172, align 4, !dbg !3166
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y173, metadata !3167, metadata !DIExpression()), !dbg !3166
  %51 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3166
  %call26 = call i32 @sdio_max_byte_size(%struct.sdio_func* %51) #5, !dbg !3166
  store i32 %call26, i32* %__UNIQUE_ID___y173, align 4, !dbg !3166
  %52 = load i32, i32* %__UNIQUE_ID___x172, align 4, !dbg !3166
  %53 = load i32, i32* %__UNIQUE_ID___y173, align 4, !dbg !3166
  %cmp28 = icmp ult i32 %52, %53, !dbg !3166
  br i1 %cmp28, label %cond.true29, label %cond.false30, !dbg !3166

cond.true29:                                      ; preds = %while.body25
  %54 = load i32, i32* %__UNIQUE_ID___x172, align 4, !dbg !3166
  br label %cond.end31, !dbg !3166

cond.false30:                                     ; preds = %while.body25
  %55 = load i32, i32* %__UNIQUE_ID___y173, align 4, !dbg !3166
  br label %cond.end31, !dbg !3166

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi i32 [ %54, %cond.true29 ], [ %55, %cond.false30 ], !dbg !3166
  store i32 %cond32, i32* %tmp27, align 4, !dbg !3166
  %56 = load i32, i32* %tmp27, align 4, !dbg !3166
  store i32 %56, i32* %size.addr, align 4, !dbg !3168
  %57 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3169
  %card33 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %57, i32 0, i32 0, !dbg !3170
  %58 = load %struct.mmc_card*, %struct.mmc_card** %card33, align 8, !dbg !3170
  %59 = load i32, i32* %write.addr, align 4, !dbg !3171
  %60 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3172
  %num34 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %60, i32 0, i32 3, !dbg !3173
  %61 = load i32, i32* %num34, align 8, !dbg !3173
  %62 = load i32, i32* %addr.addr, align 4, !dbg !3174
  %63 = load i32, i32* %incr_addr.addr, align 4, !dbg !3175
  %64 = load i8*, i8** %buf.addr, align 8, !dbg !3176
  %65 = load i32, i32* %size.addr, align 4, !dbg !3177
  %call35 = call i32 @mmc_io_rw_extended(%struct.mmc_card* %58, i32 %59, i32 %61, i32 %62, i32 %63, i8* %64, i32 0, i32 %65) #5, !dbg !3178
  store i32 %call35, i32* %ret, align 4, !dbg !3179
  %66 = load i32, i32* %ret, align 4, !dbg !3180
  %tobool36 = icmp ne i32 %66, 0, !dbg !3180
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !3182

if.then37:                                        ; preds = %cond.end31
  %67 = load i32, i32* %ret, align 4, !dbg !3183
  store i32 %67, i32* %retval, align 4, !dbg !3184
  br label %return, !dbg !3184

if.end38:                                         ; preds = %cond.end31
  %68 = load i32, i32* %size.addr, align 4, !dbg !3185
  %69 = load i32, i32* %remainder, align 4, !dbg !3186
  %sub39 = sub i32 %69, %68, !dbg !3186
  store i32 %sub39, i32* %remainder, align 4, !dbg !3186
  %70 = load i32, i32* %size.addr, align 4, !dbg !3187
  %71 = load i8*, i8** %buf.addr, align 8, !dbg !3188
  %idx.ext40 = zext i32 %70 to i64, !dbg !3188
  %add.ptr41 = getelementptr i8, i8* %71, i64 %idx.ext40, !dbg !3188
  store i8* %add.ptr41, i8** %buf.addr, align 8, !dbg !3188
  %72 = load i32, i32* %incr_addr.addr, align 4, !dbg !3189
  %tobool42 = icmp ne i32 %72, 0, !dbg !3189
  br i1 %tobool42, label %if.then43, label %if.end45, !dbg !3191

if.then43:                                        ; preds = %if.end38
  %73 = load i32, i32* %size.addr, align 4, !dbg !3192
  %74 = load i32, i32* %addr.addr, align 4, !dbg !3193
  %add44 = add i32 %74, %73, !dbg !3193
  store i32 %add44, i32* %addr.addr, align 4, !dbg !3193
  br label %if.end45, !dbg !3194

if.end45:                                         ; preds = %if.then43, %if.end38
  br label %while.cond23, !dbg !3160, !llvm.loop !3195

while.end46:                                      ; preds = %while.cond23
  store i32 0, i32* %retval, align 4, !dbg !3197
  br label %return, !dbg !3197

return:                                           ; preds = %while.end46, %if.then37, %if.then17, %if.then
  %75 = load i32, i32* %retval, align 4, !dbg !3198
  ret i32 %75, !dbg !3198
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sdio_memcpy_toio(%struct.sdio_func* %func, i32 %addr, i8* %src, i32 %count) #0 !dbg !3199 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  %addr.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3202, metadata !DIExpression()), !dbg !3203
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3204, metadata !DIExpression()), !dbg !3205
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !3206, metadata !DIExpression()), !dbg !3207
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !3208, metadata !DIExpression()), !dbg !3209
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3210
  %1 = load i32, i32* %addr.addr, align 4, !dbg !3211
  %2 = load i8*, i8** %src.addr, align 8, !dbg !3212
  %3 = load i32, i32* %count.addr, align 4, !dbg !3213
  %call = call i32 @sdio_io_rw_ext_helper(%struct.sdio_func* %0, i32 1, i32 %1, i32 1, i8* %2, i32 %3) #5, !dbg !3214
  ret i32 %call, !dbg !3215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sdio_readsb(%struct.sdio_func* %func, i8* %dst, i32 %addr, i32 %count) #0 !dbg !3216 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  %dst.addr = alloca i8*, align 8
  %addr.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3217, metadata !DIExpression()), !dbg !3218
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !3219, metadata !DIExpression()), !dbg !3220
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3221, metadata !DIExpression()), !dbg !3222
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !3223, metadata !DIExpression()), !dbg !3224
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3225
  %1 = load i32, i32* %addr.addr, align 4, !dbg !3226
  %2 = load i8*, i8** %dst.addr, align 8, !dbg !3227
  %3 = load i32, i32* %count.addr, align 4, !dbg !3228
  %call = call i32 @sdio_io_rw_ext_helper(%struct.sdio_func* %0, i32 0, i32 %1, i32 0, i8* %2, i32 %3) #5, !dbg !3229
  ret i32 %call, !dbg !3230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sdio_writesb(%struct.sdio_func* %func, i32 %addr, i8* %src, i32 %count) #0 !dbg !3231 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  %addr.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3232, metadata !DIExpression()), !dbg !3233
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3234, metadata !DIExpression()), !dbg !3235
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !3236, metadata !DIExpression()), !dbg !3237
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !3238, metadata !DIExpression()), !dbg !3239
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3240
  %1 = load i32, i32* %addr.addr, align 4, !dbg !3241
  %2 = load i8*, i8** %src.addr, align 8, !dbg !3242
  %3 = load i32, i32* %count.addr, align 4, !dbg !3243
  %call = call i32 @sdio_io_rw_ext_helper(%struct.sdio_func* %0, i32 1, i32 %1, i32 0, i8* %2, i32 %3) #5, !dbg !3244
  ret i32 %call, !dbg !3245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i16 @sdio_readw(%struct.sdio_func* %func, i32 %addr, i32* %err_ret) #0 !dbg !3246 {
entry:
  %p.addr.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i, metadata !3249, metadata !DIExpression()), !dbg !3256
  %retval = alloca i16, align 2
  %func.addr = alloca %struct.sdio_func*, align 8
  %addr.addr = alloca i32, align 4
  %err_ret.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3258, metadata !DIExpression()), !dbg !3259
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3260, metadata !DIExpression()), !dbg !3261
  store i32* %err_ret, i32** %err_ret.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err_ret.addr, metadata !3262, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3264, metadata !DIExpression()), !dbg !3265
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3266
  %1 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3267
  %tmpbuf = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %1, i32 0, i32 11, !dbg !3268
  %2 = load i8*, i8** %tmpbuf, align 8, !dbg !3268
  %3 = load i32, i32* %addr.addr, align 4, !dbg !3269
  %call = call i32 @sdio_memcpy_fromio(%struct.sdio_func* %0, i8* %2, i32 %3, i32 2) #5, !dbg !3270
  store i32 %call, i32* %ret, align 4, !dbg !3271
  %4 = load i32*, i32** %err_ret.addr, align 8, !dbg !3272
  %tobool = icmp ne i32* %4, null, !dbg !3272
  br i1 %tobool, label %if.then, label %if.end, !dbg !3274

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3275
  %6 = load i32*, i32** %err_ret.addr, align 8, !dbg !3276
  store i32 %5, i32* %6, align 4, !dbg !3277
  br label %if.end, !dbg !3278

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %ret, align 4, !dbg !3279
  %tobool1 = icmp ne i32 %7, 0, !dbg !3279
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3281

if.then2:                                         ; preds = %if.end
  store i16 -1, i16* %retval, align 2, !dbg !3282
  br label %return, !dbg !3282

if.end3:                                          ; preds = %if.end
  %8 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3283
  %tmpbuf4 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %8, i32 0, i32 11, !dbg !3284
  %9 = load i8*, i8** %tmpbuf4, align 8, !dbg !3284
  %10 = bitcast i8* %9 to i16*, !dbg !3285
  store i16* %10, i16** %p.addr.i, align 8
  %11 = load i16*, i16** %p.addr.i, align 8, !dbg !3286
  %12 = load i16, i16* %11, align 2, !dbg !3287
  store i16 %12, i16* %retval, align 2, !dbg !3288
  br label %return, !dbg !3288

return:                                           ; preds = %if.end3, %if.then2
  %13 = load i16, i16* %retval, align 2, !dbg !3289
  ret i16 %13, !dbg !3289
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sdio_writew(%struct.sdio_func* %func, i16 zeroext %b, i32 %addr, i32* %err_ret) #0 !dbg !3290 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  %b.addr = alloca i16, align 2
  %addr.addr = alloca i32, align 4
  %err_ret.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3293, metadata !DIExpression()), !dbg !3294
  store i16 %b, i16* %b.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %b.addr, metadata !3295, metadata !DIExpression()), !dbg !3296
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3297, metadata !DIExpression()), !dbg !3298
  store i32* %err_ret, i32** %err_ret.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err_ret.addr, metadata !3299, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3301, metadata !DIExpression()), !dbg !3302
  %0 = load i16, i16* %b.addr, align 2, !dbg !3303
  %1 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3304
  %tmpbuf = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %1, i32 0, i32 11, !dbg !3305
  %2 = load i8*, i8** %tmpbuf, align 8, !dbg !3305
  %3 = bitcast i8* %2 to i16*, !dbg !3306
  store i16 %0, i16* %3, align 2, !dbg !3307
  %4 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3308
  %5 = load i32, i32* %addr.addr, align 4, !dbg !3309
  %6 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3310
  %tmpbuf1 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 11, !dbg !3311
  %7 = load i8*, i8** %tmpbuf1, align 8, !dbg !3311
  %call = call i32 @sdio_memcpy_toio(%struct.sdio_func* %4, i32 %5, i8* %7, i32 2) #5, !dbg !3312
  store i32 %call, i32* %ret, align 4, !dbg !3313
  %8 = load i32*, i32** %err_ret.addr, align 8, !dbg !3314
  %tobool = icmp ne i32* %8, null, !dbg !3314
  br i1 %tobool, label %if.then, label %if.end, !dbg !3316

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %ret, align 4, !dbg !3317
  %10 = load i32*, i32** %err_ret.addr, align 8, !dbg !3318
  store i32 %9, i32* %10, align 4, !dbg !3319
  br label %if.end, !dbg !3320

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3321
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sdio_readl(%struct.sdio_func* %func, i32 %addr, i32* %err_ret) #0 !dbg !3322 {
entry:
  %p.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i, metadata !3325, metadata !DIExpression()), !dbg !3331
  %retval = alloca i32, align 4
  %func.addr = alloca %struct.sdio_func*, align 8
  %addr.addr = alloca i32, align 4
  %err_ret.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3333, metadata !DIExpression()), !dbg !3334
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3335, metadata !DIExpression()), !dbg !3336
  store i32* %err_ret, i32** %err_ret.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err_ret.addr, metadata !3337, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3339, metadata !DIExpression()), !dbg !3340
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3341
  %1 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3342
  %tmpbuf = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %1, i32 0, i32 11, !dbg !3343
  %2 = load i8*, i8** %tmpbuf, align 8, !dbg !3343
  %3 = load i32, i32* %addr.addr, align 4, !dbg !3344
  %call = call i32 @sdio_memcpy_fromio(%struct.sdio_func* %0, i8* %2, i32 %3, i32 4) #5, !dbg !3345
  store i32 %call, i32* %ret, align 4, !dbg !3346
  %4 = load i32*, i32** %err_ret.addr, align 8, !dbg !3347
  %tobool = icmp ne i32* %4, null, !dbg !3347
  br i1 %tobool, label %if.then, label %if.end, !dbg !3349

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3350
  %6 = load i32*, i32** %err_ret.addr, align 8, !dbg !3351
  store i32 %5, i32* %6, align 4, !dbg !3352
  br label %if.end, !dbg !3353

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %ret, align 4, !dbg !3354
  %tobool1 = icmp ne i32 %7, 0, !dbg !3354
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3356

if.then2:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !3357
  br label %return, !dbg !3357

if.end3:                                          ; preds = %if.end
  %8 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3358
  %tmpbuf4 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %8, i32 0, i32 11, !dbg !3359
  %9 = load i8*, i8** %tmpbuf4, align 8, !dbg !3359
  %10 = bitcast i8* %9 to i32*, !dbg !3360
  store i32* %10, i32** %p.addr.i, align 8
  %11 = load i32*, i32** %p.addr.i, align 8, !dbg !3361
  %12 = load i32, i32* %11, align 4, !dbg !3362
  store i32 %12, i32* %retval, align 4, !dbg !3363
  br label %return, !dbg !3363

return:                                           ; preds = %if.end3, %if.then2
  %13 = load i32, i32* %retval, align 4, !dbg !3364
  ret i32 %13, !dbg !3364
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sdio_writel(%struct.sdio_func* %func, i32 %b, i32 %addr, i32* %err_ret) #0 !dbg !3365 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  %b.addr = alloca i32, align 4
  %addr.addr = alloca i32, align 4
  %err_ret.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3368, metadata !DIExpression()), !dbg !3369
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !3370, metadata !DIExpression()), !dbg !3371
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3372, metadata !DIExpression()), !dbg !3373
  store i32* %err_ret, i32** %err_ret.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err_ret.addr, metadata !3374, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3376, metadata !DIExpression()), !dbg !3377
  %0 = load i32, i32* %b.addr, align 4, !dbg !3378
  %1 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3379
  %tmpbuf = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %1, i32 0, i32 11, !dbg !3380
  %2 = load i8*, i8** %tmpbuf, align 8, !dbg !3380
  %3 = bitcast i8* %2 to i32*, !dbg !3381
  store i32 %0, i32* %3, align 4, !dbg !3382
  %4 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3383
  %5 = load i32, i32* %addr.addr, align 4, !dbg !3384
  %6 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3385
  %tmpbuf1 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 11, !dbg !3386
  %7 = load i8*, i8** %tmpbuf1, align 8, !dbg !3386
  %call = call i32 @sdio_memcpy_toio(%struct.sdio_func* %4, i32 %5, i8* %7, i32 4) #5, !dbg !3387
  store i32 %call, i32* %ret, align 4, !dbg !3388
  %8 = load i32*, i32** %err_ret.addr, align 8, !dbg !3389
  %tobool = icmp ne i32* %8, null, !dbg !3389
  br i1 %tobool, label %if.then, label %if.end, !dbg !3391

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %ret, align 4, !dbg !3392
  %10 = load i32*, i32** %err_ret.addr, align 8, !dbg !3393
  store i32 %9, i32* %10, align 4, !dbg !3394
  br label %if.end, !dbg !3395

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3396
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @sdio_f0_readb(%struct.sdio_func* %func, i32 %addr, i32* %err_ret) #0 !dbg !3397 {
entry:
  %retval = alloca i8, align 1
  %func.addr = alloca %struct.sdio_func*, align 8
  %addr.addr = alloca i32, align 4
  %err_ret.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %val = alloca i8, align 1
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3400, metadata !DIExpression()), !dbg !3401
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3402, metadata !DIExpression()), !dbg !3403
  store i32* %err_ret, i32** %err_ret.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err_ret.addr, metadata !3404, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3406, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.declare(metadata i8* %val, metadata !3408, metadata !DIExpression()), !dbg !3409
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3410
  %tobool = icmp ne %struct.sdio_func* %0, null, !dbg !3410
  br i1 %tobool, label %if.end3, label %if.then, !dbg !3412

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %err_ret.addr, align 8, !dbg !3413
  %tobool1 = icmp ne i32* %1, null, !dbg !3413
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !3416

if.then2:                                         ; preds = %if.then
  %2 = load i32*, i32** %err_ret.addr, align 8, !dbg !3417
  store i32 -22, i32* %2, align 4, !dbg !3418
  br label %if.end, !dbg !3419

if.end:                                           ; preds = %if.then2, %if.then
  store i8 -1, i8* %retval, align 1, !dbg !3420
  br label %return, !dbg !3420

if.end3:                                          ; preds = %entry
  %3 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3421
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %3, i32 0, i32 0, !dbg !3422
  %4 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3422
  %5 = load i32, i32* %addr.addr, align 4, !dbg !3423
  %call = call i32 @mmc_io_rw_direct(%struct.mmc_card* %4, i32 0, i32 0, i32 %5, i8 zeroext 0, i8* %val) #5, !dbg !3424
  store i32 %call, i32* %ret, align 4, !dbg !3425
  %6 = load i32*, i32** %err_ret.addr, align 8, !dbg !3426
  %tobool4 = icmp ne i32* %6, null, !dbg !3426
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3428

if.then5:                                         ; preds = %if.end3
  %7 = load i32, i32* %ret, align 4, !dbg !3429
  %8 = load i32*, i32** %err_ret.addr, align 8, !dbg !3430
  store i32 %7, i32* %8, align 4, !dbg !3431
  br label %if.end6, !dbg !3432

if.end6:                                          ; preds = %if.then5, %if.end3
  %9 = load i32, i32* %ret, align 4, !dbg !3433
  %tobool7 = icmp ne i32 %9, 0, !dbg !3433
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3435

if.then8:                                         ; preds = %if.end6
  store i8 -1, i8* %retval, align 1, !dbg !3436
  br label %return, !dbg !3436

if.end9:                                          ; preds = %if.end6
  %10 = load i8, i8* %val, align 1, !dbg !3437
  store i8 %10, i8* %retval, align 1, !dbg !3438
  br label %return, !dbg !3438

return:                                           ; preds = %if.end9, %if.then8, %if.end
  %11 = load i8, i8* %retval, align 1, !dbg !3439
  ret i8 %11, !dbg !3439
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sdio_f0_writeb(%struct.sdio_func* %func, i8 zeroext %b, i32 %addr, i32* %err_ret) #0 !dbg !3440 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  %b.addr = alloca i8, align 1
  %addr.addr = alloca i32, align 4
  %err_ret.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3443, metadata !DIExpression()), !dbg !3444
  store i8 %b, i8* %b.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %b.addr, metadata !3445, metadata !DIExpression()), !dbg !3446
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3447, metadata !DIExpression()), !dbg !3448
  store i32* %err_ret, i32** %err_ret.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err_ret.addr, metadata !3449, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3451, metadata !DIExpression()), !dbg !3452
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3453
  %tobool = icmp ne %struct.sdio_func* %0, null, !dbg !3453
  br i1 %tobool, label %if.end3, label %if.then, !dbg !3455

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %err_ret.addr, align 8, !dbg !3456
  %tobool1 = icmp ne i32* %1, null, !dbg !3456
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !3459

if.then2:                                         ; preds = %if.then
  %2 = load i32*, i32** %err_ret.addr, align 8, !dbg !3460
  store i32 -22, i32* %2, align 4, !dbg !3461
  br label %if.end, !dbg !3462

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end15, !dbg !3463

if.end3:                                          ; preds = %entry
  %3 = load i32, i32* %addr.addr, align 4, !dbg !3464
  %cmp = icmp ult i32 %3, 240, !dbg !3466
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3467

lor.lhs.false:                                    ; preds = %if.end3
  %4 = load i32, i32* %addr.addr, align 4, !dbg !3468
  %cmp4 = icmp ugt i32 %4, 255, !dbg !3469
  br i1 %cmp4, label %land.lhs.true, label %if.end10, !dbg !3470

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end3
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3471
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 0, !dbg !3472
  %6 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3472
  %call = call i32 @mmc_card_lenient_fn0(%struct.mmc_card* %6) #5, !dbg !3473
  %tobool5 = icmp ne i32 %call, 0, !dbg !3473
  br i1 %tobool5, label %if.end10, label %if.then6, !dbg !3474

if.then6:                                         ; preds = %land.lhs.true
  %7 = load i32*, i32** %err_ret.addr, align 8, !dbg !3475
  %tobool7 = icmp ne i32* %7, null, !dbg !3475
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3478

if.then8:                                         ; preds = %if.then6
  %8 = load i32*, i32** %err_ret.addr, align 8, !dbg !3479
  store i32 -22, i32* %8, align 4, !dbg !3480
  br label %if.end9, !dbg !3481

if.end9:                                          ; preds = %if.then8, %if.then6
  br label %if.end15, !dbg !3482

if.end10:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %9 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3483
  %card11 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %9, i32 0, i32 0, !dbg !3484
  %10 = load %struct.mmc_card*, %struct.mmc_card** %card11, align 8, !dbg !3484
  %11 = load i32, i32* %addr.addr, align 4, !dbg !3485
  %12 = load i8, i8* %b.addr, align 1, !dbg !3486
  %call12 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %10, i32 1, i32 0, i32 %11, i8 zeroext %12, i8* null) #5, !dbg !3487
  store i32 %call12, i32* %ret, align 4, !dbg !3488
  %13 = load i32*, i32** %err_ret.addr, align 8, !dbg !3489
  %tobool13 = icmp ne i32* %13, null, !dbg !3489
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !3491

if.then14:                                        ; preds = %if.end10
  %14 = load i32, i32* %ret, align 4, !dbg !3492
  %15 = load i32*, i32** %err_ret.addr, align 8, !dbg !3493
  store i32 %14, i32* %15, align 4, !dbg !3494
  br label %if.end15, !dbg !3495

if.end15:                                         ; preds = %if.end, %if.end9, %if.then14, %if.end10
  ret void, !dbg !3496
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_card_lenient_fn0(%struct.mmc_card* %c) #0 !dbg !3497 {
entry:
  %c.addr = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %c, %struct.mmc_card** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %c.addr, metadata !3503, metadata !DIExpression()), !dbg !3504
  %0 = load %struct.mmc_card*, %struct.mmc_card** %c.addr, align 8, !dbg !3505
  %quirks = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 6, !dbg !3506
  %1 = load i32, i32* %quirks, align 8, !dbg !3506
  %and = and i32 %1, 1, !dbg !3507
  ret i32 %and, !dbg !3508
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sdio_get_host_pm_caps(%struct.sdio_func* %func) #0 !dbg !3509 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca %struct.sdio_func*, align 8
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3512, metadata !DIExpression()), !dbg !3513
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3514
  %tobool = icmp ne %struct.sdio_func* %0, null, !dbg !3514
  br i1 %tobool, label %if.end, label %if.then, !dbg !3516

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3517
  br label %return, !dbg !3517

if.end:                                           ; preds = %entry
  %1 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3518
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %1, i32 0, i32 0, !dbg !3519
  %2 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3519
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %2, i32 0, i32 0, !dbg !3520
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3520
  %pm_caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %3, i32 0, i32 20, !dbg !3521
  %4 = load i32, i32* %pm_caps, align 16, !dbg !3521
  store i32 %4, i32* %retval, align 4, !dbg !3522
  br label %return, !dbg !3522

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !3523
  ret i32 %5, !dbg !3523
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sdio_set_host_pm_flags(%struct.sdio_func* %func, i32 %flags) #0 !dbg !3524 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca %struct.sdio_func*, align 8
  %flags.addr = alloca i32, align 4
  %host = alloca %struct.mmc_host*, align 8
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3527, metadata !DIExpression()), !dbg !3528
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3529, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host, metadata !3531, metadata !DIExpression()), !dbg !3532
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3533
  %tobool = icmp ne %struct.sdio_func* %0, null, !dbg !3533
  br i1 %tobool, label %if.end, label %if.then, !dbg !3535

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3536
  br label %return, !dbg !3536

if.end:                                           ; preds = %entry
  %1 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3537
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %1, i32 0, i32 0, !dbg !3538
  %2 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3538
  %host1 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %2, i32 0, i32 0, !dbg !3539
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host1, align 8, !dbg !3539
  store %struct.mmc_host* %3, %struct.mmc_host** %host, align 8, !dbg !3540
  %4 = load i32, i32* %flags.addr, align 4, !dbg !3541
  %5 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3543
  %pm_caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %5, i32 0, i32 20, !dbg !3544
  %6 = load i32, i32* %pm_caps, align 16, !dbg !3544
  %neg = xor i32 %6, -1, !dbg !3545
  %and = and i32 %4, %neg, !dbg !3546
  %tobool2 = icmp ne i32 %and, 0, !dbg !3546
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3547

if.then3:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !3548
  br label %return, !dbg !3548

if.end4:                                          ; preds = %if.end
  %7 = load i32, i32* %flags.addr, align 4, !dbg !3549
  %8 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3550
  %pm_flags = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 53, !dbg !3551
  %9 = load i32, i32* %pm_flags, align 64, !dbg !3552
  %or = or i32 %9, %7, !dbg !3552
  store i32 %or, i32* %pm_flags, align 64, !dbg !3552
  store i32 0, i32* %retval, align 4, !dbg !3553
  br label %return, !dbg !3553

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !3554
  ret i32 %10, !dbg !3554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sdio_retune_crc_disable(%struct.sdio_func* %func) #0 !dbg !3555 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3556, metadata !DIExpression()), !dbg !3557
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3558
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %0, i32 0, i32 0, !dbg !3559
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3559
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %1, i32 0, i32 0, !dbg !3560
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3560
  %retune_crc_disable = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %2, i32 0, i32 30, !dbg !3561
  %bf.load = load i16, i16* %retune_crc_disable, align 32, !dbg !3562
  %bf.clear = and i16 %bf.load, -513, !dbg !3562
  %bf.set = or i16 %bf.clear, 512, !dbg !3562
  store i16 %bf.set, i16* %retune_crc_disable, align 32, !dbg !3562
  ret void, !dbg !3563
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sdio_retune_crc_enable(%struct.sdio_func* %func) #0 !dbg !3564 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3565, metadata !DIExpression()), !dbg !3566
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3567
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %0, i32 0, i32 0, !dbg !3568
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3568
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %1, i32 0, i32 0, !dbg !3569
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3569
  %retune_crc_disable = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %2, i32 0, i32 30, !dbg !3570
  %bf.load = load i16, i16* %retune_crc_disable, align 32, !dbg !3571
  %bf.clear = and i16 %bf.load, -513, !dbg !3571
  store i16 %bf.clear, i16* %retune_crc_disable, align 32, !dbg !3571
  ret void, !dbg !3572
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sdio_retune_hold_now(%struct.sdio_func* %func) #0 !dbg !3573 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3574, metadata !DIExpression()), !dbg !3575
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3576
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %0, i32 0, i32 0, !dbg !3577
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3577
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %1, i32 0, i32 0, !dbg !3578
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3578
  call void @mmc_retune_hold_now(%struct.mmc_host* %2) #5, !dbg !3579
  ret void, !dbg !3580
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mmc_retune_hold_now(%struct.mmc_host* %host) #0 !dbg !3581 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3583, metadata !DIExpression()), !dbg !3584
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3585
  %retune_now = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 30, !dbg !3586
  %bf.load = load i16, i16* %retune_now, align 32, !dbg !3587
  %bf.clear = and i16 %bf.load, -65, !dbg !3587
  store i16 %bf.clear, i16* %retune_now, align 32, !dbg !3587
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3588
  %hold_retune = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 34, !dbg !3589
  %2 = load i32, i32* %hold_retune, align 16, !dbg !3590
  %add = add i32 %2, 1, !dbg !3590
  store i32 %add, i32* %hold_retune, align 16, !dbg !3590
  ret void, !dbg !3591
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sdio_retune_release(%struct.sdio_func* %func) #0 !dbg !3592 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3593, metadata !DIExpression()), !dbg !3594
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3595
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %0, i32 0, i32 0, !dbg !3596
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3596
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %1, i32 0, i32 0, !dbg !3597
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3597
  call void @mmc_retune_release(%struct.mmc_host* %2) #5, !dbg !3598
  ret void, !dbg !3599
}

; Function Attrs: noredzone
declare dso_local void @mmc_retune_release(%struct.mmc_host*) #2

; Function Attrs: noredzone
declare dso_local i32 @__mmc_claim_host(%struct.mmc_host*, %struct.mmc_ctx*, %struct.atomic_t*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !3600 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !3601, metadata !DIExpression()), !dbg !3602
  %0 = load i32, i32* %m.addr, align 4, !dbg !3603
  %conv = zext i32 %0 to i64, !dbg !3603
  %add = add i64 %conv, 4, !dbg !3604
  %sub = sub i64 %add, 1, !dbg !3605
  %div = sdiv i64 %sub, 4, !dbg !3606
  ret i64 %div, !dbg !3607
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_blksz_for_byte_mode(%struct.mmc_card* %c) #0 !dbg !3608 {
entry:
  %c.addr = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %c, %struct.mmc_card** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %c.addr, metadata !3609, metadata !DIExpression()), !dbg !3610
  %0 = load %struct.mmc_card*, %struct.mmc_card** %c.addr, align 8, !dbg !3611
  %quirks = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 6, !dbg !3612
  %1 = load i32, i32* %quirks, align 8, !dbg !3612
  %and = and i32 %1, 2, !dbg !3613
  ret i32 %and, !dbg !3614
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_card_broken_byte_mode_512(%struct.mmc_card* %c) #0 !dbg !3615 {
entry:
  %c.addr = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %c, %struct.mmc_card** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %c.addr, metadata !3616, metadata !DIExpression()), !dbg !3617
  %0 = load %struct.mmc_card*, %struct.mmc_card** %c.addr, align 8, !dbg !3618
  %quirks = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 6, !dbg !3619
  %1 = load i32, i32* %quirks, align 8, !dbg !3619
  %and = and i32 %1, 256, !dbg !3620
  ret i32 %and, !dbg !3621
}

; Function Attrs: noredzone
declare dso_local i32 @mmc_io_rw_extended(%struct.mmc_card*, i32, i32, i32, i32, i8*, i32, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind }
attributes #5 = { noredzone }
attributes #6 = { noredzone nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !53, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/mmc/core/sdio_io.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42, !48}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !4, line: 65, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !10, line: 16, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !16, line: 26, baseType: !5, size: 32, elements: !17)
!16 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!17 = !{!18, !19, !20}
!18 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !22, line: 44, baseType: !5, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !28, line: 343, baseType: !5, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !35, line: 524, baseType: !5, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38, !39, !40, !41}
!37 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!41 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !35, line: 502, baseType: !5, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 10, baseType: !5, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52}
!51 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!53 = !{!54, !55, !56, !58, !61, !62, !63, !64, !5}
!54 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !57, line: 29, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !59, line: 24, baseType: !60)
!59 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !57, line: 31, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !59, line: 27, baseType: !5)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !{i32 7, !"Dwarf Version", i32 4}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"Code Model", i32 2}
!69 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!70 = distinct !DISubprogram(name: "sdio_claim_host", scope: !1, file: !1, line: 27, type: !71, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_func", file: !75, line: 34, size: 6208, elements: !76)
!75 = !DIFile(filename: "./include/linux/mmc/sdio_func.h", directory: "/home/lizy2001/genbc/linux")
!76 = !{!77, !2426, !2427, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2440, !2441, !2442, !2443, !2444}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !74, file: !75, line: 35, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_card", file: !80, line: 244, size: 12672, elements: !81)
!80 = !DIFile(filename: "./include/linux/mmc/card.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2232, !2234, !2246, !2266, !2347, !2356, !2362, !2370, !2371, !2372, !2383, !2390, !2394, !2395, !2396, !2397, !2398, !2400, !2409, !2410, !2411, !2412, !2413, !2423, !2424, !2425}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !79, file: !80, line: 245, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_host", file: !85, line: 275, size: 10752, elements: !86)
!85 = !DIFile(filename: "./include/linux/mmc/host.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !1932, !1933, !1934, !2061, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2127, !2128, !2129, !2138, !2139, !2145, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2172, !2179, !2182, !2183, !2184, !2185, !2186, !2187, !2208, !2209, !2210, !2211, !2212, !2213}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !84, file: !85, line: 276, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !90)
!90 = !{!91, !1565, !1566, !1569, !1570, !1621, !1718, !1719, !1720, !1721, !1722, !1731, !1836, !1849, !1852, !1853, !1857, !1859, !1860, !1861, !1865, !1871, !1872, !1875, !1879, !1882, !1885, !1886, !1887, !1888, !1920, !1921, !1922, !1925, !1928, !1929, !1930, !1931}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !89, file: !28, line: 462, baseType: !92, size: 512)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !93, line: 64, size: 512, elements: !94)
!93 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !99, !106, !108, !168, !1402, !1555, !1560, !1561, !1562, !1563, !1564}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !92, file: !93, line: 65, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !92, file: !93, line: 66, baseType: !100, size: 128, offset: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !101, line: 178, size: 128, elements: !102)
!101 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !105}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !101, line: 179, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !100, file: !101, line: 179, baseType: !104, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !92, file: !93, line: 67, baseType: !107, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !92, file: !93, line: 68, baseType: !109, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !93, line: 192, size: 704, elements: !111)
!111 = !{!112, !113, !129, !130}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !110, file: !93, line: 193, baseType: !100, size: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !110, file: !93, line: 194, baseType: !114, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !115, line: 83, baseType: !116)
!115 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !115, line: 71, elements: !117)
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !115, line: 72, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !115, line: 72, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !119, file: !115, line: 73, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !115, line: 20, elements: !123)
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !122, file: !115, line: 21, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !126, line: 25, baseType: !127)
!126 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 25, elements: !128)
!128 = !{}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !110, file: !93, line: 195, baseType: !92, size: 512, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !110, file: !93, line: 196, baseType: !131, size: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !93, line: 156, size: 192, elements: !134)
!134 = !{!135, !140, !145}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !133, file: !93, line: 157, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!64, !109, !107}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !93, line: 158, baseType: !141, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!96, !109, !107}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !133, file: !93, line: 159, baseType: !146, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!64, !109, !107, !150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !93, line: 148, size: 20736, elements: !152)
!152 = !{!153, !158, !162, !163, !167}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !151, file: !93, line: 149, baseType: !154, size: 192)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 192, elements: !156)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!156 = !{!157}
!157 = !DISubrange(count: 3)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !151, file: !93, line: 150, baseType: !159, size: 4096, offset: 192)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 4096, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !151, file: !93, line: 151, baseType: !64, size: 32, offset: 4288)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !151, file: !93, line: 152, baseType: !164, size: 16384, offset: 4320)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 16384, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 2048)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !151, file: !93, line: 153, baseType: !64, size: 32, offset: 20704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !92, file: !93, line: 69, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !93, line: 138, size: 448, elements: !171)
!171 = !{!172, !176, !204, !206, !1348, !1381, !1385}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !170, file: !93, line: 139, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !107}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !170, file: !93, line: 140, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !180, line: 230, size: 128, elements: !181)
!180 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!181 = !{!182, !196}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !179, file: !180, line: 231, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!186, !107, !190, !155}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !101, line: 60, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !188, line: 73, baseType: !189)
!188 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !188, line: 15, baseType: !54)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !180, line: 30, size: 128, elements: !192)
!192 = !{!193, !194}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !180, line: 31, baseType: !96, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !191, file: !180, line: 32, baseType: !195, size: 16, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !101, line: 19, baseType: !60)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !179, file: !180, line: 232, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!186, !107, !190, !96, !200}
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 55, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !188, line: 72, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !188, line: 16, baseType: !203)
!203 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !170, file: !93, line: 141, baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !170, file: !93, line: 142, baseType: !207, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !180, line: 84, size: 320, elements: !211)
!211 = !{!212, !213, !217, !1345, !1346}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !180, line: 85, baseType: !96, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !210, file: !180, line: 86, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!195, !107, !190, !64}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !210, file: !180, line: 88, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!195, !107, !221, !64}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !180, line: 168, size: 448, elements: !223)
!223 = !{!224, !225, !226, !228, !238, !239}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !222, file: !180, line: 169, baseType: !191, size: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !222, file: !180, line: 170, baseType: !200, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !222, file: !180, line: 171, baseType: !227, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !222, file: !180, line: 172, baseType: !229, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!186, !232, !107, !221, !155, !235, !200}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !234, line: 526, flags: DIFlagFwdDecl)
!234 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !101, line: 46, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !188, line: 88, baseType: !237)
!237 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !222, file: !180, line: 174, baseType: !229, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !222, file: !180, line: 176, baseType: !240, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!64, !232, !107, !221, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !245, line: 305, size: 1472, elements: !246)
!245 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!246 = !{!247, !248, !249, !250, !251, !259, !260, !1319, !1325, !1326, !1331, !1332, !1335, !1339, !1340, !1341, !1342, !1343}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !244, file: !245, line: 308, baseType: !203, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !244, file: !245, line: 309, baseType: !203, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !244, file: !245, line: 313, baseType: !243, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !244, file: !245, line: 313, baseType: !243, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !244, file: !245, line: 315, baseType: !252, size: 192, align: 64, offset: 256)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !253, line: 24, size: 192, align: 64, elements: !254)
!253 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!254 = !{!255, !256, !258}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !252, file: !253, line: 25, baseType: !203, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !252, file: !253, line: 26, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !252, file: !253, line: 27, baseType: !257, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !244, file: !245, line: 323, baseType: !203, size: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !244, file: !245, line: 327, baseType: !261, size: 64, offset: 512)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !245, line: 388, size: 7296, elements: !263)
!263 = !{!264, !1315}
!264 = !DIDerivedType(tag: DW_TAG_member, scope: !262, file: !245, line: 389, baseType: !265, size: 7296)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !262, file: !245, line: 389, size: 7296, elements: !266)
!266 = !{!267, !268, !272, !277, !281, !282, !283, !284, !285, !293, !298, !299, !300, !301, !310, !311, !312, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !347, !355, !358, !389, !390, !1285, !1286, !1289, !1293, !1294, !1297, !1298, !1299, !1302, !1314}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !265, file: !245, line: 390, baseType: !243, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !265, file: !245, line: 391, baseType: !269, size: 64, offset: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !253, line: 31, size: 64, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !269, file: !253, line: 32, baseType: !257, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !265, file: !245, line: 392, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !274, line: 23, baseType: !275)
!274 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !59, line: 31, baseType: !276)
!276 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !265, file: !245, line: 394, baseType: !278, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!203, !232, !203, !203, !203, !203}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !265, file: !245, line: 398, baseType: !203, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !265, file: !245, line: 399, baseType: !203, size: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !265, file: !245, line: 405, baseType: !203, size: 64, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !265, file: !245, line: 406, baseType: !203, size: 64, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !265, file: !245, line: 407, baseType: !286, size: 64, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !234, line: 286, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !234, line: 286, size: 64, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !288, file: !234, line: 286, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !292, line: 18, baseType: !203)
!292 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!293 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !265, file: !245, line: 416, baseType: !294, size: 32, offset: 576)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !101, line: 168, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 166, size: 32, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !295, file: !101, line: 167, baseType: !64, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !265, file: !245, line: 428, baseType: !294, size: 32, offset: 608)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !265, file: !245, line: 437, baseType: !294, size: 32, offset: 640)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !265, file: !245, line: 447, baseType: !294, size: 32, offset: 672)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !265, file: !245, line: 450, baseType: !302, size: 64, offset: 704)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !303, line: 13, baseType: !304)
!303 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !101, line: 175, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 173, size: 64, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !305, file: !101, line: 174, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !274, line: 22, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !59, line: 30, baseType: !237)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !265, file: !245, line: 452, baseType: !64, size: 32, offset: 768)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !265, file: !245, line: 454, baseType: !114, offset: 800)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !265, file: !245, line: 457, baseType: !313, size: 256, offset: 832)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !314, line: 35, size: 256, elements: !315)
!314 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!315 = !{!316, !317, !318, !320}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !313, file: !314, line: 36, baseType: !302, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !313, file: !314, line: 42, baseType: !302, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !313, file: !314, line: 46, baseType: !319, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !115, line: 29, baseType: !122)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !313, file: !314, line: 47, baseType: !100, size: 128, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !265, file: !245, line: 459, baseType: !100, size: 128, offset: 1088)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !265, file: !245, line: 466, baseType: !203, size: 64, offset: 1216)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !265, file: !245, line: 467, baseType: !203, size: 64, offset: 1280)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !265, file: !245, line: 469, baseType: !203, size: 64, offset: 1344)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !265, file: !245, line: 470, baseType: !203, size: 64, offset: 1408)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !265, file: !245, line: 471, baseType: !304, size: 64, offset: 1472)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !265, file: !245, line: 472, baseType: !203, size: 64, offset: 1536)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !265, file: !245, line: 473, baseType: !203, size: 64, offset: 1600)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !265, file: !245, line: 474, baseType: !203, size: 64, offset: 1664)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !265, file: !245, line: 475, baseType: !203, size: 64, offset: 1728)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !265, file: !245, line: 477, baseType: !114, offset: 1792)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !265, file: !245, line: 478, baseType: !203, size: 64, offset: 1792)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !265, file: !245, line: 478, baseType: !203, size: 64, offset: 1856)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !265, file: !245, line: 478, baseType: !203, size: 64, offset: 1920)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !265, file: !245, line: 478, baseType: !203, size: 64, offset: 1984)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !265, file: !245, line: 479, baseType: !203, size: 64, offset: 2048)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !265, file: !245, line: 479, baseType: !203, size: 64, offset: 2112)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !265, file: !245, line: 479, baseType: !203, size: 64, offset: 2176)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !265, file: !245, line: 480, baseType: !203, size: 64, offset: 2240)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !265, file: !245, line: 480, baseType: !203, size: 64, offset: 2304)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !265, file: !245, line: 480, baseType: !203, size: 64, offset: 2368)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !265, file: !245, line: 480, baseType: !203, size: 64, offset: 2432)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !265, file: !245, line: 482, baseType: !344, size: 2816, offset: 2496)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 2816, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 44)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !265, file: !245, line: 488, baseType: !348, size: 256, offset: 5312)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !349, line: 60, size: 256, elements: !350)
!349 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !348, file: !349, line: 61, baseType: !352, size: 256)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 256, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 4)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !265, file: !245, line: 490, baseType: !356, size: 64, offset: 5568)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !245, line: 490, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !265, file: !245, line: 493, baseType: !359, size: 896, offset: 5632)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !360, line: 53, baseType: !361)
!360 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 13, size: 896, elements: !362)
!362 = !{!363, !364, !365, !366, !369, !370, !377, !378, !382, !383, !385}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !361, file: !360, line: 18, baseType: !273, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !361, file: !360, line: 28, baseType: !304, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !361, file: !360, line: 31, baseType: !313, size: 256, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !361, file: !360, line: 32, baseType: !367, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !360, line: 32, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !361, file: !360, line: 37, baseType: !60, size: 16, offset: 448)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !361, file: !360, line: 40, baseType: !371, size: 192, offset: 512)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !372, line: 53, size: 192, elements: !373)
!372 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!373 = !{!374, !375, !376}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !371, file: !372, line: 54, baseType: !302, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !371, file: !372, line: 55, baseType: !114, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !371, file: !372, line: 59, baseType: !100, size: 128, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !361, file: !360, line: 41, baseType: !227, size: 64, offset: 704)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !361, file: !360, line: 42, baseType: !379, size: 64, offset: 768)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !360, line: 42, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !361, file: !360, line: 44, baseType: !294, size: 32, offset: 832)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !361, file: !360, line: 50, baseType: !384, size: 16, offset: 864)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !274, line: 19, baseType: !58)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !361, file: !360, line: 51, baseType: !386, size: 16, offset: 880)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !274, line: 18, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !59, line: 23, baseType: !388)
!388 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !245, line: 495, baseType: !203, size: 64, offset: 6528)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !265, file: !245, line: 497, baseType: !391, size: 64, offset: 6592)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !245, line: 381, size: 384, elements: !393)
!393 = !{!394, !395, !1284}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !392, file: !245, line: 382, baseType: !294, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !392, file: !245, line: 383, baseType: !396, size: 128, offset: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !245, line: 376, size: 128, elements: !397)
!397 = !{!398, !1282}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !396, file: !245, line: 377, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !401, line: 640, size: 48640, elements: !402)
!401 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!402 = !{!403, !410, !412, !413, !419, !420, !421, !422, !423, !424, !425, !426, !430, !448, !459, !554, !555, !556, !567, !568, !570, !571, !572, !573, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !652, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !708, !710, !711, !712, !724, !726, !727, !728, !729, !730, !736, !737, !738, !739, !740, !741, !742, !754, !759, !763, !764, !765, !768, !772, !775, !778, !781, !784, !787, !790, !793, !799, !800, !801, !807, !808, !809, !810, !811, !820, !821, !822, !823, !824, !829, !830, !831, !834, !835, !838, !841, !844, !847, !850, !853, !854, !934, !937, !940, !941, !944, !945, !946, !952, !953, !954, !967, !968, !969, !981, !986, !989, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !400, file: !401, line: 646, baseType: !404, size: 128)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !405, line: 56, size: 128, elements: !406)
!405 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !405, line: 57, baseType: !203, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !404, file: !405, line: 58, baseType: !409, size: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !274, line: 21, baseType: !63)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !400, file: !401, line: 649, baseType: !411, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !400, file: !401, line: 657, baseType: !227, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !400, file: !401, line: 658, baseType: !414, size: 32, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !415, line: 113, baseType: !416)
!415 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !415, line: 111, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !416, file: !415, line: 112, baseType: !294, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !401, line: 660, baseType: !5, size: 32, offset: 288)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !400, file: !401, line: 661, baseType: !5, size: 32, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !400, file: !401, line: 684, baseType: !64, size: 32, offset: 352)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !400, file: !401, line: 686, baseType: !64, size: 32, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !400, file: !401, line: 687, baseType: !64, size: 32, offset: 416)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !400, file: !401, line: 688, baseType: !64, size: 32, offset: 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !400, file: !401, line: 689, baseType: !5, size: 32, offset: 480)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !400, file: !401, line: 691, baseType: !427, size: 64, offset: 512)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !401, line: 691, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !400, file: !401, line: 692, baseType: !431, size: 832, offset: 576)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !401, line: 451, size: 832, elements: !432)
!432 = !{!433, !438, !439, !440, !441, !442, !443, !444, !445, !446}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !431, file: !401, line: 453, baseType: !434, size: 128)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !401, line: 325, size: 128, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !434, file: !401, line: 326, baseType: !203, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !434, file: !401, line: 327, baseType: !409, size: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !431, file: !401, line: 454, baseType: !252, size: 192, align: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !431, file: !401, line: 455, baseType: !100, size: 128, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !431, file: !401, line: 456, baseType: !5, size: 32, offset: 448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !431, file: !401, line: 458, baseType: !273, size: 64, offset: 512)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !431, file: !401, line: 459, baseType: !273, size: 64, offset: 576)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !431, file: !401, line: 460, baseType: !273, size: 64, offset: 640)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !431, file: !401, line: 461, baseType: !273, size: 64, offset: 704)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !431, file: !401, line: 463, baseType: !273, size: 64, offset: 768)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !431, file: !401, line: 465, baseType: !447, offset: 832)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !401, line: 415, elements: !128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !400, file: !401, line: 693, baseType: !449, size: 384, offset: 1408)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !401, line: 489, size: 384, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456, !457}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !449, file: !401, line: 490, baseType: !100, size: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !449, file: !401, line: 491, baseType: !203, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !449, file: !401, line: 492, baseType: !203, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !449, file: !401, line: 493, baseType: !5, size: 32, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !449, file: !401, line: 494, baseType: !60, size: 16, offset: 288)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !449, file: !401, line: 495, baseType: !60, size: 16, offset: 304)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !449, file: !401, line: 497, baseType: !458, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !400, file: !401, line: 697, baseType: !460, size: 1792, offset: 1792)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !401, line: 507, size: 1792, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !551, !552}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !460, file: !401, line: 508, baseType: !252, size: 192, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !460, file: !401, line: 515, baseType: !273, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !460, file: !401, line: 516, baseType: !273, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !460, file: !401, line: 517, baseType: !273, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !460, file: !401, line: 518, baseType: !273, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !460, file: !401, line: 519, baseType: !273, size: 64, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !460, file: !401, line: 526, baseType: !308, size: 64, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !460, file: !401, line: 527, baseType: !273, size: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !401, line: 528, baseType: !5, size: 32, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !460, file: !401, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !460, file: !401, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !460, file: !401, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !460, file: !401, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !460, file: !401, line: 563, baseType: !476, size: 512, offset: 704)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !477)
!477 = !{!478, !486, !487, !492, !544, !548, !549, !550}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !476, file: !4, line: 119, baseType: !479, size: 256)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !480, line: 9, size: 256, elements: !481)
!480 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !479, file: !480, line: 10, baseType: !252, size: 192, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !479, file: !480, line: 11, baseType: !484, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !485, line: 29, baseType: !308)
!485 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !476, file: !4, line: 120, baseType: !484, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !476, file: !4, line: 121, baseType: !488, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!3, !491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !476, file: !4, line: 122, baseType: !493, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !495)
!495 = !{!496, !516, !517, !520, !530, !531, !539, !543}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !494, file: !4, line: 160, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !498, file: !4, line: 215, baseType: !319)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !498, file: !4, line: 216, baseType: !5, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !498, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !498, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !498, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !498, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !498, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !498, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !498, file: !4, line: 233, baseType: !484, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !498, file: !4, line: 234, baseType: !491, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !498, file: !4, line: 235, baseType: !484, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !498, file: !4, line: 236, baseType: !491, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !498, file: !4, line: 237, baseType: !513, size: 4096, offset: 512)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 4096, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 8)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !494, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !494, file: !4, line: 162, baseType: !518, size: 32, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !101, line: 27, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !188, line: 96, baseType: !64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !494, file: !4, line: 163, baseType: !521, size: 32, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !522, line: 276, baseType: !523)
!522 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !522, line: 276, size: 32, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !523, file: !522, line: 276, baseType: !526, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !522, line: 70, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !522, line: 65, size: 32, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !527, file: !522, line: 66, baseType: !5, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !494, file: !4, line: 164, baseType: !491, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !494, file: !4, line: 165, baseType: !532, size: 128, offset: 256)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !480, line: 14, size: 128, elements: !533)
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !532, file: !480, line: 15, baseType: !535, size: 128)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !253, line: 125, size: 128, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !535, file: !253, line: 126, baseType: !269, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !535, file: !253, line: 127, baseType: !257, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !494, file: !4, line: 166, baseType: !540, size: 64, offset: 384)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!484}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !494, file: !4, line: 167, baseType: !484, size: 64, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !476, file: !4, line: 123, baseType: !545, size: 8, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !274, line: 17, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !59, line: 21, baseType: !547)
!547 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !476, file: !4, line: 124, baseType: !545, size: 8, offset: 456)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !476, file: !4, line: 125, baseType: !545, size: 8, offset: 464)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !476, file: !4, line: 126, baseType: !545, size: 8, offset: 472)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !460, file: !401, line: 572, baseType: !476, size: 512, offset: 1216)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !460, file: !401, line: 580, baseType: !553, size: 64, offset: 1728)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !400, file: !401, line: 721, baseType: !5, size: 32, offset: 3584)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !400, file: !401, line: 722, baseType: !64, size: 32, offset: 3616)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !400, file: !401, line: 723, baseType: !557, size: 64, offset: 3648)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !560, line: 17, baseType: !561)
!560 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !560, line: 17, size: 64, elements: !562)
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !561, file: !560, line: 17, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 64, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 1)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !400, file: !401, line: 724, baseType: !559, size: 64, offset: 3712)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !400, file: !401, line: 749, baseType: !569, offset: 3776)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !401, line: 290, elements: !128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !400, file: !401, line: 751, baseType: !100, size: 128, offset: 3776)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !400, file: !401, line: 757, baseType: !261, size: 64, offset: 3904)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !400, file: !401, line: 758, baseType: !261, size: 64, offset: 3968)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !400, file: !401, line: 761, baseType: !574, size: 320, offset: 4032)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !349, line: 34, size: 320, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !574, file: !349, line: 35, baseType: !273, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !574, file: !349, line: 36, baseType: !578, size: 256, offset: 64)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 256, elements: !353)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !400, file: !401, line: 766, baseType: !64, size: 32, offset: 4352)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !400, file: !401, line: 767, baseType: !64, size: 32, offset: 4384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !400, file: !401, line: 768, baseType: !64, size: 32, offset: 4416)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !400, file: !401, line: 770, baseType: !64, size: 32, offset: 4448)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !400, file: !401, line: 772, baseType: !203, size: 64, offset: 4480)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !400, file: !401, line: 775, baseType: !5, size: 32, offset: 4544)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !400, file: !401, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !400, file: !401, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !400, file: !401, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !400, file: !401, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !400, file: !401, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !400, file: !401, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !400, file: !401, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !400, file: !401, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !400, file: !401, line: 831, baseType: !203, size: 64, offset: 4672)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !400, file: !401, line: 833, baseType: !595, size: 384, offset: 4736)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !596)
!596 = !{!597, !602}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !595, file: !10, line: 26, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!54, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !10, line: 27, baseType: !603, size: 320, offset: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !595, file: !10, line: 27, size: 320, elements: !604)
!604 = !{!605, !615, !642}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !603, file: !10, line: 36, baseType: !606, size: 320)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !603, file: !10, line: 29, size: 320, elements: !607)
!607 = !{!608, !610, !611, !612, !613, !614}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !606, file: !10, line: 30, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !606, file: !10, line: 31, baseType: !409, size: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !606, file: !10, line: 32, baseType: !409, size: 32, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !606, file: !10, line: 33, baseType: !409, size: 32, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !606, file: !10, line: 34, baseType: !273, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !606, file: !10, line: 35, baseType: !609, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !603, file: !10, line: 46, baseType: !616, size: 192)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !603, file: !10, line: 38, size: 192, elements: !617)
!617 = !{!618, !619, !620, !641}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !616, file: !10, line: 39, baseType: !518, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !616, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !10, line: 41, baseType: !621, size: 64, offset: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !10, line: 41, size: 64, elements: !622)
!622 = !{!623, !631}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !621, file: !10, line: 42, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !626, line: 7, size: 128, elements: !627)
!626 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!627 = !{!628, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !625, file: !626, line: 8, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !188, line: 93, baseType: !237)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !625, file: !626, line: 9, baseType: !237, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !621, file: !10, line: 43, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !634, line: 7, size: 64, elements: !635)
!634 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!635 = !{!636, !640}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !633, file: !634, line: 8, baseType: !637, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !634, line: 5, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !274, line: 20, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !59, line: 26, baseType: !64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !633, file: !634, line: 9, baseType: !638, size: 32, offset: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !616, file: !10, line: 45, baseType: !273, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !603, file: !10, line: 54, baseType: !643, size: 256)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !603, file: !10, line: 48, size: 256, elements: !644)
!644 = !{!645, !648, !649, !650, !651}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !643, file: !10, line: 49, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !643, file: !10, line: 50, baseType: !64, size: 32, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !643, file: !10, line: 51, baseType: !64, size: 32, offset: 96)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !643, file: !10, line: 52, baseType: !203, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !643, file: !10, line: 53, baseType: !203, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !400, file: !401, line: 835, baseType: !653, size: 32, offset: 5120)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !101, line: 22, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !188, line: 28, baseType: !64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !400, file: !401, line: 836, baseType: !653, size: 32, offset: 5152)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !400, file: !401, line: 840, baseType: !203, size: 64, offset: 5184)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !400, file: !401, line: 849, baseType: !399, size: 64, offset: 5248)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !400, file: !401, line: 852, baseType: !399, size: 64, offset: 5312)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !400, file: !401, line: 857, baseType: !100, size: 128, offset: 5376)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !400, file: !401, line: 858, baseType: !100, size: 128, offset: 5504)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !400, file: !401, line: 859, baseType: !399, size: 64, offset: 5632)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !400, file: !401, line: 867, baseType: !100, size: 128, offset: 5696)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !400, file: !401, line: 868, baseType: !100, size: 128, offset: 5824)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !400, file: !401, line: 871, baseType: !665, size: 64, offset: 5952)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !667, line: 59, size: 768, elements: !668)
!667 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!668 = !{!669, !670, !671, !672, !683, !684, !691, !700}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !666, file: !667, line: 61, baseType: !414, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !666, file: !667, line: 62, baseType: !5, size: 32, offset: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !666, file: !667, line: 63, baseType: !114, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !666, file: !667, line: 65, baseType: !673, size: 256, offset: 64)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 256, elements: !353)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !101, line: 182, size: 64, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !674, file: !101, line: 183, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !101, line: 186, size: 128, elements: !679)
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !678, file: !101, line: 187, baseType: !677, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !678, file: !101, line: 187, baseType: !682, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !666, file: !667, line: 66, baseType: !674, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !666, file: !667, line: 68, baseType: !685, size: 128, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !686, line: 40, baseType: !687)
!686 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !686, line: 36, size: 128, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !687, file: !686, line: 37, baseType: !114)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !687, file: !686, line: 38, baseType: !100, size: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !666, file: !667, line: 69, baseType: !692, size: 128, align: 64, offset: 512)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !101, line: 216, size: 128, align: 64, elements: !693)
!693 = !{!694, !696}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !692, file: !101, line: 217, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !692, file: !101, line: 218, baseType: !697, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !695}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !666, file: !667, line: 70, baseType: !701, size: 128, offset: 640)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, size: 128, elements: !565)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !667, line: 54, size: 128, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !702, file: !667, line: 55, baseType: !64, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !702, file: !667, line: 56, baseType: !706, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !667, line: 56, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !400, file: !401, line: 872, baseType: !709, size: 512, offset: 6016)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 512, elements: !353)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !400, file: !401, line: 873, baseType: !100, size: 128, offset: 6528)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !400, file: !401, line: 874, baseType: !100, size: 128, offset: 6656)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !400, file: !401, line: 876, baseType: !713, size: 64, offset: 6784)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !715, line: 26, size: 192, elements: !716)
!715 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !714, file: !715, line: 27, baseType: !5, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !714, file: !715, line: 28, baseType: !719, size: 128, offset: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !720, line: 43, size: 128, elements: !721)
!720 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !719, file: !720, line: 44, baseType: !319)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !719, file: !720, line: 45, baseType: !100, size: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !400, file: !401, line: 879, baseType: !725, size: 64, offset: 6848)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !400, file: !401, line: 882, baseType: !725, size: 64, offset: 6912)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !400, file: !401, line: 884, baseType: !273, size: 64, offset: 6976)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !400, file: !401, line: 885, baseType: !273, size: 64, offset: 7040)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !400, file: !401, line: 890, baseType: !273, size: 64, offset: 7104)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !400, file: !401, line: 891, baseType: !731, size: 128, offset: 7168)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !401, line: 242, size: 128, elements: !732)
!732 = !{!733, !734, !735}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !731, file: !401, line: 244, baseType: !273, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !731, file: !401, line: 245, baseType: !273, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !731, file: !401, line: 246, baseType: !319, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !400, file: !401, line: 900, baseType: !203, size: 64, offset: 7296)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !400, file: !401, line: 901, baseType: !203, size: 64, offset: 7360)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !400, file: !401, line: 904, baseType: !273, size: 64, offset: 7424)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !400, file: !401, line: 907, baseType: !273, size: 64, offset: 7488)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !400, file: !401, line: 910, baseType: !203, size: 64, offset: 7552)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !400, file: !401, line: 911, baseType: !203, size: 64, offset: 7616)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !400, file: !401, line: 914, baseType: !743, size: 640, offset: 7680)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !744, line: 123, size: 640, elements: !745)
!744 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!745 = !{!746, !752, !753}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !743, file: !744, line: 124, baseType: !747, size: 576)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !748, size: 576, elements: !156)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !744, line: 108, size: 192, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !748, file: !744, line: 109, baseType: !273, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !748, file: !744, line: 110, baseType: !532, size: 128, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !743, file: !744, line: 125, baseType: !5, size: 32, offset: 576)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !743, file: !744, line: 126, baseType: !5, size: 32, offset: 608)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !400, file: !401, line: 917, baseType: !755, size: 192, offset: 8320)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !744, line: 134, size: 192, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !755, file: !744, line: 135, baseType: !692, size: 128, align: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !755, file: !744, line: 136, baseType: !5, size: 32, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !400, file: !401, line: 923, baseType: !760, size: 64, offset: 8512)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !401, line: 923, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !400, file: !401, line: 926, baseType: !760, size: 64, offset: 8576)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !400, file: !401, line: 929, baseType: !760, size: 64, offset: 8640)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !400, file: !401, line: 933, baseType: !766, size: 64, offset: 8704)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !401, line: 933, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !400, file: !401, line: 943, baseType: !769, size: 128, offset: 8768)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 16)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !400, file: !401, line: 945, baseType: !773, size: 64, offset: 8896)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !401, line: 49, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !400, file: !401, line: 956, baseType: !776, size: 64, offset: 8960)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !401, line: 45, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !400, file: !401, line: 959, baseType: !779, size: 64, offset: 9024)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !401, line: 959, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !400, file: !401, line: 962, baseType: !782, size: 64, offset: 9088)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !401, line: 66, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !400, file: !401, line: 966, baseType: !785, size: 64, offset: 9152)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !401, line: 50, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !400, file: !401, line: 969, baseType: !788, size: 64, offset: 9216)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !744, line: 223, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !400, file: !401, line: 970, baseType: !791, size: 64, offset: 9280)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !401, line: 62, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !400, file: !401, line: 971, baseType: !794, size: 64, offset: 9344)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !795, line: 25, baseType: !796)
!795 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !795, line: 23, size: 64, elements: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !796, file: !795, line: 24, baseType: !564, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !400, file: !401, line: 972, baseType: !794, size: 64, offset: 9408)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !400, file: !401, line: 974, baseType: !794, size: 64, offset: 9472)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !400, file: !401, line: 975, baseType: !802, size: 192, offset: 9536)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !803, line: 30, size: 192, elements: !804)
!803 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !802, file: !803, line: 31, baseType: !100, size: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !802, file: !803, line: 32, baseType: !794, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !400, file: !401, line: 976, baseType: !203, size: 64, offset: 9728)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !400, file: !401, line: 977, baseType: !200, size: 64, offset: 9792)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !400, file: !401, line: 978, baseType: !5, size: 32, offset: 9856)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !400, file: !401, line: 980, baseType: !695, size: 64, offset: 9920)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !400, file: !401, line: 989, baseType: !812, size: 128, offset: 9984)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !813, line: 35, size: 128, elements: !814)
!813 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!814 = !{!815, !816, !817}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !812, file: !813, line: 36, baseType: !64, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !812, file: !813, line: 37, baseType: !294, size: 32, offset: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !812, file: !813, line: 38, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !813, line: 23, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !400, file: !401, line: 992, baseType: !273, size: 64, offset: 10112)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !400, file: !401, line: 993, baseType: !273, size: 64, offset: 10176)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !400, file: !401, line: 996, baseType: !114, offset: 10240)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !400, file: !401, line: 999, baseType: !319, offset: 10240)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !400, file: !401, line: 1001, baseType: !825, size: 64, offset: 10240)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !401, line: 636, size: 64, elements: !826)
!826 = !{!827}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !825, file: !401, line: 637, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !400, file: !401, line: 1005, baseType: !535, size: 128, offset: 10304)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !400, file: !401, line: 1007, baseType: !399, size: 64, offset: 10432)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !400, file: !401, line: 1009, baseType: !832, size: 64, offset: 10496)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !401, line: 1009, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !400, file: !401, line: 1043, baseType: !227, size: 64, offset: 10560)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !400, file: !401, line: 1046, baseType: !836, size: 64, offset: 10624)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !401, line: 41, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !400, file: !401, line: 1050, baseType: !839, size: 64, offset: 10688)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !401, line: 42, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !400, file: !401, line: 1054, baseType: !842, size: 64, offset: 10752)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !401, line: 55, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !400, file: !401, line: 1056, baseType: !845, size: 64, offset: 10816)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !401, line: 40, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !400, file: !401, line: 1058, baseType: !848, size: 64, offset: 10880)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !401, line: 47, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !400, file: !401, line: 1061, baseType: !851, size: 64, offset: 10944)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !401, line: 43, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !400, file: !401, line: 1064, baseType: !203, size: 64, offset: 11008)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !400, file: !401, line: 1065, baseType: !855, size: 64, offset: 11072)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !803, line: 14, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !803, line: 12, size: 384, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !803, line: 13, baseType: !860, size: 384)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !857, file: !803, line: 13, size: 384, elements: !861)
!861 = !{!862, !863, !864, !865}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !860, file: !803, line: 13, baseType: !64, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !860, file: !803, line: 13, baseType: !64, size: 32, offset: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !860, file: !803, line: 13, baseType: !64, size: 32, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !860, file: !803, line: 13, baseType: !866, size: 256, offset: 128)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !867, line: 32, size: 256, elements: !868)
!867 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!868 = !{!869, !875, !888, !894, !903, !923, !928}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !866, file: !867, line: 37, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !867, line: 34, size: 64, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !870, file: !867, line: 35, baseType: !654, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !870, file: !867, line: 36, baseType: !874, size: 32, offset: 32)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !188, line: 49, baseType: !5)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !866, file: !867, line: 45, baseType: !876, size: 192)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !867, line: 40, size: 192, elements: !877)
!877 = !{!878, !880, !881, !887}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !876, file: !867, line: 41, baseType: !879, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !188, line: 95, baseType: !64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !876, file: !867, line: 42, baseType: !64, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !876, file: !867, line: 43, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !867, line: 11, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !867, line: 8, size: 64, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !883, file: !867, line: 9, baseType: !64, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !883, file: !867, line: 10, baseType: !227, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !876, file: !867, line: 44, baseType: !64, size: 32, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !866, file: !867, line: 52, baseType: !889, size: 128)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !867, line: 48, size: 128, elements: !890)
!890 = !{!891, !892, !893}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !889, file: !867, line: 49, baseType: !654, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !889, file: !867, line: 50, baseType: !874, size: 32, offset: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !889, file: !867, line: 51, baseType: !882, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !866, file: !867, line: 61, baseType: !895, size: 256)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !867, line: 55, size: 256, elements: !896)
!896 = !{!897, !898, !899, !900, !902}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !895, file: !867, line: 56, baseType: !654, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !895, file: !867, line: 57, baseType: !874, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !895, file: !867, line: 58, baseType: !64, size: 32, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !895, file: !867, line: 59, baseType: !901, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !188, line: 94, baseType: !189)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !895, file: !867, line: 60, baseType: !901, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !866, file: !867, line: 95, baseType: !904, size: 256)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !867, line: 64, size: 256, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !904, file: !867, line: 65, baseType: !227, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !867, line: 77, baseType: !908, size: 192, offset: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !904, file: !867, line: 77, size: 192, elements: !909)
!909 = !{!910, !911, !918}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !908, file: !867, line: 82, baseType: !388, size: 16)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !908, file: !867, line: 88, baseType: !912, size: 192)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !908, file: !867, line: 84, size: 192, elements: !913)
!913 = !{!914, !916, !917}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !912, file: !867, line: 85, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !514)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !912, file: !867, line: 86, baseType: !227, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !912, file: !867, line: 87, baseType: !227, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !908, file: !867, line: 93, baseType: !919, size: 96)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !908, file: !867, line: 90, size: 96, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !919, file: !867, line: 91, baseType: !915, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !919, file: !867, line: 92, baseType: !63, size: 32, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !866, file: !867, line: 101, baseType: !924, size: 128)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !867, line: 98, size: 128, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !924, file: !867, line: 99, baseType: !54, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !924, file: !867, line: 100, baseType: !64, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !866, file: !867, line: 108, baseType: !929, size: 128)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !867, line: 104, size: 128, elements: !930)
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !929, file: !867, line: 105, baseType: !227, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !929, file: !867, line: 106, baseType: !64, size: 32, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !929, file: !867, line: 107, baseType: !5, size: 32, offset: 96)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !400, file: !401, line: 1067, baseType: !935, offset: 11136)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !936, line: 12, elements: !128)
!936 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!937 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !400, file: !401, line: 1099, baseType: !938, size: 64, offset: 11136)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !401, line: 56, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !400, file: !401, line: 1103, baseType: !100, size: 128, offset: 11200)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !400, file: !401, line: 1104, baseType: !942, size: 64, offset: 11328)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !401, line: 46, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !400, file: !401, line: 1105, baseType: !371, size: 192, offset: 11392)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !400, file: !401, line: 1106, baseType: !5, size: 32, offset: 11584)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !400, file: !401, line: 1109, baseType: !947, size: 128, offset: 11648)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 128, elements: !950)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !401, line: 51, flags: DIFlagFwdDecl)
!950 = !{!951}
!951 = !DISubrange(count: 2)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !400, file: !401, line: 1110, baseType: !371, size: 192, offset: 11776)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !400, file: !401, line: 1111, baseType: !100, size: 128, offset: 11968)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !400, file: !401, line: 1173, baseType: !955, size: 64, offset: 12096)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !957, line: 62, size: 256, align: 256, elements: !958)
!957 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!958 = !{!959, !960, !961, !966}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !956, file: !957, line: 75, baseType: !63, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !956, file: !957, line: 90, baseType: !63, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !956, file: !957, line: 124, baseType: !962, size: 64, offset: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !956, file: !957, line: 109, size: 64, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !962, file: !957, line: 110, baseType: !275, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !962, file: !957, line: 112, baseType: !275, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !956, file: !957, line: 144, baseType: !63, size: 32, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !400, file: !401, line: 1174, baseType: !409, size: 32, offset: 12160)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !400, file: !401, line: 1179, baseType: !203, size: 64, offset: 12224)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !400, file: !401, line: 1182, baseType: !970, size: 128, offset: 12288)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !349, line: 76, size: 128, elements: !971)
!971 = !{!972, !977, !980}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !970, file: !349, line: 85, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !974, line: 7, size: 64, elements: !975)
!974 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !973, file: !974, line: 12, baseType: !561, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !970, file: !349, line: 88, baseType: !978, size: 8, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !101, line: 30, baseType: !979)
!979 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !970, file: !349, line: 95, baseType: !978, size: 8, offset: 72)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !401, line: 1184, baseType: !982, size: 128, offset: 12416)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 1184, size: 128, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !982, file: !401, line: 1185, baseType: !414, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !982, file: !401, line: 1186, baseType: !692, size: 128, align: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !400, file: !401, line: 1190, baseType: !987, size: 64, offset: 12544)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !401, line: 53, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !400, file: !401, line: 1192, baseType: !990, size: 128, offset: 12608)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !349, line: 64, size: 128, elements: !991)
!991 = !{!992, !1085, !1086}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !990, file: !349, line: 65, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !245, line: 68, size: 512, align: 128, elements: !995)
!995 = !{!996, !997, !1077, !1084}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !994, file: !245, line: 69, baseType: !203, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !245, line: 77, baseType: !998, size: 320, offset: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !245, line: 77, size: 320, elements: !999)
!999 = !{!1000, !1009, !1014, !1042, !1050, !1056, !1069, !1076}
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !245, line: 78, baseType: !1001, size: 320)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !245, line: 78, size: 320, elements: !1002)
!1002 = !{!1003, !1004, !1007, !1008}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1001, file: !245, line: 84, baseType: !100, size: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1001, file: !245, line: 86, baseType: !1005, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !245, line: 26, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1001, file: !245, line: 87, baseType: !203, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1001, file: !245, line: 94, baseType: !203, size: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !245, line: 96, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !245, line: 96, size: 64, elements: !1011)
!1011 = !{!1012}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1010, file: !245, line: 101, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !101, line: 143, baseType: !273)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !245, line: 103, baseType: !1015, size: 320)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !245, line: 103, size: 320, elements: !1016)
!1016 = !{!1017, !1027, !1030, !1031}
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !245, line: 104, baseType: !1018, size: 128)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !245, line: 104, size: 128, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1018, file: !245, line: 105, baseType: !100, size: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !245, line: 106, baseType: !1022, size: 128)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !245, line: 106, size: 128, elements: !1023)
!1023 = !{!1024, !1025, !1026}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1022, file: !245, line: 107, baseType: !993, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1022, file: !245, line: 109, baseType: !64, size: 32, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1022, file: !245, line: 110, baseType: !64, size: 32, offset: 96)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1015, file: !245, line: 117, baseType: !1028, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !245, line: 117, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1015, file: !245, line: 119, baseType: !227, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !245, line: 120, baseType: !1032, size: 64, offset: 256)
!1032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !245, line: 120, size: 64, elements: !1033)
!1033 = !{!1034, !1035, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1032, file: !245, line: 121, baseType: !227, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1032, file: !245, line: 122, baseType: !203, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !1032, file: !245, line: 123, baseType: !1037, size: 32)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1032, file: !245, line: 123, size: 32, elements: !1038)
!1038 = !{!1039, !1040, !1041}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1037, file: !245, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1037, file: !245, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1037, file: !245, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !245, line: 130, baseType: !1043, size: 192)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !245, line: 130, size: 192, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1043, file: !245, line: 131, baseType: !203, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1043, file: !245, line: 134, baseType: !547, size: 8, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1043, file: !245, line: 135, baseType: !547, size: 8, offset: 72)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1043, file: !245, line: 136, baseType: !294, size: 32, offset: 96)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1043, file: !245, line: 137, baseType: !5, size: 32, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !245, line: 139, baseType: !1051, size: 256)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !245, line: 139, size: 256, elements: !1052)
!1052 = !{!1053, !1054, !1055}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1051, file: !245, line: 140, baseType: !203, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1051, file: !245, line: 141, baseType: !294, size: 32, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1051, file: !245, line: 143, baseType: !100, size: 128, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !245, line: 145, baseType: !1057, size: 256)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !245, line: 145, size: 256, elements: !1058)
!1058 = !{!1059, !1060, !1062, !1063, !1068}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1057, file: !245, line: 146, baseType: !203, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1057, file: !245, line: 147, baseType: !1061, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !234, line: 509, baseType: !993)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1057, file: !245, line: 148, baseType: !203, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !245, line: 149, baseType: !1064, size: 64, offset: 192)
!1064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1057, file: !245, line: 149, size: 64, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1064, file: !245, line: 150, baseType: !261, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1064, file: !245, line: 151, baseType: !294, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1057, file: !245, line: 156, baseType: !114, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !245, line: 159, baseType: !1070, size: 128)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !245, line: 159, size: 128, elements: !1071)
!1071 = !{!1072, !1075}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1070, file: !245, line: 161, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !245, line: 161, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1070, file: !245, line: 162, baseType: !227, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !998, file: !245, line: 176, baseType: !692, size: 128, align: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !245, line: 179, baseType: !1078, size: 32, offset: 384)
!1078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !245, line: 179, size: 32, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1083}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1078, file: !245, line: 184, baseType: !294, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1078, file: !245, line: 192, baseType: !5, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1078, file: !245, line: 194, baseType: !5, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1078, file: !245, line: 195, baseType: !64, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !994, file: !245, line: 199, baseType: !294, size: 32, offset: 416)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !990, file: !349, line: 67, baseType: !63, size: 32, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !990, file: !349, line: 68, baseType: !63, size: 32, offset: 96)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !400, file: !401, line: 1206, baseType: !64, size: 32, offset: 12736)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !400, file: !401, line: 1207, baseType: !64, size: 32, offset: 12768)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !400, file: !401, line: 1209, baseType: !203, size: 64, offset: 12800)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !400, file: !401, line: 1219, baseType: !273, size: 64, offset: 12864)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !400, file: !401, line: 1220, baseType: !273, size: 64, offset: 12928)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !400, file: !401, line: 1317, baseType: !64, size: 32, offset: 12992)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !400, file: !401, line: 1319, baseType: !399, size: 64, offset: 13056)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !400, file: !401, line: 1322, baseType: !1095, size: 64, offset: 13120)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !401, line: 1322, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !400, file: !401, line: 1326, baseType: !414, size: 32, offset: 13184)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !400, file: !401, line: 1342, baseType: !227, size: 64, offset: 13248)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !400, file: !401, line: 1343, baseType: !275, size: 64, offset: 13312)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !400, file: !401, line: 1344, baseType: !273, size: 64, offset: 13376)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !400, file: !401, line: 1345, baseType: !275, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !400, file: !401, line: 1346, baseType: !275, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !400, file: !401, line: 1347, baseType: !275, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !400, file: !401, line: 1348, baseType: !692, size: 128, align: 64, offset: 13504)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !400, file: !401, line: 1358, baseType: !1106, size: 34816, offset: 13824)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1107, line: 485, size: 34816, elements: !1108)
!1107 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1108 = !{!1109, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1138, !1139, !1140, !1141, !1142, !1143, !1146, !1147, !1148}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1106, file: !1107, line: 487, baseType: !1110, size: 192)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 192, elements: !156)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1112, line: 16, size: 64, elements: !1113)
!1112 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1111, file: !1112, line: 17, baseType: !384, size: 16)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1111, file: !1112, line: 18, baseType: !384, size: 16, offset: 16)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1111, file: !1112, line: 19, baseType: !384, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1111, file: !1112, line: 19, baseType: !384, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1111, file: !1112, line: 19, baseType: !384, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1111, file: !1112, line: 19, baseType: !384, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1111, file: !1112, line: 19, baseType: !384, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1111, file: !1112, line: 20, baseType: !384, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1111, file: !1112, line: 20, baseType: !384, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1111, file: !1112, line: 20, baseType: !384, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1111, file: !1112, line: 20, baseType: !384, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1111, file: !1112, line: 20, baseType: !384, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1111, file: !1112, line: 20, baseType: !384, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1106, file: !1107, line: 491, baseType: !203, size: 64, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1106, file: !1107, line: 495, baseType: !60, size: 16, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1106, file: !1107, line: 496, baseType: !60, size: 16, offset: 272)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1106, file: !1107, line: 497, baseType: !60, size: 16, offset: 288)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1106, file: !1107, line: 498, baseType: !60, size: 16, offset: 304)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1106, file: !1107, line: 502, baseType: !203, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1106, file: !1107, line: 503, baseType: !203, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1106, file: !1107, line: 514, baseType: !1135, size: 256, offset: 448)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 256, elements: !353)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1107, line: 483, flags: DIFlagFwdDecl)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1106, file: !1107, line: 516, baseType: !203, size: 64, offset: 704)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1106, file: !1107, line: 518, baseType: !203, size: 64, offset: 768)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1106, file: !1107, line: 520, baseType: !203, size: 64, offset: 832)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1106, file: !1107, line: 521, baseType: !203, size: 64, offset: 896)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1106, file: !1107, line: 522, baseType: !203, size: 64, offset: 960)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1106, file: !1107, line: 528, baseType: !1144, size: 64, offset: 1024)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1107, line: 10, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1106, file: !1107, line: 535, baseType: !203, size: 64, offset: 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1106, file: !1107, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1106, file: !1107, line: 540, baseType: !1149, size: 33280, offset: 1536)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1150, line: 317, size: 33280, elements: !1151)
!1150 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1151 = !{!1152, !1153, !1154}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1149, file: !1150, line: 330, baseType: !5, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1149, file: !1150, line: 337, baseType: !203, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1149, file: !1150, line: 348, baseType: !1155, size: 32768, offset: 512)
!1155 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1150, line: 304, size: 32768, elements: !1156)
!1156 = !{!1157, !1172, !1211, !1261, !1278}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1155, file: !1150, line: 305, baseType: !1158, size: 896)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1150, line: 12, size: 896, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1171}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1158, file: !1150, line: 13, baseType: !409, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1158, file: !1150, line: 14, baseType: !409, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1158, file: !1150, line: 15, baseType: !409, size: 32, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1158, file: !1150, line: 16, baseType: !409, size: 32, offset: 96)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1158, file: !1150, line: 17, baseType: !409, size: 32, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1158, file: !1150, line: 18, baseType: !409, size: 32, offset: 160)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1158, file: !1150, line: 19, baseType: !409, size: 32, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1158, file: !1150, line: 22, baseType: !1168, size: 640, offset: 224)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 640, elements: !1169)
!1169 = !{!1170}
!1170 = !DISubrange(count: 20)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1158, file: !1150, line: 25, baseType: !409, size: 32, offset: 864)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1155, file: !1150, line: 306, baseType: !1173, size: 4096, align: 128)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1150, line: 34, size: 4096, align: 128, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1194, !1195, !1196, !1200, !1202, !1206}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1173, file: !1150, line: 35, baseType: !384, size: 16)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1173, file: !1150, line: 36, baseType: !384, size: 16, offset: 16)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1173, file: !1150, line: 37, baseType: !384, size: 16, offset: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1173, file: !1150, line: 38, baseType: !384, size: 16, offset: 48)
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !1150, line: 39, baseType: !1180, size: 128, offset: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !1150, line: 39, size: 128, elements: !1181)
!1181 = !{!1182, !1187}
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1150, line: 40, baseType: !1183, size: 128)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1180, file: !1150, line: 40, size: 128, elements: !1184)
!1184 = !{!1185, !1186}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1183, file: !1150, line: 41, baseType: !273, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1183, file: !1150, line: 42, baseType: !273, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1150, line: 44, baseType: !1188, size: 128)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1180, file: !1150, line: 44, size: 128, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1188, file: !1150, line: 45, baseType: !409, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1188, file: !1150, line: 46, baseType: !409, size: 32, offset: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1188, file: !1150, line: 47, baseType: !409, size: 32, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1188, file: !1150, line: 48, baseType: !409, size: 32, offset: 96)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1173, file: !1150, line: 51, baseType: !409, size: 32, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1173, file: !1150, line: 52, baseType: !409, size: 32, offset: 224)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1173, file: !1150, line: 55, baseType: !1197, size: 1024, offset: 256)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 1024, elements: !1198)
!1198 = !{!1199}
!1199 = !DISubrange(count: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1173, file: !1150, line: 58, baseType: !1201, size: 2048, offset: 1280)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 2048, elements: !160)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1173, file: !1150, line: 60, baseType: !1203, size: 384, offset: 3328)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 384, elements: !1204)
!1204 = !{!1205}
!1205 = !DISubrange(count: 12)
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !1150, line: 62, baseType: !1207, size: 384, offset: 3712)
!1207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !1150, line: 62, size: 384, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1207, file: !1150, line: 63, baseType: !1203, size: 384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1207, file: !1150, line: 64, baseType: !1203, size: 384)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1155, file: !1150, line: 307, baseType: !1212, size: 1088)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1150, line: 79, size: 1088, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1260}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1212, file: !1150, line: 80, baseType: !409, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1212, file: !1150, line: 81, baseType: !409, size: 32, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1212, file: !1150, line: 82, baseType: !409, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1212, file: !1150, line: 83, baseType: !409, size: 32, offset: 96)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1212, file: !1150, line: 84, baseType: !409, size: 32, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1212, file: !1150, line: 85, baseType: !409, size: 32, offset: 160)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1212, file: !1150, line: 86, baseType: !409, size: 32, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1212, file: !1150, line: 88, baseType: !1168, size: 640, offset: 224)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1212, file: !1150, line: 89, baseType: !545, size: 8, offset: 864)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1212, file: !1150, line: 90, baseType: !545, size: 8, offset: 872)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1212, file: !1150, line: 91, baseType: !545, size: 8, offset: 880)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1212, file: !1150, line: 92, baseType: !545, size: 8, offset: 888)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1212, file: !1150, line: 93, baseType: !545, size: 8, offset: 896)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1212, file: !1150, line: 94, baseType: !545, size: 8, offset: 904)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1212, file: !1150, line: 95, baseType: !1229, size: 64, offset: 960)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1231, line: 11, size: 128, elements: !1232)
!1231 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1232 = !{!1233, !1234}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1230, file: !1231, line: 12, baseType: !54, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1230, file: !1231, line: 13, baseType: !1235, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1237, line: 56, size: 1344, elements: !1238)
!1237 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1236, file: !1237, line: 61, baseType: !203, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1236, file: !1237, line: 62, baseType: !203, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1236, file: !1237, line: 63, baseType: !203, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1236, file: !1237, line: 64, baseType: !203, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1236, file: !1237, line: 65, baseType: !203, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1236, file: !1237, line: 66, baseType: !203, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1236, file: !1237, line: 68, baseType: !203, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1236, file: !1237, line: 69, baseType: !203, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1236, file: !1237, line: 70, baseType: !203, size: 64, offset: 512)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1236, file: !1237, line: 71, baseType: !203, size: 64, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1236, file: !1237, line: 72, baseType: !203, size: 64, offset: 640)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1236, file: !1237, line: 73, baseType: !203, size: 64, offset: 704)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1236, file: !1237, line: 74, baseType: !203, size: 64, offset: 768)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1236, file: !1237, line: 75, baseType: !203, size: 64, offset: 832)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1236, file: !1237, line: 76, baseType: !203, size: 64, offset: 896)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1236, file: !1237, line: 81, baseType: !203, size: 64, offset: 960)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1236, file: !1237, line: 83, baseType: !203, size: 64, offset: 1024)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1236, file: !1237, line: 84, baseType: !203, size: 64, offset: 1088)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1236, file: !1237, line: 85, baseType: !203, size: 64, offset: 1152)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1236, file: !1237, line: 86, baseType: !203, size: 64, offset: 1216)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1236, file: !1237, line: 87, baseType: !203, size: 64, offset: 1280)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1212, file: !1150, line: 96, baseType: !409, size: 32, offset: 1024)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1155, file: !1150, line: 308, baseType: !1262, size: 4608, align: 512)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1150, line: 289, size: 4608, align: 512, elements: !1263)
!1263 = !{!1264, !1265, !1274}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1262, file: !1150, line: 290, baseType: !1173, size: 4096, align: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1262, file: !1150, line: 291, baseType: !1266, size: 512, offset: 4096)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1150, line: 268, size: 512, elements: !1267)
!1267 = !{!1268, !1269, !1270}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1266, file: !1150, line: 269, baseType: !273, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1266, file: !1150, line: 270, baseType: !273, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1266, file: !1150, line: 271, baseType: !1271, size: 384, offset: 128)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 384, elements: !1272)
!1272 = !{!1273}
!1273 = !DISubrange(count: 6)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1262, file: !1150, line: 292, baseType: !1275, offset: 4608)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, elements: !1276)
!1276 = !{!1277}
!1277 = !DISubrange(count: 0)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1155, file: !1150, line: 309, baseType: !1279, size: 32768)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 32768, elements: !1280)
!1280 = !{!1281}
!1281 = !DISubrange(count: 4096)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !396, file: !245, line: 378, baseType: !1283, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !392, file: !245, line: 384, baseType: !714, size: 192, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !265, file: !245, line: 500, baseType: !114, offset: 6656)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !265, file: !245, line: 501, baseType: !1287, size: 64, offset: 6656)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !245, line: 387, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !265, file: !245, line: 516, baseType: !1290, size: 64, offset: 6720)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1292, line: 18, flags: DIFlagFwdDecl)
!1292 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !265, file: !245, line: 519, baseType: !232, size: 64, offset: 6784)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !265, file: !245, line: 521, baseType: !1295, size: 64, offset: 6848)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !245, line: 521, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !265, file: !245, line: 545, baseType: !294, size: 32, offset: 6912)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !265, file: !245, line: 548, baseType: !978, size: 8, offset: 6944)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !265, file: !245, line: 550, baseType: !1300, offset: 6952)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1301, line: 142, elements: !128)
!1301 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !265, file: !245, line: 554, baseType: !1303, size: 256, offset: 6976)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1304, line: 102, size: 256, elements: !1305)
!1304 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1305 = !{!1306, !1307, !1308}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1303, file: !1304, line: 103, baseType: !302, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1303, file: !1304, line: 104, baseType: !100, size: 128, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1303, file: !1304, line: 105, baseType: !1309, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1304, line: 21, baseType: !1310)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !265, file: !245, line: 557, baseType: !409, size: 32, offset: 7232)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !262, file: !245, line: 565, baseType: !1316, offset: 7296)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, elements: !1317)
!1317 = !{!1318}
!1318 = !DISubrange(count: -1)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !244, file: !245, line: 333, baseType: !1320, size: 64, offset: 576)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !234, line: 284, baseType: !1321)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !234, line: 284, size: 64, elements: !1322)
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1321, file: !234, line: 284, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !292, line: 19, baseType: !203)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !244, file: !245, line: 334, baseType: !203, size: 64, offset: 640)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !244, file: !245, line: 343, baseType: !1327, size: 256, offset: 704)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !245, line: 340, size: 256, elements: !1328)
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1327, file: !245, line: 341, baseType: !252, size: 192, align: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1327, file: !245, line: 342, baseType: !203, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !244, file: !245, line: 351, baseType: !100, size: 128, offset: 960)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !244, file: !245, line: 353, baseType: !1333, size: 64, offset: 1088)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !245, line: 353, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !244, file: !245, line: 356, baseType: !1336, size: 64, offset: 1152)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1338)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !245, line: 356, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !244, file: !245, line: 359, baseType: !203, size: 64, offset: 1216)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !244, file: !245, line: 361, baseType: !232, size: 64, offset: 1280)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !244, file: !245, line: 362, baseType: !227, size: 64, offset: 1344)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !244, file: !245, line: 365, baseType: !302, size: 64, offset: 1408)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !244, file: !245, line: 373, baseType: !1344, offset: 1472)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !245, line: 296, elements: !128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !210, file: !180, line: 90, baseType: !205, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !210, file: !180, line: 91, baseType: !1347, size: 64, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !170, file: !93, line: 143, baseType: !1349, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1352, !107}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1354)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1355)
!1355 = !{!1356, !1357, !1361, !1365, !1373, !1377}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1354, file: !16, line: 40, baseType: !15, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1354, file: !16, line: 41, baseType: !1358, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!978}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1354, file: !16, line: 42, baseType: !1362, size: 64, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!227}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1354, file: !16, line: 43, baseType: !1366, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1369, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1354, file: !16, line: 44, baseType: !1374, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1369}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1354, file: !16, line: 45, baseType: !1378, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !227}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !170, file: !93, line: 144, baseType: !1382, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!1369, !107}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !170, file: !93, line: 145, baseType: !1386, size: 64, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !107, !1389, !1395}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1292, line: 23, baseType: !1391)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1292, line: 21, size: 32, elements: !1392)
!1392 = !{!1393}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1391, file: !1292, line: 22, baseType: !1394, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !101, line: 32, baseType: !874)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1292, line: 28, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1292, line: 26, size: 32, elements: !1398)
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1397, file: !1292, line: 27, baseType: !1400, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !101, line: 33, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !188, line: 50, baseType: !5)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !92, file: !93, line: 70, baseType: !1403, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1405, line: 123, size: 1024, elements: !1406)
!1405 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1548, !1549, !1550, !1551, !1552}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1404, file: !1405, line: 124, baseType: !294, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1404, file: !1405, line: 125, baseType: !294, size: 32, offset: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1404, file: !1405, line: 135, baseType: !1403, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1404, file: !1405, line: 136, baseType: !96, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1404, file: !1405, line: 138, baseType: !252, size: 192, align: 64, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1404, file: !1405, line: 140, baseType: !1369, size: 64, offset: 384)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1404, file: !1405, line: 141, baseType: !5, size: 32, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !1405, line: 142, baseType: !1415, size: 256, offset: 512)
!1415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1404, file: !1405, line: 142, size: 256, elements: !1416)
!1416 = !{!1417, !1472, !1476}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1415, file: !1405, line: 143, baseType: !1418, size: 192)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1405, line: 91, size: 192, elements: !1419)
!1419 = !{!1420, !1421, !1422}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1418, file: !1405, line: 92, baseType: !203, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1418, file: !1405, line: 94, baseType: !269, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1418, file: !1405, line: 100, baseType: !1423, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1405, line: 180, size: 704, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1442, !1443, !1444, !1470, !1471}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1424, file: !1405, line: 182, baseType: !1403, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1424, file: !1405, line: 183, baseType: !5, size: 32, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1424, file: !1405, line: 186, baseType: !1429, size: 192, offset: 128)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1430, line: 19, size: 192, elements: !1431)
!1430 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1431 = !{!1432, !1440, !1441}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1429, file: !1430, line: 20, baseType: !1433, size: 128)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1434, line: 292, size: 128, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1435 = !{!1436, !1437, !1439}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1433, file: !1434, line: 293, baseType: !114)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1433, file: !1434, line: 295, baseType: !1438, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !101, line: 148, baseType: !5)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1433, file: !1434, line: 296, baseType: !227, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1429, file: !1430, line: 21, baseType: !5, size: 32, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1429, file: !1430, line: 22, baseType: !5, size: 32, offset: 160)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1424, file: !1405, line: 187, baseType: !409, size: 32, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1424, file: !1405, line: 188, baseType: !409, size: 32, offset: 352)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1424, file: !1405, line: 189, baseType: !1445, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1405, line: 168, size: 320, elements: !1447)
!1447 = !{!1448, !1454, !1458, !1462, !1466}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1446, file: !1405, line: 169, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!64, !1452, !1423}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !234, line: 539, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1446, file: !1405, line: 171, baseType: !1455, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!64, !1403, !96, !195}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1446, file: !1405, line: 173, baseType: !1459, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!64, !1403}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1446, file: !1405, line: 174, baseType: !1463, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!64, !1403, !1403, !96}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1446, file: !1405, line: 176, baseType: !1467, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!64, !1452, !1403, !1423}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1424, file: !1405, line: 192, baseType: !100, size: 128, offset: 448)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1424, file: !1405, line: 194, baseType: !685, size: 128, offset: 576)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1415, file: !1405, line: 144, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1405, line: 103, size: 64, elements: !1474)
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1473, file: !1405, line: 104, baseType: !1403, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1415, file: !1405, line: 145, baseType: !1477, size: 256)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1405, line: 107, size: 256, elements: !1478)
!1478 = !{!1479, !1543, !1546, !1547}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1477, file: !1405, line: 108, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1482)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1405, line: 217, size: 768, elements: !1483)
!1483 = !{!1484, !1504, !1508, !1512, !1517, !1521, !1525, !1529, !1530, !1531, !1532, !1539}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1482, file: !1405, line: 222, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!64, !1488}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1405, line: 197, size: 1088, elements: !1490)
!1490 = !{!1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1489, file: !1405, line: 199, baseType: !1403, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1489, file: !1405, line: 200, baseType: !232, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1489, file: !1405, line: 201, baseType: !1452, size: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1489, file: !1405, line: 202, baseType: !227, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1489, file: !1405, line: 205, baseType: !371, size: 192, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1489, file: !1405, line: 206, baseType: !371, size: 192, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1489, file: !1405, line: 207, baseType: !64, size: 32, offset: 640)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1489, file: !1405, line: 208, baseType: !100, size: 128, offset: 704)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1489, file: !1405, line: 209, baseType: !155, size: 64, offset: 832)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1489, file: !1405, line: 211, baseType: !200, size: 64, offset: 896)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1489, file: !1405, line: 212, baseType: !978, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1489, file: !1405, line: 213, baseType: !978, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1489, file: !1405, line: 214, baseType: !1336, size: 64, offset: 1024)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1482, file: !1405, line: 223, baseType: !1505, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !1488}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1482, file: !1405, line: 236, baseType: !1509, size: 64, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!64, !1452, !227}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1482, file: !1405, line: 238, baseType: !1513, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!227, !1452, !1516}
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1482, file: !1405, line: 239, baseType: !1518, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!227, !1452, !227, !1516}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1482, file: !1405, line: 240, baseType: !1522, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null, !1452, !227}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1482, file: !1405, line: 242, baseType: !1526, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!186, !1488, !155, !200, !235}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1482, file: !1405, line: 252, baseType: !200, size: 64, offset: 448)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1482, file: !1405, line: 259, baseType: !978, size: 8, offset: 512)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1482, file: !1405, line: 260, baseType: !1526, size: 64, offset: 576)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1482, file: !1405, line: 263, baseType: !1533, size: 64, offset: 640)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!1536, !1488, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !57, line: 52, baseType: !5)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1405, line: 27, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1482, file: !1405, line: 266, baseType: !1540, size: 64, offset: 704)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!64, !1488, !243}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1477, file: !1405, line: 109, baseType: !1544, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1405, line: 31, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1477, file: !1405, line: 110, baseType: !235, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1477, file: !1405, line: 111, baseType: !1403, size: 64, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1404, file: !1405, line: 148, baseType: !227, size: 64, offset: 768)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1404, file: !1405, line: 154, baseType: !273, size: 64, offset: 832)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1404, file: !1405, line: 156, baseType: !60, size: 16, offset: 896)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1404, file: !1405, line: 157, baseType: !195, size: 16, offset: 912)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1404, file: !1405, line: 158, baseType: !1553, size: 64, offset: 960)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1405, line: 32, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !92, file: !93, line: 71, baseType: !1556, size: 32, offset: 448)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1557, line: 19, size: 32, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1558 = !{!1559}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1556, file: !1557, line: 20, baseType: !414, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !92, file: !93, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !92, file: !93, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !92, file: !93, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !92, file: !93, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !92, file: !93, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !89, file: !28, line: 463, baseType: !88, size: 64, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !89, file: !28, line: 465, baseType: !1567, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !89, file: !28, line: 467, baseType: !96, size: 64, offset: 640)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !28, line: 468, baseType: !1571, size: 64, offset: 704)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1574)
!1574 = !{!1575, !1576, !1577, !1581, !1586, !1590}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1573, file: !28, line: 88, baseType: !96, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1573, file: !28, line: 89, baseType: !207, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1573, file: !28, line: 90, baseType: !1578, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!64, !88, !150}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1573, file: !28, line: 91, baseType: !1582, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!155, !88, !1585, !1389, !1395}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1573, file: !28, line: 93, baseType: !1587, size: 64, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !88}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1573, file: !28, line: 95, baseType: !1591, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1594)
!1594 = !{!1595, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1593, file: !35, line: 279, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!64, !88}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1593, file: !35, line: 280, baseType: !1587, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1593, file: !35, line: 281, baseType: !1596, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1593, file: !35, line: 282, baseType: !1596, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1593, file: !35, line: 283, baseType: !1596, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1593, file: !35, line: 284, baseType: !1596, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1593, file: !35, line: 285, baseType: !1596, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1593, file: !35, line: 286, baseType: !1596, size: 64, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1593, file: !35, line: 287, baseType: !1596, size: 64, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1593, file: !35, line: 288, baseType: !1596, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1593, file: !35, line: 289, baseType: !1596, size: 64, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1593, file: !35, line: 290, baseType: !1596, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1593, file: !35, line: 291, baseType: !1596, size: 64, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1593, file: !35, line: 292, baseType: !1596, size: 64, offset: 832)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1593, file: !35, line: 293, baseType: !1596, size: 64, offset: 896)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1593, file: !35, line: 294, baseType: !1596, size: 64, offset: 960)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1593, file: !35, line: 295, baseType: !1596, size: 64, offset: 1024)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1593, file: !35, line: 296, baseType: !1596, size: 64, offset: 1088)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1593, file: !35, line: 297, baseType: !1596, size: 64, offset: 1152)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1593, file: !35, line: 298, baseType: !1596, size: 64, offset: 1216)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1593, file: !35, line: 299, baseType: !1596, size: 64, offset: 1280)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1593, file: !35, line: 300, baseType: !1596, size: 64, offset: 1344)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1593, file: !35, line: 301, baseType: !1596, size: 64, offset: 1408)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !89, file: !28, line: 470, baseType: !1622, size: 64, offset: 768)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1624, line: 82, size: 1408, elements: !1625)
!1624 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1625 = !{!1626, !1627, !1628, !1629, !1630, !1631, !1632, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1711, !1714, !1717}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1623, file: !1624, line: 83, baseType: !96, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1623, file: !1624, line: 84, baseType: !96, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1623, file: !1624, line: 85, baseType: !88, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1623, file: !1624, line: 86, baseType: !207, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1623, file: !1624, line: 87, baseType: !207, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1623, file: !1624, line: 88, baseType: !207, size: 64, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1623, file: !1624, line: 90, baseType: !1633, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!64, !88, !1636}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1645, !1646, !1647, !1648, !1662, !1675, !1676, !1677, !1678, !1679, !1687, !1688, !1689, !1690, !1691, !1692}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1637, file: !22, line: 96, baseType: !96, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1637, file: !22, line: 97, baseType: !1622, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1637, file: !22, line: 99, baseType: !1642, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1644, line: 76, flags: DIFlagFwdDecl)
!1644 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1637, file: !22, line: 100, baseType: !96, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1637, file: !22, line: 102, baseType: !978, size: 8, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1637, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1637, file: !22, line: 105, baseType: !1649, size: 64, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1651)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1652, line: 262, size: 1600, elements: !1653)
!1652 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1653 = !{!1654, !1656, !1657, !1661}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1651, file: !1652, line: 263, baseType: !1655, size: 256)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !1198)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1651, file: !1652, line: 264, baseType: !1655, size: 256, offset: 256)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1651, file: !1652, line: 265, baseType: !1658, size: 1024, offset: 512)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1024, elements: !1659)
!1659 = !{!1660}
!1660 = !DISubrange(count: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1651, file: !1652, line: 266, baseType: !1369, size: 64, offset: 1536)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1637, file: !22, line: 106, baseType: !1663, size: 64, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1652, line: 210, size: 256, elements: !1666)
!1666 = !{!1667, !1671, !1673, !1674}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1665, file: !1652, line: 211, baseType: !1668, size: 72)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 72, elements: !1669)
!1669 = !{!1670}
!1670 = !DISubrange(count: 9)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1665, file: !1652, line: 212, baseType: !1672, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1652, line: 14, baseType: !203)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1665, file: !1652, line: 213, baseType: !63, size: 32, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1665, file: !1652, line: 214, baseType: !63, size: 32, offset: 224)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1637, file: !22, line: 108, baseType: !1596, size: 64, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1637, file: !22, line: 109, baseType: !1587, size: 64, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1637, file: !22, line: 110, baseType: !1596, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1637, file: !22, line: 111, baseType: !1587, size: 64, offset: 640)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1637, file: !22, line: 112, baseType: !1680, size: 64, offset: 704)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!64, !88, !1683}
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1685)
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1684, file: !35, line: 51, baseType: !64, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1637, file: !22, line: 113, baseType: !1596, size: 64, offset: 768)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1637, file: !22, line: 114, baseType: !207, size: 64, offset: 832)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1637, file: !22, line: 115, baseType: !207, size: 64, offset: 896)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1637, file: !22, line: 117, baseType: !1591, size: 64, offset: 960)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1637, file: !22, line: 118, baseType: !1587, size: 64, offset: 1024)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1637, file: !22, line: 120, baseType: !1693, size: 64, offset: 1088)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1623, file: !1624, line: 91, baseType: !1578, size: 64, offset: 448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1623, file: !1624, line: 92, baseType: !1596, size: 64, offset: 512)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1623, file: !1624, line: 93, baseType: !1587, size: 64, offset: 576)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1623, file: !1624, line: 94, baseType: !1596, size: 64, offset: 640)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1623, file: !1624, line: 95, baseType: !1587, size: 64, offset: 704)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1623, file: !1624, line: 97, baseType: !1596, size: 64, offset: 768)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1623, file: !1624, line: 98, baseType: !1596, size: 64, offset: 832)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1623, file: !1624, line: 100, baseType: !1680, size: 64, offset: 896)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1623, file: !1624, line: 101, baseType: !1596, size: 64, offset: 960)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1623, file: !1624, line: 103, baseType: !1596, size: 64, offset: 1024)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1623, file: !1624, line: 105, baseType: !1596, size: 64, offset: 1088)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1623, file: !1624, line: 107, baseType: !1591, size: 64, offset: 1152)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1623, file: !1624, line: 109, baseType: !1708, size: 64, offset: 1216)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1710)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1624, line: 109, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1623, file: !1624, line: 111, baseType: !1712, size: 64, offset: 1280)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1624, line: 111, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1623, file: !1624, line: 112, baseType: !1715, offset: 1344)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1716, line: 187, elements: !128)
!1716 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1623, file: !1624, line: 114, baseType: !978, size: 8, offset: 1344)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !89, file: !28, line: 471, baseType: !1636, size: 64, offset: 832)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !89, file: !28, line: 473, baseType: !227, size: 64, offset: 896)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !89, file: !28, line: 475, baseType: !227, size: 64, offset: 960)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !89, file: !28, line: 480, baseType: !371, size: 192, offset: 1024)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !89, file: !28, line: 484, baseType: !1723, size: 576, offset: 1216)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1723, file: !28, line: 362, baseType: !100, size: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1723, file: !28, line: 363, baseType: !100, size: 128, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1723, file: !28, line: 364, baseType: !100, size: 128, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1723, file: !28, line: 365, baseType: !100, size: 128, offset: 384)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1723, file: !28, line: 366, baseType: !978, size: 8, offset: 512)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1723, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !89, file: !28, line: 485, baseType: !1732, size: 2304, offset: 1792)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1733)
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1829, !1833}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1732, file: !35, line: 566, baseType: !1683, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1732, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1732, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1732, file: !35, line: 569, baseType: !978, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1732, file: !35, line: 570, baseType: !978, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1732, file: !35, line: 571, baseType: !978, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1732, file: !35, line: 572, baseType: !978, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1732, file: !35, line: 573, baseType: !978, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1732, file: !35, line: 574, baseType: !978, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1732, file: !35, line: 575, baseType: !978, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1732, file: !35, line: 576, baseType: !978, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1732, file: !35, line: 577, baseType: !409, size: 32, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1732, file: !35, line: 578, baseType: !114, offset: 96)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1732, file: !35, line: 580, baseType: !100, size: 128, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1732, file: !35, line: 581, baseType: !714, size: 192, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1732, file: !35, line: 582, baseType: !1750, size: 64, offset: 448)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1752, line: 43, size: 1472, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1761, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1751, file: !1752, line: 44, baseType: !96, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1751, file: !1752, line: 45, baseType: !64, size: 32, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1751, file: !1752, line: 46, baseType: !100, size: 128, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1751, file: !1752, line: 47, baseType: !114, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1751, file: !1752, line: 48, baseType: !1759, size: 64, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1751, file: !1752, line: 49, baseType: !1762, size: 320, offset: 320)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1763, line: 11, size: 320, elements: !1764)
!1763 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1764 = !{!1765, !1766, !1767, !1772}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1762, file: !1763, line: 16, baseType: !678, size: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1762, file: !1763, line: 17, baseType: !203, size: 64, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1762, file: !1763, line: 18, baseType: !1768, size: 64, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !1771}
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1762, file: !1763, line: 19, baseType: !409, size: 32, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1751, file: !1752, line: 50, baseType: !203, size: 64, offset: 640)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1751, file: !1752, line: 51, baseType: !484, size: 64, offset: 704)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1751, file: !1752, line: 52, baseType: !484, size: 64, offset: 768)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1751, file: !1752, line: 53, baseType: !484, size: 64, offset: 832)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1751, file: !1752, line: 54, baseType: !484, size: 64, offset: 896)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1751, file: !1752, line: 55, baseType: !484, size: 64, offset: 960)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1751, file: !1752, line: 56, baseType: !203, size: 64, offset: 1024)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1751, file: !1752, line: 57, baseType: !203, size: 64, offset: 1088)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1751, file: !1752, line: 58, baseType: !203, size: 64, offset: 1152)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1751, file: !1752, line: 59, baseType: !203, size: 64, offset: 1216)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1751, file: !1752, line: 60, baseType: !203, size: 64, offset: 1280)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1751, file: !1752, line: 61, baseType: !88, size: 64, offset: 1344)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1751, file: !1752, line: 62, baseType: !978, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1751, file: !1752, line: 63, baseType: !978, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1732, file: !35, line: 583, baseType: !978, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1732, file: !35, line: 584, baseType: !978, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1732, file: !35, line: 585, baseType: !978, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1732, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1732, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1732, file: !35, line: 592, baseType: !476, size: 512, offset: 576)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1732, file: !35, line: 593, baseType: !273, size: 64, offset: 1088)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1732, file: !35, line: 594, baseType: !1303, size: 256, offset: 1152)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1732, file: !35, line: 595, baseType: !685, size: 128, offset: 1408)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1732, file: !35, line: 596, baseType: !1759, size: 64, offset: 1536)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1732, file: !35, line: 597, baseType: !294, size: 32, offset: 1600)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1732, file: !35, line: 598, baseType: !294, size: 32, offset: 1632)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1732, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1732, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1732, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1732, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1732, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1732, file: !35, line: 604, baseType: !978, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1732, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1732, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1732, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1732, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1732, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1732, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1732, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1732, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1732, file: !35, line: 613, baseType: !64, size: 32, offset: 1792)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1732, file: !35, line: 614, baseType: !64, size: 32, offset: 1824)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1732, file: !35, line: 615, baseType: !273, size: 64, offset: 1856)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1732, file: !35, line: 616, baseType: !273, size: 64, offset: 1920)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1732, file: !35, line: 617, baseType: !273, size: 64, offset: 1984)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1732, file: !35, line: 618, baseType: !273, size: 64, offset: 2048)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1732, file: !35, line: 620, baseType: !1820, size: 64, offset: 2112)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !1822)
!1822 = !{!1823, !1824, !1825, !1826}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1821, file: !35, line: 537, baseType: !114)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1821, file: !35, line: 538, baseType: !5, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1821, file: !35, line: 540, baseType: !100, size: 128, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1821, file: !35, line: 543, baseType: !1827, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1732, file: !35, line: 621, baseType: !1830, size: 64, offset: 2176)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !88, !638}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1732, file: !35, line: 622, baseType: !1834, size: 64, offset: 2240)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !89, file: !28, line: 486, baseType: !1837, size: 64, offset: 4096)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !1839)
!1839 = !{!1840, !1841, !1842, !1846, !1847, !1848}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1838, file: !35, line: 643, baseType: !1593, size: 1472)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1838, file: !35, line: 644, baseType: !1596, size: 64, offset: 1472)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1838, file: !35, line: 645, baseType: !1843, size: 64, offset: 1536)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null, !88, !978}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1838, file: !35, line: 646, baseType: !1596, size: 64, offset: 1600)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1838, file: !35, line: 647, baseType: !1587, size: 64, offset: 1664)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1838, file: !35, line: 648, baseType: !1587, size: 64, offset: 1728)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !89, file: !28, line: 493, baseType: !1850, size: 64, offset: 4160)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !28, line: 493, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !89, file: !28, line: 499, baseType: !100, size: 128, offset: 4224)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !89, file: !28, line: 502, baseType: !1854, size: 64, offset: 4352)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1856)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !89, file: !28, line: 504, baseType: !1858, size: 64, offset: 4416)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !89, file: !28, line: 505, baseType: !273, size: 64, offset: 4480)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !89, file: !28, line: 510, baseType: !273, size: 64, offset: 4544)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !89, file: !28, line: 511, baseType: !1862, size: 64, offset: 4608)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1864)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !89, file: !28, line: 513, baseType: !1866, size: 64, offset: 4672)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !1868)
!1868 = !{!1869, !1870}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1867, file: !28, line: 293, baseType: !5, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1867, file: !28, line: 294, baseType: !203, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !89, file: !28, line: 515, baseType: !100, size: 128, offset: 4736)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !89, file: !28, line: 526, baseType: !1873, offset: 4864)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1874, line: 5, elements: !128)
!1874 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !89, file: !28, line: 528, baseType: !1876, size: 64, offset: 4864)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1878, line: 14, flags: DIFlagFwdDecl)
!1878 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !89, file: !28, line: 529, baseType: !1880, size: 64, offset: 4928)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1624, line: 22, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !89, file: !28, line: 534, baseType: !1883, size: 32, offset: 4992)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !101, line: 16, baseType: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !101, line: 13, baseType: !409)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !89, file: !28, line: 535, baseType: !409, size: 32, offset: 5024)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !89, file: !28, line: 537, baseType: !114, offset: 5056)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !89, file: !28, line: 538, baseType: !100, size: 128, offset: 5056)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !89, file: !28, line: 540, baseType: !1889, size: 64, offset: 5184)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1891, line: 54, size: 960, elements: !1892)
!1891 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898, !1899, !1903, !1907, !1908, !1909, !1910, !1914, !1918, !1919}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1890, file: !1891, line: 55, baseType: !96, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1890, file: !1891, line: 56, baseType: !1642, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1890, file: !1891, line: 58, baseType: !207, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1890, file: !1891, line: 59, baseType: !207, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1890, file: !1891, line: 60, baseType: !107, size: 64, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1890, file: !1891, line: 62, baseType: !1578, size: 64, offset: 320)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1890, file: !1891, line: 63, baseType: !1900, size: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!155, !88, !1585}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1890, file: !1891, line: 65, baseType: !1904, size: 64, offset: 448)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1889}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1890, file: !1891, line: 66, baseType: !1587, size: 64, offset: 512)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1890, file: !1891, line: 68, baseType: !1596, size: 64, offset: 576)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1890, file: !1891, line: 70, baseType: !1352, size: 64, offset: 640)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1890, file: !1891, line: 71, baseType: !1911, size: 64, offset: 704)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!1369, !88}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1890, file: !1891, line: 73, baseType: !1915, size: 64, offset: 768)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !88, !1389, !1395}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1890, file: !1891, line: 75, baseType: !1591, size: 64, offset: 832)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1890, file: !1891, line: 77, baseType: !1712, size: 64, offset: 896)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !89, file: !28, line: 541, baseType: !207, size: 64, offset: 5248)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !89, file: !28, line: 543, baseType: !1587, size: 64, offset: 5312)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !89, file: !28, line: 544, baseType: !1923, size: 64, offset: 5376)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !89, file: !28, line: 545, baseType: !1926, size: 64, offset: 5440)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !89, file: !28, line: 547, baseType: !978, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !89, file: !28, line: 548, baseType: !978, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !89, file: !28, line: 549, baseType: !978, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !89, file: !28, line: 550, baseType: !978, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !84, file: !85, line: 277, baseType: !89, size: 5568, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !84, file: !85, line: 278, baseType: !64, size: 32, offset: 5632)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !84, file: !85, line: 279, baseType: !1935, size: 64, offset: 5696)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1937)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_host_ops", file: !85, line: 82, size: 1408, elements: !1938)
!1938 = !{!1939, !1993, !1997, !1998, !2002, !2020, !2024, !2025, !2029, !2033, !2037, !2041, !2042, !2046, !2047, !2048, !2049, !2050, !2051, !2055, !2056, !2057}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "post_req", scope: !1937, file: !85, line: 91, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{null, !83, !1943, !64}
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_request", file: !1945, line: 144, size: 896, elements: !1946)
!1945 = !DIFile(filename: "./include/linux/mmc/core.h", directory: "/home/lizy2001/genbc/linux")
!1946 = !{!1947, !1980, !1981, !1982, !1983, !1984, !1985, !1989, !1990, !1991, !1992}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "sbc", scope: !1944, file: !1945, line: 145, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_command", file: !1945, line: 26, size: 448, elements: !1950)
!1950 = !{!1951, !1952, !1953, !1955, !1956, !1957, !1958, !1959, !1979}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !1949, file: !1945, line: 27, baseType: !409, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1949, file: !1945, line: 28, baseType: !409, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !1949, file: !1945, line: 32, baseType: !1954, size: 128, offset: 64)
!1954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 128, elements: !353)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1949, file: !1945, line: 33, baseType: !5, size: 32, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !1949, file: !1945, line: 92, baseType: !5, size: 32, offset: 224)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1949, file: !1945, line: 93, baseType: !64, size: 32, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "busy_timeout", scope: !1949, file: !1945, line: 109, baseType: !5, size: 32, offset: 288)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1949, file: !1945, line: 110, baseType: !1960, size: 64, offset: 320)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_data", file: !1945, line: 114, size: 576, elements: !1962)
!1962 = !{!1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1978}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ns", scope: !1961, file: !1945, line: 115, baseType: !5, size: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_clks", scope: !1961, file: !1945, line: 116, baseType: !5, size: 32, offset: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "blksz", scope: !1961, file: !1945, line: 117, baseType: !5, size: 32, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1961, file: !1945, line: 118, baseType: !5, size: 32, offset: 96)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "blk_addr", scope: !1961, file: !1945, line: 119, baseType: !5, size: 32, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1961, file: !1945, line: 120, baseType: !64, size: 32, offset: 160)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1961, file: !1945, line: 121, baseType: !5, size: 32, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_xfered", scope: !1961, file: !1945, line: 132, baseType: !5, size: 32, offset: 224)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1961, file: !1945, line: 134, baseType: !1948, size: 64, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "mrq", scope: !1961, file: !1945, line: 135, baseType: !1943, size: 64, offset: 320)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sg_len", scope: !1961, file: !1945, line: 137, baseType: !5, size: 32, offset: 384)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sg_count", scope: !1961, file: !1945, line: 138, baseType: !64, size: 32, offset: 416)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !1961, file: !1945, line: 139, baseType: !1976, size: 64, offset: 448)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !1945, line: 139, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "host_cookie", scope: !1961, file: !1945, line: 140, baseType: !638, size: 32, offset: 512)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "mrq", scope: !1949, file: !1945, line: 111, baseType: !1943, size: 64, offset: 384)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1944, file: !1945, line: 146, baseType: !1948, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1944, file: !1945, line: 147, baseType: !1960, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1944, file: !1945, line: 148, baseType: !1948, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1944, file: !1945, line: 150, baseType: !714, size: 192, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_completion", scope: !1944, file: !1945, line: 151, baseType: !714, size: 192, offset: 448)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1944, file: !1945, line: 152, baseType: !1986, size: 64, offset: 640)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1943}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_notifier", scope: !1944, file: !1945, line: 158, baseType: !1986, size: 64, offset: 704)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1944, file: !1945, line: 159, baseType: !83, size: 64, offset: 768)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "cap_cmd_during_tfr", scope: !1944, file: !1945, line: 162, baseType: !978, size: 8, offset: 832)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1944, file: !1945, line: 164, baseType: !64, size: 32, offset: 864)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pre_req", scope: !1937, file: !85, line: 93, baseType: !1994, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !83, !1943}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1937, file: !85, line: 94, baseType: !1994, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "request_atomic", scope: !1937, file: !85, line: 96, baseType: !1999, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!64, !83, !1943}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "set_ios", scope: !1937, file: !85, line: 113, baseType: !2003, size: 64, offset: 256)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !83, !2006}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ios", file: !85, line: 19, size: 160, elements: !2008)
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2007, file: !85, line: 20, baseType: !5, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "vdd", scope: !2007, file: !85, line: 21, baseType: !60, size: 16, offset: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "power_delay_ms", scope: !2007, file: !85, line: 22, baseType: !5, size: 32, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mode", scope: !2007, file: !85, line: 26, baseType: !547, size: 8, offset: 96)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "chip_select", scope: !2007, file: !85, line: 31, baseType: !547, size: 8, offset: 104)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "power_mode", scope: !2007, file: !85, line: 37, baseType: !547, size: 8, offset: 112)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "bus_width", scope: !2007, file: !85, line: 44, baseType: !547, size: 8, offset: 120)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "timing", scope: !2007, file: !85, line: 50, baseType: !547, size: 8, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "signal_voltage", scope: !2007, file: !85, line: 64, baseType: !547, size: 8, offset: 136)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "drv_type", scope: !2007, file: !85, line: 70, baseType: !547, size: 8, offset: 144)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_strobe", scope: !2007, file: !85, line: 77, baseType: !978, size: 8, offset: 152)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "get_ro", scope: !1937, file: !85, line: 122, baseType: !2021, size: 64, offset: 320)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!64, !83}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "get_cd", scope: !1937, file: !85, line: 131, baseType: !2021, size: 64, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "enable_sdio_irq", scope: !1937, file: !85, line: 133, baseType: !2026, size: 64, offset: 448)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !83, !64}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ack_sdio_irq", scope: !1937, file: !85, line: 135, baseType: !2030, size: 64, offset: 512)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !83}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "init_card", scope: !1937, file: !85, line: 138, baseType: !2034, size: 64, offset: 576)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !83, !78}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "start_signal_voltage_switch", scope: !1937, file: !85, line: 140, baseType: !2038, size: 64, offset: 640)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!64, !83, !2006}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "card_busy", scope: !1937, file: !85, line: 143, baseType: !2021, size: 64, offset: 704)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "execute_tuning", scope: !1937, file: !85, line: 146, baseType: !2043, size: 64, offset: 768)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!64, !83, !409}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_hs400_tuning", scope: !1937, file: !85, line: 149, baseType: !2038, size: 64, offset: 832)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_prepare_ddr", scope: !1937, file: !85, line: 152, baseType: !2021, size: 64, offset: 896)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_downgrade", scope: !1937, file: !85, line: 155, baseType: !2030, size: 64, offset: 960)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_complete", scope: !1937, file: !85, line: 158, baseType: !2030, size: 64, offset: 1024)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_enhanced_strobe", scope: !1937, file: !85, line: 161, baseType: !2003, size: 64, offset: 1088)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "select_drive_strength", scope: !1937, file: !85, line: 163, baseType: !2052, size: 64, offset: 1152)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!64, !78, !5, !64, !64, !725}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "hw_reset", scope: !1937, file: !85, line: 167, baseType: !2030, size: 64, offset: 1216)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "card_event", scope: !1937, file: !85, line: 168, baseType: !2030, size: 64, offset: 1280)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "multi_io_quirk", scope: !1937, file: !85, line: 174, baseType: !2058, size: 64, offset: 1344)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!64, !78, !5, !64}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "pwrseq", scope: !84, file: !85, line: 280, baseType: !2062, size: 64, offset: 5760)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_pwrseq", file: !85, line: 264, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "f_min", scope: !84, file: !85, line: 281, baseType: !5, size: 32, offset: 5824)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "f_max", scope: !84, file: !85, line: 282, baseType: !5, size: 32, offset: 5856)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "f_init", scope: !84, file: !85, line: 283, baseType: !5, size: 32, offset: 5888)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail", scope: !84, file: !85, line: 284, baseType: !409, size: 32, offset: 5920)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_sdio", scope: !84, file: !85, line: 285, baseType: !409, size: 32, offset: 5952)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_sd", scope: !84, file: !85, line: 286, baseType: !409, size: 32, offset: 5984)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_mmc", scope: !84, file: !85, line: 287, baseType: !409, size: 32, offset: 6016)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "pm_notify", scope: !84, file: !85, line: 289, baseType: !2072, size: 192, offset: 6080)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2073, line: 54, size: 192, elements: !2074)
!2073 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2074 = !{!2075, !2081, !2082}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2072, file: !2073, line: 55, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2073, line: 51, baseType: !2077)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!64, !2080, !203, !227}
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2072, file: !2073, line: 56, baseType: !2080, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2072, file: !2073, line: 57, baseType: !64, size: 32, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !84, file: !85, line: 291, baseType: !1750, size: 64, offset: 6272)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_330", scope: !84, file: !85, line: 292, baseType: !409, size: 32, offset: 6336)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_300", scope: !84, file: !85, line: 293, baseType: !409, size: 32, offset: 6368)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_180", scope: !84, file: !85, line: 294, baseType: !409, size: 32, offset: 6400)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !84, file: !85, line: 314, baseType: !409, size: 32, offset: 6432)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "caps2", scope: !84, file: !85, line: 352, baseType: !409, size: 32, offset: 6464)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_drv_type", scope: !84, file: !85, line: 381, baseType: !64, size: 32, offset: 6496)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "pm_caps", scope: !84, file: !85, line: 383, baseType: !2091, size: 32, offset: 6528)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "mmc_pm_flag_t", file: !2092, line: 22, baseType: !5)
!2092 = !DIFile(filename: "./include/linux/mmc/pm.h", directory: "/home/lizy2001/genbc/linux")
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "max_seg_size", scope: !84, file: !85, line: 386, baseType: !5, size: 32, offset: 6560)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "max_segs", scope: !84, file: !85, line: 387, baseType: !60, size: 16, offset: 6592)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !84, file: !85, line: 388, baseType: !60, size: 16, offset: 6608)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "max_req_size", scope: !84, file: !85, line: 389, baseType: !5, size: 32, offset: 6624)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "max_blk_size", scope: !84, file: !85, line: 390, baseType: !5, size: 32, offset: 6656)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "max_blk_count", scope: !84, file: !85, line: 391, baseType: !5, size: 32, offset: 6688)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "max_busy_timeout", scope: !84, file: !85, line: 392, baseType: !5, size: 32, offset: 6720)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !84, file: !85, line: 395, baseType: !114, offset: 6752)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ios", scope: !84, file: !85, line: 397, baseType: !2007, size: 160, offset: 6752)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "use_spi_crc", scope: !84, file: !85, line: 400, baseType: !5, size: 1, offset: 6912, flags: DIFlagBitField, extraData: i64 6912)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !84, file: !85, line: 401, baseType: !5, size: 1, offset: 6913, flags: DIFlagBitField, extraData: i64 6912)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dead", scope: !84, file: !85, line: 402, baseType: !5, size: 1, offset: 6914, flags: DIFlagBitField, extraData: i64 6912)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "doing_init_tune", scope: !84, file: !85, line: 403, baseType: !5, size: 1, offset: 6915, flags: DIFlagBitField, extraData: i64 6912)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "can_retune", scope: !84, file: !85, line: 404, baseType: !5, size: 1, offset: 6916, flags: DIFlagBitField, extraData: i64 6912)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "doing_retune", scope: !84, file: !85, line: 405, baseType: !5, size: 1, offset: 6917, flags: DIFlagBitField, extraData: i64 6912)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "retune_now", scope: !84, file: !85, line: 406, baseType: !5, size: 1, offset: 6918, flags: DIFlagBitField, extraData: i64 6912)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "retune_paused", scope: !84, file: !85, line: 407, baseType: !5, size: 1, offset: 6919, flags: DIFlagBitField, extraData: i64 6912)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "use_blk_mq", scope: !84, file: !85, line: 408, baseType: !5, size: 1, offset: 6920, flags: DIFlagBitField, extraData: i64 6912)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "retune_crc_disable", scope: !84, file: !85, line: 409, baseType: !5, size: 1, offset: 6921, flags: DIFlagBitField, extraData: i64 6912)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "can_dma_map_merge", scope: !84, file: !85, line: 410, baseType: !5, size: 1, offset: 6922, flags: DIFlagBitField, extraData: i64 6912)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rescan_disable", scope: !84, file: !85, line: 412, baseType: !64, size: 32, offset: 6944)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rescan_entered", scope: !84, file: !85, line: 413, baseType: !64, size: 32, offset: 6976)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "need_retune", scope: !84, file: !85, line: 415, baseType: !64, size: 32, offset: 7008)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "hold_retune", scope: !84, file: !85, line: 416, baseType: !64, size: 32, offset: 7040)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "retune_period", scope: !84, file: !85, line: 417, baseType: !5, size: 32, offset: 7072)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "retune_timer", scope: !84, file: !85, line: 418, baseType: !1762, size: 320, offset: 7104)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_card_event", scope: !84, file: !85, line: 420, baseType: !978, size: 8, offset: 7424)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !84, file: !85, line: 422, baseType: !78, size: 64, offset: 7488)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !84, file: !85, line: 424, baseType: !685, size: 128, offset: 7552)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "claimer", scope: !84, file: !85, line: 425, baseType: !2123, size: 64, offset: 7680)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ctx", file: !85, line: 271, size: 64, elements: !2125)
!2125 = !{!2126}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2124, file: !85, line: 272, baseType: !399, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "claim_cnt", scope: !84, file: !85, line: 426, baseType: !64, size: 32, offset: 7744)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "default_ctx", scope: !84, file: !85, line: 427, baseType: !2124, size: 64, offset: 7808)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !84, file: !85, line: 429, baseType: !2130, size: 704, offset: 7872)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1304, line: 115, size: 704, elements: !2131)
!2131 = !{!2132, !2133, !2134, !2137}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2130, file: !1304, line: 116, baseType: !1303, size: 256)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2130, file: !1304, line: 117, baseType: !1762, size: 320, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2130, file: !1304, line: 120, baseType: !2135, size: 64, offset: 576)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1304, line: 18, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2130, file: !1304, line: 121, baseType: !64, size: 32, offset: 640)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "detect_change", scope: !84, file: !85, line: 430, baseType: !64, size: 32, offset: 8576)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !84, file: !85, line: 431, baseType: !2140, size: 128, offset: 8640)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_slot", file: !85, line: 243, size: 128, elements: !2141)
!2141 = !{!2142, !2143, !2144}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cd_irq", scope: !2140, file: !85, line: 244, baseType: !64, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "cd_wake_enabled", scope: !2140, file: !85, line: 245, baseType: !978, size: 8, offset: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "handler_priv", scope: !2140, file: !85, line: 246, baseType: !227, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bus_ops", scope: !84, file: !85, line: 433, baseType: !2146, size: 64, offset: 8768)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2148)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_bus_ops", file: !2149, line: 20, size: 704, elements: !2150)
!2149 = !DIFile(filename: "drivers/mmc/core/core.h", directory: "/home/lizy2001/genbc/linux")
!2150 = !{!2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2148, file: !2149, line: 21, baseType: !2030, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !2148, file: !2149, line: 22, baseType: !2030, size: 64, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "pre_suspend", scope: !2148, file: !2149, line: 23, baseType: !2021, size: 64, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2148, file: !2149, line: 24, baseType: !2021, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2148, file: !2149, line: 25, baseType: !2021, size: 64, offset: 256)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2148, file: !2149, line: 26, baseType: !2021, size: 64, offset: 320)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2148, file: !2149, line: 27, baseType: !2021, size: 64, offset: 384)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !2148, file: !2149, line: 28, baseType: !2021, size: 64, offset: 448)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2148, file: !2149, line: 29, baseType: !2021, size: 64, offset: 512)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "hw_reset", scope: !2148, file: !2149, line: 30, baseType: !2021, size: 64, offset: 576)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reset", scope: !2148, file: !2149, line: 31, baseType: !2021, size: 64, offset: 640)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "bus_refs", scope: !84, file: !85, line: 434, baseType: !5, size: 32, offset: 8832)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irqs", scope: !84, file: !85, line: 436, baseType: !5, size: 32, offset: 8864)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_thread", scope: !84, file: !85, line: 437, baseType: !399, size: 64, offset: 8896)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_work", scope: !84, file: !85, line: 438, baseType: !2130, size: 704, offset: 8960)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_pending", scope: !84, file: !85, line: 439, baseType: !978, size: 8, offset: 9664)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_thread_abort", scope: !84, file: !85, line: 440, baseType: !294, size: 32, offset: 9696)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "pm_flags", scope: !84, file: !85, line: 442, baseType: !2091, size: 32, offset: 9728)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !84, file: !85, line: 444, baseType: !2170, size: 64, offset: 9792)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "led_trigger", file: !85, line: 444, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "supply", scope: !84, file: !85, line: 449, baseType: !2173, size: 128, offset: 9856)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_supply", file: !85, line: 266, size: 128, elements: !2174)
!2174 = !{!2175, !2178}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "vmmc", scope: !2173, file: !85, line: 267, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !85, line: 263, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "vqmmc", scope: !2173, file: !85, line: 268, baseType: !2176, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !84, file: !85, line: 451, baseType: !2180, size: 64, offset: 9984)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1405, line: 21, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ongoing_mrq", scope: !84, file: !85, line: 454, baseType: !1943, size: 64, offset: 10048)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "actual_clock", scope: !84, file: !85, line: 460, baseType: !5, size: 32, offset: 10112)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "slotno", scope: !84, file: !85, line: 462, baseType: !5, size: 32, offset: 10144)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "dsr_req", scope: !84, file: !85, line: 464, baseType: !64, size: 32, offset: 10176)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !84, file: !85, line: 465, baseType: !409, size: 32, offset: 10208)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_ops", scope: !84, file: !85, line: 468, baseType: !2188, size: 64, offset: 10240)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_cqe_ops", file: !85, line: 178, size: 576, elements: !2191)
!2191 = !{!2192, !2196, !2197, !2198, !2199, !2200, !2201, !2206, !2207}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_enable", scope: !2190, file: !85, line: 180, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!64, !83, !78}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_disable", scope: !2190, file: !85, line: 182, baseType: !2030, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_request", scope: !2190, file: !85, line: 187, baseType: !1999, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_post_req", scope: !2190, file: !85, line: 189, baseType: !1994, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_off", scope: !2190, file: !85, line: 195, baseType: !2030, size: 64, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_wait_for_idle", scope: !2190, file: !85, line: 200, baseType: !2021, size: 64, offset: 320)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_timeout", scope: !2190, file: !85, line: 206, baseType: !2202, size: 64, offset: 384)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!978, !83, !1943, !2205}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_recovery_start", scope: !2190, file: !85, line: 212, baseType: !2030, size: 64, offset: 448)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_recovery_finish", scope: !2190, file: !85, line: 219, baseType: !2030, size: 64, offset: 512)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_private", scope: !84, file: !85, line: 469, baseType: !227, size: 64, offset: 10304)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_qdepth", scope: !84, file: !85, line: 470, baseType: !64, size: 32, offset: 10368)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_enabled", scope: !84, file: !85, line: 471, baseType: !978, size: 8, offset: 10400)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_on", scope: !84, file: !85, line: 472, baseType: !978, size: 8, offset: 10408)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "hsq_enabled", scope: !84, file: !85, line: 475, baseType: !978, size: 8, offset: 10416)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !84, file: !85, line: 477, baseType: !1316, align: 512, offset: 10752)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !79, file: !80, line: 246, baseType: !89, size: 5568, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "ocr", scope: !79, file: !80, line: 247, baseType: !409, size: 32, offset: 5632)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rca", scope: !79, file: !80, line: 248, baseType: !5, size: 32, offset: 5664)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !80, line: 249, baseType: !5, size: 32, offset: 5696)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !79, file: !80, line: 254, baseType: !5, size: 32, offset: 5728)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !79, file: !80, line: 255, baseType: !5, size: 32, offset: 5760)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_max_rate", scope: !79, file: !80, line: 256, baseType: !5, size: 32, offset: 5792)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "reenable_cmdq", scope: !79, file: !80, line: 274, baseType: !978, size: 8, offset: 5824)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "erase_size", scope: !79, file: !80, line: 276, baseType: !5, size: 32, offset: 5856)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "erase_shift", scope: !79, file: !80, line: 277, baseType: !5, size: 32, offset: 5888)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pref_erase", scope: !79, file: !80, line: 278, baseType: !5, size: 32, offset: 5920)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "eg_boundary", scope: !79, file: !80, line: 279, baseType: !5, size: 32, offset: 5952)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "erase_arg", scope: !79, file: !80, line: 280, baseType: !5, size: 32, offset: 5984)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "erased_byte", scope: !79, file: !80, line: 281, baseType: !545, size: 8, offset: 6016)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "raw_cid", scope: !79, file: !80, line: 283, baseType: !1954, size: 128, offset: 6048)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "raw_csd", scope: !79, file: !80, line: 284, baseType: !1954, size: 128, offset: 6176)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "raw_scr", scope: !79, file: !80, line: 285, baseType: !2231, size: 64, offset: 6304)
!2231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 64, elements: !950)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "raw_ssr", scope: !79, file: !80, line: 286, baseType: !2233, size: 512, offset: 6368)
!2233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 512, elements: !770)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !79, file: !80, line: 287, baseType: !2235, size: 224, offset: 6880)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_cid", file: !80, line: 13, size: 224, elements: !2236)
!2236 = !{!2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "manfid", scope: !2235, file: !80, line: 14, baseType: !5, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "prod_name", scope: !2235, file: !80, line: 15, baseType: !915, size: 64, offset: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !2235, file: !80, line: 16, baseType: !547, size: 8, offset: 96)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2235, file: !80, line: 17, baseType: !5, size: 32, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "oemid", scope: !2235, file: !80, line: 18, baseType: !60, size: 16, offset: 160)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !2235, file: !80, line: 19, baseType: !60, size: 16, offset: 176)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "hwrev", scope: !2235, file: !80, line: 20, baseType: !547, size: 8, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "fwrev", scope: !2235, file: !80, line: 21, baseType: !547, size: 8, offset: 200)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !2235, file: !80, line: 22, baseType: !547, size: 8, offset: 208)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !79, file: !80, line: 288, baseType: !2247, size: 352, offset: 7104)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_csd", file: !80, line: 25, size: 352, elements: !2248)
!2248 = !{!2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !2247, file: !80, line: 26, baseType: !547, size: 8)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "mmca_vsn", scope: !2247, file: !80, line: 27, baseType: !547, size: 8, offset: 8)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "cmdclass", scope: !2247, file: !80, line: 28, baseType: !60, size: 16, offset: 16)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "taac_clks", scope: !2247, file: !80, line: 29, baseType: !60, size: 16, offset: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "taac_ns", scope: !2247, file: !80, line: 30, baseType: !5, size: 32, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "c_size", scope: !2247, file: !80, line: 31, baseType: !5, size: 32, offset: 96)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "r2w_factor", scope: !2247, file: !80, line: 32, baseType: !5, size: 32, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "max_dtr", scope: !2247, file: !80, line: 33, baseType: !5, size: 32, offset: 160)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "erase_size", scope: !2247, file: !80, line: 34, baseType: !5, size: 32, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "read_blkbits", scope: !2247, file: !80, line: 35, baseType: !5, size: 32, offset: 224)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "write_blkbits", scope: !2247, file: !80, line: 36, baseType: !5, size: 32, offset: 256)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2247, file: !80, line: 37, baseType: !5, size: 32, offset: 288)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "read_partial", scope: !2247, file: !80, line: 38, baseType: !5, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "read_misalign", scope: !2247, file: !80, line: 39, baseType: !5, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "write_partial", scope: !2247, file: !80, line: 40, baseType: !5, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "write_misalign", scope: !2247, file: !80, line: 41, baseType: !5, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dsr_imp", scope: !2247, file: !80, line: 42, baseType: !5, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "ext_csd", scope: !79, file: !80, line: 289, baseType: !2267, size: 1344, offset: 7488)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ext_csd", file: !80, line: 45, size: 1344, elements: !2268)
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2343, !2344, !2345, !2346}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2267, file: !80, line: 46, baseType: !545, size: 8)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "erase_group_def", scope: !2267, file: !80, line: 47, baseType: !545, size: 8, offset: 8)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "sec_feature_support", scope: !2267, file: !80, line: 48, baseType: !545, size: 8, offset: 16)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "rel_sectors", scope: !2267, file: !80, line: 49, baseType: !545, size: 8, offset: 24)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "rel_param", scope: !2267, file: !80, line: 50, baseType: !545, size: 8, offset: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_rpmb_supported", scope: !2267, file: !80, line: 51, baseType: !978, size: 8, offset: 40)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "part_config", scope: !2267, file: !80, line: 52, baseType: !545, size: 8, offset: 48)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "cache_ctrl", scope: !2267, file: !80, line: 53, baseType: !545, size: 8, offset: 56)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "rst_n_function", scope: !2267, file: !80, line: 54, baseType: !545, size: 8, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "max_packed_writes", scope: !2267, file: !80, line: 55, baseType: !545, size: 8, offset: 72)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "max_packed_reads", scope: !2267, file: !80, line: 56, baseType: !545, size: 8, offset: 80)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "packed_event_en", scope: !2267, file: !80, line: 57, baseType: !545, size: 8, offset: 88)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "part_time", scope: !2267, file: !80, line: 58, baseType: !5, size: 32, offset: 96)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "sa_timeout", scope: !2267, file: !80, line: 59, baseType: !5, size: 32, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "generic_cmd6_time", scope: !2267, file: !80, line: 60, baseType: !5, size: 32, offset: 160)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_longtime", scope: !2267, file: !80, line: 61, baseType: !5, size: 32, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_notification", scope: !2267, file: !80, line: 62, baseType: !545, size: 8, offset: 224)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "hs_max_dtr", scope: !2267, file: !80, line: 63, baseType: !5, size: 32, offset: 256)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "hs200_max_dtr", scope: !2267, file: !80, line: 64, baseType: !5, size: 32, offset: 288)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sectors", scope: !2267, file: !80, line: 69, baseType: !5, size: 32, offset: 320)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "hc_erase_size", scope: !2267, file: !80, line: 70, baseType: !5, size: 32, offset: 352)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "hc_erase_timeout", scope: !2267, file: !80, line: 71, baseType: !5, size: 32, offset: 384)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "sec_trim_mult", scope: !2267, file: !80, line: 72, baseType: !5, size: 32, offset: 416)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "sec_erase_mult", scope: !2267, file: !80, line: 73, baseType: !5, size: 32, offset: 448)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "trim_timeout", scope: !2267, file: !80, line: 74, baseType: !5, size: 32, offset: 480)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "partition_setting_completed", scope: !2267, file: !80, line: 75, baseType: !978, size: 8, offset: 512)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_area_offset", scope: !2267, file: !80, line: 76, baseType: !276, size: 64, offset: 576)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_area_size", scope: !2267, file: !80, line: 77, baseType: !5, size: 32, offset: 640)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size", scope: !2267, file: !80, line: 78, baseType: !5, size: 32, offset: 672)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "hpi_en", scope: !2267, file: !80, line: 79, baseType: !978, size: 8, offset: 704)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "hpi", scope: !2267, file: !80, line: 80, baseType: !978, size: 8, offset: 712)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "hpi_cmd", scope: !2267, file: !80, line: 81, baseType: !5, size: 32, offset: 736)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "bkops", scope: !2267, file: !80, line: 82, baseType: !978, size: 8, offset: 768)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "man_bkops_en", scope: !2267, file: !80, line: 83, baseType: !978, size: 8, offset: 776)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "auto_bkops_en", scope: !2267, file: !80, line: 84, baseType: !978, size: 8, offset: 784)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "data_sector_size", scope: !2267, file: !80, line: 85, baseType: !5, size: 32, offset: 800)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "data_tag_unit_size", scope: !2267, file: !80, line: 86, baseType: !5, size: 32, offset: 832)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "boot_ro_lock", scope: !2267, file: !80, line: 87, baseType: !5, size: 32, offset: 864)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "boot_ro_lockable", scope: !2267, file: !80, line: 88, baseType: !978, size: 8, offset: 896)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ffu_capable", scope: !2267, file: !80, line: 89, baseType: !978, size: 8, offset: 904)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_en", scope: !2267, file: !80, line: 90, baseType: !978, size: 8, offset: 912)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_support", scope: !2267, file: !80, line: 91, baseType: !978, size: 8, offset: 920)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_depth", scope: !2267, file: !80, line: 92, baseType: !5, size: 32, offset: 928)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "fwrev", scope: !2267, file: !80, line: 94, baseType: !2313, size: 64, offset: 960)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 64, elements: !514)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "raw_exception_status", scope: !2267, file: !80, line: 95, baseType: !545, size: 8, offset: 1024)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "raw_partition_support", scope: !2267, file: !80, line: 96, baseType: !545, size: 8, offset: 1032)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "raw_rpmb_size_mult", scope: !2267, file: !80, line: 97, baseType: !545, size: 8, offset: 1040)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "raw_erased_mem_count", scope: !2267, file: !80, line: 98, baseType: !545, size: 8, offset: 1048)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "strobe_support", scope: !2267, file: !80, line: 99, baseType: !545, size: 8, offset: 1056)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "raw_ext_csd_structure", scope: !2267, file: !80, line: 100, baseType: !545, size: 8, offset: 1064)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "raw_card_type", scope: !2267, file: !80, line: 101, baseType: !545, size: 8, offset: 1072)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "raw_driver_strength", scope: !2267, file: !80, line: 102, baseType: !545, size: 8, offset: 1080)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_int_time", scope: !2267, file: !80, line: 103, baseType: !545, size: 8, offset: 1088)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_52_195", scope: !2267, file: !80, line: 104, baseType: !545, size: 8, offset: 1096)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_26_195", scope: !2267, file: !80, line: 105, baseType: !545, size: 8, offset: 1104)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_52_360", scope: !2267, file: !80, line: 106, baseType: !545, size: 8, offset: 1112)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_26_360", scope: !2267, file: !80, line: 107, baseType: !545, size: 8, offset: 1120)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "raw_s_a_timeout", scope: !2267, file: !80, line: 108, baseType: !545, size: 8, offset: 1128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "raw_hc_erase_gap_size", scope: !2267, file: !80, line: 109, baseType: !545, size: 8, offset: 1136)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "raw_erase_timeout_mult", scope: !2267, file: !80, line: 110, baseType: !545, size: 8, offset: 1144)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "raw_hc_erase_grp_size", scope: !2267, file: !80, line: 111, baseType: !545, size: 8, offset: 1152)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_trim_mult", scope: !2267, file: !80, line: 112, baseType: !545, size: 8, offset: 1160)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_erase_mult", scope: !2267, file: !80, line: 113, baseType: !545, size: 8, offset: 1168)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_feature_support", scope: !2267, file: !80, line: 114, baseType: !545, size: 8, offset: 1176)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "raw_trim_mult", scope: !2267, file: !80, line: 115, baseType: !545, size: 8, offset: 1184)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_200_195", scope: !2267, file: !80, line: 116, baseType: !545, size: 8, offset: 1192)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_200_360", scope: !2267, file: !80, line: 117, baseType: !545, size: 8, offset: 1200)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_52_195", scope: !2267, file: !80, line: 118, baseType: !545, size: 8, offset: 1208)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_52_360", scope: !2267, file: !80, line: 119, baseType: !545, size: 8, offset: 1216)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_200_360", scope: !2267, file: !80, line: 120, baseType: !545, size: 8, offset: 1224)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "raw_bkops_status", scope: !2267, file: !80, line: 121, baseType: !545, size: 8, offset: 1232)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sectors", scope: !2267, file: !80, line: 122, baseType: !2342, size: 32, offset: 1240)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 32, elements: !353)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "pre_eol_info", scope: !2267, file: !80, line: 123, baseType: !545, size: 8, offset: 1272)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "device_life_time_est_typ_a", scope: !2267, file: !80, line: 124, baseType: !545, size: 8, offset: 1280)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "device_life_time_est_typ_b", scope: !2267, file: !80, line: 125, baseType: !545, size: 8, offset: 1288)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "feature_support", scope: !2267, file: !80, line: 127, baseType: !5, size: 32, offset: 1312)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "scr", scope: !79, file: !80, line: 290, baseType: !2348, size: 48, offset: 8832)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_scr", file: !80, line: 131, size: 48, elements: !2349)
!2349 = !{!2350, !2351, !2352, !2353, !2354, !2355}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "sda_vsn", scope: !2348, file: !80, line: 132, baseType: !547, size: 8)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sda_spec3", scope: !2348, file: !80, line: 133, baseType: !547, size: 8, offset: 8)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "sda_spec4", scope: !2348, file: !80, line: 134, baseType: !547, size: 8, offset: 16)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "sda_specx", scope: !2348, file: !80, line: 135, baseType: !547, size: 8, offset: 24)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "bus_widths", scope: !2348, file: !80, line: 136, baseType: !547, size: 8, offset: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !2348, file: !80, line: 139, baseType: !547, size: 8, offset: 40)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ssr", scope: !79, file: !80, line: 291, baseType: !2357, size: 96, offset: 8896)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_ssr", file: !80, line: 144, size: 96, elements: !2358)
!2358 = !{!2359, !2360, !2361}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !2357, file: !80, line: 145, baseType: !5, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "erase_timeout", scope: !2357, file: !80, line: 146, baseType: !5, size: 32, offset: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "erase_offset", scope: !2357, file: !80, line: 147, baseType: !5, size: 32, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sw_caps", scope: !79, file: !80, line: 292, baseType: !2363, size: 160, offset: 8992)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_switch_caps", file: !80, line: 150, size: 160, elements: !2364)
!2364 = !{!2365, !2366, !2367, !2368, !2369}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "hs_max_dtr", scope: !2363, file: !80, line: 151, baseType: !5, size: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "uhs_max_dtr", scope: !2363, file: !80, line: 152, baseType: !5, size: 32, offset: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_bus_mode", scope: !2363, file: !80, line: 160, baseType: !5, size: 32, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_drv_type", scope: !2363, file: !80, line: 174, baseType: !5, size: 32, offset: 96)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_curr_limit", scope: !2363, file: !80, line: 179, baseType: !5, size: 32, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_funcs", scope: !79, file: !80, line: 294, baseType: !5, size: 32, offset: 9152)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_funcs_probed", scope: !79, file: !80, line: 295, baseType: !294, size: 32, offset: 9184)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "cccr", scope: !79, file: !80, line: 296, baseType: !2373, size: 96, offset: 9216)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_cccr", file: !80, line: 192, size: 96, elements: !2374)
!2374 = !{!2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_vsn", scope: !2373, file: !80, line: 193, baseType: !5, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "sd_vsn", scope: !2373, file: !80, line: 194, baseType: !5, size: 32, offset: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "multi_block", scope: !2373, file: !80, line: 195, baseType: !5, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "low_speed", scope: !2373, file: !80, line: 196, baseType: !5, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "wide_bus", scope: !2373, file: !80, line: 197, baseType: !5, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "high_power", scope: !2373, file: !80, line: 198, baseType: !5, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "high_speed", scope: !2373, file: !80, line: 199, baseType: !5, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "disable_cd", scope: !2373, file: !80, line: 200, baseType: !5, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "cis", scope: !79, file: !80, line: 297, baseType: !2384, size: 96, offset: 9312)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_cis", file: !80, line: 203, size: 96, elements: !2385)
!2385 = !{!2386, !2387, !2388, !2389}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2384, file: !80, line: 204, baseType: !60, size: 16)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2384, file: !80, line: 205, baseType: !60, size: 16, offset: 16)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2384, file: !80, line: 206, baseType: !60, size: 16, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "max_dtr", scope: !2384, file: !80, line: 207, baseType: !5, size: 32, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_func", scope: !79, file: !80, line: 298, baseType: !2391, size: 448, offset: 9408)
!2391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 448, elements: !2392)
!2392 = !{!2393}
!2393 = !DISubrange(count: 7)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_single_irq", scope: !79, file: !80, line: 299, baseType: !73, size: 64, offset: 9856)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "major_rev", scope: !79, file: !80, line: 300, baseType: !545, size: 8, offset: 9920)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "minor_rev", scope: !79, file: !80, line: 301, baseType: !545, size: 8, offset: 9928)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "num_info", scope: !79, file: !80, line: 302, baseType: !5, size: 32, offset: 9952)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !79, file: !80, line: 303, baseType: !2399, size: 64, offset: 9984)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "tuples", scope: !79, file: !80, line: 304, baseType: !2401, size: 64, offset: 10048)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_func_tuple", file: !75, line: 24, size: 128, elements: !2403)
!2403 = !{!2404, !2405, !2406, !2407}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2402, file: !75, line: 25, baseType: !2401, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2402, file: !75, line: 26, baseType: !547, size: 8, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2402, file: !75, line: 27, baseType: !547, size: 8, offset: 72)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2402, file: !75, line: 28, baseType: !2408, offset: 80)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, elements: !1317)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "sd_bus_speed", scope: !79, file: !80, line: 306, baseType: !5, size: 32, offset: 10112)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_avail_type", scope: !79, file: !80, line: 307, baseType: !5, size: 32, offset: 10144)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !79, file: !80, line: 308, baseType: !5, size: 32, offset: 10176)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !79, file: !80, line: 310, baseType: !2180, size: 64, offset: 10240)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !79, file: !80, line: 311, baseType: !2414, size: 2240, offset: 10304)
!2414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2415, size: 2240, elements: !2392)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_part", file: !80, line: 229, size: 320, elements: !2416)
!2416 = !{!2417, !2418, !2419, !2421, !2422}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2415, file: !80, line: 230, baseType: !273, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "part_cfg", scope: !2415, file: !80, line: 231, baseType: !5, size: 32, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2415, file: !80, line: 232, baseType: !2420, size: 160, offset: 96)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 160, elements: !1169)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "force_ro", scope: !2415, file: !80, line: 233, baseType: !978, size: 8, offset: 256)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "area_type", scope: !2415, file: !80, line: 234, baseType: !5, size: 32, offset: 288)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_parts", scope: !79, file: !80, line: 312, baseType: !5, size: 32, offset: 12544)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "bouncesz", scope: !79, file: !80, line: 314, baseType: !5, size: 32, offset: 12576)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "complete_wq", scope: !79, file: !80, line: 315, baseType: !2135, size: 64, offset: 12608)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !74, file: !75, line: 36, baseType: !89, size: 5568, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "irq_handler", scope: !74, file: !75, line: 37, baseType: !2428, size: 64, offset: 5632)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "sdio_irq_handler_t", file: !75, line: 19, baseType: !71)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !74, file: !75, line: 38, baseType: !5, size: 32, offset: 5696)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !74, file: !75, line: 40, baseType: !547, size: 8, offset: 5728)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !74, file: !75, line: 41, baseType: !60, size: 16, offset: 5744)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !74, file: !75, line: 42, baseType: !60, size: 16, offset: 5760)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "max_blksize", scope: !74, file: !75, line: 44, baseType: !5, size: 32, offset: 5792)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "cur_blksize", scope: !74, file: !75, line: 45, baseType: !5, size: 32, offset: 5824)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "enable_timeout", scope: !74, file: !75, line: 47, baseType: !5, size: 32, offset: 5856)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !74, file: !75, line: 49, baseType: !5, size: 32, offset: 5888)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "tmpbuf", scope: !74, file: !75, line: 52, baseType: !2439, size: 64, offset: 5952)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "major_rev", scope: !74, file: !75, line: 54, baseType: !545, size: 8, offset: 6016)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "minor_rev", scope: !74, file: !75, line: 55, baseType: !545, size: 8, offset: 6024)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "num_info", scope: !74, file: !75, line: 56, baseType: !5, size: 32, offset: 6048)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !74, file: !75, line: 57, baseType: !2399, size: 64, offset: 6080)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "tuples", scope: !74, file: !75, line: 59, baseType: !2401, size: 64, offset: 6144)
!2445 = !DILocalVariable(name: "func", arg: 1, scope: !70, file: !1, line: 27, type: !73)
!2446 = !DILocation(line: 27, column: 40, scope: !70)
!2447 = !DILocalVariable(name: "__ret_warn_on", scope: !2448, file: !1, line: 29, type: !64)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !1, line: 29, column: 6)
!2449 = distinct !DILexicalBlock(scope: !70, file: !1, line: 29, column: 6)
!2450 = !DILocation(line: 29, column: 6, scope: !2448)
!2451 = !DILocation(line: 29, column: 6, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2448, file: !1, line: 29, column: 6)
!2453 = !DILocation(line: 29, column: 6, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 29, column: 6)
!2455 = !DILocation(line: 29, column: 6, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 29, column: 6)
!2457 = !DILocation(line: 29, column: 6, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 29, column: 6)
!2459 = !{i32 -2143687761, i32 -2143687732, i32 -2143687686, i32 -2143687628, i32 -2143687574, i32 -2143687520, i32 -2143687465, i32 -2143687434}
!2460 = !DILocation(line: 29, column: 6, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 29, column: 6)
!2462 = !{i32 -2143687027, i32 -2143687020, i32 -2143686968, i32 -2143686937, i32 -2143686907}
!2463 = !DILocation(line: 29, column: 6, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 29, column: 6)
!2465 = !DILocation(line: 29, column: 6, scope: !2449)
!2466 = !DILocation(line: 29, column: 6, scope: !70)
!2467 = !DILocation(line: 30, column: 3, scope: !2449)
!2468 = !DILocation(line: 32, column: 17, scope: !70)
!2469 = !DILocation(line: 32, column: 23, scope: !70)
!2470 = !DILocation(line: 32, column: 29, scope: !70)
!2471 = !DILocation(line: 32, column: 2, scope: !70)
!2472 = !DILocation(line: 33, column: 1, scope: !70)
!2473 = distinct !DISubprogram(name: "mmc_claim_host", scope: !2149, file: !2149, line: 134, type: !2031, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !128)
!2474 = !DILocalVariable(name: "host", arg: 1, scope: !2473, file: !2149, line: 134, type: !83)
!2475 = !DILocation(line: 134, column: 52, scope: !2473)
!2476 = !DILocation(line: 136, column: 19, scope: !2473)
!2477 = !DILocation(line: 136, column: 2, scope: !2473)
!2478 = !DILocation(line: 137, column: 1, scope: !2473)
!2479 = distinct !DISubprogram(name: "sdio_release_host", scope: !1, file: !1, line: 43, type: !71, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!2480 = !DILocalVariable(name: "func", arg: 1, scope: !2479, file: !1, line: 43, type: !73)
!2481 = !DILocation(line: 43, column: 42, scope: !2479)
!2482 = !DILocalVariable(name: "__ret_warn_on", scope: !2483, file: !1, line: 45, type: !64)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !1, line: 45, column: 6)
!2484 = distinct !DILexicalBlock(scope: !2479, file: !1, line: 45, column: 6)
!2485 = !DILocation(line: 45, column: 6, scope: !2483)
!2486 = !DILocation(line: 45, column: 6, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2483, file: !1, line: 45, column: 6)
!2488 = !DILocation(line: 45, column: 6, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2487, file: !1, line: 45, column: 6)
!2490 = !DILocation(line: 45, column: 6, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 45, column: 6)
!2492 = !DILocation(line: 45, column: 6, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 45, column: 6)
!2494 = !{i32 -2143686233, i32 -2143686204, i32 -2143686158, i32 -2143686100, i32 -2143686046, i32 -2143685992, i32 -2143685937, i32 -2143685906}
!2495 = !DILocation(line: 45, column: 6, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 45, column: 6)
!2497 = !{i32 -2143685499, i32 -2143685492, i32 -2143685440, i32 -2143685409, i32 -2143685379}
!2498 = !DILocation(line: 45, column: 6, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 45, column: 6)
!2500 = !DILocation(line: 45, column: 6, scope: !2484)
!2501 = !DILocation(line: 45, column: 6, scope: !2479)
!2502 = !DILocation(line: 46, column: 3, scope: !2484)
!2503 = !DILocation(line: 48, column: 19, scope: !2479)
!2504 = !DILocation(line: 48, column: 25, scope: !2479)
!2505 = !DILocation(line: 48, column: 31, scope: !2479)
!2506 = !DILocation(line: 48, column: 2, scope: !2479)
!2507 = !DILocation(line: 49, column: 1, scope: !2479)
!2508 = distinct !DISubprogram(name: "sdio_enable_func", scope: !1, file: !1, line: 59, type: !2509, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!64, !73}
!2511 = !DILocalVariable(name: "m", arg: 1, scope: !2512, file: !2513, line: 363, type: !2516)
!2512 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !2513, file: !2513, line: 363, type: !2514, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !128)
!2513 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!203, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2517 = !DILocation(line: 363, column: 74, scope: !2512, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 80, column: 22, scope: !2508)
!2519 = !DILocalVariable(name: "func", arg: 1, scope: !2508, file: !1, line: 59, type: !73)
!2520 = !DILocation(line: 59, column: 40, scope: !2508)
!2521 = !DILocalVariable(name: "ret", scope: !2508, file: !1, line: 61, type: !64)
!2522 = !DILocation(line: 61, column: 6, scope: !2508)
!2523 = !DILocalVariable(name: "reg", scope: !2508, file: !1, line: 62, type: !547)
!2524 = !DILocation(line: 62, column: 16, scope: !2508)
!2525 = !DILocalVariable(name: "timeout", scope: !2508, file: !1, line: 63, type: !203)
!2526 = !DILocation(line: 63, column: 16, scope: !2508)
!2527 = !DILocation(line: 65, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 65, column: 6)
!2529 = !DILocation(line: 65, column: 6, scope: !2508)
!2530 = !DILocation(line: 66, column: 3, scope: !2528)
!2531 = !DILocation(line: 68, column: 2, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !1, line: 68, column: 2)
!2533 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 68, column: 2)
!2534 = !DILocation(line: 68, column: 2, scope: !2533)
!2535 = !DILocation(line: 70, column: 25, scope: !2508)
!2536 = !DILocation(line: 70, column: 31, scope: !2508)
!2537 = !DILocation(line: 70, column: 8, scope: !2508)
!2538 = !DILocation(line: 70, column: 6, scope: !2508)
!2539 = !DILocation(line: 71, column: 6, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 71, column: 6)
!2541 = !DILocation(line: 71, column: 6, scope: !2508)
!2542 = !DILocation(line: 72, column: 3, scope: !2540)
!2543 = !DILocation(line: 74, column: 14, scope: !2508)
!2544 = !DILocation(line: 74, column: 20, scope: !2508)
!2545 = !DILocation(line: 74, column: 11, scope: !2508)
!2546 = !DILocation(line: 74, column: 6, scope: !2508)
!2547 = !DILocation(line: 76, column: 25, scope: !2508)
!2548 = !DILocation(line: 76, column: 31, scope: !2508)
!2549 = !DILocation(line: 76, column: 59, scope: !2508)
!2550 = !DILocation(line: 76, column: 8, scope: !2508)
!2551 = !DILocation(line: 76, column: 6, scope: !2508)
!2552 = !DILocation(line: 77, column: 6, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 77, column: 6)
!2554 = !DILocation(line: 77, column: 6, scope: !2508)
!2555 = !DILocation(line: 78, column: 3, scope: !2553)
!2556 = !DILocation(line: 80, column: 12, scope: !2508)
!2557 = !DILocation(line: 80, column: 39, scope: !2508)
!2558 = !DILocation(line: 80, column: 45, scope: !2508)
!2559 = !DILocation(line: 365, column: 27, scope: !2560, inlinedAt: !2518)
!2560 = distinct !DILexicalBlock(scope: !2512, file: !2513, line: 365, column: 6)
!2561 = !DILocation(line: 365, column: 6, scope: !2560, inlinedAt: !2518)
!2562 = !DILocation(line: 365, column: 6, scope: !2512, inlinedAt: !2518)
!2563 = !DILocation(line: 366, column: 12, scope: !2564, inlinedAt: !2518)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !2513, line: 366, column: 7)
!2565 = distinct !DILexicalBlock(scope: !2560, file: !2513, line: 365, column: 31)
!2566 = !DILocation(line: 366, column: 14, scope: !2564, inlinedAt: !2518)
!2567 = !DILocation(line: 366, column: 7, scope: !2565, inlinedAt: !2518)
!2568 = !DILocation(line: 367, column: 4, scope: !2564, inlinedAt: !2518)
!2569 = !DILocation(line: 368, column: 28, scope: !2565, inlinedAt: !2518)
!2570 = !DILocation(line: 368, column: 10, scope: !2565, inlinedAt: !2518)
!2571 = !DILocation(line: 368, column: 3, scope: !2565, inlinedAt: !2518)
!2572 = !DILocation(line: 370, column: 29, scope: !2573, inlinedAt: !2518)
!2573 = distinct !DILexicalBlock(scope: !2560, file: !2513, line: 369, column: 9)
!2574 = !DILocation(line: 370, column: 10, scope: !2573, inlinedAt: !2518)
!2575 = !DILocation(line: 370, column: 3, scope: !2573, inlinedAt: !2518)
!2576 = !DILocation(line: 372, column: 1, scope: !2512, inlinedAt: !2518)
!2577 = !DILocation(line: 80, column: 20, scope: !2508)
!2578 = !DILocation(line: 80, column: 10, scope: !2508)
!2579 = !DILocation(line: 82, column: 2, scope: !2508)
!2580 = !DILocation(line: 83, column: 26, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 82, column: 12)
!2582 = !DILocation(line: 83, column: 32, scope: !2581)
!2583 = !DILocation(line: 83, column: 9, scope: !2581)
!2584 = !DILocation(line: 83, column: 7, scope: !2581)
!2585 = !DILocation(line: 84, column: 7, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2581, file: !1, line: 84, column: 7)
!2587 = !DILocation(line: 84, column: 7, scope: !2581)
!2588 = !DILocation(line: 85, column: 4, scope: !2586)
!2589 = !DILocation(line: 86, column: 7, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2581, file: !1, line: 86, column: 7)
!2591 = !DILocation(line: 86, column: 19, scope: !2590)
!2592 = !DILocation(line: 86, column: 25, scope: !2590)
!2593 = !DILocation(line: 86, column: 16, scope: !2590)
!2594 = !DILocation(line: 86, column: 11, scope: !2590)
!2595 = !DILocation(line: 86, column: 7, scope: !2581)
!2596 = !DILocation(line: 87, column: 4, scope: !2590)
!2597 = !DILocation(line: 88, column: 7, scope: !2581)
!2598 = !DILocation(line: 89, column: 7, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2581, file: !1, line: 89, column: 7)
!2600 = !DILocation(line: 89, column: 7, scope: !2581)
!2601 = !DILocation(line: 90, column: 4, scope: !2599)
!2602 = distinct !{!2602, !2579, !2603}
!2603 = !DILocation(line: 91, column: 2, scope: !2508)
!2604 = !DILocation(line: 93, column: 2, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !1, line: 93, column: 2)
!2606 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 93, column: 2)
!2607 = !DILocation(line: 93, column: 2, scope: !2606)
!2608 = !DILocation(line: 95, column: 2, scope: !2508)
!2609 = !DILabel(scope: !2508, name: "err", file: !1, line: 97)
!2610 = !DILocation(line: 97, column: 1, scope: !2508)
!2611 = !DILocation(line: 98, column: 2, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !1, line: 98, column: 2)
!2613 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 98, column: 2)
!2614 = !DILocation(line: 98, column: 2, scope: !2613)
!2615 = !DILocation(line: 99, column: 9, scope: !2508)
!2616 = !DILocation(line: 99, column: 2, scope: !2508)
!2617 = !DILocation(line: 100, column: 1, scope: !2508)
!2618 = distinct !DISubprogram(name: "sdio_disable_func", scope: !1, file: !1, line: 110, type: !2509, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!2619 = !DILocalVariable(name: "func", arg: 1, scope: !2618, file: !1, line: 110, type: !73)
!2620 = !DILocation(line: 110, column: 41, scope: !2618)
!2621 = !DILocalVariable(name: "ret", scope: !2618, file: !1, line: 112, type: !64)
!2622 = !DILocation(line: 112, column: 6, scope: !2618)
!2623 = !DILocalVariable(name: "reg", scope: !2618, file: !1, line: 113, type: !547)
!2624 = !DILocation(line: 113, column: 16, scope: !2618)
!2625 = !DILocation(line: 115, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 115, column: 6)
!2627 = !DILocation(line: 115, column: 6, scope: !2618)
!2628 = !DILocation(line: 116, column: 3, scope: !2626)
!2629 = !DILocation(line: 118, column: 2, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !1, line: 118, column: 2)
!2631 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 118, column: 2)
!2632 = !DILocation(line: 118, column: 2, scope: !2631)
!2633 = !DILocation(line: 120, column: 25, scope: !2618)
!2634 = !DILocation(line: 120, column: 31, scope: !2618)
!2635 = !DILocation(line: 120, column: 8, scope: !2618)
!2636 = !DILocation(line: 120, column: 6, scope: !2618)
!2637 = !DILocation(line: 121, column: 6, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 121, column: 6)
!2639 = !DILocation(line: 121, column: 6, scope: !2618)
!2640 = !DILocation(line: 122, column: 3, scope: !2638)
!2641 = !DILocation(line: 124, column: 16, scope: !2618)
!2642 = !DILocation(line: 124, column: 22, scope: !2618)
!2643 = !DILocation(line: 124, column: 13, scope: !2618)
!2644 = !DILocation(line: 124, column: 9, scope: !2618)
!2645 = !DILocation(line: 124, column: 6, scope: !2618)
!2646 = !DILocation(line: 126, column: 25, scope: !2618)
!2647 = !DILocation(line: 126, column: 31, scope: !2618)
!2648 = !DILocation(line: 126, column: 59, scope: !2618)
!2649 = !DILocation(line: 126, column: 8, scope: !2618)
!2650 = !DILocation(line: 126, column: 6, scope: !2618)
!2651 = !DILocation(line: 127, column: 6, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 127, column: 6)
!2653 = !DILocation(line: 127, column: 6, scope: !2618)
!2654 = !DILocation(line: 128, column: 3, scope: !2652)
!2655 = !DILocation(line: 130, column: 2, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !1, line: 130, column: 2)
!2657 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 130, column: 2)
!2658 = !DILocation(line: 130, column: 2, scope: !2657)
!2659 = !DILocation(line: 132, column: 2, scope: !2618)
!2660 = !DILabel(scope: !2618, name: "err", file: !1, line: 134)
!2661 = !DILocation(line: 134, column: 1, scope: !2618)
!2662 = !DILocation(line: 135, column: 2, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !1, line: 135, column: 2)
!2664 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 135, column: 2)
!2665 = !DILocation(line: 135, column: 2, scope: !2664)
!2666 = !DILocation(line: 136, column: 9, scope: !2618)
!2667 = !DILocation(line: 136, column: 2, scope: !2618)
!2668 = !DILocation(line: 137, column: 1, scope: !2618)
!2669 = distinct !DISubprogram(name: "sdio_set_block_size", scope: !1, file: !1, line: 159, type: !2670, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!64, !73, !5}
!2672 = !DILocalVariable(name: "func", arg: 1, scope: !2669, file: !1, line: 159, type: !73)
!2673 = !DILocation(line: 159, column: 43, scope: !2669)
!2674 = !DILocalVariable(name: "blksz", arg: 2, scope: !2669, file: !1, line: 159, type: !5)
!2675 = !DILocation(line: 159, column: 58, scope: !2669)
!2676 = !DILocalVariable(name: "ret", scope: !2669, file: !1, line: 161, type: !64)
!2677 = !DILocation(line: 161, column: 6, scope: !2669)
!2678 = !DILocation(line: 163, column: 6, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2669, file: !1, line: 163, column: 6)
!2680 = !DILocation(line: 163, column: 14, scope: !2679)
!2681 = !DILocation(line: 163, column: 20, scope: !2679)
!2682 = !DILocation(line: 163, column: 26, scope: !2679)
!2683 = !DILocation(line: 163, column: 32, scope: !2679)
!2684 = !DILocation(line: 163, column: 12, scope: !2679)
!2685 = !DILocation(line: 163, column: 6, scope: !2669)
!2686 = !DILocation(line: 164, column: 3, scope: !2679)
!2687 = !DILocation(line: 166, column: 6, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2669, file: !1, line: 166, column: 6)
!2689 = !DILocation(line: 166, column: 12, scope: !2688)
!2690 = !DILocation(line: 166, column: 6, scope: !2669)
!2691 = !DILocalVariable(name: "__UNIQUE_ID___x158", scope: !2692, file: !1, line: 167, type: !5)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !1, line: 167, column: 11)
!2693 = distinct !DILexicalBlock(scope: !2688, file: !1, line: 166, column: 18)
!2694 = !DILocation(line: 167, column: 11, scope: !2692)
!2695 = !DILocalVariable(name: "__UNIQUE_ID___y159", scope: !2692, file: !1, line: 167, type: !5)
!2696 = !DILocation(line: 167, column: 9, scope: !2693)
!2697 = !DILocalVariable(name: "__UNIQUE_ID___x160", scope: !2698, file: !1, line: 168, type: !5)
!2698 = distinct !DILexicalBlock(scope: !2693, file: !1, line: 168, column: 11)
!2699 = !DILocation(line: 168, column: 11, scope: !2698)
!2700 = !DILocalVariable(name: "__UNIQUE_ID___y161", scope: !2698, file: !1, line: 168, type: !5)
!2701 = !DILocation(line: 168, column: 9, scope: !2693)
!2702 = !DILocation(line: 169, column: 2, scope: !2693)
!2703 = !DILocation(line: 171, column: 25, scope: !2669)
!2704 = !DILocation(line: 171, column: 31, scope: !2669)
!2705 = !DILocation(line: 172, column: 3, scope: !2669)
!2706 = !DILocation(line: 172, column: 28, scope: !2669)
!2707 = !DILocation(line: 173, column: 3, scope: !2669)
!2708 = !DILocation(line: 173, column: 9, scope: !2669)
!2709 = !DILocation(line: 171, column: 8, scope: !2669)
!2710 = !DILocation(line: 171, column: 6, scope: !2669)
!2711 = !DILocation(line: 174, column: 6, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2669, file: !1, line: 174, column: 6)
!2713 = !DILocation(line: 174, column: 6, scope: !2669)
!2714 = !DILocation(line: 175, column: 10, scope: !2712)
!2715 = !DILocation(line: 175, column: 3, scope: !2712)
!2716 = !DILocation(line: 176, column: 25, scope: !2669)
!2717 = !DILocation(line: 176, column: 31, scope: !2669)
!2718 = !DILocation(line: 177, column: 3, scope: !2669)
!2719 = !DILocation(line: 177, column: 28, scope: !2669)
!2720 = !DILocation(line: 177, column: 47, scope: !2669)
!2721 = !DILocation(line: 178, column: 4, scope: !2669)
!2722 = !DILocation(line: 178, column: 10, scope: !2669)
!2723 = !DILocation(line: 178, column: 16, scope: !2669)
!2724 = !DILocation(line: 178, column: 3, scope: !2669)
!2725 = !DILocation(line: 176, column: 8, scope: !2669)
!2726 = !DILocation(line: 176, column: 6, scope: !2669)
!2727 = !DILocation(line: 179, column: 6, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2669, file: !1, line: 179, column: 6)
!2729 = !DILocation(line: 179, column: 6, scope: !2669)
!2730 = !DILocation(line: 180, column: 10, scope: !2728)
!2731 = !DILocation(line: 180, column: 3, scope: !2728)
!2732 = !DILocation(line: 181, column: 22, scope: !2669)
!2733 = !DILocation(line: 181, column: 2, scope: !2669)
!2734 = !DILocation(line: 181, column: 8, scope: !2669)
!2735 = !DILocation(line: 181, column: 20, scope: !2669)
!2736 = !DILocation(line: 182, column: 2, scope: !2669)
!2737 = !DILocation(line: 183, column: 1, scope: !2669)
!2738 = distinct !DISubprogram(name: "sdio_align_size", scope: !1, file: !1, line: 233, type: !2739, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!5, !73, !5}
!2741 = !DILocalVariable(name: "func", arg: 1, scope: !2738, file: !1, line: 233, type: !73)
!2742 = !DILocation(line: 233, column: 48, scope: !2738)
!2743 = !DILocalVariable(name: "sz", arg: 2, scope: !2738, file: !1, line: 233, type: !5)
!2744 = !DILocation(line: 233, column: 67, scope: !2738)
!2745 = !DILocalVariable(name: "orig_sz", scope: !2738, file: !1, line: 235, type: !5)
!2746 = !DILocation(line: 235, column: 15, scope: !2738)
!2747 = !DILocalVariable(name: "blk_sz", scope: !2738, file: !1, line: 236, type: !5)
!2748 = !DILocation(line: 236, column: 15, scope: !2738)
!2749 = !DILocalVariable(name: "byte_sz", scope: !2738, file: !1, line: 236, type: !5)
!2750 = !DILocation(line: 236, column: 23, scope: !2738)
!2751 = !DILocalVariable(name: "chunk_sz", scope: !2738, file: !1, line: 237, type: !5)
!2752 = !DILocation(line: 237, column: 11, scope: !2738)
!2753 = !DILocation(line: 239, column: 12, scope: !2738)
!2754 = !DILocation(line: 239, column: 10, scope: !2738)
!2755 = !DILocation(line: 246, column: 24, scope: !2738)
!2756 = !DILocation(line: 246, column: 7, scope: !2738)
!2757 = !DILocation(line: 246, column: 5, scope: !2738)
!2758 = !DILocation(line: 252, column: 6, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2738, file: !1, line: 252, column: 6)
!2760 = !DILocation(line: 252, column: 31, scope: !2759)
!2761 = !DILocation(line: 252, column: 12, scope: !2759)
!2762 = !DILocation(line: 252, column: 9, scope: !2759)
!2763 = !DILocation(line: 252, column: 6, scope: !2738)
!2764 = !DILocation(line: 253, column: 10, scope: !2759)
!2765 = !DILocation(line: 253, column: 3, scope: !2759)
!2766 = !DILocation(line: 255, column: 6, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2738, file: !1, line: 255, column: 6)
!2768 = !DILocation(line: 255, column: 12, scope: !2767)
!2769 = !DILocation(line: 255, column: 18, scope: !2767)
!2770 = !DILocation(line: 255, column: 23, scope: !2767)
!2771 = !DILocation(line: 255, column: 6, scope: !2738)
!2772 = !DILocation(line: 259, column: 8, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !1, line: 259, column: 7)
!2774 = distinct !DILexicalBlock(scope: !2767, file: !1, line: 255, column: 36)
!2775 = !DILocation(line: 259, column: 13, scope: !2773)
!2776 = !DILocation(line: 259, column: 19, scope: !2773)
!2777 = !DILocation(line: 259, column: 11, scope: !2773)
!2778 = !DILocation(line: 259, column: 32, scope: !2773)
!2779 = !DILocation(line: 259, column: 7, scope: !2774)
!2780 = !DILocation(line: 260, column: 11, scope: !2773)
!2781 = !DILocation(line: 260, column: 4, scope: !2773)
!2782 = !DILocation(line: 266, column: 14, scope: !2774)
!2783 = !DILocation(line: 266, column: 19, scope: !2774)
!2784 = !DILocation(line: 266, column: 25, scope: !2774)
!2785 = !DILocation(line: 266, column: 17, scope: !2774)
!2786 = !DILocation(line: 266, column: 37, scope: !2774)
!2787 = !DILocation(line: 267, column: 4, scope: !2774)
!2788 = !DILocation(line: 267, column: 10, scope: !2774)
!2789 = !DILocation(line: 266, column: 42, scope: !2774)
!2790 = !DILocation(line: 267, column: 25, scope: !2774)
!2791 = !DILocation(line: 267, column: 31, scope: !2774)
!2792 = !DILocation(line: 267, column: 23, scope: !2774)
!2793 = !DILocation(line: 266, column: 10, scope: !2774)
!2794 = !DILocation(line: 268, column: 29, scope: !2774)
!2795 = !DILocation(line: 268, column: 12, scope: !2774)
!2796 = !DILocation(line: 268, column: 10, scope: !2774)
!2797 = !DILocation(line: 274, column: 8, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2774, file: !1, line: 274, column: 7)
!2799 = !DILocation(line: 274, column: 17, scope: !2798)
!2800 = !DILocation(line: 274, column: 23, scope: !2798)
!2801 = !DILocation(line: 274, column: 15, scope: !2798)
!2802 = !DILocation(line: 274, column: 36, scope: !2798)
!2803 = !DILocation(line: 274, column: 7, scope: !2774)
!2804 = !DILocation(line: 275, column: 11, scope: !2798)
!2805 = !DILocation(line: 275, column: 4, scope: !2798)
!2806 = !DILocation(line: 281, column: 30, scope: !2774)
!2807 = !DILocation(line: 281, column: 35, scope: !2774)
!2808 = !DILocation(line: 281, column: 41, scope: !2774)
!2809 = !DILocation(line: 281, column: 33, scope: !2774)
!2810 = !DILocation(line: 281, column: 13, scope: !2774)
!2811 = !DILocation(line: 281, column: 11, scope: !2774)
!2812 = !DILocation(line: 282, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2774, file: !1, line: 282, column: 7)
!2814 = !DILocation(line: 282, column: 37, scope: !2813)
!2815 = !DILocation(line: 282, column: 18, scope: !2813)
!2816 = !DILocation(line: 282, column: 15, scope: !2813)
!2817 = !DILocation(line: 282, column: 7, scope: !2774)
!2818 = !DILocation(line: 283, column: 13, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2813, file: !1, line: 282, column: 44)
!2820 = !DILocation(line: 283, column: 18, scope: !2819)
!2821 = !DILocation(line: 283, column: 24, scope: !2819)
!2822 = !DILocation(line: 283, column: 16, scope: !2819)
!2823 = !DILocation(line: 283, column: 11, scope: !2819)
!2824 = !DILocation(line: 284, column: 11, scope: !2819)
!2825 = !DILocation(line: 284, column: 20, scope: !2819)
!2826 = !DILocation(line: 284, column: 26, scope: !2819)
!2827 = !DILocation(line: 284, column: 18, scope: !2819)
!2828 = !DILocation(line: 284, column: 40, scope: !2819)
!2829 = !DILocation(line: 284, column: 38, scope: !2819)
!2830 = !DILocation(line: 284, column: 4, scope: !2819)
!2831 = !DILocation(line: 286, column: 2, scope: !2774)
!2832 = !DILocation(line: 291, column: 50, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2767, file: !1, line: 286, column: 9)
!2834 = !DILocation(line: 291, column: 31, scope: !2833)
!2835 = !DILocation(line: 291, column: 14, scope: !2833)
!2836 = !DILocation(line: 291, column: 12, scope: !2833)
!2837 = !DILocation(line: 292, column: 7, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2833, file: !1, line: 292, column: 7)
!2839 = !DILocation(line: 292, column: 38, scope: !2838)
!2840 = !DILocation(line: 292, column: 19, scope: !2838)
!2841 = !DILocation(line: 292, column: 16, scope: !2838)
!2842 = !DILocation(line: 292, column: 7, scope: !2833)
!2843 = !DILocation(line: 296, column: 14, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2838, file: !1, line: 292, column: 45)
!2845 = !DILocation(line: 296, column: 24, scope: !2844)
!2846 = !DILocation(line: 296, column: 22, scope: !2844)
!2847 = !DILocation(line: 296, column: 12, scope: !2844)
!2848 = !DILocation(line: 297, column: 8, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2844, file: !1, line: 297, column: 8)
!2850 = !DILocation(line: 297, column: 8, scope: !2844)
!2851 = !DILocation(line: 298, column: 32, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2849, file: !1, line: 297, column: 17)
!2853 = !DILocation(line: 298, column: 15, scope: !2852)
!2854 = !DILocation(line: 298, column: 13, scope: !2852)
!2855 = !DILocation(line: 299, column: 4, scope: !2852)
!2856 = !DILocation(line: 301, column: 12, scope: !2844)
!2857 = !DILocation(line: 301, column: 22, scope: !2844)
!2858 = !DILocation(line: 301, column: 20, scope: !2844)
!2859 = !DILocation(line: 301, column: 34, scope: !2844)
!2860 = !DILocation(line: 301, column: 32, scope: !2844)
!2861 = !DILocation(line: 301, column: 45, scope: !2844)
!2862 = !DILocation(line: 301, column: 43, scope: !2844)
!2863 = !DILocation(line: 301, column: 4, scope: !2844)
!2864 = !DILocation(line: 309, column: 9, scope: !2738)
!2865 = !DILocation(line: 309, column: 2, scope: !2738)
!2866 = !DILocation(line: 310, column: 1, scope: !2738)
!2867 = distinct !DISubprogram(name: "_sdio_align_size", scope: !1, file: !1, line: 209, type: !2868, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !128)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!5, !5}
!2870 = !DILocalVariable(name: "sz", arg: 1, scope: !2867, file: !1, line: 209, type: !5)
!2871 = !DILocation(line: 209, column: 58, scope: !2867)
!2872 = !DILocation(line: 216, column: 9, scope: !2867)
!2873 = !DILocation(line: 216, column: 2, scope: !2867)
!2874 = distinct !DISubprogram(name: "sdio_max_byte_size", scope: !1, file: !1, line: 189, type: !2875, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !128)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!5, !73}
!2877 = !DILocalVariable(name: "func", arg: 1, scope: !2874, file: !1, line: 189, type: !73)
!2878 = !DILocation(line: 189, column: 65, scope: !2874)
!2879 = !DILocalVariable(name: "mval", scope: !2874, file: !1, line: 191, type: !5)
!2880 = !DILocation(line: 191, column: 11, scope: !2874)
!2881 = !DILocation(line: 191, column: 18, scope: !2874)
!2882 = !DILocation(line: 191, column: 24, scope: !2874)
!2883 = !DILocation(line: 191, column: 30, scope: !2874)
!2884 = !DILocation(line: 191, column: 36, scope: !2874)
!2885 = !DILocation(line: 193, column: 30, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2874, file: !1, line: 193, column: 6)
!2887 = !DILocation(line: 193, column: 36, scope: !2886)
!2888 = !DILocation(line: 193, column: 6, scope: !2886)
!2889 = !DILocation(line: 193, column: 6, scope: !2874)
!2890 = !DILocalVariable(name: "__UNIQUE_ID___x162", scope: !2891, file: !1, line: 194, type: !5)
!2891 = distinct !DILexicalBlock(scope: !2886, file: !1, line: 194, column: 10)
!2892 = !DILocation(line: 194, column: 10, scope: !2891)
!2893 = !DILocalVariable(name: "__UNIQUE_ID___y163", scope: !2891, file: !1, line: 194, type: !5)
!2894 = !DILocation(line: 194, column: 8, scope: !2886)
!2895 = !DILocation(line: 194, column: 3, scope: !2886)
!2896 = !DILocalVariable(name: "__UNIQUE_ID___x164", scope: !2897, file: !1, line: 196, type: !5)
!2897 = distinct !DILexicalBlock(scope: !2886, file: !1, line: 196, column: 10)
!2898 = !DILocation(line: 196, column: 10, scope: !2897)
!2899 = !DILocalVariable(name: "__UNIQUE_ID___y165", scope: !2897, file: !1, line: 196, type: !5)
!2900 = !DILocation(line: 196, column: 8, scope: !2886)
!2901 = !DILocation(line: 198, column: 36, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2874, file: !1, line: 198, column: 6)
!2903 = !DILocation(line: 198, column: 42, scope: !2902)
!2904 = !DILocation(line: 198, column: 6, scope: !2902)
!2905 = !DILocation(line: 198, column: 6, scope: !2874)
!2906 = !DILocalVariable(name: "__UNIQUE_ID___x166", scope: !2907, file: !1, line: 199, type: !5)
!2907 = distinct !DILexicalBlock(scope: !2902, file: !1, line: 199, column: 10)
!2908 = !DILocation(line: 199, column: 10, scope: !2907)
!2909 = !DILocalVariable(name: "__UNIQUE_ID___y167", scope: !2907, file: !1, line: 199, type: !5)
!2910 = !DILocation(line: 199, column: 3, scope: !2902)
!2911 = !DILocalVariable(name: "__UNIQUE_ID___x168", scope: !2912, file: !1, line: 201, type: !5)
!2912 = distinct !DILexicalBlock(scope: !2874, file: !1, line: 201, column: 9)
!2913 = !DILocation(line: 201, column: 9, scope: !2912)
!2914 = !DILocalVariable(name: "__UNIQUE_ID___y169", scope: !2912, file: !1, line: 201, type: !5)
!2915 = !DILocation(line: 201, column: 2, scope: !2874)
!2916 = !DILocation(line: 202, column: 1, scope: !2874)
!2917 = distinct !DISubprogram(name: "sdio_readb", scope: !1, file: !1, line: 380, type: !2918, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!545, !73, !5, !725}
!2920 = !DILocalVariable(name: "func", arg: 1, scope: !2917, file: !1, line: 380, type: !73)
!2921 = !DILocation(line: 380, column: 33, scope: !2917)
!2922 = !DILocalVariable(name: "addr", arg: 2, scope: !2917, file: !1, line: 380, type: !5)
!2923 = !DILocation(line: 380, column: 52, scope: !2917)
!2924 = !DILocalVariable(name: "err_ret", arg: 3, scope: !2917, file: !1, line: 380, type: !725)
!2925 = !DILocation(line: 380, column: 63, scope: !2917)
!2926 = !DILocalVariable(name: "ret", scope: !2917, file: !1, line: 382, type: !64)
!2927 = !DILocation(line: 382, column: 6, scope: !2917)
!2928 = !DILocalVariable(name: "val", scope: !2917, file: !1, line: 383, type: !545)
!2929 = !DILocation(line: 383, column: 5, scope: !2917)
!2930 = !DILocation(line: 385, column: 7, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2917, file: !1, line: 385, column: 6)
!2932 = !DILocation(line: 385, column: 6, scope: !2917)
!2933 = !DILocation(line: 386, column: 7, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !1, line: 386, column: 7)
!2935 = distinct !DILexicalBlock(scope: !2931, file: !1, line: 385, column: 13)
!2936 = !DILocation(line: 386, column: 7, scope: !2935)
!2937 = !DILocation(line: 387, column: 5, scope: !2934)
!2938 = !DILocation(line: 387, column: 13, scope: !2934)
!2939 = !DILocation(line: 387, column: 4, scope: !2934)
!2940 = !DILocation(line: 388, column: 3, scope: !2935)
!2941 = !DILocation(line: 391, column: 25, scope: !2917)
!2942 = !DILocation(line: 391, column: 31, scope: !2917)
!2943 = !DILocation(line: 391, column: 40, scope: !2917)
!2944 = !DILocation(line: 391, column: 46, scope: !2917)
!2945 = !DILocation(line: 391, column: 51, scope: !2917)
!2946 = !DILocation(line: 391, column: 8, scope: !2917)
!2947 = !DILocation(line: 391, column: 6, scope: !2917)
!2948 = !DILocation(line: 392, column: 6, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2917, file: !1, line: 392, column: 6)
!2950 = !DILocation(line: 392, column: 6, scope: !2917)
!2951 = !DILocation(line: 393, column: 14, scope: !2949)
!2952 = !DILocation(line: 393, column: 4, scope: !2949)
!2953 = !DILocation(line: 393, column: 12, scope: !2949)
!2954 = !DILocation(line: 393, column: 3, scope: !2949)
!2955 = !DILocation(line: 394, column: 6, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2917, file: !1, line: 394, column: 6)
!2957 = !DILocation(line: 394, column: 6, scope: !2917)
!2958 = !DILocation(line: 395, column: 3, scope: !2956)
!2959 = !DILocation(line: 397, column: 9, scope: !2917)
!2960 = !DILocation(line: 397, column: 2, scope: !2917)
!2961 = !DILocation(line: 398, column: 1, scope: !2917)
!2962 = distinct !DISubprogram(name: "sdio_writeb", scope: !1, file: !1, line: 412, type: !2963, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !73, !545, !5, !725}
!2965 = !DILocalVariable(name: "func", arg: 1, scope: !2962, file: !1, line: 412, type: !73)
!2966 = !DILocation(line: 412, column: 36, scope: !2962)
!2967 = !DILocalVariable(name: "b", arg: 2, scope: !2962, file: !1, line: 412, type: !545)
!2968 = !DILocation(line: 412, column: 45, scope: !2962)
!2969 = !DILocalVariable(name: "addr", arg: 3, scope: !2962, file: !1, line: 412, type: !5)
!2970 = !DILocation(line: 412, column: 61, scope: !2962)
!2971 = !DILocalVariable(name: "err_ret", arg: 4, scope: !2962, file: !1, line: 412, type: !725)
!2972 = !DILocation(line: 412, column: 72, scope: !2962)
!2973 = !DILocalVariable(name: "ret", scope: !2962, file: !1, line: 414, type: !64)
!2974 = !DILocation(line: 414, column: 6, scope: !2962)
!2975 = !DILocation(line: 416, column: 7, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2962, file: !1, line: 416, column: 6)
!2977 = !DILocation(line: 416, column: 6, scope: !2962)
!2978 = !DILocation(line: 417, column: 7, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !1, line: 417, column: 7)
!2980 = distinct !DILexicalBlock(scope: !2976, file: !1, line: 416, column: 13)
!2981 = !DILocation(line: 417, column: 7, scope: !2980)
!2982 = !DILocation(line: 418, column: 5, scope: !2979)
!2983 = !DILocation(line: 418, column: 13, scope: !2979)
!2984 = !DILocation(line: 418, column: 4, scope: !2979)
!2985 = !DILocation(line: 419, column: 3, scope: !2980)
!2986 = !DILocation(line: 422, column: 25, scope: !2962)
!2987 = !DILocation(line: 422, column: 31, scope: !2962)
!2988 = !DILocation(line: 422, column: 40, scope: !2962)
!2989 = !DILocation(line: 422, column: 46, scope: !2962)
!2990 = !DILocation(line: 422, column: 51, scope: !2962)
!2991 = !DILocation(line: 422, column: 57, scope: !2962)
!2992 = !DILocation(line: 422, column: 8, scope: !2962)
!2993 = !DILocation(line: 422, column: 6, scope: !2962)
!2994 = !DILocation(line: 423, column: 6, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2962, file: !1, line: 423, column: 6)
!2996 = !DILocation(line: 423, column: 6, scope: !2962)
!2997 = !DILocation(line: 424, column: 14, scope: !2995)
!2998 = !DILocation(line: 424, column: 4, scope: !2995)
!2999 = !DILocation(line: 424, column: 12, scope: !2995)
!3000 = !DILocation(line: 424, column: 3, scope: !2995)
!3001 = !DILocation(line: 425, column: 1, scope: !2962)
!3002 = distinct !DISubprogram(name: "sdio_writeb_readb", scope: !1, file: !1, line: 441, type: !3003, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!545, !73, !545, !5, !725}
!3005 = !DILocalVariable(name: "func", arg: 1, scope: !3002, file: !1, line: 441, type: !73)
!3006 = !DILocation(line: 441, column: 40, scope: !3002)
!3007 = !DILocalVariable(name: "write_byte", arg: 2, scope: !3002, file: !1, line: 441, type: !545)
!3008 = !DILocation(line: 441, column: 49, scope: !3002)
!3009 = !DILocalVariable(name: "addr", arg: 3, scope: !3002, file: !1, line: 442, type: !5)
!3010 = !DILocation(line: 442, column: 15, scope: !3002)
!3011 = !DILocalVariable(name: "err_ret", arg: 4, scope: !3002, file: !1, line: 442, type: !725)
!3012 = !DILocation(line: 442, column: 26, scope: !3002)
!3013 = !DILocalVariable(name: "ret", scope: !3002, file: !1, line: 444, type: !64)
!3014 = !DILocation(line: 444, column: 6, scope: !3002)
!3015 = !DILocalVariable(name: "val", scope: !3002, file: !1, line: 445, type: !545)
!3016 = !DILocation(line: 445, column: 5, scope: !3002)
!3017 = !DILocation(line: 447, column: 25, scope: !3002)
!3018 = !DILocation(line: 447, column: 31, scope: !3002)
!3019 = !DILocation(line: 447, column: 40, scope: !3002)
!3020 = !DILocation(line: 447, column: 46, scope: !3002)
!3021 = !DILocation(line: 447, column: 51, scope: !3002)
!3022 = !DILocation(line: 448, column: 4, scope: !3002)
!3023 = !DILocation(line: 447, column: 8, scope: !3002)
!3024 = !DILocation(line: 447, column: 6, scope: !3002)
!3025 = !DILocation(line: 449, column: 6, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3002, file: !1, line: 449, column: 6)
!3027 = !DILocation(line: 449, column: 6, scope: !3002)
!3028 = !DILocation(line: 450, column: 14, scope: !3026)
!3029 = !DILocation(line: 450, column: 4, scope: !3026)
!3030 = !DILocation(line: 450, column: 12, scope: !3026)
!3031 = !DILocation(line: 450, column: 3, scope: !3026)
!3032 = !DILocation(line: 451, column: 6, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3002, file: !1, line: 451, column: 6)
!3034 = !DILocation(line: 451, column: 6, scope: !3002)
!3035 = !DILocation(line: 452, column: 3, scope: !3033)
!3036 = !DILocation(line: 454, column: 9, scope: !3002)
!3037 = !DILocation(line: 454, column: 2, scope: !3002)
!3038 = !DILocation(line: 455, column: 1, scope: !3002)
!3039 = distinct !DISubprogram(name: "sdio_memcpy_fromio", scope: !1, file: !1, line: 468, type: !3040, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!64, !73, !227, !5, !64}
!3042 = !DILocalVariable(name: "func", arg: 1, scope: !3039, file: !1, line: 468, type: !73)
!3043 = !DILocation(line: 468, column: 42, scope: !3039)
!3044 = !DILocalVariable(name: "dst", arg: 2, scope: !3039, file: !1, line: 468, type: !227)
!3045 = !DILocation(line: 468, column: 54, scope: !3039)
!3046 = !DILocalVariable(name: "addr", arg: 3, scope: !3039, file: !1, line: 469, type: !5)
!3047 = !DILocation(line: 469, column: 15, scope: !3039)
!3048 = !DILocalVariable(name: "count", arg: 4, scope: !3039, file: !1, line: 469, type: !64)
!3049 = !DILocation(line: 469, column: 25, scope: !3039)
!3050 = !DILocation(line: 471, column: 31, scope: !3039)
!3051 = !DILocation(line: 471, column: 40, scope: !3039)
!3052 = !DILocation(line: 471, column: 49, scope: !3039)
!3053 = !DILocation(line: 471, column: 54, scope: !3039)
!3054 = !DILocation(line: 471, column: 9, scope: !3039)
!3055 = !DILocation(line: 471, column: 2, scope: !3039)
!3056 = distinct !DISubprogram(name: "sdio_io_rw_ext_helper", scope: !1, file: !1, line: 315, type: !3057, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!64, !73, !64, !5, !64, !2439, !5}
!3059 = !DILocalVariable(name: "func", arg: 1, scope: !3056, file: !1, line: 315, type: !73)
!3060 = !DILocation(line: 315, column: 52, scope: !3056)
!3061 = !DILocalVariable(name: "write", arg: 2, scope: !3056, file: !1, line: 315, type: !64)
!3062 = !DILocation(line: 315, column: 62, scope: !3056)
!3063 = !DILocalVariable(name: "addr", arg: 3, scope: !3056, file: !1, line: 316, type: !5)
!3064 = !DILocation(line: 316, column: 11, scope: !3056)
!3065 = !DILocalVariable(name: "incr_addr", arg: 4, scope: !3056, file: !1, line: 316, type: !64)
!3066 = !DILocation(line: 316, column: 21, scope: !3056)
!3067 = !DILocalVariable(name: "buf", arg: 5, scope: !3056, file: !1, line: 316, type: !2439)
!3068 = !DILocation(line: 316, column: 36, scope: !3056)
!3069 = !DILocalVariable(name: "size", arg: 6, scope: !3056, file: !1, line: 316, type: !5)
!3070 = !DILocation(line: 316, column: 50, scope: !3056)
!3071 = !DILocalVariable(name: "remainder", scope: !3056, file: !1, line: 318, type: !5)
!3072 = !DILocation(line: 318, column: 11, scope: !3056)
!3073 = !DILocation(line: 318, column: 23, scope: !3056)
!3074 = !DILocalVariable(name: "max_blocks", scope: !3056, file: !1, line: 319, type: !5)
!3075 = !DILocation(line: 319, column: 11, scope: !3056)
!3076 = !DILocalVariable(name: "ret", scope: !3056, file: !1, line: 320, type: !64)
!3077 = !DILocation(line: 320, column: 6, scope: !3056)
!3078 = !DILocation(line: 322, column: 7, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3056, file: !1, line: 322, column: 6)
!3080 = !DILocation(line: 322, column: 12, scope: !3079)
!3081 = !DILocation(line: 322, column: 16, scope: !3079)
!3082 = !DILocation(line: 322, column: 22, scope: !3079)
!3083 = !DILocation(line: 322, column: 26, scope: !3079)
!3084 = !DILocation(line: 322, column: 6, scope: !3056)
!3085 = !DILocation(line: 323, column: 3, scope: !3079)
!3086 = !DILocation(line: 326, column: 6, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3056, file: !1, line: 326, column: 6)
!3088 = !DILocation(line: 326, column: 12, scope: !3087)
!3089 = !DILocation(line: 326, column: 18, scope: !3087)
!3090 = !DILocation(line: 326, column: 23, scope: !3087)
!3091 = !DILocation(line: 326, column: 35, scope: !3087)
!3092 = !DILocation(line: 326, column: 39, scope: !3087)
!3093 = !DILocation(line: 326, column: 65, scope: !3087)
!3094 = !DILocation(line: 326, column: 46, scope: !3087)
!3095 = !DILocation(line: 326, column: 44, scope: !3087)
!3096 = !DILocation(line: 326, column: 6, scope: !3056)
!3097 = !DILocalVariable(name: "__UNIQUE_ID___x170", scope: !3098, file: !1, line: 329, type: !5)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !1, line: 329, column: 16)
!3099 = distinct !DILexicalBlock(scope: !3087, file: !1, line: 326, column: 73)
!3100 = !DILocation(line: 329, column: 16, scope: !3098)
!3101 = !DILocalVariable(name: "__UNIQUE_ID___y171", scope: !3098, file: !1, line: 329, type: !5)
!3102 = !DILocation(line: 329, column: 14, scope: !3099)
!3103 = !DILocation(line: 331, column: 3, scope: !3099)
!3104 = !DILocation(line: 331, column: 10, scope: !3099)
!3105 = !DILocation(line: 331, column: 23, scope: !3099)
!3106 = !DILocation(line: 331, column: 29, scope: !3099)
!3107 = !DILocation(line: 331, column: 20, scope: !3099)
!3108 = !DILocalVariable(name: "blocks", scope: !3109, file: !1, line: 332, type: !5)
!3109 = distinct !DILexicalBlock(scope: !3099, file: !1, line: 331, column: 42)
!3110 = !DILocation(line: 332, column: 13, scope: !3109)
!3111 = !DILocation(line: 334, column: 13, scope: !3109)
!3112 = !DILocation(line: 334, column: 25, scope: !3109)
!3113 = !DILocation(line: 334, column: 31, scope: !3109)
!3114 = !DILocation(line: 334, column: 23, scope: !3109)
!3115 = !DILocation(line: 334, column: 11, scope: !3109)
!3116 = !DILocation(line: 335, column: 8, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3109, file: !1, line: 335, column: 8)
!3118 = !DILocation(line: 335, column: 17, scope: !3117)
!3119 = !DILocation(line: 335, column: 15, scope: !3117)
!3120 = !DILocation(line: 335, column: 8, scope: !3109)
!3121 = !DILocation(line: 336, column: 14, scope: !3117)
!3122 = !DILocation(line: 336, column: 12, scope: !3117)
!3123 = !DILocation(line: 336, column: 5, scope: !3117)
!3124 = !DILocation(line: 337, column: 11, scope: !3109)
!3125 = !DILocation(line: 337, column: 20, scope: !3109)
!3126 = !DILocation(line: 337, column: 26, scope: !3109)
!3127 = !DILocation(line: 337, column: 18, scope: !3109)
!3128 = !DILocation(line: 337, column: 9, scope: !3109)
!3129 = !DILocation(line: 339, column: 29, scope: !3109)
!3130 = !DILocation(line: 339, column: 35, scope: !3109)
!3131 = !DILocation(line: 339, column: 41, scope: !3109)
!3132 = !DILocation(line: 340, column: 5, scope: !3109)
!3133 = !DILocation(line: 340, column: 11, scope: !3109)
!3134 = !DILocation(line: 340, column: 16, scope: !3109)
!3135 = !DILocation(line: 340, column: 22, scope: !3109)
!3136 = !DILocation(line: 340, column: 33, scope: !3109)
!3137 = !DILocation(line: 341, column: 5, scope: !3109)
!3138 = !DILocation(line: 341, column: 13, scope: !3109)
!3139 = !DILocation(line: 341, column: 19, scope: !3109)
!3140 = !DILocation(line: 339, column: 10, scope: !3109)
!3141 = !DILocation(line: 339, column: 8, scope: !3109)
!3142 = !DILocation(line: 342, column: 8, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3109, file: !1, line: 342, column: 8)
!3144 = !DILocation(line: 342, column: 8, scope: !3109)
!3145 = !DILocation(line: 343, column: 12, scope: !3143)
!3146 = !DILocation(line: 343, column: 5, scope: !3143)
!3147 = !DILocation(line: 345, column: 17, scope: !3109)
!3148 = !DILocation(line: 345, column: 14, scope: !3109)
!3149 = !DILocation(line: 346, column: 11, scope: !3109)
!3150 = !DILocation(line: 346, column: 8, scope: !3109)
!3151 = !DILocation(line: 347, column: 8, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3109, file: !1, line: 347, column: 8)
!3153 = !DILocation(line: 347, column: 8, scope: !3109)
!3154 = !DILocation(line: 348, column: 13, scope: !3152)
!3155 = !DILocation(line: 348, column: 10, scope: !3152)
!3156 = !DILocation(line: 348, column: 5, scope: !3152)
!3157 = distinct !{!3157, !3103, !3158}
!3158 = !DILocation(line: 349, column: 3, scope: !3099)
!3159 = !DILocation(line: 350, column: 2, scope: !3099)
!3160 = !DILocation(line: 353, column: 2, scope: !3056)
!3161 = !DILocation(line: 353, column: 9, scope: !3056)
!3162 = !DILocation(line: 353, column: 19, scope: !3056)
!3163 = !DILocalVariable(name: "__UNIQUE_ID___x172", scope: !3164, file: !1, line: 354, type: !5)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !1, line: 354, column: 10)
!3165 = distinct !DILexicalBlock(scope: !3056, file: !1, line: 353, column: 24)
!3166 = !DILocation(line: 354, column: 10, scope: !3164)
!3167 = !DILocalVariable(name: "__UNIQUE_ID___y173", scope: !3164, file: !1, line: 354, type: !5)
!3168 = !DILocation(line: 354, column: 8, scope: !3165)
!3169 = !DILocation(line: 357, column: 28, scope: !3165)
!3170 = !DILocation(line: 357, column: 34, scope: !3165)
!3171 = !DILocation(line: 357, column: 40, scope: !3165)
!3172 = !DILocation(line: 357, column: 47, scope: !3165)
!3173 = !DILocation(line: 357, column: 53, scope: !3165)
!3174 = !DILocation(line: 357, column: 58, scope: !3165)
!3175 = !DILocation(line: 358, column: 5, scope: !3165)
!3176 = !DILocation(line: 358, column: 16, scope: !3165)
!3177 = !DILocation(line: 358, column: 24, scope: !3165)
!3178 = !DILocation(line: 357, column: 9, scope: !3165)
!3179 = !DILocation(line: 357, column: 7, scope: !3165)
!3180 = !DILocation(line: 359, column: 7, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3165, file: !1, line: 359, column: 7)
!3182 = !DILocation(line: 359, column: 7, scope: !3165)
!3183 = !DILocation(line: 360, column: 11, scope: !3181)
!3184 = !DILocation(line: 360, column: 4, scope: !3181)
!3185 = !DILocation(line: 362, column: 16, scope: !3165)
!3186 = !DILocation(line: 362, column: 13, scope: !3165)
!3187 = !DILocation(line: 363, column: 10, scope: !3165)
!3188 = !DILocation(line: 363, column: 7, scope: !3165)
!3189 = !DILocation(line: 364, column: 7, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3165, file: !1, line: 364, column: 7)
!3191 = !DILocation(line: 364, column: 7, scope: !3165)
!3192 = !DILocation(line: 365, column: 12, scope: !3190)
!3193 = !DILocation(line: 365, column: 9, scope: !3190)
!3194 = !DILocation(line: 365, column: 4, scope: !3190)
!3195 = distinct !{!3195, !3160, !3196}
!3196 = !DILocation(line: 366, column: 2, scope: !3056)
!3197 = !DILocation(line: 367, column: 2, scope: !3056)
!3198 = !DILocation(line: 368, column: 1, scope: !3056)
!3199 = distinct !DISubprogram(name: "sdio_memcpy_toio", scope: !1, file: !1, line: 485, type: !3200, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!64, !73, !5, !227, !64}
!3202 = !DILocalVariable(name: "func", arg: 1, scope: !3199, file: !1, line: 485, type: !73)
!3203 = !DILocation(line: 485, column: 40, scope: !3199)
!3204 = !DILocalVariable(name: "addr", arg: 2, scope: !3199, file: !1, line: 485, type: !5)
!3205 = !DILocation(line: 485, column: 59, scope: !3199)
!3206 = !DILocalVariable(name: "src", arg: 3, scope: !3199, file: !1, line: 486, type: !227)
!3207 = !DILocation(line: 486, column: 8, scope: !3199)
!3208 = !DILocalVariable(name: "count", arg: 4, scope: !3199, file: !1, line: 486, type: !64)
!3209 = !DILocation(line: 486, column: 17, scope: !3199)
!3210 = !DILocation(line: 488, column: 31, scope: !3199)
!3211 = !DILocation(line: 488, column: 40, scope: !3199)
!3212 = !DILocation(line: 488, column: 49, scope: !3199)
!3213 = !DILocation(line: 488, column: 54, scope: !3199)
!3214 = !DILocation(line: 488, column: 9, scope: !3199)
!3215 = !DILocation(line: 488, column: 2, scope: !3199)
!3216 = distinct !DISubprogram(name: "sdio_readsb", scope: !1, file: !1, line: 502, type: !3040, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3217 = !DILocalVariable(name: "func", arg: 1, scope: !3216, file: !1, line: 502, type: !73)
!3218 = !DILocation(line: 502, column: 35, scope: !3216)
!3219 = !DILocalVariable(name: "dst", arg: 2, scope: !3216, file: !1, line: 502, type: !227)
!3220 = !DILocation(line: 502, column: 47, scope: !3216)
!3221 = !DILocalVariable(name: "addr", arg: 3, scope: !3216, file: !1, line: 502, type: !5)
!3222 = !DILocation(line: 502, column: 65, scope: !3216)
!3223 = !DILocalVariable(name: "count", arg: 4, scope: !3216, file: !1, line: 503, type: !64)
!3224 = !DILocation(line: 503, column: 6, scope: !3216)
!3225 = !DILocation(line: 505, column: 31, scope: !3216)
!3226 = !DILocation(line: 505, column: 40, scope: !3216)
!3227 = !DILocation(line: 505, column: 49, scope: !3216)
!3228 = !DILocation(line: 505, column: 54, scope: !3216)
!3229 = !DILocation(line: 505, column: 9, scope: !3216)
!3230 = !DILocation(line: 505, column: 2, scope: !3216)
!3231 = distinct !DISubprogram(name: "sdio_writesb", scope: !1, file: !1, line: 519, type: !3200, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3232 = !DILocalVariable(name: "func", arg: 1, scope: !3231, file: !1, line: 519, type: !73)
!3233 = !DILocation(line: 519, column: 36, scope: !3231)
!3234 = !DILocalVariable(name: "addr", arg: 2, scope: !3231, file: !1, line: 519, type: !5)
!3235 = !DILocation(line: 519, column: 55, scope: !3231)
!3236 = !DILocalVariable(name: "src", arg: 3, scope: !3231, file: !1, line: 519, type: !227)
!3237 = !DILocation(line: 519, column: 67, scope: !3231)
!3238 = !DILocalVariable(name: "count", arg: 4, scope: !3231, file: !1, line: 520, type: !64)
!3239 = !DILocation(line: 520, column: 6, scope: !3231)
!3240 = !DILocation(line: 522, column: 31, scope: !3231)
!3241 = !DILocation(line: 522, column: 40, scope: !3231)
!3242 = !DILocation(line: 522, column: 49, scope: !3231)
!3243 = !DILocation(line: 522, column: 54, scope: !3231)
!3244 = !DILocation(line: 522, column: 9, scope: !3231)
!3245 = !DILocation(line: 522, column: 2, scope: !3231)
!3246 = distinct !DISubprogram(name: "sdio_readw", scope: !1, file: !1, line: 536, type: !3247, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!384, !73, !5, !725}
!3249 = !DILocalVariable(name: "p", arg: 1, scope: !3250, file: !3251, line: 64, type: !3254)
!3250 = distinct !DISubprogram(name: "__le16_to_cpup", scope: !3251, file: !3251, line: 64, type: !3252, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3251 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!58, !3254}
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!3256 = !DILocation(line: 64, column: 59, scope: !3250, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 546, column: 9, scope: !3246)
!3258 = !DILocalVariable(name: "func", arg: 1, scope: !3246, file: !1, line: 536, type: !73)
!3259 = !DILocation(line: 536, column: 34, scope: !3246)
!3260 = !DILocalVariable(name: "addr", arg: 2, scope: !3246, file: !1, line: 536, type: !5)
!3261 = !DILocation(line: 536, column: 53, scope: !3246)
!3262 = !DILocalVariable(name: "err_ret", arg: 3, scope: !3246, file: !1, line: 536, type: !725)
!3263 = !DILocation(line: 536, column: 64, scope: !3246)
!3264 = !DILocalVariable(name: "ret", scope: !3246, file: !1, line: 538, type: !64)
!3265 = !DILocation(line: 538, column: 6, scope: !3246)
!3266 = !DILocation(line: 540, column: 27, scope: !3246)
!3267 = !DILocation(line: 540, column: 33, scope: !3246)
!3268 = !DILocation(line: 540, column: 39, scope: !3246)
!3269 = !DILocation(line: 540, column: 47, scope: !3246)
!3270 = !DILocation(line: 540, column: 8, scope: !3246)
!3271 = !DILocation(line: 540, column: 6, scope: !3246)
!3272 = !DILocation(line: 541, column: 6, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3246, file: !1, line: 541, column: 6)
!3274 = !DILocation(line: 541, column: 6, scope: !3246)
!3275 = !DILocation(line: 542, column: 14, scope: !3273)
!3276 = !DILocation(line: 542, column: 4, scope: !3273)
!3277 = !DILocation(line: 542, column: 12, scope: !3273)
!3278 = !DILocation(line: 542, column: 3, scope: !3273)
!3279 = !DILocation(line: 543, column: 6, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3246, file: !1, line: 543, column: 6)
!3281 = !DILocation(line: 543, column: 6, scope: !3246)
!3282 = !DILocation(line: 544, column: 3, scope: !3280)
!3283 = !DILocation(line: 546, column: 32, scope: !3246)
!3284 = !DILocation(line: 546, column: 38, scope: !3246)
!3285 = !DILocation(line: 546, column: 22, scope: !3246)
!3286 = !DILocation(line: 66, column: 25, scope: !3250, inlinedAt: !3257)
!3287 = !DILocation(line: 66, column: 24, scope: !3250, inlinedAt: !3257)
!3288 = !DILocation(line: 546, column: 2, scope: !3246)
!3289 = !DILocation(line: 547, column: 1, scope: !3246)
!3290 = distinct !DISubprogram(name: "sdio_writew", scope: !1, file: !1, line: 561, type: !3291, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{null, !73, !384, !5, !725}
!3293 = !DILocalVariable(name: "func", arg: 1, scope: !3290, file: !1, line: 561, type: !73)
!3294 = !DILocation(line: 561, column: 36, scope: !3290)
!3295 = !DILocalVariable(name: "b", arg: 2, scope: !3290, file: !1, line: 561, type: !384)
!3296 = !DILocation(line: 561, column: 46, scope: !3290)
!3297 = !DILocalVariable(name: "addr", arg: 3, scope: !3290, file: !1, line: 561, type: !5)
!3298 = !DILocation(line: 561, column: 62, scope: !3290)
!3299 = !DILocalVariable(name: "err_ret", arg: 4, scope: !3290, file: !1, line: 561, type: !725)
!3300 = !DILocation(line: 561, column: 73, scope: !3290)
!3301 = !DILocalVariable(name: "ret", scope: !3290, file: !1, line: 563, type: !64)
!3302 = !DILocation(line: 563, column: 6, scope: !3290)
!3303 = !DILocation(line: 565, column: 28, scope: !3290)
!3304 = !DILocation(line: 565, column: 13, scope: !3290)
!3305 = !DILocation(line: 565, column: 19, scope: !3290)
!3306 = !DILocation(line: 565, column: 2, scope: !3290)
!3307 = !DILocation(line: 565, column: 26, scope: !3290)
!3308 = !DILocation(line: 567, column: 25, scope: !3290)
!3309 = !DILocation(line: 567, column: 31, scope: !3290)
!3310 = !DILocation(line: 567, column: 37, scope: !3290)
!3311 = !DILocation(line: 567, column: 43, scope: !3290)
!3312 = !DILocation(line: 567, column: 8, scope: !3290)
!3313 = !DILocation(line: 567, column: 6, scope: !3290)
!3314 = !DILocation(line: 568, column: 6, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3290, file: !1, line: 568, column: 6)
!3316 = !DILocation(line: 568, column: 6, scope: !3290)
!3317 = !DILocation(line: 569, column: 14, scope: !3315)
!3318 = !DILocation(line: 569, column: 4, scope: !3315)
!3319 = !DILocation(line: 569, column: 12, scope: !3315)
!3320 = !DILocation(line: 569, column: 3, scope: !3315)
!3321 = !DILocation(line: 570, column: 1, scope: !3290)
!3322 = distinct !DISubprogram(name: "sdio_readl", scope: !1, file: !1, line: 584, type: !3323, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!409, !73, !5, !725}
!3325 = !DILocalVariable(name: "p", arg: 1, scope: !3326, file: !3251, line: 56, type: !3329)
!3326 = distinct !DISubprogram(name: "__le32_to_cpup", scope: !3251, file: !3251, line: 56, type: !3327, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!63, !3329}
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!3331 = !DILocation(line: 56, column: 59, scope: !3326, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 594, column: 9, scope: !3322)
!3333 = !DILocalVariable(name: "func", arg: 1, scope: !3322, file: !1, line: 584, type: !73)
!3334 = !DILocation(line: 584, column: 34, scope: !3322)
!3335 = !DILocalVariable(name: "addr", arg: 2, scope: !3322, file: !1, line: 584, type: !5)
!3336 = !DILocation(line: 584, column: 53, scope: !3322)
!3337 = !DILocalVariable(name: "err_ret", arg: 3, scope: !3322, file: !1, line: 584, type: !725)
!3338 = !DILocation(line: 584, column: 64, scope: !3322)
!3339 = !DILocalVariable(name: "ret", scope: !3322, file: !1, line: 586, type: !64)
!3340 = !DILocation(line: 586, column: 6, scope: !3322)
!3341 = !DILocation(line: 588, column: 27, scope: !3322)
!3342 = !DILocation(line: 588, column: 33, scope: !3322)
!3343 = !DILocation(line: 588, column: 39, scope: !3322)
!3344 = !DILocation(line: 588, column: 47, scope: !3322)
!3345 = !DILocation(line: 588, column: 8, scope: !3322)
!3346 = !DILocation(line: 588, column: 6, scope: !3322)
!3347 = !DILocation(line: 589, column: 6, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3322, file: !1, line: 589, column: 6)
!3349 = !DILocation(line: 589, column: 6, scope: !3322)
!3350 = !DILocation(line: 590, column: 14, scope: !3348)
!3351 = !DILocation(line: 590, column: 4, scope: !3348)
!3352 = !DILocation(line: 590, column: 12, scope: !3348)
!3353 = !DILocation(line: 590, column: 3, scope: !3348)
!3354 = !DILocation(line: 591, column: 6, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3322, file: !1, line: 591, column: 6)
!3356 = !DILocation(line: 591, column: 6, scope: !3322)
!3357 = !DILocation(line: 592, column: 3, scope: !3355)
!3358 = !DILocation(line: 594, column: 32, scope: !3322)
!3359 = !DILocation(line: 594, column: 38, scope: !3322)
!3360 = !DILocation(line: 594, column: 22, scope: !3322)
!3361 = !DILocation(line: 58, column: 25, scope: !3326, inlinedAt: !3332)
!3362 = !DILocation(line: 58, column: 24, scope: !3326, inlinedAt: !3332)
!3363 = !DILocation(line: 594, column: 2, scope: !3322)
!3364 = !DILocation(line: 595, column: 1, scope: !3322)
!3365 = distinct !DISubprogram(name: "sdio_writel", scope: !1, file: !1, line: 609, type: !3366, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{null, !73, !409, !5, !725}
!3368 = !DILocalVariable(name: "func", arg: 1, scope: !3365, file: !1, line: 609, type: !73)
!3369 = !DILocation(line: 609, column: 36, scope: !3365)
!3370 = !DILocalVariable(name: "b", arg: 2, scope: !3365, file: !1, line: 609, type: !409)
!3371 = !DILocation(line: 609, column: 46, scope: !3365)
!3372 = !DILocalVariable(name: "addr", arg: 3, scope: !3365, file: !1, line: 609, type: !5)
!3373 = !DILocation(line: 609, column: 62, scope: !3365)
!3374 = !DILocalVariable(name: "err_ret", arg: 4, scope: !3365, file: !1, line: 609, type: !725)
!3375 = !DILocation(line: 609, column: 73, scope: !3365)
!3376 = !DILocalVariable(name: "ret", scope: !3365, file: !1, line: 611, type: !64)
!3377 = !DILocation(line: 611, column: 6, scope: !3365)
!3378 = !DILocation(line: 613, column: 28, scope: !3365)
!3379 = !DILocation(line: 613, column: 13, scope: !3365)
!3380 = !DILocation(line: 613, column: 19, scope: !3365)
!3381 = !DILocation(line: 613, column: 2, scope: !3365)
!3382 = !DILocation(line: 613, column: 26, scope: !3365)
!3383 = !DILocation(line: 615, column: 25, scope: !3365)
!3384 = !DILocation(line: 615, column: 31, scope: !3365)
!3385 = !DILocation(line: 615, column: 37, scope: !3365)
!3386 = !DILocation(line: 615, column: 43, scope: !3365)
!3387 = !DILocation(line: 615, column: 8, scope: !3365)
!3388 = !DILocation(line: 615, column: 6, scope: !3365)
!3389 = !DILocation(line: 616, column: 6, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3365, file: !1, line: 616, column: 6)
!3391 = !DILocation(line: 616, column: 6, scope: !3365)
!3392 = !DILocation(line: 617, column: 14, scope: !3390)
!3393 = !DILocation(line: 617, column: 4, scope: !3390)
!3394 = !DILocation(line: 617, column: 12, scope: !3390)
!3395 = !DILocation(line: 617, column: 3, scope: !3390)
!3396 = !DILocation(line: 618, column: 1, scope: !3365)
!3397 = distinct !DISubprogram(name: "sdio_f0_readb", scope: !1, file: !1, line: 631, type: !3398, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!547, !73, !5, !725}
!3400 = !DILocalVariable(name: "func", arg: 1, scope: !3397, file: !1, line: 631, type: !73)
!3401 = !DILocation(line: 631, column: 47, scope: !3397)
!3402 = !DILocalVariable(name: "addr", arg: 2, scope: !3397, file: !1, line: 631, type: !5)
!3403 = !DILocation(line: 631, column: 66, scope: !3397)
!3404 = !DILocalVariable(name: "err_ret", arg: 3, scope: !3397, file: !1, line: 632, type: !725)
!3405 = !DILocation(line: 632, column: 7, scope: !3397)
!3406 = !DILocalVariable(name: "ret", scope: !3397, file: !1, line: 634, type: !64)
!3407 = !DILocation(line: 634, column: 6, scope: !3397)
!3408 = !DILocalVariable(name: "val", scope: !3397, file: !1, line: 635, type: !547)
!3409 = !DILocation(line: 635, column: 16, scope: !3397)
!3410 = !DILocation(line: 637, column: 7, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3397, file: !1, line: 637, column: 6)
!3412 = !DILocation(line: 637, column: 6, scope: !3397)
!3413 = !DILocation(line: 638, column: 7, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !1, line: 638, column: 7)
!3415 = distinct !DILexicalBlock(scope: !3411, file: !1, line: 637, column: 13)
!3416 = !DILocation(line: 638, column: 7, scope: !3415)
!3417 = !DILocation(line: 639, column: 5, scope: !3414)
!3418 = !DILocation(line: 639, column: 13, scope: !3414)
!3419 = !DILocation(line: 639, column: 4, scope: !3414)
!3420 = !DILocation(line: 640, column: 3, scope: !3415)
!3421 = !DILocation(line: 643, column: 25, scope: !3397)
!3422 = !DILocation(line: 643, column: 31, scope: !3397)
!3423 = !DILocation(line: 643, column: 43, scope: !3397)
!3424 = !DILocation(line: 643, column: 8, scope: !3397)
!3425 = !DILocation(line: 643, column: 6, scope: !3397)
!3426 = !DILocation(line: 644, column: 6, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3397, file: !1, line: 644, column: 6)
!3428 = !DILocation(line: 644, column: 6, scope: !3397)
!3429 = !DILocation(line: 645, column: 14, scope: !3427)
!3430 = !DILocation(line: 645, column: 4, scope: !3427)
!3431 = !DILocation(line: 645, column: 12, scope: !3427)
!3432 = !DILocation(line: 645, column: 3, scope: !3427)
!3433 = !DILocation(line: 646, column: 6, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3397, file: !1, line: 646, column: 6)
!3435 = !DILocation(line: 646, column: 6, scope: !3397)
!3436 = !DILocation(line: 647, column: 3, scope: !3434)
!3437 = !DILocation(line: 649, column: 9, scope: !3397)
!3438 = !DILocation(line: 649, column: 2, scope: !3397)
!3439 = !DILocation(line: 650, column: 1, scope: !3397)
!3440 = distinct !DISubprogram(name: "sdio_f0_writeb", scope: !1, file: !1, line: 667, type: !3441, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{null, !73, !547, !5, !725}
!3443 = !DILocalVariable(name: "func", arg: 1, scope: !3440, file: !1, line: 667, type: !73)
!3444 = !DILocation(line: 667, column: 39, scope: !3440)
!3445 = !DILocalVariable(name: "b", arg: 2, scope: !3440, file: !1, line: 667, type: !547)
!3446 = !DILocation(line: 667, column: 59, scope: !3440)
!3447 = !DILocalVariable(name: "addr", arg: 3, scope: !3440, file: !1, line: 667, type: !5)
!3448 = !DILocation(line: 667, column: 75, scope: !3440)
!3449 = !DILocalVariable(name: "err_ret", arg: 4, scope: !3440, file: !1, line: 668, type: !725)
!3450 = !DILocation(line: 668, column: 7, scope: !3440)
!3451 = !DILocalVariable(name: "ret", scope: !3440, file: !1, line: 670, type: !64)
!3452 = !DILocation(line: 670, column: 6, scope: !3440)
!3453 = !DILocation(line: 672, column: 7, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3440, file: !1, line: 672, column: 6)
!3455 = !DILocation(line: 672, column: 6, scope: !3440)
!3456 = !DILocation(line: 673, column: 7, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !1, line: 673, column: 7)
!3458 = distinct !DILexicalBlock(scope: !3454, file: !1, line: 672, column: 13)
!3459 = !DILocation(line: 673, column: 7, scope: !3458)
!3460 = !DILocation(line: 674, column: 5, scope: !3457)
!3461 = !DILocation(line: 674, column: 13, scope: !3457)
!3462 = !DILocation(line: 674, column: 4, scope: !3457)
!3463 = !DILocation(line: 675, column: 3, scope: !3458)
!3464 = !DILocation(line: 678, column: 7, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3440, file: !1, line: 678, column: 6)
!3466 = !DILocation(line: 678, column: 12, scope: !3465)
!3467 = !DILocation(line: 678, column: 19, scope: !3465)
!3468 = !DILocation(line: 678, column: 22, scope: !3465)
!3469 = !DILocation(line: 678, column: 27, scope: !3465)
!3470 = !DILocation(line: 678, column: 35, scope: !3465)
!3471 = !DILocation(line: 678, column: 61, scope: !3465)
!3472 = !DILocation(line: 678, column: 67, scope: !3465)
!3473 = !DILocation(line: 678, column: 40, scope: !3465)
!3474 = !DILocation(line: 678, column: 6, scope: !3440)
!3475 = !DILocation(line: 679, column: 7, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !1, line: 679, column: 7)
!3477 = distinct !DILexicalBlock(scope: !3465, file: !1, line: 678, column: 75)
!3478 = !DILocation(line: 679, column: 7, scope: !3477)
!3479 = !DILocation(line: 680, column: 5, scope: !3476)
!3480 = !DILocation(line: 680, column: 13, scope: !3476)
!3481 = !DILocation(line: 680, column: 4, scope: !3476)
!3482 = !DILocation(line: 681, column: 3, scope: !3477)
!3483 = !DILocation(line: 684, column: 25, scope: !3440)
!3484 = !DILocation(line: 684, column: 31, scope: !3440)
!3485 = !DILocation(line: 684, column: 43, scope: !3440)
!3486 = !DILocation(line: 684, column: 49, scope: !3440)
!3487 = !DILocation(line: 684, column: 8, scope: !3440)
!3488 = !DILocation(line: 684, column: 6, scope: !3440)
!3489 = !DILocation(line: 685, column: 6, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3440, file: !1, line: 685, column: 6)
!3491 = !DILocation(line: 685, column: 6, scope: !3440)
!3492 = !DILocation(line: 686, column: 14, scope: !3490)
!3493 = !DILocation(line: 686, column: 4, scope: !3490)
!3494 = !DILocation(line: 686, column: 12, scope: !3490)
!3495 = !DILocation(line: 686, column: 3, scope: !3490)
!3496 = !DILocation(line: 687, column: 1, scope: !3440)
!3497 = distinct !DISubprogram(name: "mmc_card_lenient_fn0", scope: !3498, file: !3498, line: 185, type: !3499, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3498 = !DIFile(filename: "drivers/mmc/core/card.h", directory: "/home/lizy2001/genbc/linux")
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!64, !3501}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!3503 = !DILocalVariable(name: "c", arg: 1, scope: !3497, file: !3498, line: 185, type: !3501)
!3504 = !DILocation(line: 185, column: 63, scope: !3497)
!3505 = !DILocation(line: 187, column: 9, scope: !3497)
!3506 = !DILocation(line: 187, column: 12, scope: !3497)
!3507 = !DILocation(line: 187, column: 19, scope: !3497)
!3508 = !DILocation(line: 187, column: 2, scope: !3497)
!3509 = distinct !DISubprogram(name: "sdio_get_host_pm_caps", scope: !1, file: !1, line: 700, type: !3510, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!2091, !73}
!3512 = !DILocalVariable(name: "func", arg: 1, scope: !3509, file: !1, line: 700, type: !73)
!3513 = !DILocation(line: 700, column: 55, scope: !3509)
!3514 = !DILocation(line: 702, column: 7, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3509, file: !1, line: 702, column: 6)
!3516 = !DILocation(line: 702, column: 6, scope: !3509)
!3517 = !DILocation(line: 703, column: 3, scope: !3515)
!3518 = !DILocation(line: 705, column: 9, scope: !3509)
!3519 = !DILocation(line: 705, column: 15, scope: !3509)
!3520 = !DILocation(line: 705, column: 21, scope: !3509)
!3521 = !DILocation(line: 705, column: 27, scope: !3509)
!3522 = !DILocation(line: 705, column: 2, scope: !3509)
!3523 = !DILocation(line: 706, column: 1, scope: !3509)
!3524 = distinct !DISubprogram(name: "sdio_set_host_pm_flags", scope: !1, file: !1, line: 722, type: !3525, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!64, !73, !2091}
!3527 = !DILocalVariable(name: "func", arg: 1, scope: !3524, file: !1, line: 722, type: !73)
!3528 = !DILocation(line: 722, column: 46, scope: !3524)
!3529 = !DILocalVariable(name: "flags", arg: 2, scope: !3524, file: !1, line: 722, type: !2091)
!3530 = !DILocation(line: 722, column: 66, scope: !3524)
!3531 = !DILocalVariable(name: "host", scope: !3524, file: !1, line: 724, type: !83)
!3532 = !DILocation(line: 724, column: 19, scope: !3524)
!3533 = !DILocation(line: 726, column: 7, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 726, column: 6)
!3535 = !DILocation(line: 726, column: 6, scope: !3524)
!3536 = !DILocation(line: 727, column: 3, scope: !3534)
!3537 = !DILocation(line: 729, column: 9, scope: !3524)
!3538 = !DILocation(line: 729, column: 15, scope: !3524)
!3539 = !DILocation(line: 729, column: 21, scope: !3524)
!3540 = !DILocation(line: 729, column: 7, scope: !3524)
!3541 = !DILocation(line: 731, column: 6, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 731, column: 6)
!3543 = !DILocation(line: 731, column: 15, scope: !3542)
!3544 = !DILocation(line: 731, column: 21, scope: !3542)
!3545 = !DILocation(line: 731, column: 14, scope: !3542)
!3546 = !DILocation(line: 731, column: 12, scope: !3542)
!3547 = !DILocation(line: 731, column: 6, scope: !3524)
!3548 = !DILocation(line: 732, column: 3, scope: !3542)
!3549 = !DILocation(line: 735, column: 20, scope: !3524)
!3550 = !DILocation(line: 735, column: 2, scope: !3524)
!3551 = !DILocation(line: 735, column: 8, scope: !3524)
!3552 = !DILocation(line: 735, column: 17, scope: !3524)
!3553 = !DILocation(line: 736, column: 2, scope: !3524)
!3554 = !DILocation(line: 737, column: 1, scope: !3524)
!3555 = distinct !DISubprogram(name: "sdio_retune_crc_disable", scope: !1, file: !1, line: 759, type: !71, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3556 = !DILocalVariable(name: "func", arg: 1, scope: !3555, file: !1, line: 759, type: !73)
!3557 = !DILocation(line: 759, column: 48, scope: !3555)
!3558 = !DILocation(line: 761, column: 2, scope: !3555)
!3559 = !DILocation(line: 761, column: 8, scope: !3555)
!3560 = !DILocation(line: 761, column: 14, scope: !3555)
!3561 = !DILocation(line: 761, column: 20, scope: !3555)
!3562 = !DILocation(line: 761, column: 39, scope: !3555)
!3563 = !DILocation(line: 762, column: 1, scope: !3555)
!3564 = distinct !DISubprogram(name: "sdio_retune_crc_enable", scope: !1, file: !1, line: 771, type: !71, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3565 = !DILocalVariable(name: "func", arg: 1, scope: !3564, file: !1, line: 771, type: !73)
!3566 = !DILocation(line: 771, column: 47, scope: !3564)
!3567 = !DILocation(line: 773, column: 2, scope: !3564)
!3568 = !DILocation(line: 773, column: 8, scope: !3564)
!3569 = !DILocation(line: 773, column: 14, scope: !3564)
!3570 = !DILocation(line: 773, column: 20, scope: !3564)
!3571 = !DILocation(line: 773, column: 39, scope: !3564)
!3572 = !DILocation(line: 774, column: 1, scope: !3564)
!3573 = distinct !DISubprogram(name: "sdio_retune_hold_now", scope: !1, file: !1, line: 794, type: !71, scopeLine: 795, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3574 = !DILocalVariable(name: "func", arg: 1, scope: !3573, file: !1, line: 794, type: !73)
!3575 = !DILocation(line: 794, column: 45, scope: !3573)
!3576 = !DILocation(line: 796, column: 22, scope: !3573)
!3577 = !DILocation(line: 796, column: 28, scope: !3573)
!3578 = !DILocation(line: 796, column: 34, scope: !3573)
!3579 = !DILocation(line: 796, column: 2, scope: !3573)
!3580 = !DILocation(line: 797, column: 1, scope: !3573)
!3581 = distinct !DISubprogram(name: "mmc_retune_hold_now", scope: !3582, file: !3582, line: 24, type: !2031, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3582 = !DIFile(filename: "drivers/mmc/core/host.h", directory: "/home/lizy2001/genbc/linux")
!3583 = !DILocalVariable(name: "host", arg: 1, scope: !3581, file: !3582, line: 24, type: !83)
!3584 = !DILocation(line: 24, column: 57, scope: !3581)
!3585 = !DILocation(line: 26, column: 2, scope: !3581)
!3586 = !DILocation(line: 26, column: 8, scope: !3581)
!3587 = !DILocation(line: 26, column: 19, scope: !3581)
!3588 = !DILocation(line: 27, column: 2, scope: !3581)
!3589 = !DILocation(line: 27, column: 8, scope: !3581)
!3590 = !DILocation(line: 27, column: 20, scope: !3581)
!3591 = !DILocation(line: 28, column: 1, scope: !3581)
!3592 = distinct !DISubprogram(name: "sdio_retune_release", scope: !1, file: !1, line: 810, type: !71, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3593 = !DILocalVariable(name: "func", arg: 1, scope: !3592, file: !1, line: 810, type: !73)
!3594 = !DILocation(line: 810, column: 44, scope: !3592)
!3595 = !DILocation(line: 812, column: 21, scope: !3592)
!3596 = !DILocation(line: 812, column: 27, scope: !3592)
!3597 = !DILocation(line: 812, column: 33, scope: !3592)
!3598 = !DILocation(line: 812, column: 2, scope: !3592)
!3599 = !DILocation(line: 813, column: 1, scope: !3592)
!3600 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !2513, file: !2513, line: 308, type: !2514, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3601 = !DILocalVariable(name: "m", arg: 1, scope: !3600, file: !2513, line: 308, type: !2516)
!3602 = !DILocation(line: 308, column: 66, scope: !3600)
!3603 = !DILocation(line: 310, column: 10, scope: !3600)
!3604 = !DILocation(line: 310, column: 12, scope: !3600)
!3605 = !DILocation(line: 310, column: 34, scope: !3600)
!3606 = !DILocation(line: 310, column: 39, scope: !3600)
!3607 = !DILocation(line: 310, column: 2, scope: !3600)
!3608 = distinct !DISubprogram(name: "mmc_blksz_for_byte_mode", scope: !3498, file: !3498, line: 190, type: !3499, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3609 = !DILocalVariable(name: "c", arg: 1, scope: !3608, file: !3498, line: 190, type: !3501)
!3610 = !DILocation(line: 190, column: 66, scope: !3608)
!3611 = !DILocation(line: 192, column: 9, scope: !3608)
!3612 = !DILocation(line: 192, column: 12, scope: !3608)
!3613 = !DILocation(line: 192, column: 19, scope: !3608)
!3614 = !DILocation(line: 192, column: 2, scope: !3608)
!3615 = distinct !DISubprogram(name: "mmc_card_broken_byte_mode_512", scope: !3498, file: !3498, line: 205, type: !3499, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !128)
!3616 = !DILocalVariable(name: "c", arg: 1, scope: !3615, file: !3498, line: 205, type: !3501)
!3617 = !DILocation(line: 205, column: 72, scope: !3615)
!3618 = !DILocation(line: 207, column: 9, scope: !3615)
!3619 = !DILocation(line: 207, column: 12, scope: !3615)
!3620 = !DILocation(line: 207, column: 19, scope: !3615)
!3621 = !DILocation(line: 207, column: 2, scope: !3615)
