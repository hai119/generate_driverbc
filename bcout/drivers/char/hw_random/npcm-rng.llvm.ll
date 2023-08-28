; ModuleID = '../bcout/drivers/char/hw_random/npcm-rng.llvm.bc'
source_filename = "drivers/char/hw_random/npcm-rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_npcm_rng_driver_init6:\09\09\09"
module asm ".long\09npcm_rng_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.platform_driver = type { i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)*, void (%struct.platform_device*)*, i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*)*, %struct.device_driver, %struct.platform_device_id*, i8 }
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
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
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.37 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.vm_operations_struct = type opaque
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.36, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.17, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
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
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.wake_irq = type opaque
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type opaque
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, {}*, {}*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type opaque
%struct.proc_dir_entry = type opaque
%struct.module = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.npcm_rng = type { i8*, %struct.hwrng }
%struct.hwrng = type { i8*, i32 (%struct.hwrng*)*, void (%struct.hwrng*)*, i32 (%struct.hwrng*, i32)*, i32 (%struct.hwrng*, i32*)*, i32 (%struct.hwrng*, i8*, i64, i1)*, i64, i16, %struct.list_head, %struct.kref, %struct.completion }

@__UNIQUE_ID___addressable_npcm_rng_driver_init170 = internal global i8* bitcast (i32 ()* @npcm_rng_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@npcm_rng_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @npcm_rng_probe, i32 (%struct.platform_device*)* @npcm_rng_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @rng_dt_id, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @npcm_rng_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2421
@__exitcall_npcm_rng_driver_exit = internal global void ()* @npcm_rng_driver_exit, section ".exitcall.exit", align 8, !dbg !2394
@__UNIQUE_ID_description171 = internal constant [65 x i8] c"npcm_rng.description=Nuvoton NPCM Random Number Generator Driver\00", section ".modinfo", align 1, !dbg !2401
@__UNIQUE_ID_author172 = internal constant [56 x i8] c"npcm_rng.author=Tomer Maimon <tomer.maimon@nuvoton.com>\00", section ".modinfo", align 1, !dbg !2406
@__UNIQUE_ID_file173 = internal constant [46 x i8] c"npcm_rng.file=drivers/char/hw_random/npcm-rng\00", section ".modinfo", align 1, !dbg !2411
@__UNIQUE_ID_license174 = internal constant [24 x i8] c"npcm_rng.license=GPL v2\00", section ".modinfo", align 1, !dbg !2416
@.str = private unnamed_addr constant [9 x i8] c"npcm-rng\00", align 1
@rng_dt_id = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npcm750-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2481
@npcm_rng_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @pm_runtime_force_suspend, i32 (%struct.device*)* @pm_runtime_force_resume, i32 (%struct.device*)* @pm_runtime_force_suspend, i32 (%struct.device*)* @pm_runtime_force_resume, i32 (%struct.device*)* @pm_runtime_force_suspend, i32 (%struct.device*)* @pm_runtime_force_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @npcm_rng_runtime_suspend, i32 (%struct.device*)* @npcm_rng_runtime_resume, i32 (%struct.device*)* null }, align 8, !dbg !2484
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to register rng device: %d\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_npcm_rng_driver_init170 to i8*), i8* bitcast (void ()* @npcm_rng_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_npcm_rng_driver_exit to i8*), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_description171, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__UNIQUE_ID_author172, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_file173, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_license174, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @npcm_rng_driver_init() #0 section ".init.text" !dbg !2491 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @npcm_rng_driver, %struct.module* null) #5, !dbg !2494
  ret i32 %call, !dbg !2494
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @npcm_rng_driver_exit() #0 section ".exit.text" !dbg !2495 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @npcm_rng_driver) #5, !dbg !2496
  ret void, !dbg !2496
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @npcm_rng_probe(%struct.platform_device* %pdev) #2 !dbg !2497 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %priv = alloca %struct.npcm_rng*, align 8
  %ret = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2498, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.declare(metadata %struct.npcm_rng** %priv, metadata !2500, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2502, metadata !DIExpression()), !dbg !2503
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2504
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2505
  %call = call i8* @devm_kzalloc(%struct.device* %dev, i64 120, i32 3264) #5, !dbg !2506
  %1 = bitcast i8* %call to %struct.npcm_rng*, !dbg !2506
  store %struct.npcm_rng* %1, %struct.npcm_rng** %priv, align 8, !dbg !2507
  %2 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2508
  %tobool = icmp ne %struct.npcm_rng* %2, null, !dbg !2508
  br i1 %tobool, label %if.end, label %if.then, !dbg !2510

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2511
  br label %return, !dbg !2511

if.end:                                           ; preds = %entry
  %3 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2512
  %call1 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %3, i32 0) #5, !dbg !2513
  %4 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2514
  %base = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %4, i32 0, i32 0, !dbg !2515
  store i8* %call1, i8** %base, align 8, !dbg !2516
  %5 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2517
  %base2 = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %5, i32 0, i32 0, !dbg !2519
  %6 = load i8*, i8** %base2, align 8, !dbg !2519
  %call3 = call zeroext i1 @IS_ERR(i8* %6) #5, !dbg !2520
  br i1 %call3, label %if.then4, label %if.end7, !dbg !2521

if.then4:                                         ; preds = %if.end
  %7 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2522
  %base5 = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %7, i32 0, i32 0, !dbg !2523
  %8 = load i8*, i8** %base5, align 8, !dbg !2523
  %call6 = call i64 @PTR_ERR(i8* %8) #5, !dbg !2524
  %conv = trunc i64 %call6 to i32, !dbg !2524
  store i32 %conv, i32* %retval, align 4, !dbg !2525
  br label %return, !dbg !2525

if.end7:                                          ; preds = %if.end
  %9 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2526
  %dev8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 3, !dbg !2527
  %10 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2528
  %11 = bitcast %struct.npcm_rng* %10 to i8*, !dbg !2528
  call void @dev_set_drvdata(%struct.device* %dev8, i8* %11) #5, !dbg !2529
  %12 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2530
  %dev9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 3, !dbg !2531
  call void @pm_runtime_set_autosuspend_delay(%struct.device* %dev9, i32 100) #5, !dbg !2532
  %13 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2533
  %dev10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 3, !dbg !2534
  call void @pm_runtime_use_autosuspend(%struct.device* %dev10) #5, !dbg !2535
  %14 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2536
  %dev11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 3, !dbg !2537
  call void @pm_runtime_enable(%struct.device* %dev11) #5, !dbg !2538
  %15 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2539
  %name = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0, !dbg !2540
  %16 = load i8*, i8** %name, align 8, !dbg !2540
  %17 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2541
  %rng = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %17, i32 0, i32 1, !dbg !2542
  %name12 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng, i32 0, i32 0, !dbg !2543
  store i8* %16, i8** %name12, align 8, !dbg !2544
  %18 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2545
  %rng13 = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %18, i32 0, i32 1, !dbg !2546
  %read = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng13, i32 0, i32 5, !dbg !2547
  store i32 (%struct.hwrng*, i8*, i64, i1)* @npcm_rng_read, i32 (%struct.hwrng*, i8*, i64, i1)** %read, align 8, !dbg !2548
  %19 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2549
  %dev14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 3, !dbg !2550
  %20 = ptrtoint %struct.device* %dev14 to i64, !dbg !2551
  %21 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2552
  %rng15 = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %21, i32 0, i32 1, !dbg !2553
  %priv16 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng15, i32 0, i32 6, !dbg !2554
  store i64 %20, i64* %priv16, align 8, !dbg !2555
  %22 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2556
  %rng17 = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %22, i32 0, i32 1, !dbg !2557
  %quality = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng17, i32 0, i32 7, !dbg !2558
  store i16 1000, i16* %quality, align 8, !dbg !2559
  %23 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2560
  %base18 = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %23, i32 0, i32 0, !dbg !2561
  %24 = load i8*, i8** %base18, align 8, !dbg !2561
  %add.ptr = getelementptr i8, i8* %24, i64 8, !dbg !2562
  call void @writel(i32 2, i8* %add.ptr) #5, !dbg !2563
  %25 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2564
  %dev19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 3, !dbg !2565
  %26 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2566
  %rng20 = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %26, i32 0, i32 1, !dbg !2567
  %call21 = call i32 @devm_hwrng_register(%struct.device* %dev19, %struct.hwrng* %rng20) #5, !dbg !2568
  store i32 %call21, i32* %ret, align 4, !dbg !2569
  %27 = load i32, i32* %ret, align 4, !dbg !2570
  %tobool22 = icmp ne i32 %27, 0, !dbg !2570
  br i1 %tobool22, label %if.then23, label %if.end28, !dbg !2572

if.then23:                                        ; preds = %if.end7
  %28 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2573
  %dev24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 3, !dbg !2573
  %29 = load i32, i32* %ret, align 4, !dbg !2573
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %29) #6, !dbg !2573
  %30 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2575
  %dev25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 3, !dbg !2576
  call void @pm_runtime_disable(%struct.device* %dev25) #5, !dbg !2577
  %31 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2578
  %dev26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 3, !dbg !2579
  %call27 = call i32 @pm_runtime_set_suspended(%struct.device* %dev26) #5, !dbg !2580
  %32 = load i32, i32* %ret, align 4, !dbg !2581
  store i32 %32, i32* %retval, align 4, !dbg !2582
  br label %return, !dbg !2582

if.end28:                                         ; preds = %if.end7
  store i32 0, i32* %retval, align 4, !dbg !2583
  br label %return, !dbg !2583

return:                                           ; preds = %if.end28, %if.then23, %if.then4, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !2584
  ret i32 %33, !dbg !2584
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @npcm_rng_remove(%struct.platform_device* %pdev) #2 !dbg !2585 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %priv = alloca %struct.npcm_rng*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2586, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.declare(metadata %struct.npcm_rng** %priv, metadata !2588, metadata !DIExpression()), !dbg !2589
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2590
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #5, !dbg !2591
  %1 = bitcast i8* %call to %struct.npcm_rng*, !dbg !2591
  store %struct.npcm_rng* %1, %struct.npcm_rng** %priv, align 8, !dbg !2589
  %2 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2592
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %2, i32 0, i32 3, !dbg !2593
  %3 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2594
  %rng = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %3, i32 0, i32 1, !dbg !2595
  call void @devm_hwrng_unregister(%struct.device* %dev, %struct.hwrng* %rng) #5, !dbg !2596
  %4 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2597
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 3, !dbg !2598
  call void @pm_runtime_disable(%struct.device* %dev1) #5, !dbg !2599
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2600
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 3, !dbg !2601
  %call3 = call i32 @pm_runtime_set_suspended(%struct.device* %dev2) #5, !dbg !2602
  ret i32 0, !dbg !2603
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2604 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2607, metadata !DIExpression()), !dbg !2608
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2609, metadata !DIExpression()), !dbg !2610
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2611, metadata !DIExpression()), !dbg !2612
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2613
  %1 = load i64, i64* %size.addr, align 8, !dbg !2614
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2615
  %or = or i32 %2, 256, !dbg !2616
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #5, !dbg !2617
  ret i8* %call, !dbg !2618
}

; Function Attrs: noredzone
declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2619 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2623, metadata !DIExpression()), !dbg !2624
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2625
  %1 = ptrtoint i8* %0 to i64, !dbg !2625
  %2 = inttoptr i64 %1 to i8*, !dbg !2625
  %3 = ptrtoint i8* %2 to i64, !dbg !2625
  %cmp = icmp uge i64 %3, -4095, !dbg !2625
  %lnot = xor i1 %cmp, true, !dbg !2625
  %lnot1 = xor i1 %lnot, true, !dbg !2625
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2625
  %conv = sext i32 %lnot.ext to i64, !dbg !2625
  %tobool = icmp ne i64 %conv, 0, !dbg !2625
  ret i1 %tobool, !dbg !2626
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2627 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2630, metadata !DIExpression()), !dbg !2631
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2632
  %1 = ptrtoint i8* %0 to i64, !dbg !2633
  ret i64 %1, !dbg !2634
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !2635 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2638, metadata !DIExpression()), !dbg !2639
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2640, metadata !DIExpression()), !dbg !2641
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2642
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2643
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !2644
  store i8* %0, i8** %driver_data, align 8, !dbg !2645
  ret void, !dbg !2646
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_use_autosuspend(%struct.device* %dev) #2 !dbg !2647 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2649, metadata !DIExpression()), !dbg !2650
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2651
  call void @__pm_runtime_use_autosuspend(%struct.device* %0, i1 zeroext true) #5, !dbg !2652
  ret void, !dbg !2653
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_enable(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @npcm_rng_read(%struct.hwrng* %rng, i8* %buf, i64 %max, i1 zeroext %wait) #2 !dbg !2654 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %buf.addr = alloca i8*, align 8
  %max.addr = alloca i64, align 8
  %wait.addr = alloca i8, align 1
  %priv = alloca %struct.npcm_rng*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.npcm_rng*, align 8
  %retval1 = alloca i32, align 4
  %ready = alloca i32, align 4
  %__timeout_us = alloca i64, align 8
  %__sleep_us = alloca i64, align 8
  %__timeout = alloca i64, align 8
  %tmp34 = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2655, metadata !DIExpression()), !dbg !2656
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2657, metadata !DIExpression()), !dbg !2658
  store i64 %max, i64* %max.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %max.addr, metadata !2659, metadata !DIExpression()), !dbg !2660
  %frombool = zext i1 %wait to i8
  store i8 %frombool, i8* %wait.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %wait.addr, metadata !2661, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.declare(metadata %struct.npcm_rng** %priv, metadata !2663, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2665, metadata !DIExpression()), !dbg !2667
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2667
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !2667
  store i8* %1, i8** %__mptr, align 8, !dbg !2667
  br label %do.body, !dbg !2667

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2668

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2667
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !2667
  %3 = bitcast i8* %add.ptr to %struct.npcm_rng*, !dbg !2667
  store %struct.npcm_rng* %3, %struct.npcm_rng** %tmp, align 8, !dbg !2668
  %4 = load %struct.npcm_rng*, %struct.npcm_rng** %tmp, align 8, !dbg !2667
  store %struct.npcm_rng* %4, %struct.npcm_rng** %priv, align 8, !dbg !2664
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !2670, metadata !DIExpression()), !dbg !2671
  store i32 0, i32* %retval1, align 4, !dbg !2671
  call void @llvm.dbg.declare(metadata i32* %ready, metadata !2672, metadata !DIExpression()), !dbg !2673
  %5 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2674
  %rng2 = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %5, i32 0, i32 1, !dbg !2675
  %priv3 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng2, i32 0, i32 6, !dbg !2676
  %6 = load i64, i64* %priv3, align 8, !dbg !2676
  %7 = inttoptr i64 %6 to %struct.device*, !dbg !2677
  %call = call i32 @pm_runtime_get_sync(%struct.device* %7) #5, !dbg !2678
  br label %while.cond, !dbg !2679

while.cond:                                       ; preds = %if.end50, %do.end
  %8 = load i64, i64* %max.addr, align 8, !dbg !2680
  %tobool = icmp ne i64 %8, 0, !dbg !2679
  br i1 %tobool, label %while.body, label %while.end, !dbg !2679

while.body:                                       ; preds = %while.cond
  %9 = load i8, i8* %wait.addr, align 1, !dbg !2681
  %tobool4 = trunc i8 %9 to i1, !dbg !2681
  br i1 %tobool4, label %if.then, label %if.else, !dbg !2684

if.then:                                          ; preds = %while.body
  call void @llvm.dbg.declare(metadata i64* %__timeout_us, metadata !2685, metadata !DIExpression()), !dbg !2689
  store i64 20000, i64* %__timeout_us, align 8, !dbg !2689
  call void @llvm.dbg.declare(metadata i64* %__sleep_us, metadata !2690, metadata !DIExpression()), !dbg !2689
  store i64 1000, i64* %__sleep_us, align 8, !dbg !2689
  call void @llvm.dbg.declare(metadata i64* %__timeout, metadata !2691, metadata !DIExpression()), !dbg !2689
  %call5 = call i64 @ktime_get() #5, !dbg !2689
  %10 = load i64, i64* %__timeout_us, align 8, !dbg !2689
  %call6 = call i64 @ktime_add_us(i64 %call5, i64 %10) #5, !dbg !2689
  store i64 %call6, i64* %__timeout, align 8, !dbg !2689
  br label %do.body7, !dbg !2689

do.body7:                                         ; preds = %if.then
  %11 = load i64, i64* %__sleep_us, align 8, !dbg !2692
  %cmp = icmp ne i64 %11, 0, !dbg !2692
  br i1 %cmp, label %if.then8, label %if.end, !dbg !2695

if.then8:                                         ; preds = %do.body7
  br label %do.body9, !dbg !2692

do.body9:                                         ; preds = %if.then8
  br label %do.body10, !dbg !2696

do.body10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2698

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !2696

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !2696

if.end:                                           ; preds = %do.end12, %do.body7
  br label %do.end13, !dbg !2695

do.end13:                                         ; preds = %if.end
  br label %for.cond, !dbg !2689

for.cond:                                         ; preds = %if.end33, %do.end13
  %12 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2700
  %base = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %12, i32 0, i32 0, !dbg !2700
  %13 = load i8*, i8** %base, align 8, !dbg !2700
  %add.ptr14 = getelementptr i8, i8* %13, i64 0, !dbg !2700
  %call15 = call zeroext i8 @readb(i8* %add.ptr14) #5, !dbg !2700
  %conv = zext i8 %call15 to i32, !dbg !2700
  store i32 %conv, i32* %ready, align 4, !dbg !2700
  %14 = load i32, i32* %ready, align 4, !dbg !2704
  %conv16 = sext i32 %14 to i64, !dbg !2704
  %and = and i64 %conv16, 2, !dbg !2704
  %tobool17 = icmp ne i64 %and, 0, !dbg !2704
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !2700

if.then18:                                        ; preds = %for.cond
  br label %for.end, !dbg !2704

if.end19:                                         ; preds = %for.cond
  %15 = load i64, i64* %__timeout_us, align 8, !dbg !2706
  %tobool20 = icmp ne i64 %15, 0, !dbg !2706
  br i1 %tobool20, label %land.lhs.true, label %if.end30, !dbg !2706

land.lhs.true:                                    ; preds = %if.end19
  %call21 = call i64 @ktime_get() #5, !dbg !2706
  %16 = load i64, i64* %__timeout, align 8, !dbg !2706
  %call22 = call i32 @ktime_compare(i64 %call21, i64 %16) #5, !dbg !2706
  %cmp23 = icmp sgt i32 %call22, 0, !dbg !2706
  br i1 %cmp23, label %if.then25, label %if.end30, !dbg !2700

if.then25:                                        ; preds = %land.lhs.true
  %17 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2708
  %base26 = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %17, i32 0, i32 0, !dbg !2708
  %18 = load i8*, i8** %base26, align 8, !dbg !2708
  %add.ptr27 = getelementptr i8, i8* %18, i64 0, !dbg !2708
  %call28 = call zeroext i8 @readb(i8* %add.ptr27) #5, !dbg !2708
  %conv29 = zext i8 %call28 to i32, !dbg !2708
  store i32 %conv29, i32* %ready, align 4, !dbg !2708
  br label %for.end, !dbg !2708

if.end30:                                         ; preds = %land.lhs.true, %if.end19
  %19 = load i64, i64* %__sleep_us, align 8, !dbg !2710
  %tobool31 = icmp ne i64 %19, 0, !dbg !2710
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !2700

if.then32:                                        ; preds = %if.end30
  %20 = load i64, i64* %__sleep_us, align 8, !dbg !2710
  %shr = lshr i64 %20, 2, !dbg !2710
  %add = add i64 %shr, 1, !dbg !2710
  %21 = load i64, i64* %__sleep_us, align 8, !dbg !2710
  call void @usleep_range(i64 %add, i64 %21) #5, !dbg !2710
  br label %if.end33, !dbg !2710

if.end33:                                         ; preds = %if.then32, %if.end30
  br label %for.cond, !dbg !2712, !llvm.loop !2713

for.end:                                          ; preds = %if.then25, %if.then18
  %22 = load i32, i32* %ready, align 4, !dbg !2689
  %conv35 = sext i32 %22 to i64, !dbg !2689
  %and36 = and i64 %conv35, 2, !dbg !2689
  %tobool37 = icmp ne i64 %and36, 0, !dbg !2689
  %23 = zext i1 %tobool37 to i64, !dbg !2689
  %cond = select i1 %tobool37, i32 0, i32 -110, !dbg !2689
  store i32 %cond, i32* %tmp34, align 4, !dbg !2714
  %24 = load i32, i32* %tmp34, align 4, !dbg !2689
  %tobool38 = icmp ne i32 %24, 0, !dbg !2715
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !2716

if.then39:                                        ; preds = %for.end
  br label %while.end, !dbg !2717

if.end40:                                         ; preds = %for.end
  br label %if.end50, !dbg !2718

if.else:                                          ; preds = %while.body
  %25 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2719
  %base41 = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %25, i32 0, i32 0, !dbg !2722
  %26 = load i8*, i8** %base41, align 8, !dbg !2722
  %add.ptr42 = getelementptr i8, i8* %26, i64 0, !dbg !2723
  %call43 = call zeroext i8 @readb(i8* %add.ptr42) #5, !dbg !2724
  %conv44 = zext i8 %call43 to i64, !dbg !2724
  %and45 = and i64 %conv44, 2, !dbg !2725
  %cmp46 = icmp eq i64 %and45, 0, !dbg !2726
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !2727

if.then48:                                        ; preds = %if.else
  br label %while.end, !dbg !2728

if.end49:                                         ; preds = %if.else
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end40
  %27 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2729
  %base51 = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %27, i32 0, i32 0, !dbg !2730
  %28 = load i8*, i8** %base51, align 8, !dbg !2730
  %add.ptr52 = getelementptr i8, i8* %28, i64 4, !dbg !2731
  %call53 = call zeroext i8 @readb(i8* %add.ptr52) #5, !dbg !2732
  %29 = load i8*, i8** %buf.addr, align 8, !dbg !2733
  store i8 %call53, i8* %29, align 1, !dbg !2734
  %30 = load i32, i32* %retval1, align 4, !dbg !2735
  %inc = add i32 %30, 1, !dbg !2735
  store i32 %inc, i32* %retval1, align 4, !dbg !2735
  %31 = load i8*, i8** %buf.addr, align 8, !dbg !2736
  %incdec.ptr = getelementptr i8, i8* %31, i32 1, !dbg !2736
  store i8* %incdec.ptr, i8** %buf.addr, align 8, !dbg !2736
  %32 = load i64, i64* %max.addr, align 8, !dbg !2737
  %dec = add i64 %32, -1, !dbg !2737
  store i64 %dec, i64* %max.addr, align 8, !dbg !2737
  br label %while.cond, !dbg !2679, !llvm.loop !2738

while.end:                                        ; preds = %if.then48, %if.then39, %while.cond
  %33 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2740
  %rng54 = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %33, i32 0, i32 1, !dbg !2741
  %priv55 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng54, i32 0, i32 6, !dbg !2742
  %34 = load i64, i64* %priv55, align 8, !dbg !2742
  %35 = inttoptr i64 %34 to %struct.device*, !dbg !2743
  call void @pm_runtime_mark_last_busy(%struct.device* %35) #5, !dbg !2744
  %36 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2745
  %rng56 = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %36, i32 0, i32 1, !dbg !2746
  %priv57 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng56, i32 0, i32 6, !dbg !2747
  %37 = load i64, i64* %priv57, align 8, !dbg !2747
  %38 = inttoptr i64 %37 to %struct.device*, !dbg !2748
  %call58 = call i32 @pm_runtime_put_sync_autosuspend(%struct.device* %38) #5, !dbg !2749
  %39 = load i32, i32* %retval1, align 4, !dbg !2750
  %tobool59 = icmp ne i32 %39, 0, !dbg !2750
  br i1 %tobool59, label %cond.true, label %lor.lhs.false, !dbg !2751

lor.lhs.false:                                    ; preds = %while.end
  %40 = load i8, i8* %wait.addr, align 1, !dbg !2752
  %tobool60 = trunc i8 %40 to i1, !dbg !2752
  br i1 %tobool60, label %cond.false, label %cond.true, !dbg !2750

cond.true:                                        ; preds = %lor.lhs.false, %while.end
  %41 = load i32, i32* %retval1, align 4, !dbg !2753
  br label %cond.end, !dbg !2750

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end, !dbg !2750

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond61 = phi i32 [ %41, %cond.true ], [ -5, %cond.false ], !dbg !2750
  ret i32 %cond61, !dbg !2754
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !2755 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2761, metadata !DIExpression()), !dbg !2762
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2763, metadata !DIExpression()), !dbg !2762
  %0 = load i32, i32* %val.addr, align 4, !dbg !2762
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !2762
  %2 = bitcast i8* %1 to i32*, !dbg !2762
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !2762, !srcloc !2764
  ret void, !dbg !2762
}

; Function Attrs: noredzone
declare dso_local i32 @devm_hwrng_register(%struct.device*, %struct.hwrng*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_disable(%struct.device* %dev) #2 !dbg !2765 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2766, metadata !DIExpression()), !dbg !2767
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2768
  call void @__pm_runtime_disable(%struct.device* %0, i1 zeroext true) #5, !dbg !2769
  ret void, !dbg !2770
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_set_suspended(%struct.device* %dev) #2 !dbg !2771 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2772, metadata !DIExpression()), !dbg !2773
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2774
  %call = call i32 @__pm_runtime_set_status(%struct.device* %0, i32 2) #5, !dbg !2775
  ret i32 %call, !dbg !2776
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_use_autosuspend(%struct.device*, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #2 !dbg !2777 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2778, metadata !DIExpression()), !dbg !2779
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2780
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #5, !dbg !2781
  ret i32 %call, !dbg !2782
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_add_us(i64 %kt, i64 %usec) #2 !dbg !2783 {
entry:
  %kt.addr = alloca i64, align 8
  %usec.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !2788, metadata !DIExpression()), !dbg !2789
  store i64 %usec, i64* %usec.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %usec.addr, metadata !2790, metadata !DIExpression()), !dbg !2791
  %0 = load i64, i64* %kt.addr, align 8, !dbg !2792
  %1 = load i64, i64* %usec.addr, align 8, !dbg !2792
  %mul = mul i64 %1, 1000, !dbg !2792
  %add = add i64 %0, %mul, !dbg !2792
  ret i64 %add, !dbg !2793
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #2 !dbg !2794 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2799, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !2801, metadata !DIExpression()), !dbg !2800
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !2800
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #7, !dbg !2800, !srcloc !2802
  store i8 %1, i8* %ret, align 1, !dbg !2800
  %2 = load i8, i8* %ret, align 1, !dbg !2800
  ret i8 %2, !dbg !2800
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ktime_compare(i64 %cmp1, i64 %cmp2) #2 !dbg !2803 {
entry:
  %retval = alloca i32, align 4
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !2806, metadata !DIExpression()), !dbg !2807
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !2808, metadata !DIExpression()), !dbg !2809
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !2810
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !2812
  %cmp = icmp slt i64 %0, %1, !dbg !2813
  br i1 %cmp, label %if.then, label %if.end, !dbg !2814

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !2815
  br label %return, !dbg !2815

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %cmp1.addr, align 8, !dbg !2816
  %3 = load i64, i64* %cmp2.addr, align 8, !dbg !2818
  %cmp3 = icmp sgt i64 %2, %3, !dbg !2819
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2820

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !2821
  br label %return, !dbg !2821

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2822
  br label %return, !dbg !2822

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !2823
  ret i32 %4, !dbg !2823
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_mark_last_busy(%struct.device* %dev) #2 !dbg !2824 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2825, metadata !DIExpression()), !dbg !2826
  br label %do.body, !dbg !2827

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2828

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2830

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2828

do.body2:                                         ; preds = %do.end
  %call = call i64 @ktime_get_mono_fast_ns() #5, !dbg !2832
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2832
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2832
  %last_busy = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 21, !dbg !2832
  store volatile i64 %call, i64* %last_busy, align 8, !dbg !2832
  br label %do.end3, !dbg !2832

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2828

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !2834
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put_sync_autosuspend(%struct.device* %dev) #2 !dbg !2835 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2836, metadata !DIExpression()), !dbg !2837
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2838
  %call = call i32 @__pm_runtime_suspend(%struct.device* %0, i32 12) #5, !dbg !2839
  ret i32 %call, !dbg !2840
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #1

; Function Attrs: noredzone
declare dso_local i64 @ktime_get_mono_fast_ns() #1

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_suspend(%struct.device*, i32) #1

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_disable(%struct.device*, i1 zeroext) #1

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_set_status(%struct.device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !2841 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2846, metadata !DIExpression()), !dbg !2847
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2848
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2849
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #5, !dbg !2850
  ret i8* %call, !dbg !2851
}

; Function Attrs: noredzone
declare dso_local void @devm_hwrng_unregister(%struct.device*, %struct.hwrng*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !2852 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2855, metadata !DIExpression()), !dbg !2856
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2857
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2858
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2858
  ret i8* %1, !dbg !2859
}

; Function Attrs: noredzone
declare dso_local i32 @pm_runtime_force_suspend(%struct.device*) #1

; Function Attrs: noredzone
declare dso_local i32 @pm_runtime_force_resume(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @npcm_rng_runtime_suspend(%struct.device* %dev) #2 !dbg !2860 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %priv = alloca %struct.npcm_rng*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2861, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.declare(metadata %struct.npcm_rng** %priv, metadata !2863, metadata !DIExpression()), !dbg !2864
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2865
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !2866
  %1 = bitcast i8* %call to %struct.npcm_rng*, !dbg !2866
  store %struct.npcm_rng* %1, %struct.npcm_rng** %priv, align 8, !dbg !2864
  %2 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2867
  %rng = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %2, i32 0, i32 1, !dbg !2868
  call void @npcm_rng_cleanup(%struct.hwrng* %rng) #5, !dbg !2869
  ret i32 0, !dbg !2870
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @npcm_rng_runtime_resume(%struct.device* %dev) #2 !dbg !2871 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %priv = alloca %struct.npcm_rng*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2872, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.declare(metadata %struct.npcm_rng** %priv, metadata !2874, metadata !DIExpression()), !dbg !2875
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2876
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !2877
  %1 = bitcast i8* %call to %struct.npcm_rng*, !dbg !2877
  store %struct.npcm_rng* %1, %struct.npcm_rng** %priv, align 8, !dbg !2875
  %2 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2878
  %rng = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %2, i32 0, i32 1, !dbg !2879
  %call1 = call i32 @npcm_rng_init(%struct.hwrng* %rng) #5, !dbg !2880
  ret i32 %call1, !dbg !2881
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @npcm_rng_cleanup(%struct.hwrng* %rng) #2 !dbg !2882 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %priv = alloca %struct.npcm_rng*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.npcm_rng*, align 8
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2883, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.declare(metadata %struct.npcm_rng** %priv, metadata !2885, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2887, metadata !DIExpression()), !dbg !2889
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2889
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !2889
  store i8* %1, i8** %__mptr, align 8, !dbg !2889
  br label %do.body, !dbg !2889

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2890

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2889
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !2889
  %3 = bitcast i8* %add.ptr to %struct.npcm_rng*, !dbg !2889
  store %struct.npcm_rng* %3, %struct.npcm_rng** %tmp, align 8, !dbg !2890
  %4 = load %struct.npcm_rng*, %struct.npcm_rng** %tmp, align 8, !dbg !2889
  store %struct.npcm_rng* %4, %struct.npcm_rng** %priv, align 8, !dbg !2886
  %5 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2892
  %base = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %5, i32 0, i32 0, !dbg !2893
  %6 = load i8*, i8** %base, align 8, !dbg !2893
  %add.ptr1 = getelementptr i8, i8* %6, i64 0, !dbg !2894
  call void @writel(i32 24, i8* %add.ptr1) #5, !dbg !2895
  ret void, !dbg !2896
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @npcm_rng_init(%struct.hwrng* %rng) #2 !dbg !2897 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %priv = alloca %struct.npcm_rng*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.npcm_rng*, align 8
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2898, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.declare(metadata %struct.npcm_rng** %priv, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2902, metadata !DIExpression()), !dbg !2904
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2904
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !2904
  store i8* %1, i8** %__mptr, align 8, !dbg !2904
  br label %do.body, !dbg !2904

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2905

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2904
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !2904
  %3 = bitcast i8* %add.ptr to %struct.npcm_rng*, !dbg !2904
  store %struct.npcm_rng* %3, %struct.npcm_rng** %tmp, align 8, !dbg !2905
  %4 = load %struct.npcm_rng*, %struct.npcm_rng** %tmp, align 8, !dbg !2904
  store %struct.npcm_rng* %4, %struct.npcm_rng** %priv, align 8, !dbg !2901
  %5 = load %struct.npcm_rng*, %struct.npcm_rng** %priv, align 8, !dbg !2907
  %base = getelementptr inbounds %struct.npcm_rng, %struct.npcm_rng* %5, i32 0, i32 0, !dbg !2908
  %6 = load i8*, i8** %base, align 8, !dbg !2908
  %add.ptr1 = getelementptr i8, i8* %6, i64 0, !dbg !2909
  call void @writel(i32 25, i8* %add.ptr1) #5, !dbg !2910
  ret i32 0, !dbg !2911
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2486, !2487, !2488, !2489}
!llvm.ident = !{!2490}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_npcm_rng_driver_init170", scope: !2, file: !3, line: 180, type: !84, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !77, globals: !2393, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/hw_random/npcm-rng.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !72}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !12, line: 16, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !18, line: 26, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !24, line: 44, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !30, line: 343, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!31 = !{!32, !33, !34, !35}
!32 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !37, line: 524, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42, !43}
!39 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !37, line: 502, baseType: !7, size: 32, elements: !45)
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !51, line: 76, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!53 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!58 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!59 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!60 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!61 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!62 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!63 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !65, line: 1084, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70, !71}
!67 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!68 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!69 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!70 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!71 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 10, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76}
!75 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!77 = !{!78, !81, !83, !84, !85, !86, !174, !2386, !2387, !2389, !2391, !102}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !80, line: 76, flags: DIFlagFwdDecl)
!80 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !82, line: 148, baseType: !7)
!82 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!83 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "npcm_rng", file: !3, line: 31, size: 960, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !87, file: !3, line: 32, baseType: !84, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !87, file: !3, line: 33, baseType: !91, size: 896, offset: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwrng", file: !92, line: 39, size: 896, elements: !93)
!92 = !DIFile(filename: "./include/linux/hw_random.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !98, !104, !108, !112, !121, !131, !132, !134, !140, !154}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !92, line: 40, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !91, file: !92, line: 41, baseType: !99, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !103}
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !91, file: !92, line: 42, baseType: !105, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !103}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "data_present", scope: !91, file: !92, line: 43, baseType: !109, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!102, !103, !102}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "data_read", scope: !91, file: !92, line: 44, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!102, !103, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !118, line: 21, baseType: !119)
!118 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !120, line: 27, baseType: !7)
!120 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!121 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !91, file: !92, line: 45, baseType: !122, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!102, !103, !84, !125, !129}
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !82, line: 55, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !127, line: 72, baseType: !128)
!127 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !127, line: 16, baseType: !83)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !82, line: 30, baseType: !130)
!130 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !91, file: !92, line: 46, baseType: !83, size: 64, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !91, file: !92, line: 47, baseType: !133, size: 16, offset: 448)
!133 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !91, file: !92, line: 50, baseType: !135, size: 128, offset: 512)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !82, line: 178, size: 128, elements: !136)
!136 = !{!137, !139}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !135, file: !82, line: 179, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !135, file: !82, line: 179, baseType: !138, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !91, file: !92, line: 51, baseType: !141, size: 32, offset: 640)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !142, line: 19, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !141, file: !142, line: 20, baseType: !145, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !146, line: 113, baseType: !147)
!146 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !146, line: 111, size: 32, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !147, file: !146, line: 112, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !82, line: 168, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 166, size: 32, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !151, file: !82, line: 167, baseType: !102, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !91, file: !92, line: 52, baseType: !155, size: 192, offset: 704)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !156, line: 26, size: 192, elements: !157)
!156 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !159}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !155, file: !156, line: 27, baseType: !7, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !155, file: !156, line: 28, baseType: !160, size: 128, offset: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !161, line: 43, size: 128, elements: !162)
!161 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !173}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !160, file: !161, line: 44, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !165, line: 29, baseType: !166)
!165 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !165, line: 20, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !166, file: !165, line: 21, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !170, line: 25, baseType: !171)
!170 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 25, elements: !172)
!172 = !{}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !160, file: !161, line: 45, baseType: !135, size: 128)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !176)
!176 = !{!177, !1630, !1631, !1634, !1635, !1686, !1780, !1781, !1782, !1783, !1784, !1793, !1898, !1911, !2311, !2312, !2316, !2318, !2319, !2320, !2324, !2330, !2331, !2334, !2335, !2336, !2339, !2340, !2341, !2342, !2374, !2375, !2376, !2379, !2382, !2383, !2384, !2385}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !175, file: !30, line: 462, baseType: !178, size: 512)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !179, line: 64, size: 512, elements: !180)
!179 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!180 = !{!181, !182, !183, !185, !237, !1471, !1624, !1625, !1626, !1627, !1628, !1629}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !179, line: 65, baseType: !95, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !178, file: !179, line: 66, baseType: !135, size: 128, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !178, file: !179, line: 67, baseType: !184, size: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !178, file: !179, line: 68, baseType: !186, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !179, line: 192, size: 704, elements: !188)
!188 = !{!189, !190, !198, !199}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !187, file: !179, line: 193, baseType: !135, size: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !187, file: !179, line: 194, baseType: !191, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !165, line: 83, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !165, line: 71, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, scope: !192, file: !165, line: 72, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !192, file: !165, line: 72, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !195, file: !165, line: 73, baseType: !166)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !187, file: !179, line: 195, baseType: !178, size: 512, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !187, file: !179, line: 196, baseType: !200, size: 64, offset: 640)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !179, line: 156, size: 192, elements: !203)
!203 = !{!204, !209, !214}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !202, file: !179, line: 157, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!102, !186, !184}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !179, line: 158, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!95, !186, !184}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !202, file: !179, line: 159, baseType: !215, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!102, !186, !184, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !179, line: 148, size: 20736, elements: !221)
!221 = !{!222, !227, !231, !232, !236}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !220, file: !179, line: 149, baseType: !223, size: 192)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 192, elements: !225)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!225 = !{!226}
!226 = !DISubrange(count: 3)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !220, file: !179, line: 150, baseType: !228, size: 4096, offset: 192)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 4096, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !220, file: !179, line: 151, baseType: !102, size: 32, offset: 4288)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !220, file: !179, line: 152, baseType: !233, size: 16384, offset: 4320)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16384, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 2048)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !220, file: !179, line: 153, baseType: !102, size: 32, offset: 20704)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !178, file: !179, line: 69, baseType: !238, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !179, line: 138, size: 448, elements: !240)
!240 = !{!241, !245, !268, !270, !1419, !1450, !1454}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !239, file: !179, line: 139, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !184}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !239, file: !179, line: 140, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !249, line: 230, size: 128, elements: !250)
!249 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!250 = !{!251, !264}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !248, file: !249, line: 231, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !184, !258, !224}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !82, line: 60, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !127, line: 73, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !127, line: 15, baseType: !85)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !249, line: 30, size: 128, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !259, file: !249, line: 31, baseType: !95, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !259, file: !249, line: 32, baseType: !263, size: 16, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !82, line: 19, baseType: !133)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !248, file: !249, line: 232, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!255, !184, !258, !95, !125}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !239, file: !179, line: 141, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !239, file: !179, line: 142, baseType: !271, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !249, line: 84, size: 320, elements: !275)
!275 = !{!276, !277, !281, !1416, !1417}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !274, file: !249, line: 85, baseType: !95, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !274, file: !249, line: 86, baseType: !278, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!263, !184, !258, !102}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !274, file: !249, line: 88, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!263, !184, !285, !102}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !249, line: 168, size: 448, elements: !287)
!287 = !{!288, !289, !290, !291, !301, !302}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !286, file: !249, line: 169, baseType: !259, size: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !286, file: !249, line: 170, baseType: !125, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !286, file: !249, line: 171, baseType: !84, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !286, file: !249, line: 172, baseType: !292, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!255, !295, !184, !285, !224, !298, !125}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !297, line: 526, flags: DIFlagFwdDecl)
!297 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !82, line: 46, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !127, line: 88, baseType: !300)
!300 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !286, file: !249, line: 174, baseType: !292, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !286, file: !249, line: 176, baseType: !303, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!102, !295, !184, !285, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !308, line: 305, size: 1472, elements: !309)
!308 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!309 = !{!310, !311, !312, !313, !314, !322, !323, !1390, !1396, !1397, !1402, !1403, !1406, !1410, !1411, !1412, !1413, !1414}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !307, file: !308, line: 308, baseType: !83, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !307, file: !308, line: 309, baseType: !83, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !307, file: !308, line: 313, baseType: !306, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !307, file: !308, line: 313, baseType: !306, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !307, file: !308, line: 315, baseType: !315, size: 192, align: 64, offset: 256)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !316, line: 24, size: 192, align: 64, elements: !317)
!316 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318, !319, !321}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !315, file: !316, line: 25, baseType: !83, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !315, file: !316, line: 26, baseType: !320, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !315, file: !316, line: 27, baseType: !320, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !307, file: !308, line: 323, baseType: !83, size: 64, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !307, file: !308, line: 327, baseType: !324, size: 64, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !308, line: 388, size: 7296, elements: !326)
!326 = !{!327, !1386}
!327 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !308, line: 389, baseType: !328, size: 7296)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !308, line: 389, size: 7296, elements: !329)
!329 = !{!330, !331, !335, !339, !343, !344, !345, !346, !347, !355, !356, !357, !358, !359, !368, !369, !370, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !404, !412, !415, !463, !464, !1356, !1357, !1360, !1364, !1365, !1368, !1369, !1370, !1373, !1385}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !328, file: !308, line: 390, baseType: !306, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !328, file: !308, line: 391, baseType: !332, size: 64, offset: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !316, line: 31, size: 64, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !332, file: !316, line: 32, baseType: !320, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !328, file: !308, line: 392, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !118, line: 23, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !120, line: 31, baseType: !338)
!338 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !328, file: !308, line: 394, baseType: !340, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!83, !295, !83, !83, !83, !83}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !328, file: !308, line: 398, baseType: !83, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !328, file: !308, line: 399, baseType: !83, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !328, file: !308, line: 405, baseType: !83, size: 64, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !328, file: !308, line: 406, baseType: !83, size: 64, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !328, file: !308, line: 407, baseType: !348, size: 64, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !297, line: 286, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 286, size: 64, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !350, file: !297, line: 286, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !354, line: 18, baseType: !83)
!354 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!355 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !328, file: !308, line: 416, baseType: !150, size: 32, offset: 576)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !328, file: !308, line: 428, baseType: !150, size: 32, offset: 608)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !328, file: !308, line: 437, baseType: !150, size: 32, offset: 640)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !328, file: !308, line: 447, baseType: !150, size: 32, offset: 672)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !328, file: !308, line: 450, baseType: !360, size: 64, offset: 704)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !361, line: 13, baseType: !362)
!361 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !82, line: 175, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 173, size: 64, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !363, file: !82, line: 174, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !118, line: 22, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !120, line: 30, baseType: !300)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !328, file: !308, line: 452, baseType: !102, size: 32, offset: 768)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !328, file: !308, line: 454, baseType: !191, offset: 800)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !328, file: !308, line: 457, baseType: !371, size: 256, offset: 832)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !372, line: 35, size: 256, elements: !373)
!372 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!373 = !{!374, !375, !376, !377}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !371, file: !372, line: 36, baseType: !360, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !371, file: !372, line: 42, baseType: !360, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !371, file: !372, line: 46, baseType: !164, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !371, file: !372, line: 47, baseType: !135, size: 128, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !328, file: !308, line: 459, baseType: !135, size: 128, offset: 1088)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !328, file: !308, line: 466, baseType: !83, size: 64, offset: 1216)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !328, file: !308, line: 467, baseType: !83, size: 64, offset: 1280)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !328, file: !308, line: 469, baseType: !83, size: 64, offset: 1344)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !328, file: !308, line: 470, baseType: !83, size: 64, offset: 1408)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !328, file: !308, line: 471, baseType: !362, size: 64, offset: 1472)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !328, file: !308, line: 472, baseType: !83, size: 64, offset: 1536)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !328, file: !308, line: 473, baseType: !83, size: 64, offset: 1600)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !328, file: !308, line: 474, baseType: !83, size: 64, offset: 1664)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !328, file: !308, line: 475, baseType: !83, size: 64, offset: 1728)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !328, file: !308, line: 477, baseType: !191, offset: 1792)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !328, file: !308, line: 478, baseType: !83, size: 64, offset: 1792)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !328, file: !308, line: 478, baseType: !83, size: 64, offset: 1856)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !328, file: !308, line: 478, baseType: !83, size: 64, offset: 1920)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !328, file: !308, line: 478, baseType: !83, size: 64, offset: 1984)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !328, file: !308, line: 479, baseType: !83, size: 64, offset: 2048)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !328, file: !308, line: 479, baseType: !83, size: 64, offset: 2112)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !328, file: !308, line: 479, baseType: !83, size: 64, offset: 2176)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !328, file: !308, line: 480, baseType: !83, size: 64, offset: 2240)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !328, file: !308, line: 480, baseType: !83, size: 64, offset: 2304)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !328, file: !308, line: 480, baseType: !83, size: 64, offset: 2368)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !328, file: !308, line: 480, baseType: !83, size: 64, offset: 2432)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !328, file: !308, line: 482, baseType: !401, size: 2816, offset: 2496)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 2816, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 44)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !328, file: !308, line: 488, baseType: !405, size: 256, offset: 5312)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !406, line: 60, size: 256, elements: !407)
!406 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !405, file: !406, line: 61, baseType: !409, size: 256)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 256, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 4)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !328, file: !308, line: 490, baseType: !413, size: 64, offset: 5568)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !308, line: 490, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !328, file: !308, line: 493, baseType: !416, size: 896, offset: 5632)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !417, line: 53, baseType: !418)
!417 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !417, line: 13, size: 896, elements: !419)
!419 = !{!420, !421, !422, !423, !426, !427, !434, !435, !455, !456, !459}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !418, file: !417, line: 18, baseType: !336, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !418, file: !417, line: 28, baseType: !362, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !418, file: !417, line: 31, baseType: !371, size: 256, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !418, file: !417, line: 32, baseType: !424, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !417, line: 32, flags: DIFlagFwdDecl)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !418, file: !417, line: 37, baseType: !133, size: 16, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !418, file: !417, line: 40, baseType: !428, size: 192, offset: 512)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !429, line: 53, size: 192, elements: !430)
!429 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!430 = !{!431, !432, !433}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !428, file: !429, line: 54, baseType: !360, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !428, file: !429, line: 55, baseType: !191, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !428, file: !429, line: 59, baseType: !135, size: 128, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !418, file: !417, line: 41, baseType: !84, size: 64, offset: 704)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !418, file: !417, line: 42, baseType: !436, size: 64, offset: 768)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !439, line: 13, size: 896, elements: !440)
!439 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !438, file: !439, line: 14, baseType: !84, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !438, file: !439, line: 15, baseType: !83, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !438, file: !439, line: 17, baseType: !83, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !438, file: !439, line: 17, baseType: !83, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !438, file: !439, line: 19, baseType: !85, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !438, file: !439, line: 21, baseType: !85, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !438, file: !439, line: 22, baseType: !85, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !438, file: !439, line: 23, baseType: !85, size: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !438, file: !439, line: 24, baseType: !85, size: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !438, file: !439, line: 25, baseType: !85, size: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !438, file: !439, line: 26, baseType: !85, size: 64, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !438, file: !439, line: 27, baseType: !85, size: 64, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !438, file: !439, line: 28, baseType: !85, size: 64, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !438, file: !439, line: 29, baseType: !85, size: 64, offset: 832)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !418, file: !417, line: 44, baseType: !150, size: 32, offset: 832)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !418, file: !417, line: 50, baseType: !457, size: 16, offset: 864)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !118, line: 19, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !120, line: 24, baseType: !133)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !418, file: !417, line: 51, baseType: !460, size: 16, offset: 880)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !118, line: 18, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !120, line: 23, baseType: !462)
!462 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !308, line: 495, baseType: !83, size: 64, offset: 6528)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !328, file: !308, line: 497, baseType: !465, size: 64, offset: 6592)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !308, line: 381, size: 384, elements: !467)
!467 = !{!468, !469, !1355}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !466, file: !308, line: 382, baseType: !150, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !466, file: !308, line: 383, baseType: !470, size: 128, offset: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !308, line: 376, size: 128, elements: !471)
!471 = !{!472, !1353}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !470, file: !308, line: 377, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !475, line: 640, size: 48640, elements: !476)
!475 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!476 = !{!477, !483, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !498, !516, !527, !622, !623, !624, !635, !636, !638, !639, !640, !641, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !719, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !775, !777, !778, !779, !781, !783, !784, !785, !786, !787, !793, !794, !795, !796, !797, !798, !799, !811, !816, !821, !822, !823, !826, !830, !833, !836, !839, !842, !846, !849, !852, !858, !859, !860, !866, !867, !868, !869, !870, !879, !880, !881, !882, !883, !888, !889, !890, !893, !894, !897, !900, !903, !906, !909, !912, !913, !993, !996, !999, !1000, !1003, !1004, !1005, !1011, !1012, !1013, !1026, !1027, !1028, !1038, !1043, !1046, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !474, file: !475, line: 646, baseType: !478, size: 128)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !479, line: 56, size: 128, elements: !480)
!479 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !479, line: 57, baseType: !83, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !478, file: !479, line: 58, baseType: !117, size: 32, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !474, file: !475, line: 649, baseType: !484, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !474, file: !475, line: 657, baseType: !84, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !474, file: !475, line: 658, baseType: !145, size: 32, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !475, line: 660, baseType: !7, size: 32, offset: 288)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !474, file: !475, line: 661, baseType: !7, size: 32, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !474, file: !475, line: 684, baseType: !102, size: 32, offset: 352)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !474, file: !475, line: 686, baseType: !102, size: 32, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !474, file: !475, line: 687, baseType: !102, size: 32, offset: 416)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !474, file: !475, line: 688, baseType: !102, size: 32, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !474, file: !475, line: 689, baseType: !7, size: 32, offset: 480)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !474, file: !475, line: 691, baseType: !495, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !475, line: 691, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !474, file: !475, line: 692, baseType: !499, size: 832, offset: 576)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !475, line: 451, size: 832, elements: !500)
!500 = !{!501, !506, !507, !508, !509, !510, !511, !512, !513, !514}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !499, file: !475, line: 453, baseType: !502, size: 128)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !475, line: 325, size: 128, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !502, file: !475, line: 326, baseType: !83, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !502, file: !475, line: 327, baseType: !117, size: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !499, file: !475, line: 454, baseType: !315, size: 192, align: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !499, file: !475, line: 455, baseType: !135, size: 128, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !499, file: !475, line: 456, baseType: !7, size: 32, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !499, file: !475, line: 458, baseType: !336, size: 64, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !499, file: !475, line: 459, baseType: !336, size: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !499, file: !475, line: 460, baseType: !336, size: 64, offset: 640)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !499, file: !475, line: 461, baseType: !336, size: 64, offset: 704)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !499, file: !475, line: 463, baseType: !336, size: 64, offset: 768)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !499, file: !475, line: 465, baseType: !515, offset: 832)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !475, line: 415, elements: !172)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !474, file: !475, line: 693, baseType: !517, size: 384, offset: 1408)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !475, line: 489, size: 384, elements: !518)
!518 = !{!519, !520, !521, !522, !523, !524, !525}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !517, file: !475, line: 490, baseType: !135, size: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !517, file: !475, line: 491, baseType: !83, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !517, file: !475, line: 492, baseType: !83, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !517, file: !475, line: 493, baseType: !7, size: 32, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !517, file: !475, line: 494, baseType: !133, size: 16, offset: 288)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !517, file: !475, line: 495, baseType: !133, size: 16, offset: 304)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !517, file: !475, line: 497, baseType: !526, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !474, file: !475, line: 697, baseType: !528, size: 1792, offset: 1792)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !475, line: 507, size: 1792, elements: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !619, !620}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !528, file: !475, line: 508, baseType: !315, size: 192, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !528, file: !475, line: 515, baseType: !336, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !528, file: !475, line: 516, baseType: !336, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !528, file: !475, line: 517, baseType: !336, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !528, file: !475, line: 518, baseType: !336, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !528, file: !475, line: 519, baseType: !336, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !528, file: !475, line: 526, baseType: !366, size: 64, offset: 512)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !528, file: !475, line: 527, baseType: !336, size: 64, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !475, line: 528, baseType: !7, size: 32, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !528, file: !475, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !528, file: !475, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !528, file: !475, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !528, file: !475, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !528, file: !475, line: 563, baseType: !544, size: 512, offset: 704)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !545)
!545 = !{!546, !554, !555, !560, !612, !616, !617, !618}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !544, file: !6, line: 119, baseType: !547, size: 256)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !548, line: 9, size: 256, elements: !549)
!548 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !547, file: !548, line: 10, baseType: !315, size: 192, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !547, file: !548, line: 11, baseType: !552, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !553, line: 29, baseType: !366)
!553 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !544, file: !6, line: 120, baseType: !552, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !544, file: !6, line: 121, baseType: !556, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!5, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !544, file: !6, line: 122, baseType: !561, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !563)
!563 = !{!564, !584, !585, !588, !598, !599, !607, !611}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !562, file: !6, line: 160, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !566, file: !6, line: 215, baseType: !164)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !566, file: !6, line: 216, baseType: !7, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !566, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !566, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !566, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !566, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !566, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !566, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !566, file: !6, line: 233, baseType: !552, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !566, file: !6, line: 234, baseType: !559, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !566, file: !6, line: 235, baseType: !552, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !566, file: !6, line: 236, baseType: !559, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !566, file: !6, line: 237, baseType: !581, size: 4096, offset: 512)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 4096, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 8)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !562, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !562, file: !6, line: 162, baseType: !586, size: 32, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !82, line: 27, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !127, line: 96, baseType: !102)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !562, file: !6, line: 163, baseType: !589, size: 32, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !590, line: 276, baseType: !591)
!590 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !590, line: 276, size: 32, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !591, file: !590, line: 276, baseType: !594, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !590, line: 70, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !590, line: 65, size: 32, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !595, file: !590, line: 66, baseType: !7, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !562, file: !6, line: 164, baseType: !559, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !562, file: !6, line: 165, baseType: !600, size: 128, offset: 256)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !548, line: 14, size: 128, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !600, file: !548, line: 15, baseType: !603, size: 128)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !316, line: 125, size: 128, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !603, file: !316, line: 126, baseType: !332, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !603, file: !316, line: 127, baseType: !320, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !562, file: !6, line: 166, baseType: !608, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!552}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !562, file: !6, line: 167, baseType: !552, size: 64, offset: 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !544, file: !6, line: 123, baseType: !613, size: 8, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !118, line: 17, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !120, line: 21, baseType: !615)
!615 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !544, file: !6, line: 124, baseType: !613, size: 8, offset: 456)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !544, file: !6, line: 125, baseType: !613, size: 8, offset: 464)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !544, file: !6, line: 126, baseType: !613, size: 8, offset: 472)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !528, file: !475, line: 572, baseType: !544, size: 512, offset: 1216)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !528, file: !475, line: 580, baseType: !621, size: 64, offset: 1728)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !474, file: !475, line: 721, baseType: !7, size: 32, offset: 3584)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !474, file: !475, line: 722, baseType: !102, size: 32, offset: 3616)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !474, file: !475, line: 723, baseType: !625, size: 64, offset: 3648)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !628, line: 17, baseType: !629)
!628 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !628, line: 17, size: 64, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !629, file: !628, line: 17, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 64, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 1)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !474, file: !475, line: 724, baseType: !627, size: 64, offset: 3712)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !474, file: !475, line: 749, baseType: !637, offset: 3776)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !475, line: 290, elements: !172)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !474, file: !475, line: 751, baseType: !135, size: 128, offset: 3776)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !474, file: !475, line: 757, baseType: !324, size: 64, offset: 3904)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !474, file: !475, line: 758, baseType: !324, size: 64, offset: 3968)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !474, file: !475, line: 761, baseType: !642, size: 320, offset: 4032)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !406, line: 34, size: 320, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !642, file: !406, line: 35, baseType: !336, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !642, file: !406, line: 36, baseType: !646, size: 256, offset: 64)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 256, elements: !410)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !474, file: !475, line: 766, baseType: !102, size: 32, offset: 4352)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !474, file: !475, line: 767, baseType: !102, size: 32, offset: 4384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !474, file: !475, line: 768, baseType: !102, size: 32, offset: 4416)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !474, file: !475, line: 770, baseType: !102, size: 32, offset: 4448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !474, file: !475, line: 772, baseType: !83, size: 64, offset: 4480)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !474, file: !475, line: 775, baseType: !7, size: 32, offset: 4544)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !474, file: !475, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !474, file: !475, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !474, file: !475, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !474, file: !475, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !474, file: !475, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !474, file: !475, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !474, file: !475, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !474, file: !475, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !474, file: !475, line: 831, baseType: !83, size: 64, offset: 4672)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !474, file: !475, line: 833, baseType: !663, size: 384, offset: 4736)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !664)
!664 = !{!665, !670}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !663, file: !12, line: 26, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!85, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !12, line: 27, baseType: !671, size: 320, offset: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !12, line: 27, size: 320, elements: !672)
!672 = !{!673, !682, !709}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !671, file: !12, line: 36, baseType: !674, size: 320)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !671, file: !12, line: 29, size: 320, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !674, file: !12, line: 30, baseType: !116, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !674, file: !12, line: 31, baseType: !117, size: 32, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !12, line: 32, baseType: !117, size: 32, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !674, file: !12, line: 33, baseType: !117, size: 32, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !674, file: !12, line: 34, baseType: !336, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !674, file: !12, line: 35, baseType: !116, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !671, file: !12, line: 46, baseType: !683, size: 192)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !671, file: !12, line: 38, size: 192, elements: !684)
!684 = !{!685, !686, !687, !708}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !683, file: !12, line: 39, baseType: !586, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !683, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !12, line: 41, baseType: !688, size: 64, offset: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !12, line: 41, size: 64, elements: !689)
!689 = !{!690, !698}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !688, file: !12, line: 42, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !693, line: 7, size: 128, elements: !694)
!693 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!694 = !{!695, !697}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !692, file: !693, line: 8, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !127, line: 93, baseType: !300)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !692, file: !693, line: 9, baseType: !300, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !688, file: !12, line: 43, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !701, line: 7, size: 64, elements: !702)
!701 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!702 = !{!703, !707}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !700, file: !701, line: 8, baseType: !704, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !701, line: 5, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !118, line: 20, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !120, line: 26, baseType: !102)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !700, file: !701, line: 9, baseType: !705, size: 32, offset: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !683, file: !12, line: 45, baseType: !336, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !671, file: !12, line: 54, baseType: !710, size: 256)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !671, file: !12, line: 48, size: 256, elements: !711)
!711 = !{!712, !715, !716, !717, !718}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !710, file: !12, line: 49, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !710, file: !12, line: 50, baseType: !102, size: 32, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !710, file: !12, line: 51, baseType: !102, size: 32, offset: 96)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !710, file: !12, line: 52, baseType: !83, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !710, file: !12, line: 53, baseType: !83, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !474, file: !475, line: 835, baseType: !720, size: 32, offset: 5120)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !82, line: 22, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !127, line: 28, baseType: !102)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !474, file: !475, line: 836, baseType: !720, size: 32, offset: 5152)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !474, file: !475, line: 840, baseType: !83, size: 64, offset: 5184)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !474, file: !475, line: 849, baseType: !473, size: 64, offset: 5248)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !474, file: !475, line: 852, baseType: !473, size: 64, offset: 5312)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !474, file: !475, line: 857, baseType: !135, size: 128, offset: 5376)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !474, file: !475, line: 858, baseType: !135, size: 128, offset: 5504)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !474, file: !475, line: 859, baseType: !473, size: 64, offset: 5632)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !474, file: !475, line: 867, baseType: !135, size: 128, offset: 5696)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !474, file: !475, line: 868, baseType: !135, size: 128, offset: 5824)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !474, file: !475, line: 871, baseType: !732, size: 64, offset: 5952)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !734, line: 59, size: 768, elements: !735)
!734 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!735 = !{!736, !737, !738, !739, !750, !751, !758, !767}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !733, file: !734, line: 61, baseType: !145, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !733, file: !734, line: 62, baseType: !7, size: 32, offset: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !733, file: !734, line: 63, baseType: !191, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !733, file: !734, line: 65, baseType: !740, size: 256, offset: 64)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 256, elements: !410)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !82, line: 182, size: 64, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !741, file: !82, line: 183, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !82, line: 186, size: 128, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !745, file: !82, line: 187, baseType: !744, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !745, file: !82, line: 187, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !733, file: !734, line: 66, baseType: !741, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !733, file: !734, line: 68, baseType: !752, size: 128, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !753, line: 40, baseType: !754)
!753 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !753, line: 36, size: 128, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !754, file: !753, line: 37, baseType: !191)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !754, file: !753, line: 38, baseType: !135, size: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !733, file: !734, line: 69, baseType: !759, size: 128, align: 64, offset: 512)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !82, line: 216, size: 128, align: 64, elements: !760)
!760 = !{!761, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !759, file: !82, line: 217, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !759, file: !82, line: 218, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !762}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !733, file: !734, line: 70, baseType: !768, size: 128, offset: 640)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 128, elements: !633)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !734, line: 54, size: 128, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !769, file: !734, line: 55, baseType: !102, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !769, file: !734, line: 56, baseType: !773, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !734, line: 56, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !474, file: !475, line: 872, baseType: !776, size: 512, offset: 6016)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 512, elements: !410)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !474, file: !475, line: 873, baseType: !135, size: 128, offset: 6528)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !474, file: !475, line: 874, baseType: !135, size: 128, offset: 6656)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !474, file: !475, line: 876, baseType: !780, size: 64, offset: 6784)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !474, file: !475, line: 879, baseType: !782, size: 64, offset: 6848)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !474, file: !475, line: 882, baseType: !782, size: 64, offset: 6912)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !474, file: !475, line: 884, baseType: !336, size: 64, offset: 6976)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !474, file: !475, line: 885, baseType: !336, size: 64, offset: 7040)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !474, file: !475, line: 890, baseType: !336, size: 64, offset: 7104)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !474, file: !475, line: 891, baseType: !788, size: 128, offset: 7168)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !475, line: 242, size: 128, elements: !789)
!789 = !{!790, !791, !792}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !788, file: !475, line: 244, baseType: !336, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !788, file: !475, line: 245, baseType: !336, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !788, file: !475, line: 246, baseType: !164, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !474, file: !475, line: 900, baseType: !83, size: 64, offset: 7296)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !474, file: !475, line: 901, baseType: !83, size: 64, offset: 7360)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !474, file: !475, line: 904, baseType: !336, size: 64, offset: 7424)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !474, file: !475, line: 907, baseType: !336, size: 64, offset: 7488)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !474, file: !475, line: 910, baseType: !83, size: 64, offset: 7552)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !474, file: !475, line: 911, baseType: !83, size: 64, offset: 7616)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !474, file: !475, line: 914, baseType: !800, size: 640, offset: 7680)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !801, line: 123, size: 640, elements: !802)
!801 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!802 = !{!803, !809, !810}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !800, file: !801, line: 124, baseType: !804, size: 576)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 576, elements: !225)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !801, line: 108, size: 192, elements: !806)
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !805, file: !801, line: 109, baseType: !336, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !805, file: !801, line: 110, baseType: !600, size: 128, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !800, file: !801, line: 125, baseType: !7, size: 32, offset: 576)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !800, file: !801, line: 126, baseType: !7, size: 32, offset: 608)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !474, file: !475, line: 917, baseType: !812, size: 192, offset: 8320)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !801, line: 134, size: 192, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !812, file: !801, line: 135, baseType: !759, size: 128, align: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !812, file: !801, line: 136, baseType: !7, size: 32, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !474, file: !475, line: 923, baseType: !817, size: 64, offset: 8512)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !820, line: 11, flags: DIFlagFwdDecl)
!820 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!821 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !474, file: !475, line: 926, baseType: !817, size: 64, offset: 8576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !474, file: !475, line: 929, baseType: !817, size: 64, offset: 8640)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !474, file: !475, line: 933, baseType: !824, size: 64, offset: 8704)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !475, line: 933, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !474, file: !475, line: 943, baseType: !827, size: 128, offset: 8768)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 16)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !474, file: !475, line: 945, baseType: !831, size: 64, offset: 8896)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !475, line: 49, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !474, file: !475, line: 956, baseType: !834, size: 64, offset: 8960)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !475, line: 45, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !474, file: !475, line: 959, baseType: !837, size: 64, offset: 9024)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !475, line: 959, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !474, file: !475, line: 962, baseType: !840, size: 64, offset: 9088)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !475, line: 66, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !474, file: !475, line: 966, baseType: !843, size: 64, offset: 9152)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !845, line: 35, flags: DIFlagFwdDecl)
!845 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!846 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !474, file: !475, line: 969, baseType: !847, size: 64, offset: 9216)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !801, line: 223, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !474, file: !475, line: 970, baseType: !850, size: 64, offset: 9280)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !475, line: 62, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !474, file: !475, line: 971, baseType: !853, size: 64, offset: 9344)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !854, line: 25, baseType: !855)
!854 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !854, line: 23, size: 64, elements: !856)
!856 = !{!857}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !855, file: !854, line: 24, baseType: !632, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !474, file: !475, line: 972, baseType: !853, size: 64, offset: 9408)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !474, file: !475, line: 974, baseType: !853, size: 64, offset: 9472)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !474, file: !475, line: 975, baseType: !861, size: 192, offset: 9536)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !862, line: 30, size: 192, elements: !863)
!862 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !861, file: !862, line: 31, baseType: !135, size: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !861, file: !862, line: 32, baseType: !853, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !474, file: !475, line: 976, baseType: !83, size: 64, offset: 9728)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !474, file: !475, line: 977, baseType: !125, size: 64, offset: 9792)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !474, file: !475, line: 978, baseType: !7, size: 32, offset: 9856)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !474, file: !475, line: 980, baseType: !762, size: 64, offset: 9920)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !474, file: !475, line: 989, baseType: !871, size: 128, offset: 9984)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !872, line: 35, size: 128, elements: !873)
!872 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !871, file: !872, line: 36, baseType: !102, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !871, file: !872, line: 37, baseType: !150, size: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !871, file: !872, line: 38, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !872, line: 23, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !474, file: !475, line: 992, baseType: !336, size: 64, offset: 10112)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !474, file: !475, line: 993, baseType: !336, size: 64, offset: 10176)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !474, file: !475, line: 996, baseType: !191, offset: 10240)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !474, file: !475, line: 999, baseType: !164, offset: 10240)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !474, file: !475, line: 1001, baseType: !884, size: 64, offset: 10240)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !475, line: 636, size: 64, elements: !885)
!885 = !{!886}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !884, file: !475, line: 637, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !474, file: !475, line: 1005, baseType: !603, size: 128, offset: 10304)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !474, file: !475, line: 1007, baseType: !473, size: 64, offset: 10432)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !474, file: !475, line: 1009, baseType: !891, size: 64, offset: 10496)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !475, line: 1009, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !474, file: !475, line: 1043, baseType: !84, size: 64, offset: 10560)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !474, file: !475, line: 1046, baseType: !895, size: 64, offset: 10624)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !475, line: 41, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !474, file: !475, line: 1050, baseType: !898, size: 64, offset: 10688)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !475, line: 42, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !474, file: !475, line: 1054, baseType: !901, size: 64, offset: 10752)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !475, line: 55, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !474, file: !475, line: 1056, baseType: !904, size: 64, offset: 10816)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !475, line: 40, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !474, file: !475, line: 1058, baseType: !907, size: 64, offset: 10880)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !475, line: 47, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !474, file: !475, line: 1061, baseType: !910, size: 64, offset: 10944)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !475, line: 43, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !474, file: !475, line: 1064, baseType: !83, size: 64, offset: 11008)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !474, file: !475, line: 1065, baseType: !914, size: 64, offset: 11072)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !862, line: 14, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !862, line: 12, size: 384, elements: !917)
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !916, file: !862, line: 13, baseType: !919, size: 384)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !916, file: !862, line: 13, size: 384, elements: !920)
!920 = !{!921, !922, !923, !924}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !919, file: !862, line: 13, baseType: !102, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !919, file: !862, line: 13, baseType: !102, size: 32, offset: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !919, file: !862, line: 13, baseType: !102, size: 32, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !919, file: !862, line: 13, baseType: !925, size: 256, offset: 128)
!925 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !926, line: 32, size: 256, elements: !927)
!926 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!927 = !{!928, !934, !947, !953, !962, !982, !987}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !925, file: !926, line: 37, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !926, line: 34, size: 64, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !929, file: !926, line: 35, baseType: !721, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !929, file: !926, line: 36, baseType: !933, size: 32, offset: 32)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !127, line: 49, baseType: !7)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !925, file: !926, line: 45, baseType: !935, size: 192)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !926, line: 40, size: 192, elements: !936)
!936 = !{!937, !939, !940, !946}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !935, file: !926, line: 41, baseType: !938, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !127, line: 95, baseType: !102)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !935, file: !926, line: 42, baseType: !102, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !935, file: !926, line: 43, baseType: !941, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !926, line: 11, baseType: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !926, line: 8, size: 64, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !942, file: !926, line: 9, baseType: !102, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !942, file: !926, line: 10, baseType: !84, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !935, file: !926, line: 44, baseType: !102, size: 32, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !925, file: !926, line: 52, baseType: !948, size: 128)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !926, line: 48, size: 128, elements: !949)
!949 = !{!950, !951, !952}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !948, file: !926, line: 49, baseType: !721, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !948, file: !926, line: 50, baseType: !933, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !948, file: !926, line: 51, baseType: !941, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !925, file: !926, line: 61, baseType: !954, size: 256)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !926, line: 55, size: 256, elements: !955)
!955 = !{!956, !957, !958, !959, !961}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !954, file: !926, line: 56, baseType: !721, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !954, file: !926, line: 57, baseType: !933, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !954, file: !926, line: 58, baseType: !102, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !954, file: !926, line: 59, baseType: !960, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !127, line: 94, baseType: !257)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !954, file: !926, line: 60, baseType: !960, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !925, file: !926, line: 95, baseType: !963, size: 256)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !926, line: 64, size: 256, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !963, file: !926, line: 65, baseType: !84, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !926, line: 77, baseType: !967, size: 192, offset: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !926, line: 77, size: 192, elements: !968)
!968 = !{!969, !970, !977}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !967, file: !926, line: 82, baseType: !462, size: 16)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !967, file: !926, line: 88, baseType: !971, size: 192)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !967, file: !926, line: 84, size: 192, elements: !972)
!972 = !{!973, !975, !976}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !971, file: !926, line: 85, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !582)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !971, file: !926, line: 86, baseType: !84, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !971, file: !926, line: 87, baseType: !84, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !967, file: !926, line: 93, baseType: !978, size: 96)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !967, file: !926, line: 90, size: 96, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !978, file: !926, line: 91, baseType: !974, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !978, file: !926, line: 92, baseType: !119, size: 32, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !925, file: !926, line: 101, baseType: !983, size: 128)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !926, line: 98, size: 128, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !983, file: !926, line: 99, baseType: !85, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !983, file: !926, line: 100, baseType: !102, size: 32, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !925, file: !926, line: 108, baseType: !988, size: 128)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !926, line: 104, size: 128, elements: !989)
!989 = !{!990, !991, !992}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !988, file: !926, line: 105, baseType: !84, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !988, file: !926, line: 106, baseType: !102, size: 32, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !988, file: !926, line: 107, baseType: !7, size: 32, offset: 96)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !474, file: !475, line: 1067, baseType: !994, offset: 11136)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !995, line: 12, elements: !172)
!995 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!996 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !474, file: !475, line: 1099, baseType: !997, size: 64, offset: 11136)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !475, line: 56, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !474, file: !475, line: 1103, baseType: !135, size: 128, offset: 11200)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !474, file: !475, line: 1104, baseType: !1001, size: 64, offset: 11328)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !475, line: 46, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !474, file: !475, line: 1105, baseType: !428, size: 192, offset: 11392)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !474, file: !475, line: 1106, baseType: !7, size: 32, offset: 11584)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !474, file: !475, line: 1109, baseType: !1006, size: 128, offset: 11648)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1007, size: 128, elements: !1009)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !475, line: 51, flags: DIFlagFwdDecl)
!1009 = !{!1010}
!1010 = !DISubrange(count: 2)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !474, file: !475, line: 1110, baseType: !428, size: 192, offset: 11776)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !474, file: !475, line: 1111, baseType: !135, size: 128, offset: 11968)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !474, file: !475, line: 1173, baseType: !1014, size: 64, offset: 12096)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1016, line: 62, size: 256, align: 256, elements: !1017)
!1016 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1017 = !{!1018, !1019, !1020, !1025}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1015, file: !1016, line: 75, baseType: !119, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1015, file: !1016, line: 90, baseType: !119, size: 32, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1015, file: !1016, line: 124, baseType: !1021, size: 64, offset: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !1016, line: 109, size: 64, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1021, file: !1016, line: 110, baseType: !337, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1021, file: !1016, line: 112, baseType: !337, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1015, file: !1016, line: 144, baseType: !119, size: 32, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !474, file: !475, line: 1174, baseType: !117, size: 32, offset: 12160)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !474, file: !475, line: 1179, baseType: !83, size: 64, offset: 12224)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !474, file: !475, line: 1182, baseType: !1029, size: 128, offset: 12288)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !406, line: 76, size: 128, elements: !1030)
!1030 = !{!1031, !1036, !1037}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1029, file: !406, line: 85, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1033, line: 7, size: 64, elements: !1034)
!1033 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1032, file: !1033, line: 12, baseType: !629, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1029, file: !406, line: 88, baseType: !129, size: 8, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1029, file: !406, line: 95, baseType: !129, size: 8, offset: 72)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !475, line: 1184, baseType: !1039, size: 128, offset: 12416)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !475, line: 1184, size: 128, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1039, file: !475, line: 1185, baseType: !145, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1039, file: !475, line: 1186, baseType: !759, size: 128, align: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !474, file: !475, line: 1190, baseType: !1044, size: 64, offset: 12544)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !475, line: 53, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !474, file: !475, line: 1192, baseType: !1047, size: 128, offset: 12608)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !406, line: 64, size: 128, elements: !1048)
!1048 = !{!1049, !1142, !1143}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1047, file: !406, line: 65, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !308, line: 68, size: 512, align: 128, elements: !1052)
!1052 = !{!1053, !1054, !1134, !1141}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1051, file: !308, line: 69, baseType: !83, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !308, line: 77, baseType: !1055, size: 320, offset: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !308, line: 77, size: 320, elements: !1056)
!1056 = !{!1057, !1066, !1071, !1099, !1107, !1113, !1126, !1133}
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1055, file: !308, line: 78, baseType: !1058, size: 320)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1055, file: !308, line: 78, size: 320, elements: !1059)
!1059 = !{!1060, !1061, !1064, !1065}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1058, file: !308, line: 84, baseType: !135, size: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1058, file: !308, line: 86, baseType: !1062, size: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !308, line: 26, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1058, file: !308, line: 87, baseType: !83, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1058, file: !308, line: 94, baseType: !83, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1055, file: !308, line: 96, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1055, file: !308, line: 96, size: 64, elements: !1068)
!1068 = !{!1069}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1067, file: !308, line: 101, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !82, line: 143, baseType: !336)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1055, file: !308, line: 103, baseType: !1072, size: 320)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1055, file: !308, line: 103, size: 320, elements: !1073)
!1073 = !{!1074, !1084, !1087, !1088}
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !308, line: 104, baseType: !1075, size: 128)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1072, file: !308, line: 104, size: 128, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1075, file: !308, line: 105, baseType: !135, size: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !308, line: 106, baseType: !1079, size: 128)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1075, file: !308, line: 106, size: 128, elements: !1080)
!1080 = !{!1081, !1082, !1083}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1079, file: !308, line: 107, baseType: !1050, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1079, file: !308, line: 109, baseType: !102, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1079, file: !308, line: 110, baseType: !102, size: 32, offset: 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1072, file: !308, line: 117, baseType: !1085, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !308, line: 117, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1072, file: !308, line: 119, baseType: !84, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !308, line: 120, baseType: !1089, size: 64, offset: 256)
!1089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1072, file: !308, line: 120, size: 64, elements: !1090)
!1090 = !{!1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1089, file: !308, line: 121, baseType: !84, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1089, file: !308, line: 122, baseType: !83, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !308, line: 123, baseType: !1094, size: 32)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1089, file: !308, line: 123, size: 32, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1094, file: !308, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1094, file: !308, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1094, file: !308, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1055, file: !308, line: 130, baseType: !1100, size: 192)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1055, file: !308, line: 130, size: 192, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1106}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1100, file: !308, line: 131, baseType: !83, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1100, file: !308, line: 134, baseType: !615, size: 8, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1100, file: !308, line: 135, baseType: !615, size: 8, offset: 72)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1100, file: !308, line: 136, baseType: !150, size: 32, offset: 96)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1100, file: !308, line: 137, baseType: !7, size: 32, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1055, file: !308, line: 139, baseType: !1108, size: 256)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1055, file: !308, line: 139, size: 256, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1108, file: !308, line: 140, baseType: !83, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1108, file: !308, line: 141, baseType: !150, size: 32, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1108, file: !308, line: 143, baseType: !135, size: 128, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1055, file: !308, line: 145, baseType: !1114, size: 256)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1055, file: !308, line: 145, size: 256, elements: !1115)
!1115 = !{!1116, !1117, !1119, !1120, !1125}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1114, file: !308, line: 146, baseType: !83, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1114, file: !308, line: 147, baseType: !1118, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !297, line: 509, baseType: !1050)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1114, file: !308, line: 148, baseType: !83, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !308, line: 149, baseType: !1121, size: 64, offset: 192)
!1121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1114, file: !308, line: 149, size: 64, elements: !1122)
!1122 = !{!1123, !1124}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1121, file: !308, line: 150, baseType: !324, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1121, file: !308, line: 151, baseType: !150, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1114, file: !308, line: 156, baseType: !191, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1055, file: !308, line: 159, baseType: !1127, size: 128)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1055, file: !308, line: 159, size: 128, elements: !1128)
!1128 = !{!1129, !1132}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1127, file: !308, line: 161, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !308, line: 161, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1127, file: !308, line: 162, baseType: !84, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1055, file: !308, line: 176, baseType: !759, size: 128, align: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !308, line: 179, baseType: !1135, size: 32, offset: 384)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !308, line: 179, size: 32, elements: !1136)
!1136 = !{!1137, !1138, !1139, !1140}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1135, file: !308, line: 184, baseType: !150, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1135, file: !308, line: 192, baseType: !7, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1135, file: !308, line: 194, baseType: !7, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1135, file: !308, line: 195, baseType: !102, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1051, file: !308, line: 199, baseType: !150, size: 32, offset: 416)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1047, file: !406, line: 67, baseType: !119, size: 32, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1047, file: !406, line: 68, baseType: !119, size: 32, offset: 96)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !474, file: !475, line: 1206, baseType: !102, size: 32, offset: 12736)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !474, file: !475, line: 1207, baseType: !102, size: 32, offset: 12768)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !474, file: !475, line: 1209, baseType: !83, size: 64, offset: 12800)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !474, file: !475, line: 1219, baseType: !336, size: 64, offset: 12864)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !474, file: !475, line: 1220, baseType: !336, size: 64, offset: 12928)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !474, file: !475, line: 1317, baseType: !102, size: 32, offset: 12992)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !474, file: !475, line: 1319, baseType: !473, size: 64, offset: 13056)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !474, file: !475, line: 1322, baseType: !1152, size: 64, offset: 13120)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1154, line: 56, size: 512, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1162, !1163, !1165}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1153, file: !1154, line: 57, baseType: !1152, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1153, file: !1154, line: 58, baseType: !84, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1153, file: !1154, line: 59, baseType: !83, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1153, file: !1154, line: 60, baseType: !83, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1153, file: !1154, line: 61, baseType: !1161, size: 64, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1153, file: !1154, line: 62, baseType: !7, size: 32, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1153, file: !1154, line: 63, baseType: !1164, size: 64, offset: 384)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !82, line: 153, baseType: !336)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1153, file: !1154, line: 64, baseType: !1166, size: 64, offset: 448)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !474, file: !475, line: 1326, baseType: !145, size: 32, offset: 13184)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !474, file: !475, line: 1342, baseType: !84, size: 64, offset: 13248)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !474, file: !475, line: 1343, baseType: !337, size: 64, offset: 13312)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !474, file: !475, line: 1344, baseType: !336, size: 64, offset: 13376)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !474, file: !475, line: 1345, baseType: !337, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !474, file: !475, line: 1346, baseType: !337, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !474, file: !475, line: 1347, baseType: !337, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !474, file: !475, line: 1348, baseType: !759, size: 128, align: 64, offset: 13504)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !474, file: !475, line: 1358, baseType: !1177, size: 34816, offset: 13824)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1178, line: 485, size: 34816, elements: !1179)
!1178 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1179 = !{!1180, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1209, !1210, !1211, !1212, !1213, !1214, !1217, !1218, !1219}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1177, file: !1178, line: 487, baseType: !1181, size: 192)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1182, size: 192, elements: !225)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1183, line: 16, size: 64, elements: !1184)
!1183 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1182, file: !1183, line: 17, baseType: !457, size: 16)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1182, file: !1183, line: 18, baseType: !457, size: 16, offset: 16)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1182, file: !1183, line: 19, baseType: !457, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1182, file: !1183, line: 19, baseType: !457, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1182, file: !1183, line: 19, baseType: !457, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1182, file: !1183, line: 19, baseType: !457, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1182, file: !1183, line: 19, baseType: !457, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1182, file: !1183, line: 20, baseType: !457, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1182, file: !1183, line: 20, baseType: !457, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1182, file: !1183, line: 20, baseType: !457, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1182, file: !1183, line: 20, baseType: !457, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1182, file: !1183, line: 20, baseType: !457, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1182, file: !1183, line: 20, baseType: !457, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1177, file: !1178, line: 491, baseType: !83, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1177, file: !1178, line: 495, baseType: !133, size: 16, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1177, file: !1178, line: 496, baseType: !133, size: 16, offset: 272)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1177, file: !1178, line: 497, baseType: !133, size: 16, offset: 288)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1177, file: !1178, line: 498, baseType: !133, size: 16, offset: 304)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1177, file: !1178, line: 502, baseType: !83, size: 64, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1177, file: !1178, line: 503, baseType: !83, size: 64, offset: 384)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1177, file: !1178, line: 514, baseType: !1206, size: 256, offset: 448)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1207, size: 256, elements: !410)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1178, line: 483, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1177, file: !1178, line: 516, baseType: !83, size: 64, offset: 704)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1177, file: !1178, line: 518, baseType: !83, size: 64, offset: 768)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1177, file: !1178, line: 520, baseType: !83, size: 64, offset: 832)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1177, file: !1178, line: 521, baseType: !83, size: 64, offset: 896)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1177, file: !1178, line: 522, baseType: !83, size: 64, offset: 960)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1177, file: !1178, line: 528, baseType: !1215, size: 64, offset: 1024)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1178, line: 10, flags: DIFlagFwdDecl)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1177, file: !1178, line: 535, baseType: !83, size: 64, offset: 1088)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1177, file: !1178, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1177, file: !1178, line: 540, baseType: !1220, size: 33280, offset: 1536)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1221, line: 317, size: 33280, elements: !1222)
!1221 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1222 = !{!1223, !1224, !1225}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1220, file: !1221, line: 330, baseType: !7, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1220, file: !1221, line: 337, baseType: !83, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1220, file: !1221, line: 348, baseType: !1226, size: 32768, offset: 512)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1221, line: 304, size: 32768, elements: !1227)
!1227 = !{!1228, !1243, !1282, !1332, !1349}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1226, file: !1221, line: 305, baseType: !1229, size: 896)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1221, line: 12, size: 896, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1242}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1229, file: !1221, line: 13, baseType: !117, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1229, file: !1221, line: 14, baseType: !117, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1229, file: !1221, line: 15, baseType: !117, size: 32, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1229, file: !1221, line: 16, baseType: !117, size: 32, offset: 96)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1229, file: !1221, line: 17, baseType: !117, size: 32, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1229, file: !1221, line: 18, baseType: !117, size: 32, offset: 160)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1229, file: !1221, line: 19, baseType: !117, size: 32, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1229, file: !1221, line: 22, baseType: !1239, size: 640, offset: 224)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 640, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 20)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1229, file: !1221, line: 25, baseType: !117, size: 32, offset: 864)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1226, file: !1221, line: 306, baseType: !1244, size: 4096, align: 128)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1221, line: 34, size: 4096, align: 128, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1265, !1266, !1267, !1271, !1273, !1277}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1244, file: !1221, line: 35, baseType: !457, size: 16)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1244, file: !1221, line: 36, baseType: !457, size: 16, offset: 16)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1244, file: !1221, line: 37, baseType: !457, size: 16, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1244, file: !1221, line: 38, baseType: !457, size: 16, offset: 48)
!1250 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !1221, line: 39, baseType: !1251, size: 128, offset: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !1221, line: 39, size: 128, elements: !1252)
!1252 = !{!1253, !1258}
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !1221, line: 40, baseType: !1254, size: 128)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1251, file: !1221, line: 40, size: 128, elements: !1255)
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1254, file: !1221, line: 41, baseType: !336, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1254, file: !1221, line: 42, baseType: !336, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !1221, line: 44, baseType: !1259, size: 128)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1251, file: !1221, line: 44, size: 128, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1259, file: !1221, line: 45, baseType: !117, size: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1259, file: !1221, line: 46, baseType: !117, size: 32, offset: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1259, file: !1221, line: 47, baseType: !117, size: 32, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1259, file: !1221, line: 48, baseType: !117, size: 32, offset: 96)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1244, file: !1221, line: 51, baseType: !117, size: 32, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1244, file: !1221, line: 52, baseType: !117, size: 32, offset: 224)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1244, file: !1221, line: 55, baseType: !1268, size: 1024, offset: 256)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1024, elements: !1269)
!1269 = !{!1270}
!1270 = !DISubrange(count: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1244, file: !1221, line: 58, baseType: !1272, size: 2048, offset: 1280)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 2048, elements: !229)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1244, file: !1221, line: 60, baseType: !1274, size: 384, offset: 3328)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 384, elements: !1275)
!1275 = !{!1276}
!1276 = !DISubrange(count: 12)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !1221, line: 62, baseType: !1278, size: 384, offset: 3712)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !1221, line: 62, size: 384, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1278, file: !1221, line: 63, baseType: !1274, size: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1278, file: !1221, line: 64, baseType: !1274, size: 384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1226, file: !1221, line: 307, baseType: !1283, size: 1088)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1221, line: 79, size: 1088, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1331}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1283, file: !1221, line: 80, baseType: !117, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1283, file: !1221, line: 81, baseType: !117, size: 32, offset: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1283, file: !1221, line: 82, baseType: !117, size: 32, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1283, file: !1221, line: 83, baseType: !117, size: 32, offset: 96)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1283, file: !1221, line: 84, baseType: !117, size: 32, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1283, file: !1221, line: 85, baseType: !117, size: 32, offset: 160)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1283, file: !1221, line: 86, baseType: !117, size: 32, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1283, file: !1221, line: 88, baseType: !1239, size: 640, offset: 224)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1283, file: !1221, line: 89, baseType: !613, size: 8, offset: 864)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1283, file: !1221, line: 90, baseType: !613, size: 8, offset: 872)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1283, file: !1221, line: 91, baseType: !613, size: 8, offset: 880)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1283, file: !1221, line: 92, baseType: !613, size: 8, offset: 888)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1283, file: !1221, line: 93, baseType: !613, size: 8, offset: 896)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1283, file: !1221, line: 94, baseType: !613, size: 8, offset: 904)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1283, file: !1221, line: 95, baseType: !1300, size: 64, offset: 960)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1302, line: 11, size: 128, elements: !1303)
!1302 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1301, file: !1302, line: 12, baseType: !85, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1301, file: !1302, line: 13, baseType: !1306, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1308, line: 56, size: 1344, elements: !1309)
!1308 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1307, file: !1308, line: 61, baseType: !83, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1307, file: !1308, line: 62, baseType: !83, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1307, file: !1308, line: 63, baseType: !83, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1307, file: !1308, line: 64, baseType: !83, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1307, file: !1308, line: 65, baseType: !83, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1307, file: !1308, line: 66, baseType: !83, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1307, file: !1308, line: 68, baseType: !83, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1307, file: !1308, line: 69, baseType: !83, size: 64, offset: 448)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1307, file: !1308, line: 70, baseType: !83, size: 64, offset: 512)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1307, file: !1308, line: 71, baseType: !83, size: 64, offset: 576)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1307, file: !1308, line: 72, baseType: !83, size: 64, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1307, file: !1308, line: 73, baseType: !83, size: 64, offset: 704)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1307, file: !1308, line: 74, baseType: !83, size: 64, offset: 768)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1307, file: !1308, line: 75, baseType: !83, size: 64, offset: 832)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1307, file: !1308, line: 76, baseType: !83, size: 64, offset: 896)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1307, file: !1308, line: 81, baseType: !83, size: 64, offset: 960)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1307, file: !1308, line: 83, baseType: !83, size: 64, offset: 1024)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1307, file: !1308, line: 84, baseType: !83, size: 64, offset: 1088)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1307, file: !1308, line: 85, baseType: !83, size: 64, offset: 1152)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1307, file: !1308, line: 86, baseType: !83, size: 64, offset: 1216)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1307, file: !1308, line: 87, baseType: !83, size: 64, offset: 1280)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1283, file: !1221, line: 96, baseType: !117, size: 32, offset: 1024)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1226, file: !1221, line: 308, baseType: !1333, size: 4608, align: 512)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1221, line: 289, size: 4608, align: 512, elements: !1334)
!1334 = !{!1335, !1336, !1345}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1333, file: !1221, line: 290, baseType: !1244, size: 4096, align: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1333, file: !1221, line: 291, baseType: !1337, size: 512, offset: 4096)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1221, line: 268, size: 512, elements: !1338)
!1338 = !{!1339, !1340, !1341}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1337, file: !1221, line: 269, baseType: !336, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1337, file: !1221, line: 270, baseType: !336, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1337, file: !1221, line: 271, baseType: !1342, size: 384, offset: 128)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 384, elements: !1343)
!1343 = !{!1344}
!1344 = !DISubrange(count: 6)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1333, file: !1221, line: 292, baseType: !1346, offset: 4608)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, elements: !1347)
!1347 = !{!1348}
!1348 = !DISubrange(count: 0)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1226, file: !1221, line: 309, baseType: !1350, size: 32768)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 32768, elements: !1351)
!1351 = !{!1352}
!1352 = !DISubrange(count: 4096)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !470, file: !308, line: 378, baseType: !1354, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !466, file: !308, line: 384, baseType: !155, size: 192, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !328, file: !308, line: 500, baseType: !191, offset: 6656)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !328, file: !308, line: 501, baseType: !1358, size: 64, offset: 6656)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !308, line: 387, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !328, file: !308, line: 516, baseType: !1361, size: 64, offset: 6720)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1363, line: 18, flags: DIFlagFwdDecl)
!1363 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !328, file: !308, line: 519, baseType: !295, size: 64, offset: 6784)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !328, file: !308, line: 521, baseType: !1366, size: 64, offset: 6848)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !308, line: 521, flags: DIFlagFwdDecl)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !328, file: !308, line: 545, baseType: !150, size: 32, offset: 6912)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !328, file: !308, line: 548, baseType: !129, size: 8, offset: 6944)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !328, file: !308, line: 550, baseType: !1371, offset: 6952)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1372, line: 142, elements: !172)
!1372 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !328, file: !308, line: 554, baseType: !1374, size: 256, offset: 6976)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1375, line: 102, size: 256, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1376 = !{!1377, !1378, !1379}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1374, file: !1375, line: 103, baseType: !360, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1374, file: !1375, line: 104, baseType: !135, size: 128, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1374, file: !1375, line: 105, baseType: !1380, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1375, line: 21, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !1384}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !328, file: !308, line: 557, baseType: !117, size: 32, offset: 7232)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !325, file: !308, line: 565, baseType: !1387, offset: 7296)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !1388)
!1388 = !{!1389}
!1389 = !DISubrange(count: -1)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !307, file: !308, line: 333, baseType: !1391, size: 64, offset: 576)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !297, line: 284, baseType: !1392)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !297, line: 284, size: 64, elements: !1393)
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1392, file: !297, line: 284, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !354, line: 19, baseType: !83)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !307, file: !308, line: 334, baseType: !83, size: 64, offset: 640)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !307, file: !308, line: 343, baseType: !1398, size: 256, offset: 704)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !308, line: 340, size: 256, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1398, file: !308, line: 341, baseType: !315, size: 192, align: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1398, file: !308, line: 342, baseType: !83, size: 64, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !307, file: !308, line: 351, baseType: !135, size: 128, offset: 960)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !307, file: !308, line: 353, baseType: !1404, size: 64, offset: 1088)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !308, line: 353, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !307, file: !308, line: 356, baseType: !1407, size: 64, offset: 1152)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1409)
!1409 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !308, line: 356, flags: DIFlagFwdDecl)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !307, file: !308, line: 359, baseType: !83, size: 64, offset: 1216)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !307, file: !308, line: 361, baseType: !295, size: 64, offset: 1280)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !307, file: !308, line: 362, baseType: !84, size: 64, offset: 1344)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !307, file: !308, line: 365, baseType: !360, size: 64, offset: 1408)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !307, file: !308, line: 373, baseType: !1415, offset: 1472)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !308, line: 296, elements: !172)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !274, file: !249, line: 90, baseType: !269, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !274, file: !249, line: 91, baseType: !1418, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !239, file: !179, line: 143, baseType: !1420, size: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!1423, !184}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1426)
!1426 = !{!1427, !1428, !1432, !1436, !1442, !1446}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1425, file: !18, line: 40, baseType: !17, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1425, file: !18, line: 41, baseType: !1429, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!129}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1425, file: !18, line: 42, baseType: !1433, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!84}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1425, file: !18, line: 43, baseType: !1437, size: 64, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!1166, !1440}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1425, file: !18, line: 44, baseType: !1443, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!1166}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1425, file: !18, line: 45, baseType: !1447, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !84}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !239, file: !179, line: 144, baseType: !1451, size: 64, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1166, !184}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !239, file: !179, line: 145, baseType: !1455, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !184, !1458, !1464}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1363, line: 23, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1363, line: 21, size: 32, elements: !1461)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1460, file: !1363, line: 22, baseType: !1463, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !82, line: 32, baseType: !933)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1363, line: 28, baseType: !1466)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1363, line: 26, size: 32, elements: !1467)
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1466, file: !1363, line: 27, baseType: !1469, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !82, line: 33, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !127, line: 50, baseType: !7)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !178, file: !179, line: 70, baseType: !1472, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1474, line: 123, size: 1024, elements: !1475)
!1474 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1475 = !{!1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1617, !1618, !1619, !1620, !1621}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1473, file: !1474, line: 124, baseType: !150, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1473, file: !1474, line: 125, baseType: !150, size: 32, offset: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1473, file: !1474, line: 135, baseType: !1472, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1473, file: !1474, line: 136, baseType: !95, size: 64, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1473, file: !1474, line: 138, baseType: !315, size: 192, align: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1473, file: !1474, line: 140, baseType: !1166, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1473, file: !1474, line: 141, baseType: !7, size: 32, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1473, file: !1474, line: 142, baseType: !1484, size: 256, offset: 512)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1473, file: !1474, line: 142, size: 256, elements: !1485)
!1485 = !{!1486, !1540, !1544}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1484, file: !1474, line: 143, baseType: !1487, size: 192)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1474, line: 91, size: 192, elements: !1488)
!1488 = !{!1489, !1490, !1491}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1487, file: !1474, line: 92, baseType: !83, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1487, file: !1474, line: 94, baseType: !332, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1487, file: !1474, line: 100, baseType: !1492, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1474, line: 180, size: 704, elements: !1494)
!1494 = !{!1495, !1496, !1497, !1510, !1511, !1512, !1538, !1539}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1493, file: !1474, line: 182, baseType: !1472, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1493, file: !1474, line: 183, baseType: !7, size: 32, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1493, file: !1474, line: 186, baseType: !1498, size: 192, offset: 128)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1499, line: 19, size: 192, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1500 = !{!1501, !1508, !1509}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1498, file: !1499, line: 20, baseType: !1502, size: 128)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1503, line: 292, size: 128, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1504 = !{!1505, !1506, !1507}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1502, file: !1503, line: 293, baseType: !191)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1502, file: !1503, line: 295, baseType: !81, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1502, file: !1503, line: 296, baseType: !84, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1498, file: !1499, line: 21, baseType: !7, size: 32, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1498, file: !1499, line: 22, baseType: !7, size: 32, offset: 160)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1493, file: !1474, line: 187, baseType: !117, size: 32, offset: 320)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1493, file: !1474, line: 188, baseType: !117, size: 32, offset: 352)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1493, file: !1474, line: 189, baseType: !1513, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1474, line: 168, size: 320, elements: !1515)
!1515 = !{!1516, !1522, !1526, !1530, !1534}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1514, file: !1474, line: 169, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!102, !1520, !1492}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !297, line: 539, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1514, file: !1474, line: 171, baseType: !1523, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!102, !1472, !95, !263}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1514, file: !1474, line: 173, baseType: !1527, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!102, !1472}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1514, file: !1474, line: 174, baseType: !1531, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!102, !1472, !1472, !95}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1514, file: !1474, line: 176, baseType: !1535, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!102, !1520, !1472, !1492}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1493, file: !1474, line: 192, baseType: !135, size: 128, offset: 448)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1493, file: !1474, line: 194, baseType: !752, size: 128, offset: 576)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1484, file: !1474, line: 144, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1474, line: 103, size: 64, elements: !1542)
!1542 = !{!1543}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1541, file: !1474, line: 104, baseType: !1472, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1484, file: !1474, line: 145, baseType: !1545, size: 256)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1474, line: 107, size: 256, elements: !1546)
!1546 = !{!1547, !1612, !1615, !1616}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1545, file: !1474, line: 108, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1550)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1474, line: 217, size: 768, elements: !1551)
!1551 = !{!1552, !1572, !1576, !1580, !1585, !1589, !1593, !1597, !1598, !1599, !1600, !1608}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1550, file: !1474, line: 222, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!102, !1556}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1474, line: 197, size: 1088, elements: !1558)
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1557, file: !1474, line: 199, baseType: !1472, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1557, file: !1474, line: 200, baseType: !295, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1557, file: !1474, line: 201, baseType: !1520, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1557, file: !1474, line: 202, baseType: !84, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1557, file: !1474, line: 205, baseType: !428, size: 192, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1557, file: !1474, line: 206, baseType: !428, size: 192, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1557, file: !1474, line: 207, baseType: !102, size: 32, offset: 640)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1557, file: !1474, line: 208, baseType: !135, size: 128, offset: 704)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1557, file: !1474, line: 209, baseType: !224, size: 64, offset: 832)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1557, file: !1474, line: 211, baseType: !125, size: 64, offset: 896)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1557, file: !1474, line: 212, baseType: !129, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1557, file: !1474, line: 213, baseType: !129, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1557, file: !1474, line: 214, baseType: !1407, size: 64, offset: 1024)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1550, file: !1474, line: 223, baseType: !1573, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !1556}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1550, file: !1474, line: 236, baseType: !1577, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!102, !1520, !84}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1550, file: !1474, line: 238, baseType: !1581, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!84, !1520, !1584}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1550, file: !1474, line: 239, baseType: !1586, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!84, !1520, !84, !1584}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1550, file: !1474, line: 240, baseType: !1590, size: 64, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !1520, !84}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1550, file: !1474, line: 242, baseType: !1594, size: 64, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!255, !1556, !224, !125, !298}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1550, file: !1474, line: 252, baseType: !125, size: 64, offset: 448)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1550, file: !1474, line: 259, baseType: !129, size: 8, offset: 512)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1550, file: !1474, line: 260, baseType: !1594, size: 64, offset: 576)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1550, file: !1474, line: 263, baseType: !1601, size: 64, offset: 640)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!1604, !1556, !1606}
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1605, line: 52, baseType: !7)
!1605 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1474, line: 27, flags: DIFlagFwdDecl)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1550, file: !1474, line: 266, baseType: !1609, size: 64, offset: 704)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!102, !1556, !306}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1545, file: !1474, line: 109, baseType: !1613, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1474, line: 31, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1545, file: !1474, line: 110, baseType: !298, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1545, file: !1474, line: 111, baseType: !1472, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1473, file: !1474, line: 148, baseType: !84, size: 64, offset: 768)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1473, file: !1474, line: 154, baseType: !336, size: 64, offset: 832)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1473, file: !1474, line: 156, baseType: !133, size: 16, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1473, file: !1474, line: 157, baseType: !263, size: 16, offset: 912)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1473, file: !1474, line: 158, baseType: !1622, size: 64, offset: 960)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1474, line: 32, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !178, file: !179, line: 71, baseType: !141, size: 32, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !178, file: !179, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !178, file: !179, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !178, file: !179, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !178, file: !179, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !178, file: !179, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !175, file: !30, line: 463, baseType: !174, size: 64, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !175, file: !30, line: 465, baseType: !1632, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !175, file: !30, line: 467, baseType: !95, size: 64, offset: 640)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !175, file: !30, line: 468, baseType: !1636, size: 64, offset: 704)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1646, !1651, !1655}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1638, file: !30, line: 88, baseType: !95, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1638, file: !30, line: 89, baseType: !271, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1638, file: !30, line: 90, baseType: !1643, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!102, !174, !219}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1638, file: !30, line: 91, baseType: !1647, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!224, !174, !1650, !1458, !1464}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1638, file: !30, line: 93, baseType: !1652, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !174}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1638, file: !30, line: 95, baseType: !1656, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1659)
!1659 = !{!1660, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1658, file: !37, line: 279, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!102, !174}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1658, file: !37, line: 280, baseType: !1652, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1658, file: !37, line: 281, baseType: !1661, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1658, file: !37, line: 282, baseType: !1661, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1658, file: !37, line: 283, baseType: !1661, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1658, file: !37, line: 284, baseType: !1661, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1658, file: !37, line: 285, baseType: !1661, size: 64, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1658, file: !37, line: 286, baseType: !1661, size: 64, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1658, file: !37, line: 287, baseType: !1661, size: 64, offset: 512)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1658, file: !37, line: 288, baseType: !1661, size: 64, offset: 576)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1658, file: !37, line: 289, baseType: !1661, size: 64, offset: 640)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1658, file: !37, line: 290, baseType: !1661, size: 64, offset: 704)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1658, file: !37, line: 291, baseType: !1661, size: 64, offset: 768)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1658, file: !37, line: 292, baseType: !1661, size: 64, offset: 832)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1658, file: !37, line: 293, baseType: !1661, size: 64, offset: 896)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1658, file: !37, line: 294, baseType: !1661, size: 64, offset: 960)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1658, file: !37, line: 295, baseType: !1661, size: 64, offset: 1024)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1658, file: !37, line: 296, baseType: !1661, size: 64, offset: 1088)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1658, file: !37, line: 297, baseType: !1661, size: 64, offset: 1152)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1658, file: !37, line: 298, baseType: !1661, size: 64, offset: 1216)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1658, file: !37, line: 299, baseType: !1661, size: 64, offset: 1280)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1658, file: !37, line: 300, baseType: !1661, size: 64, offset: 1344)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1658, file: !37, line: 301, baseType: !1661, size: 64, offset: 1408)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !175, file: !30, line: 470, baseType: !1687, size: 64, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1689, line: 82, size: 1408, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1773, !1776, !1779}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1688, file: !1689, line: 83, baseType: !95, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1688, file: !1689, line: 84, baseType: !95, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1688, file: !1689, line: 85, baseType: !174, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1688, file: !1689, line: 86, baseType: !271, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1688, file: !1689, line: 87, baseType: !271, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1688, file: !1689, line: 88, baseType: !271, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1688, file: !1689, line: 90, baseType: !1698, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!102, !174, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1703)
!1703 = !{!1704, !1705, !1706, !1707, !1708, !1709, !1710, !1724, !1737, !1738, !1739, !1740, !1741, !1749, !1750, !1751, !1752, !1753, !1754}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1702, file: !24, line: 96, baseType: !95, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1702, file: !24, line: 97, baseType: !1687, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1702, file: !24, line: 99, baseType: !78, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1702, file: !24, line: 100, baseType: !95, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1702, file: !24, line: 102, baseType: !129, size: 8, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1702, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1702, file: !24, line: 105, baseType: !1711, size: 64, offset: 320)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1714, line: 262, size: 1600, elements: !1715)
!1714 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1715 = !{!1716, !1718, !1719, !1723}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1713, file: !1714, line: 263, baseType: !1717, size: 256)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 256, elements: !1269)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1713, file: !1714, line: 264, baseType: !1717, size: 256, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1713, file: !1714, line: 265, baseType: !1720, size: 1024, offset: 512)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 1024, elements: !1721)
!1721 = !{!1722}
!1722 = !DISubrange(count: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1713, file: !1714, line: 266, baseType: !1166, size: 64, offset: 1536)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1702, file: !24, line: 106, baseType: !1725, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1727)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1714, line: 210, size: 256, elements: !1728)
!1728 = !{!1729, !1733, !1735, !1736}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1727, file: !1714, line: 211, baseType: !1730, size: 72)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 72, elements: !1731)
!1731 = !{!1732}
!1732 = !DISubrange(count: 9)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1727, file: !1714, line: 212, baseType: !1734, size: 64, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1714, line: 14, baseType: !83)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1727, file: !1714, line: 213, baseType: !119, size: 32, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1727, file: !1714, line: 214, baseType: !119, size: 32, offset: 224)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1702, file: !24, line: 108, baseType: !1661, size: 64, offset: 448)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1702, file: !24, line: 109, baseType: !1652, size: 64, offset: 512)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1702, file: !24, line: 110, baseType: !1661, size: 64, offset: 576)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1702, file: !24, line: 111, baseType: !1652, size: 64, offset: 640)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1702, file: !24, line: 112, baseType: !1742, size: 64, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!102, !174, !1745}
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1746)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1746, file: !37, line: 51, baseType: !102, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1702, file: !24, line: 113, baseType: !1661, size: 64, offset: 768)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1702, file: !24, line: 114, baseType: !271, size: 64, offset: 832)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1702, file: !24, line: 115, baseType: !271, size: 64, offset: 896)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1702, file: !24, line: 117, baseType: !1656, size: 64, offset: 960)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1702, file: !24, line: 118, baseType: !1652, size: 64, offset: 1024)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1702, file: !24, line: 120, baseType: !1755, size: 64, offset: 1088)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1688, file: !1689, line: 91, baseType: !1643, size: 64, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1688, file: !1689, line: 92, baseType: !1661, size: 64, offset: 512)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1688, file: !1689, line: 93, baseType: !1652, size: 64, offset: 576)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1688, file: !1689, line: 94, baseType: !1661, size: 64, offset: 640)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1688, file: !1689, line: 95, baseType: !1652, size: 64, offset: 704)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1688, file: !1689, line: 97, baseType: !1661, size: 64, offset: 768)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1688, file: !1689, line: 98, baseType: !1661, size: 64, offset: 832)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1688, file: !1689, line: 100, baseType: !1742, size: 64, offset: 896)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1688, file: !1689, line: 101, baseType: !1661, size: 64, offset: 960)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1688, file: !1689, line: 103, baseType: !1661, size: 64, offset: 1024)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1688, file: !1689, line: 105, baseType: !1661, size: 64, offset: 1088)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1688, file: !1689, line: 107, baseType: !1656, size: 64, offset: 1152)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1688, file: !1689, line: 109, baseType: !1770, size: 64, offset: 1216)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1772)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1689, line: 109, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1688, file: !1689, line: 111, baseType: !1774, size: 64, offset: 1280)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1689, line: 111, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1688, file: !1689, line: 112, baseType: !1777, offset: 1344)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1778, line: 187, elements: !172)
!1778 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1688, file: !1689, line: 114, baseType: !129, size: 8, offset: 1344)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !175, file: !30, line: 471, baseType: !1701, size: 64, offset: 832)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !175, file: !30, line: 473, baseType: !84, size: 64, offset: 896)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !175, file: !30, line: 475, baseType: !84, size: 64, offset: 960)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !175, file: !30, line: 480, baseType: !428, size: 192, offset: 1024)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !175, file: !30, line: 484, baseType: !1785, size: 576, offset: 1216)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1785, file: !30, line: 362, baseType: !135, size: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1785, file: !30, line: 363, baseType: !135, size: 128, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1785, file: !30, line: 364, baseType: !135, size: 128, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1785, file: !30, line: 365, baseType: !135, size: 128, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1785, file: !30, line: 366, baseType: !129, size: 8, offset: 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1785, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !175, file: !30, line: 485, baseType: !1794, size: 2304, offset: 1792)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1795)
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1891, !1895}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1794, file: !37, line: 566, baseType: !1745, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1794, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1794, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1794, file: !37, line: 569, baseType: !129, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1794, file: !37, line: 570, baseType: !129, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1794, file: !37, line: 571, baseType: !129, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1794, file: !37, line: 572, baseType: !129, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1794, file: !37, line: 573, baseType: !129, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1794, file: !37, line: 574, baseType: !129, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1794, file: !37, line: 575, baseType: !129, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1794, file: !37, line: 576, baseType: !129, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1794, file: !37, line: 577, baseType: !117, size: 32, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1794, file: !37, line: 578, baseType: !191, offset: 96)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1794, file: !37, line: 580, baseType: !135, size: 128, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1794, file: !37, line: 581, baseType: !155, size: 192, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1794, file: !37, line: 582, baseType: !1812, size: 64, offset: 448)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1814, line: 43, size: 1472, elements: !1815)
!1814 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1815 = !{!1816, !1817, !1818, !1819, !1820, !1823, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1813, file: !1814, line: 44, baseType: !95, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1813, file: !1814, line: 45, baseType: !102, size: 32, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1813, file: !1814, line: 46, baseType: !135, size: 128, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1813, file: !1814, line: 47, baseType: !191, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1813, file: !1814, line: 48, baseType: !1821, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1813, file: !1814, line: 49, baseType: !1824, size: 320, offset: 320)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1825, line: 11, size: 320, elements: !1826)
!1825 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1826 = !{!1827, !1828, !1829, !1834}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1824, file: !1825, line: 16, baseType: !745, size: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1824, file: !1825, line: 17, baseType: !83, size: 64, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1824, file: !1825, line: 18, baseType: !1830, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !1833}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1824, file: !1825, line: 19, baseType: !117, size: 32, offset: 256)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1813, file: !1814, line: 50, baseType: !83, size: 64, offset: 640)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1813, file: !1814, line: 51, baseType: !552, size: 64, offset: 704)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1813, file: !1814, line: 52, baseType: !552, size: 64, offset: 768)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1813, file: !1814, line: 53, baseType: !552, size: 64, offset: 832)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1813, file: !1814, line: 54, baseType: !552, size: 64, offset: 896)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1813, file: !1814, line: 55, baseType: !552, size: 64, offset: 960)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1813, file: !1814, line: 56, baseType: !83, size: 64, offset: 1024)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1813, file: !1814, line: 57, baseType: !83, size: 64, offset: 1088)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1813, file: !1814, line: 58, baseType: !83, size: 64, offset: 1152)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1813, file: !1814, line: 59, baseType: !83, size: 64, offset: 1216)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1813, file: !1814, line: 60, baseType: !83, size: 64, offset: 1280)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1813, file: !1814, line: 61, baseType: !174, size: 64, offset: 1344)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1813, file: !1814, line: 62, baseType: !129, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1813, file: !1814, line: 63, baseType: !129, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1794, file: !37, line: 583, baseType: !129, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1794, file: !37, line: 584, baseType: !129, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1794, file: !37, line: 585, baseType: !129, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1794, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1794, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1794, file: !37, line: 592, baseType: !544, size: 512, offset: 576)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1794, file: !37, line: 593, baseType: !336, size: 64, offset: 1088)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1794, file: !37, line: 594, baseType: !1374, size: 256, offset: 1152)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1794, file: !37, line: 595, baseType: !752, size: 128, offset: 1408)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1794, file: !37, line: 596, baseType: !1821, size: 64, offset: 1536)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1794, file: !37, line: 597, baseType: !150, size: 32, offset: 1600)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1794, file: !37, line: 598, baseType: !150, size: 32, offset: 1632)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1794, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1794, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1794, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1794, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1794, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1794, file: !37, line: 604, baseType: !129, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1794, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1794, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1794, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1794, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1794, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1794, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1794, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1794, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1794, file: !37, line: 613, baseType: !102, size: 32, offset: 1792)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1794, file: !37, line: 614, baseType: !102, size: 32, offset: 1824)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1794, file: !37, line: 615, baseType: !336, size: 64, offset: 1856)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1794, file: !37, line: 616, baseType: !336, size: 64, offset: 1920)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1794, file: !37, line: 617, baseType: !336, size: 64, offset: 1984)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1794, file: !37, line: 618, baseType: !336, size: 64, offset: 2048)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1794, file: !37, line: 620, baseType: !1882, size: 64, offset: 2112)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1883, file: !37, line: 537, baseType: !191)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1883, file: !37, line: 538, baseType: !7, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1883, file: !37, line: 540, baseType: !135, size: 128, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1883, file: !37, line: 543, baseType: !1889, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1794, file: !37, line: 621, baseType: !1892, size: 64, offset: 2176)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !174, !705}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1794, file: !37, line: 622, baseType: !1896, size: 64, offset: 2240)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !175, file: !30, line: 486, baseType: !1899, size: 64, offset: 4096)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1901)
!1901 = !{!1902, !1903, !1904, !1908, !1909, !1910}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1900, file: !37, line: 643, baseType: !1658, size: 1472)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1900, file: !37, line: 644, baseType: !1661, size: 64, offset: 1472)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1900, file: !37, line: 645, baseType: !1905, size: 64, offset: 1536)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !174, !129}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1900, file: !37, line: 646, baseType: !1661, size: 64, offset: 1600)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1900, file: !37, line: 647, baseType: !1652, size: 64, offset: 1664)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1900, file: !37, line: 648, baseType: !1652, size: 64, offset: 1728)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !175, file: !30, line: 493, baseType: !1912, size: 64, offset: 4160)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1914)
!1914 = !{!1915, !1916, !1917, !2191, !2192, !2193, !2194, !2195, !2196, !2303, !2304, !2305, !2306, !2307, !2308, !2309}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1913, file: !51, line: 163, baseType: !135, size: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1913, file: !51, line: 164, baseType: !95, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1913, file: !51, line: 165, baseType: !1918, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1920)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1921)
!1921 = !{!1922, !2040, !2051, !2056, !2060, !2068, !2072, !2076, !2183, !2187}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1920, file: !51, line: 106, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!102, !1912, !1926, !50}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1928, line: 51, size: 1344, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1929 = !{!1930, !1931, !1933, !1934, !2024, !2033, !2034, !2035, !2036, !2037, !2038, !2039}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1927, file: !1928, line: 52, baseType: !95, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1927, file: !1928, line: 53, baseType: !1932, size: 32, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1928, line: 28, baseType: !117)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1927, file: !1928, line: 54, baseType: !95, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1927, file: !1928, line: 55, baseType: !1935, size: 192, offset: 192)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1936, line: 17, size: 192, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1940, !2023}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1935, file: !1936, line: 18, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1935, file: !1936, line: 19, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1943)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1936, line: 110, size: 1152, elements: !1944)
!1944 = !{!1945, !1949, !1953, !1959, !1965, !1969, !1973, !1978, !1982, !1983, !1987, !1991, !1995, !2006, !2007, !2008, !2009, !2019}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1943, file: !1936, line: 111, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!1939, !1939}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1943, file: !1936, line: 112, baseType: !1950, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !1939}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1943, file: !1936, line: 113, baseType: !1954, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!129, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1935)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1943, file: !1936, line: 114, baseType: !1960, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!1166, !1957, !1963}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1943, file: !1936, line: 116, baseType: !1966, size: 64, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!129, !1957, !95}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1943, file: !1936, line: 118, baseType: !1970, size: 64, offset: 320)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!102, !1957, !95, !7, !84, !125}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1943, file: !1936, line: 123, baseType: !1974, size: 64, offset: 384)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!102, !1957, !95, !1977, !125}
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1943, file: !1936, line: 126, baseType: !1979, size: 64, offset: 448)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!95, !1957}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1943, file: !1936, line: 127, baseType: !1979, size: 64, offset: 512)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1943, file: !1936, line: 128, baseType: !1984, size: 64, offset: 576)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!1939, !1957}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1943, file: !1936, line: 130, baseType: !1988, size: 64, offset: 640)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!1939, !1957, !1939}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1943, file: !1936, line: 133, baseType: !1992, size: 64, offset: 704)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!1939, !1957, !95}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1943, file: !1936, line: 135, baseType: !1996, size: 64, offset: 768)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!102, !1957, !95, !95, !7, !7, !1999}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1936, line: 43, size: 640, elements: !2001)
!2001 = !{!2002, !2003, !2004}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2000, file: !1936, line: 44, baseType: !1939, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2000, file: !1936, line: 45, baseType: !7, size: 32, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2000, file: !1936, line: 46, baseType: !2005, size: 512, offset: 128)
!2005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 512, elements: !582)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1943, file: !1936, line: 140, baseType: !1988, size: 64, offset: 832)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1943, file: !1936, line: 143, baseType: !1984, size: 64, offset: 896)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1943, file: !1936, line: 145, baseType: !1946, size: 64, offset: 960)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1943, file: !1936, line: 146, baseType: !2010, size: 64, offset: 1024)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!102, !1957, !2013}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1936, line: 29, size: 128, elements: !2015)
!2015 = !{!2016, !2017, !2018}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2014, file: !1936, line: 30, baseType: !7, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2014, file: !1936, line: 31, baseType: !7, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2014, file: !1936, line: 32, baseType: !1957, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1943, file: !1936, line: 148, baseType: !2020, size: 64, offset: 1088)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!102, !1957, !174}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1935, file: !1936, line: 20, baseType: !174, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1927, file: !1928, line: 57, baseType: !2025, size: 64, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1928, line: 31, size: 704, elements: !2027)
!2027 = !{!2028, !2029, !2030, !2031, !2032}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2026, file: !1928, line: 32, baseType: !224, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2026, file: !1928, line: 33, baseType: !102, size: 32, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2026, file: !1928, line: 34, baseType: !84, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2026, file: !1928, line: 35, baseType: !2025, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2026, file: !1928, line: 43, baseType: !286, size: 448, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1927, file: !1928, line: 58, baseType: !2025, size: 64, offset: 448)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1927, file: !1928, line: 59, baseType: !1926, size: 64, offset: 512)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1927, file: !1928, line: 60, baseType: !1926, size: 64, offset: 576)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1927, file: !1928, line: 61, baseType: !1926, size: 64, offset: 640)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1927, file: !1928, line: 63, baseType: !178, size: 512, offset: 704)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1927, file: !1928, line: 65, baseType: !83, size: 64, offset: 1216)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1927, file: !1928, line: 66, baseType: !84, size: 64, offset: 1280)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1920, file: !51, line: 108, baseType: !2041, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!102, !1912, !2044, !50}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2046)
!2046 = !{!2047, !2048, !2049}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2045, file: !51, line: 64, baseType: !1939, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2045, file: !51, line: 65, baseType: !102, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2045, file: !51, line: 66, baseType: !2050, size: 512, offset: 96)
!2050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 512, elements: !828)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1920, file: !51, line: 110, baseType: !2052, size: 64, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!102, !1912, !7, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !82, line: 164, baseType: !83)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1920, file: !51, line: 111, baseType: !2057, size: 64, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !1912, !7}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1920, file: !51, line: 112, baseType: !2061, size: 64, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!102, !1912, !1926, !2064, !7, !2066, !2067}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1920, file: !51, line: 117, baseType: !2069, size: 64, offset: 320)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!102, !1912, !7, !7, !84}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1920, file: !51, line: 119, baseType: !2073, size: 64, offset: 384)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !1912, !7, !7}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1920, file: !51, line: 121, baseType: !2077, size: 64, offset: 448)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!102, !1912, !2080, !129}
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !65, line: 175, size: 448, elements: !2082)
!2082 = !{!2083, !2084, !2085, !2086, !2098, !2180, !2181, !2182}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2081, file: !65, line: 176, baseType: !117, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2081, file: !65, line: 177, baseType: !7, size: 32, offset: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !2081, file: !65, line: 178, baseType: !83, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2081, file: !65, line: 179, baseType: !2087, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !65, line: 145, size: 256, elements: !2089)
!2089 = !{!2090, !2091, !2092, !2095}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !2088, file: !65, line: 146, baseType: !7, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !2088, file: !65, line: 150, baseType: !84, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !2088, file: !65, line: 151, baseType: !2093, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !65, line: 127, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !2088, file: !65, line: 152, baseType: !2096, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !628, line: 756, baseType: !2097)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 64, elements: !633)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2081, file: !65, line: 180, baseType: !2099, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !65, line: 503, size: 2304, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2108, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2125, !2129, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2146, !2147, !2148, !2154, !2155, !2161, !2165, !2169, !2173, !2177, !2178, !2179}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !2100, file: !65, line: 504, baseType: !174, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2100, file: !65, line: 505, baseType: !95, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !2100, file: !65, line: 506, baseType: !2105, size: 64, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!7, !2080}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !2100, file: !65, line: 507, baseType: !2109, size: 64, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !2080}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !2100, file: !65, line: 508, baseType: !2109, size: 64, offset: 256)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !2100, file: !65, line: 509, baseType: !2109, size: 64, offset: 320)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !2100, file: !65, line: 511, baseType: !2109, size: 64, offset: 384)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !2100, file: !65, line: 512, baseType: !2109, size: 64, offset: 448)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !2100, file: !65, line: 513, baseType: !2109, size: 64, offset: 512)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !2100, file: !65, line: 514, baseType: !2109, size: 64, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !2100, file: !65, line: 515, baseType: !2109, size: 64, offset: 640)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !2100, file: !65, line: 517, baseType: !2120, size: 64, offset: 704)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!102, !2080, !2123, !129}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !2100, file: !65, line: 518, baseType: !2126, size: 64, offset: 768)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!102, !2080}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !2100, file: !65, line: 519, baseType: !2130, size: 64, offset: 832)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!102, !2080, !7}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !2100, file: !65, line: 520, baseType: !2130, size: 64, offset: 896)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !2100, file: !65, line: 522, baseType: !2109, size: 64, offset: 960)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !2100, file: !65, line: 523, baseType: !2109, size: 64, offset: 1024)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !2100, file: !65, line: 525, baseType: !2109, size: 64, offset: 1088)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !2100, file: !65, line: 526, baseType: !2109, size: 64, offset: 1152)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !2100, file: !65, line: 528, baseType: !2109, size: 64, offset: 1216)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !2100, file: !65, line: 529, baseType: !2109, size: 64, offset: 1280)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !2100, file: !65, line: 530, baseType: !2109, size: 64, offset: 1344)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !2100, file: !65, line: 532, baseType: !2109, size: 64, offset: 1408)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !2100, file: !65, line: 534, baseType: !2143, size: 64, offset: 1472)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !2080, !1520}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !2100, file: !65, line: 535, baseType: !2126, size: 64, offset: 1536)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !2100, file: !65, line: 536, baseType: !2109, size: 64, offset: 1600)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !2100, file: !65, line: 538, baseType: !2149, size: 64, offset: 1664)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !2080, !2152}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !65, line: 29, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !2100, file: !65, line: 539, baseType: !2149, size: 64, offset: 1728)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !2100, file: !65, line: 541, baseType: !2156, size: 64, offset: 1792)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!102, !2080, !2159, !2160}
!2159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !65, line: 31, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !2100, file: !65, line: 542, baseType: !2162, size: 64, offset: 1856)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!102, !2080, !2159, !129}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !2100, file: !65, line: 544, baseType: !2166, size: 64, offset: 1920)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!102, !2080, !84}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !2100, file: !65, line: 546, baseType: !2170, size: 64, offset: 1984)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{null, !2080, !7}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !2100, file: !65, line: 547, baseType: !2174, size: 64, offset: 2048)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !2080, !2123}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !2100, file: !65, line: 549, baseType: !2126, size: 64, offset: 2112)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !2100, file: !65, line: 550, baseType: !2109, size: 64, offset: 2176)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2100, file: !65, line: 552, baseType: !83, size: 64, offset: 2240)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2081, file: !65, line: 181, baseType: !1912, size: 64, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !2081, file: !65, line: 183, baseType: !2080, size: 64, offset: 320)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !2081, file: !65, line: 185, baseType: !84, size: 64, offset: 384)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1920, file: !51, line: 122, baseType: !2184, size: 64, offset: 512)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{null, !1912, !2080}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1920, file: !51, line: 123, baseType: !2188, size: 64, offset: 576)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!102, !1912, !2044, !2066, !2067}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1913, file: !51, line: 166, baseType: !84, size: 64, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1913, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1913, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1913, file: !51, line: 171, baseType: !1939, size: 64, offset: 384)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1913, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1913, file: !51, line: 173, baseType: !2197, size: 64, offset: 512)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !65, line: 1101, size: 192, elements: !2199)
!2199 = !{!2200, !2201, !2202, !2203, !2204, !2205}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !2198, file: !65, line: 1102, baseType: !7, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !2198, file: !65, line: 1103, baseType: !7, size: 32, offset: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !2198, file: !65, line: 1104, baseType: !7, size: 32, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !2198, file: !65, line: 1105, baseType: !7, size: 32, offset: 96)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !2198, file: !65, line: 1106, baseType: !64, size: 32, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2198, file: !65, line: 1107, baseType: !2206, offset: 192)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2207, elements: !1388)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !65, line: 1051, size: 960, elements: !2209)
!2209 = !{!2210, !2211, !2212, !2216, !2220, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2208, file: !65, line: 1052, baseType: !164)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !2208, file: !65, line: 1053, baseType: !84, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !2208, file: !65, line: 1054, baseType: !2213, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!117, !84}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !2208, file: !65, line: 1055, baseType: !2217, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !117, !84}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2208, file: !65, line: 1056, baseType: !2221, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !2207}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2208, file: !65, line: 1057, baseType: !2221, size: 64, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !2208, file: !65, line: 1058, baseType: !7, size: 32, offset: 320)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !2208, file: !65, line: 1059, baseType: !7, size: 32, offset: 352)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2208, file: !65, line: 1060, baseType: !117, size: 32, offset: 384)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !2208, file: !65, line: 1061, baseType: !117, size: 32, offset: 416)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !2208, file: !65, line: 1062, baseType: !117, size: 32, offset: 448)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !2208, file: !65, line: 1063, baseType: !117, size: 32, offset: 480)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !2208, file: !65, line: 1064, baseType: !117, size: 32, offset: 512)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !2208, file: !65, line: 1065, baseType: !7, size: 32, offset: 544)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2208, file: !65, line: 1066, baseType: !84, size: 64, offset: 576)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !2208, file: !65, line: 1067, baseType: !83, size: 64, offset: 640)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2208, file: !65, line: 1068, baseType: !83, size: 64, offset: 704)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2208, file: !65, line: 1069, baseType: !1912, size: 64, offset: 768)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2208, file: !65, line: 1070, baseType: !135, size: 128, offset: 832)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !2208, file: !65, line: 1071, baseType: !2239, offset: 960)
!2239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2240, elements: !1388)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !65, line: 1009, size: 2944, elements: !2241)
!2241 = !{!2242, !2243, !2253, !2300, !2301, !2302}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2240, file: !65, line: 1010, baseType: !2100, size: 2304)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2240, file: !65, line: 1011, baseType: !2244, size: 448, offset: 2304)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !65, line: 986, size: 448, elements: !2245)
!2245 = !{!2246, !2247, !2248, !2249, !2250, !2251, !2252}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !2244, file: !65, line: 987, baseType: !83, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !2244, file: !65, line: 988, baseType: !83, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2244, file: !65, line: 989, baseType: !83, size: 64, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !2244, file: !65, line: 990, baseType: !83, size: 64, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !2244, file: !65, line: 991, baseType: !83, size: 64, offset: 256)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2244, file: !65, line: 992, baseType: !83, size: 64, offset: 320)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2244, file: !65, line: 993, baseType: !83, size: 64, offset: 384)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2240, file: !65, line: 1012, baseType: !2254, size: 64, offset: 2752)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !2255, line: 12, baseType: !2256)
!2255 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !2259}
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !2261, line: 55, size: 2880, elements: !2262)
!2261 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!2262 = !{!2263, !2264, !2265, !2266, !2267, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2294, !2295, !2296, !2297, !2298, !2299}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !2260, file: !2261, line: 56, baseType: !2088, size: 256)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !2260, file: !2261, line: 57, baseType: !2081, size: 448, offset: 256)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !2260, file: !2261, line: 58, baseType: !2067, size: 64, offset: 704)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !2260, file: !2261, line: 59, baseType: !2254, size: 64, offset: 768)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2260, file: !2261, line: 60, baseType: !2268, size: 64, offset: 832)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !2261, line: 60, flags: DIFlagFwdDecl)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !2260, file: !2261, line: 61, baseType: !7, size: 32, offset: 896)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !2260, file: !2261, line: 62, baseType: !7, size: 32, offset: 928)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2260, file: !2261, line: 63, baseType: !7, size: 32, offset: 960)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !2260, file: !2261, line: 64, baseType: !7, size: 32, offset: 992)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !2260, file: !2261, line: 65, baseType: !7, size: 32, offset: 1024)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2260, file: !2261, line: 66, baseType: !7, size: 32, offset: 1056)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !2260, file: !2261, line: 67, baseType: !83, size: 64, offset: 1088)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !2260, file: !2261, line: 68, baseType: !7, size: 32, offset: 1152)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !2260, file: !2261, line: 69, baseType: !150, size: 32, offset: 1184)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !2260, file: !2261, line: 70, baseType: !102, size: 32, offset: 1216)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2260, file: !2261, line: 71, baseType: !164, offset: 1248)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !2260, file: !2261, line: 72, baseType: !2282, size: 64, offset: 1280)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !2260, file: !2261, line: 73, baseType: !2123, size: 64, offset: 1344)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !2260, file: !2261, line: 81, baseType: !83, size: 64, offset: 1408)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !2260, file: !2261, line: 82, baseType: !150, size: 32, offset: 1472)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !2260, file: !2261, line: 83, baseType: !752, size: 128, offset: 1536)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !2260, file: !2261, line: 85, baseType: !7, size: 32, offset: 1664)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !2260, file: !2261, line: 86, baseType: !7, size: 32, offset: 1696)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !2260, file: !2261, line: 87, baseType: !7, size: 32, offset: 1728)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !2260, file: !2261, line: 88, baseType: !7, size: 32, offset: 1760)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2260, file: !2261, line: 91, baseType: !2292, size: 64, offset: 1792)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2261, line: 14, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2260, file: !2261, line: 98, baseType: !759, size: 128, align: 64, offset: 1856)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2260, file: !2261, line: 99, baseType: !178, size: 512, offset: 1984)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !2260, file: !2261, line: 101, baseType: !428, size: 192, offset: 2496)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !2260, file: !2261, line: 102, baseType: !102, size: 32, offset: 2688)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2260, file: !2261, line: 103, baseType: !78, size: 64, offset: 2752)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2260, file: !2261, line: 104, baseType: !95, size: 64, offset: 2816)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2240, file: !65, line: 1013, baseType: !117, size: 32, offset: 2816)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !2240, file: !65, line: 1014, baseType: !117, size: 32, offset: 2848)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2240, file: !65, line: 1015, baseType: !116, size: 64, offset: 2880)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1913, file: !51, line: 175, baseType: !1912, size: 64, offset: 576)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1913, file: !51, line: 182, baseType: !2055, size: 64, offset: 640)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1913, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1913, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1913, file: !51, line: 185, baseType: !1502, size: 128, offset: 768)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1913, file: !51, line: 186, baseType: !428, size: 192, offset: 896)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1913, file: !51, line: 187, baseType: !2310, offset: 1088)
!2310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1388)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !175, file: !30, line: 499, baseType: !135, size: 128, offset: 4224)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !175, file: !30, line: 502, baseType: !2313, size: 64, offset: 4352)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2315)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !175, file: !30, line: 504, baseType: !2317, size: 64, offset: 4416)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !175, file: !30, line: 505, baseType: !336, size: 64, offset: 4480)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !175, file: !30, line: 510, baseType: !336, size: 64, offset: 4544)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !175, file: !30, line: 511, baseType: !2321, size: 64, offset: 4608)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2323)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !175, file: !30, line: 513, baseType: !2325, size: 64, offset: 4672)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2327)
!2327 = !{!2328, !2329}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2326, file: !30, line: 293, baseType: !7, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2326, file: !30, line: 294, baseType: !83, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !175, file: !30, line: 515, baseType: !135, size: 128, offset: 4736)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !175, file: !30, line: 526, baseType: !2332, offset: 4864)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2333, line: 5, elements: !172)
!2333 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !175, file: !30, line: 528, baseType: !1926, size: 64, offset: 4864)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !175, file: !30, line: 529, baseType: !1939, size: 64, offset: 4928)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !175, file: !30, line: 534, baseType: !2337, size: 32, offset: 4992)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !82, line: 16, baseType: !2338)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !82, line: 13, baseType: !117)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !175, file: !30, line: 535, baseType: !117, size: 32, offset: 5024)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !175, file: !30, line: 537, baseType: !191, offset: 5056)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !175, file: !30, line: 538, baseType: !135, size: 128, offset: 5056)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !175, file: !30, line: 540, baseType: !2343, size: 64, offset: 5184)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2345, line: 54, size: 960, elements: !2346)
!2345 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2346 = !{!2347, !2348, !2349, !2350, !2351, !2352, !2353, !2357, !2361, !2362, !2363, !2364, !2368, !2372, !2373}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2344, file: !2345, line: 55, baseType: !95, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2344, file: !2345, line: 56, baseType: !78, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2344, file: !2345, line: 58, baseType: !271, size: 64, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2344, file: !2345, line: 59, baseType: !271, size: 64, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2344, file: !2345, line: 60, baseType: !184, size: 64, offset: 256)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2344, file: !2345, line: 62, baseType: !1643, size: 64, offset: 320)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2344, file: !2345, line: 63, baseType: !2354, size: 64, offset: 384)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!224, !174, !1650}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2344, file: !2345, line: 65, baseType: !2358, size: 64, offset: 448)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !2343}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2344, file: !2345, line: 66, baseType: !1652, size: 64, offset: 512)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2344, file: !2345, line: 68, baseType: !1661, size: 64, offset: 576)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2344, file: !2345, line: 70, baseType: !1423, size: 64, offset: 640)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2344, file: !2345, line: 71, baseType: !2365, size: 64, offset: 704)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!1166, !174}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2344, file: !2345, line: 73, baseType: !2369, size: 64, offset: 768)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !174, !1458, !1464}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2344, file: !2345, line: 75, baseType: !1656, size: 64, offset: 832)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2344, file: !2345, line: 77, baseType: !1774, size: 64, offset: 896)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !175, file: !30, line: 541, baseType: !271, size: 64, offset: 5248)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !175, file: !30, line: 543, baseType: !1652, size: 64, offset: 5312)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !175, file: !30, line: 544, baseType: !2377, size: 64, offset: 5376)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !175, file: !30, line: 545, baseType: !2380, size: 64, offset: 5440)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !175, file: !30, line: 547, baseType: !129, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !175, file: !30, line: 548, baseType: !129, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !175, file: !30, line: 549, baseType: !129, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !175, file: !30, line: 550, baseType: !129, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !615)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !336)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!2393 = !{!0, !2394, !2401, !2406, !2411, !2416, !2421, !2481, !2484}
!2394 = !DIGlobalVariableExpression(var: !2395, expr: !DIExpression())
!2395 = distinct !DIGlobalVariable(name: "__exitcall_npcm_rng_driver_exit", scope: !2, file: !3, line: 180, type: !2396, isLocal: true, isDefinition: true)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2397, line: 117, baseType: !2398)
!2397 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null}
!2401 = !DIGlobalVariableExpression(var: !2402, expr: !DIExpression())
!2402 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description171", scope: !2, file: !3, line: 182, type: !2403, isLocal: true, isDefinition: true, align: 8)
!2403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 520, elements: !2404)
!2404 = !{!2405}
!2405 = !DISubrange(count: 65)
!2406 = !DIGlobalVariableExpression(var: !2407, expr: !DIExpression())
!2407 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author172", scope: !2, file: !3, line: 183, type: !2408, isLocal: true, isDefinition: true, align: 8)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 448, elements: !2409)
!2409 = !{!2410}
!2410 = !DISubrange(count: 56)
!2411 = !DIGlobalVariableExpression(var: !2412, expr: !DIExpression())
!2412 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file173", scope: !2, file: !3, line: 184, type: !2413, isLocal: true, isDefinition: true, align: 8)
!2413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 368, elements: !2414)
!2414 = !{!2415}
!2415 = !DISubrange(count: 46)
!2416 = !DIGlobalVariableExpression(var: !2417, expr: !DIExpression())
!2417 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license174", scope: !2, file: !3, line: 184, type: !2418, isLocal: true, isDefinition: true, align: 8)
!2418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 192, elements: !2419)
!2419 = !{!2420}
!2420 = !DISubrange(count: 24)
!2421 = !DIGlobalVariableExpression(var: !2422, expr: !DIExpression())
!2422 = distinct !DIGlobalVariable(name: "npcm_rng_driver", scope: !2, file: !3, line: 170, type: !2423, isLocal: true, isDefinition: true)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2424, line: 200, size: 1600, elements: !2425)
!2424 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2425 = !{!2426, !2468, !2469, !2473, !2477, !2478, !2479, !2480}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2423, file: !2424, line: 201, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!102, !2430}
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2424, line: 22, size: 6208, elements: !2432)
!2432 = !{!2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2454, !2462, !2463, !2466}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2431, file: !2424, line: 23, baseType: !95, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2431, file: !2424, line: 24, baseType: !102, size: 32, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2431, file: !2424, line: 25, baseType: !129, size: 8, offset: 96)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2431, file: !2424, line: 26, baseType: !175, size: 5568, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2431, file: !2424, line: 27, baseType: !336, size: 64, offset: 5696)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2431, file: !2424, line: 28, baseType: !2326, size: 128, offset: 5760)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2431, file: !2424, line: 29, baseType: !117, size: 32, offset: 5888)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2431, file: !2424, line: 30, baseType: !2441, size: 64, offset: 5952)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2443, line: 20, size: 512, elements: !2444)
!2443 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2444 = !{!2445, !2447, !2448, !2449, !2450, !2451, !2452, !2453}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2442, file: !2443, line: 21, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !82, line: 158, baseType: !1164)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2442, file: !2443, line: 22, baseType: !2446, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2442, file: !2443, line: 23, baseType: !95, size: 64, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2442, file: !2443, line: 24, baseType: !83, size: 64, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2442, file: !2443, line: 25, baseType: !83, size: 64, offset: 256)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2442, file: !2443, line: 26, baseType: !2441, size: 64, offset: 320)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2442, file: !2443, line: 26, baseType: !2441, size: 64, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2442, file: !2443, line: 26, baseType: !2441, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2431, file: !2424, line: 32, baseType: !2455, size: 64, offset: 6016)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2457)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1714, line: 586, size: 256, elements: !2458)
!2458 = !{!2459, !2461}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2457, file: !1714, line: 587, baseType: !2460, size: 160)
!2460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 160, elements: !1240)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2457, file: !1714, line: 588, baseType: !1734, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2431, file: !2424, line: 33, baseType: !224, size: 64, offset: 6080)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2431, file: !2424, line: 36, baseType: !2464, size: 64, offset: 6144)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2424, line: 18, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2431, file: !2424, line: 39, baseType: !2467, offset: 6208)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2333, line: 8, elements: !172)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2423, file: !2424, line: 202, baseType: !2427, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2423, file: !2424, line: 203, baseType: !2470, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{null, !2430}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2423, file: !2424, line: 204, baseType: !2474, size: 64, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!102, !2430, !1745}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2423, file: !2424, line: 205, baseType: !2427, size: 64, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2423, file: !2424, line: 206, baseType: !1702, size: 1152, offset: 320)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2423, file: !2424, line: 207, baseType: !2455, size: 64, offset: 1472)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2423, file: !2424, line: 208, baseType: !129, size: 8, offset: 1536)
!2481 = !DIGlobalVariableExpression(var: !2482, expr: !DIExpression())
!2482 = distinct !DIGlobalVariable(name: "rng_dt_id", scope: !2, file: !3, line: 164, type: !2483, isLocal: true, isDefinition: true)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1712, size: 3200, elements: !1009)
!2484 = !DIGlobalVariableExpression(var: !2485, expr: !DIExpression())
!2485 = distinct !DIGlobalVariable(name: "npcm_rng_pm_ops", scope: !2, file: !3, line: 157, type: !1657, isLocal: true, isDefinition: true)
!2486 = !{i32 7, !"Dwarf Version", i32 4}
!2487 = !{i32 2, !"Debug Info Version", i32 3}
!2488 = !{i32 1, !"wchar_size", i32 2}
!2489 = !{i32 1, !"Code Model", i32 2}
!2490 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2491 = distinct !DISubprogram(name: "npcm_rng_driver_init", scope: !3, file: !3, line: 180, type: !2492, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!102}
!2494 = !DILocation(line: 180, column: 1, scope: !2491)
!2495 = distinct !DISubprogram(name: "npcm_rng_driver_exit", scope: !3, file: !3, line: 180, type: !2399, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2496 = !DILocation(line: 180, column: 1, scope: !2495)
!2497 = distinct !DISubprogram(name: "npcm_rng_probe", scope: !3, file: !3, line: 87, type: !2428, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2498 = !DILocalVariable(name: "pdev", arg: 1, scope: !2497, file: !3, line: 87, type: !2430)
!2499 = !DILocation(line: 87, column: 51, scope: !2497)
!2500 = !DILocalVariable(name: "priv", scope: !2497, file: !3, line: 89, type: !86)
!2501 = !DILocation(line: 89, column: 19, scope: !2497)
!2502 = !DILocalVariable(name: "ret", scope: !2497, file: !3, line: 90, type: !102)
!2503 = !DILocation(line: 90, column: 6, scope: !2497)
!2504 = !DILocation(line: 92, column: 23, scope: !2497)
!2505 = !DILocation(line: 92, column: 29, scope: !2497)
!2506 = !DILocation(line: 92, column: 9, scope: !2497)
!2507 = !DILocation(line: 92, column: 7, scope: !2497)
!2508 = !DILocation(line: 93, column: 7, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 93, column: 6)
!2510 = !DILocation(line: 93, column: 6, scope: !2497)
!2511 = !DILocation(line: 94, column: 3, scope: !2509)
!2512 = !DILocation(line: 96, column: 46, scope: !2497)
!2513 = !DILocation(line: 96, column: 15, scope: !2497)
!2514 = !DILocation(line: 96, column: 2, scope: !2497)
!2515 = !DILocation(line: 96, column: 8, scope: !2497)
!2516 = !DILocation(line: 96, column: 13, scope: !2497)
!2517 = !DILocation(line: 97, column: 13, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 97, column: 6)
!2519 = !DILocation(line: 97, column: 19, scope: !2518)
!2520 = !DILocation(line: 97, column: 6, scope: !2518)
!2521 = !DILocation(line: 97, column: 6, scope: !2497)
!2522 = !DILocation(line: 98, column: 18, scope: !2518)
!2523 = !DILocation(line: 98, column: 24, scope: !2518)
!2524 = !DILocation(line: 98, column: 10, scope: !2518)
!2525 = !DILocation(line: 98, column: 3, scope: !2518)
!2526 = !DILocation(line: 100, column: 19, scope: !2497)
!2527 = !DILocation(line: 100, column: 25, scope: !2497)
!2528 = !DILocation(line: 100, column: 30, scope: !2497)
!2529 = !DILocation(line: 100, column: 2, scope: !2497)
!2530 = !DILocation(line: 101, column: 36, scope: !2497)
!2531 = !DILocation(line: 101, column: 42, scope: !2497)
!2532 = !DILocation(line: 101, column: 2, scope: !2497)
!2533 = !DILocation(line: 102, column: 30, scope: !2497)
!2534 = !DILocation(line: 102, column: 36, scope: !2497)
!2535 = !DILocation(line: 102, column: 2, scope: !2497)
!2536 = !DILocation(line: 103, column: 21, scope: !2497)
!2537 = !DILocation(line: 103, column: 27, scope: !2497)
!2538 = !DILocation(line: 103, column: 2, scope: !2497)
!2539 = !DILocation(line: 109, column: 19, scope: !2497)
!2540 = !DILocation(line: 109, column: 25, scope: !2497)
!2541 = !DILocation(line: 109, column: 2, scope: !2497)
!2542 = !DILocation(line: 109, column: 8, scope: !2497)
!2543 = !DILocation(line: 109, column: 12, scope: !2497)
!2544 = !DILocation(line: 109, column: 17, scope: !2497)
!2545 = !DILocation(line: 110, column: 2, scope: !2497)
!2546 = !DILocation(line: 110, column: 8, scope: !2497)
!2547 = !DILocation(line: 110, column: 12, scope: !2497)
!2548 = !DILocation(line: 110, column: 17, scope: !2497)
!2549 = !DILocation(line: 111, column: 35, scope: !2497)
!2550 = !DILocation(line: 111, column: 41, scope: !2497)
!2551 = !DILocation(line: 111, column: 19, scope: !2497)
!2552 = !DILocation(line: 111, column: 2, scope: !2497)
!2553 = !DILocation(line: 111, column: 8, scope: !2497)
!2554 = !DILocation(line: 111, column: 12, scope: !2497)
!2555 = !DILocation(line: 111, column: 17, scope: !2497)
!2556 = !DILocation(line: 112, column: 2, scope: !2497)
!2557 = !DILocation(line: 112, column: 8, scope: !2497)
!2558 = !DILocation(line: 112, column: 12, scope: !2497)
!2559 = !DILocation(line: 112, column: 20, scope: !2497)
!2560 = !DILocation(line: 114, column: 27, scope: !2497)
!2561 = !DILocation(line: 114, column: 33, scope: !2497)
!2562 = !DILocation(line: 114, column: 38, scope: !2497)
!2563 = !DILocation(line: 114, column: 2, scope: !2497)
!2564 = !DILocation(line: 116, column: 29, scope: !2497)
!2565 = !DILocation(line: 116, column: 35, scope: !2497)
!2566 = !DILocation(line: 116, column: 41, scope: !2497)
!2567 = !DILocation(line: 116, column: 47, scope: !2497)
!2568 = !DILocation(line: 116, column: 8, scope: !2497)
!2569 = !DILocation(line: 116, column: 6, scope: !2497)
!2570 = !DILocation(line: 117, column: 6, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 117, column: 6)
!2572 = !DILocation(line: 117, column: 6, scope: !2497)
!2573 = !DILocation(line: 118, column: 3, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 117, column: 11)
!2575 = !DILocation(line: 120, column: 23, scope: !2574)
!2576 = !DILocation(line: 120, column: 29, scope: !2574)
!2577 = !DILocation(line: 120, column: 3, scope: !2574)
!2578 = !DILocation(line: 121, column: 29, scope: !2574)
!2579 = !DILocation(line: 121, column: 35, scope: !2574)
!2580 = !DILocation(line: 121, column: 3, scope: !2574)
!2581 = !DILocation(line: 122, column: 10, scope: !2574)
!2582 = !DILocation(line: 122, column: 3, scope: !2574)
!2583 = !DILocation(line: 125, column: 2, scope: !2497)
!2584 = !DILocation(line: 126, column: 1, scope: !2497)
!2585 = distinct !DISubprogram(name: "npcm_rng_remove", scope: !3, file: !3, line: 128, type: !2428, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2586 = !DILocalVariable(name: "pdev", arg: 1, scope: !2585, file: !3, line: 128, type: !2430)
!2587 = !DILocation(line: 128, column: 52, scope: !2585)
!2588 = !DILocalVariable(name: "priv", scope: !2585, file: !3, line: 130, type: !86)
!2589 = !DILocation(line: 130, column: 19, scope: !2585)
!2590 = !DILocation(line: 130, column: 47, scope: !2585)
!2591 = !DILocation(line: 130, column: 26, scope: !2585)
!2592 = !DILocation(line: 132, column: 25, scope: !2585)
!2593 = !DILocation(line: 132, column: 31, scope: !2585)
!2594 = !DILocation(line: 132, column: 37, scope: !2585)
!2595 = !DILocation(line: 132, column: 43, scope: !2585)
!2596 = !DILocation(line: 132, column: 2, scope: !2585)
!2597 = !DILocation(line: 133, column: 22, scope: !2585)
!2598 = !DILocation(line: 133, column: 28, scope: !2585)
!2599 = !DILocation(line: 133, column: 2, scope: !2585)
!2600 = !DILocation(line: 134, column: 28, scope: !2585)
!2601 = !DILocation(line: 134, column: 34, scope: !2585)
!2602 = !DILocation(line: 134, column: 2, scope: !2585)
!2603 = !DILocation(line: 136, column: 2, scope: !2585)
!2604 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2605, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!84, !174, !125, !81}
!2607 = !DILocalVariable(name: "dev", arg: 1, scope: !2604, file: !30, line: 215, type: !174)
!2608 = !DILocation(line: 215, column: 49, scope: !2604)
!2609 = !DILocalVariable(name: "size", arg: 2, scope: !2604, file: !30, line: 215, type: !125)
!2610 = !DILocation(line: 215, column: 61, scope: !2604)
!2611 = !DILocalVariable(name: "gfp", arg: 3, scope: !2604, file: !30, line: 215, type: !81)
!2612 = !DILocation(line: 215, column: 73, scope: !2604)
!2613 = !DILocation(line: 217, column: 22, scope: !2604)
!2614 = !DILocation(line: 217, column: 27, scope: !2604)
!2615 = !DILocation(line: 217, column: 33, scope: !2604)
!2616 = !DILocation(line: 217, column: 37, scope: !2604)
!2617 = !DILocation(line: 217, column: 9, scope: !2604)
!2618 = !DILocation(line: 217, column: 2, scope: !2604)
!2619 = distinct !DISubprogram(name: "IS_ERR", scope: !2620, file: !2620, line: 34, type: !2621, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2620 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!129, !1166}
!2623 = !DILocalVariable(name: "ptr", arg: 1, scope: !2619, file: !2620, line: 34, type: !1166)
!2624 = !DILocation(line: 34, column: 60, scope: !2619)
!2625 = !DILocation(line: 36, column: 9, scope: !2619)
!2626 = !DILocation(line: 36, column: 2, scope: !2619)
!2627 = distinct !DISubprogram(name: "PTR_ERR", scope: !2620, file: !2620, line: 29, type: !2628, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!85, !1166}
!2630 = !DILocalVariable(name: "ptr", arg: 1, scope: !2627, file: !2620, line: 29, type: !1166)
!2631 = !DILocation(line: 29, column: 61, scope: !2627)
!2632 = !DILocation(line: 31, column: 16, scope: !2627)
!2633 = !DILocation(line: 31, column: 9, scope: !2627)
!2634 = !DILocation(line: 31, column: 2, scope: !2627)
!2635 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !2636, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{null, !174, !84}
!2638 = !DILocalVariable(name: "dev", arg: 1, scope: !2635, file: !30, line: 660, type: !174)
!2639 = !DILocation(line: 660, column: 51, scope: !2635)
!2640 = !DILocalVariable(name: "data", arg: 2, scope: !2635, file: !30, line: 660, type: !84)
!2641 = !DILocation(line: 660, column: 62, scope: !2635)
!2642 = !DILocation(line: 662, column: 21, scope: !2635)
!2643 = !DILocation(line: 662, column: 2, scope: !2635)
!2644 = !DILocation(line: 662, column: 7, scope: !2635)
!2645 = !DILocation(line: 662, column: 19, scope: !2635)
!2646 = !DILocation(line: 663, column: 1, scope: !2635)
!2647 = distinct !DISubprogram(name: "pm_runtime_use_autosuspend", scope: !2648, file: !2648, line: 537, type: !1653, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2648 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !DILocalVariable(name: "dev", arg: 1, scope: !2647, file: !2648, line: 537, type: !174)
!2650 = !DILocation(line: 537, column: 62, scope: !2647)
!2651 = !DILocation(line: 539, column: 31, scope: !2647)
!2652 = !DILocation(line: 539, column: 2, scope: !2647)
!2653 = !DILocation(line: 540, column: 1, scope: !2647)
!2654 = distinct !DISubprogram(name: "npcm_rng_read", scope: !3, file: !3, line: 53, type: !123, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2655 = !DILocalVariable(name: "rng", arg: 1, scope: !2654, file: !3, line: 53, type: !103)
!2656 = !DILocation(line: 53, column: 40, scope: !2654)
!2657 = !DILocalVariable(name: "buf", arg: 2, scope: !2654, file: !3, line: 53, type: !84)
!2658 = !DILocation(line: 53, column: 51, scope: !2654)
!2659 = !DILocalVariable(name: "max", arg: 3, scope: !2654, file: !3, line: 53, type: !125)
!2660 = !DILocation(line: 53, column: 63, scope: !2654)
!2661 = !DILocalVariable(name: "wait", arg: 4, scope: !2654, file: !3, line: 53, type: !129)
!2662 = !DILocation(line: 53, column: 73, scope: !2654)
!2663 = !DILocalVariable(name: "priv", scope: !2654, file: !3, line: 55, type: !86)
!2664 = !DILocation(line: 55, column: 19, scope: !2654)
!2665 = !DILocalVariable(name: "__mptr", scope: !2666, file: !3, line: 55, type: !84)
!2666 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 55, column: 26)
!2667 = !DILocation(line: 55, column: 26, scope: !2666)
!2668 = !DILocation(line: 55, column: 26, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 55, column: 26)
!2670 = !DILocalVariable(name: "retval", scope: !2654, file: !3, line: 56, type: !102)
!2671 = !DILocation(line: 56, column: 6, scope: !2654)
!2672 = !DILocalVariable(name: "ready", scope: !2654, file: !3, line: 57, type: !102)
!2673 = !DILocation(line: 57, column: 6, scope: !2654)
!2674 = !DILocation(line: 59, column: 39, scope: !2654)
!2675 = !DILocation(line: 59, column: 45, scope: !2654)
!2676 = !DILocation(line: 59, column: 49, scope: !2654)
!2677 = !DILocation(line: 59, column: 22, scope: !2654)
!2678 = !DILocation(line: 59, column: 2, scope: !2654)
!2679 = !DILocation(line: 61, column: 2, scope: !2654)
!2680 = !DILocation(line: 61, column: 9, scope: !2654)
!2681 = !DILocation(line: 62, column: 7, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 62, column: 7)
!2683 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 61, column: 14)
!2684 = !DILocation(line: 62, column: 7, scope: !2683)
!2685 = !DILocalVariable(name: "__timeout_us", scope: !2686, file: !3, line: 63, type: !336)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 63, column: 8)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 63, column: 8)
!2688 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 62, column: 13)
!2689 = !DILocation(line: 63, column: 8, scope: !2686)
!2690 = !DILocalVariable(name: "__sleep_us", scope: !2686, file: !3, line: 63, type: !83)
!2691 = !DILocalVariable(name: "__timeout", scope: !2686, file: !3, line: 63, type: !552)
!2692 = !DILocation(line: 63, column: 8, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 63, column: 8)
!2694 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 63, column: 8)
!2695 = !DILocation(line: 63, column: 8, scope: !2694)
!2696 = !DILocation(line: 63, column: 8, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 63, column: 8)
!2698 = !DILocation(line: 63, column: 8, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 63, column: 8)
!2700 = !DILocation(line: 63, column: 8, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 63, column: 8)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 63, column: 8)
!2703 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 63, column: 8)
!2704 = !DILocation(line: 63, column: 8, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 63, column: 8)
!2706 = !DILocation(line: 63, column: 8, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 63, column: 8)
!2708 = !DILocation(line: 63, column: 8, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 63, column: 8)
!2710 = !DILocation(line: 63, column: 8, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 63, column: 8)
!2712 = !DILocation(line: 63, column: 8, scope: !2702)
!2713 = distinct !{!2713, !2714, !2714}
!2714 = !DILocation(line: 63, column: 8, scope: !2703)
!2715 = !DILocation(line: 63, column: 8, scope: !2687)
!2716 = !DILocation(line: 63, column: 8, scope: !2688)
!2717 = !DILocation(line: 68, column: 5, scope: !2687)
!2718 = !DILocation(line: 69, column: 3, scope: !2688)
!2719 = !DILocation(line: 70, column: 15, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 70, column: 8)
!2721 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 69, column: 10)
!2722 = !DILocation(line: 70, column: 21, scope: !2720)
!2723 = !DILocation(line: 70, column: 26, scope: !2720)
!2724 = !DILocation(line: 70, column: 9, scope: !2720)
!2725 = !DILocation(line: 70, column: 44, scope: !2720)
!2726 = !DILocation(line: 71, column: 29, scope: !2720)
!2727 = !DILocation(line: 70, column: 8, scope: !2721)
!2728 = !DILocation(line: 72, column: 5, scope: !2720)
!2729 = !DILocation(line: 75, column: 22, scope: !2683)
!2730 = !DILocation(line: 75, column: 28, scope: !2683)
!2731 = !DILocation(line: 75, column: 33, scope: !2683)
!2732 = !DILocation(line: 75, column: 16, scope: !2683)
!2733 = !DILocation(line: 75, column: 10, scope: !2683)
!2734 = !DILocation(line: 75, column: 14, scope: !2683)
!2735 = !DILocation(line: 76, column: 9, scope: !2683)
!2736 = !DILocation(line: 77, column: 6, scope: !2683)
!2737 = !DILocation(line: 78, column: 6, scope: !2683)
!2738 = distinct !{!2738, !2679, !2739}
!2739 = !DILocation(line: 79, column: 2, scope: !2654)
!2740 = !DILocation(line: 81, column: 45, scope: !2654)
!2741 = !DILocation(line: 81, column: 51, scope: !2654)
!2742 = !DILocation(line: 81, column: 55, scope: !2654)
!2743 = !DILocation(line: 81, column: 28, scope: !2654)
!2744 = !DILocation(line: 81, column: 2, scope: !2654)
!2745 = !DILocation(line: 82, column: 51, scope: !2654)
!2746 = !DILocation(line: 82, column: 57, scope: !2654)
!2747 = !DILocation(line: 82, column: 61, scope: !2654)
!2748 = !DILocation(line: 82, column: 34, scope: !2654)
!2749 = !DILocation(line: 82, column: 2, scope: !2654)
!2750 = !DILocation(line: 84, column: 9, scope: !2654)
!2751 = !DILocation(line: 84, column: 16, scope: !2654)
!2752 = !DILocation(line: 84, column: 20, scope: !2654)
!2753 = !DILocation(line: 84, column: 27, scope: !2654)
!2754 = !DILocation(line: 84, column: 2, scope: !2654)
!2755 = distinct !DISubprogram(name: "writel", scope: !2756, file: !2756, line: 67, type: !2757, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2756 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!2757 = !DISubroutineType(types: !2758)
!2758 = !{null, !7, !2759}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2761 = !DILocalVariable(name: "val", arg: 1, scope: !2755, file: !2756, line: 67, type: !7)
!2762 = !DILocation(line: 67, column: 1, scope: !2755)
!2763 = !DILocalVariable(name: "addr", arg: 2, scope: !2755, file: !2756, line: 67, type: !2759)
!2764 = !{i32 -2144320275}
!2765 = distinct !DISubprogram(name: "pm_runtime_disable", scope: !2648, file: !2648, line: 524, type: !1653, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2766 = !DILocalVariable(name: "dev", arg: 1, scope: !2765, file: !2648, line: 524, type: !174)
!2767 = !DILocation(line: 524, column: 54, scope: !2765)
!2768 = !DILocation(line: 526, column: 23, scope: !2765)
!2769 = !DILocation(line: 526, column: 2, scope: !2765)
!2770 = !DILocation(line: 527, column: 1, scope: !2765)
!2771 = distinct !DISubprogram(name: "pm_runtime_set_suspended", scope: !2648, file: !2648, line: 509, type: !1662, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2772 = !DILocalVariable(name: "dev", arg: 1, scope: !2771, file: !2648, line: 509, type: !174)
!2773 = !DILocation(line: 509, column: 59, scope: !2771)
!2774 = !DILocation(line: 511, column: 33, scope: !2771)
!2775 = !DILocation(line: 511, column: 9, scope: !2771)
!2776 = !DILocation(line: 511, column: 2, scope: !2771)
!2777 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !2648, file: !2648, line: 384, type: !1662, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2778 = !DILocalVariable(name: "dev", arg: 1, scope: !2777, file: !2648, line: 384, type: !174)
!2779 = !DILocation(line: 384, column: 54, scope: !2777)
!2780 = !DILocation(line: 386, column: 29, scope: !2777)
!2781 = !DILocation(line: 386, column: 9, scope: !2777)
!2782 = !DILocation(line: 386, column: 2, scope: !2777)
!2783 = distinct !DISubprogram(name: "ktime_add_us", scope: !553, file: !553, line: 179, type: !2784, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!552, !2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!2788 = !DILocalVariable(name: "kt", arg: 1, scope: !2783, file: !553, line: 179, type: !2786)
!2789 = !DILocation(line: 179, column: 50, scope: !2783)
!2790 = !DILocalVariable(name: "usec", arg: 2, scope: !2783, file: !553, line: 179, type: !2787)
!2791 = !DILocation(line: 179, column: 64, scope: !2783)
!2792 = !DILocation(line: 181, column: 9, scope: !2783)
!2793 = !DILocation(line: 181, column: 2, scope: !2783)
!2794 = distinct !DISubprogram(name: "readb", scope: !2756, file: !2756, line: 57, type: !2795, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!615, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2760)
!2799 = !DILocalVariable(name: "addr", arg: 1, scope: !2794, file: !2756, line: 57, type: !2797)
!2800 = !DILocation(line: 57, column: 1, scope: !2794)
!2801 = !DILocalVariable(name: "ret", scope: !2794, file: !2756, line: 57, type: !615)
!2802 = !{i32 -2144323499}
!2803 = distinct !DISubprogram(name: "ktime_compare", scope: !553, file: !553, line: 95, type: !2804, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!102, !2786, !2786}
!2806 = !DILocalVariable(name: "cmp1", arg: 1, scope: !2803, file: !553, line: 95, type: !2786)
!2807 = !DILocation(line: 95, column: 47, scope: !2803)
!2808 = !DILocalVariable(name: "cmp2", arg: 2, scope: !2803, file: !553, line: 95, type: !2786)
!2809 = !DILocation(line: 95, column: 67, scope: !2803)
!2810 = !DILocation(line: 97, column: 6, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2803, file: !553, line: 97, column: 6)
!2812 = !DILocation(line: 97, column: 13, scope: !2811)
!2813 = !DILocation(line: 97, column: 11, scope: !2811)
!2814 = !DILocation(line: 97, column: 6, scope: !2803)
!2815 = !DILocation(line: 98, column: 3, scope: !2811)
!2816 = !DILocation(line: 99, column: 6, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2803, file: !553, line: 99, column: 6)
!2818 = !DILocation(line: 99, column: 13, scope: !2817)
!2819 = !DILocation(line: 99, column: 11, scope: !2817)
!2820 = !DILocation(line: 99, column: 6, scope: !2803)
!2821 = !DILocation(line: 100, column: 3, scope: !2817)
!2822 = !DILocation(line: 101, column: 2, scope: !2803)
!2823 = !DILocation(line: 102, column: 1, scope: !2803)
!2824 = distinct !DISubprogram(name: "pm_runtime_mark_last_busy", scope: !2648, file: !2648, line: 194, type: !1653, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2825 = !DILocalVariable(name: "dev", arg: 1, scope: !2824, file: !2648, line: 194, type: !174)
!2826 = !DILocation(line: 194, column: 61, scope: !2824)
!2827 = !DILocation(line: 196, column: 2, scope: !2824)
!2828 = !DILocation(line: 196, column: 2, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2824, file: !2648, line: 196, column: 2)
!2830 = !DILocation(line: 196, column: 2, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2829, file: !2648, line: 196, column: 2)
!2832 = !DILocation(line: 196, column: 2, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2829, file: !2648, line: 196, column: 2)
!2834 = !DILocation(line: 197, column: 1, scope: !2824)
!2835 = distinct !DISubprogram(name: "pm_runtime_put_sync_autosuspend", scope: !2648, file: !2648, line: 481, type: !1662, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2836 = !DILocalVariable(name: "dev", arg: 1, scope: !2835, file: !2648, line: 481, type: !174)
!2837 = !DILocation(line: 481, column: 66, scope: !2835)
!2838 = !DILocation(line: 483, column: 30, scope: !2835)
!2839 = !DILocation(line: 483, column: 9, scope: !2835)
!2840 = !DILocation(line: 483, column: 2, scope: !2835)
!2841 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !2424, file: !2424, line: 231, type: !2842, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!84, !2844}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2431)
!2846 = !DILocalVariable(name: "pdev", arg: 1, scope: !2841, file: !2424, line: 231, type: !2844)
!2847 = !DILocation(line: 231, column: 72, scope: !2841)
!2848 = !DILocation(line: 233, column: 26, scope: !2841)
!2849 = !DILocation(line: 233, column: 32, scope: !2841)
!2850 = !DILocation(line: 233, column: 9, scope: !2841)
!2851 = !DILocation(line: 233, column: 2, scope: !2841)
!2852 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2853, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!84, !1963}
!2855 = !DILocalVariable(name: "dev", arg: 1, scope: !2852, file: !30, line: 655, type: !1963)
!2856 = !DILocation(line: 655, column: 58, scope: !2852)
!2857 = !DILocation(line: 657, column: 9, scope: !2852)
!2858 = !DILocation(line: 657, column: 14, scope: !2852)
!2859 = !DILocation(line: 657, column: 2, scope: !2852)
!2860 = distinct !DISubprogram(name: "npcm_rng_runtime_suspend", scope: !3, file: !3, line: 140, type: !1662, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2861 = !DILocalVariable(name: "dev", arg: 1, scope: !2860, file: !3, line: 140, type: !174)
!2862 = !DILocation(line: 140, column: 52, scope: !2860)
!2863 = !DILocalVariable(name: "priv", scope: !2860, file: !3, line: 142, type: !86)
!2864 = !DILocation(line: 142, column: 19, scope: !2860)
!2865 = !DILocation(line: 142, column: 42, scope: !2860)
!2866 = !DILocation(line: 142, column: 26, scope: !2860)
!2867 = !DILocation(line: 144, column: 20, scope: !2860)
!2868 = !DILocation(line: 144, column: 26, scope: !2860)
!2869 = !DILocation(line: 144, column: 2, scope: !2860)
!2870 = !DILocation(line: 146, column: 2, scope: !2860)
!2871 = distinct !DISubprogram(name: "npcm_rng_runtime_resume", scope: !3, file: !3, line: 149, type: !1662, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2872 = !DILocalVariable(name: "dev", arg: 1, scope: !2871, file: !3, line: 149, type: !174)
!2873 = !DILocation(line: 149, column: 51, scope: !2871)
!2874 = !DILocalVariable(name: "priv", scope: !2871, file: !3, line: 151, type: !86)
!2875 = !DILocation(line: 151, column: 19, scope: !2871)
!2876 = !DILocation(line: 151, column: 42, scope: !2871)
!2877 = !DILocation(line: 151, column: 26, scope: !2871)
!2878 = !DILocation(line: 153, column: 24, scope: !2871)
!2879 = !DILocation(line: 153, column: 30, scope: !2871)
!2880 = !DILocation(line: 153, column: 9, scope: !2871)
!2881 = !DILocation(line: 153, column: 2, scope: !2871)
!2882 = distinct !DISubprogram(name: "npcm_rng_cleanup", scope: !3, file: !3, line: 46, type: !106, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2883 = !DILocalVariable(name: "rng", arg: 1, scope: !2882, file: !3, line: 46, type: !103)
!2884 = !DILocation(line: 46, column: 44, scope: !2882)
!2885 = !DILocalVariable(name: "priv", scope: !2882, file: !3, line: 48, type: !86)
!2886 = !DILocation(line: 48, column: 19, scope: !2882)
!2887 = !DILocalVariable(name: "__mptr", scope: !2888, file: !3, line: 48, type: !84)
!2888 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 48, column: 26)
!2889 = !DILocation(line: 48, column: 26, scope: !2888)
!2890 = !DILocation(line: 48, column: 26, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 48, column: 26)
!2892 = !DILocation(line: 50, column: 33, scope: !2882)
!2893 = !DILocation(line: 50, column: 39, scope: !2882)
!2894 = !DILocation(line: 50, column: 44, scope: !2882)
!2895 = !DILocation(line: 50, column: 2, scope: !2882)
!2896 = !DILocation(line: 51, column: 1, scope: !2882)
!2897 = distinct !DISubprogram(name: "npcm_rng_init", scope: !3, file: !3, line: 36, type: !100, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!2898 = !DILocalVariable(name: "rng", arg: 1, scope: !2897, file: !3, line: 36, type: !103)
!2899 = !DILocation(line: 36, column: 40, scope: !2897)
!2900 = !DILocalVariable(name: "priv", scope: !2897, file: !3, line: 38, type: !86)
!2901 = !DILocation(line: 38, column: 19, scope: !2897)
!2902 = !DILocalVariable(name: "__mptr", scope: !2903, file: !3, line: 38, type: !84)
!2903 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 38, column: 26)
!2904 = !DILocation(line: 38, column: 26, scope: !2903)
!2905 = !DILocation(line: 38, column: 26, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 38, column: 26)
!2907 = !DILocation(line: 41, column: 9, scope: !2897)
!2908 = !DILocation(line: 41, column: 15, scope: !2897)
!2909 = !DILocation(line: 41, column: 20, scope: !2897)
!2910 = !DILocation(line: 40, column: 2, scope: !2897)
!2911 = !DILocation(line: 43, column: 2, scope: !2897)
