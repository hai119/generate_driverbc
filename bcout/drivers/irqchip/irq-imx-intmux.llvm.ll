; ModuleID = '../bcout/drivers/irqchip/irq-imx-intmux.llvm.bc'
source_filename = "drivers/irqchip/irq-imx-intmux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_imx_intmux_driver_init6:\09\09\09"
module asm ".long\09imx_intmux_driver_init - .\09\09\09"
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
%struct.vdso_image = type opaque
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
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry* }
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
%struct.intmux_data = type { %struct.raw_spinlock, i8*, %struct.clk*, i32, [0 x %struct.intmux_irqchip_data] }
%struct.clk = type opaque
%struct.intmux_irqchip_data = type { %struct.irq_chip, i32, i32, i32, %struct.irq_domain* }

@__UNIQUE_ID___addressable_imx_intmux_driver_init167 = internal global i8* bitcast (i32 ()* @imx_intmux_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@imx_intmux_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @imx_intmux_probe, i32 (%struct.platform_device*)* @imx_intmux_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @imx_intmux_id, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @imx_intmux_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2411
@.str = private unnamed_addr constant [11 x i8] c"imx-intmux\00", align 1
@imx_intmux_id = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-intmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2475
@imx_intmux_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @pm_runtime_force_suspend, i32 (%struct.device*)* @pm_runtime_force_resume, i32 (%struct.device*)* @pm_runtime_force_suspend, i32 (%struct.device*)* @pm_runtime_force_resume, i32 (%struct.device*)* @pm_runtime_force_suspend, i32 (%struct.device*)* @pm_runtime_force_resume, i32 (%struct.device*)* @imx_intmux_runtime_suspend, i32 (%struct.device*)* @imx_intmux_runtime_resume, i32 (%struct.device*)* null }, align 8, !dbg !2478
@.str.1 = private unnamed_addr constant [38 x i8] c"supports up to %d multiplex channels\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to initialize reg\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to get ipg clk\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to enable ipg clk: %d\0A\00", align 1
@imx_intmux_irq_chip = internal global %struct.irq_chip { %struct.device* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @imx_intmux_irq_mask, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @imx_intmux_irq_unmask, void (%struct.irq_data*)* null, i32 (%struct.irq_data*, %struct.cpumask*, i1)* null, i32 (%struct.irq_data*)* null, i32 (%struct.irq_data*, i32)* null, i32 (%struct.irq_data*, i32)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.seq_file*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, i32 (%struct.irq_data*, i32, i8*)* null, i32 (%struct.irq_data*, i32, i1)* null, i32 (%struct.irq_data*, i8*)* null, void (%struct.irq_data*, i32)* null, void (%struct.irq_data*, %struct.cpumask*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, i64 0 }, align 8, !dbg !2471
@.str.6 = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@imx_intmux_domain_ops = internal constant %struct.irq_domain_ops { i32 (%struct.irq_domain*, %struct.device_node*, i32)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)* @imx_intmux_irq_select, i32 (%struct.irq_domain*, i32, i64)* @imx_intmux_irq_map, void (%struct.irq_domain*, i32)* null, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* @imx_intmux_irq_xlate, i32 (%struct.irq_domain*, i32, i32, i8*)* null, void (%struct.irq_domain*, i32, i32)* null, i32 (%struct.irq_domain*, %struct.irq_data*, i1)* null, void (%struct.irq_domain*, %struct.irq_data*)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* null }, align 8, !dbg !2473
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"intmux\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"drivers/irqchip/irq-imx-intmux.c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_imx_intmux_driver_init167 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_intmux_driver_init() #0 section ".init.text" !dbg !2486 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @imx_intmux_driver, %struct.module* null) #8, !dbg !2489
  ret i32 %call, !dbg !2489
}

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_intmux_probe(%struct.platform_device* %pdev) #2 !dbg !2490 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %np = alloca %struct.device_node*, align 8
  %domain = alloca %struct.irq_domain*, align 8
  %data = alloca %struct.intmux_data*, align 8
  %channum = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.raw_spinlock, align 1
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2491, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !2493, metadata !DIExpression()), !dbg !2494
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2495
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2496
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !2497
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2497
  store %struct.device_node* %1, %struct.device_node** %np, align 8, !dbg !2494
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %domain, metadata !2498, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.declare(metadata %struct.intmux_data** %data, metadata !2500, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.declare(metadata i32* %channum, metadata !2502, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2504, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2506, metadata !DIExpression()), !dbg !2507
  %2 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2508
  %call = call i32 @platform_irq_count(%struct.platform_device* %2) #8, !dbg !2509
  store i32 %call, i32* %channum, align 4, !dbg !2510
  %3 = load i32, i32* %channum, align 4, !dbg !2511
  %cmp = icmp eq i32 %3, -517, !dbg !2513
  br i1 %cmp, label %if.then, label %if.else, !dbg !2514

if.then:                                          ; preds = %entry
  store i32 -517, i32* %retval, align 4, !dbg !2515
  br label %return, !dbg !2515

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %channum, align 4, !dbg !2517
  %cmp1 = icmp sgt i32 %4, 8, !dbg !2519
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2520

if.then2:                                         ; preds = %if.else
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2521
  %dev3 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 3, !dbg !2521
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 8) #9, !dbg !2521
  store i32 -22, i32* %retval, align 4, !dbg !2523
  br label %return, !dbg !2523

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  %6 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2524
  %dev5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 3, !dbg !2525
  %7 = load i32, i32* %channum, align 4, !dbg !2526
  %conv = sext i32 %7 to i64, !dbg !2526
  %call6 = call i64 @__ab_c_size(i64 %conv, i64 312, i64 24) #8, !dbg !2526
  %call7 = call i8* @devm_kzalloc(%struct.device* %dev5, i64 %call6, i32 3264) #8, !dbg !2527
  %8 = bitcast i8* %call7 to %struct.intmux_data*, !dbg !2527
  store %struct.intmux_data* %8, %struct.intmux_data** %data, align 8, !dbg !2528
  %9 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2529
  %tobool = icmp ne %struct.intmux_data* %9, null, !dbg !2529
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !2531

if.then8:                                         ; preds = %if.end4
  store i32 -12, i32* %retval, align 4, !dbg !2532
  br label %return, !dbg !2532

if.end9:                                          ; preds = %if.end4
  %10 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2533
  %call10 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %10, i32 0) #8, !dbg !2534
  %11 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2535
  %regs = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %11, i32 0, i32 1, !dbg !2536
  store i8* %call10, i8** %regs, align 8, !dbg !2537
  %12 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2538
  %regs11 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %12, i32 0, i32 1, !dbg !2540
  %13 = load i8*, i8** %regs11, align 8, !dbg !2540
  %call12 = call zeroext i1 @IS_ERR(i8* %13) #8, !dbg !2541
  br i1 %call12, label %if.then13, label %if.end18, !dbg !2542

if.then13:                                        ; preds = %if.end9
  %14 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2543
  %dev14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 3, !dbg !2543
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2543
  %15 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2545
  %regs15 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %15, i32 0, i32 1, !dbg !2546
  %16 = load i8*, i8** %regs15, align 8, !dbg !2546
  %call16 = call i64 @PTR_ERR(i8* %16) #8, !dbg !2547
  %conv17 = trunc i64 %call16 to i32, !dbg !2547
  store i32 %conv17, i32* %retval, align 4, !dbg !2548
  br label %return, !dbg !2548

if.end18:                                         ; preds = %if.end9
  %17 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2549
  %dev19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 3, !dbg !2550
  %call20 = call %struct.clk* @devm_clk_get(%struct.device* %dev19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !2551
  %18 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2552
  %ipg_clk = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %18, i32 0, i32 2, !dbg !2553
  store %struct.clk* %call20, %struct.clk** %ipg_clk, align 8, !dbg !2554
  %19 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2555
  %ipg_clk21 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %19, i32 0, i32 2, !dbg !2557
  %20 = load %struct.clk*, %struct.clk** %ipg_clk21, align 8, !dbg !2557
  %21 = bitcast %struct.clk* %20 to i8*, !dbg !2555
  %call22 = call zeroext i1 @IS_ERR(i8* %21) #8, !dbg !2558
  br i1 %call22, label %if.then23, label %if.end29, !dbg !2559

if.then23:                                        ; preds = %if.end18
  %22 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2560
  %dev24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 3, !dbg !2561
  %23 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2562
  %ipg_clk25 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %23, i32 0, i32 2, !dbg !2563
  %24 = load %struct.clk*, %struct.clk** %ipg_clk25, align 8, !dbg !2563
  %25 = bitcast %struct.clk* %24 to i8*, !dbg !2562
  %call26 = call i64 @PTR_ERR(i8* %25) #8, !dbg !2564
  %conv27 = trunc i64 %call26 to i32, !dbg !2564
  %call28 = call i32 (%struct.device*, i32, i8*, ...) @dev_err_probe(%struct.device* %dev24, i32 %conv27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !2565
  store i32 %call28, i32* %retval, align 4, !dbg !2566
  br label %return, !dbg !2566

if.end29:                                         ; preds = %if.end18
  %26 = load i32, i32* %channum, align 4, !dbg !2567
  %27 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2568
  %channum30 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %27, i32 0, i32 3, !dbg !2569
  store i32 %26, i32* %channum30, align 8, !dbg !2570
  br label %do.body, !dbg !2571

do.body:                                          ; preds = %if.end29
  %28 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2572
  %lock = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %28, i32 0, i32 0, !dbg !2572
  %29 = bitcast %struct.raw_spinlock* %lock to i8*, !dbg !2572
  %30 = bitcast %struct.raw_spinlock* %.compoundliteral to i8*, !dbg !2572
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 1 %30, i64 0, i1 false), !dbg !2572
  br label %do.end, !dbg !2572

do.end:                                           ; preds = %do.body
  %31 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2574
  %dev31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 3, !dbg !2575
  call void @pm_runtime_get_noresume(%struct.device* %dev31) #8, !dbg !2576
  %32 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2577
  %dev32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 3, !dbg !2578
  %call33 = call i32 @pm_runtime_set_active(%struct.device* %dev32) #8, !dbg !2579
  %33 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2580
  %dev34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 3, !dbg !2581
  call void @pm_runtime_enable(%struct.device* %dev34) #8, !dbg !2582
  %34 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2583
  %ipg_clk35 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %34, i32 0, i32 2, !dbg !2584
  %35 = load %struct.clk*, %struct.clk** %ipg_clk35, align 8, !dbg !2584
  %call36 = call i32 @clk_prepare_enable(%struct.clk* %35) #8, !dbg !2585
  store i32 %call36, i32* %ret, align 4, !dbg !2586
  %36 = load i32, i32* %ret, align 4, !dbg !2587
  %tobool37 = icmp ne i32 %36, 0, !dbg !2587
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !2589

if.then38:                                        ; preds = %do.end
  %37 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2590
  %dev39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 3, !dbg !2590
  %38 = load i32, i32* %ret, align 4, !dbg !2590
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %38) #9, !dbg !2590
  %39 = load i32, i32* %ret, align 4, !dbg !2592
  store i32 %39, i32* %retval, align 4, !dbg !2593
  br label %return, !dbg !2593

if.end40:                                         ; preds = %do.end
  store i32 0, i32* %i, align 4, !dbg !2594
  br label %for.cond, !dbg !2596

for.cond:                                         ; preds = %for.inc, %if.end40
  %40 = load i32, i32* %i, align 4, !dbg !2597
  %41 = load i32, i32* %channum, align 4, !dbg !2599
  %cmp41 = icmp slt i32 %40, %41, !dbg !2600
  br i1 %cmp41, label %for.body, label %for.end, !dbg !2601

for.body:                                         ; preds = %for.cond
  %42 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2602
  %irqchip_data = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %42, i32 0, i32 4, !dbg !2604
  %43 = load i32, i32* %i, align 4, !dbg !2605
  %idxprom = sext i32 %43 to i64, !dbg !2602
  %arrayidx = getelementptr [0 x %struct.intmux_irqchip_data], [0 x %struct.intmux_irqchip_data]* %irqchip_data, i64 0, i64 %idxprom, !dbg !2602
  %chip = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %arrayidx, i32 0, i32 0, !dbg !2606
  %44 = bitcast %struct.irq_chip* %chip to i8*, !dbg !2607
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 bitcast (%struct.irq_chip* @imx_intmux_irq_chip to i8*), i64 288, i1 false), !dbg !2607
  %45 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2608
  %dev43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 3, !dbg !2609
  %46 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2610
  %irqchip_data44 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %46, i32 0, i32 4, !dbg !2611
  %47 = load i32, i32* %i, align 4, !dbg !2612
  %idxprom45 = sext i32 %47 to i64, !dbg !2610
  %arrayidx46 = getelementptr [0 x %struct.intmux_irqchip_data], [0 x %struct.intmux_irqchip_data]* %irqchip_data44, i64 0, i64 %idxprom45, !dbg !2610
  %chip47 = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %arrayidx46, i32 0, i32 0, !dbg !2613
  %parent_device = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip47, i32 0, i32 0, !dbg !2614
  store %struct.device* %dev43, %struct.device** %parent_device, align 8, !dbg !2615
  %48 = load i32, i32* %i, align 4, !dbg !2616
  %49 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2617
  %irqchip_data48 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %49, i32 0, i32 4, !dbg !2618
  %50 = load i32, i32* %i, align 4, !dbg !2619
  %idxprom49 = sext i32 %50 to i64, !dbg !2617
  %arrayidx50 = getelementptr [0 x %struct.intmux_irqchip_data], [0 x %struct.intmux_irqchip_data]* %irqchip_data48, i64 0, i64 %idxprom49, !dbg !2617
  %chanidx = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %arrayidx50, i32 0, i32 2, !dbg !2620
  store i32 %48, i32* %chanidx, align 4, !dbg !2621
  %51 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2622
  %52 = load i32, i32* %i, align 4, !dbg !2623
  %call51 = call i32 @irq_of_parse_and_map(%struct.device_node* %51, i32 %52) #8, !dbg !2624
  %53 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2625
  %irqchip_data52 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %53, i32 0, i32 4, !dbg !2626
  %54 = load i32, i32* %i, align 4, !dbg !2627
  %idxprom53 = sext i32 %54 to i64, !dbg !2625
  %arrayidx54 = getelementptr [0 x %struct.intmux_irqchip_data], [0 x %struct.intmux_irqchip_data]* %irqchip_data52, i64 0, i64 %idxprom53, !dbg !2625
  %irq = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %arrayidx54, i32 0, i32 3, !dbg !2628
  store i32 %call51, i32* %irq, align 8, !dbg !2629
  %55 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2630
  %irqchip_data55 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %55, i32 0, i32 4, !dbg !2632
  %56 = load i32, i32* %i, align 4, !dbg !2633
  %idxprom56 = sext i32 %56 to i64, !dbg !2630
  %arrayidx57 = getelementptr [0 x %struct.intmux_irqchip_data], [0 x %struct.intmux_irqchip_data]* %irqchip_data55, i64 0, i64 %idxprom56, !dbg !2630
  %irq58 = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %arrayidx57, i32 0, i32 3, !dbg !2634
  %57 = load i32, i32* %irq58, align 8, !dbg !2634
  %cmp59 = icmp sle i32 %57, 0, !dbg !2635
  br i1 %cmp59, label %if.then61, label %if.end63, !dbg !2636

if.then61:                                        ; preds = %for.body
  store i32 -22, i32* %ret, align 4, !dbg !2637
  %58 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2639
  %dev62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 3, !dbg !2639
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !2639
  br label %out, !dbg !2640

if.end63:                                         ; preds = %for.body
  %59 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2641
  %60 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2642
  %irqchip_data64 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %60, i32 0, i32 4, !dbg !2643
  %61 = load i32, i32* %i, align 4, !dbg !2644
  %idxprom65 = sext i32 %61 to i64, !dbg !2642
  %arrayidx66 = getelementptr [0 x %struct.intmux_irqchip_data], [0 x %struct.intmux_irqchip_data]* %irqchip_data64, i64 0, i64 %idxprom65, !dbg !2642
  %62 = bitcast %struct.intmux_irqchip_data* %arrayidx66 to i8*, !dbg !2645
  %call67 = call %struct.irq_domain* @irq_domain_add_linear(%struct.device_node* %59, i32 32, %struct.irq_domain_ops* @imx_intmux_domain_ops, i8* %62) #8, !dbg !2646
  store %struct.irq_domain* %call67, %struct.irq_domain** %domain, align 8, !dbg !2647
  %63 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8, !dbg !2648
  %tobool68 = icmp ne %struct.irq_domain* %63, null, !dbg !2648
  br i1 %tobool68, label %if.end71, label %if.then69, !dbg !2650

if.then69:                                        ; preds = %if.end63
  store i32 -12, i32* %ret, align 4, !dbg !2651
  %64 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2653
  %dev70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 3, !dbg !2653
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !2653
  br label %out, !dbg !2654

if.end71:                                         ; preds = %if.end63
  %65 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8, !dbg !2655
  %66 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2656
  %irqchip_data72 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %66, i32 0, i32 4, !dbg !2657
  %67 = load i32, i32* %i, align 4, !dbg !2658
  %idxprom73 = sext i32 %67 to i64, !dbg !2656
  %arrayidx74 = getelementptr [0 x %struct.intmux_irqchip_data], [0 x %struct.intmux_irqchip_data]* %irqchip_data72, i64 0, i64 %idxprom73, !dbg !2656
  %domain75 = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %arrayidx74, i32 0, i32 4, !dbg !2659
  store %struct.irq_domain* %65, %struct.irq_domain** %domain75, align 8, !dbg !2660
  %68 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2661
  %regs76 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %68, i32 0, i32 1, !dbg !2661
  %69 = load i8*, i8** %regs76, align 8, !dbg !2661
  %70 = load i32, i32* %i, align 4, !dbg !2661
  %mul = mul i32 64, %70, !dbg !2661
  %add = add i32 16, %mul, !dbg !2661
  %idx.ext = sext i32 %add to i64, !dbg !2661
  %add.ptr = getelementptr i8, i8* %69, i64 %idx.ext, !dbg !2661
  call void @__writel(i32 0, i8* %add.ptr) #8, !dbg !2661
  %71 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2662
  %irqchip_data77 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %71, i32 0, i32 4, !dbg !2663
  %72 = load i32, i32* %i, align 4, !dbg !2664
  %idxprom78 = sext i32 %72 to i64, !dbg !2662
  %arrayidx79 = getelementptr [0 x %struct.intmux_irqchip_data], [0 x %struct.intmux_irqchip_data]* %irqchip_data77, i64 0, i64 %idxprom78, !dbg !2662
  %irq80 = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %arrayidx79, i32 0, i32 3, !dbg !2665
  %73 = load i32, i32* %irq80, align 8, !dbg !2665
  %74 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2666
  %irqchip_data81 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %74, i32 0, i32 4, !dbg !2667
  %75 = load i32, i32* %i, align 4, !dbg !2668
  %idxprom82 = sext i32 %75 to i64, !dbg !2666
  %arrayidx83 = getelementptr [0 x %struct.intmux_irqchip_data], [0 x %struct.intmux_irqchip_data]* %irqchip_data81, i64 0, i64 %idxprom82, !dbg !2666
  %76 = bitcast %struct.intmux_irqchip_data* %arrayidx83 to i8*, !dbg !2669
  call void @irq_set_chained_handler_and_data(i32 %73, void (%struct.irq_desc*)* @imx_intmux_irq_handler, i8* %76) #8, !dbg !2670
  br label %for.inc, !dbg !2671

for.inc:                                          ; preds = %if.end71
  %77 = load i32, i32* %i, align 4, !dbg !2672
  %inc = add i32 %77, 1, !dbg !2672
  store i32 %inc, i32* %i, align 4, !dbg !2672
  br label %for.cond, !dbg !2673, !llvm.loop !2674

for.end:                                          ; preds = %for.cond
  %78 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2676
  %79 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2677
  %80 = bitcast %struct.intmux_data* %79 to i8*, !dbg !2677
  call void @platform_set_drvdata(%struct.platform_device* %78, i8* %80) #8, !dbg !2678
  %81 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2679
  %dev84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 3, !dbg !2680
  %call85 = call i32 @pm_runtime_put(%struct.device* %dev84) #8, !dbg !2681
  store i32 0, i32* %retval, align 4, !dbg !2682
  br label %return, !dbg !2682

out:                                              ; preds = %if.then69, %if.then61
  call void @llvm.dbg.label(metadata !2683), !dbg !2684
  %82 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2685
  %ipg_clk86 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %82, i32 0, i32 2, !dbg !2686
  %83 = load %struct.clk*, %struct.clk** %ipg_clk86, align 8, !dbg !2686
  call void @clk_disable_unprepare(%struct.clk* %83) #8, !dbg !2687
  %84 = load i32, i32* %ret, align 4, !dbg !2688
  store i32 %84, i32* %retval, align 4, !dbg !2689
  br label %return, !dbg !2689

return:                                           ; preds = %out, %for.end, %if.then38, %if.then23, %if.then13, %if.then8, %if.then2, %if.then
  %85 = load i32, i32* %retval, align 4, !dbg !2690
  ret i32 %85, !dbg !2690
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_intmux_remove(%struct.platform_device* %pdev) #2 !dbg !2691 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data = alloca %struct.intmux_data*, align 8
  %i = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2692, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.declare(metadata %struct.intmux_data** %data, metadata !2694, metadata !DIExpression()), !dbg !2695
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2696
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #8, !dbg !2697
  %1 = bitcast i8* %call to %struct.intmux_data*, !dbg !2697
  store %struct.intmux_data* %1, %struct.intmux_data** %data, align 8, !dbg !2695
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2698, metadata !DIExpression()), !dbg !2699
  store i32 0, i32* %i, align 4, !dbg !2700
  br label %for.cond, !dbg !2702

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !2703
  %3 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2705
  %channum = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %3, i32 0, i32 3, !dbg !2706
  %4 = load i32, i32* %channum, align 8, !dbg !2706
  %cmp = icmp slt i32 %2, %4, !dbg !2707
  br i1 %cmp, label %for.body, label %for.end, !dbg !2708

for.body:                                         ; preds = %for.cond
  %5 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2709
  %regs = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %5, i32 0, i32 1, !dbg !2709
  %6 = load i8*, i8** %regs, align 8, !dbg !2709
  %7 = load i32, i32* %i, align 4, !dbg !2709
  %mul = mul i32 64, %7, !dbg !2709
  %add = add i32 16, %mul, !dbg !2709
  %idx.ext = sext i32 %add to i64, !dbg !2709
  %add.ptr = getelementptr i8, i8* %6, i64 %idx.ext, !dbg !2709
  call void @__writel(i32 0, i8* %add.ptr) #8, !dbg !2709
  %8 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2711
  %irqchip_data = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %8, i32 0, i32 4, !dbg !2712
  %9 = load i32, i32* %i, align 4, !dbg !2713
  %idxprom = sext i32 %9 to i64, !dbg !2711
  %arrayidx = getelementptr [0 x %struct.intmux_irqchip_data], [0 x %struct.intmux_irqchip_data]* %irqchip_data, i64 0, i64 %idxprom, !dbg !2711
  %irq = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %arrayidx, i32 0, i32 3, !dbg !2714
  %10 = load i32, i32* %irq, align 8, !dbg !2714
  call void @irq_set_chained_handler_and_data(i32 %10, void (%struct.irq_desc*)* null, i8* null) #8, !dbg !2715
  %11 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2716
  %irqchip_data1 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %11, i32 0, i32 4, !dbg !2717
  %12 = load i32, i32* %i, align 4, !dbg !2718
  %idxprom2 = sext i32 %12 to i64, !dbg !2716
  %arrayidx3 = getelementptr [0 x %struct.intmux_irqchip_data], [0 x %struct.intmux_irqchip_data]* %irqchip_data1, i64 0, i64 %idxprom2, !dbg !2716
  %domain = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %arrayidx3, i32 0, i32 4, !dbg !2719
  %13 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8, !dbg !2719
  call void @irq_domain_remove(%struct.irq_domain* %13) #8, !dbg !2720
  br label %for.inc, !dbg !2721

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !2722
  %inc = add i32 %14, 1, !dbg !2722
  store i32 %inc, i32* %i, align 4, !dbg !2722
  br label %for.cond, !dbg !2723, !llvm.loop !2724

for.end:                                          ; preds = %for.cond
  %15 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2726
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 3, !dbg !2727
  call void @pm_runtime_disable(%struct.device* %dev) #8, !dbg !2728
  ret i32 0, !dbg !2729
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @platform_irq_count(%struct.platform_device*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2730 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2733, metadata !DIExpression()), !dbg !2734
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2735, metadata !DIExpression()), !dbg !2736
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2737, metadata !DIExpression()), !dbg !2738
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2739
  %1 = load i64, i64* %size.addr, align 8, !dbg !2740
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2741
  %or = or i32 %2, 256, !dbg !2742
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #8, !dbg !2743
  ret i8* %call, !dbg !2744
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__ab_c_size(i64 %a, i64 %b, i64 %c) #2 !dbg !2745 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  %__a3 = alloca i64, align 8
  %__b4 = alloca i64, align 8
  %__d5 = alloca i64*, align 8
  %tmp10 = alloca i8, align 1
  store i64 %a, i64* %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !2749, metadata !DIExpression()), !dbg !2750
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !2751, metadata !DIExpression()), !dbg !2752
  store i64 %c, i64* %c.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !2753, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2755, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !2757, metadata !DIExpression()), !dbg !2760
  %0 = load i64, i64* %a.addr, align 8, !dbg !2760
  store i64 %0, i64* %__a, align 8, !dbg !2760
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !2761, metadata !DIExpression()), !dbg !2760
  %1 = load i64, i64* %b.addr, align 8, !dbg !2760
  store i64 %1, i64* %__b, align 8, !dbg !2760
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !2762, metadata !DIExpression()), !dbg !2760
  store i64* %bytes, i64** %__d, align 8, !dbg !2760
  %cmp = icmp eq i64* %__a, %__b, !dbg !2760
  %conv = zext i1 %cmp to i32, !dbg !2760
  %2 = load i64*, i64** %__d, align 8, !dbg !2760
  %cmp1 = icmp eq i64* %__a, %2, !dbg !2760
  %conv2 = zext i1 %cmp1 to i32, !dbg !2760
  %3 = load i64, i64* %__a, align 8, !dbg !2760
  %4 = load i64, i64* %__b, align 8, !dbg !2760
  %5 = load i64*, i64** %__d, align 8, !dbg !2760
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !2760
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !2760
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !2760
  store i64 %8, i64* %5, align 8, !dbg !2760
  %frombool = zext i1 %7 to i8, !dbg !2760
  store i8 %frombool, i8* %tmp, align 1, !dbg !2760
  %9 = load i8, i8* %tmp, align 1, !dbg !2760
  %tobool = trunc i8 %9 to i1, !dbg !2760
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !2764
  br i1 %call, label %if.then, label %if.end, !dbg !2765

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !2766
  br label %return, !dbg !2766

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__a3, metadata !2767, metadata !DIExpression()), !dbg !2770
  %10 = load i64, i64* %bytes, align 8, !dbg !2770
  store i64 %10, i64* %__a3, align 8, !dbg !2770
  call void @llvm.dbg.declare(metadata i64* %__b4, metadata !2771, metadata !DIExpression()), !dbg !2770
  %11 = load i64, i64* %c.addr, align 8, !dbg !2770
  store i64 %11, i64* %__b4, align 8, !dbg !2770
  call void @llvm.dbg.declare(metadata i64** %__d5, metadata !2772, metadata !DIExpression()), !dbg !2770
  store i64* %bytes, i64** %__d5, align 8, !dbg !2770
  %cmp6 = icmp eq i64* %__a3, %__b4, !dbg !2770
  %conv7 = zext i1 %cmp6 to i32, !dbg !2770
  %12 = load i64*, i64** %__d5, align 8, !dbg !2770
  %cmp8 = icmp eq i64* %__a3, %12, !dbg !2770
  %conv9 = zext i1 %cmp8 to i32, !dbg !2770
  %13 = load i64, i64* %__a3, align 8, !dbg !2770
  %14 = load i64, i64* %__b4, align 8, !dbg !2770
  %15 = load i64*, i64** %__d5, align 8, !dbg !2770
  %16 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %14), !dbg !2770
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2770
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2770
  store i64 %18, i64* %15, align 8, !dbg !2770
  %frombool11 = zext i1 %17 to i8, !dbg !2770
  store i8 %frombool11, i8* %tmp10, align 1, !dbg !2770
  %19 = load i8, i8* %tmp10, align 1, !dbg !2770
  %tobool12 = trunc i8 %19 to i1, !dbg !2770
  %call13 = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool12) #8, !dbg !2773
  br i1 %call13, label %if.then14, label %if.end15, !dbg !2774

if.then14:                                        ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !2775
  br label %return, !dbg !2775

if.end15:                                         ; preds = %if.end
  %20 = load i64, i64* %bytes, align 8, !dbg !2776
  store i64 %20, i64* %retval, align 8, !dbg !2777
  br label %return, !dbg !2777

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %21 = load i64, i64* %retval, align 8, !dbg !2778
  ret i64 %21, !dbg !2778
}

; Function Attrs: noredzone
declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2779 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2783, metadata !DIExpression()), !dbg !2784
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2785
  %1 = ptrtoint i8* %0 to i64, !dbg !2785
  %2 = inttoptr i64 %1 to i8*, !dbg !2785
  %3 = ptrtoint i8* %2 to i64, !dbg !2785
  %cmp = icmp uge i64 %3, -4095, !dbg !2785
  %lnot = xor i1 %cmp, true, !dbg !2785
  %lnot1 = xor i1 %lnot, true, !dbg !2785
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2785
  %conv = sext i32 %lnot.ext to i64, !dbg !2785
  %tobool = icmp ne i64 %conv, 0, !dbg !2785
  ret i1 %tobool, !dbg !2786
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2787 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2790, metadata !DIExpression()), !dbg !2791
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2792
  %1 = ptrtoint i8* %0 to i64, !dbg !2793
  ret i64 %1, !dbg !2794
}

; Function Attrs: noredzone
declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @dev_err_probe(%struct.device*, i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_get_noresume(%struct.device* %dev) #2 !dbg !2795 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2797, metadata !DIExpression()), !dbg !2803
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2808, metadata !DIExpression()), !dbg !2816
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2818, metadata !DIExpression()), !dbg !2819
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2820, metadata !DIExpression()), !dbg !2821
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2822, metadata !DIExpression()), !dbg !2823
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2824
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2825
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !2826
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2827
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !2827
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2828
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !2829
  %conv.i.i = trunc i64 %4 to i32, !dbg !2829
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #10, !dbg !2830
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2831
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !2831
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #10, !dbg !2831
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2832
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2833
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !2834
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #7, !dbg !2835, !srcloc !2836
  ret void, !dbg !2837
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_set_active(%struct.device* %dev) #2 !dbg !2838 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2839, metadata !DIExpression()), !dbg !2840
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2841
  %call = call i32 @__pm_runtime_set_status(%struct.device* %0, i32 0) #8, !dbg !2842
  ret i32 %call, !dbg !2843
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_enable(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_prepare_enable(%struct.clk* %clk) #2 !dbg !2844 {
entry:
  %retval = alloca i32, align 4
  %clk.addr = alloca %struct.clk*, align 8
  %ret = alloca i32, align 4
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2847, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2849, metadata !DIExpression()), !dbg !2850
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2851
  %call = call i32 @clk_prepare(%struct.clk* %0) #8, !dbg !2852
  store i32 %call, i32* %ret, align 4, !dbg !2853
  %1 = load i32, i32* %ret, align 4, !dbg !2854
  %tobool = icmp ne i32 %1, 0, !dbg !2854
  br i1 %tobool, label %if.then, label %if.end, !dbg !2856

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !2857
  store i32 %2, i32* %retval, align 4, !dbg !2858
  br label %return, !dbg !2858

if.end:                                           ; preds = %entry
  %3 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2859
  %call1 = call i32 @clk_enable(%struct.clk* %3) #8, !dbg !2860
  store i32 %call1, i32* %ret, align 4, !dbg !2861
  %4 = load i32, i32* %ret, align 4, !dbg !2862
  %tobool2 = icmp ne i32 %4, 0, !dbg !2862
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2864

if.then3:                                         ; preds = %if.end
  %5 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2865
  call void @clk_unprepare(%struct.clk* %5) #8, !dbg !2866
  br label %if.end4, !dbg !2866

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !2867
  store i32 %6, i32* %retval, align 4, !dbg !2868
  br label %return, !dbg !2868

return:                                           ; preds = %if.end4, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2869
  ret i32 %7, !dbg !2869
}

; Function Attrs: noredzone
declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.irq_domain* @irq_domain_add_linear(%struct.device_node* %of_node, i32 %size, %struct.irq_domain_ops* %ops, i8* %host_data) #2 !dbg !2870 {
entry:
  %of_node.addr = alloca %struct.device_node*, align 8
  %size.addr = alloca i32, align 4
  %ops.addr = alloca %struct.irq_domain_ops*, align 8
  %host_data.addr = alloca i8*, align 8
  store %struct.device_node* %of_node, %struct.device_node** %of_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %of_node.addr, metadata !2873, metadata !DIExpression()), !dbg !2874
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2875, metadata !DIExpression()), !dbg !2876
  store %struct.irq_domain_ops* %ops, %struct.irq_domain_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_domain_ops** %ops.addr, metadata !2877, metadata !DIExpression()), !dbg !2878
  store i8* %host_data, i8** %host_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %host_data.addr, metadata !2879, metadata !DIExpression()), !dbg !2880
  %0 = load %struct.device_node*, %struct.device_node** %of_node.addr, align 8, !dbg !2881
  %call = call %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* %0) #8, !dbg !2882
  %1 = load i32, i32* %size.addr, align 4, !dbg !2883
  %2 = load i32, i32* %size.addr, align 4, !dbg !2884
  %conv = zext i32 %2 to i64, !dbg !2884
  %3 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %ops.addr, align 8, !dbg !2885
  %4 = load i8*, i8** %host_data.addr, align 8, !dbg !2886
  %call1 = call %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* %call, i32 %1, i64 %conv, i32 0, %struct.irq_domain_ops* %3, i8* %4) #8, !dbg !2887
  ret %struct.irq_domain* %call1, !dbg !2888
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__writel(i32 %val, i8* %addr) #2 !dbg !2889 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2894, metadata !DIExpression()), !dbg !2895
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2896, metadata !DIExpression()), !dbg !2895
  %0 = load i32, i32* %val.addr, align 4, !dbg !2895
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !2895
  %2 = bitcast i8* %1 to i32*, !dbg !2895
  call void asm sideeffect "movl $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !2895, !srcloc !2897
  ret void, !dbg !2895
}

; Function Attrs: noredzone
declare dso_local void @irq_set_chained_handler_and_data(i32, void (%struct.irq_desc*)*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @imx_intmux_irq_handler(%struct.irq_desc* %desc) #2 !dbg !2898 {
entry:
  %desc.addr = alloca %struct.irq_desc*, align 8
  %irqchip_data = alloca %struct.intmux_irqchip_data*, align 8
  %idx = alloca i32, align 4
  %data = alloca %struct.intmux_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intmux_data*, align 8
  %irqstat = alloca i64, align 8
  %pos = alloca i32, align 4
  %virq = alloca i32, align 4
  store %struct.irq_desc* %desc, %struct.irq_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_desc** %desc.addr, metadata !2899, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.declare(metadata %struct.intmux_irqchip_data** %irqchip_data, metadata !2901, metadata !DIExpression()), !dbg !2903
  %0 = load %struct.irq_desc*, %struct.irq_desc** %desc.addr, align 8, !dbg !2904
  %call = call i8* @irq_desc_get_handler_data(%struct.irq_desc* %0) #8, !dbg !2905
  %1 = bitcast i8* %call to %struct.intmux_irqchip_data*, !dbg !2905
  store %struct.intmux_irqchip_data* %1, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !2903
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !2906, metadata !DIExpression()), !dbg !2907
  %2 = load %struct.intmux_irqchip_data*, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !2908
  %chanidx = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %2, i32 0, i32 2, !dbg !2909
  %3 = load i32, i32* %chanidx, align 4, !dbg !2909
  store i32 %3, i32* %idx, align 4, !dbg !2907
  call void @llvm.dbg.declare(metadata %struct.intmux_data** %data, metadata !2910, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2912, metadata !DIExpression()), !dbg !2914
  %4 = load %struct.intmux_irqchip_data*, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !2914
  %5 = bitcast %struct.intmux_irqchip_data* %4 to i8*, !dbg !2914
  store i8* %5, i8** %__mptr, align 8, !dbg !2914
  br label %do.body, !dbg !2914

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2915

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !2914
  %7 = load i32, i32* %idx, align 4, !dbg !2914
  %conv = sext i32 %7 to i64, !dbg !2914
  %8 = mul i64 %conv, 312, !dbg !2914
  %9 = add i64 24, %8, !dbg !2914
  %idx.neg = sub i64 0, %9, !dbg !2914
  %add.ptr = getelementptr i8, i8* %6, i64 %idx.neg, !dbg !2914
  %10 = bitcast i8* %add.ptr to %struct.intmux_data*, !dbg !2914
  store %struct.intmux_data* %10, %struct.intmux_data** %tmp, align 8, !dbg !2915
  %11 = load %struct.intmux_data*, %struct.intmux_data** %tmp, align 8, !dbg !2914
  store %struct.intmux_data* %11, %struct.intmux_data** %data, align 8, !dbg !2911
  call void @llvm.dbg.declare(metadata i64* %irqstat, metadata !2917, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !2919, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.declare(metadata i32* %virq, metadata !2921, metadata !DIExpression()), !dbg !2922
  %12 = load %struct.irq_desc*, %struct.irq_desc** %desc.addr, align 8, !dbg !2923
  %call1 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %12) #8, !dbg !2924
  %13 = load %struct.irq_desc*, %struct.irq_desc** %desc.addr, align 8, !dbg !2925
  call void @chained_irq_enter(%struct.irq_chip* %call1, %struct.irq_desc* %13) #8, !dbg !2926
  %14 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !2927
  %regs = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %14, i32 0, i32 1, !dbg !2927
  %15 = load i8*, i8** %regs, align 8, !dbg !2927
  %16 = load i32, i32* %idx, align 4, !dbg !2927
  %mul = mul i32 64, %16, !dbg !2927
  %add = add i32 32, %mul, !dbg !2927
  %idx.ext = sext i32 %add to i64, !dbg !2927
  %add.ptr2 = getelementptr i8, i8* %15, i64 %idx.ext, !dbg !2927
  %call3 = call i32 @__readl(i8* %add.ptr2) #8, !dbg !2927
  %conv4 = zext i32 %call3 to i64, !dbg !2927
  store i64 %conv4, i64* %irqstat, align 8, !dbg !2928
  %call5 = call i64 @find_first_bit(i64* %irqstat, i64 32) #8, !dbg !2929
  %conv6 = trunc i64 %call5 to i32, !dbg !2929
  store i32 %conv6, i32* %pos, align 4, !dbg !2929
  br label %for.cond, !dbg !2929

for.cond:                                         ; preds = %for.inc, %do.end
  %17 = load i32, i32* %pos, align 4, !dbg !2931
  %cmp = icmp slt i32 %17, 32, !dbg !2931
  br i1 %cmp, label %for.body, label %for.end, !dbg !2929

for.body:                                         ; preds = %for.cond
  %18 = load %struct.intmux_irqchip_data*, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !2933
  %domain = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %18, i32 0, i32 4, !dbg !2935
  %19 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8, !dbg !2935
  %20 = load i32, i32* %pos, align 4, !dbg !2936
  %conv8 = sext i32 %20 to i64, !dbg !2936
  %call9 = call i32 @irq_find_mapping(%struct.irq_domain* %19, i64 %conv8) #8, !dbg !2937
  store i32 %call9, i32* %virq, align 4, !dbg !2938
  %21 = load i32, i32* %virq, align 4, !dbg !2939
  %tobool = icmp ne i32 %21, 0, !dbg !2939
  br i1 %tobool, label %if.then, label %if.end, !dbg !2941

if.then:                                          ; preds = %for.body
  %22 = load i32, i32* %virq, align 4, !dbg !2942
  %call10 = call i32 @generic_handle_irq(i32 %22) #8, !dbg !2943
  br label %if.end, !dbg !2943

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2944

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %pos, align 4, !dbg !2931
  %add11 = add i32 %23, 1, !dbg !2931
  %conv12 = sext i32 %add11 to i64, !dbg !2931
  %call13 = call i64 @find_next_bit(i64* %irqstat, i64 32, i64 %conv12) #8, !dbg !2931
  %conv14 = trunc i64 %call13 to i32, !dbg !2931
  store i32 %conv14, i32* %pos, align 4, !dbg !2931
  br label %for.cond, !dbg !2931, !llvm.loop !2945

for.end:                                          ; preds = %for.cond
  %24 = load %struct.irq_desc*, %struct.irq_desc** %desc.addr, align 8, !dbg !2947
  %call15 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %24) #8, !dbg !2948
  %25 = load %struct.irq_desc*, %struct.irq_desc** %desc.addr, align 8, !dbg !2949
  call void @chained_irq_exit(%struct.irq_chip* %call15, %struct.irq_desc* %25) #8, !dbg !2950
  ret void, !dbg !2951
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !2952 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2955, metadata !DIExpression()), !dbg !2956
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2957, metadata !DIExpression()), !dbg !2958
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2959
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2960
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2961
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !2962
  ret void, !dbg !2963
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put(%struct.device* %dev) #2 !dbg !2964 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2965, metadata !DIExpression()), !dbg !2966
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2967
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 5) #8, !dbg !2968
  ret i32 %call, !dbg !2969
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_disable_unprepare(%struct.clk* %clk) #2 !dbg !2970 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2973, metadata !DIExpression()), !dbg !2974
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2975
  call void @clk_disable(%struct.clk* %0) #8, !dbg !2976
  %1 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2977
  call void @clk_unprepare(%struct.clk* %1) #8, !dbg !2978
  ret void, !dbg !2979
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #2 !dbg !2980 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !2983, metadata !DIExpression()), !dbg !2984
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !2985
  %tobool = trunc i8 %0 to i1, !dbg !2985
  %lnot = xor i1 %tobool, true, !dbg !2985
  %lnot1 = xor i1 %lnot, true, !dbg !2985
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2985
  %conv = sext i32 %lnot.ext to i64, !dbg !2985
  %tobool2 = icmp ne i64 %conv, 0, !dbg !2985
  ret i1 %tobool2, !dbg !2986
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !2987 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2991, metadata !DIExpression()), !dbg !2992
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2993, metadata !DIExpression()), !dbg !2994
  ret i1 true, !dbg !2995
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !2996 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3000, metadata !DIExpression()), !dbg !3001
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3002, metadata !DIExpression()), !dbg !3003
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3004, metadata !DIExpression()), !dbg !3005
  ret void, !dbg !3006
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_set_status(%struct.device*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @clk_prepare(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local i32 @clk_enable(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local void @clk_unprepare(%struct.clk*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @imx_intmux_irq_mask(%struct.irq_data* %d) #2 !dbg !3007 {
entry:
  %d.addr = alloca %struct.irq_data*, align 8
  %irqchip_data = alloca %struct.intmux_irqchip_data*, align 8
  %idx = alloca i32, align 4
  %data = alloca %struct.intmux_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intmux_data*, align 8
  %flags = alloca i64, align 8
  %reg = alloca i8*, align 8
  %val = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  %__dummy25 = alloca i64, align 8
  %__dummy226 = alloca i64, align 8
  %tmp29 = alloca i32, align 4
  %__dummy33 = alloca i64, align 8
  %__dummy234 = alloca i64, align 8
  %tmp37 = alloca i32, align 4
  store %struct.irq_data* %d, %struct.irq_data** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_data** %d.addr, metadata !3008, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.declare(metadata %struct.intmux_irqchip_data** %irqchip_data, metadata !3010, metadata !DIExpression()), !dbg !3011
  %0 = load %struct.irq_data*, %struct.irq_data** %d.addr, align 8, !dbg !3012
  %chip_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i32 0, i32 7, !dbg !3013
  %1 = load i8*, i8** %chip_data, align 8, !dbg !3013
  %2 = bitcast i8* %1 to %struct.intmux_irqchip_data*, !dbg !3012
  store %struct.intmux_irqchip_data* %2, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3011
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !3014, metadata !DIExpression()), !dbg !3015
  %3 = load %struct.intmux_irqchip_data*, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3016
  %chanidx = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %3, i32 0, i32 2, !dbg !3017
  %4 = load i32, i32* %chanidx, align 4, !dbg !3017
  store i32 %4, i32* %idx, align 4, !dbg !3015
  call void @llvm.dbg.declare(metadata %struct.intmux_data** %data, metadata !3018, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3020, metadata !DIExpression()), !dbg !3022
  %5 = load %struct.intmux_irqchip_data*, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3022
  %6 = bitcast %struct.intmux_irqchip_data* %5 to i8*, !dbg !3022
  store i8* %6, i8** %__mptr, align 8, !dbg !3022
  br label %do.body, !dbg !3022

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3023

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !3022
  %8 = load i32, i32* %idx, align 4, !dbg !3022
  %conv = sext i32 %8 to i64, !dbg !3022
  %9 = mul i64 %conv, 312, !dbg !3022
  %10 = add i64 24, %9, !dbg !3022
  %idx.neg = sub i64 0, %10, !dbg !3022
  %add.ptr = getelementptr i8, i8* %7, i64 %idx.neg, !dbg !3022
  %11 = bitcast i8* %add.ptr to %struct.intmux_data*, !dbg !3022
  store %struct.intmux_data* %11, %struct.intmux_data** %tmp, align 8, !dbg !3023
  %12 = load %struct.intmux_data*, %struct.intmux_data** %tmp, align 8, !dbg !3022
  store %struct.intmux_data* %12, %struct.intmux_data** %data, align 8, !dbg !3019
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3025, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.declare(metadata i8** %reg, metadata !3027, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.declare(metadata i32* %val, metadata !3029, metadata !DIExpression()), !dbg !3030
  br label %do.body1, !dbg !3031

do.body1:                                         ; preds = %do.end
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3032, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3036, metadata !DIExpression()), !dbg !3035
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3035
  %conv2 = zext i1 %cmp to i32, !dbg !3035
  store i32 1, i32* %tmp3, align 4, !dbg !3035
  %13 = load i32, i32* %tmp3, align 4, !dbg !3035
  br label %do.body4, !dbg !3037

do.body4:                                         ; preds = %do.body1
  br label %do.body5, !dbg !3038

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !3040

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !3046, metadata !DIExpression()), !dbg !3045
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !3045
  %conv10 = zext i1 %cmp9 to i32, !dbg !3045
  store i32 1, i32* %tmp11, align 4, !dbg !3045
  %14 = load i32, i32* %tmp11, align 4, !dbg !3045
  %call = call i64 @arch_local_irq_save() #8, !dbg !3047
  store i64 %call, i64* %flags, align 8, !dbg !3047
  br label %do.end12, !dbg !3047

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !3040

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !3038

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3048, !srcloc !3050
  br label %do.body15, !dbg !3048

do.body15:                                        ; preds = %do.body14
  %15 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3051
  %lock = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %15, i32 0, i32 0, !dbg !3051
  br label %do.end16, !dbg !3051

do.end16:                                         ; preds = %do.body15
  br label %do.end17, !dbg !3048

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !3038

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !3037

do.end19:                                         ; preds = %do.end18
  %16 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3053
  %regs = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %16, i32 0, i32 1, !dbg !3054
  %17 = load i8*, i8** %regs, align 8, !dbg !3054
  %18 = load i32, i32* %idx, align 4, !dbg !3055
  %mul = mul i32 64, %18, !dbg !3055
  %add = add i32 16, %mul, !dbg !3055
  %idx.ext = sext i32 %add to i64, !dbg !3056
  %add.ptr20 = getelementptr i8, i8* %17, i64 %idx.ext, !dbg !3056
  store i8* %add.ptr20, i8** %reg, align 8, !dbg !3057
  %19 = load i8*, i8** %reg, align 8, !dbg !3058
  %call21 = call i32 @__readl(i8* %19) #8, !dbg !3058
  store i32 %call21, i32* %val, align 4, !dbg !3059
  %20 = load %struct.irq_data*, %struct.irq_data** %d.addr, align 8, !dbg !3060
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %20, i32 0, i32 2, !dbg !3060
  %21 = load i64, i64* %hwirq, align 8, !dbg !3060
  %shl = shl i64 1, %21, !dbg !3060
  %neg = xor i64 %shl, -1, !dbg !3061
  %22 = load i32, i32* %val, align 4, !dbg !3062
  %conv22 = zext i32 %22 to i64, !dbg !3062
  %and = and i64 %conv22, %neg, !dbg !3062
  %conv23 = trunc i64 %and to i32, !dbg !3062
  store i32 %conv23, i32* %val, align 4, !dbg !3062
  %23 = load i32, i32* %val, align 4, !dbg !3063
  %24 = load i8*, i8** %reg, align 8, !dbg !3063
  call void @__writel(i32 %23, i8* %24) #8, !dbg !3063
  br label %do.body24, !dbg !3064

do.body24:                                        ; preds = %do.end19
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !3065, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.declare(metadata i64* %__dummy226, metadata !3069, metadata !DIExpression()), !dbg !3068
  %cmp27 = icmp eq i64* %__dummy25, %__dummy226, !dbg !3068
  %conv28 = zext i1 %cmp27 to i32, !dbg !3068
  store i32 1, i32* %tmp29, align 4, !dbg !3068
  %25 = load i32, i32* %tmp29, align 4, !dbg !3068
  br label %do.body30, !dbg !3070

do.body30:                                        ; preds = %do.body24
  br label %do.body31, !dbg !3071

do.body31:                                        ; preds = %do.body30
  br label %do.body32, !dbg !3073

do.body32:                                        ; preds = %do.body31
  call void @llvm.dbg.declare(metadata i64* %__dummy33, metadata !3075, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.declare(metadata i64* %__dummy234, metadata !3079, metadata !DIExpression()), !dbg !3078
  %cmp35 = icmp eq i64* %__dummy33, %__dummy234, !dbg !3078
  %conv36 = zext i1 %cmp35 to i32, !dbg !3078
  store i32 1, i32* %tmp37, align 4, !dbg !3078
  %26 = load i32, i32* %tmp37, align 4, !dbg !3078
  %27 = load i64, i64* %flags, align 8, !dbg !3080
  call void @arch_local_irq_restore(i64 %27) #8, !dbg !3080
  br label %do.end38, !dbg !3080

do.end38:                                         ; preds = %do.body32
  br label %do.end39, !dbg !3073

do.end39:                                         ; preds = %do.end38
  br label %do.body40, !dbg !3071

do.body40:                                        ; preds = %do.end39
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3081, !srcloc !3083
  br label %do.body41, !dbg !3081

do.body41:                                        ; preds = %do.body40
  %28 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3084
  %lock42 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %28, i32 0, i32 0, !dbg !3084
  br label %do.end43, !dbg !3084

do.end43:                                         ; preds = %do.body41
  br label %do.end44, !dbg !3081

do.end44:                                         ; preds = %do.end43
  br label %do.end45, !dbg !3071

do.end45:                                         ; preds = %do.end44
  br label %do.end46, !dbg !3070

do.end46:                                         ; preds = %do.end45
  ret void, !dbg !3086
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @imx_intmux_irq_unmask(%struct.irq_data* %d) #2 !dbg !3087 {
entry:
  %d.addr = alloca %struct.irq_data*, align 8
  %irqchip_data = alloca %struct.intmux_irqchip_data*, align 8
  %idx = alloca i32, align 4
  %data = alloca %struct.intmux_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intmux_data*, align 8
  %flags = alloca i64, align 8
  %reg = alloca i8*, align 8
  %val = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  %__dummy25 = alloca i64, align 8
  %__dummy226 = alloca i64, align 8
  %tmp29 = alloca i32, align 4
  %__dummy33 = alloca i64, align 8
  %__dummy234 = alloca i64, align 8
  %tmp37 = alloca i32, align 4
  store %struct.irq_data* %d, %struct.irq_data** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_data** %d.addr, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.declare(metadata %struct.intmux_irqchip_data** %irqchip_data, metadata !3090, metadata !DIExpression()), !dbg !3091
  %0 = load %struct.irq_data*, %struct.irq_data** %d.addr, align 8, !dbg !3092
  %chip_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i32 0, i32 7, !dbg !3093
  %1 = load i8*, i8** %chip_data, align 8, !dbg !3093
  %2 = bitcast i8* %1 to %struct.intmux_irqchip_data*, !dbg !3092
  store %struct.intmux_irqchip_data* %2, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3091
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !3094, metadata !DIExpression()), !dbg !3095
  %3 = load %struct.intmux_irqchip_data*, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3096
  %chanidx = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %3, i32 0, i32 2, !dbg !3097
  %4 = load i32, i32* %chanidx, align 4, !dbg !3097
  store i32 %4, i32* %idx, align 4, !dbg !3095
  call void @llvm.dbg.declare(metadata %struct.intmux_data** %data, metadata !3098, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3100, metadata !DIExpression()), !dbg !3102
  %5 = load %struct.intmux_irqchip_data*, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3102
  %6 = bitcast %struct.intmux_irqchip_data* %5 to i8*, !dbg !3102
  store i8* %6, i8** %__mptr, align 8, !dbg !3102
  br label %do.body, !dbg !3102

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3103

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !3102
  %8 = load i32, i32* %idx, align 4, !dbg !3102
  %conv = sext i32 %8 to i64, !dbg !3102
  %9 = mul i64 %conv, 312, !dbg !3102
  %10 = add i64 24, %9, !dbg !3102
  %idx.neg = sub i64 0, %10, !dbg !3102
  %add.ptr = getelementptr i8, i8* %7, i64 %idx.neg, !dbg !3102
  %11 = bitcast i8* %add.ptr to %struct.intmux_data*, !dbg !3102
  store %struct.intmux_data* %11, %struct.intmux_data** %tmp, align 8, !dbg !3103
  %12 = load %struct.intmux_data*, %struct.intmux_data** %tmp, align 8, !dbg !3102
  store %struct.intmux_data* %12, %struct.intmux_data** %data, align 8, !dbg !3099
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3105, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.declare(metadata i8** %reg, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.declare(metadata i32* %val, metadata !3109, metadata !DIExpression()), !dbg !3110
  br label %do.body1, !dbg !3111

do.body1:                                         ; preds = %do.end
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3112, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3116, metadata !DIExpression()), !dbg !3115
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3115
  %conv2 = zext i1 %cmp to i32, !dbg !3115
  store i32 1, i32* %tmp3, align 4, !dbg !3115
  %13 = load i32, i32* %tmp3, align 4, !dbg !3115
  br label %do.body4, !dbg !3117

do.body4:                                         ; preds = %do.body1
  br label %do.body5, !dbg !3118

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !3120

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !3122, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !3126, metadata !DIExpression()), !dbg !3125
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !3125
  %conv10 = zext i1 %cmp9 to i32, !dbg !3125
  store i32 1, i32* %tmp11, align 4, !dbg !3125
  %14 = load i32, i32* %tmp11, align 4, !dbg !3125
  %call = call i64 @arch_local_irq_save() #8, !dbg !3127
  store i64 %call, i64* %flags, align 8, !dbg !3127
  br label %do.end12, !dbg !3127

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !3120

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !3118

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3128, !srcloc !3130
  br label %do.body15, !dbg !3128

do.body15:                                        ; preds = %do.body14
  %15 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3131
  %lock = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %15, i32 0, i32 0, !dbg !3131
  br label %do.end16, !dbg !3131

do.end16:                                         ; preds = %do.body15
  br label %do.end17, !dbg !3128

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !3118

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !3117

do.end19:                                         ; preds = %do.end18
  %16 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3133
  %regs = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %16, i32 0, i32 1, !dbg !3134
  %17 = load i8*, i8** %regs, align 8, !dbg !3134
  %18 = load i32, i32* %idx, align 4, !dbg !3135
  %mul = mul i32 64, %18, !dbg !3135
  %add = add i32 16, %mul, !dbg !3135
  %idx.ext = sext i32 %add to i64, !dbg !3136
  %add.ptr20 = getelementptr i8, i8* %17, i64 %idx.ext, !dbg !3136
  store i8* %add.ptr20, i8** %reg, align 8, !dbg !3137
  %19 = load i8*, i8** %reg, align 8, !dbg !3138
  %call21 = call i32 @__readl(i8* %19) #8, !dbg !3138
  store i32 %call21, i32* %val, align 4, !dbg !3139
  %20 = load %struct.irq_data*, %struct.irq_data** %d.addr, align 8, !dbg !3140
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %20, i32 0, i32 2, !dbg !3140
  %21 = load i64, i64* %hwirq, align 8, !dbg !3140
  %shl = shl i64 1, %21, !dbg !3140
  %22 = load i32, i32* %val, align 4, !dbg !3141
  %conv22 = zext i32 %22 to i64, !dbg !3141
  %or = or i64 %conv22, %shl, !dbg !3141
  %conv23 = trunc i64 %or to i32, !dbg !3141
  store i32 %conv23, i32* %val, align 4, !dbg !3141
  %23 = load i32, i32* %val, align 4, !dbg !3142
  %24 = load i8*, i8** %reg, align 8, !dbg !3142
  call void @__writel(i32 %23, i8* %24) #8, !dbg !3142
  br label %do.body24, !dbg !3143

do.body24:                                        ; preds = %do.end19
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !3144, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.declare(metadata i64* %__dummy226, metadata !3148, metadata !DIExpression()), !dbg !3147
  %cmp27 = icmp eq i64* %__dummy25, %__dummy226, !dbg !3147
  %conv28 = zext i1 %cmp27 to i32, !dbg !3147
  store i32 1, i32* %tmp29, align 4, !dbg !3147
  %25 = load i32, i32* %tmp29, align 4, !dbg !3147
  br label %do.body30, !dbg !3149

do.body30:                                        ; preds = %do.body24
  br label %do.body31, !dbg !3150

do.body31:                                        ; preds = %do.body30
  br label %do.body32, !dbg !3152

do.body32:                                        ; preds = %do.body31
  call void @llvm.dbg.declare(metadata i64* %__dummy33, metadata !3154, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.declare(metadata i64* %__dummy234, metadata !3158, metadata !DIExpression()), !dbg !3157
  %cmp35 = icmp eq i64* %__dummy33, %__dummy234, !dbg !3157
  %conv36 = zext i1 %cmp35 to i32, !dbg !3157
  store i32 1, i32* %tmp37, align 4, !dbg !3157
  %26 = load i32, i32* %tmp37, align 4, !dbg !3157
  %27 = load i64, i64* %flags, align 8, !dbg !3159
  call void @arch_local_irq_restore(i64 %27) #8, !dbg !3159
  br label %do.end38, !dbg !3159

do.end38:                                         ; preds = %do.body32
  br label %do.end39, !dbg !3152

do.end39:                                         ; preds = %do.end38
  br label %do.body40, !dbg !3150

do.body40:                                        ; preds = %do.end39
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3160, !srcloc !3162
  br label %do.body41, !dbg !3160

do.body41:                                        ; preds = %do.body40
  %28 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3163
  %lock42 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %28, i32 0, i32 0, !dbg !3163
  br label %do.end43, !dbg !3163

do.end43:                                         ; preds = %do.body41
  br label %do.end44, !dbg !3160

do.end44:                                         ; preds = %do.end43
  br label %do.end45, !dbg !3150

do.end45:                                         ; preds = %do.end44
  br label %do.end46, !dbg !3149

do.end46:                                         ; preds = %do.end45
  ret void, !dbg !3165
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !3166 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !3170, metadata !DIExpression()), !dbg !3171
  %call = call i64 @arch_local_save_flags() #8, !dbg !3172
  store i64 %call, i64* %f, align 8, !dbg !3173
  call void @arch_local_irq_disable() #8, !dbg !3174
  %0 = load i64, i64* %f, align 8, !dbg !3175
  ret i64 %0, !dbg !3176
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__readl(i8* %addr) #2 !dbg !3177 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3180, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3182, metadata !DIExpression()), !dbg !3181
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3181
  %1 = bitcast i8* %0 to i32*, !dbg !3181
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %1) #7, !dbg !3181, !srcloc !3183
  store i32 %2, i32* %ret, align 4, !dbg !3181
  %3 = load i32, i32* %ret, align 4, !dbg !3181
  ret i32 %3, !dbg !3181
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !3184 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !3187, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3189, metadata !DIExpression()), !dbg !3191
  %0 = load i64, i64* %__edi, align 8, !dbg !3191
  store i64 %0, i64* %__edi, align 8, !dbg !3191
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3192, metadata !DIExpression()), !dbg !3191
  %1 = load i64, i64* %__esi, align 8, !dbg !3191
  store i64 %1, i64* %__esi, align 8, !dbg !3191
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3193, metadata !DIExpression()), !dbg !3191
  %2 = load i64, i64* %__edx, align 8, !dbg !3191
  store i64 %2, i64* %__edx, align 8, !dbg !3191
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3194, metadata !DIExpression()), !dbg !3191
  %3 = load i64, i64* %__ecx, align 8, !dbg !3191
  store i64 %3, i64* %__ecx, align 8, !dbg !3191
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3195, metadata !DIExpression()), !dbg !3191
  %4 = load i64, i64* %__eax, align 8, !dbg !3191
  store i64 %4, i64* %__eax, align 8, !dbg !3191
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !3191
  %6 = call i64 @llvm.read_register.i64(metadata !2480), !dbg !3191
  %7 = load i64, i64* %f.addr, align 8, !dbg !3191
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !3191, !srcloc !3196
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !3191
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !3191
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3191
  call void @llvm.write_register.i64(metadata !2480, i64 %asmresult1), !dbg !3191
  ret void, !dbg !3197
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !3198 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3199, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3202, metadata !DIExpression()), !dbg !3201
  %0 = load i64, i64* %__edi, align 8, !dbg !3201
  store i64 %0, i64* %__edi, align 8, !dbg !3201
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3203, metadata !DIExpression()), !dbg !3201
  %1 = load i64, i64* %__esi, align 8, !dbg !3201
  store i64 %1, i64* %__esi, align 8, !dbg !3201
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3204, metadata !DIExpression()), !dbg !3201
  %2 = load i64, i64* %__edx, align 8, !dbg !3201
  store i64 %2, i64* %__edx, align 8, !dbg !3201
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3205, metadata !DIExpression()), !dbg !3201
  %3 = load i64, i64* %__ecx, align 8, !dbg !3201
  store i64 %3, i64* %__ecx, align 8, !dbg !3201
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3206, metadata !DIExpression()), !dbg !3201
  %4 = load i64, i64* %__eax, align 8, !dbg !3201
  store i64 %4, i64* %__eax, align 8, !dbg !3201
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3201
  %6 = call i64 @llvm.read_register.i64(metadata !2480), !dbg !3207
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !3207, !srcloc !3210
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3207
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3207
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3207
  call void @llvm.write_register.i64(metadata !2480, i64 %asmresult1), !dbg !3207
  %8 = load i64, i64* %__eax, align 8, !dbg !3207
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3211, metadata !DIExpression()), !dbg !3213
  store i64 -1, i64* %__mask, align 8, !dbg !3213
  %9 = load i64, i64* %__mask, align 8, !dbg !3213
  store i64 %9, i64* %tmp, align 8, !dbg !3213
  %10 = load i64, i64* %tmp, align 8, !dbg !3213
  %and = and i64 %8, %10, !dbg !3207
  store i64 %and, i64* %__ret, align 8, !dbg !3207
  %11 = load i64, i64* %__ret, align 8, !dbg !3201
  store i64 %11, i64* %tmp2, align 8, !dbg !3214
  %12 = load i64, i64* %tmp2, align 8, !dbg !3201
  ret i64 %12, !dbg !3215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !3216 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3219, metadata !DIExpression()), !dbg !3221
  %0 = load i64, i64* %__edi, align 8, !dbg !3221
  store i64 %0, i64* %__edi, align 8, !dbg !3221
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3222, metadata !DIExpression()), !dbg !3221
  %1 = load i64, i64* %__esi, align 8, !dbg !3221
  store i64 %1, i64* %__esi, align 8, !dbg !3221
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3223, metadata !DIExpression()), !dbg !3221
  %2 = load i64, i64* %__edx, align 8, !dbg !3221
  store i64 %2, i64* %__edx, align 8, !dbg !3221
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3224, metadata !DIExpression()), !dbg !3221
  %3 = load i64, i64* %__ecx, align 8, !dbg !3221
  store i64 %3, i64* %__ecx, align 8, !dbg !3221
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3225, metadata !DIExpression()), !dbg !3221
  %4 = load i64, i64* %__eax, align 8, !dbg !3221
  store i64 %4, i64* %__eax, align 8, !dbg !3221
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !3221
  %6 = call i64 @llvm.read_register.i64(metadata !2480), !dbg !3221
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !3221, !srcloc !3226
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3221
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3221
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3221
  call void @llvm.write_register.i64(metadata !2480, i64 %asmresult1), !dbg !3221
  ret void, !dbg !3227
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone
declare dso_local %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle*, i32, i64, i32, %struct.irq_domain_ops*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* %node) #2 !dbg !3228 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3231, metadata !DIExpression()), !dbg !3232
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3233
  %tobool = icmp ne %struct.device_node* %0, null, !dbg !3233
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3233

cond.true:                                        ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3234
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i32 0, i32 3, !dbg !3235
  br label %cond.end, !dbg !3233

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3233

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.fwnode_handle* [ %fwnode, %cond.true ], [ null, %cond.false ], !dbg !3233
  ret %struct.fwnode_handle* %cond, !dbg !3236
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_intmux_irq_select(%struct.irq_domain* %d, %struct.irq_fwspec* %fwspec, i32 %bus_token) #2 !dbg !3237 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.irq_domain*, align 8
  %fwspec.addr = alloca %struct.irq_fwspec*, align 8
  %bus_token.addr = alloca i32, align 4
  %irqchip_data = alloca %struct.intmux_irqchip_data*, align 8
  store %struct.irq_domain* %d, %struct.irq_domain** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %d.addr, metadata !3238, metadata !DIExpression()), !dbg !3239
  store %struct.irq_fwspec* %fwspec, %struct.irq_fwspec** %fwspec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_fwspec** %fwspec.addr, metadata !3240, metadata !DIExpression()), !dbg !3241
  store i32 %bus_token, i32* %bus_token.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bus_token.addr, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.declare(metadata %struct.intmux_irqchip_data** %irqchip_data, metadata !3244, metadata !DIExpression()), !dbg !3245
  %0 = load %struct.irq_domain*, %struct.irq_domain** %d.addr, align 8, !dbg !3246
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %0, i32 0, i32 3, !dbg !3247
  %1 = load i8*, i8** %host_data, align 8, !dbg !3247
  %2 = bitcast i8* %1 to %struct.intmux_irqchip_data*, !dbg !3246
  store %struct.intmux_irqchip_data* %2, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3245
  %3 = load %struct.irq_fwspec*, %struct.irq_fwspec** %fwspec.addr, align 8, !dbg !3248
  %fwnode = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %3, i32 0, i32 0, !dbg !3250
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3250
  %5 = load %struct.irq_domain*, %struct.irq_domain** %d.addr, align 8, !dbg !3251
  %fwnode1 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %5, i32 0, i32 6, !dbg !3252
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode1, align 8, !dbg !3252
  %cmp = icmp ne %struct.fwnode_handle* %4, %6, !dbg !3253
  br i1 %cmp, label %if.then, label %if.end, !dbg !3254

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3255
  br label %return, !dbg !3255

if.end:                                           ; preds = %entry
  %7 = load %struct.intmux_irqchip_data*, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3256
  %chanidx = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %7, i32 0, i32 2, !dbg !3257
  %8 = load i32, i32* %chanidx, align 4, !dbg !3257
  %9 = load %struct.irq_fwspec*, %struct.irq_fwspec** %fwspec.addr, align 8, !dbg !3258
  %param = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %9, i32 0, i32 2, !dbg !3259
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %param, i64 0, i64 1, !dbg !3258
  %10 = load i32, i32* %arrayidx, align 4, !dbg !3258
  %cmp2 = icmp eq i32 %8, %10, !dbg !3260
  %conv = zext i1 %cmp2 to i32, !dbg !3260
  store i32 %conv, i32* %retval, align 4, !dbg !3261
  br label %return, !dbg !3261

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !3262
  ret i32 %11, !dbg !3262
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_intmux_irq_map(%struct.irq_domain* %h, i32 %irq, i64 %hwirq) #2 !dbg !3263 {
entry:
  %h.addr = alloca %struct.irq_domain*, align 8
  %irq.addr = alloca i32, align 4
  %hwirq.addr = alloca i64, align 8
  %data = alloca %struct.intmux_irqchip_data*, align 8
  store %struct.irq_domain* %h, %struct.irq_domain** %h.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %h.addr, metadata !3264, metadata !DIExpression()), !dbg !3265
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !3266, metadata !DIExpression()), !dbg !3267
  store i64 %hwirq, i64* %hwirq.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %hwirq.addr, metadata !3268, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.declare(metadata %struct.intmux_irqchip_data** %data, metadata !3270, metadata !DIExpression()), !dbg !3271
  %0 = load %struct.irq_domain*, %struct.irq_domain** %h.addr, align 8, !dbg !3272
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %0, i32 0, i32 3, !dbg !3273
  %1 = load i8*, i8** %host_data, align 8, !dbg !3273
  %2 = bitcast i8* %1 to %struct.intmux_irqchip_data*, !dbg !3272
  store %struct.intmux_irqchip_data* %2, %struct.intmux_irqchip_data** %data, align 8, !dbg !3271
  %3 = load i32, i32* %irq.addr, align 4, !dbg !3274
  %4 = load %struct.intmux_irqchip_data*, %struct.intmux_irqchip_data** %data, align 8, !dbg !3275
  %5 = bitcast %struct.intmux_irqchip_data* %4 to i8*, !dbg !3275
  %call = call i32 @irq_set_chip_data(i32 %3, i8* %5) #8, !dbg !3276
  %6 = load i32, i32* %irq.addr, align 4, !dbg !3277
  %7 = load %struct.intmux_irqchip_data*, %struct.intmux_irqchip_data** %data, align 8, !dbg !3278
  %chip = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %7, i32 0, i32 0, !dbg !3279
  call void @irq_set_chip_and_handler(i32 %6, %struct.irq_chip* %chip, void (%struct.irq_desc*)* @handle_level_irq) #8, !dbg !3280
  ret i32 0, !dbg !3281
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_intmux_irq_xlate(%struct.irq_domain* %d, %struct.device_node* %node, i32* %intspec, i32 %intsize, i64* %out_hwirq, i32* %out_type) #2 !dbg !3282 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.irq_domain*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %intspec.addr = alloca i32*, align 8
  %intsize.addr = alloca i32, align 4
  %out_hwirq.addr = alloca i64*, align 8
  %out_type.addr = alloca i32*, align 8
  %irqchip_data = alloca %struct.intmux_irqchip_data*, align 8
  %idx = alloca i32, align 4
  %data = alloca %struct.intmux_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intmux_data*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp17 = alloca i64, align 8
  %__ret_warn_on27 = alloca i32, align 4
  %tmp51 = alloca i64, align 8
  store %struct.irq_domain* %d, %struct.irq_domain** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %d.addr, metadata !3283, metadata !DIExpression()), !dbg !3284
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3285, metadata !DIExpression()), !dbg !3286
  store i32* %intspec, i32** %intspec.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %intspec.addr, metadata !3287, metadata !DIExpression()), !dbg !3288
  store i32 %intsize, i32* %intsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intsize.addr, metadata !3289, metadata !DIExpression()), !dbg !3290
  store i64* %out_hwirq, i64** %out_hwirq.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_hwirq.addr, metadata !3291, metadata !DIExpression()), !dbg !3292
  store i32* %out_type, i32** %out_type.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_type.addr, metadata !3293, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.declare(metadata %struct.intmux_irqchip_data** %irqchip_data, metadata !3295, metadata !DIExpression()), !dbg !3296
  %0 = load %struct.irq_domain*, %struct.irq_domain** %d.addr, align 8, !dbg !3297
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %0, i32 0, i32 3, !dbg !3298
  %1 = load i8*, i8** %host_data, align 8, !dbg !3298
  %2 = bitcast i8* %1 to %struct.intmux_irqchip_data*, !dbg !3297
  store %struct.intmux_irqchip_data* %2, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3296
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !3299, metadata !DIExpression()), !dbg !3300
  %3 = load %struct.intmux_irqchip_data*, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3301
  %chanidx = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %3, i32 0, i32 2, !dbg !3302
  %4 = load i32, i32* %chanidx, align 4, !dbg !3302
  store i32 %4, i32* %idx, align 4, !dbg !3300
  call void @llvm.dbg.declare(metadata %struct.intmux_data** %data, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3305, metadata !DIExpression()), !dbg !3307
  %5 = load %struct.intmux_irqchip_data*, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3307
  %6 = bitcast %struct.intmux_irqchip_data* %5 to i8*, !dbg !3307
  store i8* %6, i8** %__mptr, align 8, !dbg !3307
  br label %do.body, !dbg !3307

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3308

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !3307
  %8 = load i32, i32* %idx, align 4, !dbg !3307
  %conv = sext i32 %8 to i64, !dbg !3307
  %9 = mul i64 %conv, 312, !dbg !3307
  %10 = add i64 24, %9, !dbg !3307
  %idx.neg = sub i64 0, %10, !dbg !3307
  %add.ptr = getelementptr i8, i8* %7, i64 %idx.neg, !dbg !3307
  %11 = bitcast i8* %add.ptr to %struct.intmux_data*, !dbg !3307
  store %struct.intmux_data* %11, %struct.intmux_data** %tmp, align 8, !dbg !3308
  %12 = load %struct.intmux_data*, %struct.intmux_data** %tmp, align 8, !dbg !3307
  store %struct.intmux_data* %12, %struct.intmux_data** %data, align 8, !dbg !3304
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3310, metadata !DIExpression()), !dbg !3313
  %13 = load i32, i32* %intsize.addr, align 4, !dbg !3313
  %cmp = icmp ne i32 %13, 2, !dbg !3313
  %lnot = xor i1 %cmp, true, !dbg !3313
  %lnot2 = xor i1 %lnot, true, !dbg !3313
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3313
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3313
  %14 = load i32, i32* %__ret_warn_on, align 4, !dbg !3314
  %tobool = icmp ne i32 %14, 0, !dbg !3314
  %lnot3 = xor i1 %tobool, true, !dbg !3314
  %lnot5 = xor i1 %lnot3, true, !dbg !3314
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3314
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !3314
  %tobool8 = icmp ne i64 %conv7, 0, !dbg !3314
  br i1 %tobool8, label %if.then, label %if.end, !dbg !3313

if.then:                                          ; preds = %do.end
  br label %do.body9, !dbg !3314

do.body9:                                         ; preds = %if.then
  br label %do.body10, !dbg !3316

do.body10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3318

do.end11:                                         ; preds = %do.body10
  br label %do.body12, !dbg !3316

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 148, i32 2305, i64 12) #7, !dbg !3320, !srcloc !3322
  br label %do.end13, !dbg !3320

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 164) #7, !dbg !3323, !srcloc !3325
  br label %do.body14, !dbg !3316

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !3326

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !3316

do.end16:                                         ; preds = %do.end15
  br label %if.end, !dbg !3316

if.end:                                           ; preds = %do.end16, %do.end
  %15 = load i32, i32* %__ret_warn_on, align 4, !dbg !3313
  %tobool18 = icmp ne i32 %15, 0, !dbg !3313
  %lnot19 = xor i1 %tobool18, true, !dbg !3313
  %lnot21 = xor i1 %lnot19, true, !dbg !3313
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !3313
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !3313
  store i64 %conv23, i64* %tmp17, align 8, !dbg !3314
  %16 = load i64, i64* %tmp17, align 8, !dbg !3313
  %tobool24 = icmp ne i64 %16, 0, !dbg !3328
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !3329

if.then25:                                        ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !3330
  br label %return, !dbg !3330

if.end26:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on27, metadata !3331, metadata !DIExpression()), !dbg !3334
  %17 = load i32*, i32** %intspec.addr, align 8, !dbg !3334
  %arrayidx = getelementptr i32, i32* %17, i64 1, !dbg !3334
  %18 = load i32, i32* %arrayidx, align 4, !dbg !3334
  %19 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3334
  %channum = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %19, i32 0, i32 3, !dbg !3334
  %20 = load i32, i32* %channum, align 8, !dbg !3334
  %cmp28 = icmp uge i32 %18, %20, !dbg !3334
  %lnot30 = xor i1 %cmp28, true, !dbg !3334
  %lnot32 = xor i1 %lnot30, true, !dbg !3334
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !3334
  store i32 %lnot.ext33, i32* %__ret_warn_on27, align 4, !dbg !3334
  %21 = load i32, i32* %__ret_warn_on27, align 4, !dbg !3335
  %tobool34 = icmp ne i32 %21, 0, !dbg !3335
  %lnot35 = xor i1 %tobool34, true, !dbg !3335
  %lnot37 = xor i1 %lnot35, true, !dbg !3335
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !3335
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !3335
  %tobool40 = icmp ne i64 %conv39, 0, !dbg !3335
  br i1 %tobool40, label %if.then41, label %if.end50, !dbg !3334

if.then41:                                        ; preds = %if.end26
  br label %do.body42, !dbg !3335

do.body42:                                        ; preds = %if.then41
  br label %do.body43, !dbg !3337

do.body43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !3339

do.end44:                                         ; preds = %do.body43
  br label %do.body45, !dbg !3337

do.body45:                                        ; preds = %do.end44
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 151, i32 2305, i64 12) #7, !dbg !3341, !srcloc !3343
  br label %do.end46, !dbg !3341

do.end46:                                         ; preds = %do.body45
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 165) #7, !dbg !3344, !srcloc !3346
  br label %do.body47, !dbg !3337

do.body47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !3347

do.end48:                                         ; preds = %do.body47
  br label %do.end49, !dbg !3337

do.end49:                                         ; preds = %do.end48
  br label %if.end50, !dbg !3337

if.end50:                                         ; preds = %do.end49, %if.end26
  %22 = load i32, i32* %__ret_warn_on27, align 4, !dbg !3334
  %tobool52 = icmp ne i32 %22, 0, !dbg !3334
  %lnot53 = xor i1 %tobool52, true, !dbg !3334
  %lnot55 = xor i1 %lnot53, true, !dbg !3334
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !3334
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !3334
  store i64 %conv57, i64* %tmp51, align 8, !dbg !3335
  %23 = load i64, i64* %tmp51, align 8, !dbg !3334
  %tobool58 = icmp ne i64 %23, 0, !dbg !3349
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !3350

if.then59:                                        ; preds = %if.end50
  store i32 -22, i32* %retval, align 4, !dbg !3351
  br label %return, !dbg !3351

if.end60:                                         ; preds = %if.end50
  %24 = load i32*, i32** %intspec.addr, align 8, !dbg !3352
  %arrayidx61 = getelementptr i32, i32* %24, i64 0, !dbg !3352
  %25 = load i32, i32* %arrayidx61, align 4, !dbg !3352
  %conv62 = zext i32 %25 to i64, !dbg !3352
  %26 = load i64*, i64** %out_hwirq.addr, align 8, !dbg !3353
  store i64 %conv62, i64* %26, align 8, !dbg !3354
  %27 = load i32*, i32** %out_type.addr, align 8, !dbg !3355
  store i32 4, i32* %27, align 4, !dbg !3356
  store i32 0, i32* %retval, align 4, !dbg !3357
  br label %return, !dbg !3357

return:                                           ; preds = %if.end60, %if.then59, %if.then25
  %28 = load i32, i32* %retval, align 4, !dbg !3358
  ret i32 %28, !dbg !3358
}

; Function Attrs: noredzone
declare dso_local i32 @irq_set_chip_data(i32, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @irq_set_chip_and_handler(i32 %irq, %struct.irq_chip* %chip, void (%struct.irq_desc*)* %handle) #2 !dbg !3359 {
entry:
  %irq.addr = alloca i32, align 4
  %chip.addr = alloca %struct.irq_chip*, align 8
  %handle.addr = alloca void (%struct.irq_desc*)*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !3362, metadata !DIExpression()), !dbg !3363
  store %struct.irq_chip* %chip, %struct.irq_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_chip** %chip.addr, metadata !3364, metadata !DIExpression()), !dbg !3365
  store void (%struct.irq_desc*)* %handle, void (%struct.irq_desc*)** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.irq_desc*)** %handle.addr, metadata !3366, metadata !DIExpression()), !dbg !3367
  %0 = load i32, i32* %irq.addr, align 4, !dbg !3368
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip.addr, align 8, !dbg !3369
  %2 = load void (%struct.irq_desc*)*, void (%struct.irq_desc*)** %handle.addr, align 8, !dbg !3370
  call void @irq_set_chip_and_handler_name(i32 %0, %struct.irq_chip* %1, void (%struct.irq_desc*)* %2, i8* null) #8, !dbg !3371
  ret void, !dbg !3372
}

; Function Attrs: noredzone
declare dso_local void @handle_level_irq(%struct.irq_desc*) #1

; Function Attrs: noredzone
declare dso_local void @irq_set_chip_and_handler_name(i32, %struct.irq_chip*, void (%struct.irq_desc*)*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @irq_desc_get_handler_data(%struct.irq_desc* %desc) #2 !dbg !3373 {
entry:
  %desc.addr = alloca %struct.irq_desc*, align 8
  store %struct.irq_desc* %desc, %struct.irq_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_desc** %desc.addr, metadata !3376, metadata !DIExpression()), !dbg !3377
  %0 = load %struct.irq_desc*, %struct.irq_desc** %desc.addr, align 8, !dbg !3378
  %irq_common_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %0, i32 0, i32 0, !dbg !3379
  %handler_data = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %irq_common_data, i32 0, i32 1, !dbg !3380
  %1 = load i8*, i8** %handler_data, align 8, !dbg !3380
  ret i8* %1, !dbg !3381
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @chained_irq_enter(%struct.irq_chip* %chip, %struct.irq_desc* %desc) #2 !dbg !3382 {
entry:
  %chip.addr = alloca %struct.irq_chip*, align 8
  %desc.addr = alloca %struct.irq_desc*, align 8
  store %struct.irq_chip* %chip, %struct.irq_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_chip** %chip.addr, metadata !3386, metadata !DIExpression()), !dbg !3387
  store %struct.irq_desc* %desc, %struct.irq_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_desc** %desc.addr, metadata !3388, metadata !DIExpression()), !dbg !3389
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip.addr, align 8, !dbg !3390
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i32 0, i32 10, !dbg !3392
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8, !dbg !3392
  %tobool = icmp ne void (%struct.irq_data*)* %1, null, !dbg !3390
  br i1 %tobool, label %if.then, label %if.end, !dbg !3393

if.then:                                          ; preds = %entry
  br label %if.end10, !dbg !3394

if.end:                                           ; preds = %entry
  %2 = load %struct.irq_chip*, %struct.irq_chip** %chip.addr, align 8, !dbg !3395
  %irq_mask_ack = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %2, i32 0, i32 8, !dbg !3397
  %3 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask_ack, align 8, !dbg !3397
  %tobool1 = icmp ne void (%struct.irq_data*)* %3, null, !dbg !3395
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !3398

if.then2:                                         ; preds = %if.end
  %4 = load %struct.irq_chip*, %struct.irq_chip** %chip.addr, align 8, !dbg !3399
  %irq_mask_ack3 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %4, i32 0, i32 8, !dbg !3401
  %5 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask_ack3, align 8, !dbg !3401
  %6 = load %struct.irq_desc*, %struct.irq_desc** %desc.addr, align 8, !dbg !3402
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %6, i32 0, i32 1, !dbg !3403
  call void %5(%struct.irq_data* %irq_data) #8, !dbg !3399
  br label %if.end10, !dbg !3404

if.else:                                          ; preds = %if.end
  %7 = load %struct.irq_chip*, %struct.irq_chip** %chip.addr, align 8, !dbg !3405
  %irq_mask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %7, i32 0, i32 7, !dbg !3407
  %8 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask, align 8, !dbg !3407
  %9 = load %struct.irq_desc*, %struct.irq_desc** %desc.addr, align 8, !dbg !3408
  %irq_data4 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %9, i32 0, i32 1, !dbg !3409
  call void %8(%struct.irq_data* %irq_data4) #8, !dbg !3405
  %10 = load %struct.irq_chip*, %struct.irq_chip** %chip.addr, align 8, !dbg !3410
  %irq_ack = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %10, i32 0, i32 6, !dbg !3412
  %11 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_ack, align 8, !dbg !3412
  %tobool5 = icmp ne void (%struct.irq_data*)* %11, null, !dbg !3410
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !3413

if.then6:                                         ; preds = %if.else
  %12 = load %struct.irq_chip*, %struct.irq_chip** %chip.addr, align 8, !dbg !3414
  %irq_ack7 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %12, i32 0, i32 6, !dbg !3415
  %13 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_ack7, align 8, !dbg !3415
  %14 = load %struct.irq_desc*, %struct.irq_desc** %desc.addr, align 8, !dbg !3416
  %irq_data8 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 1, !dbg !3417
  call void %13(%struct.irq_data* %irq_data8) #8, !dbg !3414
  br label %if.end9, !dbg !3414

if.end9:                                          ; preds = %if.then6, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.end9, %if.then2
  ret void, !dbg !3418
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %desc) #2 !dbg !3419 {
entry:
  %desc.addr = alloca %struct.irq_desc*, align 8
  store %struct.irq_desc* %desc, %struct.irq_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_desc** %desc.addr, metadata !3422, metadata !DIExpression()), !dbg !3423
  %0 = load %struct.irq_desc*, %struct.irq_desc** %desc.addr, align 8, !dbg !3424
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %0, i32 0, i32 1, !dbg !3425
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irq_data, i32 0, i32 4, !dbg !3426
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8, !dbg !3426
  ret %struct.irq_chip* %1, !dbg !3427
}

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @generic_handle_irq(i32) #1

; Function Attrs: noredzone
declare dso_local i64 @find_next_bit(i64*, i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @chained_irq_exit(%struct.irq_chip* %chip, %struct.irq_desc* %desc) #2 !dbg !3428 {
entry:
  %chip.addr = alloca %struct.irq_chip*, align 8
  %desc.addr = alloca %struct.irq_desc*, align 8
  store %struct.irq_chip* %chip, %struct.irq_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_chip** %chip.addr, metadata !3429, metadata !DIExpression()), !dbg !3430
  store %struct.irq_desc* %desc, %struct.irq_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_desc** %desc.addr, metadata !3431, metadata !DIExpression()), !dbg !3432
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip.addr, align 8, !dbg !3433
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i32 0, i32 10, !dbg !3435
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8, !dbg !3435
  %tobool = icmp ne void (%struct.irq_data*)* %1, null, !dbg !3433
  br i1 %tobool, label %if.then, label %if.else, !dbg !3436

if.then:                                          ; preds = %entry
  %2 = load %struct.irq_chip*, %struct.irq_chip** %chip.addr, align 8, !dbg !3437
  %irq_eoi1 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %2, i32 0, i32 10, !dbg !3438
  %3 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi1, align 8, !dbg !3438
  %4 = load %struct.irq_desc*, %struct.irq_desc** %desc.addr, align 8, !dbg !3439
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %4, i32 0, i32 1, !dbg !3440
  call void %3(%struct.irq_data* %irq_data) #8, !dbg !3437
  br label %if.end, !dbg !3437

if.else:                                          ; preds = %entry
  %5 = load %struct.irq_chip*, %struct.irq_chip** %chip.addr, align 8, !dbg !3441
  %irq_unmask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %5, i32 0, i32 9, !dbg !3442
  %6 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_unmask, align 8, !dbg !3442
  %7 = load %struct.irq_desc*, %struct.irq_desc** %desc.addr, align 8, !dbg !3443
  %irq_data2 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %7, i32 0, i32 1, !dbg !3444
  call void %6(%struct.irq_data* %irq_data2) #8, !dbg !3441
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3445
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !3446 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3449, metadata !DIExpression()), !dbg !3450
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3451, metadata !DIExpression()), !dbg !3452
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3453
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3454
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !3455
  store i8* %0, i8** %driver_data, align 8, !dbg !3456
  ret void, !dbg !3457
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_idle(%struct.device*, i32) #1

; Function Attrs: noredzone
declare dso_local void @clk_disable(%struct.clk*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !3458 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3463, metadata !DIExpression()), !dbg !3464
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3465
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3466
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !3467
  ret i8* %call, !dbg !3468
}

; Function Attrs: noredzone
declare dso_local void @irq_domain_remove(%struct.irq_domain*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_disable(%struct.device* %dev) #2 !dbg !3469 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3470, metadata !DIExpression()), !dbg !3471
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3472
  call void @__pm_runtime_disable(%struct.device* %0, i1 zeroext true) #8, !dbg !3473
  ret void, !dbg !3474
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !3475 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3478, metadata !DIExpression()), !dbg !3479
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3480
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !3481
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3481
  ret i8* %1, !dbg !3482
}

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_disable(%struct.device*, i1 zeroext) #1

; Function Attrs: noredzone
declare dso_local i32 @pm_runtime_force_suspend(%struct.device*) #1

; Function Attrs: noredzone
declare dso_local i32 @pm_runtime_force_resume(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_intmux_runtime_suspend(%struct.device* %dev) #2 !dbg !3483 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data = alloca %struct.intmux_data*, align 8
  %irqchip_data = alloca %struct.intmux_irqchip_data*, align 8
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3484, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.declare(metadata %struct.intmux_data** %data, metadata !3486, metadata !DIExpression()), !dbg !3487
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3488
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !3489
  %1 = bitcast i8* %call to %struct.intmux_data*, !dbg !3489
  store %struct.intmux_data* %1, %struct.intmux_data** %data, align 8, !dbg !3487
  call void @llvm.dbg.declare(metadata %struct.intmux_irqchip_data** %irqchip_data, metadata !3490, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3492, metadata !DIExpression()), !dbg !3493
  store i32 0, i32* %i, align 4, !dbg !3494
  br label %for.cond, !dbg !3496

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3497
  %3 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3499
  %channum = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %3, i32 0, i32 3, !dbg !3500
  %4 = load i32, i32* %channum, align 8, !dbg !3500
  %cmp = icmp slt i32 %2, %4, !dbg !3501
  br i1 %cmp, label %for.body, label %for.end, !dbg !3502

for.body:                                         ; preds = %for.cond
  %5 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3503
  %irqchip_data1 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %5, i32 0, i32 4, !dbg !3505
  %6 = load i32, i32* %i, align 4, !dbg !3506
  %idxprom = sext i32 %6 to i64, !dbg !3503
  %arrayidx = getelementptr [0 x %struct.intmux_irqchip_data], [0 x %struct.intmux_irqchip_data]* %irqchip_data1, i64 0, i64 %idxprom, !dbg !3503
  store %struct.intmux_irqchip_data* %arrayidx, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3507
  %7 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3508
  %regs = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %7, i32 0, i32 1, !dbg !3508
  %8 = load i8*, i8** %regs, align 8, !dbg !3508
  %9 = load i32, i32* %i, align 4, !dbg !3508
  %mul = mul i32 64, %9, !dbg !3508
  %add = add i32 16, %mul, !dbg !3508
  %idx.ext = sext i32 %add to i64, !dbg !3508
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !3508
  %call2 = call i32 @__readl(i8* %add.ptr) #8, !dbg !3508
  %10 = load %struct.intmux_irqchip_data*, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3509
  %saved_reg = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %10, i32 0, i32 1, !dbg !3510
  store i32 %call2, i32* %saved_reg, align 8, !dbg !3511
  br label %for.inc, !dbg !3512

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !3513
  %inc = add i32 %11, 1, !dbg !3513
  store i32 %inc, i32* %i, align 4, !dbg !3513
  br label %for.cond, !dbg !3514, !llvm.loop !3515

for.end:                                          ; preds = %for.cond
  %12 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3517
  %ipg_clk = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %12, i32 0, i32 2, !dbg !3518
  %13 = load %struct.clk*, %struct.clk** %ipg_clk, align 8, !dbg !3518
  call void @clk_disable_unprepare(%struct.clk* %13) #8, !dbg !3519
  ret i32 0, !dbg !3520
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_intmux_runtime_resume(%struct.device* %dev) #2 !dbg !3521 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %data = alloca %struct.intmux_data*, align 8
  %irqchip_data = alloca %struct.intmux_irqchip_data*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3522, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.declare(metadata %struct.intmux_data** %data, metadata !3524, metadata !DIExpression()), !dbg !3525
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3526
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !3527
  %1 = bitcast i8* %call to %struct.intmux_data*, !dbg !3527
  store %struct.intmux_data* %1, %struct.intmux_data** %data, align 8, !dbg !3525
  call void @llvm.dbg.declare(metadata %struct.intmux_irqchip_data** %irqchip_data, metadata !3528, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3530, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3532, metadata !DIExpression()), !dbg !3533
  %2 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3534
  %ipg_clk = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %2, i32 0, i32 2, !dbg !3535
  %3 = load %struct.clk*, %struct.clk** %ipg_clk, align 8, !dbg !3535
  %call1 = call i32 @clk_prepare_enable(%struct.clk* %3) #8, !dbg !3536
  store i32 %call1, i32* %ret, align 4, !dbg !3537
  %4 = load i32, i32* %ret, align 4, !dbg !3538
  %tobool = icmp ne i32 %4, 0, !dbg !3538
  br i1 %tobool, label %if.then, label %if.end, !dbg !3540

if.then:                                          ; preds = %entry
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3541
  %6 = load i32, i32* %ret, align 4, !dbg !3541
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %6) #9, !dbg !3541
  %7 = load i32, i32* %ret, align 4, !dbg !3543
  store i32 %7, i32* %retval, align 4, !dbg !3544
  br label %return, !dbg !3544

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !3545
  br label %for.cond, !dbg !3547

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !3548
  %9 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3550
  %channum = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %9, i32 0, i32 3, !dbg !3551
  %10 = load i32, i32* %channum, align 8, !dbg !3551
  %cmp = icmp slt i32 %8, %10, !dbg !3552
  br i1 %cmp, label %for.body, label %for.end, !dbg !3553

for.body:                                         ; preds = %for.cond
  %11 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3554
  %irqchip_data2 = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %11, i32 0, i32 4, !dbg !3556
  %12 = load i32, i32* %i, align 4, !dbg !3557
  %idxprom = sext i32 %12 to i64, !dbg !3554
  %arrayidx = getelementptr [0 x %struct.intmux_irqchip_data], [0 x %struct.intmux_irqchip_data]* %irqchip_data2, i64 0, i64 %idxprom, !dbg !3554
  store %struct.intmux_irqchip_data* %arrayidx, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3558
  %13 = load %struct.intmux_irqchip_data*, %struct.intmux_irqchip_data** %irqchip_data, align 8, !dbg !3559
  %saved_reg = getelementptr inbounds %struct.intmux_irqchip_data, %struct.intmux_irqchip_data* %13, i32 0, i32 1, !dbg !3559
  %14 = load i32, i32* %saved_reg, align 8, !dbg !3559
  %15 = load %struct.intmux_data*, %struct.intmux_data** %data, align 8, !dbg !3559
  %regs = getelementptr inbounds %struct.intmux_data, %struct.intmux_data* %15, i32 0, i32 1, !dbg !3559
  %16 = load i8*, i8** %regs, align 8, !dbg !3559
  %17 = load i32, i32* %i, align 4, !dbg !3559
  %mul = mul i32 64, %17, !dbg !3559
  %add = add i32 16, %mul, !dbg !3559
  %idx.ext = sext i32 %add to i64, !dbg !3559
  %add.ptr = getelementptr i8, i8* %16, i64 %idx.ext, !dbg !3559
  call void @__writel(i32 %14, i8* %add.ptr) #8, !dbg !3559
  br label %for.inc, !dbg !3560

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !3561
  %inc = add i32 %18, 1, !dbg !3561
  store i32 %inc, i32* %i, align 4, !dbg !3561
  br label %for.cond, !dbg !3562, !llvm.loop !3563

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !3565
  br label %return, !dbg !3565

return:                                           ; preds = %for.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !3566
  ret i32 %19, !dbg !3566
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2480}
!llvm.module.flags = !{!2481, !2482, !2483, !2484}
!llvm.ident = !{!2485}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_imx_intmux_driver_init167", scope: !2, file: !3, line: 368, type: !127, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !115, globals: !2410, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/irqchip/irq-imx-intmux.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !71, !79, !85, !90}
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !65, line: 478, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !72, line: 1084, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !75, !76, !77, !78}
!74 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!77 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!78 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !80, line: 11, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 10, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !72, line: 76, baseType: !7, size: 32, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!92 = !DIEnumerator(name: "IRQ_TYPE_NONE", value: 0, isUnsigned: true)
!93 = !DIEnumerator(name: "IRQ_TYPE_EDGE_RISING", value: 1, isUnsigned: true)
!94 = !DIEnumerator(name: "IRQ_TYPE_EDGE_FALLING", value: 2, isUnsigned: true)
!95 = !DIEnumerator(name: "IRQ_TYPE_EDGE_BOTH", value: 3, isUnsigned: true)
!96 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_HIGH", value: 4, isUnsigned: true)
!97 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_LOW", value: 8, isUnsigned: true)
!98 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_MASK", value: 12, isUnsigned: true)
!99 = !DIEnumerator(name: "IRQ_TYPE_SENSE_MASK", value: 15, isUnsigned: true)
!100 = !DIEnumerator(name: "IRQ_TYPE_DEFAULT", value: 15, isUnsigned: true)
!101 = !DIEnumerator(name: "IRQ_TYPE_PROBE", value: 16, isUnsigned: true)
!102 = !DIEnumerator(name: "IRQ_LEVEL", value: 256, isUnsigned: true)
!103 = !DIEnumerator(name: "IRQ_PER_CPU", value: 512, isUnsigned: true)
!104 = !DIEnumerator(name: "IRQ_NOPROBE", value: 1024, isUnsigned: true)
!105 = !DIEnumerator(name: "IRQ_NOREQUEST", value: 2048, isUnsigned: true)
!106 = !DIEnumerator(name: "IRQ_NOAUTOEN", value: 4096, isUnsigned: true)
!107 = !DIEnumerator(name: "IRQ_NO_BALANCING", value: 8192, isUnsigned: true)
!108 = !DIEnumerator(name: "IRQ_MOVE_PCNTXT", value: 16384, isUnsigned: true)
!109 = !DIEnumerator(name: "IRQ_NESTED_THREAD", value: 32768, isUnsigned: true)
!110 = !DIEnumerator(name: "IRQ_NOTHREAD", value: 65536, isUnsigned: true)
!111 = !DIEnumerator(name: "IRQ_PER_CPU_DEVID", value: 131072, isUnsigned: true)
!112 = !DIEnumerator(name: "IRQ_IS_POLLED", value: 262144, isUnsigned: true)
!113 = !DIEnumerator(name: "IRQ_DISABLE_UNLAZY", value: 524288, isUnsigned: true)
!114 = !DIEnumerator(name: "IRQ_HIDDEN", value: 1048576, isUnsigned: true)
!115 = !{!116, !119, !120, !122, !126, !127, !128, !129, !2408}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !118, line: 76, flags: DIFlagFwdDecl)
!118 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!119 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !121, line: 148, baseType: !7)
!121 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !121, line: 55, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !124, line: 72, baseType: !125)
!124 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !124, line: 16, baseType: !126)
!126 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!128 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intmux_data", file: !3, line: 71, size: 192, elements: !131)
!131 = !{!132, !142, !143, !147, !148}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !130, file: !3, line: 72, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !134, line: 29, baseType: !135)
!134 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !134, line: 20, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !135, file: !134, line: 21, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !139, line: 25, baseType: !140)
!139 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 25, elements: !141)
!141 = !{}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !130, file: !3, line: 73, baseType: !127, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ipg_clk", scope: !130, file: !3, line: 74, baseType: !144, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !146, line: 17, flags: DIFlagFwdDecl)
!146 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!147 = !DIDerivedType(tag: DW_TAG_member, name: "channum", scope: !130, file: !3, line: 75, baseType: !119, size: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "irqchip_data", scope: !130, file: !3, line: 76, baseType: !149, offset: 192)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, elements: !1386)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intmux_irqchip_data", file: !3, line: 63, size: 2496, elements: !151)
!151 = !{!152, !2404, !2405, !2406, !2407}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !150, file: !3, line: 64, baseType: !153, size: 2304)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !72, line: 503, size: 2304, elements: !154)
!154 = !{!155, !2330, !2331, !2335, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2350, !2354, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2371, !2372, !2373, !2379, !2380, !2385, !2389, !2393, !2397, !2401, !2402, !2403}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !153, file: !72, line: 504, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !158)
!158 = !{!159, !1633, !1634, !1637, !1638, !1689, !1783, !1784, !1785, !1786, !1787, !1796, !1901, !1914, !2255, !2256, !2260, !2262, !2263, !2264, !2268, !2274, !2275, !2278, !2279, !2280, !2283, !2284, !2285, !2286, !2318, !2319, !2320, !2323, !2326, !2327, !2328, !2329}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !157, file: !30, line: 462, baseType: !160, size: 512)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !161, line: 64, size: 512, elements: !162)
!161 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !167, !173, !175, !227, !1470, !1623, !1628, !1629, !1630, !1631, !1632}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !161, line: 65, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!166 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !160, file: !161, line: 66, baseType: !168, size: 128, offset: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !121, line: 178, size: 128, elements: !169)
!169 = !{!170, !172}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !168, file: !121, line: 179, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !168, file: !121, line: 179, baseType: !171, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !160, file: !161, line: 67, baseType: !174, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !160, file: !161, line: 68, baseType: !176, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !161, line: 192, size: 704, elements: !178)
!178 = !{!179, !180, !188, !189}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !177, file: !161, line: 193, baseType: !168, size: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !177, file: !161, line: 194, baseType: !181, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !134, line: 83, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !134, line: 71, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !182, file: !134, line: 72, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !182, file: !134, line: 72, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !185, file: !134, line: 73, baseType: !135)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !177, file: !161, line: 195, baseType: !160, size: 512, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !177, file: !161, line: 196, baseType: !190, size: 64, offset: 640)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !161, line: 156, size: 192, elements: !193)
!193 = !{!194, !199, !204}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !192, file: !161, line: 157, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!119, !176, !174}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !161, line: 158, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!164, !176, !174}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !192, file: !161, line: 159, baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!119, !176, !174, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !161, line: 148, size: 20736, elements: !211)
!211 = !{!212, !217, !221, !222, !226}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !210, file: !161, line: 149, baseType: !213, size: 192)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 192, elements: !215)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!215 = !{!216}
!216 = !DISubrange(count: 3)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !210, file: !161, line: 150, baseType: !218, size: 4096, offset: 192)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 4096, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !210, file: !161, line: 151, baseType: !119, size: 32, offset: 4288)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !210, file: !161, line: 152, baseType: !223, size: 16384, offset: 4320)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 16384, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 2048)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !210, file: !161, line: 153, baseType: !119, size: 32, offset: 20704)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !160, file: !161, line: 69, baseType: !228, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !161, line: 138, size: 448, elements: !230)
!230 = !{!231, !235, !259, !261, !1417, !1448, !1452}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !229, file: !161, line: 139, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !174}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !229, file: !161, line: 140, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !239, line: 230, size: 128, elements: !240)
!239 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!240 = !{!241, !255}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !238, file: !239, line: 231, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !174, !248, !214}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !121, line: 60, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !124, line: 73, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !124, line: 15, baseType: !128)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !239, line: 30, size: 128, elements: !250)
!250 = !{!251, !252}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !239, line: 31, baseType: !164, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !249, file: !239, line: 32, baseType: !253, size: 16, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !121, line: 19, baseType: !254)
!254 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !238, file: !239, line: 232, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!245, !174, !248, !164, !122}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !229, file: !161, line: 141, baseType: !260, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !229, file: !161, line: 142, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !239, line: 84, size: 320, elements: !266)
!266 = !{!267, !268, !272, !1414, !1415}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !239, line: 85, baseType: !164, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !265, file: !239, line: 86, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!253, !174, !248, !119}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !265, file: !239, line: 88, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!253, !174, !276, !119}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !239, line: 168, size: 448, elements: !278)
!278 = !{!279, !280, !281, !282, !292, !293}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !277, file: !239, line: 169, baseType: !249, size: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !277, file: !239, line: 170, baseType: !122, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !277, file: !239, line: 171, baseType: !127, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !277, file: !239, line: 172, baseType: !283, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!245, !286, !174, !276, !214, !289, !122}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !288, line: 526, flags: DIFlagFwdDecl)
!288 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !121, line: 46, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !124, line: 88, baseType: !291)
!291 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !277, file: !239, line: 174, baseType: !283, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !277, file: !239, line: 176, baseType: !294, size: 64, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!119, !286, !174, !276, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !299, line: 305, size: 1472, elements: !300)
!299 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!300 = !{!301, !302, !303, !304, !305, !313, !314, !1388, !1394, !1395, !1400, !1401, !1404, !1408, !1409, !1410, !1411, !1412}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !298, file: !299, line: 308, baseType: !126, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !298, file: !299, line: 309, baseType: !126, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !298, file: !299, line: 313, baseType: !297, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !298, file: !299, line: 313, baseType: !297, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !298, file: !299, line: 315, baseType: !306, size: 192, align: 64, offset: 256)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !307, line: 24, size: 192, align: 64, elements: !308)
!307 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!308 = !{!309, !310, !312}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !306, file: !307, line: 25, baseType: !126, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !306, file: !307, line: 26, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !306, file: !307, line: 27, baseType: !311, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !298, file: !299, line: 323, baseType: !126, size: 64, offset: 448)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !298, file: !299, line: 327, baseType: !315, size: 64, offset: 512)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !299, line: 388, size: 7296, elements: !317)
!317 = !{!318, !1384}
!318 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !299, line: 389, baseType: !319, size: 7296)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !316, file: !299, line: 389, size: 7296, elements: !320)
!320 = !{!321, !322, !326, !332, !336, !337, !338, !339, !340, !348, !353, !354, !355, !356, !365, !366, !367, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !401, !409, !412, !444, !445, !1355, !1356, !1359, !1362, !1363, !1366, !1367, !1368, !1371, !1383}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !319, file: !299, line: 390, baseType: !297, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !319, file: !299, line: 391, baseType: !323, size: 64, offset: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !307, line: 31, size: 64, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !323, file: !307, line: 32, baseType: !311, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !319, file: !299, line: 392, baseType: !327, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !328, line: 23, baseType: !329)
!328 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !330, line: 31, baseType: !331)
!330 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!331 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !319, file: !299, line: 394, baseType: !333, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!126, !286, !126, !126, !126, !126}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !319, file: !299, line: 398, baseType: !126, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !319, file: !299, line: 399, baseType: !126, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !319, file: !299, line: 405, baseType: !126, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !319, file: !299, line: 406, baseType: !126, size: 64, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !319, file: !299, line: 407, baseType: !341, size: 64, offset: 512)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !288, line: 286, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !288, line: 286, size: 64, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !343, file: !288, line: 286, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !347, line: 18, baseType: !126)
!347 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!348 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !319, file: !299, line: 416, baseType: !349, size: 32, offset: 576)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !121, line: 168, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !121, line: 166, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !350, file: !121, line: 167, baseType: !119, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !319, file: !299, line: 428, baseType: !349, size: 32, offset: 608)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !319, file: !299, line: 437, baseType: !349, size: 32, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !319, file: !299, line: 447, baseType: !349, size: 32, offset: 672)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !319, file: !299, line: 450, baseType: !357, size: 64, offset: 704)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !358, line: 13, baseType: !359)
!358 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !121, line: 175, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !121, line: 173, size: 64, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !360, file: !121, line: 174, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !328, line: 22, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !330, line: 30, baseType: !291)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !319, file: !299, line: 452, baseType: !119, size: 32, offset: 768)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !319, file: !299, line: 454, baseType: !181, offset: 800)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !319, file: !299, line: 457, baseType: !368, size: 256, offset: 832)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !369, line: 35, size: 256, elements: !370)
!369 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!370 = !{!371, !372, !373, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !368, file: !369, line: 36, baseType: !357, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !368, file: !369, line: 42, baseType: !357, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !368, file: !369, line: 46, baseType: !133, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !368, file: !369, line: 47, baseType: !168, size: 128, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !319, file: !299, line: 459, baseType: !168, size: 128, offset: 1088)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !319, file: !299, line: 466, baseType: !126, size: 64, offset: 1216)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !319, file: !299, line: 467, baseType: !126, size: 64, offset: 1280)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !319, file: !299, line: 469, baseType: !126, size: 64, offset: 1344)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !319, file: !299, line: 470, baseType: !126, size: 64, offset: 1408)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !319, file: !299, line: 471, baseType: !359, size: 64, offset: 1472)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !319, file: !299, line: 472, baseType: !126, size: 64, offset: 1536)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !319, file: !299, line: 473, baseType: !126, size: 64, offset: 1600)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !319, file: !299, line: 474, baseType: !126, size: 64, offset: 1664)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !319, file: !299, line: 475, baseType: !126, size: 64, offset: 1728)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !319, file: !299, line: 477, baseType: !181, offset: 1792)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !319, file: !299, line: 478, baseType: !126, size: 64, offset: 1792)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !319, file: !299, line: 478, baseType: !126, size: 64, offset: 1856)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !319, file: !299, line: 478, baseType: !126, size: 64, offset: 1920)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !319, file: !299, line: 478, baseType: !126, size: 64, offset: 1984)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !319, file: !299, line: 479, baseType: !126, size: 64, offset: 2048)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !319, file: !299, line: 479, baseType: !126, size: 64, offset: 2112)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !319, file: !299, line: 479, baseType: !126, size: 64, offset: 2176)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !319, file: !299, line: 480, baseType: !126, size: 64, offset: 2240)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !319, file: !299, line: 480, baseType: !126, size: 64, offset: 2304)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !319, file: !299, line: 480, baseType: !126, size: 64, offset: 2368)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !319, file: !299, line: 480, baseType: !126, size: 64, offset: 2432)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !319, file: !299, line: 482, baseType: !398, size: 2816, offset: 2496)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2816, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 44)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !319, file: !299, line: 488, baseType: !402, size: 256, offset: 5312)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !403, line: 60, size: 256, elements: !404)
!403 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !402, file: !403, line: 61, baseType: !406, size: 256)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 256, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 4)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !319, file: !299, line: 490, baseType: !410, size: 64, offset: 5568)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !299, line: 490, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !319, file: !299, line: 493, baseType: !413, size: 896, offset: 5632)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !414, line: 53, baseType: !415)
!414 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !414, line: 13, size: 896, elements: !416)
!416 = !{!417, !418, !419, !420, !423, !424, !431, !432, !436, !437, !440}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !415, file: !414, line: 18, baseType: !327, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !415, file: !414, line: 28, baseType: !359, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !415, file: !414, line: 31, baseType: !368, size: 256, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !415, file: !414, line: 32, baseType: !421, size: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !414, line: 32, flags: DIFlagFwdDecl)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !415, file: !414, line: 37, baseType: !254, size: 16, offset: 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !415, file: !414, line: 40, baseType: !425, size: 192, offset: 512)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !426, line: 53, size: 192, elements: !427)
!426 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428, !429, !430}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !425, file: !426, line: 54, baseType: !357, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !425, file: !426, line: 55, baseType: !181, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !425, file: !426, line: 59, baseType: !168, size: 128, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !415, file: !414, line: 41, baseType: !127, size: 64, offset: 704)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !415, file: !414, line: 42, baseType: !433, size: 64, offset: 768)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !414, line: 42, flags: DIFlagFwdDecl)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !415, file: !414, line: 44, baseType: !349, size: 32, offset: 832)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !415, file: !414, line: 50, baseType: !438, size: 16, offset: 864)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !328, line: 19, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !330, line: 24, baseType: !254)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !415, file: !414, line: 51, baseType: !441, size: 16, offset: 880)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !328, line: 18, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !330, line: 23, baseType: !443)
!443 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !299, line: 495, baseType: !126, size: 64, offset: 6528)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !319, file: !299, line: 497, baseType: !446, size: 64, offset: 6592)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !299, line: 381, size: 384, elements: !448)
!448 = !{!449, !450, !1354}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !447, file: !299, line: 382, baseType: !349, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !447, file: !299, line: 383, baseType: !451, size: 128, offset: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !299, line: 376, size: 128, elements: !452)
!452 = !{!453, !1352}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !451, file: !299, line: 377, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !456, line: 640, size: 48640, elements: !457)
!456 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!457 = !{!458, !466, !468, !469, !475, !476, !477, !478, !479, !480, !481, !482, !486, !504, !515, !610, !611, !612, !623, !624, !626, !627, !628, !629, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !708, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !764, !766, !767, !768, !780, !782, !783, !784, !785, !786, !792, !793, !794, !795, !796, !797, !798, !810, !815, !819, !820, !821, !824, !828, !831, !834, !837, !840, !843, !846, !849, !855, !856, !857, !863, !864, !865, !866, !867, !876, !877, !878, !879, !880, !885, !886, !887, !890, !891, !894, !897, !900, !903, !906, !909, !910, !990, !993, !996, !997, !1000, !1001, !1002, !1008, !1009, !1010, !1023, !1024, !1025, !1037, !1042, !1045, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !455, file: !456, line: 646, baseType: !459, size: 128)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !460, line: 56, size: 128, elements: !461)
!460 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !460, line: 57, baseType: !126, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !459, file: !460, line: 58, baseType: !464, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !328, line: 21, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !330, line: 27, baseType: !7)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !455, file: !456, line: 649, baseType: !467, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !455, file: !456, line: 657, baseType: !127, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !455, file: !456, line: 658, baseType: !470, size: 32, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !471, line: 113, baseType: !472)
!471 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !471, line: 111, size: 32, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !472, file: !471, line: 112, baseType: !349, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !456, line: 660, baseType: !7, size: 32, offset: 288)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !455, file: !456, line: 661, baseType: !7, size: 32, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !455, file: !456, line: 684, baseType: !119, size: 32, offset: 352)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !455, file: !456, line: 686, baseType: !119, size: 32, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !455, file: !456, line: 687, baseType: !119, size: 32, offset: 416)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !455, file: !456, line: 688, baseType: !119, size: 32, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !455, file: !456, line: 689, baseType: !7, size: 32, offset: 480)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !455, file: !456, line: 691, baseType: !483, size: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !456, line: 691, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !455, file: !456, line: 692, baseType: !487, size: 832, offset: 576)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !456, line: 451, size: 832, elements: !488)
!488 = !{!489, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !487, file: !456, line: 453, baseType: !490, size: 128)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !456, line: 325, size: 128, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !490, file: !456, line: 326, baseType: !126, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !490, file: !456, line: 327, baseType: !464, size: 32, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !487, file: !456, line: 454, baseType: !306, size: 192, align: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !487, file: !456, line: 455, baseType: !168, size: 128, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !487, file: !456, line: 456, baseType: !7, size: 32, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !487, file: !456, line: 458, baseType: !327, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !487, file: !456, line: 459, baseType: !327, size: 64, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !487, file: !456, line: 460, baseType: !327, size: 64, offset: 640)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !487, file: !456, line: 461, baseType: !327, size: 64, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !487, file: !456, line: 463, baseType: !327, size: 64, offset: 768)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !487, file: !456, line: 465, baseType: !503, offset: 832)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !456, line: 415, elements: !141)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !455, file: !456, line: 693, baseType: !505, size: 384, offset: 1408)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !456, line: 489, size: 384, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512, !513}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !505, file: !456, line: 490, baseType: !168, size: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !505, file: !456, line: 491, baseType: !126, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !505, file: !456, line: 492, baseType: !126, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !505, file: !456, line: 493, baseType: !7, size: 32, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !505, file: !456, line: 494, baseType: !254, size: 16, offset: 288)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !505, file: !456, line: 495, baseType: !254, size: 16, offset: 304)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !505, file: !456, line: 497, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !455, file: !456, line: 697, baseType: !516, size: 1792, offset: 1792)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !456, line: 507, size: 1792, elements: !517)
!517 = !{!518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !607, !608}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !516, file: !456, line: 508, baseType: !306, size: 192, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !516, file: !456, line: 515, baseType: !327, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !516, file: !456, line: 516, baseType: !327, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !516, file: !456, line: 517, baseType: !327, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !516, file: !456, line: 518, baseType: !327, size: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !516, file: !456, line: 519, baseType: !327, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !516, file: !456, line: 526, baseType: !363, size: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !516, file: !456, line: 527, baseType: !327, size: 64, offset: 576)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !516, file: !456, line: 528, baseType: !7, size: 32, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !516, file: !456, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !516, file: !456, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !516, file: !456, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !516, file: !456, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !516, file: !456, line: 563, baseType: !532, size: 512, offset: 704)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !533)
!533 = !{!534, !542, !543, !548, !600, !604, !605, !606}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !532, file: !6, line: 119, baseType: !535, size: 256)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !536, line: 9, size: 256, elements: !537)
!536 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !535, file: !536, line: 10, baseType: !306, size: 192, align: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !535, file: !536, line: 11, baseType: !540, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !541, line: 29, baseType: !363)
!541 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !532, file: !6, line: 120, baseType: !540, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !532, file: !6, line: 121, baseType: !544, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!5, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !532, file: !6, line: 122, baseType: !549, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !551)
!551 = !{!552, !572, !573, !576, !586, !587, !595, !599}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !550, file: !6, line: 160, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !554, file: !6, line: 215, baseType: !133)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !554, file: !6, line: 216, baseType: !7, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !554, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !554, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !554, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !554, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !554, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !554, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !554, file: !6, line: 233, baseType: !540, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !554, file: !6, line: 234, baseType: !547, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !554, file: !6, line: 235, baseType: !540, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !554, file: !6, line: 236, baseType: !547, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !554, file: !6, line: 237, baseType: !569, size: 4096, offset: 512)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 4096, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 8)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !550, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !550, file: !6, line: 162, baseType: !574, size: 32, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !121, line: 27, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !124, line: 96, baseType: !119)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !550, file: !6, line: 163, baseType: !577, size: 32, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !578, line: 276, baseType: !579)
!578 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !578, line: 276, size: 32, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !579, file: !578, line: 276, baseType: !582, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !578, line: 70, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !578, line: 65, size: 32, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !583, file: !578, line: 66, baseType: !7, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !550, file: !6, line: 164, baseType: !547, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !550, file: !6, line: 165, baseType: !588, size: 128, offset: 256)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !536, line: 14, size: 128, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !588, file: !536, line: 15, baseType: !591, size: 128)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !307, line: 125, size: 128, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !591, file: !307, line: 126, baseType: !323, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !591, file: !307, line: 127, baseType: !311, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !550, file: !6, line: 166, baseType: !596, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!540}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !550, file: !6, line: 167, baseType: !540, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !532, file: !6, line: 123, baseType: !601, size: 8, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !328, line: 17, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !330, line: 21, baseType: !603)
!603 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !532, file: !6, line: 124, baseType: !601, size: 8, offset: 456)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !532, file: !6, line: 125, baseType: !601, size: 8, offset: 464)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !532, file: !6, line: 126, baseType: !601, size: 8, offset: 472)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !516, file: !456, line: 572, baseType: !532, size: 512, offset: 1216)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !516, file: !456, line: 580, baseType: !609, size: 64, offset: 1728)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !455, file: !456, line: 721, baseType: !7, size: 32, offset: 3584)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !455, file: !456, line: 722, baseType: !119, size: 32, offset: 3616)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !455, file: !456, line: 723, baseType: !613, size: 64, offset: 3648)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !616, line: 17, baseType: !617)
!616 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !616, line: 17, size: 64, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !617, file: !616, line: 17, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 64, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 1)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !455, file: !456, line: 724, baseType: !615, size: 64, offset: 3712)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !455, file: !456, line: 749, baseType: !625, offset: 3776)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !456, line: 290, elements: !141)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !455, file: !456, line: 751, baseType: !168, size: 128, offset: 3776)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !455, file: !456, line: 757, baseType: !315, size: 64, offset: 3904)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !455, file: !456, line: 758, baseType: !315, size: 64, offset: 3968)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !455, file: !456, line: 761, baseType: !630, size: 320, offset: 4032)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !403, line: 34, size: 320, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !630, file: !403, line: 35, baseType: !327, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !630, file: !403, line: 36, baseType: !634, size: 256, offset: 64)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !407)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !455, file: !456, line: 766, baseType: !119, size: 32, offset: 4352)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !455, file: !456, line: 767, baseType: !119, size: 32, offset: 4384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !455, file: !456, line: 768, baseType: !119, size: 32, offset: 4416)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !455, file: !456, line: 770, baseType: !119, size: 32, offset: 4448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !455, file: !456, line: 772, baseType: !126, size: 64, offset: 4480)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !455, file: !456, line: 775, baseType: !7, size: 32, offset: 4544)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !455, file: !456, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !455, file: !456, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !455, file: !456, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !455, file: !456, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !455, file: !456, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !455, file: !456, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !455, file: !456, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !455, file: !456, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !455, file: !456, line: 831, baseType: !126, size: 64, offset: 4672)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !455, file: !456, line: 833, baseType: !651, size: 384, offset: 4736)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !652)
!652 = !{!653, !658}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !651, file: !12, line: 26, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!128, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !12, line: 27, baseType: !659, size: 320, offset: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !12, line: 27, size: 320, elements: !660)
!660 = !{!661, !671, !698}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !659, file: !12, line: 36, baseType: !662, size: 320)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !659, file: !12, line: 29, size: 320, elements: !663)
!663 = !{!664, !666, !667, !668, !669, !670}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !662, file: !12, line: 30, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !662, file: !12, line: 31, baseType: !464, size: 32, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !662, file: !12, line: 32, baseType: !464, size: 32, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !662, file: !12, line: 33, baseType: !464, size: 32, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !662, file: !12, line: 34, baseType: !327, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !662, file: !12, line: 35, baseType: !665, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !659, file: !12, line: 46, baseType: !672, size: 192)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !659, file: !12, line: 38, size: 192, elements: !673)
!673 = !{!674, !675, !676, !697}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !672, file: !12, line: 39, baseType: !574, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !672, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !12, line: 41, baseType: !677, size: 64, offset: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !12, line: 41, size: 64, elements: !678)
!678 = !{!679, !687}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !677, file: !12, line: 42, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !682, line: 7, size: 128, elements: !683)
!682 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!683 = !{!684, !686}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !681, file: !682, line: 8, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !124, line: 93, baseType: !291)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !681, file: !682, line: 9, baseType: !291, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !677, file: !12, line: 43, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !690, line: 7, size: 64, elements: !691)
!690 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!691 = !{!692, !696}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !689, file: !690, line: 8, baseType: !693, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !690, line: 5, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !328, line: 20, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !330, line: 26, baseType: !119)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !689, file: !690, line: 9, baseType: !694, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !672, file: !12, line: 45, baseType: !327, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !659, file: !12, line: 54, baseType: !699, size: 256)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !659, file: !12, line: 48, size: 256, elements: !700)
!700 = !{!701, !704, !705, !706, !707}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !699, file: !12, line: 49, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !699, file: !12, line: 50, baseType: !119, size: 32, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !699, file: !12, line: 51, baseType: !119, size: 32, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !699, file: !12, line: 52, baseType: !126, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !699, file: !12, line: 53, baseType: !126, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !455, file: !456, line: 835, baseType: !709, size: 32, offset: 5120)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !121, line: 22, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !124, line: 28, baseType: !119)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !455, file: !456, line: 836, baseType: !709, size: 32, offset: 5152)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !455, file: !456, line: 840, baseType: !126, size: 64, offset: 5184)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !455, file: !456, line: 849, baseType: !454, size: 64, offset: 5248)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !455, file: !456, line: 852, baseType: !454, size: 64, offset: 5312)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !455, file: !456, line: 857, baseType: !168, size: 128, offset: 5376)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !455, file: !456, line: 858, baseType: !168, size: 128, offset: 5504)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !455, file: !456, line: 859, baseType: !454, size: 64, offset: 5632)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !455, file: !456, line: 867, baseType: !168, size: 128, offset: 5696)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !455, file: !456, line: 868, baseType: !168, size: 128, offset: 5824)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !455, file: !456, line: 871, baseType: !721, size: 64, offset: 5952)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !723, line: 59, size: 768, elements: !724)
!723 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!724 = !{!725, !726, !727, !728, !739, !740, !747, !756}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !722, file: !723, line: 61, baseType: !470, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !722, file: !723, line: 62, baseType: !7, size: 32, offset: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !722, file: !723, line: 63, baseType: !181, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !722, file: !723, line: 65, baseType: !729, size: 256, offset: 64)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 256, elements: !407)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !121, line: 182, size: 64, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !730, file: !121, line: 183, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !121, line: 186, size: 128, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !121, line: 187, baseType: !733, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !734, file: !121, line: 187, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !722, file: !723, line: 66, baseType: !730, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !722, file: !723, line: 68, baseType: !741, size: 128, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !742, line: 40, baseType: !743)
!742 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !742, line: 36, size: 128, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !743, file: !742, line: 37, baseType: !181)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !743, file: !742, line: 38, baseType: !168, size: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !722, file: !723, line: 69, baseType: !748, size: 128, align: 64, offset: 512)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !121, line: 216, size: 128, align: 64, elements: !749)
!749 = !{!750, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !748, file: !121, line: 217, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !748, file: !121, line: 218, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !751}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !722, file: !723, line: 70, baseType: !757, size: 128, offset: 640)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 128, elements: !621)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !723, line: 54, size: 128, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !758, file: !723, line: 55, baseType: !119, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !758, file: !723, line: 56, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !723, line: 56, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !455, file: !456, line: 872, baseType: !765, size: 512, offset: 6016)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 512, elements: !407)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !455, file: !456, line: 873, baseType: !168, size: 128, offset: 6528)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !455, file: !456, line: 874, baseType: !168, size: 128, offset: 6656)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !455, file: !456, line: 876, baseType: !769, size: 64, offset: 6784)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !771, line: 26, size: 192, elements: !772)
!771 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !770, file: !771, line: 27, baseType: !7, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !770, file: !771, line: 28, baseType: !775, size: 128, offset: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !776, line: 43, size: 128, elements: !777)
!776 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !775, file: !776, line: 44, baseType: !133)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !775, file: !776, line: 45, baseType: !168, size: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !455, file: !456, line: 879, baseType: !781, size: 64, offset: 6848)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !455, file: !456, line: 882, baseType: !781, size: 64, offset: 6912)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !455, file: !456, line: 884, baseType: !327, size: 64, offset: 6976)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !455, file: !456, line: 885, baseType: !327, size: 64, offset: 7040)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !455, file: !456, line: 890, baseType: !327, size: 64, offset: 7104)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !455, file: !456, line: 891, baseType: !787, size: 128, offset: 7168)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !456, line: 242, size: 128, elements: !788)
!788 = !{!789, !790, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !787, file: !456, line: 244, baseType: !327, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !787, file: !456, line: 245, baseType: !327, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !787, file: !456, line: 246, baseType: !133, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !455, file: !456, line: 900, baseType: !126, size: 64, offset: 7296)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !455, file: !456, line: 901, baseType: !126, size: 64, offset: 7360)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !455, file: !456, line: 904, baseType: !327, size: 64, offset: 7424)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !455, file: !456, line: 907, baseType: !327, size: 64, offset: 7488)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !455, file: !456, line: 910, baseType: !126, size: 64, offset: 7552)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !455, file: !456, line: 911, baseType: !126, size: 64, offset: 7616)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !455, file: !456, line: 914, baseType: !799, size: 640, offset: 7680)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !800, line: 123, size: 640, elements: !801)
!800 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!801 = !{!802, !808, !809}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !799, file: !800, line: 124, baseType: !803, size: 576)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 576, elements: !215)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !800, line: 108, size: 192, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !804, file: !800, line: 109, baseType: !327, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !804, file: !800, line: 110, baseType: !588, size: 128, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !799, file: !800, line: 125, baseType: !7, size: 32, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !799, file: !800, line: 126, baseType: !7, size: 32, offset: 608)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !455, file: !456, line: 917, baseType: !811, size: 192, offset: 8320)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !800, line: 134, size: 192, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !811, file: !800, line: 135, baseType: !748, size: 128, align: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !811, file: !800, line: 136, baseType: !7, size: 32, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !455, file: !456, line: 923, baseType: !816, size: 64, offset: 8512)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !456, line: 923, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !455, file: !456, line: 926, baseType: !816, size: 64, offset: 8576)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !455, file: !456, line: 929, baseType: !816, size: 64, offset: 8640)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !455, file: !456, line: 933, baseType: !822, size: 64, offset: 8704)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !456, line: 933, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !455, file: !456, line: 943, baseType: !825, size: 128, offset: 8768)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 128, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 16)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !455, file: !456, line: 945, baseType: !829, size: 64, offset: 8896)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !456, line: 49, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !455, file: !456, line: 956, baseType: !832, size: 64, offset: 8960)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !456, line: 45, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !455, file: !456, line: 959, baseType: !835, size: 64, offset: 9024)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !456, line: 959, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !455, file: !456, line: 962, baseType: !838, size: 64, offset: 9088)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !456, line: 66, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !455, file: !456, line: 966, baseType: !841, size: 64, offset: 9152)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !456, line: 50, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !455, file: !456, line: 969, baseType: !844, size: 64, offset: 9216)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !800, line: 223, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !455, file: !456, line: 970, baseType: !847, size: 64, offset: 9280)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !456, line: 62, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !455, file: !456, line: 971, baseType: !850, size: 64, offset: 9344)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !851, line: 25, baseType: !852)
!851 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !851, line: 23, size: 64, elements: !853)
!853 = !{!854}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !852, file: !851, line: 24, baseType: !620, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !455, file: !456, line: 972, baseType: !850, size: 64, offset: 9408)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !455, file: !456, line: 974, baseType: !850, size: 64, offset: 9472)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !455, file: !456, line: 975, baseType: !858, size: 192, offset: 9536)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !859, line: 30, size: 192, elements: !860)
!859 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !858, file: !859, line: 31, baseType: !168, size: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !858, file: !859, line: 32, baseType: !850, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !455, file: !456, line: 976, baseType: !126, size: 64, offset: 9728)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !455, file: !456, line: 977, baseType: !122, size: 64, offset: 9792)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !455, file: !456, line: 978, baseType: !7, size: 32, offset: 9856)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !455, file: !456, line: 980, baseType: !751, size: 64, offset: 9920)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !455, file: !456, line: 989, baseType: !868, size: 128, offset: 9984)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !869, line: 35, size: 128, elements: !870)
!869 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!870 = !{!871, !872, !873}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !868, file: !869, line: 36, baseType: !119, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !868, file: !869, line: 37, baseType: !349, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !868, file: !869, line: 38, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !869, line: 23, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !455, file: !456, line: 992, baseType: !327, size: 64, offset: 10112)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !455, file: !456, line: 993, baseType: !327, size: 64, offset: 10176)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !455, file: !456, line: 996, baseType: !181, offset: 10240)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !455, file: !456, line: 999, baseType: !133, offset: 10240)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !455, file: !456, line: 1001, baseType: !881, size: 64, offset: 10240)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !456, line: 636, size: 64, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !881, file: !456, line: 637, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !455, file: !456, line: 1005, baseType: !591, size: 128, offset: 10304)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !455, file: !456, line: 1007, baseType: !454, size: 64, offset: 10432)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !455, file: !456, line: 1009, baseType: !888, size: 64, offset: 10496)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !456, line: 1009, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !455, file: !456, line: 1043, baseType: !127, size: 64, offset: 10560)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !455, file: !456, line: 1046, baseType: !892, size: 64, offset: 10624)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !456, line: 41, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !455, file: !456, line: 1050, baseType: !895, size: 64, offset: 10688)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !456, line: 42, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !455, file: !456, line: 1054, baseType: !898, size: 64, offset: 10752)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !456, line: 55, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !455, file: !456, line: 1056, baseType: !901, size: 64, offset: 10816)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !456, line: 40, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !455, file: !456, line: 1058, baseType: !904, size: 64, offset: 10880)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !456, line: 47, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !455, file: !456, line: 1061, baseType: !907, size: 64, offset: 10944)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !456, line: 43, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !455, file: !456, line: 1064, baseType: !126, size: 64, offset: 11008)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !455, file: !456, line: 1065, baseType: !911, size: 64, offset: 11072)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !859, line: 14, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !859, line: 12, size: 384, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !913, file: !859, line: 13, baseType: !916, size: 384)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !913, file: !859, line: 13, size: 384, elements: !917)
!917 = !{!918, !919, !920, !921}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !916, file: !859, line: 13, baseType: !119, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !916, file: !859, line: 13, baseType: !119, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !916, file: !859, line: 13, baseType: !119, size: 32, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !916, file: !859, line: 13, baseType: !922, size: 256, offset: 128)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !923, line: 32, size: 256, elements: !924)
!923 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!924 = !{!925, !931, !944, !950, !959, !979, !984}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !922, file: !923, line: 37, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !923, line: 34, size: 64, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !926, file: !923, line: 35, baseType: !710, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !926, file: !923, line: 36, baseType: !930, size: 32, offset: 32)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !124, line: 49, baseType: !7)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !922, file: !923, line: 45, baseType: !932, size: 192)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !923, line: 40, size: 192, elements: !933)
!933 = !{!934, !936, !937, !943}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !932, file: !923, line: 41, baseType: !935, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !124, line: 95, baseType: !119)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !932, file: !923, line: 42, baseType: !119, size: 32, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !932, file: !923, line: 43, baseType: !938, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !923, line: 11, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !923, line: 8, size: 64, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !939, file: !923, line: 9, baseType: !119, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !939, file: !923, line: 10, baseType: !127, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !932, file: !923, line: 44, baseType: !119, size: 32, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !922, file: !923, line: 52, baseType: !945, size: 128)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !923, line: 48, size: 128, elements: !946)
!946 = !{!947, !948, !949}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !945, file: !923, line: 49, baseType: !710, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !945, file: !923, line: 50, baseType: !930, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !945, file: !923, line: 51, baseType: !938, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !922, file: !923, line: 61, baseType: !951, size: 256)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !923, line: 55, size: 256, elements: !952)
!952 = !{!953, !954, !955, !956, !958}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !951, file: !923, line: 56, baseType: !710, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !951, file: !923, line: 57, baseType: !930, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !951, file: !923, line: 58, baseType: !119, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !951, file: !923, line: 59, baseType: !957, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !124, line: 94, baseType: !247)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !951, file: !923, line: 60, baseType: !957, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !922, file: !923, line: 95, baseType: !960, size: 256)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !923, line: 64, size: 256, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !960, file: !923, line: 65, baseType: !127, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !923, line: 77, baseType: !964, size: 192, offset: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !923, line: 77, size: 192, elements: !965)
!965 = !{!966, !967, !974}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !964, file: !923, line: 82, baseType: !443, size: 16)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !964, file: !923, line: 88, baseType: !968, size: 192)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !923, line: 84, size: 192, elements: !969)
!969 = !{!970, !972, !973}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !968, file: !923, line: 85, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 64, elements: !570)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !968, file: !923, line: 86, baseType: !127, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !968, file: !923, line: 87, baseType: !127, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !964, file: !923, line: 93, baseType: !975, size: 96)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !923, line: 90, size: 96, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !975, file: !923, line: 91, baseType: !971, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !975, file: !923, line: 92, baseType: !465, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !922, file: !923, line: 101, baseType: !980, size: 128)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !923, line: 98, size: 128, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !980, file: !923, line: 99, baseType: !128, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !980, file: !923, line: 100, baseType: !119, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !922, file: !923, line: 108, baseType: !985, size: 128)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !923, line: 104, size: 128, elements: !986)
!986 = !{!987, !988, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !985, file: !923, line: 105, baseType: !127, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !985, file: !923, line: 106, baseType: !119, size: 32, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !985, file: !923, line: 107, baseType: !7, size: 32, offset: 96)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !455, file: !456, line: 1067, baseType: !991, offset: 11136)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !992, line: 12, elements: !141)
!992 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!993 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !455, file: !456, line: 1099, baseType: !994, size: 64, offset: 11136)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !456, line: 56, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !455, file: !456, line: 1103, baseType: !168, size: 128, offset: 11200)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !455, file: !456, line: 1104, baseType: !998, size: 64, offset: 11328)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !456, line: 46, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !455, file: !456, line: 1105, baseType: !425, size: 192, offset: 11392)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !455, file: !456, line: 1106, baseType: !7, size: 32, offset: 11584)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !455, file: !456, line: 1109, baseType: !1003, size: 128, offset: 11648)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 128, elements: !1006)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !456, line: 51, flags: DIFlagFwdDecl)
!1006 = !{!1007}
!1007 = !DISubrange(count: 2)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !455, file: !456, line: 1110, baseType: !425, size: 192, offset: 11776)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !455, file: !456, line: 1111, baseType: !168, size: 128, offset: 11968)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !455, file: !456, line: 1173, baseType: !1011, size: 64, offset: 12096)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1013, line: 62, size: 256, align: 256, elements: !1014)
!1013 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1014 = !{!1015, !1016, !1017, !1022}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1012, file: !1013, line: 75, baseType: !465, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1012, file: !1013, line: 90, baseType: !465, size: 32, offset: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1012, file: !1013, line: 124, baseType: !1018, size: 64, offset: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !1013, line: 109, size: 64, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1018, file: !1013, line: 110, baseType: !329, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1018, file: !1013, line: 112, baseType: !329, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1012, file: !1013, line: 144, baseType: !465, size: 32, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !455, file: !456, line: 1174, baseType: !464, size: 32, offset: 12160)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !455, file: !456, line: 1179, baseType: !126, size: 64, offset: 12224)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !455, file: !456, line: 1182, baseType: !1026, size: 128, offset: 12288)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !403, line: 76, size: 128, elements: !1027)
!1027 = !{!1028, !1033, !1036}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1026, file: !403, line: 85, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1030, line: 7, size: 64, elements: !1031)
!1030 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1029, file: !1030, line: 12, baseType: !617, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1026, file: !403, line: 88, baseType: !1034, size: 8, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !121, line: 30, baseType: !1035)
!1035 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1026, file: !403, line: 95, baseType: !1034, size: 8, offset: 72)
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 1184, baseType: !1038, size: 128, offset: 12416)
!1038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !456, line: 1184, size: 128, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1038, file: !456, line: 1185, baseType: !470, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1038, file: !456, line: 1186, baseType: !748, size: 128, align: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !455, file: !456, line: 1190, baseType: !1043, size: 64, offset: 12544)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !456, line: 53, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !455, file: !456, line: 1192, baseType: !1046, size: 128, offset: 12608)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !403, line: 64, size: 128, elements: !1047)
!1047 = !{!1048, !1141, !1142}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1046, file: !403, line: 65, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !299, line: 68, size: 512, align: 128, elements: !1051)
!1051 = !{!1052, !1053, !1133, !1140}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1050, file: !299, line: 69, baseType: !126, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1050, file: !299, line: 77, baseType: !1054, size: 320, offset: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1050, file: !299, line: 77, size: 320, elements: !1055)
!1055 = !{!1056, !1065, !1070, !1098, !1106, !1112, !1125, !1132}
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !299, line: 78, baseType: !1057, size: 320)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !299, line: 78, size: 320, elements: !1058)
!1058 = !{!1059, !1060, !1063, !1064}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1057, file: !299, line: 84, baseType: !168, size: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1057, file: !299, line: 86, baseType: !1061, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !299, line: 26, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1057, file: !299, line: 87, baseType: !126, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1057, file: !299, line: 94, baseType: !126, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !299, line: 96, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !299, line: 96, size: 64, elements: !1067)
!1067 = !{!1068}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1066, file: !299, line: 101, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !121, line: 143, baseType: !327)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !299, line: 103, baseType: !1071, size: 320)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !299, line: 103, size: 320, elements: !1072)
!1072 = !{!1073, !1083, !1086, !1087}
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !299, line: 104, baseType: !1074, size: 128)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1071, file: !299, line: 104, size: 128, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1074, file: !299, line: 105, baseType: !168, size: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !299, line: 106, baseType: !1078, size: 128)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !299, line: 106, size: 128, elements: !1079)
!1079 = !{!1080, !1081, !1082}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1078, file: !299, line: 107, baseType: !1049, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1078, file: !299, line: 109, baseType: !119, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1078, file: !299, line: 110, baseType: !119, size: 32, offset: 96)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1071, file: !299, line: 117, baseType: !1084, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !299, line: 117, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1071, file: !299, line: 119, baseType: !127, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !299, line: 120, baseType: !1088, size: 64, offset: 256)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1071, file: !299, line: 120, size: 64, elements: !1089)
!1089 = !{!1090, !1091, !1092}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1088, file: !299, line: 121, baseType: !127, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1088, file: !299, line: 122, baseType: !126, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !299, line: 123, baseType: !1093, size: 32)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !299, line: 123, size: 32, elements: !1094)
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1093, file: !299, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1093, file: !299, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1093, file: !299, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !299, line: 130, baseType: !1099, size: 192)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !299, line: 130, size: 192, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1105}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1099, file: !299, line: 131, baseType: !126, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1099, file: !299, line: 134, baseType: !603, size: 8, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1099, file: !299, line: 135, baseType: !603, size: 8, offset: 72)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1099, file: !299, line: 136, baseType: !349, size: 32, offset: 96)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1099, file: !299, line: 137, baseType: !7, size: 32, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !299, line: 139, baseType: !1107, size: 256)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !299, line: 139, size: 256, elements: !1108)
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1107, file: !299, line: 140, baseType: !126, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1107, file: !299, line: 141, baseType: !349, size: 32, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1107, file: !299, line: 143, baseType: !168, size: 128, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !299, line: 145, baseType: !1113, size: 256)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !299, line: 145, size: 256, elements: !1114)
!1114 = !{!1115, !1116, !1118, !1119, !1124}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1113, file: !299, line: 146, baseType: !126, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1113, file: !299, line: 147, baseType: !1117, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !288, line: 509, baseType: !1049)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1113, file: !299, line: 148, baseType: !126, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !299, line: 149, baseType: !1120, size: 64, offset: 192)
!1120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1113, file: !299, line: 149, size: 64, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1120, file: !299, line: 150, baseType: !315, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1120, file: !299, line: 151, baseType: !349, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1113, file: !299, line: 156, baseType: !181, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !299, line: 159, baseType: !1126, size: 128)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !299, line: 159, size: 128, elements: !1127)
!1127 = !{!1128, !1131}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1126, file: !299, line: 161, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !299, line: 161, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1126, file: !299, line: 162, baseType: !127, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1054, file: !299, line: 176, baseType: !748, size: 128, align: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1050, file: !299, line: 179, baseType: !1134, size: 32, offset: 384)
!1134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1050, file: !299, line: 179, size: 32, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1134, file: !299, line: 184, baseType: !349, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1134, file: !299, line: 192, baseType: !7, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1134, file: !299, line: 194, baseType: !7, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1134, file: !299, line: 195, baseType: !119, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1050, file: !299, line: 199, baseType: !349, size: 32, offset: 416)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1046, file: !403, line: 67, baseType: !465, size: 32, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1046, file: !403, line: 68, baseType: !465, size: 32, offset: 96)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !455, file: !456, line: 1206, baseType: !119, size: 32, offset: 12736)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !455, file: !456, line: 1207, baseType: !119, size: 32, offset: 12768)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !455, file: !456, line: 1209, baseType: !126, size: 64, offset: 12800)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !455, file: !456, line: 1219, baseType: !327, size: 64, offset: 12864)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !455, file: !456, line: 1220, baseType: !327, size: 64, offset: 12928)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !455, file: !456, line: 1317, baseType: !119, size: 32, offset: 12992)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !455, file: !456, line: 1319, baseType: !454, size: 64, offset: 13056)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !455, file: !456, line: 1322, baseType: !1151, size: 64, offset: 13120)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1153, line: 56, size: 512, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1161, !1162, !1164}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1152, file: !1153, line: 57, baseType: !1151, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1152, file: !1153, line: 58, baseType: !127, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1152, file: !1153, line: 59, baseType: !126, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1152, file: !1153, line: 60, baseType: !126, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1152, file: !1153, line: 61, baseType: !1160, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1152, file: !1153, line: 62, baseType: !7, size: 32, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1152, file: !1153, line: 63, baseType: !1163, size: 64, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !121, line: 153, baseType: !327)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1152, file: !1153, line: 64, baseType: !1165, size: 64, offset: 448)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !455, file: !456, line: 1326, baseType: !470, size: 32, offset: 13184)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !455, file: !456, line: 1342, baseType: !127, size: 64, offset: 13248)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !455, file: !456, line: 1343, baseType: !329, size: 64, offset: 13312)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !455, file: !456, line: 1344, baseType: !327, size: 64, offset: 13376)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !455, file: !456, line: 1345, baseType: !329, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !455, file: !456, line: 1346, baseType: !329, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !455, file: !456, line: 1347, baseType: !329, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !455, file: !456, line: 1348, baseType: !748, size: 128, align: 64, offset: 13504)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !455, file: !456, line: 1358, baseType: !1176, size: 34816, offset: 13824)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1177, line: 485, size: 34816, elements: !1178)
!1177 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1178 = !{!1179, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1208, !1209, !1210, !1211, !1212, !1213, !1216, !1217, !1218}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1176, file: !1177, line: 487, baseType: !1180, size: 192)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1181, size: 192, elements: !215)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1182, line: 16, size: 64, elements: !1183)
!1182 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1181, file: !1182, line: 17, baseType: !438, size: 16)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1181, file: !1182, line: 18, baseType: !438, size: 16, offset: 16)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1181, file: !1182, line: 19, baseType: !438, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1181, file: !1182, line: 19, baseType: !438, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1181, file: !1182, line: 19, baseType: !438, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1181, file: !1182, line: 19, baseType: !438, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1181, file: !1182, line: 19, baseType: !438, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1181, file: !1182, line: 20, baseType: !438, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1181, file: !1182, line: 20, baseType: !438, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1181, file: !1182, line: 20, baseType: !438, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1181, file: !1182, line: 20, baseType: !438, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1181, file: !1182, line: 20, baseType: !438, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1181, file: !1182, line: 20, baseType: !438, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1176, file: !1177, line: 491, baseType: !126, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1176, file: !1177, line: 495, baseType: !254, size: 16, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1176, file: !1177, line: 496, baseType: !254, size: 16, offset: 272)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1176, file: !1177, line: 497, baseType: !254, size: 16, offset: 288)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1176, file: !1177, line: 498, baseType: !254, size: 16, offset: 304)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1176, file: !1177, line: 502, baseType: !126, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1176, file: !1177, line: 503, baseType: !126, size: 64, offset: 384)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1176, file: !1177, line: 514, baseType: !1205, size: 256, offset: 448)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1206, size: 256, elements: !407)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1177, line: 483, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1176, file: !1177, line: 516, baseType: !126, size: 64, offset: 704)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1176, file: !1177, line: 518, baseType: !126, size: 64, offset: 768)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1176, file: !1177, line: 520, baseType: !126, size: 64, offset: 832)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1176, file: !1177, line: 521, baseType: !126, size: 64, offset: 896)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1176, file: !1177, line: 522, baseType: !126, size: 64, offset: 960)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1176, file: !1177, line: 528, baseType: !1214, size: 64, offset: 1024)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1177, line: 10, flags: DIFlagFwdDecl)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1176, file: !1177, line: 535, baseType: !126, size: 64, offset: 1088)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1176, file: !1177, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1176, file: !1177, line: 540, baseType: !1219, size: 33280, offset: 1536)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1220, line: 317, size: 33280, elements: !1221)
!1220 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1221 = !{!1222, !1223, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1219, file: !1220, line: 330, baseType: !7, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1219, file: !1220, line: 337, baseType: !126, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1219, file: !1220, line: 348, baseType: !1225, size: 32768, offset: 512)
!1225 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1220, line: 304, size: 32768, elements: !1226)
!1226 = !{!1227, !1242, !1281, !1331, !1348}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1225, file: !1220, line: 305, baseType: !1228, size: 896)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1220, line: 12, size: 896, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1241}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1228, file: !1220, line: 13, baseType: !464, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1228, file: !1220, line: 14, baseType: !464, size: 32, offset: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1228, file: !1220, line: 15, baseType: !464, size: 32, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1228, file: !1220, line: 16, baseType: !464, size: 32, offset: 96)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1228, file: !1220, line: 17, baseType: !464, size: 32, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1228, file: !1220, line: 18, baseType: !464, size: 32, offset: 160)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1228, file: !1220, line: 19, baseType: !464, size: 32, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1228, file: !1220, line: 22, baseType: !1238, size: 640, offset: 224)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 640, elements: !1239)
!1239 = !{!1240}
!1240 = !DISubrange(count: 20)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1228, file: !1220, line: 25, baseType: !464, size: 32, offset: 864)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1225, file: !1220, line: 306, baseType: !1243, size: 4096, align: 128)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1220, line: 34, size: 4096, align: 128, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248, !1249, !1264, !1265, !1266, !1270, !1272, !1276}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1243, file: !1220, line: 35, baseType: !438, size: 16)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1243, file: !1220, line: 36, baseType: !438, size: 16, offset: 16)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1243, file: !1220, line: 37, baseType: !438, size: 16, offset: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1243, file: !1220, line: 38, baseType: !438, size: 16, offset: 48)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !1220, line: 39, baseType: !1250, size: 128, offset: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !1220, line: 39, size: 128, elements: !1251)
!1251 = !{!1252, !1257}
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !1220, line: 40, baseType: !1253, size: 128)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1250, file: !1220, line: 40, size: 128, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1253, file: !1220, line: 41, baseType: !327, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1253, file: !1220, line: 42, baseType: !327, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !1220, line: 44, baseType: !1258, size: 128)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1250, file: !1220, line: 44, size: 128, elements: !1259)
!1259 = !{!1260, !1261, !1262, !1263}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1258, file: !1220, line: 45, baseType: !464, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1258, file: !1220, line: 46, baseType: !464, size: 32, offset: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1258, file: !1220, line: 47, baseType: !464, size: 32, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1258, file: !1220, line: 48, baseType: !464, size: 32, offset: 96)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1243, file: !1220, line: 51, baseType: !464, size: 32, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1243, file: !1220, line: 52, baseType: !464, size: 32, offset: 224)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1243, file: !1220, line: 55, baseType: !1267, size: 1024, offset: 256)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 1024, elements: !1268)
!1268 = !{!1269}
!1269 = !DISubrange(count: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1243, file: !1220, line: 58, baseType: !1271, size: 2048, offset: 1280)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 2048, elements: !219)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1243, file: !1220, line: 60, baseType: !1273, size: 384, offset: 3328)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 384, elements: !1274)
!1274 = !{!1275}
!1275 = !DISubrange(count: 12)
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !1220, line: 62, baseType: !1277, size: 384, offset: 3712)
!1277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !1220, line: 62, size: 384, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1277, file: !1220, line: 63, baseType: !1273, size: 384)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1277, file: !1220, line: 64, baseType: !1273, size: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1225, file: !1220, line: 307, baseType: !1282, size: 1088)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1220, line: 79, size: 1088, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1330}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1282, file: !1220, line: 80, baseType: !464, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1282, file: !1220, line: 81, baseType: !464, size: 32, offset: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1282, file: !1220, line: 82, baseType: !464, size: 32, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1282, file: !1220, line: 83, baseType: !464, size: 32, offset: 96)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1282, file: !1220, line: 84, baseType: !464, size: 32, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1282, file: !1220, line: 85, baseType: !464, size: 32, offset: 160)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1282, file: !1220, line: 86, baseType: !464, size: 32, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1282, file: !1220, line: 88, baseType: !1238, size: 640, offset: 224)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1282, file: !1220, line: 89, baseType: !601, size: 8, offset: 864)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1282, file: !1220, line: 90, baseType: !601, size: 8, offset: 872)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1282, file: !1220, line: 91, baseType: !601, size: 8, offset: 880)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1282, file: !1220, line: 92, baseType: !601, size: 8, offset: 888)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1282, file: !1220, line: 93, baseType: !601, size: 8, offset: 896)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1282, file: !1220, line: 94, baseType: !601, size: 8, offset: 904)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1282, file: !1220, line: 95, baseType: !1299, size: 64, offset: 960)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1301, line: 11, size: 128, elements: !1302)
!1301 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1300, file: !1301, line: 12, baseType: !128, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1300, file: !1301, line: 13, baseType: !1305, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1307, line: 56, size: 1344, elements: !1308)
!1307 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1306, file: !1307, line: 61, baseType: !126, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1306, file: !1307, line: 62, baseType: !126, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1306, file: !1307, line: 63, baseType: !126, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1306, file: !1307, line: 64, baseType: !126, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1306, file: !1307, line: 65, baseType: !126, size: 64, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1306, file: !1307, line: 66, baseType: !126, size: 64, offset: 320)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1306, file: !1307, line: 68, baseType: !126, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1306, file: !1307, line: 69, baseType: !126, size: 64, offset: 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1306, file: !1307, line: 70, baseType: !126, size: 64, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1306, file: !1307, line: 71, baseType: !126, size: 64, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1306, file: !1307, line: 72, baseType: !126, size: 64, offset: 640)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1306, file: !1307, line: 73, baseType: !126, size: 64, offset: 704)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1306, file: !1307, line: 74, baseType: !126, size: 64, offset: 768)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1306, file: !1307, line: 75, baseType: !126, size: 64, offset: 832)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1306, file: !1307, line: 76, baseType: !126, size: 64, offset: 896)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1306, file: !1307, line: 81, baseType: !126, size: 64, offset: 960)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1306, file: !1307, line: 83, baseType: !126, size: 64, offset: 1024)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1306, file: !1307, line: 84, baseType: !126, size: 64, offset: 1088)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1306, file: !1307, line: 85, baseType: !126, size: 64, offset: 1152)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1306, file: !1307, line: 86, baseType: !126, size: 64, offset: 1216)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1306, file: !1307, line: 87, baseType: !126, size: 64, offset: 1280)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1282, file: !1220, line: 96, baseType: !464, size: 32, offset: 1024)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1225, file: !1220, line: 308, baseType: !1332, size: 4608, align: 512)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1220, line: 289, size: 4608, align: 512, elements: !1333)
!1333 = !{!1334, !1335, !1344}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1332, file: !1220, line: 290, baseType: !1243, size: 4096, align: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1332, file: !1220, line: 291, baseType: !1336, size: 512, offset: 4096)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1220, line: 268, size: 512, elements: !1337)
!1337 = !{!1338, !1339, !1340}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1336, file: !1220, line: 269, baseType: !327, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1336, file: !1220, line: 270, baseType: !327, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1336, file: !1220, line: 271, baseType: !1341, size: 384, offset: 128)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 384, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 6)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1332, file: !1220, line: 292, baseType: !1345, offset: 4608)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, elements: !1346)
!1346 = !{!1347}
!1347 = !DISubrange(count: 0)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1225, file: !1220, line: 309, baseType: !1349, size: 32768)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 32768, elements: !1350)
!1350 = !{!1351}
!1351 = !DISubrange(count: 4096)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !299, line: 378, baseType: !1353, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !447, file: !299, line: 384, baseType: !770, size: 192, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !319, file: !299, line: 500, baseType: !181, offset: 6656)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !319, file: !299, line: 501, baseType: !1357, size: 64, offset: 6656)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !299, line: 387, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !319, file: !299, line: 516, baseType: !1360, size: 64, offset: 6720)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !299, line: 516, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !319, file: !299, line: 519, baseType: !286, size: 64, offset: 6784)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !319, file: !299, line: 521, baseType: !1364, size: 64, offset: 6848)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !299, line: 521, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !319, file: !299, line: 545, baseType: !349, size: 32, offset: 6912)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !319, file: !299, line: 548, baseType: !1034, size: 8, offset: 6944)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !319, file: !299, line: 550, baseType: !1369, offset: 6952)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1370, line: 142, elements: !141)
!1370 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !319, file: !299, line: 554, baseType: !1372, size: 256, offset: 6976)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1373, line: 102, size: 256, elements: !1374)
!1373 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1374 = !{!1375, !1376, !1377}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1372, file: !1373, line: 103, baseType: !357, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1372, file: !1373, line: 104, baseType: !168, size: 128, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1372, file: !1373, line: 105, baseType: !1378, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1373, line: 21, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !1382}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !319, file: !299, line: 557, baseType: !464, size: 32, offset: 7232)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !316, file: !299, line: 565, baseType: !1385, offset: 7296)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, elements: !1386)
!1386 = !{!1387}
!1387 = !DISubrange(count: -1)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !298, file: !299, line: 333, baseType: !1389, size: 64, offset: 576)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !288, line: 284, baseType: !1390)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !288, line: 284, size: 64, elements: !1391)
!1391 = !{!1392}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1390, file: !288, line: 284, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !347, line: 19, baseType: !126)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !298, file: !299, line: 334, baseType: !126, size: 64, offset: 640)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !298, file: !299, line: 343, baseType: !1396, size: 256, offset: 704)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !298, file: !299, line: 340, size: 256, elements: !1397)
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1396, file: !299, line: 341, baseType: !306, size: 192, align: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1396, file: !299, line: 342, baseType: !126, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !298, file: !299, line: 351, baseType: !168, size: 128, offset: 960)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !298, file: !299, line: 353, baseType: !1402, size: 64, offset: 1088)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !299, line: 353, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !298, file: !299, line: 356, baseType: !1405, size: 64, offset: 1152)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !299, line: 356, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !298, file: !299, line: 359, baseType: !126, size: 64, offset: 1216)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !298, file: !299, line: 361, baseType: !286, size: 64, offset: 1280)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !298, file: !299, line: 362, baseType: !127, size: 64, offset: 1344)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !298, file: !299, line: 365, baseType: !357, size: 64, offset: 1408)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !298, file: !299, line: 373, baseType: !1413, offset: 1472)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !299, line: 296, elements: !141)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !265, file: !239, line: 90, baseType: !260, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !265, file: !239, line: 91, baseType: !1416, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !229, file: !161, line: 143, baseType: !1418, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!1421, !174}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1424)
!1424 = !{!1425, !1426, !1430, !1434, !1440, !1444}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1423, file: !18, line: 40, baseType: !17, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1423, file: !18, line: 41, baseType: !1427, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!1034}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1423, file: !18, line: 42, baseType: !1431, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!127}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1423, file: !18, line: 43, baseType: !1435, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1165, !1438}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1423, file: !18, line: 44, baseType: !1441, size: 64, offset: 256)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!1165}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1423, file: !18, line: 45, baseType: !1445, size: 64, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !127}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !229, file: !161, line: 144, baseType: !1449, size: 64, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!1165, !174}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !229, file: !161, line: 145, baseType: !1453, size: 64, offset: 384)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null, !174, !1456, !1463}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1458, line: 23, baseType: !1459)
!1458 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1458, line: 21, size: 32, elements: !1460)
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1459, file: !1458, line: 22, baseType: !1462, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !121, line: 32, baseType: !930)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1458, line: 28, baseType: !1465)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1458, line: 26, size: 32, elements: !1466)
!1466 = !{!1467}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1465, file: !1458, line: 27, baseType: !1468, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !121, line: 33, baseType: !1469)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !124, line: 50, baseType: !7)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !160, file: !161, line: 70, baseType: !1471, size: 64, offset: 384)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1473, line: 123, size: 1024, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1616, !1617, !1618, !1619, !1620}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1472, file: !1473, line: 124, baseType: !349, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1472, file: !1473, line: 125, baseType: !349, size: 32, offset: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1472, file: !1473, line: 135, baseType: !1471, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1472, file: !1473, line: 136, baseType: !164, size: 64, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1472, file: !1473, line: 138, baseType: !306, size: 192, align: 64, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1472, file: !1473, line: 140, baseType: !1165, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1472, file: !1473, line: 141, baseType: !7, size: 32, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !1473, line: 142, baseType: !1483, size: 256, offset: 512)
!1483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1472, file: !1473, line: 142, size: 256, elements: !1484)
!1484 = !{!1485, !1539, !1543}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1483, file: !1473, line: 143, baseType: !1486, size: 192)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1473, line: 91, size: 192, elements: !1487)
!1487 = !{!1488, !1489, !1490}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1486, file: !1473, line: 92, baseType: !126, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1486, file: !1473, line: 94, baseType: !323, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1486, file: !1473, line: 100, baseType: !1491, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1473, line: 180, size: 704, elements: !1493)
!1493 = !{!1494, !1495, !1496, !1509, !1510, !1511, !1537, !1538}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1492, file: !1473, line: 182, baseType: !1471, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1492, file: !1473, line: 183, baseType: !7, size: 32, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1492, file: !1473, line: 186, baseType: !1497, size: 192, offset: 128)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1498, line: 19, size: 192, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1499 = !{!1500, !1507, !1508}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1497, file: !1498, line: 20, baseType: !1501, size: 128)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1502, line: 292, size: 128, elements: !1503)
!1502 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1503 = !{!1504, !1505, !1506}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1501, file: !1502, line: 293, baseType: !181)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1501, file: !1502, line: 295, baseType: !120, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1501, file: !1502, line: 296, baseType: !127, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1497, file: !1498, line: 21, baseType: !7, size: 32, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1497, file: !1498, line: 22, baseType: !7, size: 32, offset: 160)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1492, file: !1473, line: 187, baseType: !464, size: 32, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1492, file: !1473, line: 188, baseType: !464, size: 32, offset: 352)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1492, file: !1473, line: 189, baseType: !1512, size: 64, offset: 384)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1473, line: 168, size: 320, elements: !1514)
!1514 = !{!1515, !1521, !1525, !1529, !1533}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1513, file: !1473, line: 169, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!119, !1519, !1491}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !288, line: 539, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1513, file: !1473, line: 171, baseType: !1522, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!119, !1471, !164, !253}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1513, file: !1473, line: 173, baseType: !1526, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!119, !1471}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1513, file: !1473, line: 174, baseType: !1530, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!119, !1471, !1471, !164}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1513, file: !1473, line: 176, baseType: !1534, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!119, !1519, !1471, !1491}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1492, file: !1473, line: 192, baseType: !168, size: 128, offset: 448)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1492, file: !1473, line: 194, baseType: !741, size: 128, offset: 576)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1483, file: !1473, line: 144, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1473, line: 103, size: 64, elements: !1541)
!1541 = !{!1542}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1540, file: !1473, line: 104, baseType: !1471, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1483, file: !1473, line: 145, baseType: !1544, size: 256)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1473, line: 107, size: 256, elements: !1545)
!1545 = !{!1546, !1611, !1614, !1615}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1544, file: !1473, line: 108, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1473, line: 217, size: 768, elements: !1550)
!1550 = !{!1551, !1571, !1575, !1579, !1584, !1588, !1592, !1596, !1597, !1598, !1599, !1607}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1549, file: !1473, line: 222, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!119, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1473, line: 197, size: 1088, elements: !1557)
!1557 = !{!1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1556, file: !1473, line: 199, baseType: !1471, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1556, file: !1473, line: 200, baseType: !286, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1556, file: !1473, line: 201, baseType: !1519, size: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1556, file: !1473, line: 202, baseType: !127, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1556, file: !1473, line: 205, baseType: !425, size: 192, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1556, file: !1473, line: 206, baseType: !425, size: 192, offset: 448)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1556, file: !1473, line: 207, baseType: !119, size: 32, offset: 640)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1556, file: !1473, line: 208, baseType: !168, size: 128, offset: 704)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1556, file: !1473, line: 209, baseType: !214, size: 64, offset: 832)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1556, file: !1473, line: 211, baseType: !122, size: 64, offset: 896)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1556, file: !1473, line: 212, baseType: !1034, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1556, file: !1473, line: 213, baseType: !1034, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1556, file: !1473, line: 214, baseType: !1405, size: 64, offset: 1024)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1549, file: !1473, line: 223, baseType: !1572, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !1555}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1549, file: !1473, line: 236, baseType: !1576, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!119, !1519, !127}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1549, file: !1473, line: 238, baseType: !1580, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!127, !1519, !1583}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1549, file: !1473, line: 239, baseType: !1585, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!127, !1519, !127, !1583}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1549, file: !1473, line: 240, baseType: !1589, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !1519, !127}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1549, file: !1473, line: 242, baseType: !1593, size: 64, offset: 384)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!245, !1555, !214, !122, !289}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1549, file: !1473, line: 252, baseType: !122, size: 64, offset: 448)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1549, file: !1473, line: 259, baseType: !1034, size: 8, offset: 512)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1549, file: !1473, line: 260, baseType: !1593, size: 64, offset: 576)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1549, file: !1473, line: 263, baseType: !1600, size: 64, offset: 640)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!1603, !1555, !1605}
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1604, line: 52, baseType: !7)
!1604 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1473, line: 27, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1549, file: !1473, line: 266, baseType: !1608, size: 64, offset: 704)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!119, !1555, !297}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1544, file: !1473, line: 109, baseType: !1612, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1473, line: 31, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1544, file: !1473, line: 110, baseType: !289, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1544, file: !1473, line: 111, baseType: !1471, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1472, file: !1473, line: 148, baseType: !127, size: 64, offset: 768)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1472, file: !1473, line: 154, baseType: !327, size: 64, offset: 832)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1472, file: !1473, line: 156, baseType: !254, size: 16, offset: 896)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1472, file: !1473, line: 157, baseType: !253, size: 16, offset: 912)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1472, file: !1473, line: 158, baseType: !1621, size: 64, offset: 960)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1473, line: 32, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !160, file: !161, line: 71, baseType: !1624, size: 32, offset: 448)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1625, line: 19, size: 32, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1626 = !{!1627}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1624, file: !1625, line: 20, baseType: !470, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !160, file: !161, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !160, file: !161, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !160, file: !161, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !160, file: !161, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !160, file: !161, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !157, file: !30, line: 463, baseType: !156, size: 64, offset: 512)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !157, file: !30, line: 465, baseType: !1635, size: 64, offset: 576)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !157, file: !30, line: 467, baseType: !164, size: 64, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !157, file: !30, line: 468, baseType: !1639, size: 64, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1641)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1642)
!1642 = !{!1643, !1644, !1645, !1649, !1654, !1658}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1641, file: !30, line: 88, baseType: !164, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1641, file: !30, line: 89, baseType: !262, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1641, file: !30, line: 90, baseType: !1646, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!119, !156, !209}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1641, file: !30, line: 91, baseType: !1650, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!214, !156, !1653, !1456, !1463}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1641, file: !30, line: 93, baseType: !1655, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{null, !156}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1641, file: !30, line: 95, baseType: !1659, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1661)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1662)
!1662 = !{!1663, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1661, file: !37, line: 279, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!119, !156}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1661, file: !37, line: 280, baseType: !1655, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1661, file: !37, line: 281, baseType: !1664, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1661, file: !37, line: 282, baseType: !1664, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1661, file: !37, line: 283, baseType: !1664, size: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1661, file: !37, line: 284, baseType: !1664, size: 64, offset: 320)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1661, file: !37, line: 285, baseType: !1664, size: 64, offset: 384)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1661, file: !37, line: 286, baseType: !1664, size: 64, offset: 448)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1661, file: !37, line: 287, baseType: !1664, size: 64, offset: 512)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1661, file: !37, line: 288, baseType: !1664, size: 64, offset: 576)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1661, file: !37, line: 289, baseType: !1664, size: 64, offset: 640)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1661, file: !37, line: 290, baseType: !1664, size: 64, offset: 704)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1661, file: !37, line: 291, baseType: !1664, size: 64, offset: 768)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1661, file: !37, line: 292, baseType: !1664, size: 64, offset: 832)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1661, file: !37, line: 293, baseType: !1664, size: 64, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1661, file: !37, line: 294, baseType: !1664, size: 64, offset: 960)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1661, file: !37, line: 295, baseType: !1664, size: 64, offset: 1024)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1661, file: !37, line: 296, baseType: !1664, size: 64, offset: 1088)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1661, file: !37, line: 297, baseType: !1664, size: 64, offset: 1152)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1661, file: !37, line: 298, baseType: !1664, size: 64, offset: 1216)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1661, file: !37, line: 299, baseType: !1664, size: 64, offset: 1280)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1661, file: !37, line: 300, baseType: !1664, size: 64, offset: 1344)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1661, file: !37, line: 301, baseType: !1664, size: 64, offset: 1408)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !157, file: !30, line: 470, baseType: !1690, size: 64, offset: 768)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1692, line: 82, size: 1408, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1693 = !{!1694, !1695, !1696, !1697, !1698, !1699, !1700, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1776, !1779, !1782}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1691, file: !1692, line: 83, baseType: !164, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1691, file: !1692, line: 84, baseType: !164, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1691, file: !1692, line: 85, baseType: !156, size: 64, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1691, file: !1692, line: 86, baseType: !262, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1691, file: !1692, line: 87, baseType: !262, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1691, file: !1692, line: 88, baseType: !262, size: 64, offset: 320)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1691, file: !1692, line: 90, baseType: !1701, size: 64, offset: 384)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!119, !156, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1706)
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1712, !1713, !1727, !1740, !1741, !1742, !1743, !1744, !1752, !1753, !1754, !1755, !1756, !1757}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1705, file: !24, line: 96, baseType: !164, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1705, file: !24, line: 97, baseType: !1690, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1705, file: !24, line: 99, baseType: !116, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1705, file: !24, line: 100, baseType: !164, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1705, file: !24, line: 102, baseType: !1034, size: 8, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1705, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1705, file: !24, line: 105, baseType: !1714, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1717, line: 262, size: 1600, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !{!1719, !1721, !1722, !1726}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1716, file: !1717, line: 263, baseType: !1720, size: 256)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 256, elements: !1268)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1716, file: !1717, line: 264, baseType: !1720, size: 256, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1716, file: !1717, line: 265, baseType: !1723, size: 1024, offset: 512)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 1024, elements: !1724)
!1724 = !{!1725}
!1725 = !DISubrange(count: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1716, file: !1717, line: 266, baseType: !1165, size: 64, offset: 1536)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1705, file: !24, line: 106, baseType: !1728, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1717, line: 210, size: 256, elements: !1731)
!1731 = !{!1732, !1736, !1738, !1739}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1730, file: !1717, line: 211, baseType: !1733, size: 72)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 72, elements: !1734)
!1734 = !{!1735}
!1735 = !DISubrange(count: 9)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1730, file: !1717, line: 212, baseType: !1737, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1717, line: 14, baseType: !126)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1730, file: !1717, line: 213, baseType: !465, size: 32, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1730, file: !1717, line: 214, baseType: !465, size: 32, offset: 224)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1705, file: !24, line: 108, baseType: !1664, size: 64, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1705, file: !24, line: 109, baseType: !1655, size: 64, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1705, file: !24, line: 110, baseType: !1664, size: 64, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1705, file: !24, line: 111, baseType: !1655, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1705, file: !24, line: 112, baseType: !1745, size: 64, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!119, !156, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1749)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1750)
!1750 = !{!1751}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1749, file: !37, line: 51, baseType: !119, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1705, file: !24, line: 113, baseType: !1664, size: 64, offset: 768)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1705, file: !24, line: 114, baseType: !262, size: 64, offset: 832)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1705, file: !24, line: 115, baseType: !262, size: 64, offset: 896)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1705, file: !24, line: 117, baseType: !1659, size: 64, offset: 960)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1705, file: !24, line: 118, baseType: !1655, size: 64, offset: 1024)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1705, file: !24, line: 120, baseType: !1758, size: 64, offset: 1088)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1691, file: !1692, line: 91, baseType: !1646, size: 64, offset: 448)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1691, file: !1692, line: 92, baseType: !1664, size: 64, offset: 512)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1691, file: !1692, line: 93, baseType: !1655, size: 64, offset: 576)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1691, file: !1692, line: 94, baseType: !1664, size: 64, offset: 640)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1691, file: !1692, line: 95, baseType: !1655, size: 64, offset: 704)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1691, file: !1692, line: 97, baseType: !1664, size: 64, offset: 768)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1691, file: !1692, line: 98, baseType: !1664, size: 64, offset: 832)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1691, file: !1692, line: 100, baseType: !1745, size: 64, offset: 896)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1691, file: !1692, line: 101, baseType: !1664, size: 64, offset: 960)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1691, file: !1692, line: 103, baseType: !1664, size: 64, offset: 1024)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1691, file: !1692, line: 105, baseType: !1664, size: 64, offset: 1088)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1691, file: !1692, line: 107, baseType: !1659, size: 64, offset: 1152)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1691, file: !1692, line: 109, baseType: !1773, size: 64, offset: 1216)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1775)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1692, line: 109, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1691, file: !1692, line: 111, baseType: !1777, size: 64, offset: 1280)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1692, line: 111, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1691, file: !1692, line: 112, baseType: !1780, offset: 1344)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1781, line: 187, elements: !141)
!1781 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1691, file: !1692, line: 114, baseType: !1034, size: 8, offset: 1344)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !157, file: !30, line: 471, baseType: !1704, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !157, file: !30, line: 473, baseType: !127, size: 64, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !157, file: !30, line: 475, baseType: !127, size: 64, offset: 960)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !157, file: !30, line: 480, baseType: !425, size: 192, offset: 1024)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !157, file: !30, line: 484, baseType: !1788, size: 576, offset: 1216)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1788, file: !30, line: 362, baseType: !168, size: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1788, file: !30, line: 363, baseType: !168, size: 128, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1788, file: !30, line: 364, baseType: !168, size: 128, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1788, file: !30, line: 365, baseType: !168, size: 128, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1788, file: !30, line: 366, baseType: !1034, size: 8, offset: 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1788, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !157, file: !30, line: 485, baseType: !1797, size: 2304, offset: 1792)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1894, !1898}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1797, file: !37, line: 566, baseType: !1748, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1797, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1797, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1797, file: !37, line: 569, baseType: !1034, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1797, file: !37, line: 570, baseType: !1034, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1797, file: !37, line: 571, baseType: !1034, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1797, file: !37, line: 572, baseType: !1034, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1797, file: !37, line: 573, baseType: !1034, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1797, file: !37, line: 574, baseType: !1034, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1797, file: !37, line: 575, baseType: !1034, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1797, file: !37, line: 576, baseType: !1034, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1797, file: !37, line: 577, baseType: !464, size: 32, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1797, file: !37, line: 578, baseType: !181, offset: 96)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1797, file: !37, line: 580, baseType: !168, size: 128, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1797, file: !37, line: 581, baseType: !770, size: 192, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1797, file: !37, line: 582, baseType: !1815, size: 64, offset: 448)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1817, line: 43, size: 1472, elements: !1818)
!1817 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1818 = !{!1819, !1820, !1821, !1822, !1823, !1826, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1816, file: !1817, line: 44, baseType: !164, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1816, file: !1817, line: 45, baseType: !119, size: 32, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1816, file: !1817, line: 46, baseType: !168, size: 128, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1816, file: !1817, line: 47, baseType: !181, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1816, file: !1817, line: 48, baseType: !1824, size: 64, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1816, file: !1817, line: 49, baseType: !1827, size: 320, offset: 320)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1828, line: 11, size: 320, elements: !1829)
!1828 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !{!1830, !1831, !1832, !1837}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1827, file: !1828, line: 16, baseType: !734, size: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1827, file: !1828, line: 17, baseType: !126, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1827, file: !1828, line: 18, baseType: !1833, size: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1827, file: !1828, line: 19, baseType: !464, size: 32, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1816, file: !1817, line: 50, baseType: !126, size: 64, offset: 640)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1816, file: !1817, line: 51, baseType: !540, size: 64, offset: 704)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1816, file: !1817, line: 52, baseType: !540, size: 64, offset: 768)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1816, file: !1817, line: 53, baseType: !540, size: 64, offset: 832)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1816, file: !1817, line: 54, baseType: !540, size: 64, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1816, file: !1817, line: 55, baseType: !540, size: 64, offset: 960)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1816, file: !1817, line: 56, baseType: !126, size: 64, offset: 1024)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1816, file: !1817, line: 57, baseType: !126, size: 64, offset: 1088)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1816, file: !1817, line: 58, baseType: !126, size: 64, offset: 1152)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1816, file: !1817, line: 59, baseType: !126, size: 64, offset: 1216)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1816, file: !1817, line: 60, baseType: !126, size: 64, offset: 1280)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1816, file: !1817, line: 61, baseType: !156, size: 64, offset: 1344)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1816, file: !1817, line: 62, baseType: !1034, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1816, file: !1817, line: 63, baseType: !1034, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1797, file: !37, line: 583, baseType: !1034, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1797, file: !37, line: 584, baseType: !1034, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1797, file: !37, line: 585, baseType: !1034, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1797, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1797, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1797, file: !37, line: 592, baseType: !532, size: 512, offset: 576)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1797, file: !37, line: 593, baseType: !327, size: 64, offset: 1088)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1797, file: !37, line: 594, baseType: !1372, size: 256, offset: 1152)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1797, file: !37, line: 595, baseType: !741, size: 128, offset: 1408)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1797, file: !37, line: 596, baseType: !1824, size: 64, offset: 1536)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1797, file: !37, line: 597, baseType: !349, size: 32, offset: 1600)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1797, file: !37, line: 598, baseType: !349, size: 32, offset: 1632)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1797, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1797, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1797, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1797, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1797, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1797, file: !37, line: 604, baseType: !1034, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1797, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1797, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1797, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1797, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1797, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1797, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1797, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1797, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1797, file: !37, line: 613, baseType: !119, size: 32, offset: 1792)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1797, file: !37, line: 614, baseType: !119, size: 32, offset: 1824)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1797, file: !37, line: 615, baseType: !327, size: 64, offset: 1856)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1797, file: !37, line: 616, baseType: !327, size: 64, offset: 1920)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1797, file: !37, line: 617, baseType: !327, size: 64, offset: 1984)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1797, file: !37, line: 618, baseType: !327, size: 64, offset: 2048)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1797, file: !37, line: 620, baseType: !1885, size: 64, offset: 2112)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1886, file: !37, line: 537, baseType: !181)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1886, file: !37, line: 538, baseType: !7, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1886, file: !37, line: 540, baseType: !168, size: 128, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1886, file: !37, line: 543, baseType: !1892, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1797, file: !37, line: 621, baseType: !1895, size: 64, offset: 2176)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !156, !694}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1797, file: !37, line: 622, baseType: !1899, size: 64, offset: 2240)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !157, file: !30, line: 486, baseType: !1902, size: 64, offset: 4096)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1904)
!1904 = !{!1905, !1906, !1907, !1911, !1912, !1913}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1903, file: !37, line: 643, baseType: !1661, size: 1472)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1903, file: !37, line: 644, baseType: !1664, size: 64, offset: 1472)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1903, file: !37, line: 645, baseType: !1908, size: 64, offset: 1536)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !156, !1034}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1903, file: !37, line: 646, baseType: !1664, size: 64, offset: 1600)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1903, file: !37, line: 647, baseType: !1655, size: 64, offset: 1664)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1903, file: !37, line: 648, baseType: !1655, size: 64, offset: 1728)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !157, file: !30, line: 493, baseType: !1915, size: 64, offset: 4160)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1917)
!1917 = !{!1918, !1919, !1920, !2114, !2115, !2116, !2117, !2118, !2119, !2247, !2248, !2249, !2250, !2251, !2252, !2253}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1916, file: !51, line: 163, baseType: !168, size: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1916, file: !51, line: 164, baseType: !164, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1916, file: !51, line: 165, baseType: !1921, size: 64, offset: 192)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1924)
!1924 = !{!1925, !2043, !2054, !2059, !2063, !2071, !2075, !2079, !2106, !2110}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1923, file: !51, line: 106, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!119, !1915, !1929, !50}
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1931, line: 51, size: 1344, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1932 = !{!1933, !1934, !1936, !1937, !2027, !2036, !2037, !2038, !2039, !2040, !2041, !2042}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1930, file: !1931, line: 52, baseType: !164, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1930, file: !1931, line: 53, baseType: !1935, size: 32, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1931, line: 28, baseType: !464)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1930, file: !1931, line: 54, baseType: !164, size: 64, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1930, file: !1931, line: 55, baseType: !1938, size: 192, offset: 192)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1939, line: 17, size: 192, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1940 = !{!1941, !1943, !2026}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1938, file: !1939, line: 18, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1938, file: !1939, line: 19, baseType: !1944, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1946)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1939, line: 110, size: 1152, elements: !1947)
!1947 = !{!1948, !1952, !1956, !1962, !1968, !1972, !1976, !1981, !1985, !1986, !1990, !1994, !1998, !2009, !2010, !2011, !2012, !2022}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1946, file: !1939, line: 111, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!1942, !1942}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1946, file: !1939, line: 112, baseType: !1953, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !1942}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1946, file: !1939, line: 113, baseType: !1957, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!1034, !1960}
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1938)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1946, file: !1939, line: 114, baseType: !1963, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1165, !1960, !1966}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1946, file: !1939, line: 116, baseType: !1969, size: 64, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!1034, !1960, !164}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1946, file: !1939, line: 118, baseType: !1973, size: 64, offset: 320)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!119, !1960, !164, !7, !127, !122}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1946, file: !1939, line: 123, baseType: !1977, size: 64, offset: 384)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!119, !1960, !164, !1980, !122}
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1946, file: !1939, line: 126, baseType: !1982, size: 64, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!164, !1960}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1946, file: !1939, line: 127, baseType: !1982, size: 64, offset: 512)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1946, file: !1939, line: 128, baseType: !1987, size: 64, offset: 576)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!1942, !1960}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1946, file: !1939, line: 130, baseType: !1991, size: 64, offset: 640)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!1942, !1960, !1942}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1946, file: !1939, line: 133, baseType: !1995, size: 64, offset: 704)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!1942, !1960, !164}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1946, file: !1939, line: 135, baseType: !1999, size: 64, offset: 768)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!119, !1960, !164, !164, !7, !7, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1939, line: 43, size: 640, elements: !2004)
!2004 = !{!2005, !2006, !2007}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2003, file: !1939, line: 44, baseType: !1942, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2003, file: !1939, line: 45, baseType: !7, size: 32, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2003, file: !1939, line: 46, baseType: !2008, size: 512, offset: 128)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 512, elements: !570)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1946, file: !1939, line: 140, baseType: !1991, size: 64, offset: 832)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1946, file: !1939, line: 143, baseType: !1987, size: 64, offset: 896)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1946, file: !1939, line: 145, baseType: !1949, size: 64, offset: 960)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1946, file: !1939, line: 146, baseType: !2013, size: 64, offset: 1024)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!119, !1960, !2016}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1939, line: 29, size: 128, elements: !2018)
!2018 = !{!2019, !2020, !2021}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2017, file: !1939, line: 30, baseType: !7, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2017, file: !1939, line: 31, baseType: !7, size: 32, offset: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2017, file: !1939, line: 32, baseType: !1960, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1946, file: !1939, line: 148, baseType: !2023, size: 64, offset: 1088)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!119, !1960, !156}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1938, file: !1939, line: 20, baseType: !156, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1930, file: !1931, line: 57, baseType: !2028, size: 64, offset: 384)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1931, line: 31, size: 704, elements: !2030)
!2030 = !{!2031, !2032, !2033, !2034, !2035}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2029, file: !1931, line: 32, baseType: !214, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2029, file: !1931, line: 33, baseType: !119, size: 32, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2029, file: !1931, line: 34, baseType: !127, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2029, file: !1931, line: 35, baseType: !2028, size: 64, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2029, file: !1931, line: 43, baseType: !277, size: 448, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1930, file: !1931, line: 58, baseType: !2028, size: 64, offset: 448)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1930, file: !1931, line: 59, baseType: !1929, size: 64, offset: 512)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1930, file: !1931, line: 60, baseType: !1929, size: 64, offset: 576)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1930, file: !1931, line: 61, baseType: !1929, size: 64, offset: 640)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1930, file: !1931, line: 63, baseType: !160, size: 512, offset: 704)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1930, file: !1931, line: 65, baseType: !126, size: 64, offset: 1216)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1930, file: !1931, line: 66, baseType: !127, size: 64, offset: 1280)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1923, file: !51, line: 108, baseType: !2044, size: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!119, !1915, !2047, !50}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2049)
!2049 = !{!2050, !2051, !2052}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2048, file: !51, line: 64, baseType: !1942, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2048, file: !51, line: 65, baseType: !119, size: 32, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2048, file: !51, line: 66, baseType: !2053, size: 512, offset: 96)
!2053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 512, elements: !826)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1923, file: !51, line: 110, baseType: !2055, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!119, !1915, !7, !2058}
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !121, line: 164, baseType: !126)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1923, file: !51, line: 111, baseType: !2060, size: 64, offset: 192)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{null, !1915, !7}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1923, file: !51, line: 112, baseType: !2064, size: 64, offset: 256)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!119, !1915, !1929, !2067, !7, !2069, !2070}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1923, file: !51, line: 117, baseType: !2072, size: 64, offset: 320)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!119, !1915, !7, !7, !127}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1923, file: !51, line: 119, baseType: !2076, size: 64, offset: 384)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !1915, !7, !7}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1923, file: !51, line: 121, baseType: !2080, size: 64, offset: 448)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!119, !1915, !2083, !1034}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !72, line: 175, size: 448, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2089, !2101, !2103, !2104, !2105}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2084, file: !72, line: 176, baseType: !464, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2084, file: !72, line: 177, baseType: !7, size: 32, offset: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !2084, file: !72, line: 178, baseType: !126, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2084, file: !72, line: 179, baseType: !2090, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !72, line: 145, size: 256, elements: !2092)
!2092 = !{!2093, !2094, !2095, !2098}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !2091, file: !72, line: 146, baseType: !7, size: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !2091, file: !72, line: 150, baseType: !127, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !2091, file: !72, line: 151, baseType: !2096, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !72, line: 127, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !2091, file: !72, line: 152, baseType: !2099, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !616, line: 756, baseType: !2100)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 64, elements: !621)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2084, file: !72, line: 180, baseType: !2102, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2084, file: !72, line: 181, baseType: !1915, size: 64, offset: 256)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !2084, file: !72, line: 183, baseType: !2083, size: 64, offset: 320)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !2084, file: !72, line: 185, baseType: !127, size: 64, offset: 384)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1923, file: !51, line: 122, baseType: !2107, size: 64, offset: 512)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !1915, !2083}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1923, file: !51, line: 123, baseType: !2111, size: 64, offset: 576)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!119, !1915, !2047, !2069, !2070}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1916, file: !51, line: 166, baseType: !127, size: 64, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1916, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1916, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1916, file: !51, line: 171, baseType: !1942, size: 64, offset: 384)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1916, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1916, file: !51, line: 173, baseType: !2120, size: 64, offset: 512)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !72, line: 1101, size: 192, elements: !2122)
!2122 = !{!2123, !2124, !2125, !2126, !2127, !2128}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !2121, file: !72, line: 1102, baseType: !7, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !2121, file: !72, line: 1103, baseType: !7, size: 32, offset: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !2121, file: !72, line: 1104, baseType: !7, size: 32, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !2121, file: !72, line: 1105, baseType: !7, size: 32, offset: 96)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !2121, file: !72, line: 1106, baseType: !71, size: 32, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2121, file: !72, line: 1107, baseType: !2129, offset: 192)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2130, elements: !1386)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !72, line: 1051, size: 960, elements: !2132)
!2132 = !{!2133, !2134, !2135, !2139, !2143, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2131, file: !72, line: 1052, baseType: !133)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !2131, file: !72, line: 1053, baseType: !127, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !2131, file: !72, line: 1054, baseType: !2136, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!464, !127}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !2131, file: !72, line: 1055, baseType: !2140, size: 64, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{null, !464, !127}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2131, file: !72, line: 1056, baseType: !2144, size: 64, offset: 192)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{null, !2130}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2131, file: !72, line: 1057, baseType: !2144, size: 64, offset: 256)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !2131, file: !72, line: 1058, baseType: !7, size: 32, offset: 320)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !2131, file: !72, line: 1059, baseType: !7, size: 32, offset: 352)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2131, file: !72, line: 1060, baseType: !464, size: 32, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !2131, file: !72, line: 1061, baseType: !464, size: 32, offset: 416)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !2131, file: !72, line: 1062, baseType: !464, size: 32, offset: 448)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !2131, file: !72, line: 1063, baseType: !464, size: 32, offset: 480)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !2131, file: !72, line: 1064, baseType: !464, size: 32, offset: 512)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !2131, file: !72, line: 1065, baseType: !7, size: 32, offset: 544)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2131, file: !72, line: 1066, baseType: !127, size: 64, offset: 576)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !2131, file: !72, line: 1067, baseType: !126, size: 64, offset: 640)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2131, file: !72, line: 1068, baseType: !126, size: 64, offset: 704)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2131, file: !72, line: 1069, baseType: !1915, size: 64, offset: 768)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2131, file: !72, line: 1070, baseType: !168, size: 128, offset: 832)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !2131, file: !72, line: 1071, baseType: !2162, offset: 960)
!2162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2163, elements: !1386)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !72, line: 1009, size: 2944, elements: !2164)
!2164 = !{!2165, !2166, !2176, !2244, !2245, !2246}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2163, file: !72, line: 1010, baseType: !153, size: 2304)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2163, file: !72, line: 1011, baseType: !2167, size: 448, offset: 2304)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !72, line: 986, size: 448, elements: !2168)
!2168 = !{!2169, !2170, !2171, !2172, !2173, !2174, !2175}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !2167, file: !72, line: 987, baseType: !126, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !2167, file: !72, line: 988, baseType: !126, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2167, file: !72, line: 989, baseType: !126, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !2167, file: !72, line: 990, baseType: !126, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !2167, file: !72, line: 991, baseType: !126, size: 64, offset: 256)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2167, file: !72, line: 992, baseType: !126, size: 64, offset: 320)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2167, file: !72, line: 993, baseType: !126, size: 64, offset: 384)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2163, file: !72, line: 1012, baseType: !2177, size: 64, offset: 2752)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !2178, line: 12, baseType: !2179)
!2178 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !2182}
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !2184, line: 55, size: 2880, elements: !2185)
!2184 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!2185 = !{!2186, !2187, !2188, !2189, !2190, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2227, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !2183, file: !2184, line: 56, baseType: !2091, size: 256)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !2183, file: !2184, line: 57, baseType: !2084, size: 448, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !2183, file: !2184, line: 58, baseType: !2070, size: 64, offset: 704)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !2183, file: !2184, line: 59, baseType: !2177, size: 64, offset: 768)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2183, file: !2184, line: 60, baseType: !2191, size: 64, offset: 832)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !65, line: 110, size: 768, elements: !2193)
!2193 = !{!2194, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2192, file: !65, line: 111, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !65, line: 92, baseType: !2196)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!2199, !119, !127}
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !80, line: 17, baseType: !79)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !2192, file: !65, line: 112, baseType: !127, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !2192, file: !65, line: 113, baseType: !127, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2192, file: !65, line: 114, baseType: !2191, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !2192, file: !65, line: 115, baseType: !2195, size: 64, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2192, file: !65, line: 116, baseType: !454, size: 64, offset: 320)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2192, file: !65, line: 117, baseType: !2191, size: 64, offset: 384)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2192, file: !65, line: 118, baseType: !7, size: 32, offset: 448)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2192, file: !65, line: 119, baseType: !7, size: 32, offset: 480)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !2192, file: !65, line: 120, baseType: !126, size: 64, offset: 512)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !2192, file: !65, line: 121, baseType: !126, size: 64, offset: 576)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2192, file: !65, line: 122, baseType: !164, size: 64, offset: 640)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2192, file: !65, line: 123, baseType: !2212, size: 64, offset: 704)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !65, line: 123, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !2183, file: !2184, line: 61, baseType: !7, size: 32, offset: 896)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !2183, file: !2184, line: 62, baseType: !7, size: 32, offset: 928)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2183, file: !2184, line: 63, baseType: !7, size: 32, offset: 960)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !2183, file: !2184, line: 64, baseType: !7, size: 32, offset: 992)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !2183, file: !2184, line: 65, baseType: !7, size: 32, offset: 1024)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2183, file: !2184, line: 66, baseType: !7, size: 32, offset: 1056)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !2183, file: !2184, line: 67, baseType: !126, size: 64, offset: 1088)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !2183, file: !2184, line: 68, baseType: !7, size: 32, offset: 1152)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !2183, file: !2184, line: 69, baseType: !349, size: 32, offset: 1184)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !2183, file: !2184, line: 70, baseType: !119, size: 32, offset: 1216)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2183, file: !2184, line: 71, baseType: !133, offset: 1248)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !2183, file: !2184, line: 72, baseType: !2226, size: 64, offset: 1280)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !2183, file: !2184, line: 73, baseType: !2228, size: 64, offset: 1344)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !2183, file: !2184, line: 81, baseType: !126, size: 64, offset: 1408)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !2183, file: !2184, line: 82, baseType: !349, size: 32, offset: 1472)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !2183, file: !2184, line: 83, baseType: !741, size: 128, offset: 1536)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !2183, file: !2184, line: 85, baseType: !7, size: 32, offset: 1664)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !2183, file: !2184, line: 86, baseType: !7, size: 32, offset: 1696)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !2183, file: !2184, line: 87, baseType: !7, size: 32, offset: 1728)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !2183, file: !2184, line: 88, baseType: !7, size: 32, offset: 1760)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2183, file: !2184, line: 91, baseType: !2212, size: 64, offset: 1792)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2183, file: !2184, line: 98, baseType: !748, size: 128, align: 64, offset: 1856)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2183, file: !2184, line: 99, baseType: !160, size: 512, offset: 1984)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !2183, file: !2184, line: 101, baseType: !425, size: 192, offset: 2496)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !2183, file: !2184, line: 102, baseType: !119, size: 32, offset: 2688)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2183, file: !2184, line: 103, baseType: !116, size: 64, offset: 2752)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2183, file: !2184, line: 104, baseType: !164, size: 64, offset: 2816)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2163, file: !72, line: 1013, baseType: !464, size: 32, offset: 2816)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !2163, file: !72, line: 1014, baseType: !464, size: 32, offset: 2848)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2163, file: !72, line: 1015, baseType: !665, size: 64, offset: 2880)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1916, file: !51, line: 175, baseType: !1915, size: 64, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1916, file: !51, line: 182, baseType: !2058, size: 64, offset: 640)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1916, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1916, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1916, file: !51, line: 185, baseType: !1501, size: 128, offset: 768)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1916, file: !51, line: 186, baseType: !425, size: 192, offset: 896)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1916, file: !51, line: 187, baseType: !2254, offset: 1088)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1386)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !157, file: !30, line: 499, baseType: !168, size: 128, offset: 4224)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !157, file: !30, line: 502, baseType: !2257, size: 64, offset: 4352)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2259)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !157, file: !30, line: 504, baseType: !2261, size: 64, offset: 4416)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !157, file: !30, line: 505, baseType: !327, size: 64, offset: 4480)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !157, file: !30, line: 510, baseType: !327, size: 64, offset: 4544)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !157, file: !30, line: 511, baseType: !2265, size: 64, offset: 4608)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2267)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !157, file: !30, line: 513, baseType: !2269, size: 64, offset: 4672)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2271)
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2270, file: !30, line: 293, baseType: !7, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2270, file: !30, line: 294, baseType: !126, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !157, file: !30, line: 515, baseType: !168, size: 128, offset: 4736)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !157, file: !30, line: 526, baseType: !2276, offset: 4864)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2277, line: 5, elements: !141)
!2277 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !157, file: !30, line: 528, baseType: !1929, size: 64, offset: 4864)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !157, file: !30, line: 529, baseType: !1942, size: 64, offset: 4928)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !157, file: !30, line: 534, baseType: !2281, size: 32, offset: 4992)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !121, line: 16, baseType: !2282)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !121, line: 13, baseType: !464)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !157, file: !30, line: 535, baseType: !464, size: 32, offset: 5024)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !157, file: !30, line: 537, baseType: !181, offset: 5056)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !157, file: !30, line: 538, baseType: !168, size: 128, offset: 5056)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !157, file: !30, line: 540, baseType: !2287, size: 64, offset: 5184)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2289, line: 54, size: 960, elements: !2290)
!2289 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2290 = !{!2291, !2292, !2293, !2294, !2295, !2296, !2297, !2301, !2305, !2306, !2307, !2308, !2312, !2316, !2317}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2288, file: !2289, line: 55, baseType: !164, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2288, file: !2289, line: 56, baseType: !116, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2288, file: !2289, line: 58, baseType: !262, size: 64, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2288, file: !2289, line: 59, baseType: !262, size: 64, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2288, file: !2289, line: 60, baseType: !174, size: 64, offset: 256)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2288, file: !2289, line: 62, baseType: !1646, size: 64, offset: 320)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2288, file: !2289, line: 63, baseType: !2298, size: 64, offset: 384)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!214, !156, !1653}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2288, file: !2289, line: 65, baseType: !2302, size: 64, offset: 448)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !2287}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2288, file: !2289, line: 66, baseType: !1655, size: 64, offset: 512)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2288, file: !2289, line: 68, baseType: !1664, size: 64, offset: 576)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2288, file: !2289, line: 70, baseType: !1421, size: 64, offset: 640)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2288, file: !2289, line: 71, baseType: !2309, size: 64, offset: 704)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!1165, !156}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2288, file: !2289, line: 73, baseType: !2313, size: 64, offset: 768)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{null, !156, !1456, !1463}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2288, file: !2289, line: 75, baseType: !1659, size: 64, offset: 832)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2288, file: !2289, line: 77, baseType: !1777, size: 64, offset: 896)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !157, file: !30, line: 541, baseType: !262, size: 64, offset: 5248)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !157, file: !30, line: 543, baseType: !1655, size: 64, offset: 5312)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !157, file: !30, line: 544, baseType: !2321, size: 64, offset: 5376)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !157, file: !30, line: 545, baseType: !2324, size: 64, offset: 5440)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !157, file: !30, line: 547, baseType: !1034, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !157, file: !30, line: 548, baseType: !1034, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !157, file: !30, line: 549, baseType: !1034, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !157, file: !30, line: 550, baseType: !1034, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !72, line: 505, baseType: !164, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !153, file: !72, line: 506, baseType: !2332, size: 64, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!7, !2083}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !153, file: !72, line: 507, baseType: !2336, size: 64, offset: 192)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !2083}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !153, file: !72, line: 508, baseType: !2336, size: 64, offset: 256)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !153, file: !72, line: 509, baseType: !2336, size: 64, offset: 320)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !153, file: !72, line: 511, baseType: !2336, size: 64, offset: 384)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !153, file: !72, line: 512, baseType: !2336, size: 64, offset: 448)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !153, file: !72, line: 513, baseType: !2336, size: 64, offset: 512)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !153, file: !72, line: 514, baseType: !2336, size: 64, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !153, file: !72, line: 515, baseType: !2336, size: 64, offset: 640)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !153, file: !72, line: 517, baseType: !2347, size: 64, offset: 704)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!119, !2083, !2228, !1034}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !153, file: !72, line: 518, baseType: !2351, size: 64, offset: 768)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!119, !2083}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !153, file: !72, line: 519, baseType: !2355, size: 64, offset: 832)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!119, !2083, !7}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !153, file: !72, line: 520, baseType: !2355, size: 64, offset: 896)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !153, file: !72, line: 522, baseType: !2336, size: 64, offset: 960)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !153, file: !72, line: 523, baseType: !2336, size: 64, offset: 1024)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !153, file: !72, line: 525, baseType: !2336, size: 64, offset: 1088)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !153, file: !72, line: 526, baseType: !2336, size: 64, offset: 1152)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !153, file: !72, line: 528, baseType: !2336, size: 64, offset: 1216)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !153, file: !72, line: 529, baseType: !2336, size: 64, offset: 1280)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !153, file: !72, line: 530, baseType: !2336, size: 64, offset: 1344)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !153, file: !72, line: 532, baseType: !2336, size: 64, offset: 1408)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !153, file: !72, line: 534, baseType: !2368, size: 64, offset: 1472)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{null, !2083, !1519}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !153, file: !72, line: 535, baseType: !2351, size: 64, offset: 1536)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !153, file: !72, line: 536, baseType: !2336, size: 64, offset: 1600)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !153, file: !72, line: 538, baseType: !2374, size: 64, offset: 1664)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !2083, !2377}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !72, line: 29, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !153, file: !72, line: 539, baseType: !2374, size: 64, offset: 1728)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !153, file: !72, line: 541, baseType: !2381, size: 64, offset: 1792)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!119, !2083, !64, !2384}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !153, file: !72, line: 542, baseType: !2386, size: 64, offset: 1856)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!119, !2083, !64, !1034}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !153, file: !72, line: 544, baseType: !2390, size: 64, offset: 1920)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!119, !2083, !127}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !153, file: !72, line: 546, baseType: !2394, size: 64, offset: 1984)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !2083, !7}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !153, file: !72, line: 547, baseType: !2398, size: 64, offset: 2048)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null, !2083, !2228}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !153, file: !72, line: 549, baseType: !2351, size: 64, offset: 2112)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !153, file: !72, line: 550, baseType: !2336, size: 64, offset: 2176)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !72, line: 552, baseType: !126, size: 64, offset: 2240)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "saved_reg", scope: !150, file: !3, line: 65, baseType: !464, size: 32, offset: 2304)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "chanidx", scope: !150, file: !3, line: 66, baseType: !119, size: 32, offset: 2336)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !150, file: !3, line: 67, baseType: !119, size: 32, offset: 2368)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !150, file: !3, line: 68, baseType: !1915, size: 64, offset: 2432)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!2410 = !{!0, !2411, !2471, !2473, !2475, !2478}
!2411 = !DIGlobalVariableExpression(var: !2412, expr: !DIExpression())
!2412 = distinct !DIGlobalVariable(name: "imx_intmux_driver", scope: !2, file: !3, line: 359, type: !2413, isLocal: true, isDefinition: true)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2414, line: 200, size: 1600, elements: !2415)
!2414 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2415 = !{!2416, !2458, !2459, !2463, !2467, !2468, !2469, !2470}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2413, file: !2414, line: 201, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!119, !2420}
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2414, line: 22, size: 6208, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2444, !2452, !2453, !2456}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2421, file: !2414, line: 23, baseType: !164, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2421, file: !2414, line: 24, baseType: !119, size: 32, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2421, file: !2414, line: 25, baseType: !1034, size: 8, offset: 96)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2421, file: !2414, line: 26, baseType: !157, size: 5568, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2421, file: !2414, line: 27, baseType: !327, size: 64, offset: 5696)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2421, file: !2414, line: 28, baseType: !2270, size: 128, offset: 5760)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2421, file: !2414, line: 29, baseType: !464, size: 32, offset: 5888)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2421, file: !2414, line: 30, baseType: !2431, size: 64, offset: 5952)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2433, line: 20, size: 512, elements: !2434)
!2433 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2434 = !{!2435, !2437, !2438, !2439, !2440, !2441, !2442, !2443}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2432, file: !2433, line: 21, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !121, line: 158, baseType: !1163)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2432, file: !2433, line: 22, baseType: !2436, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2432, file: !2433, line: 23, baseType: !164, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2432, file: !2433, line: 24, baseType: !126, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2432, file: !2433, line: 25, baseType: !126, size: 64, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2432, file: !2433, line: 26, baseType: !2431, size: 64, offset: 320)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2432, file: !2433, line: 26, baseType: !2431, size: 64, offset: 384)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2432, file: !2433, line: 26, baseType: !2431, size: 64, offset: 448)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2421, file: !2414, line: 32, baseType: !2445, size: 64, offset: 6016)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2447)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1717, line: 586, size: 256, elements: !2448)
!2448 = !{!2449, !2451}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2447, file: !1717, line: 587, baseType: !2450, size: 160)
!2450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 160, elements: !1239)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2447, file: !1717, line: 588, baseType: !1737, size: 64, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2421, file: !2414, line: 33, baseType: !214, size: 64, offset: 6080)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2421, file: !2414, line: 36, baseType: !2454, size: 64, offset: 6144)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2414, line: 18, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2421, file: !2414, line: 39, baseType: !2457, offset: 6208)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2277, line: 8, elements: !141)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2413, file: !2414, line: 202, baseType: !2417, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2413, file: !2414, line: 203, baseType: !2460, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !2420}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2413, file: !2414, line: 204, baseType: !2464, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!119, !2420, !1748}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2413, file: !2414, line: 205, baseType: !2417, size: 64, offset: 256)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2413, file: !2414, line: 206, baseType: !1705, size: 1152, offset: 320)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2413, file: !2414, line: 207, baseType: !2445, size: 64, offset: 1472)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2413, file: !2414, line: 208, baseType: !1034, size: 8, offset: 1536)
!2471 = !DIGlobalVariableExpression(var: !2472, expr: !DIExpression())
!2472 = distinct !DIGlobalVariable(name: "imx_intmux_irq_chip", scope: !2, file: !3, line: 117, type: !153, isLocal: true, isDefinition: true)
!2473 = !DIGlobalVariableExpression(var: !2474, expr: !DIExpression())
!2474 = distinct !DIGlobalVariable(name: "imx_intmux_domain_ops", scope: !2, file: !3, line: 172, type: !1922, isLocal: true, isDefinition: true)
!2475 = !DIGlobalVariableExpression(var: !2476, expr: !DIExpression())
!2476 = distinct !DIGlobalVariable(name: "imx_intmux_id", scope: !2, file: !3, line: 354, type: !2477, isLocal: true, isDefinition: true)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1715, size: 3200, elements: !1006)
!2478 = !DIGlobalVariableExpression(var: !2479, expr: !DIExpression())
!2479 = distinct !DIGlobalVariable(name: "imx_intmux_pm_ops", scope: !2, file: !3, line: 347, type: !1660, isLocal: true, isDefinition: true)
!2480 = !{!"rsp"}
!2481 = !{i32 7, !"Dwarf Version", i32 4}
!2482 = !{i32 2, !"Debug Info Version", i32 3}
!2483 = !{i32 1, !"wchar_size", i32 2}
!2484 = !{i32 1, !"Code Model", i32 2}
!2485 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2486 = distinct !DISubprogram(name: "imx_intmux_driver_init", scope: !3, file: !3, line: 368, type: !2487, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!119}
!2489 = !DILocation(line: 368, column: 1, scope: !2486)
!2490 = distinct !DISubprogram(name: "imx_intmux_probe", scope: !3, file: !3, line: 201, type: !2418, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2491 = !DILocalVariable(name: "pdev", arg: 1, scope: !2490, file: !3, line: 201, type: !2420)
!2492 = !DILocation(line: 201, column: 53, scope: !2490)
!2493 = !DILocalVariable(name: "np", scope: !2490, file: !3, line: 203, type: !1929)
!2494 = !DILocation(line: 203, column: 22, scope: !2490)
!2495 = !DILocation(line: 203, column: 27, scope: !2490)
!2496 = !DILocation(line: 203, column: 33, scope: !2490)
!2497 = !DILocation(line: 203, column: 37, scope: !2490)
!2498 = !DILocalVariable(name: "domain", scope: !2490, file: !3, line: 204, type: !1915)
!2499 = !DILocation(line: 204, column: 21, scope: !2490)
!2500 = !DILocalVariable(name: "data", scope: !2490, file: !3, line: 205, type: !129)
!2501 = !DILocation(line: 205, column: 22, scope: !2490)
!2502 = !DILocalVariable(name: "channum", scope: !2490, file: !3, line: 206, type: !119)
!2503 = !DILocation(line: 206, column: 6, scope: !2490)
!2504 = !DILocalVariable(name: "i", scope: !2490, file: !3, line: 207, type: !119)
!2505 = !DILocation(line: 207, column: 6, scope: !2490)
!2506 = !DILocalVariable(name: "ret", scope: !2490, file: !3, line: 207, type: !119)
!2507 = !DILocation(line: 207, column: 9, scope: !2490)
!2508 = !DILocation(line: 209, column: 31, scope: !2490)
!2509 = !DILocation(line: 209, column: 12, scope: !2490)
!2510 = !DILocation(line: 209, column: 10, scope: !2490)
!2511 = !DILocation(line: 210, column: 6, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 210, column: 6)
!2513 = !DILocation(line: 210, column: 14, scope: !2512)
!2514 = !DILocation(line: 210, column: 6, scope: !2490)
!2515 = !DILocation(line: 211, column: 3, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 210, column: 32)
!2517 = !DILocation(line: 212, column: 13, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 212, column: 13)
!2519 = !DILocation(line: 212, column: 21, scope: !2518)
!2520 = !DILocation(line: 212, column: 13, scope: !2512)
!2521 = !DILocation(line: 213, column: 3, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 212, column: 37)
!2523 = !DILocation(line: 215, column: 3, scope: !2522)
!2524 = !DILocation(line: 218, column: 23, scope: !2490)
!2525 = !DILocation(line: 218, column: 29, scope: !2490)
!2526 = !DILocation(line: 218, column: 34, scope: !2490)
!2527 = !DILocation(line: 218, column: 9, scope: !2490)
!2528 = !DILocation(line: 218, column: 7, scope: !2490)
!2529 = !DILocation(line: 219, column: 7, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 219, column: 6)
!2531 = !DILocation(line: 219, column: 6, scope: !2490)
!2532 = !DILocation(line: 220, column: 3, scope: !2530)
!2533 = !DILocation(line: 222, column: 46, scope: !2490)
!2534 = !DILocation(line: 222, column: 15, scope: !2490)
!2535 = !DILocation(line: 222, column: 2, scope: !2490)
!2536 = !DILocation(line: 222, column: 8, scope: !2490)
!2537 = !DILocation(line: 222, column: 13, scope: !2490)
!2538 = !DILocation(line: 223, column: 13, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 223, column: 6)
!2540 = !DILocation(line: 223, column: 19, scope: !2539)
!2541 = !DILocation(line: 223, column: 6, scope: !2539)
!2542 = !DILocation(line: 223, column: 6, scope: !2490)
!2543 = !DILocation(line: 224, column: 3, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 223, column: 26)
!2545 = !DILocation(line: 225, column: 18, scope: !2544)
!2546 = !DILocation(line: 225, column: 24, scope: !2544)
!2547 = !DILocation(line: 225, column: 10, scope: !2544)
!2548 = !DILocation(line: 225, column: 3, scope: !2544)
!2549 = !DILocation(line: 228, column: 32, scope: !2490)
!2550 = !DILocation(line: 228, column: 38, scope: !2490)
!2551 = !DILocation(line: 228, column: 18, scope: !2490)
!2552 = !DILocation(line: 228, column: 2, scope: !2490)
!2553 = !DILocation(line: 228, column: 8, scope: !2490)
!2554 = !DILocation(line: 228, column: 16, scope: !2490)
!2555 = !DILocation(line: 229, column: 13, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 229, column: 6)
!2557 = !DILocation(line: 229, column: 19, scope: !2556)
!2558 = !DILocation(line: 229, column: 6, scope: !2556)
!2559 = !DILocation(line: 229, column: 6, scope: !2490)
!2560 = !DILocation(line: 230, column: 25, scope: !2556)
!2561 = !DILocation(line: 230, column: 31, scope: !2556)
!2562 = !DILocation(line: 230, column: 44, scope: !2556)
!2563 = !DILocation(line: 230, column: 50, scope: !2556)
!2564 = !DILocation(line: 230, column: 36, scope: !2556)
!2565 = !DILocation(line: 230, column: 10, scope: !2556)
!2566 = !DILocation(line: 230, column: 3, scope: !2556)
!2567 = !DILocation(line: 233, column: 18, scope: !2490)
!2568 = !DILocation(line: 233, column: 2, scope: !2490)
!2569 = !DILocation(line: 233, column: 8, scope: !2490)
!2570 = !DILocation(line: 233, column: 16, scope: !2490)
!2571 = !DILocation(line: 234, column: 2, scope: !2490)
!2572 = !DILocation(line: 234, column: 2, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 234, column: 2)
!2574 = !DILocation(line: 236, column: 27, scope: !2490)
!2575 = !DILocation(line: 236, column: 33, scope: !2490)
!2576 = !DILocation(line: 236, column: 2, scope: !2490)
!2577 = !DILocation(line: 237, column: 25, scope: !2490)
!2578 = !DILocation(line: 237, column: 31, scope: !2490)
!2579 = !DILocation(line: 237, column: 2, scope: !2490)
!2580 = !DILocation(line: 238, column: 21, scope: !2490)
!2581 = !DILocation(line: 238, column: 27, scope: !2490)
!2582 = !DILocation(line: 238, column: 2, scope: !2490)
!2583 = !DILocation(line: 240, column: 27, scope: !2490)
!2584 = !DILocation(line: 240, column: 33, scope: !2490)
!2585 = !DILocation(line: 240, column: 8, scope: !2490)
!2586 = !DILocation(line: 240, column: 6, scope: !2490)
!2587 = !DILocation(line: 241, column: 6, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 241, column: 6)
!2589 = !DILocation(line: 241, column: 6, scope: !2490)
!2590 = !DILocation(line: 242, column: 3, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 241, column: 11)
!2592 = !DILocation(line: 243, column: 10, scope: !2591)
!2593 = !DILocation(line: 243, column: 3, scope: !2591)
!2594 = !DILocation(line: 246, column: 9, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 246, column: 2)
!2596 = !DILocation(line: 246, column: 7, scope: !2595)
!2597 = !DILocation(line: 246, column: 14, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 246, column: 2)
!2599 = !DILocation(line: 246, column: 18, scope: !2598)
!2600 = !DILocation(line: 246, column: 16, scope: !2598)
!2601 = !DILocation(line: 246, column: 2, scope: !2595)
!2602 = !DILocation(line: 247, column: 3, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 246, column: 32)
!2604 = !DILocation(line: 247, column: 9, scope: !2603)
!2605 = !DILocation(line: 247, column: 22, scope: !2603)
!2606 = !DILocation(line: 247, column: 25, scope: !2603)
!2607 = !DILocation(line: 247, column: 32, scope: !2603)
!2608 = !DILocation(line: 248, column: 47, scope: !2603)
!2609 = !DILocation(line: 248, column: 53, scope: !2603)
!2610 = !DILocation(line: 248, column: 3, scope: !2603)
!2611 = !DILocation(line: 248, column: 9, scope: !2603)
!2612 = !DILocation(line: 248, column: 22, scope: !2603)
!2613 = !DILocation(line: 248, column: 25, scope: !2603)
!2614 = !DILocation(line: 248, column: 30, scope: !2603)
!2615 = !DILocation(line: 248, column: 44, scope: !2603)
!2616 = !DILocation(line: 249, column: 35, scope: !2603)
!2617 = !DILocation(line: 249, column: 3, scope: !2603)
!2618 = !DILocation(line: 249, column: 9, scope: !2603)
!2619 = !DILocation(line: 249, column: 22, scope: !2603)
!2620 = !DILocation(line: 249, column: 25, scope: !2603)
!2621 = !DILocation(line: 249, column: 33, scope: !2603)
!2622 = !DILocation(line: 251, column: 52, scope: !2603)
!2623 = !DILocation(line: 251, column: 56, scope: !2603)
!2624 = !DILocation(line: 251, column: 31, scope: !2603)
!2625 = !DILocation(line: 251, column: 3, scope: !2603)
!2626 = !DILocation(line: 251, column: 9, scope: !2603)
!2627 = !DILocation(line: 251, column: 22, scope: !2603)
!2628 = !DILocation(line: 251, column: 25, scope: !2603)
!2629 = !DILocation(line: 251, column: 29, scope: !2603)
!2630 = !DILocation(line: 252, column: 7, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 252, column: 7)
!2632 = !DILocation(line: 252, column: 13, scope: !2631)
!2633 = !DILocation(line: 252, column: 26, scope: !2631)
!2634 = !DILocation(line: 252, column: 29, scope: !2631)
!2635 = !DILocation(line: 252, column: 33, scope: !2631)
!2636 = !DILocation(line: 252, column: 7, scope: !2603)
!2637 = !DILocation(line: 253, column: 8, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 252, column: 39)
!2639 = !DILocation(line: 254, column: 4, scope: !2638)
!2640 = !DILocation(line: 255, column: 4, scope: !2638)
!2641 = !DILocation(line: 258, column: 34, scope: !2603)
!2642 = !DILocation(line: 259, column: 14, scope: !2603)
!2643 = !DILocation(line: 259, column: 20, scope: !2603)
!2644 = !DILocation(line: 259, column: 33, scope: !2603)
!2645 = !DILocation(line: 259, column: 13, scope: !2603)
!2646 = !DILocation(line: 258, column: 12, scope: !2603)
!2647 = !DILocation(line: 258, column: 10, scope: !2603)
!2648 = !DILocation(line: 260, column: 8, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 260, column: 7)
!2650 = !DILocation(line: 260, column: 7, scope: !2603)
!2651 = !DILocation(line: 261, column: 8, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 260, column: 16)
!2653 = !DILocation(line: 262, column: 4, scope: !2652)
!2654 = !DILocation(line: 263, column: 4, scope: !2652)
!2655 = !DILocation(line: 265, column: 34, scope: !2603)
!2656 = !DILocation(line: 265, column: 3, scope: !2603)
!2657 = !DILocation(line: 265, column: 9, scope: !2603)
!2658 = !DILocation(line: 265, column: 22, scope: !2603)
!2659 = !DILocation(line: 265, column: 25, scope: !2603)
!2660 = !DILocation(line: 265, column: 32, scope: !2603)
!2661 = !DILocation(line: 268, column: 3, scope: !2603)
!2662 = !DILocation(line: 270, column: 36, scope: !2603)
!2663 = !DILocation(line: 270, column: 42, scope: !2603)
!2664 = !DILocation(line: 270, column: 55, scope: !2603)
!2665 = !DILocation(line: 270, column: 58, scope: !2603)
!2666 = !DILocation(line: 272, column: 9, scope: !2603)
!2667 = !DILocation(line: 272, column: 15, scope: !2603)
!2668 = !DILocation(line: 272, column: 28, scope: !2603)
!2669 = !DILocation(line: 272, column: 8, scope: !2603)
!2670 = !DILocation(line: 270, column: 3, scope: !2603)
!2671 = !DILocation(line: 273, column: 2, scope: !2603)
!2672 = !DILocation(line: 246, column: 28, scope: !2598)
!2673 = !DILocation(line: 246, column: 2, scope: !2598)
!2674 = distinct !{!2674, !2601, !2675}
!2675 = !DILocation(line: 273, column: 2, scope: !2595)
!2676 = !DILocation(line: 275, column: 23, scope: !2490)
!2677 = !DILocation(line: 275, column: 29, scope: !2490)
!2678 = !DILocation(line: 275, column: 2, scope: !2490)
!2679 = !DILocation(line: 281, column: 18, scope: !2490)
!2680 = !DILocation(line: 281, column: 24, scope: !2490)
!2681 = !DILocation(line: 281, column: 2, scope: !2490)
!2682 = !DILocation(line: 283, column: 2, scope: !2490)
!2683 = !DILabel(scope: !2490, name: "out", file: !3, line: 284)
!2684 = !DILocation(line: 284, column: 1, scope: !2490)
!2685 = !DILocation(line: 285, column: 24, scope: !2490)
!2686 = !DILocation(line: 285, column: 30, scope: !2490)
!2687 = !DILocation(line: 285, column: 2, scope: !2490)
!2688 = !DILocation(line: 286, column: 9, scope: !2490)
!2689 = !DILocation(line: 286, column: 2, scope: !2490)
!2690 = !DILocation(line: 287, column: 1, scope: !2490)
!2691 = distinct !DISubprogram(name: "imx_intmux_remove", scope: !3, file: !3, line: 289, type: !2418, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2692 = !DILocalVariable(name: "pdev", arg: 1, scope: !2691, file: !3, line: 289, type: !2420)
!2693 = !DILocation(line: 289, column: 54, scope: !2691)
!2694 = !DILocalVariable(name: "data", scope: !2691, file: !3, line: 291, type: !129)
!2695 = !DILocation(line: 291, column: 22, scope: !2691)
!2696 = !DILocation(line: 291, column: 50, scope: !2691)
!2697 = !DILocation(line: 291, column: 29, scope: !2691)
!2698 = !DILocalVariable(name: "i", scope: !2691, file: !3, line: 292, type: !119)
!2699 = !DILocation(line: 292, column: 6, scope: !2691)
!2700 = !DILocation(line: 294, column: 9, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 294, column: 2)
!2702 = !DILocation(line: 294, column: 7, scope: !2701)
!2703 = !DILocation(line: 294, column: 14, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 294, column: 2)
!2705 = !DILocation(line: 294, column: 18, scope: !2704)
!2706 = !DILocation(line: 294, column: 24, scope: !2704)
!2707 = !DILocation(line: 294, column: 16, scope: !2704)
!2708 = !DILocation(line: 294, column: 2, scope: !2701)
!2709 = !DILocation(line: 296, column: 3, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 294, column: 38)
!2711 = !DILocation(line: 298, column: 36, scope: !2710)
!2712 = !DILocation(line: 298, column: 42, scope: !2710)
!2713 = !DILocation(line: 298, column: 55, scope: !2710)
!2714 = !DILocation(line: 298, column: 58, scope: !2710)
!2715 = !DILocation(line: 298, column: 3, scope: !2710)
!2716 = !DILocation(line: 301, column: 21, scope: !2710)
!2717 = !DILocation(line: 301, column: 27, scope: !2710)
!2718 = !DILocation(line: 301, column: 40, scope: !2710)
!2719 = !DILocation(line: 301, column: 43, scope: !2710)
!2720 = !DILocation(line: 301, column: 3, scope: !2710)
!2721 = !DILocation(line: 302, column: 2, scope: !2710)
!2722 = !DILocation(line: 294, column: 34, scope: !2704)
!2723 = !DILocation(line: 294, column: 2, scope: !2704)
!2724 = distinct !{!2724, !2708, !2725}
!2725 = !DILocation(line: 302, column: 2, scope: !2701)
!2726 = !DILocation(line: 304, column: 22, scope: !2691)
!2727 = !DILocation(line: 304, column: 28, scope: !2691)
!2728 = !DILocation(line: 304, column: 2, scope: !2691)
!2729 = !DILocation(line: 306, column: 2, scope: !2691)
!2730 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2731, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!127, !156, !122, !120}
!2733 = !DILocalVariable(name: "dev", arg: 1, scope: !2730, file: !30, line: 215, type: !156)
!2734 = !DILocation(line: 215, column: 49, scope: !2730)
!2735 = !DILocalVariable(name: "size", arg: 2, scope: !2730, file: !30, line: 215, type: !122)
!2736 = !DILocation(line: 215, column: 61, scope: !2730)
!2737 = !DILocalVariable(name: "gfp", arg: 3, scope: !2730, file: !30, line: 215, type: !120)
!2738 = !DILocation(line: 215, column: 73, scope: !2730)
!2739 = !DILocation(line: 217, column: 22, scope: !2730)
!2740 = !DILocation(line: 217, column: 27, scope: !2730)
!2741 = !DILocation(line: 217, column: 33, scope: !2730)
!2742 = !DILocation(line: 217, column: 37, scope: !2730)
!2743 = !DILocation(line: 217, column: 9, scope: !2730)
!2744 = !DILocation(line: 217, column: 2, scope: !2730)
!2745 = distinct !DISubprogram(name: "__ab_c_size", scope: !2746, file: !2746, line: 301, type: !2747, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2746 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!122, !122, !122, !122}
!2749 = !DILocalVariable(name: "a", arg: 1, scope: !2745, file: !2746, line: 301, type: !122)
!2750 = !DILocation(line: 301, column: 54, scope: !2745)
!2751 = !DILocalVariable(name: "b", arg: 2, scope: !2745, file: !2746, line: 301, type: !122)
!2752 = !DILocation(line: 301, column: 64, scope: !2745)
!2753 = !DILocalVariable(name: "c", arg: 3, scope: !2745, file: !2746, line: 301, type: !122)
!2754 = !DILocation(line: 301, column: 74, scope: !2745)
!2755 = !DILocalVariable(name: "bytes", scope: !2745, file: !2746, line: 303, type: !122)
!2756 = !DILocation(line: 303, column: 9, scope: !2745)
!2757 = !DILocalVariable(name: "__a", scope: !2758, file: !2746, line: 305, type: !122)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !2746, line: 305, column: 6)
!2759 = distinct !DILexicalBlock(scope: !2745, file: !2746, line: 305, column: 6)
!2760 = !DILocation(line: 305, column: 6, scope: !2758)
!2761 = !DILocalVariable(name: "__b", scope: !2758, file: !2746, line: 305, type: !122)
!2762 = !DILocalVariable(name: "__d", scope: !2758, file: !2746, line: 305, type: !2763)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!2764 = !DILocation(line: 305, column: 6, scope: !2759)
!2765 = !DILocation(line: 305, column: 6, scope: !2745)
!2766 = !DILocation(line: 306, column: 3, scope: !2759)
!2767 = !DILocalVariable(name: "__a", scope: !2768, file: !2746, line: 307, type: !122)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !2746, line: 307, column: 6)
!2769 = distinct !DILexicalBlock(scope: !2745, file: !2746, line: 307, column: 6)
!2770 = !DILocation(line: 307, column: 6, scope: !2768)
!2771 = !DILocalVariable(name: "__b", scope: !2768, file: !2746, line: 307, type: !122)
!2772 = !DILocalVariable(name: "__d", scope: !2768, file: !2746, line: 307, type: !2763)
!2773 = !DILocation(line: 307, column: 6, scope: !2769)
!2774 = !DILocation(line: 307, column: 6, scope: !2745)
!2775 = !DILocation(line: 308, column: 3, scope: !2769)
!2776 = !DILocation(line: 310, column: 9, scope: !2745)
!2777 = !DILocation(line: 310, column: 2, scope: !2745)
!2778 = !DILocation(line: 311, column: 1, scope: !2745)
!2779 = distinct !DISubprogram(name: "IS_ERR", scope: !2780, file: !2780, line: 34, type: !2781, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2780 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!1034, !1165}
!2783 = !DILocalVariable(name: "ptr", arg: 1, scope: !2779, file: !2780, line: 34, type: !1165)
!2784 = !DILocation(line: 34, column: 60, scope: !2779)
!2785 = !DILocation(line: 36, column: 9, scope: !2779)
!2786 = !DILocation(line: 36, column: 2, scope: !2779)
!2787 = distinct !DISubprogram(name: "PTR_ERR", scope: !2780, file: !2780, line: 29, type: !2788, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!128, !1165}
!2790 = !DILocalVariable(name: "ptr", arg: 1, scope: !2787, file: !2780, line: 29, type: !1165)
!2791 = !DILocation(line: 29, column: 61, scope: !2787)
!2792 = !DILocation(line: 31, column: 16, scope: !2787)
!2793 = !DILocation(line: 31, column: 9, scope: !2787)
!2794 = !DILocation(line: 31, column: 2, scope: !2787)
!2795 = distinct !DISubprogram(name: "pm_runtime_get_noresume", scope: !2796, file: !2796, line: 92, type: !1656, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2796 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!2797 = !DILocalVariable(name: "v", arg: 1, scope: !2798, file: !2799, line: 93, type: !2802)
!2798 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !2799, file: !2799, line: 93, type: !2800, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2799 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!2800 = !DISubroutineType(types: !2801)
!2801 = !{null, !2802}
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2803 = !DILocation(line: 93, column: 55, scope: !2798, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 241, column: 2, scope: !2805, inlinedAt: !2807)
!2805 = distinct !DISubprogram(name: "atomic_inc", scope: !2806, file: !2806, line: 238, type: !2800, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2806 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2807 = distinct !DILocation(line: 94, column: 2, scope: !2795)
!2808 = !DILocalVariable(name: "v", arg: 1, scope: !2809, file: !2810, line: 99, type: !2813)
!2809 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2810, file: !2810, line: 99, type: !2811, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2810 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2811 = !DISubroutineType(types: !2812)
!2812 = !{null, !2813, !122}
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2815)
!2815 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2816 = !DILocation(line: 99, column: 79, scope: !2809, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 240, column: 2, scope: !2805, inlinedAt: !2807)
!2818 = !DILocalVariable(name: "size", arg: 2, scope: !2809, file: !2810, line: 99, type: !122)
!2819 = !DILocation(line: 99, column: 89, scope: !2809, inlinedAt: !2817)
!2820 = !DILocalVariable(name: "v", arg: 1, scope: !2805, file: !2806, line: 238, type: !2802)
!2821 = !DILocation(line: 238, column: 22, scope: !2805, inlinedAt: !2807)
!2822 = !DILocalVariable(name: "dev", arg: 1, scope: !2795, file: !2796, line: 92, type: !156)
!2823 = !DILocation(line: 92, column: 59, scope: !2795)
!2824 = !DILocation(line: 94, column: 14, scope: !2795)
!2825 = !DILocation(line: 94, column: 19, scope: !2795)
!2826 = !DILocation(line: 94, column: 25, scope: !2795)
!2827 = !DILocation(line: 240, column: 31, scope: !2805, inlinedAt: !2807)
!2828 = !DILocation(line: 101, column: 20, scope: !2809, inlinedAt: !2817)
!2829 = !DILocation(line: 101, column: 23, scope: !2809, inlinedAt: !2817)
!2830 = !DILocation(line: 101, column: 2, scope: !2809, inlinedAt: !2817)
!2831 = !DILocation(line: 102, column: 2, scope: !2809, inlinedAt: !2817)
!2832 = !DILocation(line: 241, column: 18, scope: !2805, inlinedAt: !2807)
!2833 = !DILocation(line: 96, column: 16, scope: !2798, inlinedAt: !2804)
!2834 = !DILocation(line: 96, column: 19, scope: !2798, inlinedAt: !2804)
!2835 = !DILocation(line: 95, column: 2, scope: !2798, inlinedAt: !2804)
!2836 = !{i32 -2146661138}
!2837 = !DILocation(line: 95, column: 1, scope: !2795)
!2838 = distinct !DISubprogram(name: "pm_runtime_set_active", scope: !2796, file: !2796, line: 495, type: !1665, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2839 = !DILocalVariable(name: "dev", arg: 1, scope: !2838, file: !2796, line: 495, type: !156)
!2840 = !DILocation(line: 495, column: 56, scope: !2838)
!2841 = !DILocation(line: 497, column: 33, scope: !2838)
!2842 = !DILocation(line: 497, column: 9, scope: !2838)
!2843 = !DILocation(line: 497, column: 2, scope: !2838)
!2844 = distinct !DISubprogram(name: "clk_prepare_enable", scope: !146, file: !146, line: 906, type: !2845, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!119, !144}
!2847 = !DILocalVariable(name: "clk", arg: 1, scope: !2844, file: !146, line: 906, type: !144)
!2848 = !DILocation(line: 906, column: 50, scope: !2844)
!2849 = !DILocalVariable(name: "ret", scope: !2844, file: !146, line: 908, type: !119)
!2850 = !DILocation(line: 908, column: 6, scope: !2844)
!2851 = !DILocation(line: 910, column: 20, scope: !2844)
!2852 = !DILocation(line: 910, column: 8, scope: !2844)
!2853 = !DILocation(line: 910, column: 6, scope: !2844)
!2854 = !DILocation(line: 911, column: 6, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2844, file: !146, line: 911, column: 6)
!2856 = !DILocation(line: 911, column: 6, scope: !2844)
!2857 = !DILocation(line: 912, column: 10, scope: !2855)
!2858 = !DILocation(line: 912, column: 3, scope: !2855)
!2859 = !DILocation(line: 913, column: 19, scope: !2844)
!2860 = !DILocation(line: 913, column: 8, scope: !2844)
!2861 = !DILocation(line: 913, column: 6, scope: !2844)
!2862 = !DILocation(line: 914, column: 6, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2844, file: !146, line: 914, column: 6)
!2864 = !DILocation(line: 914, column: 6, scope: !2844)
!2865 = !DILocation(line: 915, column: 17, scope: !2863)
!2866 = !DILocation(line: 915, column: 3, scope: !2863)
!2867 = !DILocation(line: 917, column: 9, scope: !2844)
!2868 = !DILocation(line: 917, column: 2, scope: !2844)
!2869 = !DILocation(line: 918, column: 1, scope: !2844)
!2870 = distinct !DISubprogram(name: "irq_domain_add_linear", scope: !51, file: !51, line: 333, type: !2871, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!1915, !1929, !7, !1921, !127}
!2873 = !DILocalVariable(name: "of_node", arg: 1, scope: !2870, file: !51, line: 333, type: !1929)
!2874 = !DILocation(line: 333, column: 76, scope: !2870)
!2875 = !DILocalVariable(name: "size", arg: 2, scope: !2870, file: !51, line: 334, type: !7)
!2876 = !DILocation(line: 334, column: 20, scope: !2870)
!2877 = !DILocalVariable(name: "ops", arg: 3, scope: !2870, file: !51, line: 335, type: !1921)
!2878 = !DILocation(line: 335, column: 36, scope: !2870)
!2879 = !DILocalVariable(name: "host_data", arg: 4, scope: !2870, file: !51, line: 336, type: !127)
!2880 = !DILocation(line: 336, column: 13, scope: !2870)
!2881 = !DILocation(line: 338, column: 44, scope: !2870)
!2882 = !DILocation(line: 338, column: 26, scope: !2870)
!2883 = !DILocation(line: 338, column: 54, scope: !2870)
!2884 = !DILocation(line: 338, column: 60, scope: !2870)
!2885 = !DILocation(line: 338, column: 69, scope: !2870)
!2886 = !DILocation(line: 338, column: 74, scope: !2870)
!2887 = !DILocation(line: 338, column: 9, scope: !2870)
!2888 = !DILocation(line: 338, column: 2, scope: !2870)
!2889 = distinct !DISubprogram(name: "__writel", scope: !2890, file: !2890, line: 71, type: !2891, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2890 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!2891 = !DISubroutineType(types: !2892)
!2892 = !{null, !7, !2893}
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2894 = !DILocalVariable(name: "val", arg: 1, scope: !2889, file: !2890, line: 71, type: !7)
!2895 = !DILocation(line: 71, column: 1, scope: !2889)
!2896 = !DILocalVariable(name: "addr", arg: 2, scope: !2889, file: !2890, line: 71, type: !2893)
!2897 = !{i32 -2144544867}
!2898 = distinct !DISubprogram(name: "imx_intmux_irq_handler", scope: !3, file: !3, line: 178, type: !2180, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2899 = !DILocalVariable(name: "desc", arg: 1, scope: !2898, file: !3, line: 178, type: !2182)
!2900 = !DILocation(line: 178, column: 53, scope: !2898)
!2901 = !DILocalVariable(name: "irqchip_data", scope: !2898, file: !3, line: 180, type: !2902)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!2903 = !DILocation(line: 180, column: 30, scope: !2898)
!2904 = !DILocation(line: 180, column: 71, scope: !2898)
!2905 = !DILocation(line: 180, column: 45, scope: !2898)
!2906 = !DILocalVariable(name: "idx", scope: !2898, file: !3, line: 181, type: !119)
!2907 = !DILocation(line: 181, column: 6, scope: !2898)
!2908 = !DILocation(line: 181, column: 12, scope: !2898)
!2909 = !DILocation(line: 181, column: 26, scope: !2898)
!2910 = !DILocalVariable(name: "data", scope: !2898, file: !3, line: 182, type: !129)
!2911 = !DILocation(line: 182, column: 22, scope: !2898)
!2912 = !DILocalVariable(name: "__mptr", scope: !2913, file: !3, line: 182, type: !127)
!2913 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 182, column: 29)
!2914 = !DILocation(line: 182, column: 29, scope: !2913)
!2915 = !DILocation(line: 182, column: 29, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 182, column: 29)
!2917 = !DILocalVariable(name: "irqstat", scope: !2898, file: !3, line: 184, type: !126)
!2918 = !DILocation(line: 184, column: 16, scope: !2898)
!2919 = !DILocalVariable(name: "pos", scope: !2898, file: !3, line: 185, type: !119)
!2920 = !DILocation(line: 185, column: 6, scope: !2898)
!2921 = !DILocalVariable(name: "virq", scope: !2898, file: !3, line: 185, type: !119)
!2922 = !DILocation(line: 185, column: 11, scope: !2898)
!2923 = !DILocation(line: 187, column: 38, scope: !2898)
!2924 = !DILocation(line: 187, column: 20, scope: !2898)
!2925 = !DILocation(line: 187, column: 45, scope: !2898)
!2926 = !DILocation(line: 187, column: 2, scope: !2898)
!2927 = !DILocation(line: 190, column: 12, scope: !2898)
!2928 = !DILocation(line: 190, column: 10, scope: !2898)
!2929 = !DILocation(line: 192, column: 2, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 192, column: 2)
!2931 = !DILocation(line: 192, column: 2, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 192, column: 2)
!2933 = !DILocation(line: 193, column: 27, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 192, column: 38)
!2935 = !DILocation(line: 193, column: 41, scope: !2934)
!2936 = !DILocation(line: 193, column: 49, scope: !2934)
!2937 = !DILocation(line: 193, column: 10, scope: !2934)
!2938 = !DILocation(line: 193, column: 8, scope: !2934)
!2939 = !DILocation(line: 194, column: 7, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 194, column: 7)
!2941 = !DILocation(line: 194, column: 7, scope: !2934)
!2942 = !DILocation(line: 195, column: 23, scope: !2940)
!2943 = !DILocation(line: 195, column: 4, scope: !2940)
!2944 = !DILocation(line: 196, column: 2, scope: !2934)
!2945 = distinct !{!2945, !2929, !2946}
!2946 = !DILocation(line: 196, column: 2, scope: !2930)
!2947 = !DILocation(line: 198, column: 37, scope: !2898)
!2948 = !DILocation(line: 198, column: 19, scope: !2898)
!2949 = !DILocation(line: 198, column: 44, scope: !2898)
!2950 = !DILocation(line: 198, column: 2, scope: !2898)
!2951 = !DILocation(line: 199, column: 1, scope: !2898)
!2952 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !2414, file: !2414, line: 236, type: !2953, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2420, !127}
!2955 = !DILocalVariable(name: "pdev", arg: 1, scope: !2952, file: !2414, line: 236, type: !2420)
!2956 = !DILocation(line: 236, column: 65, scope: !2952)
!2957 = !DILocalVariable(name: "data", arg: 2, scope: !2952, file: !2414, line: 237, type: !127)
!2958 = !DILocation(line: 237, column: 12, scope: !2952)
!2959 = !DILocation(line: 239, column: 19, scope: !2952)
!2960 = !DILocation(line: 239, column: 25, scope: !2952)
!2961 = !DILocation(line: 239, column: 30, scope: !2952)
!2962 = !DILocation(line: 239, column: 2, scope: !2952)
!2963 = !DILocation(line: 240, column: 1, scope: !2952)
!2964 = distinct !DISubprogram(name: "pm_runtime_put", scope: !2796, file: !2796, line: 417, type: !1665, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2965 = !DILocalVariable(name: "dev", arg: 1, scope: !2964, file: !2796, line: 417, type: !156)
!2966 = !DILocation(line: 417, column: 49, scope: !2964)
!2967 = !DILocation(line: 419, column: 27, scope: !2964)
!2968 = !DILocation(line: 419, column: 9, scope: !2964)
!2969 = !DILocation(line: 419, column: 2, scope: !2964)
!2970 = distinct !DISubprogram(name: "clk_disable_unprepare", scope: !146, file: !146, line: 921, type: !2971, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !144}
!2973 = !DILocalVariable(name: "clk", arg: 1, scope: !2970, file: !146, line: 921, type: !144)
!2974 = !DILocation(line: 921, column: 54, scope: !2970)
!2975 = !DILocation(line: 923, column: 14, scope: !2970)
!2976 = !DILocation(line: 923, column: 2, scope: !2970)
!2977 = !DILocation(line: 924, column: 16, scope: !2970)
!2978 = !DILocation(line: 924, column: 2, scope: !2970)
!2979 = !DILocation(line: 925, column: 1, scope: !2970)
!2980 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2746, file: !2746, line: 52, type: !2981, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!1034, !1034}
!2983 = !DILocalVariable(name: "overflow", arg: 1, scope: !2980, file: !2746, line: 52, type: !1034)
!2984 = !DILocation(line: 52, column: 60, scope: !2980)
!2985 = !DILocation(line: 54, column: 9, scope: !2980)
!2986 = !DILocation(line: 54, column: 2, scope: !2980)
!2987 = distinct !DISubprogram(name: "kasan_check_write", scope: !2988, file: !2988, line: 38, type: !2989, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2988 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!1034, !2813, !7}
!2991 = !DILocalVariable(name: "p", arg: 1, scope: !2987, file: !2988, line: 38, type: !2813)
!2992 = !DILocation(line: 38, column: 59, scope: !2987)
!2993 = !DILocalVariable(name: "size", arg: 2, scope: !2987, file: !2988, line: 38, type: !7)
!2994 = !DILocation(line: 38, column: 75, scope: !2987)
!2995 = !DILocation(line: 40, column: 2, scope: !2987)
!2996 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2997, file: !2997, line: 178, type: !2998, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!2997 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !2813, !122, !119}
!3000 = !DILocalVariable(name: "ptr", arg: 1, scope: !2996, file: !2997, line: 178, type: !2813)
!3001 = !DILocation(line: 178, column: 60, scope: !2996)
!3002 = !DILocalVariable(name: "size", arg: 2, scope: !2996, file: !2997, line: 178, type: !122)
!3003 = !DILocation(line: 178, column: 72, scope: !2996)
!3004 = !DILocalVariable(name: "type", arg: 3, scope: !2996, file: !2997, line: 179, type: !119)
!3005 = !DILocation(line: 179, column: 15, scope: !2996)
!3006 = !DILocation(line: 179, column: 23, scope: !2996)
!3007 = distinct !DISubprogram(name: "imx_intmux_irq_mask", scope: !3, file: !3, line: 79, type: !2337, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3008 = !DILocalVariable(name: "d", arg: 1, scope: !3007, file: !3, line: 79, type: !2083)
!3009 = !DILocation(line: 79, column: 50, scope: !3007)
!3010 = !DILocalVariable(name: "irqchip_data", scope: !3007, file: !3, line: 81, type: !2902)
!3011 = !DILocation(line: 81, column: 30, scope: !3007)
!3012 = !DILocation(line: 81, column: 45, scope: !3007)
!3013 = !DILocation(line: 81, column: 48, scope: !3007)
!3014 = !DILocalVariable(name: "idx", scope: !3007, file: !3, line: 82, type: !119)
!3015 = !DILocation(line: 82, column: 6, scope: !3007)
!3016 = !DILocation(line: 82, column: 12, scope: !3007)
!3017 = !DILocation(line: 82, column: 26, scope: !3007)
!3018 = !DILocalVariable(name: "data", scope: !3007, file: !3, line: 83, type: !129)
!3019 = !DILocation(line: 83, column: 22, scope: !3007)
!3020 = !DILocalVariable(name: "__mptr", scope: !3021, file: !3, line: 83, type: !127)
!3021 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 83, column: 29)
!3022 = !DILocation(line: 83, column: 29, scope: !3021)
!3023 = !DILocation(line: 83, column: 29, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 83, column: 29)
!3025 = !DILocalVariable(name: "flags", scope: !3007, file: !3, line: 85, type: !126)
!3026 = !DILocation(line: 85, column: 16, scope: !3007)
!3027 = !DILocalVariable(name: "reg", scope: !3007, file: !3, line: 86, type: !127)
!3028 = !DILocation(line: 86, column: 16, scope: !3007)
!3029 = !DILocalVariable(name: "val", scope: !3007, file: !3, line: 87, type: !464)
!3030 = !DILocation(line: 87, column: 6, scope: !3007)
!3031 = !DILocation(line: 89, column: 2, scope: !3007)
!3032 = !DILocalVariable(name: "__dummy", scope: !3033, file: !3, line: 89, type: !126)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 89, column: 2)
!3034 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 89, column: 2)
!3035 = !DILocation(line: 89, column: 2, scope: !3033)
!3036 = !DILocalVariable(name: "__dummy2", scope: !3033, file: !3, line: 89, type: !126)
!3037 = !DILocation(line: 89, column: 2, scope: !3034)
!3038 = !DILocation(line: 89, column: 2, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 89, column: 2)
!3040 = !DILocation(line: 89, column: 2, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 89, column: 2)
!3042 = !DILocalVariable(name: "__dummy", scope: !3043, file: !3, line: 89, type: !126)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 89, column: 2)
!3044 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 89, column: 2)
!3045 = !DILocation(line: 89, column: 2, scope: !3043)
!3046 = !DILocalVariable(name: "__dummy2", scope: !3043, file: !3, line: 89, type: !126)
!3047 = !DILocation(line: 89, column: 2, scope: !3044)
!3048 = !DILocation(line: 89, column: 2, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 89, column: 2)
!3050 = !{i32 -2143207567}
!3051 = !DILocation(line: 89, column: 2, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 89, column: 2)
!3053 = !DILocation(line: 90, column: 8, scope: !3007)
!3054 = !DILocation(line: 90, column: 14, scope: !3007)
!3055 = !DILocation(line: 90, column: 21, scope: !3007)
!3056 = !DILocation(line: 90, column: 19, scope: !3007)
!3057 = !DILocation(line: 90, column: 6, scope: !3007)
!3058 = !DILocation(line: 91, column: 8, scope: !3007)
!3059 = !DILocation(line: 91, column: 6, scope: !3007)
!3060 = !DILocation(line: 93, column: 10, scope: !3007)
!3061 = !DILocation(line: 93, column: 9, scope: !3007)
!3062 = !DILocation(line: 93, column: 6, scope: !3007)
!3063 = !DILocation(line: 94, column: 2, scope: !3007)
!3064 = !DILocation(line: 95, column: 2, scope: !3007)
!3065 = !DILocalVariable(name: "__dummy", scope: !3066, file: !3, line: 95, type: !126)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 95, column: 2)
!3067 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 95, column: 2)
!3068 = !DILocation(line: 95, column: 2, scope: !3066)
!3069 = !DILocalVariable(name: "__dummy2", scope: !3066, file: !3, line: 95, type: !126)
!3070 = !DILocation(line: 95, column: 2, scope: !3067)
!3071 = !DILocation(line: 95, column: 2, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 95, column: 2)
!3073 = !DILocation(line: 95, column: 2, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 95, column: 2)
!3075 = !DILocalVariable(name: "__dummy", scope: !3076, file: !3, line: 95, type: !126)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 95, column: 2)
!3077 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 95, column: 2)
!3078 = !DILocation(line: 95, column: 2, scope: !3076)
!3079 = !DILocalVariable(name: "__dummy2", scope: !3076, file: !3, line: 95, type: !126)
!3080 = !DILocation(line: 95, column: 2, scope: !3077)
!3081 = !DILocation(line: 95, column: 2, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 95, column: 2)
!3083 = !{i32 -2143206592}
!3084 = !DILocation(line: 95, column: 2, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 95, column: 2)
!3086 = !DILocation(line: 96, column: 1, scope: !3007)
!3087 = distinct !DISubprogram(name: "imx_intmux_irq_unmask", scope: !3, file: !3, line: 98, type: !2337, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3088 = !DILocalVariable(name: "d", arg: 1, scope: !3087, file: !3, line: 98, type: !2083)
!3089 = !DILocation(line: 98, column: 52, scope: !3087)
!3090 = !DILocalVariable(name: "irqchip_data", scope: !3087, file: !3, line: 100, type: !2902)
!3091 = !DILocation(line: 100, column: 30, scope: !3087)
!3092 = !DILocation(line: 100, column: 45, scope: !3087)
!3093 = !DILocation(line: 100, column: 48, scope: !3087)
!3094 = !DILocalVariable(name: "idx", scope: !3087, file: !3, line: 101, type: !119)
!3095 = !DILocation(line: 101, column: 6, scope: !3087)
!3096 = !DILocation(line: 101, column: 12, scope: !3087)
!3097 = !DILocation(line: 101, column: 26, scope: !3087)
!3098 = !DILocalVariable(name: "data", scope: !3087, file: !3, line: 102, type: !129)
!3099 = !DILocation(line: 102, column: 22, scope: !3087)
!3100 = !DILocalVariable(name: "__mptr", scope: !3101, file: !3, line: 102, type: !127)
!3101 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 102, column: 29)
!3102 = !DILocation(line: 102, column: 29, scope: !3101)
!3103 = !DILocation(line: 102, column: 29, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 102, column: 29)
!3105 = !DILocalVariable(name: "flags", scope: !3087, file: !3, line: 104, type: !126)
!3106 = !DILocation(line: 104, column: 16, scope: !3087)
!3107 = !DILocalVariable(name: "reg", scope: !3087, file: !3, line: 105, type: !127)
!3108 = !DILocation(line: 105, column: 16, scope: !3087)
!3109 = !DILocalVariable(name: "val", scope: !3087, file: !3, line: 106, type: !464)
!3110 = !DILocation(line: 106, column: 6, scope: !3087)
!3111 = !DILocation(line: 108, column: 2, scope: !3087)
!3112 = !DILocalVariable(name: "__dummy", scope: !3113, file: !3, line: 108, type: !126)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 108, column: 2)
!3114 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 108, column: 2)
!3115 = !DILocation(line: 108, column: 2, scope: !3113)
!3116 = !DILocalVariable(name: "__dummy2", scope: !3113, file: !3, line: 108, type: !126)
!3117 = !DILocation(line: 108, column: 2, scope: !3114)
!3118 = !DILocation(line: 108, column: 2, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 108, column: 2)
!3120 = !DILocation(line: 108, column: 2, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 108, column: 2)
!3122 = !DILocalVariable(name: "__dummy", scope: !3123, file: !3, line: 108, type: !126)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 108, column: 2)
!3124 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 108, column: 2)
!3125 = !DILocation(line: 108, column: 2, scope: !3123)
!3126 = !DILocalVariable(name: "__dummy2", scope: !3123, file: !3, line: 108, type: !126)
!3127 = !DILocation(line: 108, column: 2, scope: !3124)
!3128 = !DILocation(line: 108, column: 2, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 108, column: 2)
!3130 = !{i32 -2143204132}
!3131 = !DILocation(line: 108, column: 2, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 108, column: 2)
!3133 = !DILocation(line: 109, column: 8, scope: !3087)
!3134 = !DILocation(line: 109, column: 14, scope: !3087)
!3135 = !DILocation(line: 109, column: 21, scope: !3087)
!3136 = !DILocation(line: 109, column: 19, scope: !3087)
!3137 = !DILocation(line: 109, column: 6, scope: !3087)
!3138 = !DILocation(line: 110, column: 8, scope: !3087)
!3139 = !DILocation(line: 110, column: 6, scope: !3087)
!3140 = !DILocation(line: 112, column: 9, scope: !3087)
!3141 = !DILocation(line: 112, column: 6, scope: !3087)
!3142 = !DILocation(line: 113, column: 2, scope: !3087)
!3143 = !DILocation(line: 114, column: 2, scope: !3087)
!3144 = !DILocalVariable(name: "__dummy", scope: !3145, file: !3, line: 114, type: !126)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 114, column: 2)
!3146 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 114, column: 2)
!3147 = !DILocation(line: 114, column: 2, scope: !3145)
!3148 = !DILocalVariable(name: "__dummy2", scope: !3145, file: !3, line: 114, type: !126)
!3149 = !DILocation(line: 114, column: 2, scope: !3146)
!3150 = !DILocation(line: 114, column: 2, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 114, column: 2)
!3152 = !DILocation(line: 114, column: 2, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 114, column: 2)
!3154 = !DILocalVariable(name: "__dummy", scope: !3155, file: !3, line: 114, type: !126)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 114, column: 2)
!3156 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 114, column: 2)
!3157 = !DILocation(line: 114, column: 2, scope: !3155)
!3158 = !DILocalVariable(name: "__dummy2", scope: !3155, file: !3, line: 114, type: !126)
!3159 = !DILocation(line: 114, column: 2, scope: !3156)
!3160 = !DILocation(line: 114, column: 2, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 114, column: 2)
!3162 = !{i32 -2143203157}
!3163 = !DILocation(line: 114, column: 2, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 114, column: 2)
!3165 = !DILocation(line: 115, column: 1, scope: !3087)
!3166 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !3167, file: !3167, line: 666, type: !3168, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3167 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!126}
!3170 = !DILocalVariable(name: "f", scope: !3166, file: !3167, line: 668, type: !126)
!3171 = !DILocation(line: 668, column: 16, scope: !3166)
!3172 = !DILocation(line: 670, column: 6, scope: !3166)
!3173 = !DILocation(line: 670, column: 4, scope: !3166)
!3174 = !DILocation(line: 671, column: 2, scope: !3166)
!3175 = !DILocation(line: 672, column: 9, scope: !3166)
!3176 = !DILocation(line: 672, column: 2, scope: !3166)
!3177 = distinct !DISubprogram(name: "__readl", scope: !2890, file: !2890, line: 63, type: !3178, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!7, !2813}
!3180 = !DILocalVariable(name: "addr", arg: 1, scope: !3177, file: !2890, line: 63, type: !2813)
!3181 = !DILocation(line: 63, column: 1, scope: !3177)
!3182 = !DILocalVariable(name: "ret", scope: !3177, file: !2890, line: 63, type: !7)
!3183 = !{i32 -2144547170}
!3184 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !3167, file: !3167, line: 651, type: !3185, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{null, !126}
!3187 = !DILocalVariable(name: "f", arg: 1, scope: !3184, file: !3167, line: 651, type: !126)
!3188 = !DILocation(line: 651, column: 65, scope: !3184)
!3189 = !DILocalVariable(name: "__edi", scope: !3190, file: !3167, line: 653, type: !126)
!3190 = distinct !DILexicalBlock(scope: !3184, file: !3167, line: 653, column: 2)
!3191 = !DILocation(line: 653, column: 2, scope: !3190)
!3192 = !DILocalVariable(name: "__esi", scope: !3190, file: !3167, line: 653, type: !126)
!3193 = !DILocalVariable(name: "__edx", scope: !3190, file: !3167, line: 653, type: !126)
!3194 = !DILocalVariable(name: "__ecx", scope: !3190, file: !3167, line: 653, type: !126)
!3195 = !DILocalVariable(name: "__eax", scope: !3190, file: !3167, line: 653, type: !126)
!3196 = !{i32 -2145762988, i32 -2145762238, i32 -2145762004, i32 -2145761953, i32 -2145761925, i32 -2145761900, i32 -2145762216, i32 -2145762203, i32 -2145761765, i32 -2145761646, i32 -2145762111, i32 -2145762084, i32 -2145762056, i32 -2145762026}
!3197 = !DILocation(line: 654, column: 1, scope: !3184)
!3198 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3167, file: !3167, line: 646, type: !3168, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3199 = !DILocalVariable(name: "__ret", scope: !3200, file: !3167, line: 648, type: !126)
!3200 = distinct !DILexicalBlock(scope: !3198, file: !3167, line: 648, column: 9)
!3201 = !DILocation(line: 648, column: 9, scope: !3200)
!3202 = !DILocalVariable(name: "__edi", scope: !3200, file: !3167, line: 648, type: !126)
!3203 = !DILocalVariable(name: "__esi", scope: !3200, file: !3167, line: 648, type: !126)
!3204 = !DILocalVariable(name: "__edx", scope: !3200, file: !3167, line: 648, type: !126)
!3205 = !DILocalVariable(name: "__ecx", scope: !3200, file: !3167, line: 648, type: !126)
!3206 = !DILocalVariable(name: "__eax", scope: !3200, file: !3167, line: 648, type: !126)
!3207 = !DILocation(line: 648, column: 9, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !3167, line: 648, column: 9)
!3209 = distinct !DILexicalBlock(scope: !3200, file: !3167, line: 648, column: 9)
!3210 = !{i32 -2145767455, i32 -2145765140, i32 -2145764906, i32 -2145764855, i32 -2145764827, i32 -2145764802, i32 -2145765118, i32 -2145765105, i32 -2145764667, i32 -2145764548, i32 -2145765013, i32 -2145764986, i32 -2145764958, i32 -2145764928}
!3211 = !DILocalVariable(name: "__mask", scope: !3212, file: !3167, line: 648, type: !126)
!3212 = distinct !DILexicalBlock(scope: !3208, file: !3167, line: 648, column: 9)
!3213 = !DILocation(line: 648, column: 9, scope: !3212)
!3214 = !DILocation(line: 648, column: 9, scope: !3209)
!3215 = !DILocation(line: 648, column: 2, scope: !3198)
!3216 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !3167, file: !3167, line: 656, type: !3217, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{null}
!3219 = !DILocalVariable(name: "__edi", scope: !3220, file: !3167, line: 658, type: !126)
!3220 = distinct !DILexicalBlock(scope: !3216, file: !3167, line: 658, column: 2)
!3221 = !DILocation(line: 658, column: 2, scope: !3220)
!3222 = !DILocalVariable(name: "__esi", scope: !3220, file: !3167, line: 658, type: !126)
!3223 = !DILocalVariable(name: "__edx", scope: !3220, file: !3167, line: 658, type: !126)
!3224 = !DILocalVariable(name: "__ecx", scope: !3220, file: !3167, line: 658, type: !126)
!3225 = !DILocalVariable(name: "__eax", scope: !3220, file: !3167, line: 658, type: !126)
!3226 = !{i32 -2145760361, i32 -2145759629, i32 -2145759395, i32 -2145759344, i32 -2145759316, i32 -2145759291, i32 -2145759607, i32 -2145759594, i32 -2145759156, i32 -2145759037, i32 -2145759502, i32 -2145759475, i32 -2145759447, i32 -2145759417}
!3227 = !DILocation(line: 659, column: 1, scope: !3216)
!3228 = distinct !DISubprogram(name: "of_node_to_fwnode", scope: !51, file: !51, line: 283, type: !3229, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!1942, !1929}
!3231 = !DILocalVariable(name: "node", arg: 1, scope: !3228, file: !51, line: 283, type: !1929)
!3232 = !DILocation(line: 283, column: 75, scope: !3228)
!3233 = !DILocation(line: 285, column: 9, scope: !3228)
!3234 = !DILocation(line: 285, column: 17, scope: !3228)
!3235 = !DILocation(line: 285, column: 23, scope: !3228)
!3236 = !DILocation(line: 285, column: 2, scope: !3228)
!3237 = distinct !DISubprogram(name: "imx_intmux_irq_select", scope: !3, file: !3, line: 160, type: !2045, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3238 = !DILocalVariable(name: "d", arg: 1, scope: !3237, file: !3, line: 160, type: !1915)
!3239 = !DILocation(line: 160, column: 53, scope: !3237)
!3240 = !DILocalVariable(name: "fwspec", arg: 2, scope: !3237, file: !3, line: 160, type: !2047)
!3241 = !DILocation(line: 160, column: 75, scope: !3237)
!3242 = !DILocalVariable(name: "bus_token", arg: 3, scope: !3237, file: !3, line: 161, type: !50)
!3243 = !DILocation(line: 161, column: 32, scope: !3237)
!3244 = !DILocalVariable(name: "irqchip_data", scope: !3237, file: !3, line: 163, type: !2902)
!3245 = !DILocation(line: 163, column: 30, scope: !3237)
!3246 = !DILocation(line: 163, column: 45, scope: !3237)
!3247 = !DILocation(line: 163, column: 48, scope: !3237)
!3248 = !DILocation(line: 166, column: 6, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 166, column: 6)
!3250 = !DILocation(line: 166, column: 14, scope: !3249)
!3251 = !DILocation(line: 166, column: 24, scope: !3249)
!3252 = !DILocation(line: 166, column: 27, scope: !3249)
!3253 = !DILocation(line: 166, column: 21, scope: !3249)
!3254 = !DILocation(line: 166, column: 6, scope: !3237)
!3255 = !DILocation(line: 167, column: 3, scope: !3249)
!3256 = !DILocation(line: 169, column: 9, scope: !3237)
!3257 = !DILocation(line: 169, column: 23, scope: !3237)
!3258 = !DILocation(line: 169, column: 34, scope: !3237)
!3259 = !DILocation(line: 169, column: 42, scope: !3237)
!3260 = !DILocation(line: 169, column: 31, scope: !3237)
!3261 = !DILocation(line: 169, column: 2, scope: !3237)
!3262 = !DILocation(line: 170, column: 1, scope: !3237)
!3263 = distinct !DISubprogram(name: "imx_intmux_irq_map", scope: !3, file: !3, line: 123, type: !2056, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3264 = !DILocalVariable(name: "h", arg: 1, scope: !3263, file: !3, line: 123, type: !1915)
!3265 = !DILocation(line: 123, column: 50, scope: !3263)
!3266 = !DILocalVariable(name: "irq", arg: 2, scope: !3263, file: !3, line: 123, type: !7)
!3267 = !DILocation(line: 123, column: 66, scope: !3263)
!3268 = !DILocalVariable(name: "hwirq", arg: 3, scope: !3263, file: !3, line: 124, type: !2058)
!3269 = !DILocation(line: 124, column: 26, scope: !3263)
!3270 = !DILocalVariable(name: "data", scope: !3263, file: !3, line: 126, type: !2902)
!3271 = !DILocation(line: 126, column: 30, scope: !3263)
!3272 = !DILocation(line: 126, column: 37, scope: !3263)
!3273 = !DILocation(line: 126, column: 40, scope: !3263)
!3274 = !DILocation(line: 128, column: 20, scope: !3263)
!3275 = !DILocation(line: 128, column: 25, scope: !3263)
!3276 = !DILocation(line: 128, column: 2, scope: !3263)
!3277 = !DILocation(line: 129, column: 27, scope: !3263)
!3278 = !DILocation(line: 129, column: 33, scope: !3263)
!3279 = !DILocation(line: 129, column: 39, scope: !3263)
!3280 = !DILocation(line: 129, column: 2, scope: !3263)
!3281 = !DILocation(line: 131, column: 2, scope: !3263)
!3282 = distinct !DISubprogram(name: "imx_intmux_irq_xlate", scope: !3, file: !3, line: 134, type: !2065, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3283 = !DILocalVariable(name: "d", arg: 1, scope: !3282, file: !3, line: 134, type: !1915)
!3284 = !DILocation(line: 134, column: 52, scope: !3282)
!3285 = !DILocalVariable(name: "node", arg: 2, scope: !3282, file: !3, line: 134, type: !1929)
!3286 = !DILocation(line: 134, column: 75, scope: !3282)
!3287 = !DILocalVariable(name: "intspec", arg: 3, scope: !3282, file: !3, line: 135, type: !2067)
!3288 = !DILocation(line: 135, column: 16, scope: !3282)
!3289 = !DILocalVariable(name: "intsize", arg: 4, scope: !3282, file: !3, line: 135, type: !7)
!3290 = !DILocation(line: 135, column: 38, scope: !3282)
!3291 = !DILocalVariable(name: "out_hwirq", arg: 5, scope: !3282, file: !3, line: 136, type: !2069)
!3292 = !DILocation(line: 136, column: 20, scope: !3282)
!3293 = !DILocalVariable(name: "out_type", arg: 6, scope: !3282, file: !3, line: 136, type: !2070)
!3294 = !DILocation(line: 136, column: 45, scope: !3282)
!3295 = !DILocalVariable(name: "irqchip_data", scope: !3282, file: !3, line: 138, type: !2902)
!3296 = !DILocation(line: 138, column: 30, scope: !3282)
!3297 = !DILocation(line: 138, column: 45, scope: !3282)
!3298 = !DILocation(line: 138, column: 48, scope: !3282)
!3299 = !DILocalVariable(name: "idx", scope: !3282, file: !3, line: 139, type: !119)
!3300 = !DILocation(line: 139, column: 6, scope: !3282)
!3301 = !DILocation(line: 139, column: 12, scope: !3282)
!3302 = !DILocation(line: 139, column: 26, scope: !3282)
!3303 = !DILocalVariable(name: "data", scope: !3282, file: !3, line: 140, type: !129)
!3304 = !DILocation(line: 140, column: 22, scope: !3282)
!3305 = !DILocalVariable(name: "__mptr", scope: !3306, file: !3, line: 140, type: !127)
!3306 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 140, column: 29)
!3307 = !DILocation(line: 140, column: 29, scope: !3306)
!3308 = !DILocation(line: 140, column: 29, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 140, column: 29)
!3310 = !DILocalVariable(name: "__ret_warn_on", scope: !3311, file: !3, line: 148, type: !119)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 148, column: 6)
!3312 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 148, column: 6)
!3313 = !DILocation(line: 148, column: 6, scope: !3311)
!3314 = !DILocation(line: 148, column: 6, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 148, column: 6)
!3316 = !DILocation(line: 148, column: 6, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 148, column: 6)
!3318 = !DILocation(line: 148, column: 6, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 148, column: 6)
!3320 = !DILocation(line: 148, column: 6, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 148, column: 6)
!3322 = !{i32 -2143200921, i32 -2143200892, i32 -2143200846, i32 -2143200788, i32 -2143200734, i32 -2143200680, i32 -2143200625, i32 -2143200594}
!3323 = !DILocation(line: 148, column: 6, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 148, column: 6)
!3325 = !{i32 -2143200180, i32 -2143200173, i32 -2143200121, i32 -2143200090, i32 -2143200060}
!3326 = !DILocation(line: 148, column: 6, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 148, column: 6)
!3328 = !DILocation(line: 148, column: 6, scope: !3312)
!3329 = !DILocation(line: 148, column: 6, scope: !3282)
!3330 = !DILocation(line: 149, column: 3, scope: !3312)
!3331 = !DILocalVariable(name: "__ret_warn_on", scope: !3332, file: !3, line: 151, type: !119)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 151, column: 6)
!3333 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 151, column: 6)
!3334 = !DILocation(line: 151, column: 6, scope: !3332)
!3335 = !DILocation(line: 151, column: 6, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 151, column: 6)
!3337 = !DILocation(line: 151, column: 6, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 151, column: 6)
!3339 = !DILocation(line: 151, column: 6, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 151, column: 6)
!3341 = !DILocation(line: 151, column: 6, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 151, column: 6)
!3343 = !{i32 -2143199458, i32 -2143199429, i32 -2143199383, i32 -2143199325, i32 -2143199271, i32 -2143199217, i32 -2143199162, i32 -2143199131}
!3344 = !DILocation(line: 151, column: 6, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 151, column: 6)
!3346 = !{i32 -2143198717, i32 -2143198710, i32 -2143198658, i32 -2143198627, i32 -2143198597}
!3347 = !DILocation(line: 151, column: 6, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 151, column: 6)
!3349 = !DILocation(line: 151, column: 6, scope: !3333)
!3350 = !DILocation(line: 151, column: 6, scope: !3282)
!3351 = !DILocation(line: 152, column: 3, scope: !3333)
!3352 = !DILocation(line: 154, column: 15, scope: !3282)
!3353 = !DILocation(line: 154, column: 3, scope: !3282)
!3354 = !DILocation(line: 154, column: 13, scope: !3282)
!3355 = !DILocation(line: 155, column: 3, scope: !3282)
!3356 = !DILocation(line: 155, column: 12, scope: !3282)
!3357 = !DILocation(line: 157, column: 2, scope: !3282)
!3358 = !DILocation(line: 158, column: 1, scope: !3282)
!3359 = distinct !DISubprogram(name: "irq_set_chip_and_handler", scope: !72, file: !72, line: 712, type: !3360, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{null, !7, !2102, !2177}
!3362 = !DILocalVariable(name: "irq", arg: 1, scope: !3359, file: !72, line: 712, type: !7)
!3363 = !DILocation(line: 712, column: 58, scope: !3359)
!3364 = !DILocalVariable(name: "chip", arg: 2, scope: !3359, file: !72, line: 712, type: !2102)
!3365 = !DILocation(line: 712, column: 80, scope: !3359)
!3366 = !DILocalVariable(name: "handle", arg: 3, scope: !3359, file: !72, line: 713, type: !2177)
!3367 = !DILocation(line: 713, column: 29, scope: !3359)
!3368 = !DILocation(line: 715, column: 32, scope: !3359)
!3369 = !DILocation(line: 715, column: 37, scope: !3359)
!3370 = !DILocation(line: 715, column: 43, scope: !3359)
!3371 = !DILocation(line: 715, column: 2, scope: !3359)
!3372 = !DILocation(line: 716, column: 1, scope: !3359)
!3373 = distinct !DISubprogram(name: "irq_desc_get_handler_data", scope: !2184, file: !2184, line: 141, type: !3374, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!127, !2182}
!3376 = !DILocalVariable(name: "desc", arg: 1, scope: !3373, file: !2184, line: 141, type: !2182)
!3377 = !DILocation(line: 141, column: 64, scope: !3373)
!3378 = !DILocation(line: 143, column: 9, scope: !3373)
!3379 = !DILocation(line: 143, column: 15, scope: !3373)
!3380 = !DILocation(line: 143, column: 31, scope: !3373)
!3381 = !DILocation(line: 143, column: 2, scope: !3373)
!3382 = distinct !DISubprogram(name: "chained_irq_enter", scope: !3383, file: !3383, line: 16, type: !3384, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3383 = !DIFile(filename: "./include/linux/irqchip/chained_irq.h", directory: "/home/lizy2001/genbc/linux")
!3384 = !DISubroutineType(types: !3385)
!3385 = !{null, !2102, !2182}
!3386 = !DILocalVariable(name: "chip", arg: 1, scope: !3382, file: !3383, line: 16, type: !2102)
!3387 = !DILocation(line: 16, column: 55, scope: !3382)
!3388 = !DILocalVariable(name: "desc", arg: 2, scope: !3382, file: !3383, line: 17, type: !2182)
!3389 = !DILocation(line: 17, column: 27, scope: !3382)
!3390 = !DILocation(line: 20, column: 6, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3382, file: !3383, line: 20, column: 6)
!3392 = !DILocation(line: 20, column: 12, scope: !3391)
!3393 = !DILocation(line: 20, column: 6, scope: !3382)
!3394 = !DILocation(line: 21, column: 3, scope: !3391)
!3395 = !DILocation(line: 23, column: 6, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3382, file: !3383, line: 23, column: 6)
!3397 = !DILocation(line: 23, column: 12, scope: !3396)
!3398 = !DILocation(line: 23, column: 6, scope: !3382)
!3399 = !DILocation(line: 24, column: 3, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3396, file: !3383, line: 23, column: 26)
!3401 = !DILocation(line: 24, column: 9, scope: !3400)
!3402 = !DILocation(line: 24, column: 23, scope: !3400)
!3403 = !DILocation(line: 24, column: 29, scope: !3400)
!3404 = !DILocation(line: 25, column: 2, scope: !3400)
!3405 = !DILocation(line: 26, column: 3, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3396, file: !3383, line: 25, column: 9)
!3407 = !DILocation(line: 26, column: 9, scope: !3406)
!3408 = !DILocation(line: 26, column: 19, scope: !3406)
!3409 = !DILocation(line: 26, column: 25, scope: !3406)
!3410 = !DILocation(line: 27, column: 7, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3406, file: !3383, line: 27, column: 7)
!3412 = !DILocation(line: 27, column: 13, scope: !3411)
!3413 = !DILocation(line: 27, column: 7, scope: !3406)
!3414 = !DILocation(line: 28, column: 4, scope: !3411)
!3415 = !DILocation(line: 28, column: 10, scope: !3411)
!3416 = !DILocation(line: 28, column: 19, scope: !3411)
!3417 = !DILocation(line: 28, column: 25, scope: !3411)
!3418 = !DILocation(line: 30, column: 1, scope: !3382)
!3419 = distinct !DISubprogram(name: "irq_desc_get_chip", scope: !2184, file: !2184, line: 131, type: !3420, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!2102, !2182}
!3422 = !DILocalVariable(name: "desc", arg: 1, scope: !3419, file: !2184, line: 131, type: !2182)
!3423 = !DILocation(line: 131, column: 67, scope: !3419)
!3424 = !DILocation(line: 133, column: 9, scope: !3419)
!3425 = !DILocation(line: 133, column: 15, scope: !3419)
!3426 = !DILocation(line: 133, column: 24, scope: !3419)
!3427 = !DILocation(line: 133, column: 2, scope: !3419)
!3428 = distinct !DISubprogram(name: "chained_irq_exit", scope: !3383, file: !3383, line: 32, type: !3384, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3429 = !DILocalVariable(name: "chip", arg: 1, scope: !3428, file: !3383, line: 32, type: !2102)
!3430 = !DILocation(line: 32, column: 54, scope: !3428)
!3431 = !DILocalVariable(name: "desc", arg: 2, scope: !3428, file: !3383, line: 33, type: !2182)
!3432 = !DILocation(line: 33, column: 26, scope: !3428)
!3433 = !DILocation(line: 35, column: 6, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3428, file: !3383, line: 35, column: 6)
!3435 = !DILocation(line: 35, column: 12, scope: !3434)
!3436 = !DILocation(line: 35, column: 6, scope: !3428)
!3437 = !DILocation(line: 36, column: 3, scope: !3434)
!3438 = !DILocation(line: 36, column: 9, scope: !3434)
!3439 = !DILocation(line: 36, column: 18, scope: !3434)
!3440 = !DILocation(line: 36, column: 24, scope: !3434)
!3441 = !DILocation(line: 38, column: 3, scope: !3434)
!3442 = !DILocation(line: 38, column: 9, scope: !3434)
!3443 = !DILocation(line: 38, column: 21, scope: !3434)
!3444 = !DILocation(line: 38, column: 27, scope: !3434)
!3445 = !DILocation(line: 39, column: 1, scope: !3428)
!3446 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !3447, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{null, !156, !127}
!3449 = !DILocalVariable(name: "dev", arg: 1, scope: !3446, file: !30, line: 660, type: !156)
!3450 = !DILocation(line: 660, column: 51, scope: !3446)
!3451 = !DILocalVariable(name: "data", arg: 2, scope: !3446, file: !30, line: 660, type: !127)
!3452 = !DILocation(line: 660, column: 62, scope: !3446)
!3453 = !DILocation(line: 662, column: 21, scope: !3446)
!3454 = !DILocation(line: 662, column: 2, scope: !3446)
!3455 = !DILocation(line: 662, column: 7, scope: !3446)
!3456 = !DILocation(line: 662, column: 19, scope: !3446)
!3457 = !DILocation(line: 663, column: 1, scope: !3446)
!3458 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !2414, file: !2414, line: 231, type: !3459, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!127, !3461}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2421)
!3463 = !DILocalVariable(name: "pdev", arg: 1, scope: !3458, file: !2414, line: 231, type: !3461)
!3464 = !DILocation(line: 231, column: 72, scope: !3458)
!3465 = !DILocation(line: 233, column: 26, scope: !3458)
!3466 = !DILocation(line: 233, column: 32, scope: !3458)
!3467 = !DILocation(line: 233, column: 9, scope: !3458)
!3468 = !DILocation(line: 233, column: 2, scope: !3458)
!3469 = distinct !DISubprogram(name: "pm_runtime_disable", scope: !2796, file: !2796, line: 524, type: !1656, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3470 = !DILocalVariable(name: "dev", arg: 1, scope: !3469, file: !2796, line: 524, type: !156)
!3471 = !DILocation(line: 524, column: 54, scope: !3469)
!3472 = !DILocation(line: 526, column: 23, scope: !3469)
!3473 = !DILocation(line: 526, column: 2, scope: !3469)
!3474 = !DILocation(line: 527, column: 1, scope: !3469)
!3475 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !3476, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!127, !1966}
!3478 = !DILocalVariable(name: "dev", arg: 1, scope: !3475, file: !30, line: 655, type: !1966)
!3479 = !DILocation(line: 655, column: 58, scope: !3475)
!3480 = !DILocation(line: 657, column: 9, scope: !3475)
!3481 = !DILocation(line: 657, column: 14, scope: !3475)
!3482 = !DILocation(line: 657, column: 2, scope: !3475)
!3483 = distinct !DISubprogram(name: "imx_intmux_runtime_suspend", scope: !3, file: !3, line: 310, type: !1665, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3484 = !DILocalVariable(name: "dev", arg: 1, scope: !3483, file: !3, line: 310, type: !156)
!3485 = !DILocation(line: 310, column: 54, scope: !3483)
!3486 = !DILocalVariable(name: "data", scope: !3483, file: !3, line: 312, type: !129)
!3487 = !DILocation(line: 312, column: 22, scope: !3483)
!3488 = !DILocation(line: 312, column: 45, scope: !3483)
!3489 = !DILocation(line: 312, column: 29, scope: !3483)
!3490 = !DILocalVariable(name: "irqchip_data", scope: !3483, file: !3, line: 313, type: !2902)
!3491 = !DILocation(line: 313, column: 30, scope: !3483)
!3492 = !DILocalVariable(name: "i", scope: !3483, file: !3, line: 314, type: !119)
!3493 = !DILocation(line: 314, column: 6, scope: !3483)
!3494 = !DILocation(line: 316, column: 9, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 316, column: 2)
!3496 = !DILocation(line: 316, column: 7, scope: !3495)
!3497 = !DILocation(line: 316, column: 14, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 316, column: 2)
!3499 = !DILocation(line: 316, column: 18, scope: !3498)
!3500 = !DILocation(line: 316, column: 24, scope: !3498)
!3501 = !DILocation(line: 316, column: 16, scope: !3498)
!3502 = !DILocation(line: 316, column: 2, scope: !3495)
!3503 = !DILocation(line: 317, column: 19, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 316, column: 38)
!3505 = !DILocation(line: 317, column: 25, scope: !3504)
!3506 = !DILocation(line: 317, column: 38, scope: !3504)
!3507 = !DILocation(line: 317, column: 16, scope: !3504)
!3508 = !DILocation(line: 318, column: 29, scope: !3504)
!3509 = !DILocation(line: 318, column: 3, scope: !3504)
!3510 = !DILocation(line: 318, column: 17, scope: !3504)
!3511 = !DILocation(line: 318, column: 27, scope: !3504)
!3512 = !DILocation(line: 319, column: 2, scope: !3504)
!3513 = !DILocation(line: 316, column: 34, scope: !3498)
!3514 = !DILocation(line: 316, column: 2, scope: !3498)
!3515 = distinct !{!3515, !3502, !3516}
!3516 = !DILocation(line: 319, column: 2, scope: !3495)
!3517 = !DILocation(line: 321, column: 24, scope: !3483)
!3518 = !DILocation(line: 321, column: 30, scope: !3483)
!3519 = !DILocation(line: 321, column: 2, scope: !3483)
!3520 = !DILocation(line: 323, column: 2, scope: !3483)
!3521 = distinct !DISubprogram(name: "imx_intmux_runtime_resume", scope: !3, file: !3, line: 326, type: !1665, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!3522 = !DILocalVariable(name: "dev", arg: 1, scope: !3521, file: !3, line: 326, type: !156)
!3523 = !DILocation(line: 326, column: 53, scope: !3521)
!3524 = !DILocalVariable(name: "data", scope: !3521, file: !3, line: 328, type: !129)
!3525 = !DILocation(line: 328, column: 22, scope: !3521)
!3526 = !DILocation(line: 328, column: 45, scope: !3521)
!3527 = !DILocation(line: 328, column: 29, scope: !3521)
!3528 = !DILocalVariable(name: "irqchip_data", scope: !3521, file: !3, line: 329, type: !2902)
!3529 = !DILocation(line: 329, column: 30, scope: !3521)
!3530 = !DILocalVariable(name: "ret", scope: !3521, file: !3, line: 330, type: !119)
!3531 = !DILocation(line: 330, column: 6, scope: !3521)
!3532 = !DILocalVariable(name: "i", scope: !3521, file: !3, line: 330, type: !119)
!3533 = !DILocation(line: 330, column: 11, scope: !3521)
!3534 = !DILocation(line: 332, column: 27, scope: !3521)
!3535 = !DILocation(line: 332, column: 33, scope: !3521)
!3536 = !DILocation(line: 332, column: 8, scope: !3521)
!3537 = !DILocation(line: 332, column: 6, scope: !3521)
!3538 = !DILocation(line: 333, column: 6, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3521, file: !3, line: 333, column: 6)
!3540 = !DILocation(line: 333, column: 6, scope: !3521)
!3541 = !DILocation(line: 334, column: 3, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 333, column: 11)
!3543 = !DILocation(line: 335, column: 10, scope: !3542)
!3544 = !DILocation(line: 335, column: 3, scope: !3542)
!3545 = !DILocation(line: 338, column: 9, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3521, file: !3, line: 338, column: 2)
!3547 = !DILocation(line: 338, column: 7, scope: !3546)
!3548 = !DILocation(line: 338, column: 14, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 338, column: 2)
!3550 = !DILocation(line: 338, column: 18, scope: !3549)
!3551 = !DILocation(line: 338, column: 24, scope: !3549)
!3552 = !DILocation(line: 338, column: 16, scope: !3549)
!3553 = !DILocation(line: 338, column: 2, scope: !3546)
!3554 = !DILocation(line: 339, column: 19, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 338, column: 38)
!3556 = !DILocation(line: 339, column: 25, scope: !3555)
!3557 = !DILocation(line: 339, column: 38, scope: !3555)
!3558 = !DILocation(line: 339, column: 16, scope: !3555)
!3559 = !DILocation(line: 340, column: 3, scope: !3555)
!3560 = !DILocation(line: 341, column: 2, scope: !3555)
!3561 = !DILocation(line: 338, column: 34, scope: !3549)
!3562 = !DILocation(line: 338, column: 2, scope: !3549)
!3563 = distinct !{!3563, !3553, !3564}
!3564 = !DILocation(line: 341, column: 2, scope: !3546)
!3565 = !DILocation(line: 343, column: 2, scope: !3521)
!3566 = !DILocation(line: 344, column: 1, scope: !3521)
